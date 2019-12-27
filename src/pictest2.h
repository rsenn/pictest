#ifndef PICTEST_H
#define PICTEST_H 1

#include "device.h"
#include "oscillator.h"
#include "typedef.h"

extern volatile uint16_t tmr_overflows;
extern volatile uint8_t ticks;

#define CCPR1 (((uint16_t)CCPR1H << 8) | (CCPR1L))
#define TMR1 (((uint16_t)TMR1H << 8) | (TMR1L))

#ifdef __16f628a
#define LED_PIN RB7
#define LED_TRIS() TRISB7 = 0;
#else
#define LED_PIN RA4
#define LED_TRIS() TRISA &= ~0b0001000; 
//#define PORTB_BUTTONS 1
#endif

#define BSTRB_TRIS TRISC3
#define BSTRB_PIN RC3
#define BSTRB_DELAY 30

#define BUTTON_SHIFT 4
#define BUTTON_MASK 0b00001111

#endif
