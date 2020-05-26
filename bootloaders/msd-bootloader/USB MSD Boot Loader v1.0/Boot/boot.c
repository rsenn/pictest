/*********************************************************************
 *
 *                  USB MSD Bootloader Firmware
 *
 *********************************************************************
 * FileName:        boot.c
 * Dependencies:    See INCLUDES section below
 * Processor:       PIC18
 * Compiler:        C18
 * Company:         Scene Double Ltd.
 * Author:			RPG
 * Version:			1.0
 * Date:			7/07/08
 *
 * License:			Copyright (C) 2007-2008  Scene Double Ltd. / Ray Gordon (ray@scene-double.co.uk)
 *
 *					This software is provided 'as-is', without any express or implied warranty.
 *					In no event will the authors be held liable for any damages arising from the use of this software.
 *
 * 					Permission is granted to anyone to use this software for any purpose, including commercial
 *applications, and to alter it and redistribute it freely, subject to the following restrictions:
 *
 * 					1. The origin of this software must not be misrepresented; you must not claim that you wrote the
 *original software.
 *					2. If you intend to use this software (or derivative) within a commercial product you must inform
 *the authors prior to product release.
 *				    3. Altered source versions must be plainly marked as such, and must not be misrepresented as being
 *the original software.
 * 					4. This notice may not be removed or altered from any source distribution.
 *
 * Overview:		FAT16 disk emulation and MSD Bootloader
 *
 *					- Emulates a 2.56MB FAT16 removable flash drive.
 * 					- This size ensures that the format is interpreted as FAT16
 *					- However, we report only a small FAT size so the (formatted) disk size reported as 511KB (see notes
 *below)
 *					- Emulated disk contains three emulated files:
 *					- FW_xx  : Version number of the current user firmware
 *							   (xx is reported as 'BAD' if previous upgrade attempt was not successful)
 *							   If no user code has been loaded the firmware is reported as 'BAD'.
 *					- CONFIG: This contains application configuration settings (application dependant)
 *					     	  This is the only file which may be read and saved.
 *							  This file must be less than 512 bytes of data (i.e. 1 sector)
 *							  In this example we assume the application config data are read and stored back to EEPROM
 *					- BOOT: To exit Boot Mode this file has to be deleted (which is only allowed under strict
 *conditions)
 *
 *					- To update user firmware a specially formatted firmware file is dragged onto the emulated disk.
 *					  After updating, the window is refreshed and the updated version number should** be displayed.
 *					  If there were any problems the version number is reported as 'BAD'.
 *					- Windows appears to have an overall file write time-out and a MSD/SCSI NAK time-out.
 *					- To ensure we do not have any time-out issues we process file writes in 64 byte chunks (as the
 *packets for each sector arrive). However, file reads are done on a 512 byte sector basis.
 *					- Flash memory write are verified & we assume that USB takes care of any possible transfer errors.
 *
 *					** Quirks
 *					- After an update we attempt to 'refresh' the folder display to show the results of the operation.
 *We do this by reporting that the media has been removed (in response to a SCSI Test Unit Ready command). Under Windows
 *the refresh is instant. However, when used with operating systems (such as OS X & some Linux) the MSD device will be
 *reported as removed by the OS and will then automatically re-attach. You may need to re-open the emulated disk folder
 *or do a folder refresh to correctly view the current status.
 *
 *					- Operating systems such as Linux & Windows 2000 may take up to 50 seconds to write data/delete from
 *the MSD device: WAIT & BE-CAREFUL! (Note: If you want to reduce this time for your OS, investigate disabling write
 *caching for handling surprise drive removal. It is fairly simple to adjust under Linux. However, unles you are doing a
 *lot of updates it is probably better to wait....) OS X and Windows XP SP2 (or later) have no delay.
 *
 * 					- See accompanying notes for a more detailed description
 *
 * History:
 *
 *
 **********************************************************************/

#include "boot.h"
#include "usb.h"
#include <ctype.h>
#include <delays.h>
#include <string.h>

/** DEFINITIONS **/

#define BOOT_SECTOR 0L  // Boot sector is at sector 0 (no MBR)
#define FAT1_SECTOR1 1L // First FAT table starts at sector 1
#define FAT_SECTORS                                                                                                    \
  4L // Each FAT occupies 4 sectors
     // Sector offset location of root directory (1st sector)
#define ROOT_DIR_OFFSET ((2 * FAT_SECTORS) + FAT1_SECTOR1)
#define ROOT_DIR_SECTORS                                                                                               \
  4L // Use four sectors (64 entries)
     // Offset location of start of file data
#define DATA_OFFSET (ROOT_DIR_OFFSET + ROOT_DIR_SECTORS)

// File Sector Map
#define BOOT_INDICATOR_OFFSET DATA_OFFSET   // Sector file offset location for boot indicator file
#define CONFIG_FILE_OFFSET DATA_OFFSET + 1L // Sector file offset location for config file

#define ROOT_DIR_BOOT_ENTRY_OFFSET 32   // Root directory offset for boot mode indicator file
#define ROOT_DIR_CONFIG_ENTRY_OFFSET 64 // Root directory offset for configuration file
#define ROOT_DIR_FWVER_ENTRY_OFFSET 96  // Root directory offset for firmware version file
#define ROOT_DIR_FW_MAJOR_OFFSET 3      // e.g FW_X..
#define ROOT_DIR_FW_MINOR_OFFSET 4      // e.g FW_.X.
#define ROOT_DIR_FW_REV_OFFSET 5        // e.g FW_..X (currently not used)

#define DIR_ENTRY_DELETED 0xE5 // Root directory file deleted marker

#define FILE_HEADER_SIZE                                                                                               \
  6 // Files that can be updated must have a valid header to ensure correct operation
    // Attempts to write anything else will be ignored

/** VARIABLES **/

#pragma romdata

// Header at the start of valid firmware upgrade files
const rom byte FW_Header[] = {0xC1, 0xD2, 0xD3, 0x00, 0x00, 0xA1};

// Header at the start of valid configuration files
const rom byte Config_Header[] = {0xC1, 0xD2, 0xD3, 0x00, 0x00, 0xAB};

// FAT16 Boot Sector Emulation:
// 2.56MB, 512 bytes/sector, 1 sector/cluster, 4 sectors/FAT.
// 5000 clusters = 2.56MB. This ensures the drive is interpreted as FAT16.
// However, as we report only 4 sectors/FAT the formatted drive capacity will be reported as 511KB.
// Allow 64 entries in the root directory. Although 16 is plenty, OS X & Linux complain!
// Note: Currently having issues if the cluster size is increased above 1 sector/cluster.
//
// Note: As this is a fixed definition where we do not need to refer to individual members
// We have not defined a structure (which would have made it look tidier).

const rom byte Boot_Sector[] = {
    0xEB,
    0x3C,
    0x90, // No MBR/Partition table
    'M',
    'S',
    'D',
    'O',
    'S',
    '5',
    '.',
    '0', // ID
    0x00,
    0x02, // 512 bytes per sector
    0x01, // 1 sector per cluster (having issues with anything larger..)
    0x01,
    0x00, // 1 reserved sector
    0x02, // 2 FAT copies

    0x40,
    0x00, // Max 64 entries in root directory
    0x88,
    0x13, // 5000 sectors (2.56MB to ensure FAT16)
    0xF8, // Non-removable media
    0x04,
    0x00, // Only 4 sectors per FAT. Windows will report a formatted disk
          // size of 511KB (not 2.56MB).
    0x00,
    0x00,
    0x00,
    0x00, // N/A
    0x00,
    0x00,
    0x00,
    0x00, // N/A
    0x00,
    0x00,
    0x00,
    0x00, // N/A (if < 32k sectors)
    0x00, // Logical drive #
    0x00, // N/A
    0x29, // Extended boot signature
    0xAA,
    0xBB,
    0xCC,
    0xDD, // Volume serial #
    'N',
    'O',
    ' ',
    'N',
    'A',
    'M',
    'E',
    ' ',
    ' ',
    ' ',
    ' ', // No volume label
    'F',
    'A',
    'T',
    '1',
    '6',
    ' ',
    ' ',
    ' ', // FAT 16

    // The rest of the boot sector (up to the signature) is null
};

// FAT16 Root Directory Emulation
// This can be fixed (in ROM) as we know the number of files, sizes and location in advance
// The first entry names the volume
// The following entries are for firmware version and settings files fixed sizes (single sector)
// firmware version numbers are dynamically calculated later
// Dates/times are fixed (to save code complexity)

const rom byte Root_Dir[] = {
    // Volume name
    'L',
    'O',
    'A',
    'D',
    'E',
    'R',
    ' ',
    ' ', // Volume name
    ' ',
    ' ',
    ' ',  // No extension
    0x08, // Attributes (Volume Label)
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00, // N/A
    0x00,
    0x00,
    0x00, // N/A
    0x00,
    0x00, // Last modification time
    0xC1,
    0x38, // Last modifcation date (1/06/2008)
    0x00,
    0x00, // N/A
    0x00,
    0x00,
    0x00,
    0x00, // N/A

    // Boot Mode Indicator File
    'B',
    'O',
    'O',
    'T',
    ' ',
    ' ',
    ' ',
    ' ', // Short file name
    ' ',
    ' ',
    ' ',  // No extension
    0x00, // Attributes
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00, // N/A
    0x00,
    0x00,
    0x00, // N/A
    0x00,
    0x00, // Last modification time
    0xC1,
    0x38, // Last modifcation date (1/06/2008)
    0x02,
    0x00, // Starts at cluster 2
    0x00,
    0x02,
    0x00,
    0x00, // File size is 512 bytes (1 cluster)

    // Config File
    'C',
    'O',
    'N',
    'F',
    'I',
    'G',
    ' ',
    ' ', // Short file name
    ' ',
    ' ',
    ' ',  // No extension
    0x00, // Attributes
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00, // N/A
    0x00,
    0x00,
    0x00, // N/A
    0x00,
    0x00, // Last modification time
    0xC1,
    0x38, // Last modifcation date (1/06/2008)
    0x03,
    0x00, // Starts at cluster 3
    0x00,
    0x02,
    0x00,
    0x00, // File size is 512 bytes (1 cluster)

    // Firmware File Version
    'F',
    'W',
    '_',
    ' ',
    ' ',
    ' ',
    ' ',
    ' ', // Short file name
    ' ',
    ' ',
    ' ',  // No Extension
    0x01, // Attributes (read only)
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00, // N/A
    0x00,
    0x00,
    0x00, // N/A
    0x00,
    0x00, // Last modification time
    0xC1,
    0x38, // Last modifcation date (1/06/2008)
    0x04,
    0x00, // Starts at cluster 4
    0x00,
    0x02,
    0x00,
    0x00, // File size is 512 bytes (1 cluster)

};

/** PRIVATE PROTOTYPES **/
void WriteFlash64(word block_address, byte* block_ptr);
void BeginWriteFlash(void);

#pragma code

/******************************************************************************
 * Function:        byte SectorRead(dword sector_addr, byte *buffer)
 *
 * PreCondition:    None
 *
 * Input:           sector_addr - Sector address, each sector contains 512-byte
 *                  buffer      - Buffer where data will be stored
 *
 * Output:          Returns 1 on success.
 *					Returns 0 if an 'out of range' sector address is specified
 *
 * Side Effects:    None
 *
 * Overview:        SectorRead reads 512 bytes of data from the sector address specified
 * 					by sector_addr and stores them in the location pointed to by 'buffer'.
 *
 * Notes:           As we are implementing a FAT emulation the data returned depends upon the
 *					sector address.
 *
 *****************************************************************************/
byte
SectorRead(dword sector_addr, byte* buffer) {
  byte* bptr = buffer;
  byte* cptr = user_configuration;
  word i;

  for(i = 0; i < 512; i++) // Clear the buffer (for reporting unused table/directory entries)
    *bptr++ = 0;

  switch((word)sector_addr) // Action depends on sector requested (FAT emulation)
  {

    case BOOT_SECTOR: // Boot Sector
                      // Return the emulated boot sector table from ROM
      memcpypgm2ram((byte*)buffer, (far rom void*)Boot_Sector, sizeof(Boot_Sector));

      buffer[510] = 0x55; // Boot Signature
      buffer[511] = 0xAA;

      break;

    case FAT1_SECTOR1:               // File Allocation Table (Page 1)
    case FAT1_SECTOR1 + FAT_SECTORS: // File allocation table copy

      buffer[0] = 0xF8;
      buffer[1] = 0xFF; // Non-removable media
      buffer[2] = 0xFF;
      buffer[3] = 0xFF; // Formatted volume

      buffer[4] = 0xFF;
      buffer[5] = 0xFF; // Emulate cluster chain for boot mode indicator file
                        // (1 cluster)

      buffer[8] = 0xFF;
      buffer[9] = 0xFF; // Emulate cluster chain for firmware version file
                        // (1 cluster)

      buffer[6] = 0xFF;
      buffer[7] = 0xFF; // Emulate cluster chain for config file
                        // (1 cluster)

      break; // Remaining clusters on page 1 are free

    case ROOT_DIR_OFFSET: // Root Directory

      // Copy the emulated root directory from ROM
      memcpypgm2ram((byte*)buffer, (far rom void*)Root_Dir, sizeof(Root_Dir));

      // Provide the correct firmware version in the filename FW_XY
      // where X = major version, Y = minor version
      // Report as BAD if invalid version or previous update failed

      if(isxdigit(*((rom byte*)(FIRMWARE_VERSION))) && isxdigit(*((rom byte*)(FIRMWARE_VERSION + 1))) &&
         ReadEE(BOOT_FAIL != FAIL_VAL)) {
        buffer[ROOT_DIR_FWVER_ENTRY_OFFSET + ROOT_DIR_FW_MAJOR_OFFSET] = *((rom byte*)(FIRMWARE_VERSION));
        buffer[ROOT_DIR_FWVER_ENTRY_OFFSET + ROOT_DIR_FW_MINOR_OFFSET] = *((rom byte*)(FIRMWARE_VERSION + 1));
      }

      else // Local FW update has failed so output 'BAD' as the version
      {
        buffer[ROOT_DIR_FWVER_ENTRY_OFFSET + ROOT_DIR_FW_MAJOR_OFFSET] = 'B';
        buffer[ROOT_DIR_FWVER_ENTRY_OFFSET + ROOT_DIR_FW_MINOR_OFFSET] = 'A';
        buffer[ROOT_DIR_FWVER_ENTRY_OFFSET + ROOT_DIR_FW_REV_OFFSET] = 'D';
        status.UPDATE_FAIL = TRUE;
      }

      break;

      // File Data area
      // The only file that may be read is the config file
      // For everything else return zeros
    case CONFIG_FILE_OFFSET:

#ifdef ALLOW_USER_CONFIG
      // Add configuration file header
      memcpypgm2ram((byte*)buffer, (far rom void*)Config_Header, FILE_HEADER_SIZE);

      bptr = buffer + FILE_HEADER_SIZE; // Setup pointer
      for(i = 0; i < MAX_CONFIG; i++)   // Return user configuration values
        *bptr++ = *cptr++;
#endif

      break;

    default: // Will just return NULL array
      break;
  }

  return NO_ERROR;
}

/******************************************************************************
 * Function:        byte SectorWrite(dword sector_addr, byte *buffer)
 *
 * PreCondition:    None
 *
 * Input:           sector_addr - Sector address, each sector contains 512-byte
 *                  buffer      - Buffer where data is stored
 *
 * Output:          Returns 1 on success.
 *					Returns 0 if an 'out of range' sector address is specified
 *
 * Side Effects:    None
 *
 * Overview:        SectorWrite handles 512 bytes of data to be written to the sector address specified
 * 					by sector_addr.
 *
 * Notes:           This is a write emulation. As we are implementing a FAT emulation the action taken
 * 					depends upon the sector address.
 *
 *					This function is actually called from the (modified) MSD class handler every 64 bytes (to minimise
 *chance of OS time-out)
 *
 *
 *****************************************************************************/
byte
SectorWrite(dword sector_addr, byte* buffer, BOOL Sector_Start) {
  static word* bptr; // Pointer to the next data block (retained between calls)
  byte *cptr = user_configuration, *dptr;
  byte i, error;

  if(Sector_Start) {
    bptr = (word*)(buffer + 8); // Set buffer pointer to data (after 8-byte sector header)
    status.ENCRYPTED = FALSE;
    if(*(buffer + 7) == 1)
      status.ENCRYPTED = TRUE; // Set flag if this file is encrypted
  }

  if(sector_addr >= BOOT_SECTOR &&
     sector_addr < ROOT_DIR_OFFSET) // Ignore & quit if this is a write to the Boot or FAT sectors
  {
    Delay10KTCYx(40); // Wait a few mS to ensure Windows flying folder appears (why?)!
    return NO_ERROR;
  }

  if(sector_addr == ROOT_DIR_OFFSET) // Root Directory
  {

    // Boot mode indicator file deleted?
    // (Note: Sector_Start because Config, and firmware version files are not in 1st 64 bytes of this sector)
    if(buffer[ROOT_DIR_BOOT_ENTRY_OFFSET] == DIR_ENTRY_DELETED && status.BOOT_MODE && Sector_Start) {
      PIR2bits.EEIF = 0; // Clear memory write interrupt flags

      // If there was any update error then we cannot return to User Mode
      if(status.UPDATE_FAIL || status.UPDATE_COMPLETE) {

        // If UPDATE_COMPLETE is false:
        status.UPDATE_COMPLETE ^= 1; // Set flag to attempt to produce a folder display refresh by emulating media
                                     // removal this will bring back the boot file to indicate failure.

        // If UPDATE_COMPLETE is true:
        // The OS does not issue regular Test Unit Ready requests. So clear the previously
        // set update complete request flag. The next time boot is deleted the unit will
        // return to User Mode if the updates were ok.

        return ERROR; // Quit with error (as file is not deleted)
      }

      // Prepare to return to User mode
      else {
        Timer_200mS = 0;          // Clear timer
        status.BOOT_MODE = FALSE; // Flag Boot Mode exit (handled in main)
      }

    }

    // This is a catch all if the user tries to delete any other files (they should not do this)
    // (Note: !Sector_Start because Config and firmware version files are not in 1st 64 bytes of this sector)
    else if(!Sector_Start && status.BOOT_MODE == TRUE) {

      if((buffer[ROOT_DIR_FWVER_ENTRY_OFFSET] == DIR_ENTRY_DELETED) ||
         (buffer[ROOT_DIR_CONFIG_ENTRY_OFFSET] == DIR_ENTRY_DELETED)) {
        status.UPDATE_COMPLETE = TRUE; // Set flag to attempt to produce a Windows folder display refresh by emulating
                                       // media removal this will bring back the boot file to indicate failure.
        return ERROR;                  // Quit with error (as file is not deleted)
      }
    }

    Delay10KTCYx(40); // Wait a few mS to ensure Windows flying folder appears (why?)!
    return 1;         // Always successful...
  }

  // File Data area
  // Only the config and firmware files may actually be written to.
  // We are going to make the assumtion that the host OS is going to write the file sectors in order starting with the
  // first and that only one file is being written at a time!

  // Check locks to see if we are currently writing to any file
  // If we are not writing to any file then check the header to determine which file is going to be updated and set
  // appropriate semaphore
  if(!status.ALLOW_FW_UPDATE && !status.ALLOW_CONFIG_UPDATE && Sector_Start) {

    // Firmware file header?
    if(memcmppgm2ram((void*)buffer, (far rom void*)FW_Header, FILE_HEADER_SIZE) == 0) {
      status.ALLOW_FW_UPDATE = TRUE; // Set semaphore
      status.UPDATE_FAIL = FALSE;    // Clear error flag
      WriteEE(0x00, BOOT_FAIL);      // Clear EEPROM upgrade fail marker
      EncryptVal = KEY;              // Preset for decryption
      LineSum = 0;
    }

    // Config file header?
    else if(memcmppgm2ram((void*)buffer, (far rom void*)Config_Header, FILE_HEADER_SIZE) == 0) {
      status.ALLOW_CONFIG_UPDATE = TRUE; // Set semaphore
      status.CONFIG_UPDATED = TRUE;      // Flag that the configuration values have been changed
    }
  }

  // Note: Firmware update files contain code for the full amount of program memory for the device being updated. Whilst
  // this may make the updates a little slower, it means that the size of each firmware upgrade file is known in advance
  // (i.e. we know when it is completed), and as there are no gaps we do not need to do any boundary checking.
  //
  // We need to check that it is a valid upgrade file sector each time because some OS's write out some other stuff such
  // as directory entries mid-file. To check we simply look for the 6-byte header.

  if(!Sector_Start && (memcmppgm2ram((void*)buffer, (far rom void*)FW_Header, FILE_HEADER_SIZE - 1) == 0)) {
    if(status.ALLOW_FW_UPDATE) // Firmware file
    {
      // Update program memory as long as code is NOT within the bootloader area
      WriteFlash64(*bptr, (byte*)(bptr + 1)); // Will set error flag if not verified correctly

      if(*bptr == FW_TOP_BLOCK_ADDRESS) // Final 64-byte block?
      {
        status.ALLOW_FW_UPDATE = FALSE; // Yes, so prevent further writes
        status.UPDATE_COMPLETE =
            TRUE; // Set flag to attempt to produce a Windows folder display refresh by emulating media removal
      }

      bptr += 36; // Advance buffer pointer to the next 64-byte block (18 x 4)
    }

    if(status.ALLOW_CONFIG_UPDATE) // Configuration file
    {

#ifdef ALLOW_USER_CONFIG

      dptr = buffer + FILE_HEADER_SIZE; // Setup pointer and copy updated user configuration to the configuration buffer
      for(i = 0; i < MAX_CONFIG; i++) {
        WriteEE(*dptr, i); // Copy to EEPROM now to ensure it is saved
        *cptr++ = *dptr++;
      }
#endif

      status.ALLOW_CONFIG_UPDATE = FALSE; // Prevent further writes
      status.UPDATE_COMPLETE =
          TRUE; // Set flag to attempt to produce a Windows folder display refresh by emulating media removal
    }
  }

  return NO_ERROR;
}

/******************************************************************************
 * Function:        void WriteFlash64(word block_address, byte *block_ptr)
 *
 * PreCondition:    None
 *
 * Input:           block_address: Program memory address of this 64-byte block
 *                  block_ptr: Pointer to the first (16-byte) block
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Programs a 64-byte block of flash memory beginning at the block address
 *					with the code pointed to by the block pointer.
 *					The first 16-byte block is located at block_ptr
 *					The second 16-byte block is located at block_ptr + 18 (upgrade file format)
 *					The third 16-byte block is located at block_ptr + 36
 *					The fourth 16-byte block is located at block_ptr + 54
 *
 *					Each 16-byte block has two address bytes followed by 16 data bytes
 *
 *					Routine also verifies the 64-byte block.
 *					If any errors are found it will set a global error flag (to EEPROM) and quit
 *
 *					Will not program a block within the Bootloader area
 *
 *					Optional basic encryption (see HEXStream application)
 *
 * Notes:           GIE is assumed to have been disabled elsewhere
 *
 *
 *****************************************************************************/

void
WriteFlash64(word block_address, byte* block_ptr) {
  byte i, y = 2;
  byte *b_ptr, *c_ptr;
  BOOL program = FALSE;

  if(status.UPDATE_FAIL)
    return;

  if(block_address >
     (REMAP_RESET_VECTOR - 1)) // Update program memory as long as code is NOT within the bootloader area
    program = TRUE;

  c_ptr = block_ptr - 2; // Point to 16-byte line address

  *((rom far byte*)block_address); // Setup table pointer

  if(program) // Erase block if not within bootloader area
  {
    EECON1 = 0;           // Setup for block erase (64-bytes)
    EECON1bits.EEPGD = 1; // Flash program memory
    EECON1bits.FREE = 1;  // Block erase
    EECON1bits.WREN = 1;  // Enable writes
    BeginWriteFlash();    // Erase 64-bytes
  }

  do // Write 64-bytes to program memory (32-bytes at a time)
  {
    EECON1 = 0;           // Setup for next block write (32-bytes)
    EECON1bits.EEPGD = 1; // Flash program memory
    EECON1bits.WREN = 1;  // Enable writes

    b_ptr = block_ptr; // Note current block pointer (for verification)

    for(i = 0; i < 32; i++) // Write 32-bytes to the holding registers
    {

#ifdef ENCRYPT
      if(status.ENCRYPTED) { // Decrypt 16-bytes (as per HEXStream application)
        *block_ptr ^= ((EncryptVal << 1) ^ ((i & 0x0F) + 117) ^ *c_ptr ^ *(c_ptr + 1));
        LineSum ^= *block_ptr; // Basic encryption not secure - just annoying!
        if(i == 15 || i == 31) // Included here as a simple example
        {
          EncryptVal ^= LineSum;
          LineSum = 0;
          c_ptr += 18;
        }
      }
#endif

      *((rom far byte*)(block_address + (word)i)) = *block_ptr; // Copy to flash buffer
      i == 15 ? block_ptr += 3 : block_ptr++;                   // Point to next byte
    }

    if(program) // Program and verify block if not within Bootloader area
    {
      BeginWriteFlash(); // Write 32-bytes (wait)

      for(i = 0; i < 32; i++) // Verify the 32-byte block
      {
        if(*((rom far byte*)block_address + (word)i) != *b_ptr) {
          status.UPDATE_FAIL = TRUE;    // Verify error so set flag
          WriteEE(FAIL_VAL, BOOT_FAIL); // Write fail staus to EEPROM to flag firmware as bad
          return;
        }

        i == 15 ? b_ptr += 3 : b_ptr++; // Point to next byte
      }
    }

    block_address += 32; // Point to the third block of 16-bytes
    block_ptr += 2;

  } while(--y); // Written both 32-byte blocks?
}

/******************************************************************************
 * Function:        void BeginWriteFlash(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Initiate required sequence to start writing a block to flash memory
 *
 *****************************************************************************/

void
BeginWriteFlash(void) {
  EECON2 = 0x55;
  EECON2 = 0xAA;
  EECON1bits.WR = 1; // Begin write cycle (stalls CPU)
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

byte
ReadEE(byte address) {
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

void
WriteEE(byte data, byte address) {
  EECON1 = 0;
  EECON1bits.WREN = 1;
  EEADR = address;
  EEDATA = data;
  EECON2 = 0x55;
  EECON2 = 0xAA;
  EECON1bits.WR = 1;

  while(EECON1bits.WR)
    ; // Wait until written

  PIR2bits.EEIF = 0; // Clear flags & disable writes
  EECON1 = 0;
}
