#include "lib/device.h"
#include "lib/adc.h"
#include "lib/comparator.h"
#include "lib/const.h"
#include "lib/interrupt.h"
#include "lib/ports.h"
#include "lib/random.h"
#include "lib/softpwm.h"
#include "lib/timer.h"
#include "lib/7segment.h"
#include "lib/format.h"
#include "src/pictest.h"

#if USE_UART
#include "lib/uart.h"
#endif
#if USE_SER
#include "lib/ser.h"
#endif
#if USE_SOFTSER
#include "lib/softser.h"
#endif

#include "src/config-bits.h"

#include <math.h>

#if 1
#define BUTTON_PORT PORTC
#define BUTTON_SHIFT 4
#else
#define BUTTON_PORT PORTC
#define BUTTON_SHIFT 0
#endif

#define BUTTON_GET() ((~(BUTTON_PORT)) >> BUTTON_SHIFT)

#define B_LEFT 0b0001
#define B_PLUS 0b0010
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

volatile uint8_t display_bits[4] = {0, 0, 0, 0};
volatile char display_index = 0;

//#define b & v, b) (BUTTON_GET()&(b))

//#ifdef SDCC
//__code unsigned int __at(_CONFIG) __configword = CONFIG_WORD;
//#endif

#define SIZE_OF(arr) (sizeof(arr) / sizeof(arr[0]))

extern const uint16_t rainbow[64];
extern const uint8_t rainbow8[64][3];
volatile uint8_t button_state;

static void
dummy_putch(char c) {}

typedef void(putch_fn)(char);
typedef uint8_t(getch_fn)(void);

putch_fn* put_char =
#if USE_UART
    uart_putch
#elif USE_SER
    ser_putch
#else
    dummy_putch
#endif
    ;
// void put_number(putch_fn* putc, uint16_t n, uint8_t base, int8_t pad/*, int8_t pointpos*/);

void
put_str(putch_fn* putc, const char* s) {
  while(*s) putc(*s++);
}

unsigned
scan_ushort(getch_fn* getc, uint16_t* dest) {
  char cur;
  uint16_t l;
  for(cur = getc(), l = 0; cur >= '0' && cur <= '9'; cur = getc()) {

    uint32_t tmp = l * 10ul + cur - '0';
    if((uint16_t)tmp != tmp)
      break;
    l = tmp;
  }
  *dest = l;
  return cur;
}

volatile BOOL run = 0;
volatile uint8_t msec_count = 0;
volatile uint16_t bres;
volatile uint32_t msecs, hsecs;

void
set_number(uint16_t n) {
  INTERRUPT_DISABLE();
  display_index = 0;
  display_bits[3] = digits[n % 10];
  n /= 10;
  display_bits[2] = digits[n % 10];
  n /= 10;
  display_bits[1] = digits[n % 10];
  n /= 10;
  display_bits[0] = digits[n % 10];
  INTERRUPT_ENABLE();
}

//-----------------------------------------------------------------------------
// Interrupt handling routine
//-----------------------------------------------------------------------------
INTERRUPT_FN() {
  // SOFTPWM_ISR();
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
    uint8_t display_bit = 1 << display_index;

    if(bres >= 5000) {
      bres -= 5000;
      msecs++;
      msec_count++;

      PORTC |= 0b1111;
      PORTB = display_bits[display_index];
      PORTC = ~display_bit;

      {
        uint8_t button_bit = (!BUTTON_PIN) << display_index;
        if(button_bit)
          button_state |= button_bit;
      }

      ++display_index;
      display_index &= 3;
    }
    if(msec_count >= 10) { // if reached 1 decisecond!
      hsecs++;             // update clock, etc
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
  uint32_t interval = 1000;
  uint16_t number = 0;

  msec_count = msecs = 0;
  hsecs = 0;
  bres = 0;
  run = 1;

  TRISA = 0b11111111;
  // ADC_OFF();

#if defined(__16f876a) || defined(__18f252)
  TRISC4 = TRISC5 = INPUT;
#endif

#if !NO_PORTC
  TRISC &= 0b11110000;
  PORTC |= 0b1111;
#endif

#if !NO_PORTB
  // nRBPU = 0; // enable portb pull-ups

  //  TRISB |= 0b11110000;
  TRISB &= 0b00000000;
  PORTB = 0;

#endif

  timer0_init(PRESCALE_1_4);

  TIMER0_INTERRUPT_CLEAR();
  TIMER0_INTERRUPT_ENABLE();

  // TRISA &= ~0b00101000;
  // PORTA |= 0b00101000;
  //

  INIT_LED();
  LED_TRIS();

  LED_OFF();

#if USE_SER
  ser_init();
#endif

  TRISC |= 1 << BUTTON_SHIFT;
  //  BUTTON_TRIS = 1;

  INTERRUPT_ENABLE();

  put_str(ser_putch, "blinktest\r\n");

  display_bits[0] = digits[1];
  display_bits[1] = digits[2];
  display_bits[2] = digits[3];
  display_bits[3] = digits[4];
  for(;;) {

    if(run) {

      /*static float hue = 0;
      static int i = 0;*/

      INTERRUPT_DISABLE();
      tmp_msecs = msecs;
      INTERRUPT_ENABLE();

      if(tmp_msecs > last_button + 300) {

        uint8_t b;
        char input = 0;

        INTERRUPT_DISABLE();
        b = button_state;
        INTERRUPT_ENABLE();

        if(b & B_PLUS) {
          input = '+';
        } else if(b & B_MINUS) {
          input = '-';
        } else if(b & B_LEFT) {
          input = ' ';
        } else if(b & B_RIGHT) {
          input = '\n';
        }

        if(input) {
          // ser_puts("input = ");
          ser_puthex(input);
          ser_puts("@");
          format_number(&ser_putch, tmp_msecs, 10, 0);
          ser_puts("\r\n");
        }
        INTERRUPT_DISABLE();
        button_state &= ~b;
        INTERRUPT_ENABLE();
        last_button = tmp_msecs;
      }

      if(ser_isrx()) {
        uint16_t num;
        char n = scan_ushort(&ser_getch, &num);

        number = num;
        set_number(num);
      }

      if(tmp_msecs >= prev_hsecs + interval) {

        set_number(number);
        number++;
        if(number >= 10000)
          number = 0;

        led_state = !led_state;
        if(led_state) {
          LED_ON();
        } else {
          LED_OFF();
        }

        prev_hsecs = tmp_msecs;
      }
    }
    /*
        INTERRUPT_DISABLE();
        tmp_msecs = msecs + 1000;
        INTERRUPT_ENABLE();

        for (;;) {
          BOOL wait;
          INTERRUPT_DISABLE();
          wait = msecs < tmp_msecs;
          INTERRUPT_ENABLE();

          if (!wait) break;
        }*/
  }
}
