/*********************************************************************
 *
 *             Microchip USB C18 Firmware -  MSD Version 1.0
 *
 *			   Modified by RPG @ Scene Double (See Below)
 *
 *********************************************************************
 * FileName:        msd.c
 * Dependencies:    See INCLUDES section below
 * Processor:       PIC18
 * Compiler:        C18 2.40
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * The software supplied herewith by Microchip Technology Incorporated
 * (the “Company”) for its PICmicro® Microcontroller is intended and
 * supplied to you, the Company’s customer, for use solely and
 * exclusively on Microchip PICmicro Microcontroller products. The
 * software is owned by the Company and/or its supplier, and is
 * protected under applicable copyright laws. All rights are reserved.
 * Any use in violation of the foregoing restrictions may subject the
 * user to criminal sanctions under applicable laws, as well as to
 * civil liability for the breach of the terms and conditions of this
 * license.
 *
 * THIS SOFTWARE IS PROVIDED IN AN “AS IS” CONDITION. NO WARRANTIES,
 * WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 * TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 * IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 * Author               Date        Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Gurinder Singh       05/31/05    Original.
 * Ray Gordon 			7/07/08		Extensive Modifications/Fixes (See Below)
 * 									To support FAT emulation for bootloader
 ********************************************************************/


/** INCLUDES **/
#include "boot.h"														// RPG
#include "usb.h"
#include <string.h>
#include <delays.h>

#ifdef USB_USE_MSD

/** VARIABLES **/
#pragma udata
byte MSD_State;															// Takes values MSD_WAIT, MSD_DATA_IN or MSD_DATA_OUT
USB_MSD_CBW gblCBW;	
byte gblCBWLength;
RequestSenseResponse gblSenseData;
byte *ptrNextData;


/* Standard Response to INQUIRY command stored in ROM 	*/
const rom InquiryResponse inq_resp = {
	0x00,																// peripheral device is connected, direct access block device
	0x80,       														// removable
	0x04,	 															// version = 00=> does not conform to any standard, 4=> SPC-2
	0x02,																// response is in format specified by SPC-2
	0x1F,																// n-4 = 0x1F
	0x00,																// sccs etc.
	0x00,																// bque=1 and cmdque=0,indicates simple queueing 00 is obsolete,
																		// but as in case of other device, we are just using 00
	0x00,																// 00 obsolete, 0x80 for basic task queueing
	{'F','i','r','m','w','a','r','e'}, 				 					// RPG Mod - Vendor ID (not T10 assigned)
	{'L','o','a','d','e','r',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '},	// RPG Mod
	{'0','0','0','1'}													// RPG Mod
};

/** PRIVATE  PROTOTYPES **/
void MSDCommandHandler(void);
void MSDInquiryHandler(void);
void MSDReadCapacityHandler(void);
void MSDReadHandler(void);
void MSDWriteHandler(void);
void MSDModeSenseHandler(void);
void MSDMediumRemovalHandler(void);
void MSDRequestSenseHandler(void);
void MSDTestUnitReadyHandler(void);
void MSDVerifyHandler(void);
void MSDStopStartHandler(void);
void MSDReadFormatCapacityHandler(void);
byte IsMeaningfulCBW(void);
byte IsValidCBW(void);
void PrepareCSWData(void);
void SendData(byte*, byte);
void SendCSW(void);
void ResetSenseData(void);
void MSDDataIn(void);
void MSDDataOut(void);

extern byte SectorRead(dword, byte*);
extern byte SectorWrite(dword, byte*, BOOL);							// RPG Mod

/** DECLARATIONS **/
#pragma code


/******************************************************************************
 * Function:        void USBCheckMSDRequest(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This routine handles the standard RESET and GET_MAX_LUN 
 *		    		command requests received on the control endpoint EP0
 *
 * Note:            None
 *****************************************************************************/	
void USBCheckMSDRequest(void)
{
	switch(SetupPkt.bRequest)
    {
	    case MSD_RESET:
	    	ctrl_trf_session_owner = MUID_MSD;
	    	mDisableEP1to15();                          				// See usbdrv.h
	    	if (UEP1bits.EPSTALL==1) {
	 			UEP1bits.EPSTALL = 0;
	    		MSDInitEP();
	    	}
			UIRbits.STALLIF = 0;
	   	break;
	    case GET_MAX_LUN:
	    	ctrl_trf_session_owner = MUID_MSD;
	    	CtrlTrfData._byte[0] = MAX_LUN;
	    	wCount._word = 1;
	    	pSrc.bRam = (unsigned char*)&CtrlTrfData;
	    	usb_stat.ctrl_trf_mem = _RAM;
	    	break;
    }	
}

/******************************************************************************
 * Function:        void ProcessIO(void)
 *
 * PreCondition:    MSDInitEP() and SDCardInit() have beed called.
 *		    		MSDInitEP() is called from USBStdSetCfgHandler(void)(usb9.c)
 *		    		MSD_State = WAIT at initialisation (RPG Mod)
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This routine is called in continuous loop from main.c
 *		    		All the Bulk Transport Commands on EndPoint 1 are
 *                  handled here. MSD_State holds the current state of the
 *                  Mass Storage Module.
 *		    		In MSD_WAIT State - Wait for a Command Block Wrapper (CBW)
 *                  on EP1. If a valid and meaningful CBW is received,
 *		    		depending on the command received MSD_State is changed to 
 *		   			MSD_DATA_IN if data is to be sent to host (for all commands
 *                  other than WRITE_10)
 *                  MSD_DATA_OUT if host is expected to send data (only in case
 *                  of WRITE_10). At the end of Data Transfer Command Status
 *                  Wrapper (CSW) is sent by calling SendCSW()
 *
 * Note:            None
 *****************************************************************************/	
void ProcessIO(void)
{
	byte i;
	dword size;
	if (MSD_State==MSD_DATA_IN) {
		/* Send Data to Host */	
		if(gblCBW.dCBWDataTransferLength==0) 
		{
			/* Finished sending the data send the Status */
			/* SendCSW() send the csw and sets the state to wait */
			SendCSW(); 
		}	
		else 
		{ 				
			/* Still have data to Send */
			MSDDataIn();
		}
		return;	
	}	
	if (MSD_State==MSD_DATA_OUT) {			
		/* Receive data from Host*/
		if(gblCBW.dCBWDataTransferLength==0) { 	
			/* Finished receiving the data prepare and send the status */
		  	if ((msd_csw.bCSWStatus==0x00)&&(msd_csw.dCSWDataResidue!=0)) 
		  		msd_csw.bCSWStatus=0x02;
			SendCSW();													// sends the csw and sets the state to wait
		}
		/*
		* Note that MSD_DATA_OUT State is reached only for the WRITE_10 COMMAND
		* Also note that this code is reached in MSD_DATA_OUT State only after
		*  we have read the required amount of data from the host
		* This procsssing is done in WriteCommandHandler because we have
		* limited buffer space. We read from host in 64Bytes chunks
		* (size of MSD_BD_OUT), fill the msd_buffer(512B) and write the
        *  data into the SDCard
		*/ 
		return;
	}
	if((MSD_BD_OUT.Stat.UOWN==_UCPU) && (MSD_State==MSD_WAIT)) {
		/* If the CPU owns the BD OUT (we)and the MSD_State is WAIT*/
		/* Copy the received cbw into the gblCBW */
		gblCBW.dCBWSignature=msd_cbw.dCBWSignature;					
		gblCBW.dCBWTag=msd_cbw.dCBWTag;
		gblCBW.dCBWDataTransferLength=msd_cbw.dCBWDataTransferLength;
    	gblCBW.bCBWFlags=msd_cbw.bCBWFlags;
    	gblCBW.bCBWLUN=msd_cbw.bCBWLUN;
	    gblCBW.bCBWCBLength=msd_cbw.bCBWCBLength;						// 3 MSB are zero
    	for (i=0;i<msd_cbw.bCBWCBLength;i++)
    		gblCBW.CBWCB[i]=msd_cbw.CBWCB[i];
	    gblCBWLength=MSD_BD_OUT.Cnt;				   					// Length of CBW
	    	
		if (IsValidCBW()) {
			if (IsMeaningfulCBW()) {
				PrepareCSWData();
				/* If direction is device to host*/
				if (gblCBW.bCBWFlags==0x80)
					MSD_State=MSD_DATA_IN;
				else if (gblCBW.bCBWFlags==0x00) {
					/* If direction is host to device*/
					/* prepare to read data in msd_buffer */
					MSD_BD_OUT.Cnt=MSD_OUT_EP_SIZE;
    				MSD_BD_OUT.ADR=(byte*)&msd_buffer[0];
    				MSD_State=MSD_DATA_OUT;
				}
				/* Decode and process the valid and meaningful CBW received */
				MSDCommandHandler();									
			}
			/* NOTE:
			 * In case when the received CBW is not valid or meaningful,
             * one can take action  such as Stall the EP1 and go through reset
			 * recovery or turn on error LED etc.
			 */ 
		}
	   /* 
		* NOTE: Call after every read or write on nonEP0 EP 
	 	* Basically, toggles DTS and gives ownership to SIE
		*/
		mUSBBufferReady(MSD_BD_OUT);
		/* clears the TRNIF */
		USBDriverService();
	}
}

/******************************************************************************
 * Function:        void MSDInitEP(void)
 *
 * PreCondition:    None 
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This routine is called from USBStdSetCfgHandler(void)
 *                  Initializes the Bulk-In and Bulk-Out endpoints MSD_BD_IN
 *		    		and MSD_BD_OUT Size = 64B (See usbmmap.c and
 *		    		usbdefs_std_dsc.h for endpoint definitions)
 *
 *
 * Note:            None
 *****************************************************************************/	
 
void MSDInitEP(void)
{   
    MSD_UEP = EP_OUT_IN|HSHK_EN;                						// Enable 2 data pipes
    MSD_BD_OUT.Cnt=sizeof(msd_cbw);
    MSD_BD_OUT.ADR=(byte*)&msd_cbw;
    MSD_BD_OUT.Stat._byte = _USIE|_DAT0|_DTSEN;							//usbmmap.h owner SIE,
                                                						// DAT0 expected next,
                                                						//data toggle sunc enable
   
    /*
     * Do not have to init Cnt (size) of IN pipes here.
     * Reason:  Number of bytes to send to the host
     *          varies from one transaction to
     *          another. Cnt should equal the exact
     *          number of bytes to transmit for
     *          a given IN transaction.
     *          This number of bytes will only
     *          be known right before the data is
     *          sent.
     */
    MSD_BD_IN.ADR = (byte*)&msd_buffer[0];      						// Set buffer address    
    MSD_BD_IN.Stat._byte = _UCPU|_DAT1;         						// Set status CPU owns Data1
                                                						// expected next
    
}


/******************************************************************************
 * Function:        void DiskInit(void)
 *
 * PreCondition:    None 
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    gblFlag is updated according to result of Intialization
 *                  MSD_State is set to MSD_WAIT 
 *
 * Overview:        This routine is called from InitializeSystem() in main.c
 *
 * RPG Mod: 		This function replaces SDCardInit(). All we need to do is set the
 *					correct starting state.
 *
 *****************************************************************************/	
	
void DiskInit(void) 
{
	MSD_State=MSD_WAIT;
}    

/******************************************************************************
 * Function:        void MSDCommandHandler(void)
 *
 * PreCondition:    None 
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This routine is called from ProcessIO()
 *                  when the MSD_State = MSD_WAIT. This function decodes the CBW
 *                  Command and takes appropriate action.If the CBW command is
 *                  not supported the Sense Data is set, CSW status
 *                  is set to Command Failed (bCSWStatus=01h)
 *
 * RPG Mod:         Added handling for Read Format Capacity command because Windows issues
 *					this a lot!
 *
 *****************************************************************************/	
	
void MSDCommandHandler(void)											// In reality it is to read from EP1
{	
	switch(gblCBW.CBWCB[0]) {
    	
		case INQUIRY:
        	MSDInquiryHandler();
        break;
        case READ_CAPACITY:
		    MSDReadCapacityHandler();            
        break;
		case READ_10:
        	MSDReadHandler();
	    break;
    	case WRITE_10:
    	   	MSDWriteHandler();
		break;
        case REQUEST_SENSE:
		   	MSDRequestSenseHandler();
        break;
	    case MODE_SENSE:
	    	MSDModeSenseHandler();
    	break;
		case PREVENT_ALLOW_MEDIUM_REMOVAL:
		   	MSDMediumRemovalHandler();
        break;
		case TEST_UNIT_READY:
		   	MSDTestUnitReadyHandler();
        break;
		case VERIFY:
		   	MSDVerifyHandler();
        break;
		case STOP_START:
		   	MSDStopStartHandler();
        break;
		case READ_FORMAT_CAPACITY:
		   	MSDReadFormatCapacityHandler();
        break;
		default:
        	ResetSenseData();
			gblSenseData.SenseKey=S_ILLEGAL_REQUEST;
			gblSenseData.ASC=ASC_INVALID_COMMAND_OPCODE;
			gblSenseData.ASCQ=ASCQ_INVALID_COMMAND_OPCODE;
			msd_csw.bCSWStatus=0x01;
			msd_csw.dCSWDataResidue=0x00;
 		break;
	} 
	
	ptrNextData=(byte*)&msd_buffer[0];
}

/******************************************************************************
 * Function:        void SendCSW(void)
 *
 * PreCondition:    None 
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This function sends the CSW and sets the State to MSD_WAIT
 *                  It also changes MSD_BD_OUT to point to msd_csw (structure
 *                  for reading CSW) Note that this was changed in
 *                  MSD_DATA_OUT state to point to msd_buffer in order to
 *                  read data from host
 *
 * Note:            None
 *****************************************************************************/	
	
void SendCSW(void)
{
	while(mMSDTxIsBusy());
	MSD_BD_IN.ADR=(byte*)&msd_csw;
	MSD_BD_IN.Cnt=MSD_CSW_SIZE;
	mUSBBufferReady(MSD_BD_IN);
	USBDriverService();	
	MSD_BD_OUT.Cnt=sizeof(msd_cbw);		
    MSD_BD_OUT.ADR=(byte*)&msd_cbw;										// in MSD_DATA_OUT state the address
                                            							// was changed to point to msd_buffer
   	MSD_State=MSD_WAIT;
}


/******************************************************************************
 * Function:        void SendData(byte* dataAddr, byte dataSize)
 *
 * PreCondition:    None 
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This function sends "dataSize" bytes of data
 *                  (< MSD_EP_IN_SIZE) starting at address "dataAddr".
 *
 * Note:            None
 *****************************************************************************/	
	
void SendData(byte* dataAddr, byte dataSize)
{

	while(mMSDTxIsBusy());
	MSD_BD_IN.ADR=dataAddr;
	MSD_BD_IN.Cnt=dataSize;
	mUSBBufferReady(MSD_BD_IN);
	USBDriverService();
}

/******************************************************************************
 * Function:        void MSDDataIn(void)
 *
 * PreCondition:    None 
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This function sends 512B of data in msd_buffer to the
 *                  host in 64B chunks using MSD_BD_IN.Various conditions
 *                  when data to be sent is less than MSD_IN_EP_SIZE and
 *                  error condition bCSWStatus = 0x01 are checked. As per
 *                  specifications, in case of error 0 filled data of the size 
 *                  expected by the host dCBWDataTransferLength is sent.
 *
 * Note:            None
 *****************************************************************************/	
void MSDDataIn(void)
{
	byte i;
	dword size;
	/* Case (status==0) and (data to be sent > MSD_IN_EP_SIZE)*/
	if ((msd_csw.bCSWStatus==0x00)&&(msd_csw.dCSWDataResidue>=MSD_IN_EP_SIZE)) {
		/* Write next chunk of data to EP Buffer and send */
		SendData(ptrNextData,MSD_IN_EP_SIZE);
		gblCBW.dCBWDataTransferLength-=	MSD_IN_EP_SIZE;
		msd_csw.dCSWDataResidue-=MSD_IN_EP_SIZE;
		ptrNextData+=MSD_IN_EP_SIZE;
	} else {
		if (msd_csw.bCSWStatus!=0x0) { // error path status!=0
			size=mMin(MSD_IN_EP_SIZE,gblCBW.dCBWDataTransferLength);
			for (i=0;i<size;i++) msd_buffer[i]=0;	// prepare 0 data
			if (gblCBW.dCBWDataTransferLength > MSD_IN_EP_SIZE) {	
				/* Case (status!=0) and (data to be sent > MSD_IN_EP_SIZE)*/
				/* write next chunk of data to EP Buffer and send */
				SendData((byte*)&msd_buffer[0],MSD_IN_EP_SIZE);
				gblCBW.dCBWDataTransferLength -= MSD_IN_EP_SIZE;
				msd_csw.dCSWDataResidue-=MSD_IN_EP_SIZE;
			} else {				
				/* Case (status!=0) and (data to be sent < MSD_IN_EP_SIZE) */
				/* write next chunk of data to EP Buffer and send*/
				SendData((byte*)&msd_buffer[0],gblCBW.dCBWDataTransferLength);
				gblCBW.dCBWDataTransferLength = 0;			
				/* we have sent 0s for what was expected by host*/
				msd_csw.dCSWDataResidue -= gblCBW.dCBWDataTransferLength;
			}
		} else { 					
			/* Case (status ==0) and (data to be sent < MSD_IN_EP_SIZE) */
			/* write next chunk of data to EP Buffer and send */
			SendData(ptrNextData,msd_csw.dCSWDataResidue);
			/* we have sent all the data that was expected by host */
			gblCBW.dCBWDataTransferLength -= msd_csw.dCSWDataResidue ;	
			msd_csw.dCSWDataResidue = gblCBW.dCBWDataTransferLength;
			/* In case the host expected more than what we had to send */
			/* Setting DataTransferLength=0 so that CSW is sent after this*/
			gblCBW.dCBWDataTransferLength = 0;							
													
		}
	}
}
	
/******************************************************************************
 * Function:        void IsValidCBW()
 *
 * PreCondition:    None 
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This checks if the received CBW is valid
 *                  According to the Mass Storage Class Specifications, 
 *		    		a CSW is considered to be valid if 
 *                  1. It was received in MS_WAIT State 
 *                  2. CBW length is 1Fh bytes (MSD_CBW_SIZE)
 *                  3. dCBWSignature is equal to 0x43425355h		
 *
 * Note:            None
 *****************************************************************************/	
	
byte IsValidCBW() 
{
	if ((gblCBWLength!=MSD_CBW_SIZE)||(gblCBW.dCBWSignature!=0x43425355))return FALSE;
    else return TRUE;
}

/******************************************************************************
 * Function:        void IsMeaningfulCBW()
 *
 * PreCondition:    None 
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This checks if the received CBW is meaningful
 *                  According to the Mass Storage Class Specifications, 
 *		    		a CSW is considered to be meaningful if 
 *                  1. No reserved bits are set
 *                  2. bCBWLUN contains a valid LUN supported by device
 *		    		3. bCBWCBLength and CBWCB are in accordance with
 *                     bInterfaceSubClass
 * Note:            None
 *****************************************************************************/	
	
byte IsMeaningfulCBW()
{
	/*  3msb bits of CBWCBLength are reserved and must be 0,
     *  4msb bits of CBWLUN	are reserved and must be 0
	 *  valid CBWCBLength is between 1 and 16B
	 *  In bCBWFlags only msb indicates data direction rest must be 0
	 */  
	if((gblCBW.bCBWLUN<=0x0f)&&(gblCBW.bCBWCBLength<=0x10)&&(gblCBW.bCBWCBLength>=0x01)&&(gblCBW.bCBWFlags==0x00|gblCBW.bCBWFlags==0x80)) 
		return TRUE;
	else return FALSE;	
	
}

/******************************************************************************
 * Function:        void PrepareCSWData()
 *
 * PreCondition:    None 
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This prepares the Status data of CSW by copying the
 *                  dCSWTag from CBWTage and sets the signature 
 *                  of valid CSW=53425355h
 *
 * Note:            None
 *****************************************************************************/	
void PrepareCSWData()
{ 
	/* Residue and Status fields are set after
       decoding and executing the command  */
	msd_csw.dCSWTag=gblCBW.dCBWTag;
	msd_csw.dCSWSignature=0x53425355;
}


/******************************************************************************
 * Function:        void MSDInquiryHandler(void)
 *
 * PreCondition:    None 
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This function prepares the response of the Inquiry command
 *                  A fixed Inquiry response is copied from ROM to the
 *		    		msd_buffer and CSWStatus, CSWDataResidue values are set
 *
 * RPG Mod:         Modified to cope with situations where a response of less than
 *					36 bytes is required. For example, this appears to happen on Mac OS X
 *
 *****************************************************************************/	
	
void MSDInquiryHandler(void)
{
	memcpypgm2ram((byte *)&msd_buffer[0], (far rom void *)&inq_resp, sizeof(InquiryResponse));

	msd_csw.dCSWDataResidue = gblCBW.dCBWDataTransferLength;
	msd_buffer[4] = (byte)gblCBW.dCBWDataTransferLength - 5;

	msd_csw.bCSWStatus=0x00;			// success
	return;
}


/******************************************************************************
 * Function:        void ResetSenseData(void)
 *
 * PreCondition:    None 
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This routine resets the Sense Data, initializing the
 *                  structure RequestSenseResponse gblSenseData.
 *                  
 *
 * Note:            None
 *****************************************************************************/
void ResetSenseData(void) 
	{
	gblSenseData.ResponseCode=S_CURRENT;
	gblSenseData.VALID=0;												// no data in the information field
	gblSenseData.Obsolete=0x0;
	gblSenseData.SenseKey=S_NO_SENSE;
	gblSenseData.Resv;
	gblSenseData.ILI=0;
	gblSenseData.EOM=0;
	gblSenseData.FILEMARK=0;
	gblSenseData.Information._dword=0x00;
	gblSenseData.AddSenseLen=0x0a;	// n-7 (n=17 (0..17))
	gblSenseData.CmdSpecificInfo._dword=0x0;
	gblSenseData.ASC=0x0;
	gblSenseData.ASCQ=0x0;
	gblSenseData.FRUC=0x0;
	gblSenseData.SenseKeySpecific[0]=0x0;
	gblSenseData.SenseKeySpecific[1]=0x0;
	gblSenseData.SenseKeySpecific[2]=0x0;
}

/******************************************************************************
 * Function:        void MSDReadCapacityHandler()
 *
 * PreCondition:    None 
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This function processes the data from CSD register
 *                  (read during intiailization of sdcard)to find the number
 *                  of blocks (gblNumBLKS) and block length (gblBLKLen)
 *                  This data is then copied to msd_buffer and a response
 *                  for Read Capacity Command is prepared
 *
 *
 * RPG Mod:         This function has been vastly simplified as we have no SD
 *					card. Just need to report the number of blocks (sectors) and
 *					the sector size.
 *
 *****************************************************************************/	
	
void MSDReadCapacityHandler()
{
	// prepare the data response
	msd_buffer[0]=0x00;													// 5000 blocks (2.56MB to ensure FAT16)
	msd_buffer[1]=0x00;
	msd_buffer[2]=0x13;
	msd_buffer[3]=0x88;
	msd_buffer[4]=0x00;													// 512 bytes per block
	msd_buffer[5]=0x00;
	msd_buffer[6]=0x02;
	msd_buffer[7]=0x00;

	msd_csw.dCSWDataResidue=0x08;		  								// size of response
	msd_csw.bCSWStatus=0x00;			  								// success
}


/******************************************************************************
 * Function:        void MSDReadFormatCapacityHandler()
 *
 * PreCondition:    None 
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:		Added by RPG (1/10/07)
 *					Added becuase Windows issues this request a lot!
 *					A simple 12-byte response is required   
 *					Looked at a number of flash drives to work out response required
 *
 *
 *****************************************************************************/	
	
void MSDReadFormatCapacityHandler()
{
	// prepare the data response
	msd_buffer[0]=0x00;
	msd_buffer[1]=0x00;
	msd_buffer[2]=0x00;
	msd_buffer[3]=0x08;													// 8 bytes (1 descriptor)
	msd_buffer[4]=0x00;													// 5000 blocks (2.56MB to ensure FAT16)
	msd_buffer[5]=0x00;
	msd_buffer[6]=0x13;
	msd_buffer[7]=0x88;
	msd_buffer[8]=0x02;													// Formatted media	
	msd_buffer[9]=0x00;													// 512 bytes per block
	msd_buffer[10]=0x02;
	msd_buffer[11]=0x00;

	msd_csw.dCSWDataResidue=0x0C;		  								// size of response
	msd_csw.bCSWStatus=0x00;			  								// success
}

/******************************************************************************
 * Function:        void MSDReadHandler(void)
 *
 * PreCondition:    None 
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Decodes the CBWCB of READ(10) command to calculate
 *                  the starting LBA and the Transfer length
 *                  (number of blocks to be read). Reads a block of 512B data
 *                  from SD Card in msd_buffer (by calling SectorRead).
 *                  If successfully read (sdcValid), the data is sent to the
 *                  host in 64B chunks (MSD_IN_EP_SIZE) (see MSDDataIn()).
 *                  This is repeated for TransferLength number of blocks.
 *                  In case of error bCSWStatus is set to 0x01 and sense data
 *                  with sense key NOT READY and appropriate ASC,
 *                  ASCQ codes is prepared.
 *
 * RPG Mod:			SectorRead returns 1 if successful (zero otherwise)
 *					Removed unused local variables
 *
 *****************************************************************************/	
	
void MSDReadHandler()
{
	byte status;
	WORD TransferLength;
	DWORD LBA;
	byte Flags;

	
	LBA.v[3]=gblCBW.CBWCB[2];
	LBA.v[2]=gblCBW.CBWCB[3];
	LBA.v[1]=gblCBW.CBWCB[4];
	LBA.v[0]=gblCBW.CBWCB[5];
	
	TransferLength.v[1]=gblCBW.CBWCB[7];
	TransferLength.v[0]=gblCBW.CBWCB[8];
	
	Flags=gblCBW.CBWCB[1];
	
	msd_csw.bCSWStatus=0x0;
	msd_csw.dCSWDataResidue=0x0;
		
	if (LBA._dword + TransferLength._word > 0x00007EFF) {
		msd_csw.bCSWStatus=0x01;
		// prepare sense data See page 51 SBC-2
		gblSenseData.SenseKey=S_ILLEGAL_REQUEST;
		gblSenseData.ASC=ASC_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE;
		gblSenseData.ASCQ=ASCQ_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE;
	} else {
		while (TransferLength._word > 0) {							
			TransferLength._word--;										// we have read 1 LBA
			status = SectorRead(LBA._dword, (byte*)&msd_buffer[0]);
			LBA._dword++;												// read the next LBA
			if (status==1) {											// *** RPG Mod ***
				msd_csw.bCSWStatus=0x00;								// success
				msd_csw.dCSWDataResidue=BLOCKLEN_512;					//in order to send the
                                                     					//512 bytes of data read
				ptrNextData=(byte *)&msd_buffer[0];
				while (msd_csw.dCSWDataResidue>0)
					MSDDataIn();										// send the data
				msd_csw.dCSWDataResidue=0x0;							// for next time
			} else {
				msd_csw.bCSWStatus=0x01;								// Error 0x01 Refer page#18
                                                    					// of BOT specifications
				/* Don't read any more data*/
				msd_csw.dCSWDataResidue=0x0;

				break;	                            					// break the loop
			}
		}
	}
}


/******************************************************************************
 * Function:        void MSDDataOut(void)
 *
 * PreCondition:    None 
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    MSD_BD_OUT.ADR is incremented by MSD_OUT_EP_SIZE
 *                 (to read next 64B into msd_buffer)
 *
 * Overview:        This function reads 64B (MSD_OUT_EP_SIZE)
 *                  from EP1 OUT MSD_BD_OUT
 *
 * RPG Mod:         THIS FUNCTION IS NO LONGER USED
 *
 *****************************************************************************/	

/*	
void MSDDataOut(void) 
{
	mUSBBufferReady(MSD_BD_OUT);
	USBDriverService();		
	while(mMSDRxIsBusy());
	gblCBW.dCBWDataTransferLength-=MSD_BD_OUT.Cnt;						// 64B read
	msd_csw.dCSWDataResidue-=MSD_BD_OUT.Cnt;
	MSD_BD_OUT.Cnt=MSD_OUT_EP_SIZE;
	MSD_BD_OUT.ADR+=MSD_OUT_EP_SIZE;	
}
*/


/******************************************************************************
 * Function:        void MSDWriteHandler()
 *
 * PreCondition:    None 
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Decodes the CBWCB of WRITE(10) command to calculate
 *                  the starting LBA and theTransfer length (number of
 *                  blocks to be written). Reads TransferLength blocks
 *                  of data, 1 block=512B at a time in msd_buffer.
 *                  The data from the host, 64B in MSD_BD_OUT, is received
 *                  in the msd_buffer (see MSDDataOut()).
 *		    		The MSD_BD_OUT.ADR pointer is manipulated to fill the 512B
 *                  msd_buffer and when full the data is written to the SD Card 
 *                  by calling the function SectorWrite(...) (see sdcard.c)
 *                  In case of error bCSWStatus is set to 0x01 and sense
 *                  data with sense key NOT READY and appropriate ASC,
 *                  ASCQ codes is prepared.
 *
 * RPG Mods:        Defined out some code as the emulated disk is not write protected
 *					Previously an entire sector was read into the buffer and then handled by SectorWrite
 *					Now SectorWrite is called as each 64 byte packet is received. A flag is set at the start of
 *					each new sector. This modification was done to allow files to be sent over slow links without
 *					Windows timing out (which happens if it has to wait whole an entire sector is transmitted).
 *					Removed unused local variables. 
 *
 *****************************************************************************/	
 void MSDWriteHandler()
{
	byte dstatus;
	WORD TransferLength;
	DWORD LBA;
	BOOL Sector_Start = TRUE;											// Flag to let SectorWrite know this is the first 64 bytes of
																		// a new sector

 	/* Read the LBA, TransferLength fields from Command Block
       NOTE: CB is Big-Endian */

	LBA.v[3]=gblCBW.CBWCB[2];
	LBA.v[2]=gblCBW.CBWCB[3];
	LBA.v[1]=gblCBW.CBWCB[4];
	LBA.v[0]=gblCBW.CBWCB[5];
	TransferLength.v[1]=gblCBW.CBWCB[7];
	TransferLength.v[0]=gblCBW.CBWCB[8];

	msd_csw.bCSWStatus=0x0;	
	while (TransferLength._word > 0) {	
		msd_csw.dCSWDataResidue=BLOCKLEN_512;

		// Read 512 bytes into msd_buffer in 64 byte chunks.
		// Handle each 64 byte packet as it is read in

		while (msd_csw.dCSWDataResidue > 0)
		{ 
			mUSBBufferReady(MSD_BD_OUT);
			USBDriverService();		
			while(mMSDRxIsBusy());
			gblCBW.dCBWDataTransferLength-=MSD_BD_OUT.Cnt;				// 64 bytes read
			msd_csw.dCSWDataResidue-=MSD_BD_OUT.Cnt;
			MSD_BD_OUT.Cnt=MSD_OUT_EP_SIZE;
			MSD_BD_OUT.ADR+=MSD_OUT_EP_SIZE;
																		// Handle next 64 bytes
			dstatus = SectorWrite((LBA._dword), (byte*)&msd_buffer[0], Sector_Start);   

			Sector_Start = FALSE;										// Clear flag (next packet is not sector start)

			if (!dstatus)												// Set CSW response if SectorWrite is unsuccessful
				msd_csw.bCSWStatus=0x01;								// or on Boot Loader exit

		}

		LBA._dword++;													// One LBA is written. Write the next LBA
		TransferLength._word--;

		/* Point MSD_BD_OUT to msd_cbw after
           done reading the WRITE data from host*/

		if (TransferLength._word>0){
			MSD_BD_OUT.Cnt=MSD_OUT_EP_SIZE;
			MSD_BD_OUT.ADR=(byte*)&msd_buffer[0];
			Sector_Start = TRUE;										// Next packet will be new sector
		} else {
			MSD_BD_OUT.Cnt=sizeof(msd_cbw);
    		MSD_BD_OUT.ADR=(byte*)&msd_cbw;
    	}
	}	
	return;
}



/******************************************************************************
 * Function:        void MSDRequestSenseHandler(void)
 *
 * PreCondition:    None 
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This function prepares the Sense Data in response
 *                  to the Request Sense Command The contents of structure
 *                  RequestSenseResponse are copied to msd_buffer and a
 *                  success bCSWStatus=0x00 is set.
 *
 * Note:            None
 *****************************************************************************/	
void MSDRequestSenseHandler(void)
{
	byte i;
	for(i=0;i<sizeof(RequestSenseResponse);i++)
		msd_buffer[i]=gblSenseData._byte[i];
	
	msd_csw.dCSWDataResidue=sizeof(RequestSenseResponse);
	msd_csw.bCSWStatus=0x0;												// success
	return;
}

/******************************************************************************
 * Function:        void MSDModeSenseHandler()
 *
 * PreCondition:    None 
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This function prepares response to the Mode Sense command
 *                  a basic response is implemented in this version of the code
 *                  00h imples no other mode pages and 0x03 is the size of the 
 *                  data (in bytes) that follows.
 *
 * Note:            None
 *****************************************************************************/	
void MSDModeSenseHandler()
{
	
	msd_buffer[0]=0x03;
	msd_buffer[1]=0x00;
	msd_buffer[2]=0x00;
	msd_buffer[3]=0x00;
	
	msd_csw.bCSWStatus=0x0;
	msd_csw.dCSWDataResidue=0x04;
	return;
}


/******************************************************************************
 * Function:        void MSDMediumRemovalHandler()
 *
 * PreCondition:    None 
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This function prepares response to Prevent Allow
 *                  Medium Removal Command No data response is expect only 
 *                  a CSW with command execution status is expected
 *                  Since we cannot control the removal of media,
 *                  we respond by a Success CSW (modified - see below)
 *
 * RPG Mod:         Fail this request as this ensures Boot Loader folder refresh mechanism works corrrectly under
 *					OS X & Linux (albeit not as nicely as Windows...)
 *
 *****************************************************************************/	
void MSDMediumRemovalHandler()
{
//		msd_csw.bCSWStatus=0x00;										// Pass

		msd_csw.bCSWStatus=0x01;										// Fail - RPG Mod
		gblSenseData.SenseKey=S_NOT_READY;

		msd_csw.dCSWDataResidue=0x00;
}  

/******************************************************************************
 * Function:        void MSDTestUnitReadyHandler()
 *
 * PreCondition:    None 
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This function prepares response to Test Unit Ready Command
 *                  No data response is expected, only a CSW is to be sent 
 *                  Based on the current state of the SDCard an error or
 *                  success status value is set
 *
 * RPG Mod:         Cut right down as the emulated disk is usually present.
 *					The media is report as removed if the UPDATE_COMPLETE flag is
 *					set. The flag is then immediately cleared. The effect of this is to
 *					cause a refresh of the directory displayed in Windows. So if, for example,
 *					we have changed a file name (after a firmware upgrade) the change is immediately
 *					reflected.
 *
 *					For completeness the media is also reported as removed when we exit
 *					Boot Mode.
 *
 *****************************************************************************/	
void MSDTestUnitReadyHandler()
{

	msd_csw.bCSWStatus=0x0;
	ResetSenseData();
	msd_csw.dCSWDataResidue=0x00;

	if( status.UPDATE_COMPLETE || status.BOOT_MODE == FALSE )
	{	
		status.UPDATE_COMPLETE = FALSE;	
		gblSenseData.SenseKey=S_UNIT_ATTENTION;
		gblSenseData.ASC=ASC_MEDIUM_NOT_PRESENT;
		gblSenseData.ASCQ=ASCQ_MEDIUM_NOT_PRESENT;
		msd_csw.bCSWStatus=0x01;
	} 

	return;
}

/******************************************************************************
 * Function:        void MSDVerifyHandler()
 *
 * PreCondition:    None 
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This function prepares response to Verify Command
 *		    		No data response is expected, we reply by a success CSW 
 *		    		The command is not being processed in this version of code
 *
 * Note:            None
 *****************************************************************************/	
void MSDVerifyHandler()
{
	msd_csw.bCSWStatus=0x0;
	msd_csw.dCSWDataResidue=0x00;
	return;
}

/******************************************************************************
 * Function:        void MSDStopStartHandler()
 *
 * PreCondition:    None 
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This function prepares response to Start Stop Unit Command
 *                  No data response is expected, we reply by a success CSW 
 *                  The command is not being processed in this version of code
 *
 * Note:            None
 *****************************************************************************/	
void MSDStopStartHandler()
{
	msd_csw.bCSWStatus=0x0;
	msd_csw.dCSWDataResidue=0x00;
	return;
}
#endif //def USB_USE_MSD

/** EOF msd.c ***************************************************************/
