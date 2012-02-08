#include "pictest.h"

#ifdef SDCC

#define CONFIG_WORD (_XT_OSC & _DEBUG_OFF & _CP_OFF & _WRT_OFF & _CPD_OFF & _LVP_OFF & _BODEN_ON & _PWRTE_OFF & _WDT_OFF)

static unsigned int __at(0x2007) CONFIG = CONFIG_WORD;

#elif defined(HI_TECH_C)

#define _XTAL_FREQ 4000000                                                                                                                                                                                        
__CONFIG(FOSC_XT & DEBUG_OFF & CP_ON & WRT_OFF & CP_OFF & LVP_OFF & BODEN_OFF & PWRTE_OFF & WDTE_OFF);

#endif

unsigned char b;

void my_delay(unsigned short iterations)
{
  short i;

  for(i = 0; i < iterations; i++)
  {
    __asm nop __endasm;
  }
}

int main()
{
/*
  PR2 = 0xff;       // Set PWM period
  CCPR1L = 0x00;    // Set PWM duty cycle
  CCP1CON = 0x0c;      // Set PWM mode
  //CCP1X = 1;        // Set one of the LSB bits.

  CCPR2L = 0;
  CCP2CON = 0x0c;
  // It took me a while to realize the point of
  // these since they're so inconvenient to use.
  // Set one but only one of these, and your PWM
  // output will never be able to stall -- values
  // of 0 won't disable it, values of 255 won't pin it.

  T1CON = 0x00;
  T2CKPS0 = 0;      // Set timer 2 prescaler to 1:1.
  T2CKPS1 = 0;      // These bits are in T2CON.
  TMR2ON = 1;       // Enable timer 2.


  // Set up timer0 interrupt
  T0CS = 0; // Internal clock source
  PSA = 0;  // Assign prescaler to timer0
  PS0 = 0;
  PS1 = 0;
  PS2 = 0; // 1:2 prescaler (4 MHz quartz, so timer0 rate 2 MHz (every 500ns))
  INTCON = 0;
  T0IE = 1;
  TMR0 = 0;
*/

  TRISB = 0;
  TRISC = 0;

//  uart_init();

//  PEIE = 1;
  //GIE = 1;

  b = 0;

  for(;;)
  {
   PORTB = ~b;
   PORTC = b;

b++;
 my_delay(512);    
//__delay_ms(10);
  }
}
