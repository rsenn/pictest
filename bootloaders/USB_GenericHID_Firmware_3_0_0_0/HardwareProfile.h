/************************************************************************
    HardwareProfile.h

    usbGenericHidCommunication reference firmware 3_0_0_0
    Copyright (C) 2011 Simon Inns

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

    Email: simon.inns@gmail.com

************************************************************************/

#ifndef HARDWAREPROFILE_H
#define HARDWAREPROFILE_H

// USB stack hardware selection options ----------------------------------------------------------------

// (This section is the set of definitions required by the MCHPFSUSB framework.)

// Uncomment the following define if you wish to use the self-power sense feature
// and define the port, pin and tris for the power sense pin below:
// #define USE_SELF_POWER_SENSE_IO
#define tris_self_power TRISAbits.TRISA2
#if defined(USE_SELF_POWER_SENSE_IO)
#define self_power PORTAbits.RA2
#else
#define self_power 1
#endif

// Uncomment the following define if you wish to use the bus-power sense feature
// and define the port, pin and tris for the power sense pin below:
//#define USE_USB_BUS_SENSE_IO
#define tris_usb_bus_sense TRISAbits.TRISA1
#if defined(USE_USB_BUS_SENSE_IO)
#define USB_BUS_SENSE PORTAbits.RA1
#else
#define USB_BUS_SENSE 1
#endif

// Uncomment the following line to make the output HEX of this project work with the MCHPUSB Bootloader
//#define PROGRAMMABLE_WITH_USB_MCHPUSB_BOOTLOADER

// Uncomment the following line to make the output HEX of this project work with the HID Bootloader
#define PROGRAMMABLE_WITH_USB_HID_BOOTLOADER

// Application specific hardware definitions ------------------------------------------------------------

// Oscillator frequency (48Mhz with a 20Mhz external oscillator)
#define CLOCK_FREQ 48000000

// Device Vendor Indentifier (VID) (0x04D8 is Microchip's VID)
#define USB_VID 0x04D8

// Device Product Indentifier (PID) (0x0080)
#define USB_PID 0x0080

// Manufacturer string descriptor
#define MSDLENGTH 10
#define MSD 'S', 'i', 'm', 'o', 'n', ' ', 'I', 'n', 'n', 's'

// Product String descriptor
#define PSDLENGTH 39
#define PSD                                                                                                            \
  'U', 'S', 'B', ' ', 'G', 'e', 'n', 'e', 'r', 'i', 'c', ' ', 'H', 'I', 'D', ' ', 'r', 'e', 'f', 'e', 'r', 'e', 'n',   \
      'c', 'e', ' ', 'b', 'o', 'a', 'r', 'd', ' ', '3', '_', '0', '_', '0', '_', '0'

// Device serial number string descriptor
#define DSNLENGTH 7
#define DSN 'W', 'F', 'F', '_', '3', '.', '0'

// Common useful definitions
#define INPUT_PIN 1
#define OUTPUT_PIN 0
#define FLAG_FALSE 0
#define FLAG_TRUE 1

// Comment out the following line if you do not want the debug
// feature of the firmware (saves code and RAM space when off)
//
// Note: if you use this feature you must compile with the large
// memory model on (for 24-bit pointers) so that the sprintf()
// function will work correctly.  If you do not require debug it's
// recommended that you compile with the small memory model and
// remove any references to <strings.h> and sprintf().
#define DEBUGON

// PIC to hardware pin mapping and control macros
#if defined(__18F4550)
// For the PIC18F4550 we expect the LEDs to be on port D
// (just like the PICDEM FS USB board)
#define mInitStatusLeds()                                                                                              \
  LATD &= 0xF0;                                                                                                        \
  TRISD &= 0xF0;

#define mStatusLED0 LATDbits.LATD0
#define mStatusLED1 LATDbits.LATD1
#define mStatusLED2 LATDbits.LATD2
#define mStatusLED3 LATDbits.LATD3

#define mStatusLED0_on() mStatusLED0 = 1;
#define mStatusLED1_on() mStatusLED1 = 1;
#define mStatusLED2_on() mStatusLED2 = 1;
#define mStatusLED3_on() mStatusLED3 = 1;

#define mStatusLED0_off() mStatusLED0 = 0;
#define mStatusLED1_off() mStatusLED1 = 0;
#define mStatusLED2_off() mStatusLED2 = 0;
#define mStatusLED3_off() mStatusLED3 = 0;

#define mStatusLED0_Toggle() mStatusLED0 = !mStatusLED0;
#define mStatusLED1_Toggle() mStatusLED1 = !mStatusLED1;
#define mStatusLED2_Toggle() mStatusLED2 = !mStatusLED2;
#define mStatusLED3_Toggle() mStatusLED3 = !mStatusLED3;
#else
// For the PIC18F2550 we expect the LEDs to be on port B
#define mInitStatusLeds()                                                                                              \
  LATB &= 0xF0;                                                                                                        \
  TRISB &= 0xF0;

#define mStatusLED0 LATBbits.LATB0
#define mStatusLED1 LATBbits.LATB1
#define mStatusLED2 LATBbits.LATB2
#define mStatusLED3 LATBbits.LATB3

#define mStatusLED0_on() mStatusLED0 = 1;
#define mStatusLED1_on() mStatusLED1 = 1;
#define mStatusLED2_on() mStatusLED2 = 1;
#define mStatusLED3_on() mStatusLED3 = 1;

#define mStatusLED0_off() mStatusLED0 = 0;
#define mStatusLED1_off() mStatusLED1 = 0;
#define mStatusLED2_off() mStatusLED2 = 0;
#define mStatusLED3_off() mStatusLED3 = 0;

#define mStatusLED0_Toggle() mStatusLED0 = !mStatusLED0;
#define mStatusLED1_Toggle() mStatusLED1 = !mStatusLED1;
#define mStatusLED2_Toggle() mStatusLED2 = !mStatusLED2;
#define mStatusLED3_Toggle() mStatusLED3 = !mStatusLED3;
#endif

#endif
