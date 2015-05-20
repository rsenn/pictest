#include "pictest.h"
#include "uart.h"
#include "adc.h"
#include "interrupt.h"

#ifdef SDCC
//#pragma config FOSC=HS,PWRTE=ON,WDT=OFF
__code uint16_t __at (_CONFIG) __configword = _FOSC_HS & _PWRTE_ON & _WDT_OFF & _BODEN_OFF & _LVP_OFF & _CPD_OFF & _WRT_OFF & _DEBUG_OFF & _CP_OFF;
#else
# ifdef HI_TECH_C
#  define _XTAL_FREQ 4000000
__CONFIG(FOSC_HS & DEBUG_OFF & CP_ON & WRT_OFF & CP_OFF & LVP_OFF & BOREN_OFF & PWRTE_OFF & WDTE_OFF);
# define NOT_RBPU nRBPU
# else
#  error Unknown compiler
# endif
#endif

#define BUTTON_A 0b10000000
#define BUTTON_B 0b01000000
#define BUTTON_C 0b00100000
#define BUTTON_D 0b00010000

uint8 b;
volatile int8 run;
volatile uint8 button_state, speed, scale, serial_in;
volatile uint32 tmr_overflows, tmr1_count;
volatile uint16 adc_result;

void
my_delay(uint16 iterations) {
  int16 i;
  for(i = 0; i < iterations; i++) {
    __asm__ (”"nop");
  }
}

INTERRUPT(void isr)  {
  if(T0IF) {
    if(run)
      tmr_overflows++;
    TMR0 = ~speed;
    // Clear timer interrupt bit
    T0IF = 0;
  }
  //if(TMR1IF) {
  //  tmr1_count++;
  //  TMR1IF = 0;
  //}
  if(RBIF) {
    button_state |= ~PORTB;
    RBIF = 0;
  }
  //if(RCIF) {
  //  serial_in = RCREG;
  //  RCIF = 0;
  //}
  //if(ADIF) {
  //  ADIF = 0;
  //  adc_result = ADRES;
  //}
}

static uint16
increment_tmrspeed(int8 s) {
  if(s > 0) {
    if(speed <= 0x20) {
      if(scale > 0) {
        scale--;
        speed <<= 1;
      } else {
        return speed << scale;
      }
    }
    speed--;
  } else if(s < 0) {
    if(speed >= 255) {
      if(scale < 7) {
        scale++;
        speed >>= 1;
      } else {
        return speed << scale;
      }
    }
    speed++;
  }
  return speed << scale;
}

static uint8
button_pressed(uint8 b) {
  uint8 st;
  st = (button_state & b);
  if(st) {
    button_state &= ~b;
  }
  return st;
}

int main() {
  uint8 cd;
  uart_init();

  button_state = tmr_overflows = tmr1_count = adc_result = serial_in = tmr_overflows = b = 0;

  ADON = 1;
  ADCON0bits.ADCS = 0b001;

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
  T1CON = 0x00;
  T2CKPS0 = 0;      // Set timer 2 prescaler to 1:1.
  T2CKPS1 = 0;      // These bits are in T2CON.
  TMR2ON = 1;       // Enable timer 2.
  */
  // Set up timer0 interrupt
  T0CS = 0; // Internal clock source
  PSA = 0;  // Assign prescaler to timer0
  //OPTION_REGbits.PS = 0b000; // 1:2 prescaler (4 MHz quartz, so timer0 rate 2 MHz (every 500ns))
  OPTION_REGbits.PS = 0b111; // 1:256 prescaler (4 MHz quartz, so timer0 rate 15.625 kHz (every 64ns))
  TMR0 = ~speed;
  T0IF = 0;
  T0IE = 1;

  tmr_overflows = 0;

  T1CKPS0 = 1;
  T1CKPS1 = 0; // 1:2 prescale
  T1OSCEN = 1;
  T1SYNC = 1;
  TMR1CS = 0;
  TMR1ON = 1;
  TMR1 = 0;
  TMR1IE = 1;
  TMR1IF = 0;

  TRISB = 0b11111111;
  NOT_RBPU = 0; // pull-ups
  INTEDG = 0; // falling edge
  RBIE = 1;
  RBIF = 0;

  PEIE = 1;
  GIE = 1;

  b = 0;

  TRISC = 0;
  TRISA4 = 0;
  TRISA0 = 0;
  
  run = 1;
  speed = 0xa0; scale = 7;
  
    putch('0'+!!run);

  for(;;) {
    b = tmr_overflows & 0xff;
    PORTC = b;

    //if(button_pressed(BUTTON_A))     run = !run;

RA0 = !run;

    if(button_pressed(BUTTON_B)) {
      speed = 0xa0;
      scale = 7;
      run = 1;
    }
    /*    if(button_state & (BUTTON_A|BUTTON_B))
        RA4 = !!(button_state & BUTTON_A);
          else
    */
    RA4 = (b >> scale)  & 0x01;

    if((cd = button_pressed(BUTTON_C|BUTTON_D))) {
      putch(cd == BUTTON_C ? 'C' : 'D');
      increment_tmrspeed(cd == BUTTON_C ? 1 : (cd == BUTTON_D) ? -1 : 0);
    }

    //b++;
    my_delay(100);
  

//__delay_ms(10);
  }
}

