/**
 * @file   uart.c
 * @author  Oleg Antonyan <oleg.b.antonyan@gmail.com>
 * @version 1.0
 *
 * @section LICENSE
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details at
 * http://www.gnu.org/copyleft/gpl.html
 *
 * @section DESCRIPTION
 *
 * UART wrapper for serial communication
 */

#ifdef HI_TECH_C
#include <htc.h>
#else
#include <pic16f876a.h>
#endif

#include "uart.h"

/**
 * Re-target POSIX function putch
 */
void putch(unsigned char byte)
{
  /* output one byte */
  while(!PIR1bits.TXIF)
  {  /* set when register is empty */
    continue;
  }
  TXREG = byte;
}

/**
 * ISR for UART receive
 *
 * @return received character or 0 if it's not UART interrupt
 */
unsigned char uart_isr(void)
{
  if(PIR1bits.RCIF)
  {
    PIR1bits.RCIF = 0;
    return RCREG;
  }
  return 0;
}

void uart_enable(void)
{
  TXSTAbits.TXEN = 1;
  RCSTAbits.SPEN = 1;
  PIE1bits.RCIE = 1;
/*  TRISCbits.TRISC7 = 1;
  TRISCbits.TRISC6 = 1;*/
}

void uart_disable(void)
{
  TXSTAbits.TXEN = 0;
  RCSTAbits.SPEN = 0;
  PIE1bits.RCIE = 0;
/*  TRISCbits.TRISC7 = 0;
  TRISCbits.TRISC6 = 0;
  RC6 = 0;
  RC7 = 0; */
}

void uart_init(void)
{
  /* Initilize baudrate generator and pins */
#define DIVIDER ((unsigned int)(FOSC / ( 16ul * BAUD) - 1ul))
#if NINE == 1
  #define NINE_BITS _TX9
#else
  #define NINE_BITS 0
#endif
#if HIGH_SPEED == 1
  #define SPEED _BRGH
#else
  #define SPEED 0
#endif
  TRISCbits.TRISC7 = 1;
  TRISCbits.TRISC6 = 1;
  SPBRG = DIVIDER;

  RCSTA = (NINE_BITS | _SPEN | _CREN);
  TXSTA = (SPEED | NINE_BITS | _TXEN);
  /* Receive interrupt enabled */
  PIE1bits.RCIE = 1;

  uart_enable();
}
