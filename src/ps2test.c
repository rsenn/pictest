#include "device.h"
#include "timer.h"
#include "oscillator.h"
#include <stdio.h>

#ifdef __XC8__
#else
__CONFIG(0x3f72);
#endif

#define CLOCK RC1
#define DATA  RC0

#include "uart.h"


const uint8_t    Key[] = {"0F FFFFF FFFFt`  as cQ1   ZSAW2  CXDE43   VFTR5  NBHGY6   MJU78  ,KIO09  ./L;P-   ' [=\\"};       //Keyboard Characters
uint8_t KeyVal, KeyVal2, i = 0;
void Pwm_Init(void);
void Capture_init(void);
void Serial_init(void);
uint8_t Scan_Data(void);
void DelayMs(unsigned int);
void putch(uint8_t ch)
{
  uart_putch(ch);
}

void main()
{
  PORTC = 0xff;   //Pull up the inputs to High
  uart_init();
  DelayMs(50);
  Capture_init(); //Input capture utility in Pic micro Enabled
  DelayMs(250);
  printf("\033[2J");    //Clear the Hypherterminal;
  printf("PS2 Keyboard Demo:\n\r");
  while (1) {
    KeyVal = Scan_Data();  //Scan for a incoming data
    if(KeyVal > 85 || KeyVal < 20 || KeyVal == 0x0e)
      //If any special character received

    {
      if(KeyVal == 0x0e)
        printf("`");
      if(KeyVal == 0x5d || KeyVal == 0x5b) {
        if(KeyVal == 0x5b)printf("]");
        if(KeyVal == 0x5d)printf("\\");
      }
    } else
      uart_putch(Key[KeyVal]); //Else If the character rcv is a Number or Letter then print the letter or number
    KeyVal = 0;
    Capture_init();//Initialise once again for next capture
  }
}

void Capture_init()
{
  TRISC |= 0x03;   //Make PS2 CLK and DATA Pins as Input
  CCP2CON = 0x04;  //Capture Every Falling Edge
  T1CON = 0x04;    //Timer1 1:1 Prescale, Internal Clock
  TMR1H = 0;
  TMR1L = 0;
  CCP2IF = 0;      //Clear the Interrupt Flag

}
/*
void Serial_init() {
  TRISC = 0xc0;   //RC7,RC6 set to usart mode(INPUT)
  TXSTA = 0x24;   //Transmit Enable
  SPBRG = BAUD_VAL; //9600 baud at 10Mhz
  RCSTA = 0x90;   //Usart Enable, Continuous receive enable
  TXIF = 1;       //Start Transmit
}

void uart_putch(char Data) {    //trasnmit data

  while(TXIF == 0);
  TXREG = Data;
}*/

uint8_t Scan_Data()
{
  uint8_t Data = 0, temp;
  while (CCP2IF == 0); //Wait for First Falling Edge
  CCP2IF = 0;   //Clear the Flag--Bcoz this is Start Pulse
  for(i = 0; i < 7; i++) {

    while (CCP2IF == 0); //Capture the next 7 bits of data
    CCP2IF = 0;
    temp = RC0;
    temp <<= i;
    Data |= temp;
  }

  CCP2CON = 0;
  DelayMs(100);
  return (Data);      //return the data
}

void DelayMs(unsigned int Ms)    //Delay Routine
{
  int delay_cnst;

  while (Ms > 0) {
    Ms--;

    for(delay_cnst = 0; delay_cnst < 220; delay_cnst++);
  }
}


