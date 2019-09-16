/*********************************************************************
 *
 *                  USB MSD Bootloader Firmware
 *
 *********************************************************************
 * FileName:        boot.h
 * Dependencies:    
 * Processor:       PIC18
 * Compiler:        C18
 * Author:			RPG
 * Version:			1.0
 * Date:			7/07/08
 *
 * Description:		USB MSD Bootloader header
 * 
 *
 * History:
 *
 ********************************************************************/

#ifndef BOOT_H
#define BOOT_H

/** INCLUDES **/

#include "Config_IO.h"
#include "GenericTypeDefs.h"

/** DEFINITIONS **/

																		// In this example we allow 9K for the Boot Loader (to allow for debugging or use without full optimizations)
																		// If you use ALL optimizations then this size may be reduced to 7K and the User Code located from 0x1C00.
																		// Don't forget to adjust linker script & config fuses 

																		// Using extended mode will make a minor improvement. The USB stack operates ok in extended mode.
																		 

#define REMAP_RESET_VECTOR			0x002400							// Remapped interrupt vectors
#define REMAP_HIGH_INTERRUPT_VECTOR	0x002408
#define REMAP_LOW_INTERRUPT_VECTOR	0x002418

#define FIRMWARE_VERSION 			0x002428							// Firmware version is located here
																		// 3 bytes: Major Ver, Minor Ver, Valid FW
#define FW_VALID					0xAA								// ROM flag to indicate valid user firmware

#define FW_SIZE						0x7FFFL								// Program memory size (32K)
#define	FW_TOP_BLOCK_ADDRESS		FW_SIZE - 63						// Program memory address of final 64-byte block
																		// Note: For PIC devices that store their config in the top 64 bytes
																		// you should make this value 64-bytes less to avoid overwriting them

																		// Refer to HEXStream Windows application
#define ENCRYPT															// Undefine to save a small amount of code space
#define KEY							0xAA								// Start key for basic encryption (user modifiable)
																		// Same key as entered into HEXStream


//#define FLASH_STATUS_LEDS												// Flash LEDs on PICDEM board to indicate status

#define	ALLOW_USER_CONFIG												// Enable file transfer of user application config data													
#define MAX_CONFIG		128												// Allow up to 128 bytes of user config data
												
																		// Internal EEPROM addresses
																		// In this example locations 0 to MAX_CONFIG are assumed to contain config data for the main application
#define	ID1				0xFB											// 1st power up: ID1
#define ID2				0xFC											// 1st power up: ID2
#define	BOOT_FAIL		0xFD											// EEPROM Bootloader previous upgrade result (set to a specific svalue if the upgrade failed)
#define BOOT_MODE_SIG1	0xFE											// EEPROM flag locations: Bootloader or User Mode
#define BOOT_MODE_SIG2	0xFF
										

#define ID1_VAL			0xCD											// Unique IDs programmed after 1st power up
#define ID2_VAL			0xBB

#define SIG1_VAL		0xEE											// Unique signature when in bootloader
#define	SIG2_VAL		0x40

#define FAIL_VAL		0xFA											// BOOT_FAIL is set to this value if previous firmware upgrade failed

#define	DETACH_TIMEOUT	9												// Approx 2 secs

#define	NO_ERROR		1
#define	ERROR			0


/** STRUCTURES **/

typedef union															// Extender status flags
{
	byte _Flags;

	struct
	{
		unsigned BOOT_MODE:1;											// Set when in Boot Mode
		unsigned ALLOW_FW_UPDATE:1;										// Allow firmware update (set when valid file header seen)
		unsigned ALLOW_CONFIG_UPDATE:1;									// Allow config settings update (set when valid file header seen)			
		unsigned UPDATE_COMPLETE:1;										// Firmware or User Config update is complete
		unsigned UPDATE_FAIL:1;											// Flash upgrade has failed
		unsigned CONFIG_UPDATED:1;										// User Config values have changed
		unsigned ENCRYPTED:1;											// Firmware file stream is encrypted
		unsigned:1;
	};

} STATUS_FLAGS; 

		 

/** PROTOTYPES **/
void Handle_Timers(void);
void InterfaceInit(void);
void WriteEE(byte data, byte address);
byte ReadEE(byte address);
void Reset_CPU(void);

/** GLOBAL VARIABLES **/
extern STATUS_FLAGS status;
extern byte user_configuration[];
extern byte Timer_1mS;
extern byte Timer_200mS;
extern byte EncryptVal;
extern byte encrypted;
extern byte LineSum;

#endif 																	// BOOT_H

