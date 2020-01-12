
/*****************************************************************

A simple example to demonstrate the use of PIC Timers. In this

example the TIMER0 is configured as follows.

*8 Bit Mode
*Clock Source from Prescaler
*Prescaler = FCPU/256 (Note: FCPU= Fosc/4)
*Over flow INT enabled

As our FCPU=20MHz/4 (We are running from 20MHz XTAL)
=5MHz

Time Period = 0.2uS
Prescaller Period = 0.2 x 256 = 51.2uS
Overflow Period   = 51.2 x 256 = 13107.2 uS
                  = 0.0131072 sec

So we need 1/0.0131072 Over Flows to count for 1 sec
= 76.2939 Overflows

So we keep a counter to keep track of overflows.

When an over flow occurs the PIC jumps to ISR where we
increment counter. And when counter becomes 76 we toggle
RB1 pin. This pin is connected to LED. Therefore we
have a LED which is ON for 1 sec and Off for 1sec.


Target Chip: PIC18F4520
Target Compiler: HI-TECH C For PIC18 (http://www.htsoft.com/)
Project: MPLAP Project File

Author: Avinash Gupta
Copyright (c) 2008-2010
eXtreme Electronics, India
www.eXtremeElectronics.co.in

                     NOTICE
                  -------------
NO PART OF THIS WORK CAN BE COPIED, DISTRIBUTED OR PUBLISHED WITHOUT A

WRITTEN PERMISSION FROM EXTREME ELECTRONICS INDIA. THE LIBRARY, NOR ANY PART
OF IT CAN BE USED IN COMMERCIAL APPLICATIONS. IT IS INTENDED TO BE USED FOR
HOBBY, LEARNING AND EDUCATIONAL PURPOSE ONLY. IF YOU WANT TO USE THEM IN
COMMERCIAL APPLICATION PLEASE WRITE TO THE AUTHOR.

*****************************************************************/

#include <htc.h>
#include "lib/interrupt.h"

// Chip Settings
__CONFIG(1, 0x0200);
__CONFIG(2, 0X1E1F);
__CONFIG(3, 0X8100);
__CONFIG(4, 0X00C1);
__CONFIG(5, 0XC00F);

uint8_t counter = 0; // Overflow counter

void
main() {
  // Setup Timer0
  T0PS0 = 1; // Prescaler is divide by 256

  T0PS1 = 1;
  T0PS2 = 1;

  PSA = 0; // Timer Clock Source is from Prescaler

  T0CS = 0; // Prescaler gets clock from FCPU (5MHz)

  T08BIT = 1; // 8 BIT MODE

  TMR0IE = 1; // Enable TIMER0 Interrupt
  PEIE = 1; // Enable Peripheral Interrupt

  INTERRUPT_ENABLE(); // Enable INTs globally

  TMR0ON = 1; // Now start the timer!

  // Set RB1 as output because we have LED on it

  TRISB &= 0B11111101;

  while(1)
    ; // Sit Idle Timer will do every thing!
}

// Main Interrupt Service Routine (ISR)
void interrupt
ISR() {
  // Check if it is TMR0 Overflow ISR

  if(TMR0IE && TMR0IF) {
    // TMR0 Overflow ISR
    counter++; // Increment Over Flow Counter

    if(counter == 76) {
      // Toggle RB1 (LED)

      if(RB1 == 0)
        RB1 = 1;
      else
        RB1 = 0;

      counter = 0; // Reset Counter
    }

    // Clear Flag
    TMR0IF = 0;
  }
}
