#ifndef PICTEST_H
#define PICTEST_H 1

#include "device.h"
#include "oscillator.h"
#include "typedef.h"

//#define CCPR1 (((uint16_t)CCPR1H << 8)|(CCPR1L))
//#define TMR1 (((uint16_t)TMR1H << 8)|(TMR1L))

#if defined(__10f206)
#define LED_PIN GP2
#define LED_TRIS() TRISGP2 = 0;
#define LED2_CATHODE GP2
#define LED2_CATHODE_TRIS TRISGP2
#define LED2_ANODE RA2
#define LED2_ANODE_TRIS TRISGP3
#define BSTRB_TRIS TRISGP1
#define BSTRB_PIN GP1

#elif defined(__12f1840)

#define LED_PIN LATA4
#define LED_ON() PORTA |= 0b0001000;
#define LED_OFF() PORTA &= 0b11110111;
#define LED_TRIS() TRISA &= 0b11110111;
#define LED2_CATHODE LATA2
#define LED2_CATHODE_TRIS ANSA2 = TRISA2
#define LED2_ANODE RA3
#define LED2_ANODE_TRIS TRISA3

#elif defined(__16f628a)

#define LED_PIN RA4
#define LED_TRIS() TRISA &= 0b11110111;
#define LED2_CATHODE RA2
#define LED2_CATHODE_TRIS TRISA2
#define LED2_ANODE RA3
#define LED2_ANODE_TRIS TRISA3
#define BSTRB_TRIS TRISA1
#define BSTRB_PIN RA1

#elif defined(__16f876a) || defined(__18f252)

#define LED_PIN RA4
#define LED_ON() PORTA |= 0b0001000;
#define LED_OFF() PORTA &= 0b11110111;
#define LED_TRIS() TRISA &= 0b11110111;
#define LED2_CATHODE RC2
#define LED2_CATHODE_TRIS TRISC2

//# ifdef TRISC3
#define LED2_ANODE RC3
#define LED2_ANODE_TRIS TRISC3
//# endif

#define BSTRB_TRIS TRISB0
#define BSTRB_PIN RB0

#else

#define LED_PIN RA4
#define LED_ON() PORTA |= 0b0001000;
#define LED_OFF() PORTA &= 0b11110111;
#define LED_TRIS() TRISA &= 0b11110111;
#define LED2_CATHODE RC0
#define LED2_CATHODE_TRIS TRISC0
#define LED2_ANODE RC1
#define LED2_ANODE_TRIS TRISC1
#define BSTRB_TRIS TRISC0
#define BSTRB_PIN RC0

#endif

#if NO_PORTB && NO_PORTC
#define USE_LCD 0
#else
#define USE_LCD 1
#endif

#define BSTRB_DELAY 30

#define INIT_LED() LED_TRIS()
#define SET_LED(b) LED_PIN = !!(b)

#ifdef LED2_ANODE
#define SET_LED2(b)                                                                                                    \
  LED2_ANODE = (!!(b)) ? HIGH : LOW;                                                                                   \
  LED2_CATHODE = (!!(b)) ? LOW : HIGH
#define INIT_LED2()                                                                                                    \
  LED2_ANODE_TRIS = OUTPUT;                                                                                            \
  LED2_CATHODE_TRIS = OUTPUT
#else
#define SET_LED2(b) LED2_CATHODE = ((!!(b)) == 0)
#define INIT_LED2() LED2_CATHODE_TRIS = OUTPUT
#endif

#endif
