/*********************************************************************
 *
 *             Microchip USB C18 Firmware -  MSD Version 1.0
 *
 *********************************************************************
 * FileName:        msd.h
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
 * Gurinder Singh       5/31/05     Original.
 ********************************************************************/
#ifndef MSD_H
#define MSD_H

/** I N C L U D E S **********************************************************/
#include "GenericTypeDefs.h"

/** D E F I N I T I O N S ****************************************************/

/* MSD Interface Class Code */
#define MSD_INTF 0x08

/* MSD Interface Class SubClass Codes */
#define MSD_INTF_SUBCLASS 0x06

/* MSD Interface Class Protocol Codes */
#define MSD_PROTOCOL 0x50

/* Class Commands */
#define MSD_RESET 0xff
#define GET_MAX_LUN 0xfe

#define BLOCKLEN_512 0x0200

#define STMSDTRIS TRISD0
#define STRUNTRIS TRISD1
#define STMSDLED LATDbits.LATD0
#define STRUNLED LATDbits.LATD1
#define ToggleRUNLED() STRUNLED = !STRUNLED;

/* SCSI Transparent Command Set Sub-class code */
#define INQUIRY 0x12
#define READ_FORMAT_CAPACITY 0x23
#define READ_CAPACITY 0x25
#define READ_10 0x28
#define WRITE_10 0x2a
#define REQUEST_SENSE 0x03
#define MODE_SENSE 0x1a
#define PREVENT_ALLOW_MEDIUM_REMOVAL 0x1e
#define TEST_UNIT_READY 0x00
#define VERIFY 0x2f
#define STOP_START 0x1b

/* Various States of Mass Storage Firmware */
#define MSD_WAIT 0     // Waiting for a valid Command Block Wrapper (CBW)
#define MSD_DATA_IN 2  // IN Data State ( Device-> Host)
#define MSD_DATA_OUT 3 // OUT Data State (Host -> Device)

#define MSD_CSW_SIZE 0x0d // 10 bytes CSW data
#define MSD_CBW_SIZE 0x1f // 31 bytes CBW data

#define INVALID_CBW 1
#define VALID_CBW !INVALID_CBW
#define MAX_LUN 0

/* Sense Key Error Codes */

#define S_NO_SENSE 0x0
#define S_RECOVERED_ERROR 0x1
#define S_NOT_READY 0x2
#define S_MEDIUM_ERROR 0x3
#define S_HARDWARE_ERROR 0X4
#define S_ILLEGAL_REQUEST 0x5
#define S_UNIT_ATTENTION 0x6
#define S_DATA_PROTECT 0x7
#define S_BLANK_CHECK 0x8
#define S_VENDOR_SPECIFIC 0x9
#define S_COPY_ABORTED 0xa
#define S_ABORTED_COMMAND 0xb
#define S_OBSOLETE 0xc
#define S_VOLUME_OVERFLOW 0xd
#define S_MISCOMPARE 0xe

#define S_CURRENT 0x70
#define S_DEFERRED 0x71

/* ASC ASCQ Codes for Sense Data (only those that we plan to use) */
// with sense key Illegal request for a command not supported
#define ASC_INVALID_COMMAND_OPCODE 0x20
#define ASCQ_INVALID_COMMAND_OPCODE 0x00

// from SPC-3 Table 185
// with sense key Illegal Request for test unit ready
#define ASC_LOGICAL_UNIT_NOT_SUPPORTED 0x25
#define ASCQ_LOGICAL_UNIT_NOT_SUPPORTED 0x00

// with sense key Not ready
#define ASC_LOGICAL_UNIT_DOES_NOT_RESPOND 0x05
#define ASCQ_LOGICAL_UNIT_DOES_NOT_RESPOND 0x00

#define ASC_MEDIUM_NOT_PRESENT 0x3a
#define ASCQ_MEDIUM_NOT_PRESENT 0x00

#define ASC_LOGICAL_UNIT_NOT_READY_CAUSE_NOT_REPORTABLE 0x04
#define ASCQ_LOGICAL_UNIT_NOT_READY_CAUSE_NOT_REPORTABLE 0x00

#define ASC_LOGICAL_UNIT_IN_PROCESS 0x04
#define ASCQ_LOGICAL_UNIT_IN_PROCESS 0x01

#define ASC_LOGICAL_UNIT_NOT_READY_INIT_REQD 0x04
#define ASCQ_LOGICAL_UNIT_NOT_READY_INIT_REQD 0x02

#define ASC_LOGICAL_UNIT_NOT_READY_INTERVENTION_REQD 0x04
#define ASCQ_LOGICAL_UNIT_NOT_READY_INTERVENTION_REQD 0x03

#define ASC_LOGICAL_UNIT_NOT_READY_FORMATTING 0x04
#define ASCQ_LOGICAL_UNIT_NOT_READY_FORMATTING 0x04

#define ASC_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE 0x21
#define ASCQ_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE 0x00

#define ASC_WRITE_PROTECTED 0x27
#define ASCQ_WRITE_PROTECTED 0x00

/******************************************************************************
 * Macro:           (bit) mMSDRxIsBusy(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This macro is used to check if MSD OUT endpoint is
 *                  busy (owned by SIE) or not.
 *                  Typical Usage: if(mMSDRxIsBusy())
 *
 * Note:            None
 *****************************************************************************/
#define mMSDRxIsBusy() MSD_BD_OUT.Stat.UOWN

/******************************************************************************
 * Macro:           (bit) mMSDTxIsBusy(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This macro is used to check if MSD IN endpoint is
 *                  busy (owned by SIE) or not.
 *                  Typical Usage: if(mMSDTxIsBusy())
 *
 * Note:            None
 *****************************************************************************/
#define mMSDTxIsBusy() MSD_BD_IN.Stat.UOWN

/******************************************************************************
 * Macro:           (bit) mMin(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This macro is used to find the lower of two arguments
 *                  Typical Usage: mMin(A, B)
 *
 * Note:            None
 *****************************************************************************/
#define mMin(A, B) (A < B) ? A : B

/** S T R U C T U R E S ******************************************************/
/********************** ******************************************************/

typedef struct _USB_MSD_CBW // 31 bytes total Command Block Wrapper
{
  dword dCBWSignature;          // 55 53 42 43h
  dword dCBWTag;                // sent by host, device echos this value in CSW (associated a CSW with a CBW)
  dword dCBWDataTransferLength; // number of bytes of data host expects to transfer
  byte bCBWFlags;               // CBW flags, bit 7 = 0-data out from host to device,
                                //					= 1-device to host, rest bits 0
  byte bCBWLUN;                 // Most Significant 4bits are always zero, 0 in our case as only one logical unit
  byte bCBWCBLength;            // Here most significant 3bits are zero
  byte CBWCB[16];               // Command block to be executed by the device
} USB_MSD_CBW;

typedef struct { // Command Block for Read 10 (0x28)& Write 10 (0x2a)commands
  byte Opcode;
  byte Flags;       // b7-b5 RDProtect, b4 DPO, b3 FUA, b2 Reserved, b1 FUA_NV, b0 Obsolete
  DWORD LBA;        //
  byte GroupNumber; // b4-b0 is Group Number rest are reserved
  WORD TransferLength;
  byte Control;
} ReadWriteCB;

typedef struct { // Inquiry command format
  byte Opcode;
  byte EVPD; // only b0 is enable vital product data
  byte PageCode;
  word AllocationLength;
  byte Control;
} InquiryCB;

typedef struct { // Read Capacity 10
  byte Opcode;
  byte Reserved1;
  dword LBA; // Logical Block Address
  word Reserved2;
  byte PMI; // Partial medium Indicator b0 only
  byte Control;
} ReadCapacityCB;

typedef struct { // Request Sense 0x03
  byte Opcode;
  byte Desc;
  word Reserved;
  byte AllocationLength;
  byte Control;
} RequestSenseCB;

typedef struct { // Mode Sense 0x1a
  byte Opcode;
  byte DBD;      // actually only b3 is used as disable block descriptor
  byte PageCode; // b7,b6 PC=Page Control, b5-b0 PageCode
                 // Page Control bits 00=> CurrentValue, 01=>Changeable Values,10=>Default Value, 11=>Saved Values
  byte SubPageCode;
  byte AllocationLength;
  byte Control;
} ModeSenseCB;

typedef struct { // PREVENT_ALLOW_MEDIUM_REMOVAL 0x1e
  byte Opcode;
  byte Reserved[3];
  byte Prevent; // only b1-b0 is prevent, rest reserved
  byte Control;
} PreventAllowMediumRemovalCB;

typedef struct { // TEST_UNIT_READY 0x00
  byte Opcode;
  dword Reserved;
  byte Control;
} TestUnitReadyCB;

typedef struct { // VERIFY 10 Command 0x2f
  byte Opcode;
  byte VRProtect; // b7-b5 VRProtect, b4 DPO, b3-b2,Reserved, b1 BYTCHK, b0 Obsolete
  dword LBA;
  byte GroupNumber; // b4-b0 Group Number, rest reserved
  word VerificationLength;
  byte Control;
} VerifyCB;

typedef struct { // STOP_START 0x1b
  byte Opcode;
  byte Immed;
  word Reserved;
  byte Start; // b7-b4 PowerCondition, b3-b2reserved, b1 LOEJ, b0 Start
  byte Control;
} StopStartCB;

typedef struct _USB_MSD_CSW // Command Status Wrapper
{
  dword dCSWSignature;   // 55 53 42 53h Signature of a CSW packet
  dword dCSWTag;         // echo the dCBWTag of the CBW packet
  dword dCSWDataResidue; // difference in data expected (dCBWDataTransferLength) and actual amount processed/sent
  byte bCSWStatus;       // 00h Command Passed, 01h Command Failed, 02h Phase Error, rest obsolete/reserved
} USB_MSD_CSW;

typedef struct {
  byte Peripheral;           // Peripheral_Qualifier:3; Peripheral_DevType:5;
  byte Removble;             // removable medium bit7 = 0 means non removable, rest reserved
  byte Version;              // version
  byte Response_Data_Format; // b7,b6 Obsolete, b5 Access control co-ordinator, b4 hierarchical addressing support
                             // b3:0 response data format 2 indicates response is in format defined by spec
  byte AdditionalLength;     // length in bytes of remaining in standard inquiry data
  byte Sccstp;               // b7 SCCS, b6 ACC, b5-b4 TGPS, b3 3PC, b2-b1 Reserved, b0 Protected
  byte bqueetc;              // b7 bque, b6- EncServ, b5-VS, b4-MultiP, b3-MChngr, b2-b1 Obsolete, b0-Addr16
  byte CmdQue;               // b7-b6 Obsolete, b5-WBUS, b4-Sync, b3-Linked, b2 Obsolete,b1 Cmdque, b0-VS
  char vendorID[8];
  char productID[16];
  char productRev[4];
} InquiryResponse;

typedef struct {
  byte ModeDataLen;
  byte MediumType;
  unsigned Resv : 4;
  unsigned DPOFUA : 1; // 0 indicates DPO and FUA bits not supported
  unsigned notused : 2;
  unsigned WP : 1;  // 0 indicates not write protected
  byte BlockDscLen; // Block Descriptor Length
} tModeParamHdr;

/* Short LBA mode block descriptor (see Page 1009, SBC-2) */
typedef struct {
  byte NumBlocks[4];
  byte Resv; // reserved
  byte BlockLen[3];
} tBlockDescriptor;

/* Page_0 mode page format */
typedef struct {

  unsigned PageCode : 6; // SPC-3 7.4.5
  unsigned SPF : 1;      // SubPageFormat=0 means Page_0 format
  unsigned PS : 1;       // Parameters Saveable

  byte PageLength;  // if 2..n bytes of mode parameters PageLength = n-1
  byte ModeParam[]; // mode parameters
} tModePage;

typedef struct {
  tModeParamHdr Header;
  tBlockDescriptor BlockDsc;
  tModePage modePage;
} ModeSenseResponse;

/* Fixed format if Desc bit of request sense cbw is 0 */
typedef union {
  struct {
    byte _byte[18];
  };
  struct {
    unsigned ResponseCode : 7; // b6-b0 is Response Code Fixed or descriptor format
    unsigned VALID : 1;        // Set to 1 to indicate information field is a valid value

    byte Obsolete;

    unsigned SenseKey : 4; // Refer SPC-3 Section 4.5.6
    unsigned Resv : 1;
    unsigned ILI : 1;      // Incorrect Length Indicator
    unsigned EOM : 1;      // End of Medium
    unsigned FILEMARK : 1; // for READ and SPACE commands

    DWORD Information;     // device type or command specific (SPC-33.1.18)
    byte AddSenseLen;      // number of additional sense bytes that follow <=244
    DWORD CmdSpecificInfo; // depends on command on which exception occured
    byte ASC;              // additional sense code
    byte ASCQ;             // additional sense code qualifier Section 4.5.2.1 SPC-3
    byte FRUC;             // Field Replaceable Unit Code 4.5.2.5 SPC-3

    byte SenseKeySpecific[3]; // msb is SKSV sense-key specific valied field set=> valid SKS
                              // 18-n additional sense bytes can be defined later
                              // 18 Bytes Request Sense Fixed Format
  };
} RequestSenseResponse;

/** E X T E R N S ************************************************************/
// extern CSD gblCSDReg;					// declared in sdcard.c

/** P U B L I C  P R O T O T Y P E S *****************************************/
void USBCheckMSDRequest(void);
void ProcessIO(void);
void DiskInit(void);
void MSDInitEP(void);
