
#define SOFTPWM_RANGE 255

#define SOFTPWM_MASK 0b11111100  /* B */
#define SOFTPWM_MASK2 0b00111111 /* C */
#define SOFTPWM_MASK3 0b00011111 /* A */

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

#ifdef USE_NOKIA5110_LCD
#include "../lib/lcd5110.h"
#endif

#ifdef USE_PCD8544
#include "../lib/pcd8544.h"
#endif

#ifdef USE_MCP3001
#include "../lib/mcp3001.h"
#endif
#include "bresenham.h"
#include <math.h>

#if defined(__SDCC__) && defined(PIC16)
__code unsigned int __at(_CONFIG) __config_word = CONFIG_WORD;
#endif

/* #include "../usb/USB_Stack/USB/usb_config.h"
#include "../usb/USB_Stack/USB/usb.h"
#include "../usb/USB_Stack/USB/usb_cdc.h"
//#include "../usb/USB_Stack/USB/usb.c"
#include "../usb/USB_Stack/USB/usb_cdc_acm.c"
#include "../usb/USB_Stack/Examples/CDC_Examples/Shared_Files/usb_app.c"
#include "../usb/USB_Stack/Examples/CDC_Examples/Shared_Files/usb_descriptors.c" */

#

#if defined(__12f1840)
#define BUTTON_PORT PORTA
#define BUTTON_SHIFT 0
#define BUTTON_BIT RA0
#define BUTTON_TRIS TRISA0
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

static const uint8_t sine_table[] = {
    0x00, 0x06, 0x0d, 0x13, 0x19, 0x1f, 0x26, 0x2c, 0x32, 0x38, 0x3e, 0x44, 0x4a, 0x50, 0x56, 0x5c, 0x62, 0x68, 0x6d,
    0x73, 0x79, 0x7e, 0x84, 0x89, 0x8e, 0x93, 0x98, 0x9d, 0xa2, 0xa7, 0xac, 0xb0, 0xb5, 0xb9, 0xbe, 0xc2, 0xc6, 0xca,
    0xcd, 0xd1, 0xd5, 0xd8, 0xdb, 0xde, 0xe1, 0xe4, 0xe7, 0xea, 0xec, 0xee, 0xf1, 0xf3, 0xf4, 0xf6, 0xf8, 0xf9, 0xfa,
    0xfb, 0xfc, 0xfd, 0xfe, 0xfe, 0xff, 0xff, 0xff, 0xff, 0xff, 0xfe, 0xfe, 0xfd, 0xfc, 0xfb, 0xfa, 0xf8, 0xf7, 0xf5,
    0xf3, 0xf2, 0xef, 0xed, 0xeb, 0xe8, 0xe6, 0xe3, 0xe0, 0xdd, 0xda, 0xd6, 0xd3, 0xcf, 0xcb, 0xc8, 0xc4, 0xc0, 0xbb,
    0xb7, 0xb3, 0xae, 0xa9, 0xa5, 0xa0, 0x9b, 0x96, 0x91, 0x8c, 0x86, 0x81, 0x7b, 0x76, 0x70, 0x6b, 0x65, 0x5f, 0x59,
    0x53, 0x4d, 0x47, 0x41, 0x3b, 0x35, 0x2f, 0x29, 0x22, 0x1c, 0x16, 0x10, 0x09, 0x03,
};

#define sign(n) ((n) < 0 ? -1 : 1)

static int16_t
sine(uint16_t index) {
  uint8_t alpha, v1, v2, i8 = index >> 8;

  alpha = index & 0xff;
  v1 = (sine_table[i8 & 0x7f] >> 1) * sign((int8_t)i8);
  i8++;
  v2 = (sine_table[i8 & 0x7f] >> 1) * sign((int8_t)i8);

  return v1 * (255 - alpha) + v2 * alpha;
}

uint8_t
triangle(uint8_t in) {
  if(in & 0x80) {
    in = 255 - in;
  }
  uint8_t out = in << 1;
  return out;
}
// Integrate (1-pole Lowpass Filter) a 16-Bit Value
//----------------------------------------------------------------------------
uint16_t
filter(uint16_t value, uint8_t coeff) {
  static uint16_t z1;

  if(z1 == 0)
    z1 = value;

  if(value == 0)
    return value;

  z1 = (uint16_t)((((int32_t)value * ((int16_t)256 - (int16_t)coeff)) + ((int32_t)z1 * (int16_t)coeff)) / 256);

  return z1;
}

//#define b & v, b) (BUTTON_GET()&(b))

#if defined(SDCC) && !(__SDCC_VERSION_MAJOR == 3 && __SDCC_VERSION_MINOR >= 9) && !defined(PIC12)
__code unsigned int __at(_CONFIG) __configword = CONFIG_WORD;
#endif

#define PLL_STARTUP_DELAY() delay_ms(3) // Don't modify.

#define SIZE_OF(arr) (sizeof(arr) / sizeof(arr[0]))

#define RAINBOW_STEPS 128
#define RAINBOW_MASK ((RAINBOW_STEPS)-1)

extern const uint16_t rainbow[RAINBOW_STEPS];
extern const uint8_t rainbow8[RAINBOW_STEPS][3];

#ifdef USE_ADCONVERTER
volatile int chan = 0;
volatile unsigned int adc_result = 0;
#endif

static BOOL update_colors = TRUE;
static BOOL led_state = 0;
static uint32_t tmp_msecs;
static uint32_t prev_hsecs = 0 /*, last_button = 0*/;
static uint8_t index = 0;
static int16_t history[8] = {0, 0, 0, 0, 0, 0, 0, 0};
static char histindex = 0;
static char bbit = 0;
static uint32_t btime = 0;

static void
dummy_putch(char c) {}

typedef void(putch_fn)(char);

#if HAVE_SERIAL
putch_fn* put_char =
#ifdef USE_UART
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
#endif

volatile BOOL run = 0;
volatile uint8_t msec_count = 0;

BRESENHAM_DECL(bres);
volatile uint32_t msecs, hsecs;

//-----------------------------------------------------------------------------
// Interrupt handling routine
//-----------------------------------------------------------------------------
#if defined(USE_SOFTPWM) || defined(USE_UART) || defined(USE_SER) || defined(USE_TIMER0) || defined(USE_ADCONVERTER)
volatile uint16_t softpwm_counter2 = 0;
INTERRUPT_FN() {
  NOP();

#ifdef USE_SOFTPWM
  SOFTPWM_ISR3();
#endif

/*#ifdef USE_UART
  uart_isr();
#endif*/

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

#ifdef USE_ADCONVERTER
void
read_analog(void) {
  uint16_t result = adc_read(chan);
  double voltage = ADVAL_V(result);

  lcd_clear_line(chan + 1);
  lcd_gotoxy(0, chan + 1);

  format_double(lcd_putch, voltage);
  /*format_number(lcd_putch, result, 10, 5);*/

  chan++;
  chan %= 3;
}
#endif

void
clear_history() {

  for(char i = 0; i < 8; i++) history[i] = 0;
  histindex = 0;
}

char
leading_zeroes(uint32_t u) {
  if(u == 0)
    return 32;
  char i = 0;
  while(u) {
    u >>= 1;
    i++;
  }
  return i;
}

uint16_t
encode_time(uint32_t timestamp) {
  unsigned char shift = 0;

  while(timestamp > 0x0fff) {

    timestamp >>= 1;
    shift++;
  }

  if(shift > 15)
    return 0xffff;

  return ((uint16_t)shift << 12) | timestamp;
}

static uint8_t morse_len = 0;
static int8_t morse_state = 0;

int8_t
morse_decode(int8_t state, char c) {
  static const unsigned char t[] = {
      0x03, 0x3f, 0x7b, 0x4f, 0x2f, 0x63, 0x5f, 0x77, 0x7f, 0x72, 0x87, 0x3b, 0x57, 0x47, 0x67, 0x4b, 0x81,
      0x40, 0x01, 0x58, 0x00, 0x68, 0x51, 0x32, 0x88, 0x34, 0x8c, 0x92, 0x6c, 0x02, 0x03, 0x18, 0x14, 0x00,
      0x10, 0x00, 0x00, 0x00, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x1c, 0x00, 0x00, 0x00,
      0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x24, 0x00, 0x28, 0x04, 0x00, 0x30, 0x31, 0x32, 0x33,
      0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b,
      0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a,
  };
  int v = t[-state];
  switch(c) {
    case 0x00: return v >> 2 ? t[(v >> 2) + 63] : 0;
    case 0x2e: return v & 2 ? state * 2 - 1 : 0;
    case 0x2d: return v & 1 ? state * 2 - 2 : 0;
    default: return 0;
  }
}

void
morse_process() {
  uint16_t lowest = 0xffff;

  for(char i = 0; i < histindex; i++) {
    if(lowest > history[i])
      lowest = history[i];
  }

  char j;

  for(j = 0; j < histindex; j++) {
    if(j & 1)
      if(history[j] > lowest * 3)
        break;
  }

  morse_len = j >> 1;
}

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

#ifdef LED2_CATHODE
  LED2_CATHODE_TRIS = 0;
  LED2_CATHODE = 0;
#endif

#ifdef LED2_ANODE
  LED2_ANODE_TRIS = 0;
  LED2_ANODE = 0;
#endif
#endif

#ifdef USE_SOFTPWM
  softpwm_init();
 
  for(int i = 0; i < SOFTPWM_CHANNELS; i++) {

    int j = i;

    while(j >= 5) j -= 5;

    softpwm_values[i] = j * 255 / 4;
  }
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

#ifdef USE_UART
      uart_enable();
#endif
#if HAVE_SERIAL
  put_str(put_char, "blinktest\r\n");
#endif

  /* TRISC2 = 1;

   CCP1IE = 0;
   CCP1IF = 0;*/
#ifdef USE_BUTTON
  BUTTON_TRIS();
#endif
  for(;;) {
    char b;
    static uint32_t interval = 10;
    char input = 0;
    /*static float hue = 0;
    static int i = 0;*/

    INTERRUPT_DISABLE();
    tmp_msecs = msecs;
    INTERRUPT_ENABLE();

    update_colors = 0;
    input = 0;

#ifdef USE_UART
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

    } else
#endif
#ifdef USE_BUTTON
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

      if(histindex)
        morse_process();

      btime = msecs;
      bbit = b;
    }

    if(b && msecs - btime > 3000) {
    }
#endif

    /*    if(tmp_msecs > last_button + 200) {

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
        }*/

    if(input != 0) {

      if(input == '+' || input == 'Q' || input == 'q') {
        if(interval > 10)
          interval -= 10;
      } else if(input == '-' || input == 'A' || input == 'a') {
        if(interval < 4990)
          interval += 10;
      } else if(input == ' ') {
        run = !run;
      } else if(input == '\n') {
        index += 8;
        prev_hsecs = 0;
        update_colors = 1;
      }
      /*
              put_str(put_char, "CMD: ");
              put_char(input);
              put_str(put_char, "\r\n");*/

      input = 0;
    }

    if(run) {

      if(tmp_msecs >= prev_hsecs + interval) {

        index++;

        update_colors = 1;
        prev_hsecs = tmp_msecs;

#ifdef USE_ADCONVERTER
        read_analog();
#endif
      }
    }

    if(update_colors) {
      const uint8_t* rgb;

      rgb = rainbow8[index & RAINBOW_MASK];


/*#if HAVE_SERIAL
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
#endif*/

#ifdef USE_SOFTSER
      put_number(softser_putch, tmp_msecs, 10, 0);
      put_str(softser_putch, ")\r\n");
#endif

#ifdef USE_SOFTPWM
      softpwm_disable();
      {

        for(int i = 0; i < 7; i++) {

          rgb = rainbow8[((i * RAINBOW_STEPS / 7) + index) & RAINBOW_MASK];

          for(int j = 0; j < 3; j++) softpwm_set(i * 3 + j, rgb[j]);
        }
      }

      softpwm_enable();
#endif

      update_colors = 1;
      //      prev_index = index;
    }
/*#ifdef USE_UART
    uart_disable();
#endif*/

    INTERRUPT_DISABLE();
    tmp_msecs = msecs + 1000;
    INTERRUPT_ENABLE();

#if 0
    for(;;) {
      BOOL wait;
      INTERRUPT_DISABLE();
      wait = msecs < tmp_msecs;
      INTERRUPT_ENABLE();

      if(!wait)
        break;
    }
#endif
  }
}

//-----------------------------------------------------------------------------
// Rainbow HSV table (Generated by 'tools/make-hue-table.c')
//-----------------------------------------------------------------------------
const uint8_t rainbow8[RAINBOW_STEPS][3] = {
    {0xff, 0x00, 0x00}, {0xff, 0x0b, 0x00}, {0xff, 0x15, 0x00}, {0xff, 0x20, 0x00}, {0xff, 0x2b, 0x00},
    {0xff, 0x35, 0x00}, {0xff, 0x40, 0x00}, {0xff, 0x4a, 0x00}, {0xff, 0x55, 0x00}, {0xff, 0x60, 0x00},
    {0xff, 0x6a, 0x00}, {0xff, 0x75, 0x00}, {0xff, 0x80, 0x00}, {0xff, 0x8a, 0x00}, {0xff, 0x95, 0x00},
    {0xff, 0x9f, 0x00}, {0xff, 0xaa, 0x00}, {0xff, 0xaf, 0x00}, {0xff, 0xb5, 0x00}, {0xff, 0xba, 0x00},
    {0xff, 0xbf, 0x00}, {0xff, 0xc5, 0x00}, {0xff, 0xca, 0x00}, {0xff, 0xcf, 0x00}, {0xff, 0xd5, 0x00},
    {0xff, 0xda, 0x00}, {0xff, 0xdf, 0x00}, {0xff, 0xe4, 0x00}, {0xff, 0xea, 0x00}, {0xff, 0xef, 0x00},
    {0xff, 0xf4, 0x00}, {0xff, 0xfa, 0x00}, {0xff, 0xff, 0x00}, {0xef, 0xff, 0x00}, {0xdf, 0xff, 0x00},
    {0xcf, 0xff, 0x00}, {0xbf, 0xff, 0x00}, {0xaf, 0xff, 0x00}, {0x9f, 0xff, 0x00}, {0x8f, 0xff, 0x00},
    {0x80, 0xff, 0x00}, {0x70, 0xff, 0x00}, {0x60, 0xff, 0x00}, {0x50, 0xff, 0x00}, {0x40, 0xff, 0x00},
    {0x30, 0xff, 0x00}, {0x20, 0xff, 0x00}, {0x10, 0xff, 0x00}, {0x00, 0xff, 0x00}, {0x00, 0xfa, 0x05},
    {0x00, 0xf4, 0x0b}, {0x00, 0xef, 0x10}, {0x00, 0xea, 0x15}, {0x00, 0xe4, 0x1b}, {0x00, 0xdf, 0x20},
    {0x00, 0xda, 0x25}, {0x00, 0xd5, 0x2b}, {0x00, 0xcf, 0x30}, {0x00, 0xca, 0x35}, {0x00, 0xc5, 0x3a},
    {0x00, 0xbf, 0x40}, {0x00, 0xba, 0x45}, {0x00, 0xb5, 0x4a}, {0x00, 0xaf, 0x50}, {0x00, 0xaa, 0x55},
    {0x00, 0x9f, 0x60}, {0x00, 0x95, 0x6a}, {0x00, 0x8a, 0x75}, {0x00, 0x80, 0x80}, {0x00, 0x75, 0x8a},
    {0x00, 0x6a, 0x95}, {0x00, 0x60, 0x9f}, {0x00, 0x55, 0xaa}, {0x00, 0x4a, 0xb5}, {0x00, 0x40, 0xbf},
    {0x00, 0x35, 0xca}, {0x00, 0x2b, 0xd5}, {0x00, 0x20, 0xdf}, {0x00, 0x15, 0xea}, {0x00, 0x0b, 0xf4},
    {0x00, 0x00, 0xff}, {0x05, 0x00, 0xfa}, {0x0b, 0x00, 0xf4}, {0x10, 0x00, 0xef}, {0x15, 0x00, 0xea},
    {0x1b, 0x00, 0xe4}, {0x20, 0x00, 0xdf}, {0x25, 0x00, 0xda}, {0x2b, 0x00, 0xd5}, {0x30, 0x00, 0xcf},
    {0x35, 0x00, 0xca}, {0x3a, 0x00, 0xc5}, {0x40, 0x00, 0xbf}, {0x45, 0x00, 0xba}, {0x4a, 0x00, 0xb5},
    {0x50, 0x00, 0xaf}, {0x55, 0x00, 0xaa}, {0x5a, 0x00, 0xa5}, {0x60, 0x00, 0x9f}, {0x65, 0x00, 0x9a},
    {0x6a, 0x00, 0x95}, {0x70, 0x00, 0x8f}, {0x75, 0x00, 0x8a}, {0x7a, 0x00, 0x85}, {0x80, 0x00, 0x80},
    {0x85, 0x00, 0x7a}, {0x8a, 0x00, 0x75}, {0x8f, 0x00, 0x70}, {0x95, 0x00, 0x6a}, {0x9a, 0x00, 0x65},
    {0x9f, 0x00, 0x60}, {0xa5, 0x00, 0x5a}, {0xaa, 0x00, 0x55}, {0xaf, 0x00, 0x50}, {0xb5, 0x00, 0x4a},
    {0xba, 0x00, 0x45}, {0xbf, 0x00, 0x40}, {0xc5, 0x00, 0x3a}, {0xca, 0x00, 0x35}, {0xcf, 0x00, 0x30},
    {0xd5, 0x00, 0x2b}, {0xda, 0x00, 0x25}, {0xdf, 0x00, 0x20}, {0xe4, 0x00, 0x1b}, {0xea, 0x00, 0x15},
    {0xef, 0x00, 0x10}, {0xf4, 0x00, 0x0b}, {0xfa, 0x00, 0x05},
};

//-----------------------------------------------------------------------------
// Format number as a string and output it using the given 'putc' function
//-----------------------------------------------------------------------------
#if HAVE_SERIAL
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
#endif
