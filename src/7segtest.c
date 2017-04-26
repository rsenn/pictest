#include "pictest.h"
#include "timer.h"
#include "interrupt.h"
#include "const.h"
#include "random.h"
#include "softpwm.h"
#include "comparator.h"

#if USE_UART
#include "uart.h"
#endif
#if USE_SER
#include "ser.h"
#endif
#if USE_SOFTSER
#include "softser.h"
#endif

#include "config-bits.h"

#include <math.h>

#if NO_PORTB
#define BUTTON_PORT PORTA
#define BUTTON_SHIFT 0
#else
#define BUTTON_PORT PORTB
#define BUTTON_SHIFT 4
#endif

#define BUTTON_GET()  ((~(BUTTON_PORT)) >> BUTTON_SHIFT)


#define B_LEFT  0b0001
#define B_PLUS  0b0010
#define B_MINUS 0b0100
#define B_RIGHT 0b1000

#define SEGMENT_b 0b10000000
#define SEGMENT_a 0b01000000
#define SEGMENT_c 0b00100000
#define SEGMENT_dp 0b00010000
#define SEGMENT_e 0b00001000
#define SEGMENT_d 0b00000100
#define SEGMENT_g 0b00000010
#define SEGMENT_f 0b00000001


const uint8_t digits[] = {
  SEGMENT_a | SEGMENT_b | SEGMENT_c | SEGMENT_d | SEGMENT_e | SEGMENT_f,
  SEGMENT_b | SEGMENT_c,
  SEGMENT_a | SEGMENT_b | SEGMENT_d | SEGMENT_e | SEGMENT_g,
  SEGMENT_a | SEGMENT_b | SEGMENT_c | SEGMENT_d | SEGMENT_g,
  SEGMENT_b | SEGMENT_c | SEGMENT_f | SEGMENT_g,
  SEGMENT_a | SEGMENT_c | SEGMENT_d | SEGMENT_f | SEGMENT_g,
  SEGMENT_a | SEGMENT_c | SEGMENT_d | SEGMENT_e | SEGMENT_f | SEGMENT_g,
  SEGMENT_a | SEGMENT_b | SEGMENT_c,
  SEGMENT_a | SEGMENT_b | SEGMENT_c | SEGMENT_d | SEGMENT_e | SEGMENT_f | SEGMENT_g,
  SEGMENT_a | SEGMENT_b | SEGMENT_c | SEGMENT_d | SEGMENT_f | SEGMENT_g,
};

volatile uint8_t display_bits[4] = { 0, 0, 0, 0 };
volatile char display_index = 0;

//#define b & v, b) (BUTTON_GET()&(b))

# ifdef SDCC
__code unsigned int __at(_CONFIG)__configword = CONFIG_WORD;
# endif

#define SIZE_OF(arr) (sizeof(arr) / sizeof(arr[0]))

extern const uint16_t rainbow[64];
extern const uint8_t rainbow8[64][3];

static void dummy_putch(char) {}

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
//void put_number(putch_fn* putc, uint16_t n, uint8_t base, int8_t pad/*, int8_t pointpos*/);
/*
void
put_str(putch_fn* putc, const char* s)
{
  while (*s)
    putc(*s++);
}*/

volatile BOOL run = 0;
volatile uint8_t msec_count = 0;
volatile uint16_t bres;
volatile uint32_t msecs, hsecs;

void
set_number(uint16_t n) {
  GIE = 0;
  display_index = 0;
   display_bits[3] = digits[n % 10]; n  /= 10;
   display_bits[2] = digits[n % 10]; n  /= 10;
   display_bits[1] = digits[n % 10]; n  /= 10;
   display_bits[0] = digits[n % 10]; 
   GIE = 1;
}

//-----------------------------------------------------------------------------
// Interrupt handling routine
//-----------------------------------------------------------------------------
INTERRUPT_HANDLER()
{
  // SOFTPWM_ISR();
  /*
    if(TMR1IF) {
      // Clear timer interrupt bit
      TMR1IF = 0;
    }*/

#if USE_SER
  ser_int();
#endif

  if (T0IF) {
    bres += 256 * 4;

    if (bres >= 5000) {
      bres -= 5000;
      msecs++;
      msec_count++;

      PORTC |= 0b1111;
      PORTB = display_bits[display_index];
      PORTC = ~(0b1000 >> display_index);
      ++display_index;
      display_index &= 3;
    }
    if (msec_count >= 10) { // if reached 1 decisecond!
      hsecs++;  // update clock, etc
      msec_count -= 10;

    }
    // Clear timer interrupt bit
    T0IF = 0;
  }
}

//-----------------------------------------------------------------------------
int main()
{
  uint32_t tmp_msecs;
  static uint32_t prev_hsecs = 0, last_button = 0;
  uint8_t index, seconds;
  static BOOL led_state = 0;
  // static uint8_t prev_index = 0, prev_seconds = 0;
  char input;
  uint32_t interval = 100;
  uint16_t number = 0;

  msec_count = msecs = 0;
  hsecs = 0;
  bres = 0;
  run = 1;


#if defined(__16f876a) || defined(__18f252)
  TRISC4 = TRISC5 = INPUT;
#endif


  TRISC &= 0b11110000;
  PORTC |= 0b1111;

#if !NO_PORTB
  // NOT_RBPU = 0; // enable portb pull-ups

  //  TRISB |= 0b11110000;
  TRISB &= 0b00000000;
  PORTB = 0;

#endif

#if 1 //HAVE_TIMER_0 && USE_TIMER0
  timer0_init(PRESCALE_1_4);

  T0IF = 0;
  T0IE = 1;
#endif

  TRISA3 = TRISA5 = OUTPUT;
  RA3 = RA5 = HIGH;

  LED_TRIS = 0;
  LED_PIN = 0;


  PEIE = 1;
  GIE = 1;

  //  put_str(put_char, "blinktest\r\n");

    display_bits[0] = digits[1];
    display_bits[1] = digits[2];
    display_bits[2] = digits[3];
    display_bits[3] = digits[4];
  for (;;) {

    /*static float hue = 0;
    static int i = 0;*/

    GIE = 0;
    tmp_msecs = msecs;
    GIE = 1;


    /*
     if(tmp_msecs > last_button + 200) {

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
    */


    if (run) {

      if (tmp_msecs >= prev_hsecs + interval) {


set_number(number);
number++;
if(number >= 10000) number = 0;

        led_state = !led_state;
        LED_PIN = !led_state;


        prev_hsecs = tmp_msecs;
      }
    }
/*
    GIE = 0;
    tmp_msecs = msecs + 1000;
    GIE = 1;

    for (;;) {
      BOOL wait;
      GIE = 0;
      wait = msecs < tmp_msecs;
      GIE = 1;

      if (!wait) break;
    }*/
  }
}
