
#define SOFTPWM_RANGE 255
#define SOFTPWM_CHANNELS 3
#define SOFTPWM_MASK 0b11111100
#define SOFTPWM_MASK2 0b00111011
#define SOFTPWM_MASK3 0b00000111

//#define USE_MCLRE 1

#include "config-bits.h"
#include "pictest.h"

//#if defined(__12f1840)
#ifndef NO_PORTB
#define NO_PORTB 1
#endif
//#endif

#if defined(USE_SER) || defined(USE_UART) || defined(USE_SOFTSER)
#define HAVE_SERIAL 1
#endif

#include "../lib/comparator.h"
#include "../lib/const.h"
#include "../lib/device.h"
#include "../lib/timer.h"
#include "../lib/interrupt.h"
#include "../lib/random.h"
#include "../lib/softpwm.h"
#include "../lib/delay.h"
#include "../lib/format.h"
#include "bresenham.h"

#ifdef USE_ADCONVERTER
#define VREF_PLUS 3.3
#define VREF_MINUS 0.0
#include "../lib/adc.h"
#endif

#ifdef USE_UART
#include "../lib/uart.h"
#endif

#ifdef USE_SER
#include "../lib/ser.h"
#endif

#ifdef USE_SOFTSER
#include "../lib/softser.h"
#endif

#if defined(__SDCC__) && defined(PIC16)
__code unsigned int __at(_CONFIG) __config_word = CONFIG_WORD;
#endif

#if defined(__12f1840)
#define BUTTON_PORT PORTA
#define BUTTON_SHIFT 0
#define BUTTON_BIT RA0
#define BUTTON_TRIS() TRISA0 = 1
#elif defined(__18f25k50)
#define BUTTON_PORT PORTE
#define BUTTON_SHIFT 3
#define BUTTON_BIT PORTEbits.RE3
#define BUTTON_TRIS() /*TRISE |= 0b1000*/

#elif defined(__18f16q41) || !defined(__18f4550)
#define BUTTON_PORT PORTC
#define BUTTON_SHIFT 1
#define BUTTON_BIT RB0
#define BUTTON_TRIS() TRISB |= 0b1
#endif

#ifndef BUTTON_PORT
#if NO_PORTB
#define BUTTON_PORT PORTA
#define BUTTON_SHIFT 0
#else
#define BUTTON_PORT PORTB
#define BUTTON_SHIFT 0
#endif
#endif

#define BUTTON_GET() ((~(BUTTON_PORT)) >> BUTTON_SHIFT)

#define B_LEFT 0b0001
#define B_PLUS 0b0010
#define B_MINUS 0b0100
#define B_RIGHT 0b1000

volatile BOOL run = 0;
volatile uint8_t msec_count = 0;

BRESENHAM_DECL(bres);
volatile uint32_t msecs, hsecs;

static BOOL led_state = 0;
static uint32_t tmp_msecs;
static uint32_t prev_hsecs = 0 /*, last_button = 0*/;
static uint8_t index = 0;
static int16_t history[8] = {0, 0, 0, 0, 0, 0, 0, 0};
static char histindex = 0;
static char bbit = 0;
static uint32_t btime = 0;

#define encode_time(ms) (ms)

void
clear_history() {

  for(char i = 0; i < 8; i++) history[i] = 0;
  histindex = 0;
}

//-----------------------------------------------------------------------------
// Interrupt handling routine
//-----------------------------------------------------------------------------
#if defined(USE_SOFTPWM) || defined(USE_UART) || defined(USE_SER) || defined(USE_TIMER0) || defined(USE_ADCONVERTER)
INTERRUPT_FN() {
  NOP();

#ifdef USE_SOFTPWM
  SOFTPWM_ISR3();
#endif

#ifdef USE_UART
  if(RCIF) {
    uart_isr();
    RCIF = 0;
  }
#endif

#ifdef USE_SER
  ser_int();
#endif

#ifdef USE_TIMER0
  if(TIMER0_INTERRUPT_FLAG) {
    BRESENHAM_INC8(bres) * 4;

    if(BRESENHAM_COND(bres, 5000)) {
      BRESENHAM_SUB(bres, 5000);
      msecs++;
      msec_count++;
    }

    if(msec_count >= 10) { // if reached 1 centisecond!
      hsecs++;             // update clock, etc

      // LED_PIN = hsecs & 1;

      msec_count -= 10;

      /*if(hsecs >= 100) {
        secs++;
        hsecs = 0;
      }*/
    }

    // Clear timer interrupt bit
    TIMER0_INTERRUPT_CLEAR();
  }
#endif

  /*  if(CCP1IF) {

      CCP1IF = 0;
    }*/

#ifdef USE_TIMER2
  if(TIMER2_INTERRUPT_FLAG) {

    // Clear timer interrupt bit
    TIMER2_INTERRUPT_CLEAR();
  }
#endif

#ifdef USE_ADCONVERTER
  if(ADIF) {
    adc_result = (ADRESH << 8) | ADRESL;
    ADIF = 0;

    GO_DONE = 1;
  }
#endif
}

#endif

//-----------------------------------------------------------------------------
int
main() {
  msec_count = msecs = 0;
  hsecs = 0;
  bres = 0;
  run = 1;

#ifdef __18f25k50
#if XTAL_USED == NO_XTAL
  OSCCONbits.IRCF = 7; // 16 MHz
#endif

#if(XTAL_USED != MHz_12)
  OSCTUNEbits.SPLLMULT = 1; // PLL 3x
#endif
  OSCCON2bits.PLLEN = 1;

  PLL_STARTUP_DELAY();

#if XTAL_USED == NO_XTAL
  ACTCONbits.ACTSRC = 1;
  ACTCONbits.ACTEN = 1;
#endif
#endif

  random_init(128, 79, 209);

#ifdef USE_UART
  uart_init();
#endif

#ifdef USE_SER
  ser_init();
#endif

#ifdef USE_SOFTSER
  softser_init();
#endif

#if USE_ADCONVERTER
  ADON = 0;
#if !defined(__18f14k50) && !defined(__18f16q41)
  PCFG = 0b0110;
#endif
#endif

#ifdef USE_COMPARATOR
  comparator_disable();
// CMCONbits.CON = 0;
//  CMCON = 0b111;          //Disable LATA Comparators
#endif

#ifdef USE_TIMER0
  timer0_init(PRESCALE_1_1 | TIMER0_FLAGS_8BIT);

  TIMER0_INTERRUPT_CLEAR();
  TMR0IE = 1;
#endif

#ifdef USE_TIMER1
  timer1_init(PRESCALE_1_1);

  TIMER1_INTERRUPT_CLEAR();
  TMR1IE = 1;
#endif

#ifdef USE_TIMER2
  timer2_init(PRESCALE_1_1);

  TIMER2_INTERRUPT_CLEAR();
  TMR2IE = 1;
#endif

#ifdef USE_MCP3001
  mcp3001_init();
#endif

#ifdef USE_LED
  LED_TRIS();
  INIT_LED();
#endif

#ifdef USE_SOFTPWM
  softpwm_init();
/*
  for(int i = 0; i < SOFTPWM_CHANNELS; i++) {

    int j = i;

    while(j >= 5) j -= 5;

    softpwm_values[i] = j * 255 / 4;
  }*/
#endif

#ifndef __18f16q41
  PEIE = 1;
#endif
  INTERRUPT_ENABLE();

#ifdef USE_ADCONVERTER
  adc_init(ADCS_FOSC_64, 0);

#if defined(__18f2550) || defined(__18f252) || defined(__18f14k22) || defined(__18f14k50)
#else
  ANSELA &= ~0b00000111;
#endif
  TRISA |= 0b00000111;

  // ADIE = 1;

  adc_read(0);
#endif

#if HAVE_SERIAL
  put_str(put_char, "blinktest\r\n");
#endif

  /* TRISC2 = 1;

   CCP1IE = 0;
   CCP1IF = 0;*/

  BUTTON_TRIS();

  for(;;) {
    char b;

    b = BUTTON_BIT;

    if(b != bbit) {

      if(!b) {
        // button pressed (input pulled down)
        //
      } else {
      }

#ifdef USE_LED
      led_state = !b;
      SET_LED(led_state);
#endif

      uint32_t d = msecs - btime;

      uint16_t t = encode_time(d);

      if(t > 0) {
        history[histindex++] = t;

        if(histindex > 7)
          histindex = 0;
      }

      if(!b && d > 3000)
        clear_history();

      if(histindex) {
        // morse_process();
      }

      btime = msecs;
      bbit = b;
    }

    if(b && msecs - btime > 3000) {
    }
  }
}
