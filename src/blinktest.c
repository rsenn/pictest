#define USE_MCLRE 1
#ifdef USE_ADCONVERTER
#define VREF_PLUS 3.3
#define VREF_MINUS 0.0
#include "../lib/adc.h"
#endif
#include "../lib/comparator.h"
#include "../lib/const.h"
#include "../lib/device.h"
#include "../lib/timer.h"
#include "../lib/interrupt.h"
#include "../lib/random.h"

#define SOFTPWM_PIN_COUNT 24

#define SOFTPWM_PORT PORTB
#define SOFTPWM_TRIS TRISB

#define SOFTPWM_PORT2 PORTC
#define SOFTPWM_TRIS2 TRISC

#define SOFTPWM_PORT3 PORTA
#define SOFTPWM_TRIS3 TRISA

#include "../lib/softpwm.h"
#include "../lib/delay.h"
#include "../lib/format.h"
#include "pictest.h"
#include "config-bits.h"

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
#include <math.h>

/* #include "../usb/USB_Stack/USB/usb_config.h"
#include "../usb/USB_Stack/USB/usb.h"
#include "../usb/USB_Stack/USB/usb_cdc.h"
//#include "../usb/USB_Stack/USB/usb.c"
#include "../usb/USB_Stack/USB/usb_cdc_acm.c"
#include "../usb/USB_Stack/Examples/CDC_Examples/Shared_Files/usb_app.c"
#include "../usb/USB_Stack/Examples/CDC_Examples/Shared_Files/usb_descriptors.c" */

#if defined(__18f16q41) || !defined(__18f4550)
#define BUTTON_PORT PORTC
#define BUTTON_SHIFT 1
#else
#define BUTTON_PORT PORTE
#define BUTTON_SHIFT 3
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

static const int8 sine_table[] = {
    0x90, 0x06, 0x0d, 0x13, 0x19, 0x1f, 0x26, 0x2c, 0x32, 0x38, 0x3e, 0x44, 0x4a, 0x50, 0x56, 0x5c, 0x62, 0x68, 0x6d,
    0x73, 0x79, 0x7e, 0x84, 0x89, 0x8e, 0x93, 0x98, 0x9d, 0xa2, 0xa7, 0xac, 0xb0, 0xb5, 0xb9, 0xbe, 0xc2, 0xc6, 0xca,
    0xcd, 0xd1, 0xd5, 0xd8, 0xdb, 0xde, 0xe1, 0xe4, 0xe7, 0xea, 0xec, 0xee, 0xf1, 0xf3, 0xf4, 0xf6, 0xf8, 0xf9, 0xfa,
    0xfb, 0xfc, 0xfd, 0xfe, 0xfe, 0xff, 0xff, 0xff, 0xff, 0xff, 0xfe, 0xfe, 0xfd, 0xfc, 0xfb, 0xfa, 0xf8, 0xf7, 0xf5,
    0xf3, 0xf2, 0xef, 0xed, 0xeb, 0xe8, 0xe6, 0xe3, 0xe0, 0xdd, 0xda, 0xd6, 0xd3, 0xcf, 0xcb, 0xc8, 0xc4, 0xc0, 0xbb,
    0xb7, 0xb3, 0xae, 0xa9, 0xa5, 0xa0, 0x9b, 0x96, 0x91, 0x8c, 0x86, 0x81, 0x7b, 0x76, 0x70, 0x6b, 0x65, 0x5f, 0x59,
    0x53, 0x4d, 0x47, 0x41, 0x3b, 0x35, 0x2f, 0x29, 0x22, 0x1c, 0x16, 0x10, 0x09, 0x03,
};

static int16
sine(uint16 index) {
  uint8 alpha, v1, v2, i8 = index >> 8;

  alpha = index & 0xff;
  v1 = sine_table[i8 & 0x7f] * (i8 & 0x80 ? -1 : 1);
  i8++;
  v2 = sine_table[i8 & 0x7f] * (i8 & 0x80 ? -1 : 1);

  return v1 * (255 - alpha) + v2 * alpha;
}

//#define b & v, b) (BUTTON_GET()&(b))

#if defined(SDCC) && !(__SDCC_VERSION_MAJOR == 3 && __SDCC_VERSION_MINOR >= 9)
__code unsigned int __at(_CONFIG) __configword = CONFIG_WORD;
#endif

#define PLL_STARTUP_DELAY() delay_ms(3) // Don't modify.

#define SIZE_OF(arr) (sizeof(arr) / sizeof(arr[0]))

extern const uint16_t rainbow[64];
extern const uint8_t rainbow8[64][3];

static BOOL update_colors = TRUE;
static BOOL led_state = 0;
static uint32_t tmp_msecs;
static uint32_t prev_hsecs = 0, last_button = 0;
static uint8_t index = 0;

static void
dummy_putch(char c) {}

typedef void(putch_fn)(char);

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

volatile BOOL run = 0;
volatile uint8_t msec_count = 0;
volatile uint16_t bres;
volatile uint32_t msecs, hsecs;
#ifdef USE_ADCONVERTER
volatile unsigned int adc_result = 0;
#endif

//-----------------------------------------------------------------------------
// Interrupt handling routine
//-----------------------------------------------------------------------------
#if defined(USE_SOFTPWM) || defined(USE_UART) || defined(USE_SER) || defined(USE_TIMER0) || defined(USE_ADCONVERTER)

INTERRUPT_FN() {
  NOP();

#ifdef USE_SOFTPWM

  if(SOFTPWM_INTERRUPT_FLAG) {
    SOFTPWM_PORT = SOFTPWM_REG8(softpwm_values);
    SOFTPWM_PORT2 = SOFTPWM_REG8(softpwm_values + 8);
    SOFTPWM_PORT3 = SOFTPWM_REG8(softpwm_values + 16);

    // SOFTPWM_PIN(3, LATA4);
    SOFTPWM_TIMER_VALUE = -128;
    SOFTPWM_INTERRUPT_FLAG = 0;
    softpwm_counter++;

    if(softpwm_counter > 100)
      softpwm_counter = 0;
  }
#endif

#ifdef USE_UART
  uart_isr();
#endif

#ifdef USE_SER
  ser_int();
#endif

#ifdef USE_TIMER0
  if(TIMER0_INTERRUPT_FLAG) {
    bres += 256 * 4;

    if(bres >= 5000) {
      bres -= 5000;
      msecs++;
      msec_count++;
    }

    if(msec_count >= 10) { // if reached 1 decisecond!
      hsecs++;             // update clock, etc

      // LED_PIN = hsecs & 1;

      msec_count -= 10;
    }

    // Clear timer interrupt bit
    TIMER0_INTERRUPT_CLEAR();
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

volatile int chan = 0;

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

#if HAVE_ADC
  ADON = 0;
#if !defined(__18f14k50) && !defined(__18f16q41)
  PCFG = 0b0110;
#endif
#endif

  /*#ifndef __18f25k50
  #if !NO_PORTB
  #ifndef __18f14k50
  #ifndef __18f16q41
    nRBPU = 0;
  #endif
  #endif
    TRISB |= 0b11110000;
    TRISB &= 0b11110011;
  #endif
  #endif*/

  SOFTPWM_TRIS = ~SOFTPWM_MASK;
  SOFTPWM_PORT = ~SOFTPWM_MASK;

  SOFTPWM_TRIS2 = ~(SOFTPWM_MASK >> 8);
  SOFTPWM_PORT2 = ~(SOFTPWM_MASK >> 8);

  SOFTPWM_TRIS3 = ~(SOFTPWM_MASK >> 8);
  SOFTPWM_PORT3 = ~(SOFTPWM_MASK >> 8);

#if defined(__16f876a) || defined(__18f252)
  TRISC4 = TRISC5 = INPUT;
#endif

  /*#ifdef LED2_CATHODE
    SET_LED2(0);
  #endif*/

#ifdef HAVE_COMPARATOR
  comparator_disable();
// CMCONbits.CON = 0;
//  CMCON = 0b111;          //Disable LATA Comparators
#endif

#ifdef USE_TIMER0
  timer0_init(PRESCALE_1_256 | TIMER0_FLAGS_8BIT);

  TIMER0_INTERRUPT_CLEAR();
  TMR0IE = 1;
#endif

#ifdef USE_MCP3001
  mcp3001_init();
#endif

  // timer1_init(2);
  LED_TRIS();
  RA3 = RA5 = HIGH;

  INIT_LED();
  // INIT_LED2();
  SET_LED(1);
  //  SET_LED2(1);

  LED_TRIS();
  LED_OFF();
#ifdef LED2_CATHODE
  LED2_CATHODE_TRIS = 0;
  LED2_CATHODE = 0;
#endif

#ifdef LED2_ANODE
  LED2_ANODE_TRIS = 0;
  LED2_ANODE = 0;
#endif

#ifdef USE_SOFTPWM
  softpwm_init();
#endif

#ifndef __18f16q41
  PEIE = 1;
#endif
  INTERRUPT_ENABLE();

#ifdef USE_NOKIA5110_LCD
  lcd_init();
  lcd_clear();
  lcd_puts("START");
#endif

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

  put_str(put_char, "blinktest\r\n");

  for(;;) {
    loop();
  }
}

void
loop(void) {
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
      led_state = !led_state;
      SET_LED(led_state);
      update_colors = 1;
      prev_hsecs = tmp_msecs;

#ifdef USE_ADCONVERTER
      read_analog();
#endif
    }
  }

  if(update_colors) {
    const uint8_t* rgb;

    rgb = rainbow8[index % 64];

#ifdef USE_UART
    uart_enable();
#endif

#if defined(USE_SER) || defined(USE_UART)
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

#ifdef USE_SOFTPWM
    softpwm_disable();
    {
      softpwm_set(0, rgb[0]);
      softpwm_set(1, rgb[1]);
      softpwm_set(2, rgb[2]);
    }
    softpwm_enable();
#endif
    update_colors = 0;
    //      prev_index = index;
  }
#ifdef USE_UART
  uart_disable();
#endif

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
