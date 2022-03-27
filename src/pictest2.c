#include "pictest2.h"
#include "../lib/adc.h"
#include "../lib/const.h"
#include "../lib/delay.h"
#include "../lib/ds18b20.h"
#include "../lib/interrupt.h"
#include "../lib/lcd44780.h"
#include "../lib/ledsense.h"
#include "../lib/timer.h"
#include "../lib/uart.h"

#ifdef MCHP_XC8
#pragma config WDTE = OFF, PWRTE = ON, CP = OFF, BOREN = ON, DEBUG = OFF, LVP = OFF, CPD = OFF, WRT = HALF, FOSC = XT
#else
#ifdef SDCC
__code uint16_t __at(_CONFIG) __configword = CONFIG_WORD;
#else
#ifdef HI_TECH_C
__CONFIG(CONFIG_WORD);
#elif defined(__IAR_SYSTEMS_ICC__)
#include <io16f876a.h>
#else
#error Unknown compiler
#endif
#endif
#endif

#ifdef PORTB_BUTTONS
#define BUTTON_A 0b10000000
#define BUTTON_B 0b01000000
#define BUTTON_C 0b00100000
#define BUTTON_D 0b00010000

volatile uint8_t button_state = 0;

#if NO_PORTB
#define BUTTON_PORT LATA
#define BUTTON_SHIFT 0
#else
#define BUTTON_PORT LATB
#define BUTTON_SHIFT 4
#endif
#endif

static uint16_t temp_bits;
static double temp_value;

volatile BOOL run = 1, control = 0;
volatile uint8_t ticks, prescale;
volatile uint16_t tmr_overflows = 0;
#ifdef USE_ADCONVERTER
volatile uint16_t adc_result = 0;
#endif
volatile uint8_t serial_in = 0;

uint8_t
buttons_get() {
  uint8_t bits;

  nRBPU = 0; // pull-ups

  BSTRB_PIN = LOW;
  BSTRB_TRIS = OUTPUT;

  delay_ms(BSTRB_DELAY);

  bits = ~LATB;
  bits >>= BUTTON_SHIFT;
  bits &= BUTTON_MASK;

  delay_ms(BSTRB_DELAY);

  nRBPU = 1; // pull-ups
  BSTRB_TRIS = INPUT;

  delay_us(100);

  return bits;
}

INTERRUPT_HANDLER() {
  if(TIMER0_INTERRUPT_FLAG) {
    TMR0 = ticks;

    tmr_overflows++;
    LED_PIN = !(tmr_overflows & 0x1000);
    RA5 = !(tmr_overflows & 0x0200);

    TIMER0_INTERRUPT_CLEAR();

    // Clear timer interrupt bit
  }

#ifdef USE_PWM
  if(CCP1IF) {
    TMR1H = 0;
    TMR1L = 0;
    INTERRUPT_DISABLE();
    control = 1;

    CCP1IF = 0;
    INTERRUPT_ENABLE();
  }
  if(TMR2IF) {
    // if(run) {
    //}
    TMR2IF = 0;
  }
#endif
/*  if(TMR1IF) {
    tmr1_count++;
    TMR1IF = 0;
  }*/
#if 0 // def PORTB_BUTTONS
  if(RBIF) {
    button_state |= (~LATB) & (BUTTON_A | BUTTON_B | BUTTON_C | BUTTON_D);
    RBIF = 0;
  }
#endif
#ifdef USE_UART
  if(RCIF) {
    serial_in = RCREG;
    RCIF = 0;
  }
#endif
#if 0 // def USE_ADCONVERTER
  if(ADIF) {
    adc_result = ADRES;
    ADIF = 0;
  }
#endif
}

#ifdef PORTB_BUTTONS

static uint8_t
button_pressed(uint8_t b) {
  uint8_t st;
  st = (button_state & b);
  if(st) {
    button_state = 0;
  }
  return st;
}
#endif

static uint8_t
tmr0_get_psbit() {
  if(PSA)
    return 0;
  return OPTION_REGbits.PS + 1;
}

#define TMR0_GET_INTERVAL_TCY(treg) (((uint16_t)(255 - treg)) << tmr0_get_psbit())
/*
static uint16_t
tmr0_get_psval() {
  return 1l << tmr0_get_psbit();
}
*/
#define TMR0_GET_RATE() (long)(OSC_4 / (1l << tmr0_get_psbit()))

static void
tmr0_set_psbit(uint8_t psbit) {
  if(psbit == 0)
    PSA = 1;
  else
    OPTION_REGbits.PS = psbit - 1;
}

#define INC 0x04

void
increment_tmrspeed(int8_t s) {
  if(s > 0) {
    if(ticks >= (INC * 4)) {
      ticks -= INC;
    } else {
      if(prescale < 8) {
        prescale++;
        ticks = (255 - ((255 - ticks) >> 1));
      } else {
        return;
      }
    }
  } else if(s < 0) {
    if(ticks <= (0xff - INC)) {
      ticks += INC;
    } else {
      if(prescale > 1) {
        prescale--;
        ticks = (255 - (((255 - ticks) | 1) << 1));
      } else {
        return;
      }
    }
  }
  tmr0_set_psbit(prescale);
}

void
reset_speed() {
  ticks = 0x90;
  prescale = 6;
  tmr0_set_psbit(prescale);
}

//-----------------------------------------------------------------------------
int
main() {
  uint8_t cd;

  run = 1;

  LED_TRIS();
  LED_ON();

  CMCON = 0b111; // Disable LATA Comparators

  nRBPU = 1; // pull-ups

  lcd_init(1);
  lcd_begin(2, 1);
  lcd_home();
  lcd_clear();
  lcd_print("TEST");

  adc_init();

  reset_speed();

#ifdef USE_UART
  uart_init();
#endif

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
  // of 0 won't disable it, values of 255 won't pin it.*/
  // T1CON = 0x00;

#ifdef USE_PWM
  // set up TMR2
  T2CONbits.TOUTPS = 0b0000;
  T2CKPS0 = 0; // Set timer 2 prescaler to 1:1.
  T2CKPS1 = 0; // These bits are in T2CON.
  TMR2IE = 1;
  TMR2IF = 0;
  TMR2ON = 1; // Enable timer 2.

  /* Set up input capture */
  CCP1IE = 1;
  CCP1CONbits.CCP1M = 0b0110; // Capture mode, every 4th rising edge

  TRISC2 = INPUT;

  T1SYNC = 1;

  // T1CKPS0 = 0; T1CKPS1 = 1; // 1:4 prescaler
  T1CKPS0 = 0;
  T1CKPS1 = 0; // 1:1 prescaler
  /*T1CONbits.*/ TMR1ON = 1;

  TMR1IF = 0;
#endif

  // Set up timer0 interrupt
  T0CS = 0; // Internal clock source
  PSA = 0;  // Assign prescaler to timer0

  tmr0_set_psbit(1);

  //  OPTION_REGbits.PS = 0b111; // 1:256 prescaler (4 MHz quartz, so timer0 rate 15.625 kHz (every 64ns))

  TMR0 = ~ticks;
  TIMER0_INTERRUPT_CLEAR();
  T0IE = 1;

  tmr_overflows = 0;
  /*
    T1CKPS0 = 1;
    T1CKPS1 = 0; // 1:2 prescale
    T1OSCEN = 1;
    T1SYNC = 1;
    TMR1CS = 0;
    TMR1ON = 1;
    TMR1 = 0;
    TMR1IE = 1;
    TMR1IF = 0;*/

#ifdef PORTB_BUTTONS
  TRISB |= 0b11110000;

  INTEDG = 0; // falling edge
  RBIE = 1;
  RBIF = 0;
#endif

  PEIE = 1;
  INTERRUPT_ENABLE();

  TRISA0 = TRISA1 = TRISA3 = INPUT;
  TRISA2 = TRISA4 = TRISA5 = OUTPUT;

  RA2 = RA4 = RA5 = 0;

  TRISC1 = TRISC0 = OUTPUT;
  RC0 = LOW;
  RC1 = HIGH;
  /*  TRISC &= ~0b1011;
    LATC &= ~0b1011;
    TRISC |= 0b0100;
  */

  for(;;) {
    adc_result = adc_read(0);

    // lcd_home();
    // lcd_clear();
    lcd_gotoxy(5, 0);
    // lcd_print_number(ADVAL_V(adc_result)*1000, 10, 5); lcd_print("mV");
    lcd_print_number(adc_result, 10, 4);

    //     lcd_putch(' ');

    adc_result = adc_read(1);
    lcd_print_number(adc_result, 10, 4);

    lcd_putch(' ');
    lcd_print_number(buttons_get(), 2, -4);

    delay_ms(100);
  }

  if(!ow_reset())
    ow_search();

  {
    double voltage;
    uint16_t reading, prev = 0;
    uint16_t counter;
    double freq;
    BOOL ledon = 0;
    BOOL presence;
    uint16_t refresh = 0;

    for(;;) {
      counter = 256 * CCPR1H + CCPR1L + 4;
      if(control) {

        freq = _XTAL_FREQ / 4 / counter;
      } else {
        freq = 0;
      }
      if(counter > 10000)
        freq = 0;

      ledsense_charge();
      reading = ledsense_read();
      if(prev == 0)
        prev = reading;

      if(prev - reading > 100)
        ledon = !ledon;

      prev = reading;

      ledsense_emit(ledon);

      lcd_clear();
      lcd_gotoxy(0, 0);
      lcd_print("L=");
      lcd_putch(ledon ? '1' : '0');
      lcd_putch(' ');
      /*    lcd_print_number(reading, 16, 0);
          lcd_putch(' ');

      */

      voltage = (double)adc_read(0) * 5.0l / 1024;
      lcd_print_number((int16_t)(voltage * 1000), 10, 4);
      lcd_print("mV ");

      lcd_print_number((int16_t)freq, 10, 5);
      lcd_print("Hz ");

      if(!refresh) {

        presence = !ow_reset();

        lcd_print("T=");
        if(presence) {
          ds18b20_start_conversion(0, 1);
          refresh = tmr_overflows + MS_TO_OVERFLOWS(750, 255 - ticks);
        } else {
          // not present
          lcd_print("n/a");
          refresh = 0;
        }
      }

      if(refresh && refresh <= tmr_overflows) {
        temp_bits = ds18b20_value(0) << 2;

        temp_value = ds18b20_temperature(temp_bits, 0);
      }

      delay_ms(250);
    }
  }

  ledsense_loop();
  return 0;

  for(;;) {

#ifdef PORTB_BUTTONS
    if(button_pressed(BUTTON_A)) {
      run = 0;
    }

    if(button_pressed(BUTTON_B)) {
      reset_speed();
      run = 1;
    }
#endif

    lcd_gotoxy(0, 0);
    lcd_print("p=");
    lcd_print_number((int)prescale, 10, 0);
    lcd_print(",t=");
    lcd_print_number((int)ticks, 16, 0);
    lcd_print(",r=");
    //  lcd_print_float((double)OSC_4/TMR0_GET_INTERVAL_TCY(ticks)/256, 2);
    lcd_print_number((long)OSC_4 * 1000 / TMR0_GET_INTERVAL_TCY(ticks) / 256, 10, 0);
    //    lcd_print_float((double)TMR0_GET_RATE() / (255 - ticks) / 256, 2);
    lcd_print("mHz ");
    //
    // lcd_gotoxy(10,1);
    // lcd_print("b=0x");
    // lcd_print_number(b, 16);
    lcd_gotoxy(0, 1);
    lcd_print(run ? "run " : "halt");

#ifdef PORTB_BUTTONS
    if((cd = button_pressed(BUTTON_C | BUTTON_D))) {
      increment_tmrspeed(cd == BUTTON_C ? 1 : (cd == BUTTON_D) ? -1 : 0);
      tmr0_set_psbit(prescale);
      // uart_putch(cd == BUTTON_C ? 'C' : 'D');
    }
#endif

    delay_ms(25);
  }
}
