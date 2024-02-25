#include "pictest.h"
#include "config-bits.h"
#include "../lib/timer.h"
#ifdef USE_UART
#include "../lib/uart.h"
#endif
#ifdef USE_SER
#include "../lib/ser.h"
#endif
//#ifdef USE_SOFTSER
#include "../lib/softser.h"
//#endif
#include "../lib/interrupt.h"
#if defined(USE_LCD) && !NO_PORTB
#include "../lib/lcd44780.h"
#endif
#include "../lib/7segment.h"
#include "../lib/const.h"
#include "../lib/delay.h"
#include "../lib/device.h"
#include "../lib/ds18b20.h"
#include "../lib/extra/ledsense.h"
#include "../lib/extra/shell.h"
/*
#define BUTTON_MINUS 1
#define BUTTON_PLUS  3
#define BUTTON_UP    4
#define BUTTON_DOWN  2
#define BUTTON_ENTER 5

static const char buttons[6] = { ' ', '-', 'D', '+', 'U', '!' };
*/

//#ifdef __XC8__
//__PROG_CONFIG(1, 0x3f72);
//#endif

#if defined(HI_TECH_C) || defined(__XC__)
#endif

#ifdef __IAR_SYSTEMS_ICC__
#include <io16f876a.h>
#endif

#if defined(PORTB_BUTTONS) || defined(USE_7SEGMENT)
#define BUTTON_A 0b10000000
#define BUTTON_B 0b01000000
#define BUTTON_C 0b00100000
#define BUTTON_D 0b00010000

// static uint8_t cfg_hi = ((unsigned int)(CONFIG_WORD)>> 8), cfg_lo = ((unsigned int)(CONFIG_WORD) & 0xff);
#endif

#if NO_PORTB
#define BUTTON_PORT LATA
#define BUTTON_SHIFT 0
#define BUTTON_MASK 0b11110000
#else
#define BUTTON_PORT LATB
#define BUTTON_SHIFT 4
#define BUTTON_MASK 0b00001111
#endif

volatile uint8_t button_state = 0;

static unsigned int temp_bits;
static double temp_value;

volatile BOOL run = 1, control = 0;
volatile uint8_t ticks, prescale;
#ifdef USE_ADCONVERTER
volatile unsigned int adc_result = 0;
#endif
volatile uint8_t serial_in = 0;
static char in_word[5];
static int in_word_ptr = 0;
static uint32_t delay_v;
static uint8_t phase_v;
volatile uint16_t bres, msecs, blinktime;
volatile uint32_t seconds;
volatile BOOL led_state, led_enabled;
static shell_t sh_soft, sh_uart;

typedef void (*putch_fn)(uint8_t);
static putch_fn putchar =
#if defined(USE_LCD) && !NO_PORTB
    lcd_putch;
#elif defined USE_UART
    uart_putch;
#else
    0;
#endif
void increment_tmrspeed(int8_t s);
void reset_speed(void);
void put_number(uint16_t n, uint8_t base, int8_t pad);

// -------------------------------------------------------------------------
//-----------------------------------------------------------------------------
int
main() {
  uint32_t tmp_msecs;
  uint8_t cd, cur_note;

  seconds = 0;
  bres = 0;
  msecs = 0;
  blinktime = 0;
  led_state = 1;
  led_enabled = 1;

  in_word_ptr = 0;
  in_word[0] = 'T';
  in_word[1] = 'E';
  in_word[2] = 'S';
  in_word[3] = 'T';
  in_word[4] = 0;

#if 0 // def HAVE_COMPARATOR
  CMCONbits.CM = 0b111;          //Disable LATA Comparators
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
#endif
#endif

//  reset_speed();
#ifdef USE_7SEGMENT
  display_init();
#endif // USE_7SEGMENT

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
//T1CON = 0x00;
T2CONbits.TOUTPS = 0b0000; // postscaler 1:1
T2CONbits.T2CKPS = 0b11;
PR2 = 250;
TMR2IE = 1;
TMR2IF = 0;
TMR2ON = 1;       // Enable timer 2.
*/
#ifdef USE_PWM
  // set up TMR2 to 1000.00Hz

  /* Set up input capture */
  CCP1IE = 1;
  CCP1CONbits.CCP1M = 0b0110; // Capture mode, every 4th rising edge

  TRISC2 = INPUT;

  // T1CKPS0 = 0; T1CKPS1 = 1; // 1:4 prescaler
  /*T1CONbits.*/ TMR1ON = 1;

  TMR1IF = 0;
#endif

#if /*HAVE_TIMER_0 &&*/ USE_TIMER0
  timer0_init(PRESCALE_1_4 | TIMER0_FLAGS_INTR);

  TIMER0_INTERRUPT_CLEAR();
  T0IE = 1;
#endif
  // timer1_init(0);
  /*
    T1SYNC = 1;

    T1CKPS0 = 0;
    T1CKPS1 = 0; // 1:1 prescaler

    // Set up timer0 interrupt
    T1OSCEN = 1;
    TMR1CS = 0; // Internal clock source
    TMR1L = 0x00;
    TMR1H = 0xff;

    TMR1ON = 1;
    //PSA = 0;  // Enable TMR1 prescaler


    //tmr0_set_psbit(0);

    PSA = 1; // Assign prescaler to WDT

    OPTION_REGbits.PS = 0b000;

    //TMR1 = ~ticks;
    TMR1IF = 0;
    TMR1IE = 1;
  */

#ifdef USE_UART
  uart_init();

  RCIF = 0;
  RCIE = 1;
#endif

#ifdef USE_SOFTSER
  softser_init();
#endif

#if defined(USE_LCD) && !NO_PORTB
  lcd_init(1);
  lcd_begin(2, 1);
  lcd_clear();
#endif

#ifdef USE_ADCONVERTER
  adc_init();

  ADIE = 1;

  adc_read(0);
#endif

  INIT_LED();
  //INIT_LED2();
  SET_LED(1);
  //SET_LED2(1);

  delay_v = 250;
  phase_v = 127;

  run = 1;

  //  RBIE = 1;
  //  RBIF = 0;
  INTEDG = 0;
  INTE = 1;
  INTF = 0;

  PEIE = 1;
  INTERRUPT_ENABLE();

#if 0
  shell_init(&sh_soft, softserial_getch, softser_putch);
  shell_init(&sh_uart, uart_getch, uart_putch);
#endif

#ifdef USE_LCD
  lcd_home();
  lcd_print("count: ");
#endif

  for(;;) {
    static int32_t prev = -1;

    INTERRUPT_DISABLE();
    tmp_msecs = msecs;
    INTERRUPT_ENABLE();

    if(seconds != prev) {
#ifdef USE_UART
      putchar = &uart_putch;
#elif defined(USE_SER)
      putchar = ser_putch;
#endif
      put_number(seconds, 10, -5);
      putchar('\r');
      putchar('\n');

#ifdef USE_LCD
      // lcd_home();lcd_print("     ");
      lcd_gotoxy(7, 0);
      lcd_print_number(seconds, 10, -5);

      prev = seconds;
#endif
#ifdef USE_7SEGMENT
      display_number(seconds);
#endif
#ifdef USE_SOFTSER
      if(softser_poll(SOFTSER_BAUD)) {
        int c;
        if((c = softser_getch()) != -1) {
#ifdef USE_LCD
          lcd_putch(c);
#endif
        }
      }
      softser_putch('X');
#endif
    }

    INTERRUPT_DISABLE();
    tmp_msecs = msecs + 1000;
    INTERRUPT_ENABLE();

    for(;;) {
      BOOL wait;
      INTERRUPT_DISABLE();
      wait = msecs < tmp_msecs;
      INTERRUPT_ENABLE();

      if(!wait)
        break;
    }
#if 0

    shell_read(&sh_soft, 10);
    shell_read(&sh_uart, 10);

#if defined(USE_LCD) && !NO_PORTB
    lcd_home();
    lcd_print(in_word);

    lcd_gotoxy(5, 0);
    lcd_print("      ");
    lcd_gotoxy(5, 0);

#ifdef USE_ADCONVERTER
    lcd_print("B:");
    lcd_putch(buttons[get_button()]);
    lcd_putch(' ');
#endif
#endif

#if defined(USE_LCD) && !NO_PORTB
    lcd_print("T:");
    put_number(seconds, 10, 3);
    lcd_print("s");
#endif

#ifdef USE_UART
#ifdef NO_MIDI
    putchar = uart_putch;
    put_number(seconds, 10, -5);
    putchar('\r');
    putchar('\n');
#endif
#if defined(USE_LCD) && !NO_PORTB
    putchar = lcd_putch;
#endif
#endif

    cur_note = MIDI_NOTE_C_1 +(rnd()% 36);
    __delay_ms(250);
    midi_send(softser_putch, MIDI_NOTE_ON, cur_note, MIDI_MAX_VELO, 0);


    __delay_ms(100);
    midi_send(softser_putch, MIDI_NOTE_OFF, cur_note, 0, 0);
#endif
  }
#if 0
  if(!ow_reset())
    ow_search();
  {
    double voltage;
    unsigned int reading, prev = 0;
    unsigned int counter;
    double freq;
    BOOL ledon = 0;
    BOOL presence;
    unsigned int refresh = 0;

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
      if(prev == 0)prev = reading;

      if(prev - reading > 100)
        ledon = !ledon;

      prev = reading;

      ledsense_emit(ledon);

#if defined(USE_LCD) && !NO_PORTB
      lcd_clear();
      lcd_gotoxy(0, 0);
      lcd_print("L=");
      lcd_putch(ledon ? '1' : '0');
      lcd_putch(' ');
#endif
      /*    lcd_print_number(reading, 16, 0);
          lcd_putch(' ');
      */

      voltage = (double)adc_read(0)* 5.0l / 1024;
#if defined(USE_LCD) && !NO_PORTB
      lcd_print_number((int)(voltage * 1000), 10, 4);
      lcd_print("mV ");

      lcd_print_number((int)freq, 10, 5);
      lcd_print("Hz ");
#endif

      if(!refresh) {

        presence = !ow_reset();

#if defined(USE_LCD) && !NO_PORTB
        lcd_print("T=");
#endif
        if(presence) {
          ds18b20_start_conversion(0  , 1);
          refresh = bres + MS_TO_OVERFLOWS(750, 255 - ticks);
        } else {
          // not present
#if defined(USE_LCD) && !NO_PORTB
          lcd_print("n/a");
#endif
          refresh = 0;
        }
      }

      if(refresh && refresh <= bres) {
        temp_bits = ds18b20_value(0)<< 2;

        temp_value = ds18b20_temperature(temp_bits, 0);
      }

      delay_ms(250);
    }
  }

  ledsense_loop();
  return 0;

  for(;;) {

#if 0 // def PORTB_BUTTONS
    if(button_pressed(BUTTON_A)) {
      run = 0;
    }

    if(button_pressed(BUTTON_B)) {
      reset_speed();
      run = 1;
    }
#endif

#if defined(USE_LCD) && !NO_PORTB
    lcd_gotoxy(0, 0);
    lcd_print("p=");
    lcd_print_number((int)prescale, 10, 0);
    lcd_print(",t=");
    lcd_print_number((int)ticks, 16, 0);
    lcd_print(",r=");
    //  lcd_print_float((double)OSC_4/TMR1_GET_INTERVAL_TCY(ticks)/256, 2);
    lcd_print_number((long)OSC_4 * 1000 / TMR1_GET_INTERVAL_TCY(ticks)/ 256, 10, 0);
    //    lcd_print_float((double)TMR1_GET_RATE()/(255 - ticks) / 256, 2);
    lcd_print("mHz ");
    //
    // lcd_gotoxy(10,1);
    // lcd_print("b=0x");
    // lcd_print_number(b, 16);
    lcd_gotoxy(0, 1);
    lcd_print(run ? "run " : "halt");
#endif

#if 0 // def PORTB_BUTTONS
    if((cd = button_pressed(BUTTON_C | BUTTON_D))) {
      increment_tmrspeed(cd == BUTTON_C ? 1 :(cd == BUTTON_D)? -1 : 0);
      tmr0_set_psbit(prescale);
      //uart_putch(cd == BUTTON_C ? 'C' : 'D');
    }
#endif

    //  delay_ms(25);
  }
#endif
}

// -------------------------------------------------------------------------
static void
set_speed(uint8_t bpm, uint8_t ph) {
  delay_v = (60l * 1000l) / bpm;
  phase_v = ph;
}

// -------------------------------------------------------------------------
static uint8_t
rnd(void) {
  static uint8_t s = 0xaa, a = 0;
  s ^= s << 3;
  s ^= s >> 5;
  s ^= a++ >> 2;
  return s;
}

// -------------------------------------------------------------------------
#if !NO_PORTB
static uint8_t
buttons_get() {
  uint8_t bits;

#ifndef nRBPU
#ifdef PIC18
  INTCON2 &= ~0b10000000;
#else
  OPTION_REG &= ~0b00100000;
#endif
#else
  nRBPU = 0; // pull-ups
#endif

  BSTRB_PIN = LOW;
  BSTRB_TRIS = OUTPUT;

  delay_ms(BSTRB_DELAY);

  bits = ~LATB;
  bits >>= BUTTON_SHIFT;
  bits &= BUTTON_MASK;

  delay_ms(BSTRB_DELAY);

#ifndef nRBPU
#ifdef PIC18
  INTCON2 |= 0b10000000;
#else
  OPTION_REG |= 0b00100000;
#endif
#else
  nRBPU = 1; // pull-ups
#endif
  BSTRB_TRIS = INPUT;

  delay_us(100);

  return bits;
}
#endif

INTERRUPT_FN() {
  if(TIMER0_INTERRUPT_FLAG) {
    bres += 256;

    if(bres >= 5000) {
      bres -= 5000;
      msecs++;
      blinktime++;
    }
    if(msecs >= 1000) { // if reached 1 second!
      seconds++;        // update clock, etc
      msecs -= 1000;
    }

    if(blinktime >= 100) {
      blinktime -= 100;
      led_state = !led_state;
      //if(led_enabled) SET_LED2(led_state);
    }

    if(led_enabled)
      SET_LED(seconds & 1);

    // Clear timer interrupt bit
    TMR0IF = 0;
  }
  if(TMR1IF) {
    /*
      // TMR1 = ~ticks;

      bres += 256;
      if(bres >= 5000000) { // if reached 1 second!
        bres -= 5000000;  // subtract 1 second, retain error
        seconds++;  // update clock, etc


      }
      //TMR1L =  0x00;
      //TMR1H = 0xff;
    */
    // Clear timer interrupt bit
    TMR1IF = 0;
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
#endif
  if(TMR2IF) {
#ifdef USE_TIMER2
#endif
#ifdef USE_7SEGMENT
    DISPLAY_INTERRUPT();
#endif
    TMR2IF = 0;
  }

  if(INTF) {
//  BUTTON_INT();
#ifdef USE_7SEGMENT
    if(button_state & (1 << display_multiplex) == 0)
      button_flags |= (1 << display_multiplex);
    button_state |= (1 << display_multiplex);
#endif
    INTF = 0;
  }

#if 0 // def PORTB_BUTTONS
  if(RBIF) {
    button_state |= (~LATB)& (BUTTON_A | BUTTON_B | BUTTON_C | BUTTON_D);
    RBIF = 0;
  }
#endif
#ifdef USE_UART
  if(RCIF) {
    serial_in = RCREG;

    if(serial_in == ' ') {
      led_enabled = !led_enabled;
    }
    if(serial_in > 'Z')
      serial_in -= 0x20;

    if(serial_in >= 'A' && serial_in <= 'Z') {
      in_word[in_word_ptr] = serial_in;
      in_word_ptr++;
      in_word_ptr &= 0x03;
    }
    RCIF = 0;
  }
#endif
#ifdef USE_ADCONVERTER
  if(ADIF) {
    adc_result = ADRES;
    ADIF = 0;

    GO_DONE = 1;
  }
#endif
}

// -------------------------------------------------------------------------
/*static uint8_t
tmr0_get_psbit() {
  if(PSA)
    return 0;
  return OPTION_REGbits.PS + 1;
}*/

#ifdef USE_ADCONVERTER
uint8_t
get_button() {
  int8_t a = adc_result >> 4;

  if(a >= 0 && a < 3) {
    return 1;
  } else if(a >= 3 && a < 6) {
    return 2;
  } else if(a >= 6 && a < 14) {
    return 3;
  } else if(a >= 14 && a < 22) {
    return 4;
  } else if(a >= 22 && a < 36) {
    return 5;
  }
  return 0;
}
#endif // defined USE_ADCONVERTER

// -------------------------------------------------------------------------
#define TMR1_GET_INTERVAL_TCY(treg) (((unsigned int)(255 - treg)) << tmr0_get_psbit())
/*
static unsigned int
tmr0_get_psval() {
  return 1l << tmr0_get_psbit();
}
*/
#define TMR1_GET_RATE() (long)(OSC_4 / (1l << tmr0_get_psbit()))

#ifdef USE_SOFTSER
static int
softserial_getch(uint16_t timeout) {
  uint16_t t = seconds + timeout;

  while(seconds <= timeout) {
    if(softser_poll(SOFTSER_BRG)) {
      return (int)(uint8_t)softser_getch();
    }
  }
  return -1;
}
#endif

// -------------------------------------------------------------------------
/*static void
tmr0_set_psbit(uint8_t psbit) {
  if(psbit == 0)
    PSA = 1;
  else
    OPTION_REGbits.PS = psbit - 1;
}*/

/*#define INC 0x04

void
increment_tmrspeed(int8_t s)
{
  if(s > 0) {
    if(ticks >= (INC * 4)) {
      ticks -= INC;
    } else {
      if(prescale < 8) {
        prescale++;
        ticks = (255 - ((255 - ticks)>> 1));
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

// -------------------------------------------------------------------------
void
reset_speed()
{
  ticks = ~131;
  prescale = 6;
  tmr0_set_psbit(prescale);
}
*/
// -------------------------------------------------------------------------
void
put_number(/*void(*putchar)(char), */ uint16_t n, uint8_t base, int8_t pad /*, int8_t pointpos*/) {
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
