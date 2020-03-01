/*********************************************************************
 *
 *      USB Local Unit Bootloader - I/O Configuration & Macros
 *
 *********************************************************************
 * FileName:        Config_IO.h
 * Dependencies:    See INCLUDES section below
 * Processor:       PIC18F4550
 * Board:			PICDEM FS USB
 * Compiler:        C18
 *
 * Author           Date        	Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Ray Gordon	    12/06/08	    Original (for PICDEM FS)
 *									Basic - User to modify as required
 ********************************************************************/

/****************************************************************************************
 *		I/O Pin Map
 *
 *		Pin		Init As			Name					Description
 *		---		-------			----					-----------
 *		RE2:	Input									Not Used
 *		RE1:	Input									Not Used
 *		RE0:	Input									Not Used
 *
 *		RD7		Input									Not Used
 *		RD6		Input									Not Used
 *		RD5		Input									Not Used
 *		RD4		Input									Not Used
 *		RD3		Output			LED_3					Status LED
 *	    RD2		Output			LED_2					Status LED
 *		RD1		Output			LED_1					Status LED
 *		RD0		Output			LED_0					Status LED
 *
 *		RC7		Input									Not Used
 *		RC6		Input									Not Used
 *		RC5		Input			DPO						Reserved for USB DP
 *		RC4		Input			DM0						Reserved for USB DM
 *		RC3		-				-						-
 *		RC2		Input									Not Used
 *		RC1		Input									Not Used
 *		RC0		Input									Not Used
 *
 *		RB7		Input									Not Used
 *		RB6		Input									Not Used
 *		RB5		Input			SWITCH_3				S3
 *		RB4		Input			SWITCH_2				S2
 *		RB3		Input									Not Used
 *		RB2		Input									Not Used
 *		RB1		Input									Not Used
 *		RB0		Input									Not Used
 *
 *		RA5		Input									Not Used
 *	    RA4		Input									Not Used
 *		RA3		Input									Not Used
 *		RA2		Input									Not Used
 *		RA1		Input			USB_ATTACH				Flags USB Bus (Power) Attached
 *		RA0		Input									Not Used
 *
 ****************************************************************************************/

#ifndef CONFIG_IO_H
#define CONFIG_IO_H

/** INCLUDES **/
#include <p18cxxx.h> // Generic PIC Header
#include <timers.h>

/** DEFINITIONS **/

#define CLOCK_FREQ 48000000 // Default Processor Clock Freq

#define INPUT 1
#define OUTPUT 0
#define HIGH 1
#define LOW 0

/** I/O PINS **/
#define USB_ATTACH PORTAbits.RA1 // Input
#define SWITCH_2 PORTBbits.RB4   // Input
#define SWITCH_3 PORTBbits.RB5   // Input

#define LED_0 LATDbits.LATD0 // Output
#define LED_1 LATDbits.LATD1 // Output
#define LED_2 LATDbits.LATD2 // Output
#define LED_3 LATDbits.LATD3 // Output

/** INTIALISATION **/

#define mSetAllDigitalIO() ADCON1 = 0x0F; // All I/O is digital

// Initialise ports as per above I/O map
#define mInitAllIO()                                                                                                   \
  mSetAllDigitalIO();                                                                                                  \
  LATE = 0x00;                                                                                                         \
  LATD = 0x00;                                                                                                         \
  LATC = 0x00;                                                                                                         \
  LATB = 0x00;                                                                                                         \
  LATA = 0x00;                                                                                                         \
  TRISE = 0xFF;                                                                                                        \
  TRISD = 0xF0;                                                                                                        \
  TRISC = 0xFF;                                                                                                        \
  TRISB = 0xFF;                                                                                                        \
  TRISA = 0xFF;

/** STATUS LED MACROS **/
#define mStatus_LED_On(x) x = 1;
#define mStatus_LED_Off(x) x = 0;
#define mToggle_Status_LED(x) x = !x;

#define mSet_Status_LEDS(x) LATD = ((x)&0x0F); // Set all four LEDS where x = 0 to 0x0F
#define mToggle_Status_LEDS()                                                                                          \
  LATD = ~LATD; // Toggle all four LEDSs
                // Simplified macros as upper bits of port are unused in this example!

/** TIMER2 MACROS **/

#if CLOCK_FREQ == 48000000
#define T2_PRESCALE T2_PS_1_16
#define T2_POSTSCALE T2_POST_1_3
#endif

#define Timer_Flag_1mS PIR1bits.TMR2IF

/* Timer 2 will rollover every 1.024mS */
#define mInitTimer_1mS() OpenTimer2(TIMER_INT_OFF& T2_PRESCALE& T2_POSTSCALE);

/** MICROCHIP USB FRAMEWORK MACROS **/
#define usb_bus_sense USB_ATTACH
#define self_power 1 // Assume board is self powered (as per descriptors)

#endif // CONFIG_IO_H
