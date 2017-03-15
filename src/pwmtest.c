/**
 * Shows operation of the PWM module.
 *
 * Sets up the PWM module to produce output at about 300Hz on pin B3.
 * Meanwhile, timer0 interrupts periodically fire, altering
 * the value of the CCPR1L register and hence altering the
 * duty cycle of the resulting waveform from 0.01%, up to
 * 99.9%, and back down to 0.01% .
 *
 * If you hook a LED up to this pin, it should seem to dim and fade.
 */

#include "device.h"
#include "const.h"
#include "typedef.h"
#include "interrupt.h"
#include "pwm.h"
#include "adc.h"
#include "delay.h"
#include "lcd44780.h"

#ifdef MCHP_XC8
#else
  #ifdef SDCC
  __code uint16_t __at (_CONFIG) __configword = CONFIG_WORD;
  #else
  # ifdef HI_TECH_C
  __CONFIG(CONFIG_WORD);
  # define NOT_RBPU nRBPU
  # else
  #  error Unknown compiler
  # endif
  #endif
#endif

#define LED_PIN RA4
#define LED_TRIS TRISA4


const uint16_t
sine_table[128] = {
  0x200, 0x219, 0x232, 0x24b, 0x263, 0x27c, 0x294, 0x2ac, 0x2c3, 0x2da, 0x2f1, 0x307, 0x31c, 0x330, 0x344, 0x357,
  0x36a, 0x37b, 0x38b, 0x39b, 0x3a9, 0x3b7, 0x3c3, 0x3ce, 0x3d9, 0x3e2, 0x3e9, 0x3f0, 0x3f6, 0x3fa, 0x3fd, 0x3ff,
  0x400, 0x3ff, 0x3fd, 0x3fa, 0x3f6, 0x3f0, 0x3e9, 0x3e2, 0x3d9, 0x3ce, 0x3c3, 0x3b7, 0x3a9, 0x39b, 0x38b, 0x37b,
  0x36a, 0x357, 0x344, 0x330, 0x31c, 0x307, 0x2f1, 0x2da, 0x2c3, 0x2ac, 0x294, 0x27c, 0x263, 0x24b, 0x232, 0x219,
  0x200, 0x1e6, 0x1cd, 0x1b4, 0x19c, 0x183, 0x16b, 0x153, 0x13c, 0x125, 0x10e, 0x0f8, 0x0e3, 0x0cf, 0x0bb, 0x0a8,
  0x095, 0x084, 0x074, 0x064, 0x056, 0x048, 0x03c, 0x031, 0x026, 0x01d, 0x016, 0x00f, 0x009, 0x005, 0x002, 0x000,
  0x000, 0x000, 0x002, 0x005, 0x009, 0x00f, 0x016, 0x01d, 0x026, 0x031, 0x03c, 0x048, 0x056, 0x064, 0x074, 0x084,
  0x095, 0x0a8, 0x0bb, 0x0cf, 0x0e3, 0x0f8, 0x10e, 0x125, 0x13c, 0x153, 0x16b, 0x183, 0x19c, 0x1b4, 0x1cd, 0x1e6
};

volatile static uint8_t index;
volatile static uint8_t ticks;
volatile static uint16_t poti;

INTERRUPT_HANDLER(void isr) {
  if(T0IF) {  // Did we get a timer0 interrupt?

    PWM_setduty(1, sine_table[index % ARRAY_SIZE(sine_table)]);
    PWM_setduty(2, sine_table[(uint8_t)(index + 64) % ARRAY_SIZE(sine_table)]);

    index++;

    TMR0 = 255 - ticks;
    T0IF = 0;
  }
}

void main(void) {
  ticks = 0xff;
  index = 0;
  CMCON = 0b111;  /** Disable comparators.  NEEDED FOR NORMAL PORTA
                   *  BEHAVIOR ON PIC16f628a!
                   */
  TRISC2 = OUTPUT;
  TRISC1 = OUTPUT;

  adc_init();

  lcd_init(1);
  lcd_begin(2, 1);

  pwm_init(0b00);

  PWM_start(1);
  PWM_start(2);

/*  PR2 = 0xff;  // Set PWM period
  CCP1M = 0b1100;  // Set PWM mode
  */
  PWM_setduty(1, 0);
  PWM_setduty(2, 0);
  /*CCP1X = 0;  // Set one of the LSB bits.
  CCP1Y = 0;
  CCPR1L = 0x00;  // Set PWM duty cycle*/
  // It took me a while to realize the point of
  // these since they're so inconvenient to use.
  // Set one but only one of these, and your PWM
  // output will never be able to stall -- values
  // of 0 won't disable it, values of 255 won't pin it.

/*//  T2CONbits.T2CKPS = 0b01; // Set timer 2 prescaler to 1:4
  T2CONbits.T2CKPS = 0b00; // Set timer 2 prescaler to 1:1
  T2CONbits.TOUTPS = 0b0000;
  TMR2ON = 1;  // Enable timer 2.
*/

  // Set up timer0 interrupt
  T0CS = 0;  // Internal clock source
  PSA = 0;  // Assign prescaler to timer0
  OPTION_REGbits.PS = 0b110;
  INTCON = 0;
  GIE = 1;
  T0IE = 1;
  TMR0 = 0;

  LED_TRIS = 0;
  LED_PIN = 0;

  TRISC0 = 0;
  RC0 = 0;

  lcd_clear();
  lcd_print("pictest3");

  for(;;) { // Loop forever
    poti = adc_read(0);

    lcd_gotoxy(10, 0);
    lcd_print_number(((double)poti * 5000 / 1024), 10, 4);
    lcd_print("mV");

    GIE = 0;
//    OPTION_REGbits.PS = 0b100 | (poti >> 8);
      ticks = (long)poti * 200 / 1024 + 32;
    GIE = 1;

    __delay_ms(100);
  }
}


