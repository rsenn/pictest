#include "config-bits.h"
#include "pictest.h"
#include "lib/comparator.h"
#include "lib/const.h"
#include "lib/interrupt.h"
#include "lib/random.h"
#include "lib/softpwm.h"
#include "lib/timer.h"
#include "lib/device.h"

#if USE_UART
#include "lib/uart.h"
#endif
#if USE_SER
#include "lib/ser.h"
#endif
#if USE_SOFTSER
#include "lib/softser.h"
#endif


#include <math.h>

#if NO_PORTB
#define BUTTON_PORT PORTA
#define BUTTON_SHIFT 0
#else
#define BUTTON_PORT PORTB
#define BUTTON_SHIFT 4
#endif

#define BUTTON_GET() ((~(BUTTON_PORT)) >> BUTTON_SHIFT)

#define B_LEFT 0b0001
#define B_PLUS 0b0010
#define B_MINUS 0b0100
#define B_RIGHT 0b1000

//#define b & v, b) (BUTTON_GET()&(b))

#if defined(SDCC) && !(__SDCC_VERSION_MAJOR == 3 && __SDCC_VERSION_MINOR >= 9)
__code unsigned int __at(_CONFIG) __configword = CONFIG_WORD;
#endif

#define SIZE_OF(arr) (sizeof(arr) / sizeof(arr[0]))

extern const uint16_t rainbow[64];
extern const uint8_t rainbow8[64][3];

static void
dummy_putch(char c) {}

typedef void(putch_fn)(char);

putch_fn* put_char =
#if USE_UART
    uart_putch
#elif USE_SER
    ser_putch
#else
    dummy_putch
#endif
    ;

void put_number(putch_fn* putc, uint16_t n, uint8_t base, int8_t pad /*, int8_t pointpos*/);

void
put_str(putch_fn* putc, const char* s) {
  while(*s) putc(*s++);
}

volatile BOOL run = 0;
volatile uint8_t msec_count = 0;
volatile uint16_t bres;
volatile uint32_t msecs, hsecs;

//-----------------------------------------------------------------------------
// Interrupt handling routine
//-----------------------------------------------------------------------------
INTERRUPT_HANDLER() {
  SOFTPWM_ISR();
/*
  if(TMR1IF) {
    // Clear timer interrupt bit
    TMR1IF = 0;
  }*/

#if USE_SER
  ser_int();
#endif

  if(TIMER0_INTERRUPT_FLAG) {
    bres += 256 * 4;

    if(bres >= 5000) {
      bres -= 5000;
      msecs++;
      msec_count++;
    }
    if(msec_count >= 10) { // if reached 1 decisecond!
      hsecs++;             // update clock, etc

      LED2_ANODE = hsecs & 1;

      msec_count -= 10;
    }
    // Clear timer interrupt bit
    TIMER0_INTERRUPT_CLEAR();
  }
}

//-----------------------------------------------------------------------------
int
main() {
  uint32_t tmp_msecs;
  static uint32_t prev_hsecs = 0, last_button = 0;
  uint8_t index, seconds;
  static BOOL led_state = 0;
  // static uint8_t prev_index = 0, prev_seconds = 0;
  BOOL update_colors;
  char input;
  uint32_t interval = 500;

  msec_count = msecs = 0;
  hsecs = 0;
  bres = 0;
  run = 1;

  random_init(128, 79, 209);

#if USE_UART
  uart_init();
#endif
#if USE_SER
  ser_init();
#endif
#if USE_SOFTSER
  softser_init();
#endif

#if HAVE_ADC
  ADON = 0;
  PCFG = 0b0110;
#endif

#if defined(__16f876a) || defined(__18f252)
  TRISC4 = TRISC5 = INPUT;
#endif

  SET_LED2(0);

#if HAVE_COMPARATOR
  comparator_disable();
// CMCONbits.CON = 0;
//  CMCON = 0b111;          //Disable PORTA Comparators
#endif

#if !NO_PORTB
   N_RBPU = 0;
//  N_RBPU = 0; // enable portb pull-ups
  TRISB |= 0b11110000;
  TRISB &= 0b11110011;
  RB2 = RB3 = LOW;

#endif

#if HAVE_TIMER_0 && USE_TIMER0
  timer0_init(PRESCALE_1_4);

  TIMER0_INTERRUPT_CLEAR();
  T0IE = 1;
#endif
  // timer1_init(2);

  TRISA3 = TRISA5 = OUTPUT;
  RA3 = RA5 = HIGH;

  INIT_LED();
  // INIT_LED2();
  SET_LED(1);
  //  SET_LED2(1);

  LED_TRIS();
  LED_OFF();

  LED2_CATHODE_TRIS = 0;
  LED2_CATHODE = 0;
  LED2_ANODE_TRIS = 0;
  LED2_ANODE = 0;

  softpwm_init();
  softpwm_values[0] = 30;
  softpwm_values[1] = 60;
  softpwm_values[2] = 80;

  PEIE = 1;
  INTERRUPT_ENABLE();

  put_str(put_char, "blinktest\r\n");

  for(;;) {

    /*static float hue = 0;
    static int i = 0;*/

    INTERRUPT_DISABLE();
    tmp_msecs = msecs;
    INTERRUPT_ENABLE();

    update_colors = 0;
    input = 0;

    if(RCIF || OERR || FERR) {
      char dummy = RCREG;
      input = RCREG;

      if(OERR || FERR) {
        CREN = 0;
        input = 0;
        dummy = 0xff;
        dummy = 0x00;
        CREN = 1;
      }
      RCIF = 0;

    } else if(tmp_msecs > last_button + 200) {

      uint8_t b = BUTTON_GET();

      if(b & B_PLUS)
        input = '+';
      else if(b & B_MINUS)
        input = '-';
      else if(b & B_LEFT)
        input = ' ';
      else if(b & B_RIGHT)
        input = '\n';

      if(b & 0b1111) {
        last_button = tmp_msecs;
      }
    }

    /*
        if (input != 0) {

          if (input == '+' || input == 'Q' || input == 'q') {
            if (interval > 10) interval -= 10;
          } else if (input == '-' || input == 'A' || input == 'a') {
            if (interval < 4990) interval += 10;
          } else if (input == ' ') {
            run = !run;
          } else if (input == '\n') {
            index += 8;
            prev_hsecs = 0;
            update_colors = 1;
          }

          put_str(put_char, "CMD: ");
          put_char(input);
          put_str(put_char, "\r\n");

          input = 0;
        }*/

    if(run) {

      if(tmp_msecs >= prev_hsecs + interval) {
        index++;

        led_state = !led_state;
        SET_LED(led_state);

        update_colors = 1;
        prev_hsecs = tmp_msecs;
      }
    }

    if(update_colors) {
      const uint8_t* rgb;

      rgb = rainbow8[index];

#ifdef USE_UART
      uart_enable();
#endif

#if USE_SER || USE_UART
      put_char('#');
      put_number(put_char, index, 10, 0);
      put_str(put_char, ": R=");
      put_number(put_char, rgb[0], 10, 0);
      put_str(put_char, "%, G=");
      put_number(put_char, rgb[1], 10, 0);
      put_str(put_char, "%, B=");
      put_number(put_char, rgb[2], 10, 0);
      put_str(put_char, "% (T=");
      put_number(put_char, interval, 10, 0);
      put_str(put_char, ")\r\n");
#endif
#ifdef USE_SOFTSER
      put_number(softser_putch, tmp_msecs, 10, 0);
      put_str(softser_putch, ")\r\n");
#endif

      softpwm_disable();
      {
        softpwm_set(0, rgb[0]);
        softpwm_set(1, rgb[1]);
        softpwm_set(2, rgb[2]);
      }
      softpwm_enable();

      update_colors = 0;
      //      prev_index = index;
    }
#ifdef USE_UART
    uart_disable();
#endif

    INTERRUPT_DISABLE();
    tmp_msecs = msecs + 1000;
    INTERRUPT_ENABLE();

    for(;;) {
      BOOL wait;
      INTERRUPT_DISABLE();
      wait = msecs < tmp_msecs;
      INTERRUPT_ENABLE();

      if(!wait) break;
    }
  }
}

//-----------------------------------------------------------------------------
// Rainbow HSV table (Generated by 'tools/make-hue-table.c')
//-----------------------------------------------------------------------------
const uint8_t rainbow8[64][3] = {
    {100, 0, 0},   {100, 8, 0},  {100, 17, 0}, {100, 25, 0}, {100, 33, 0}, {100, 42, 0}, {100, 50, 0}, {100, 58, 0},
    {100, 67, 0},  {100, 71, 0}, {100, 75, 0}, {100, 79, 0}, {100, 83, 0}, {100, 88, 0}, {100, 92, 0}, {100, 96, 0},
    {100, 100, 0}, {88, 100, 0}, {75, 100, 0}, {63, 100, 0}, {50, 100, 0}, {38, 100, 0}, {25, 100, 0}, {13, 100, 0},
    {0, 100, 0},   {0, 96, 4},   {0, 92, 8},   {0, 88, 13},  {0, 83, 17},  {0, 79, 21},  {0, 75, 25},  {0, 71, 29},
    {0, 67, 33},   {0, 58, 42},  {0, 50, 50},  {0, 42, 58},  {0, 33, 67},  {0, 25, 75},  {0, 17, 83},  {0, 8, 92},
    {0, 0, 100},   {4, 0, 96},   {8, 0, 92},   {13, 0, 88},  {17, 0, 83},  {21, 0, 79},  {25, 0, 75},  {29, 0, 71},
    {33, 0, 67},   {38, 0, 63},  {42, 0, 58},  {46, 0, 54},  {50, 0, 50},  {54, 0, 46},  {58, 0, 42},  {63, 0, 38},
    {67, 0, 33},   {71, 0, 29},  {75, 0, 25},  {79, 0, 21},  {83, 0, 17},  {88, 0, 13},  {92, 0, 8},   {96, 0, 4},
};

//-----------------------------------------------------------------------------
// Format number as a string and output it using the given 'putc' function
//-----------------------------------------------------------------------------
void
put_number(putch_fn* putc, uint16_t n, uint8_t base, int8_t pad) {
  uint8_t buf[8 * sizeof(long)]; // Assumes 8-bit chars.
  uint8_t di;
  int8_t i = 0;
  char padchar = ' ';

  if(pad < 0) {
    pad = -pad;
    padchar = '0';
  }

  do {
    di = n % base;
    buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);

    n /= base;
  } while(n > 0);

  while(pad-- >= i) putc(padchar);

  for(; i > 0; i--) putc((char)buf[(int16_t)i - 1]);
}
