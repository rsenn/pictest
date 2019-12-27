/*********************************************************************
 *
 *                Sample Application Firmware
 *
 *********************************************************************
 * FileName:        main.c
 * Dependencies:    See INCLUDES section below
 * Processor:       PIC18F4550
 * Compiler:        C18
 * Company:         Scene Double Ltd.
 * Author:			Ray Gordon (ray@scene-double.co.uk)
 * Version:			1.0
 * Date:			7/07/08
 *
 * Description:		Example (template) application to demonstrate use with USB MSD Bootloader project
 *					For use with PICDEM FS USB board
 *					EEPROM locations 0 to 7 each contain a value (0 - 0x0F)
 *					Each value determines which LEDS (D1 - D4) are lit
 *						e.g. 0x01 will light D1 & 0x0F wil light them all. 
 *					Every 800mS the next value is read (wrapped) and written to the LEDs
 *					On first ever power-up the LED pattern is initialised to count up (0 - 7)
 *					The pattern may be altered via the CONFIG file through the MSD Bootloader
 *					A timer interrupt occurs every 1mS
 *
 *					Press Switch S2 to quit this application and enter the Bootloader
 *
 *					To use with BootLoader:
 *					(1) Export the hex file (file -> export) without configuration fuses, ID, or EEPROM data
 *					(2) Format the firmware using the accompanying HEXStream Windows application
 *
 *					See the accompanying documentation for a more detailed explanation 		
 *
 * History: 
 * 		
 * 
 ********************************************************************/


/** INCLUDES **/
#include "Config_Fuses.h"
#include "sample.h"		


/** GLOBAL VARIABLES **/
										

/** FUNCTION PROTOTYPES **/

static void InitializeSystem(void);


/** VECTOR REMAPPING **/

extern void _startup (void);        									// Remap to User area
#pragma code _RESET_VECTOR = REMAP_RESET_VECTOR
void _reset (void)
{
    _asm goto _startup _endasm
}

// Ensure correct interrupt operation when not programmed with Bootloader 
#pragma code HIGH_INTERRUPT_VECTOR = 0x08
void High_ISR (void)
{
     _asm goto REMAP_HIGH_INTERRUPT_VECTOR _endasm
}

#pragma code LOW_INTERRUPT_VECTOR = 0x18
void Low_ISR (void)
{
	  _asm goto REMAP_LOW_INTERRUPT_VECTOR _endasm
}

/** FIRMWARE VERSION **/												// Firmware version is located in ROM

#pragma romdata fw_ver = FIRMWARE_VERSION
const rom byte Firmware_Version[] = {MAJOR_FW_VAL, MINOR_FW_VAL, FW_VALID};
#pragma romdata


#pragma code

/******************************************************************************
 * Function:        void main(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Main program entry point.
 *
 * Note:            None
 *****************************************************************************/
void main(void)
{

	byte i = 0;

	InitializeSystem();													// Initialise everything

	
    while(1)															// Infinite task loop
    {  
		
		// Display next LED pattern
		if( Timer_800mS == 0 )
		{
			mSet_Status_LEDS( ReadEE(i) )
			i++;														// Increment & wrap EEPROM address
			i &= 0x07;
			Timer_800mS = 800;											// Preset timer
		}
		
		// Enter Bootloader if Switch 2 is pressed (no debounce)
		if( !SWITCH_2 )													
		{
			WriteEE(SIG1_VAL, BOOT_MODE_SIG1);							// Write BootLoader signature to EE
 			WriteEE(SIG2_VAL, BOOT_MODE_SIG2);
	
			Reset_CPU();												// Reset & enter Boot Mode
		}
	}
	     
 
}

/******************************************************************************
 * Function:        static void InitializeSystem(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        InitializeSystem is a centralize initialization routine.
 *                  All required USB initialization routines are called from
 *                  here.
 *
 *****************************************************************************/
static void InitializeSystem(void)
{
	byte i;

 	mInitAllIO()														// Initialise PIC I/O
	mInitTimer_1mS()													// Start 1mS timer

	mSet_Status_LEDS(0)													// Clear status LEDS

	if( (ReadEE(ID1) != ID1_VAL) || (ReadEE(ID2) != ID2_VAL) )			// First ever power up?		
	{
		WriteEE(ID1_VAL, ID1);											// Write ID1 to EE  (to flag 1st power up init done)
		WriteEE(ID2_VAL, ID2);											// Write ID2 to EE
		
		for(i = 0; i < MAX_PATTERNS; i++)								// Write a default pattern to EEPROM
			WriteEE(i,i);												// Binary count: 0 - 7
	}																

}


/******************************************************************************
 * Function:        byte ReadEE(byte address)
 *
 * PreCondition:    None
 *
 * Input:           address: Internal EE address
 *
 * Output:          Returns the byte read at the specified address
 *
 * Side Effects:    None
 *
 * Overview:        Read a byte from PIC internal EE memory
 *
 *****************************************************************************/

byte ReadEE(byte address)
{
	EECON1 = 0;
	EEADR = address;
	EECON1bits.RD = 1;
	return (EEDATA);
}


/******************************************************************************
 * Function:        void WriteEE(byte data, byte address)
 *
 * PreCondition:    None
 *
 * Input:           address: Internal EE address
 *					data: Byte to be written to this address
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Writes a byte to PIC internal EE memory
 *
 *****************************************************************************/

void WriteEE(byte data, byte address)
{
	EECON1 = 0;
	EECON1bits.WREN = 1;
	EEADR = address;
	EEDATA = data;
	EECON2 = 0x55;
	EECON2 = 0xAA;
	EECON1bits.WR = 1;

	while(EECON1bits.WR);												// Wait until written

	PIR2bits.EEIF = 0;													// Clear flags & disable writes
	EECON1 = 0;
}


/******************************************************************************
 * Function:        void Reset_CPU(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Software Reset the processor
 *
 * Notes:           In separate function to ensure optimisation of calling function is not affected.
 *
 *****************************************************************************/

void Reset_CPU(void)
{

	_asm reset _endasm

}

