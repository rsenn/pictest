/**
 * @file 	uart.h
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

#ifndef UART_H_
#define UART_H_

#include <stdint.h>

#define BAUD 9600		/** Baudrate */
#define FOSC 2160900	/** CPU clock */
#define NINE 0     			/** Use 9bit communication? 0=8bit */
#define HIGH_SPEED 1		/** Set for high speed communicatin (see BRGH bit) */

/**
 * Initialize UART module
 */
void uart_init(void);

/**
 * ISR for UART. Called from each interrupt
 *
 * @return 1 if there was UART receive interrupt, 0 otherwise
 */
uint_fast8_t uart_isr(void);

/**
 * Enable UART (used for power managed mode)
 */
void uart_enable(void);

/**
 * Disable UART (used for power managed mode)
 */
void uart_disable(void);

#endif /* UART_H_ */
