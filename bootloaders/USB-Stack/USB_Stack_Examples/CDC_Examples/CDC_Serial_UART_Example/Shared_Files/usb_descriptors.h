/**
 * @file usb_descriptors.h
 * @brief Contains core USB stack descriptors stored in ROM.
 * @author John Izzard
 * @date 13/02/2019
 * 
 * USB uC - USB Stack (This file is for MSD Simple Example).
 * Copyright (C) 2017-2019  John Izzard
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */
#ifndef USB_DESCRIPTORS_H
#define USB_DESCRIPTORS_H

#include "usb_config.h"
#include "usb_cdc.h"

/** Device Descriptor */
const struct Device_Descriptor_Type Device_Descriptor = {
    0x12,           // bLength:8 -  Size of descriptor in bytes
    DEVICE_DESC,    // bDescriptorType:8  - Device descriptor type
    0x0200,         // bcdUSB:16 -  USB in BCD (2.0H)
    CDC_CLASS,      // bDeviceClass:8
    0x00,           // bDeviceSubClass:8
    0x00,           // bDeviceProtocol:8
    EP0_SIZE,       // bMaxPacketSize0:8 - Maximum packet size
    0x04D8,         // idVendor:16 - Microchip VID = 0x04D8
    0x000A,         // idProduct:16 - Product ID (VID)
    0x0100,         // bcdDevice:16 - Device release number in BCD
    0x01,           // iManufacturer:8 - Manufacturer string index
    0x02,           // iProduct:8 - Product string index
    0x00,           // iSerialNumber:8 - Device serial number string index
    0x01            // bNumConfigurations:8 - Number of possible configurations
};

/** Configuration Descriptor Structure */
struct Config_Descriptor_Type {
    struct Configutarion_Descriptor_Type Configuration0_Descriptor;
    struct Standard_Interface_Descriptor_Type Interface0_Descriptor;
    struct CDC_Header_Functional_Descriptor_Type CDC_Header_Descriptor;
    struct CDC_ACM_Functional_Descriptor_Type CDC_ACM_Descriptor;
    struct CDC_Union_Functional_Descriptor_Type CDC_Union_Descriptor;
    struct CDC_CM_Functional_Descriptor_Type CDC_CM_Descriptor;
    struct Standard_Endpoint_Descriptor_Type EP1_IN_Descriptor;
    struct Standard_Interface_Descriptor_Type Interface1_Descriptor;
    struct Standard_Endpoint_Descriptor_Type EP2_OUT_Descriptor;
    struct Standard_Endpoint_Descriptor_Type EP2_IN_Descriptor;
};

/** Configuration Descriptor */
const struct Config_Descriptor_Type Config_Descriptor0 = {
    // Configuration Descriptor
    {
        9,                          // bLength:8 - Size of configuration descriptor in bytes
        CONFIGURATION_DESC,         // bDescriptorType:8 - Configuration descriptor type
        sizeof(Config_Descriptor0), // wTotalLength:16 - Total amount of bytes in descriptors belonging to this configuration    //0x34
        0x02,                       // bNumInterfaces:8 - Number of interfaces in this configuration
        0x01,                       // bConfigurationValue:8 - Index value for this configuration
        0x00,                       // iConfiguration:8 - Index of string describing this configuration
        0xC0,                       // bmAttributes:8 {0:5,RemoteWakeup:1,SelfPowered:1,1:1}
        50                          // bMaxPower:8 - 100mA power allowed (increments of 2mA)
    },

    // Interface0 Descriptor
    {
        9,              // bLength:8 - Size of interface descriptor in bytes           
        INTERFACE_DESC, // bDescriptorType:8 - Interface descriptor type
        0x00,           // bInterfaceNumber:8 - Index number of interface
        0x00,           // bAlternateSetting:8 - Value used to select alternate setting
        0x01,           // bNumEndpoints:8 - Number of endpoints used in this interface
        CIC_CODE,       // bInterfaceClass:8 - Class Code (Assigned by USB Org)                       *0x08 is MSD*
        CIC_ACM,        // bInterfaceSubClass:8 - Subclass Code (Assigned by USB Org)                 *0x01 if Boot Interface Subclass*
        CIC_V25TER,     // bInterfaceProtocol:8 - Protocol Code (Assigned by USB Org)                 *0x01 is Keyboard protocol*
        0x00            // iInterface:8 - Index of String Descriptor Describing this interface
    },
    
    // Header Functional Descriptor
    {
        5,
        CS_INTERFACE,
        DESC_SUB_HEADER,
        0x0110
    },
    
    // Abstract Control Management Functional Descriptor
    {
        4,
        CS_INTERFACE,
        DESC_SUB_ACM,
        0x02
    },
    
    // Union Functional Descriptor
    {
        5,
        CS_INTERFACE,
        DESC_SUB_UNION,
        0x00,
        0x01
    },
    
    // Call Management Functional Descriptor
    {
        5,
        CS_INTERFACE,
        DESC_SUB_CM,
        0x00,
        0x01
    },

    // Endpoint Descriptor
    {
        7,                  // bLength:8 - Size of EP descriptor in bytes
        ENDPOINT_DESC,      // bDescriptorType:8 - Endpoint Descriptor Type
        0x81,               // bEndpointAddress:8 {EndpointNum:4,0:3,Direction:1} - Endpoint address
        0x03,               // bmAttributes:8 {TransferType:2,SyncType:2,UsageType:2,0:2} - Attributes
        EP1_SIZE,           // wMaxPacketSize:16 - Maximum packet size for this endpoint (send & receive)
        0x02                // bInterval:8 - Interval
    },
    
    // Interface1 Descriptor
    {
        9,              // bLength:8 - Size of interface descriptor in bytes           
        INTERFACE_DESC, // bDescriptorType:8 - Interface descriptor type
        0x01,           // bInterfaceNumber:8 - Index number of interface
        0x00,           // bAlternateSetting:8 - Value used to select alternate setting
        0x02,           // bNumEndpoints:8 - Number of endpoints used in this interface
        DIC_CODE,       // bInterfaceClass:8 - Class Code (Assigned by USB Org)                       *0x08 is MSD*
        0x00,           // bInterfaceSubClass:8 - Subclass Code (Assigned by USB Org)                 *0x01 if Boot Interface Subclass*
        DIC_NONE,       // bInterfaceProtocol:8 - Protocol Code (Assigned by USB Org)                 *0x01 is Keyboard protocol*
        0x00            // iInterface:8 - Index of String Descriptor Describing this interface
    },
    
    // Endpoint Descriptor
    {
        7,                  // bLength:8 - Size of EP descriptor in bytes
        ENDPOINT_DESC,      // bDescriptorType:8 - Endpoint Descriptor Type
        0x02,               // bEndpointAddress:8 {EndpointNum:4,0:3,Direction:1} - Endpoint address
        0x02,               // bmAttributes:8 {TransferType:2,SyncType:2,UsageType:2,0:2} - Attributes
        EP2_SIZE,           // wMaxPacketSize:16 - Maximum packet size for this endpoint (send & receive)
        0x00                // bInterval:8 - Interval
    },
    
    // Endpoint Descriptor
    {
        7,                  // bLength:8 - Size of EP descriptor in bytes
        ENDPOINT_DESC,      // bDescriptorType:8 - Endpoint Descriptor Type
        0x82,               // bEndpointAddress:8 {EndpointNum:4,0:3,Direction:1} - Endpoint address
        0x02,               // bmAttributes:8 {TransferType:2,SyncType:2,UsageType:2,0:2} - Attributes
        EP2_SIZE,           // wMaxPacketSize:16 - Maximum packet size for this endpoint (send & receive)
        0x00                // bInterval:8 - Interval
    }
};

/** Configuration Descriptor Addresses Array */
const uint16_t CD_Ptr[] = {
    (uint16_t)&Config_Descriptor0
};

/** String Zero Descriptor Structure */
struct String_Zero_Descriptor_Type {
    uint8_t  bLength;
    uint8_t  bDescriptorType;
    uint16_t  wLANGID[1];
};

/** Vendor String Descriptor Structure */
struct Vendor_String_Descriptor_Type {
    uint8_t  bLength;
    uint8_t  bDescriptorType;
    uint16_t  bString[25];
};

/** Product String Descriptor Structure */
struct Product_String_Descriptor_Type {
    uint8_t  bLength;
    uint8_t  bDescriptorType;
    uint16_t  bString[25];
};

/** Serial String Descriptor Structure */
struct Serial_String_Descriptor_Type {
    uint8_t  bLength;
    uint8_t  bDescriptorType;
    uint16_t  bString[12];
};

/** String Zero Descriptor */
const struct String_Zero_Descriptor_Type String_Zero_Descriptor = {
    4,
    STRING_DESC,
    {0x0409}
};

/** Vendor String Descriptor */
const struct Vendor_String_Descriptor_Type Vendor_String_Descriptor = {
    52,
    STRING_DESC,
    {'M','i','c','r','o','c','h','i','p',' ','T','e','c','h','n','o','l','o','g','y',' ','I','n','c','.'}
};

/** Product String Descriptor */
const struct Product_String_Descriptor_Type Product_String_Descriptor = {
    52,
    STRING_DESC,
    {'C','D','C',' ','R','S','-','2','3','2',' ','E','m','u','l','a','t','i','o','n',' ','D','e','m','o'}
};

/** Serial String Descriptor */
const struct Serial_String_Descriptor_Type Serial_String_Descriptor = {
    26,
    STRING_DESC,
    {'0','1','2','3','4','5','6','7','8','9','A','B'}
};

/** String Descriptor Addresses Array */
const uint16_t SD_Ptr[] = {
    (uint16_t)&String_Zero_Descriptor,
    (uint16_t)&Vendor_String_Descriptor,
    (uint16_t)&Product_String_Descriptor,
    (uint16_t)&Serial_String_Descriptor
};

#endif /* USB_DESCRIPTORS_H */