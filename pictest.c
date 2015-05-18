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
# else
#  error Unknown compiler
# endif
#endif

#define BUTTON_A 0b10000000
#define BUTTON_B 0b01000000
#define BUTTON_C 0b00100000
#define BUTTON_D 0b00010000

uint8 b;
volatile uint8 button_state = 0;
uint32 button_lasttime = 0;

volatile int8 run = 1;

volatile uint8 speed = 0xa0, scale = 7;

//volatile uint8 tmr_init = 0x60;
volatile uint32 tmr_overflows = 0;
volatile uint32 tmr1_count = 0;
volatile uint16 adc_result = 0;
volatile uint8 serial_in = 0;

void my_delay(uint16 iterations) {
  int16 i;

  for(i = 0; i < iterations; i++) {
    ;
  }
}

INTERRUPT(void isr)  {
  if(/*INTCONbits.*/T0IF) {
   
		if(run)
		  tmr_overflows++;

		TMR0 = ~speed;

    // Clear timer interrupt bit
    /*INTCONbits.*/T0IF = 0;
  }

  if(TMR1IF) {
		tmr1_count++;
    TMR1IF = 0;
  }

  if(/*INTCONbits.*/RBIF) {
    
    button_state |= ~PORTB;

    /*INTCONbits.*/RBIF = 0;
  }

  if(/*PIR1bits.*/RCIF) {
    serial_in = RCREG;

    /*PIR1bits.*/RCIF = 0;
  }

  if(/*PIR1bits.*/ADIF) {
    /*PIR1bits.*/ADIF = 0;

    adc_result = ADRES;
  }
}

uint16 increment_tmrspeed(int8 s) {
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

uint8 button_pressed(uint8 b) {
	uint8 st;
  /*if(tmr1_count < button_lasttime + 10) {
		//button_state = 0;
	  return 0;
	}*/
  //button_state = ~PORTB;
	st = (button_state & b);
  if(st) {
		button_state &= ~b;
		button_lasttime = tmr1_count;
	}
	return st;
}

int main() {
	  uint8 cd;
  uart_init();

  /*ADCON0bits.*/ADON = 1;
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
  /*OPTION_REGbits.*/T0CS = 0; // Internal clock source
  /*OPTION_REGbits.*/PSA = 0;  // Assign prescaler to timer0

  //OPTION_REGbits.PS = 0b000; // 1:2 prescaler (4 MHz quartz, so timer0 rate 2 MHz (every 500ns))
  OPTION_REGbits.PS = 0b111; // 1:256 prescaler (4 MHz quartz, so timer0 rate 15.625 kHz (every 64ns))

  TMR0 = ~speed;
  /*INTCONbits.*/T0IF = 0;
  /*INTCONbits.*/T0IE = 1;

  tmr_overflows = 0;

	/*T1CONbits.*/T1CKPS0 = 1; T1CKPS1 = 0; // 1:2 prescale
	/*T1CONbits.*/T1OSCEN = 1;
	/*T1CONbits.*/T1SYNC = 1; 
	/*T1CONbits.*/TMR1CS = 0;
	/*T1CONbits.*/TMR1ON = 1;

	TMR1 = 0;
	TMR1IE = 1;
	TMR1IF = 0;


  TRISB = 0b11111111;
  TRISC = 0;

  /*OPTION_REGbits.*/NOT_RBPU = 0; // pull-ups
  /*OPTION_REGbits.*/INTEDG = 0; // falling edge

  
  /*INTCONbits.*/RBIE = 1;
  /*INTCONbits.*/RBIF = 0;

  /*INTCONbits.*/PEIE = 1;
  /*INTCONbits.*/GIE = 1;

  b = 0;

	TRISA4 = 0;

  for(;;) {
    b = tmr_overflows & 0xff;

		PORTC = b;

		if(button_pressed(BUTTON_A))
			run = !run;

     if(button_pressed(BUTTON_B)) {
			 speed = 0xa0;
			 scale = 7;
			 run = 1;
		 }

/*		if(button_state & (BUTTON_A|BUTTON_B))
		  RA4 = !!(button_state & BUTTON_A);
		else
*/
		RA4 = (b >> scale)  & 0x01;


    if((cd = button_pressed(BUTTON_C|BUTTON_D))) {
			increment_tmrspeed(cd == BUTTON_C ? 1 : (cd == BUTTON_D) ? -1 : 0);
		}

    //b++;
    my_delay(1000);
//__delay_ms(10);
  }
}
