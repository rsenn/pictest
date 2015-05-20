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
void
putch(uint8 byte) {
  /* output one byte */
  while(!TXIF) {
    /* set when register is empty */
    continue;
  }
  TXREG = byte;
}

/**
 * ISR for UART receive
 *
 * @return received character or 0 if it's not UART interrupt
 */
uint8 
uart_isr(void) {
  if(RCIF) {
    RCIF = 0;
    return RCREG;
  }
  return 0;
}

void 
uart_enable(void) {
  TXEN = 1;
  SPEN = 1;
  RCIE = 1;
  TRISC7 = 1;
  TRISC6 = 1;
}

void 
uart_disable(void) {
  TXEN = 0;
  SPEN = 0;
  RCIE = 0;
  TRISC7 = 0;
  TRISC6 = 0;
  RC6 = 0;
  RC7 = 0;
}

void 
uart_init(void) {
  /* Initilize baudrate generator and pins */
  
#if NINE == 1
#define NINE_BITS _TX9
#else
#define NINE_BITS 0
#endif
#if HIGH_SPEED == 1
#define DIVIDER ((uint8)((OSC4 / 4 / BAUD) - 1))
#define SPEED _BRGH
#else
#define DIVIDER ((uint8)((OSC4 / 16 / BAUD) - 1))
#define SPEED 0
#endif
  TRISC7 = 1;
  TRISC6 = 1;
  SPBRG = DIVIDER;

  CREN = 1;
  RX9D = (NINE == 1);

  BRGH = (HIGH_SPEED == 1);
  TX9 = (NINE == 1);

  uart_enable();
}
