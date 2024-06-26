#include "config-bits.h"
#include "../lib/const.h"
#include "../lib/typedef.h"
#include "pictest.h"
//#include "../lib/delay.h"
#include "../lib/interrupt.h"
#include "../lib/lcd44780.h"
#include "../lib/ser.h"
#include "../lib/softser.h"
#include "../lib/timer.h"
#include "../lib/uart.h"
#include "../lib/format.h"
#include <ctype.h>
#include "bresenham.h"

void loop();
void put_number(void (*putchar)(char), uint16_t n, uint8_t base, int8_t pad);

volatile BOOL run = 1, got_byte = 0;
BRESENHAM_DECL(bres);

volatile uint16_t msecs;
volatile uint32_t seconds;

volatile uint8_t serial_in = 0;
volatile uint8_t led_state = 0;

volatile uint16_t tmr1_overflows;

INTERRUPT_FN() {
#ifdef USE_SER
  ser_int();
#endif
#ifdef USE_UART
  uart_isr();
#endif
  if(TIMER0_INTERRUPT_FLAG) {

    bres += 256;

    if(bres >= 5000) {
      bres -= 5000;
      msecs++;

      SET_LED(msecs < 500);
    }
    if(msecs >= 1000) { // if reached 1 second!
      seconds++;        // update clock, etc
      msecs -= 1000;

      // SET_LED2(seconds & 1);
    }

    // TMR1H = 0xff;

    // Clear timer interrupt bit
    TIMER0_INTERRUPT_DISABLE();
  }

  if(TMR1IF) {
    tmr1_overflows++;

    TMR1IF = 0;
  }

  if(RCIF) {
    // Clear receive interrupt bit
    RCIF = 0;
  }
}

void
flash_busy_led(uint16_t duration) {
  // LED_PIN = LOW;
  // timer1_init(1, duration);
}

//#ifdef USE_HD44780_LCD
// void
// lcd_putch(char c) {
//
//  if(isprint(c)) {
//    lcd_putch('\'');
//    lcd_putch(c);
//    lcd_putch('\'');
//  } else {
//    lcd_putch('x');
//    lcd_print_number(c, 16, -1);
//  }
//}
//#endif

// -------------------------------------------------------------------------
//-----------------------------------------------------------------------------
int
main() {
  run = bres = msecs = seconds = tmr1_overflows = 0;

#ifdef USE_SOFTSER
  softser_init();
#endif

#ifdef USE_UART
  uart_init();
#endif

#ifdef USE_SER
  ser_init();
#endif

#if !NO_PORTB
#ifndef nRBPU
#ifdef PIC18
  INTCON2 |= 0b10000000;
#else
  OPTION_REG |= 0b00100000;
#endif
#else
  nRBPU = 1; // pull-ups
#endif // TRISB &= 0;
// LATB |= 0xff;
#endif
  LATA = 0;

#if HAVE_ADC
  ADON = 1;
  ADCON1 = 0b00000110;
#endif
  TRISA = 0x11000111;

  RA3 = RA5 = 1;

  //  TMR1 = 0xff00;
  timer0_init(PRESCALE_1_1 | TIMER0_FLAGS_INTR);
  TIMER0_INTERRUPT_CLEAR();
  TIMER0_INTERRUPT_ENABLE();
  timer1_init(PRESCALE_1_1 | TIMER1_FLAGS_INTR);
  TMR1IF = 0;
  TIMER1_INTERRUPT_ENABLE();

#ifdef USE_HD44780_LCD
  lcd_init(1);
  lcd_begin(2, 1);
  lcd_clear();

  lcd_gotoxy(0, 0);
  lcd_print_number(ser_brg, 16, -1);
#endif

#if !NO_SSP
  /*SSPCONbits.*/ SSPEN = 0;
#endif

  INIT_LED();
  // INIT_LED2();
#if !NO_PORTC
  TRISC &= ~0b1100;
#endif
  SET_LED(1);
  // SET_LED2(1);

  PEIE = 1;
  INTERRUPT_ENABLE();

  RCIF = 0;
  RCIE = 1;

  run = 1;

  //   flash_busy_led(1000);

#ifdef USE_UART
  uart_puts("XXXX\r\n");
#endif
#ifdef USE_SER
  ser_puts("ZZZZ\r\n");
#endif
#ifdef USE_SOFTSER
  softser_puts("SSSS\r\n");
//   flash_busy_led(500);
#endif
  //   flash_busy_led(500);

  for(;;) loop();
}

void
loop() {
  char update_com, update_midi, echo_mode = 0;
  uint8_t c;

  update_com = 0, update_midi = 0;

  static int32_t prev = -1;

  if(seconds != prev) {
#ifdef USE_UART
    put_number(uart_putch, seconds, 10, -5);
    uart_putch('\r');
    uart_putch('\n');
#endif
#ifdef USE_SER
    put_number(ser_putch, seconds, 10, -5);
    ser_putch('\r');
    ser_putch('\n');
#endif
    prev = seconds;
  }

#ifdef USE_SER
  //   while(SOFTSER_IN_PIN == LOW) {
  if(ser_isrx()) {
    c = ser_getch();

    if(echo_mode) {
      ser_putch(' ');
      ser_puthex(c);
      ser_putch(' ');
    } else {
#ifdef USE_SOFTSER
      softser_putch(c);
#endif
    }

    update_com = 1;

    if(c == 0x1b || c == '\t')
      echo_mode = !echo_mode;
  }
#endif

  if(update_com) {
#ifdef USE_HD44780_LCD
    lcd_gotoxy(3, 0);
    lcd_print("chr='");
    lcd_putch(c);
    lcd_print("' asc=");
    put_number(lcd_putch, c, 10, 0);
    lcd_putch(' ');

#endif
    update_com = 0;
  }

//       flash_busy_led(150);
//   }
#ifdef USE_SOFTSER
  c = 0;

  while(softser_poll(32)) {
    softser_recv();
    ser_putch(softser_rdata);

    if(softser_rdata == 0x1b || softser_rdata == '\t')
      echo_mode = !echo_mode;

    update_midi = 1;

    if(++c == 3)
      break;
  }
#endif

  if(update_midi) {
#if defined(USE_HD44780_LCD) && defined(USE_SOFTSER)
    lcd_gotoxy(3, 0);
    lcd_print("MIDI:");
    lcd_putch(softser_rdata);
#endif
    //         flash_busy_led(150);
    update_midi = 0;
  }

  //  serial_in = 'X';
  //  uart_putch(serial_in);
  //  uart_putch(serial_in);
  //  ser _putch(serial_in);
  //  uart_putch(serial_in);
}

/*
void echo_hex_loop()
{

  for(;;) {
    serial_in = uart_getch();


    if(serial_in != 0x0a && serial_in != 0x0d && serial_in != 0x20 && serial_in != 0x09) {
      uart_putch(' ');
      uart_puthex(serial_in);
      uart_putch(' ');
    } else {
      if(serial_in == '\r' || serial_in == '\n')
        uart_puts("\r\n");
      else
        uart_putch(serial_in);
    }

  }
}
*/
void
put_number(void (*putchar)(char), uint16_t n, uint8_t base, int8_t pad /*, int8_t pointpos*/) {
  uint8_t buf[8 * sizeof(long)]; // Assumes 8-bit chars.
  uint8_t di;
  int8_t i = 0;
  char padchar = ' ';

  if(pad < 0) {
    pad = -pad;
    padchar = '0';
  }

  /*  if(n == 0) {
      lcd_putch('0');
      return;
    }*/

  do {
    /*    if(i == pointpos)
          buf[i++] = '.';
    */
    di = n % base;
    buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);

    n /= base;
  } while(n > 0);

  while(pad-- >= i) putchar(padchar);

  for(; i > 0; i--) putchar((char)buf[(int16_t)i - 1]);
  //    lcd_putch((buf[i - 1] < 10 ?(char)'0' + buf[i - 1] : (char)'A' + buf[i - 1] - 10));
}
