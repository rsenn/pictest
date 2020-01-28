/*********************************************************************
 *
 *      USB MSD Bootloader - PIC18F4550 Fuse Configuration
 *
 *********************************************************************
 * FileName:        Config_Fuses.h
 * Dependencies:    See INCLUDES section below
 * Processor:       PIC18F4550
 * Compiler:        C18
 *
 * Author               Date        	Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * RPG			        7/07/08	   		Original (for PICDEM FS)
 *********************************************************************/

#ifndef CONFIG_FUSES_H
#define CONFIG_FUSES_H

/** INCLUDES **/
#include <p18cxxx.h> // Generic PIC Header

/** CONFIGURATION FUSES **/

//#pragma config	XINST = ON		// Extended Mode

#pragma config USBDIV = 2         // USB Clock from 96MHz PLL / 2
#pragma config CPUDIV = OSC1_PLL2 // CPU Clock Postscaler (OSC1 / 1, 96MHz PLL Src / 2)
#pragma config PLLDIV = 5         // PLL Prescaler (20MHz input)
#pragma config FOSC = HSPLL_HS    // HS Oscillator, HS-USB
#pragma config FCMEN = OFF        // Fail Safe Clock Monitor
#pragma config IESO = OFF         // Int/Ext Switchover Mode
#pragma config PWRT = ON          // PWRT Enabled
#pragma config BOR = ON           // Hardware Brown-Out Reset
#pragma config BORV = 2           // 2.75 BOR Level
#pragma config VREGEN = ON        // USB voltage Regulator Enabled
#pragma config WDT = OFF          // No Watchdog Timer
#pragma config WDTPS = 256        // Watchdog Timer Prescaler
#pragma config MCLRE = ON         // MCLR Enabled (No RE3)
#pragma config LPT1OSC = OFF      // Normal Power Timer 1 Osc
#pragma config PBADEN = OFF       // PORTB<4:0) are Digital I/O
#pragma config CCP2MX = ON        // CCP2 Mux RC1
#pragma config STVREN = ON        // Stack Overflow Reset
#pragma config LVP = OFF          // Disable Single-Supply ICSP

#ifndef __18f2550
#pragma config ICPRT = OFF // Dedicated ICPORT
#endif

#pragma config WRT0 = OFF // No Write Protection
#pragma config WRT1 = OFF
#pragma config WRT2 = OFF
#pragma config WRT3 = OFF
#pragma config WRTB = OFF
#pragma config WRTC = OFF
#pragma config WRTD = OFF

#pragma config EBTR0 = OFF // No Table Read Protection
#pragma config EBTR1 = OFF
#pragma config EBTR2 = OFF
#pragma config EBTR3 = OFF
#pragma config EBTRB = OFF

#ifdef __DEBUG
#pragma config DEBUG = ON // Background Debugging
#pragma config CP0 = OFF  // No Code Protection in Debug
#pragma config CP1 = OFF
#pragma config CP2 = OFF
#pragma config CP3 = OFF
#pragma config CPB = OFF
#pragma config CPD = OFF

#else

#pragma config CP0 = ON // Code Protection
#pragma config CP1 = ON
#pragma config CP2 = ON
#pragma config CP3 = ON
#pragma config CPB = ON
#pragma config CPD = OFF

#endif

#endif // CONFIG_FUSES_H
