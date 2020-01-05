/*********************************************************************
 *
 *                Microchip USB C18 Firmware Version 1.0
 *
 *********************************************************************
 * FileName:        usbdsc.h
 * Dependencies:    See INCLUDES section below
 * Processor:       PIC18
 * Compiler:        C18 2.30.01+
 * Company:         Microchip Technology, Inc.
 *
 * RPG 1/10/07:		Modified for MSD as per Microchip example
 *
 ********************************************************************/

/*********************************************************************
 * Descriptor specific type definitions are defined in:
 * system\usb\usbdefs\usbdefs_std_dsc.h
 ********************************************************************/

#ifndef USBDSC_H
#define USBDSC_H

/** INCLUDES **/
#include "GenericTypeDefs.h"
#include "usbcfg.h"

#if defined(USB_USE_MSD)
#include "msd.h"
#endif

#include "usb.h"

#define	MAX_CD	2						// Number of configuration descriptors in table
#define MAX_SD	2						// Number of string descriptors in table

/** DEFINITIONS **/
#define CFG01 rom struct	\
{   USB_CFG_DSC     cd01;	\
    USB_INTF_DSC    i00a00;	\
    USB_EP_DSC      ep01i_i00a00;	\
    USB_EP_DSC      ep01o_i00a00;	\
} cfg01

/** EXTERNS **/
extern rom USB_DEV_DSC device_dsc;
extern CFG01;
extern rom const unsigned char *rom USB_CD_Ptr[];
extern rom const unsigned char *rom USB_SD_Ptr[];

extern rom pFunc ClassReqHandler[1];


#endif //USBDSC_H
