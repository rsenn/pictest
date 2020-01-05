/*********************************************************************
 *
 *                  Sample Application Firmware
 *
 *********************************************************************
 * FileName:        boot.h
 * Dependencies:    
 * Processor:       PIC18
 * Compiler:        C18
 * Author:			Ray Gordon
 * Version:			1.0
 * Date:			7/07/08
 *
 * Description:		Example application to demonstrate USB MSD Bootloader
 * 
 *
 * History:
 *
 ********************************************************************/

#ifndef SAMPLE_H
#define SAMPLE_H

/** INCLUDES **/

#include "Config_IO.h"
#include "GenericTypeDefs.h"

/** DEFINITIONS **/

																		// In this example we allow 9K for the Boot Loader
																		// If you use Extended Mode & all optimizations
																		// then this size may be reduced to 7K and the User Code
																		// located from 0x1C00. Don't forget to adjust linker
																		// script & config fuses 

#define REMAP_RESET_VECTOR			0x002400							// User code starts here (9K)
#define REMAP_HIGH_INTERRUPT_VECTOR	0x002408							// Remapped interrupt vectors
#define REMAP_LOW_INTERRUPT_VECTOR	0x002418

#define FIRMWARE_VERSION 			0x002428							// Firmware version is located here
																		// 3 bytes: Major Ver, Minor Ver, FW Valid
#define MAJOR_FW_VAL				'1'									// Firmware Version 1.0 (ASCII)
#define	MINOR_FW_VAL				'0'
#define	FW_VALID					0xAA								// Flag to indicate valid firmware

#define MAX_CONFIG		128												// Allow up to 128 bytes of user config data
#define MAX_PATTERNS	8												// EEPROM locations 0 - 7 contain the LED pattern sequence
												
																		// Internal EEPROM addresses
																		// Addresses 0 - 0x7F are reserved for user configuration which may be updated by Bootloader
#define	ID1				0xFB											// 1st power up: ID1
#define ID2				0xFC											// 1st power up: ID2
#define	BOOT_FAIL		0xFD											// EEPROM Bootloader previous upgrade result (set to a specific svalue if the upgrade failed)
#define BOOT_MODE_SIG1	0xFE											// EEPROM signature locations: Bootloader or User Mode
#define BOOT_MODE_SIG2	0xFF								

#define ID1_VAL			0xCD											// Unique IDs programmed after 1st power up
#define ID2_VAL			0xBB

#define SIG1_VAL		0xEE											// Unique signature when in bootloader
#define	SIG2_VAL		0x40

#define FAIL_VAL		0xFA											// BOOT_FAIL is set to this value if previous firmware upgrade failed

#define	NO_ERROR		1
#define	ERROR			0



/** PROTOTYPES **/
void Handle_Timers(void);
void WriteEE(byte data, byte address);
byte ReadEE(byte address);
void Reset_CPU(void);

/** GLOBAL VARIABLES **/
extern volatile word Timer_800mS;

#endif 																	// SAMPLE_H

