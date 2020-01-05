/*********************************************************************
 *
 *                Microchip USB C18 Firmware Version 1.0
 *
 *********************************************************************
 * FileName:        usbcfg.h
 * Dependencies:    See INCLUDES section below
 * Processor:       PIC18
 * Compiler:        C18 2.30.01+
 * Company:         Microchip Technology, Inc.
 *
 * RPG 21/07/07:	Slimmed this right down as most of the configuration stuff
 *					is now in user_main.
 * RPG 1/10/07:		Added definitions for MSD 
 *
 ********************************************************************/

#ifndef USBCFG_H
#define USBCFG_H


/** D E F I N I T I O N S *******************************************/
#define EP0_BUFF_SIZE           16  // As per Microchip MSD example
#define MAX_NUM_INT             1   // For tracking Alternate Setting
#define MAX_EP_NUMBER           1 
#define MAX_USB_INTERFACES		1   // Maximum number of USB interfaces

/* Parameter definitions are defined in usbdrv.h */
#define MODE_PP                 _PPBM0
#define UCFG_VAL                _PUEN|_TRINT|_FS|MODE_PP

//#define USE_SELF_POWER_SENSE_IO
#define USE_USB_BUS_SENSE_IO

/** D E V I C E  C L A S S  U S A G E *******************************/

/*
 * MUID = Microchip USB Class ID
 * Used to identify which of the USB classes owns the current
 * session of control transfer over EP0
 */
#define MUID_NULL               0
#define MUID_USB9               1
#define MUID_HID                2
#define MUID_CDC                3
#define MUID_MSD				4

/** INTERFACE & CLASS CONFIGURATION **/
#define USB_USE_MSD

#define MSD_INTF_ID             0x00
#define MSD_UEP                 UEP1
#define MSD_BD_OUT              ep1Bo
#define MSD_OUT_EP_SIZE     	64			
#define MSD_BD_IN               ep1Bi
#define MSD_IN_EP_SIZE      	64
#define MSD_NUM_OF_DSC          1

#endif //USBCFG_H
