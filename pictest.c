#include "pictest.h"

#define CONFIG_WORD (_HS_OSC & _DEBUG_OFF & _CP_ALL & _WRT_OFF & _CPD_OFF & _LVP_OFF & _BODEN_OFF & _PWRTE_OFF & _WDT_OFF)

//#include "display.h"

unsigned short __at(0x2007)  __CONFIG = CONFIG_WORD;
unsigned char b;
char dir;
volatile unsigned long tmrval = 0;
unsigned short ptr;

#if 0
static BOOL display_enable, blink_enable;
static uint32 timer_value;
static uint32 blink_lasttime;
static uint8 blink_count;
static uint8 display_latch[4];
static uint32 powering_up;

void int_handler(void) interrupt
{
 if(TMR0IF)                //check for TMR0 overflow
  {
    static uint8 mpx = 3;
    static uint8 cnt = 0;
    static uint8 bbit;
    uint8 tmp;

    if(blink_enable && timer_value > blink_lasttime + DISPLAY_BLINK_TICKS)
    {
      blink_lasttime = timer_value;

      if(blink_count <= 0)
      {
        display_enable = TRUE;

        blink_enable = FALSE;
      }
      else
      {
        if(display_enable)
          display_enable = FALSE;

        else if(--blink_count > 0)
        {
          display_enable = TRUE;

          if(blink_count >= 125)
            blink_count++;
        }
      }
    }

    if(display_enable && display_update)
    {
      display_latch[0] = display_buffer[0];
      display_latch[1] = display_buffer[1];
      display_latch[2] = display_buffer[2];
      display_latch[3] = display_buffer[3];

      display_update = 0;
    }

//   PORTB = 0;

    mpx++;
    mpx &= 0x03;

    PORTC |= ~DISPLAY_PORTC_MASK;

    if((display_enable || !blink_enable) && !powering_up)
    {
      PORTB = display_latch[mpx];
    }
    else
      PORTB = 0;

    switch(mpx) {
      case 0:
          DISPLAY_CATHODE_0 = 0;
        break;
      case 1:
          DISPLAY_CATHODE_1 = 0;
        break;
      case 2:
          DISPLAY_CATHODE_2 = 0;
        break;
      case 3:
          DISPLAY_CATHODE_3 = 0;
        break;
    }
/*
    if(button_state != button_prevstate)
    {
      button_transition = button_state ^ button_prevstate;
      button_flags |= button_transition;

      for(tmp = 0; tmp <= 7; tmp++)
      {
        if(button_transition & (1 << tmp))
        {
          if(button_state & (1 << tmp))
            button_event = PRESSED;
          else
            button_event = RELEASED;

          button_last = (1 << tmp);
          break;
        }
      }

    }*/

    if(mpx == 0)
      cnt++;

    timer_value++;

    TMR0IF = 0;            //clear interrupt flag
  }
}


//#include "sine.h"
//#include "sample.h"

/*
// Configure A/D converter
void adc_init()
{
  ADFM = 1;  // right justified result

  ADCS0 = 0; // Fosc / 64
  ADCS1 = 1;
  ADCS2 = 1;

  ADON = 1; // Fire up the A/D converter
}

unsigned short adc_get(char channel)
{
  CHS0 = channel & 0b001;
  CHS1 = (channel & 0b010) >> 1;
  CHS2 = (channel & 0b100) >> 2;

  GO = 1;

  while(NOT_DONE)
    {}

  return (ADRESH << 8) | ADRESL;
}
*/
#endif
void my_delay(unsigned short iterations)
{
  short i;

  for(i = 0; i < iterations; i++)
  {
    __asm nop __endasm;
  }
}
volatile unsigned char uart_byte;

void uart_init(void)
{
  SYNC = 0;
  SPEN = 1;
  BRGH = 0;
  SPBRG = 1;
  // send
  TXIE = 1;
  TX9 = 0;
  TXEN = 1;
  // recv
  RCIE = 1;
  RX9 = 0;
  CREN = 1;
}

void uart_put(char c)
{
  TXREG = c;
}

int main()
{
  dir = 0;
  ptr = 0;
 
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


  // Set up timer0 interrupt
  T0CS = 0; // Internal clock source
  PSA = 0;  // Assign prescaler to timer0
  PS0 = 0;
  PS1 = 0;
  PS2 = 0; // 1:2 prescaler (4 MHz quartz, so timer0 rate 2 MHz (every 500ns))
  INTCON = 0;
  T0IE = 1;
  TMR0 = 0;

  TRISB &= 0b00000000;
  TRISC &= 0b00000000;
  //PORTB &= 0b00000000;

//  uart_init();

 // DISPLAY_SET(DISPLAY_LETTER_T, DISPLAY_LETTER_E, DISPLAY_LETTER_S, DISPLAY_LETTER_T, 1);

//  PEIE = 1;
  //GIE = 1;

  dir = 1;
  b = 0;


  for(;;)
  {
   b = ~b;
   PORTB = b;
//    PORTB=(uart_byte & 0x0f) | (tmrval & 0xf0);
 //PORTB &= 0b00001000; PORTB |= (b & 0b0111) | ((b & 0b01111000) << 1); b++; b &= 0b01111111;
/*   PORTB = b;

   if(b == 0 && dir < 0) dir = 1;
   if(b == 255 && dir > 0) dir = -1;
   b += dir;

   CCPR2L = b;
   //CCP2Y = b & 1;
   //CCP2X = (b >> 1) & 1;
*/
    my_delay(512);
  }
}
