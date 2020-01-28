#ifndef PICLIB_PORTS_H
#define PICLIB_PORTS_H
#include "device.h"

#ifdef __16f876a__
extern volatile unsigned char __at(0x0005) PORTA;
extern volatile unsigned char __at(0x0006) PORTB;
extern volatile unsigned char __at(0x0007) PORTC;
extern volatile unsigned char __at(0x085) TRISA;
extern volatile unsigned char __at(0x086) TRISB;
extern volatile unsigned char __at(0x087) TRISC;
extern volatile unsigned char __at(0x01F) ADCON0;
extern volatile unsigned char __at(0x09F) ADCON1;

#endif
#ifdef __18f252__
extern volatile unsigned char __at(0xF80) PORTA;
extern volatile unsigned char __at(0xF81) PORTB;
extern volatile unsigned char __at(0xF82) PORTC;
extern volatile unsigned char __at(0xF89) LATA;
extern volatile unsigned char __at(0xF8A) LATB;
extern volatile unsigned char __at(0xF8B) LATC;
extern volatile unsigned char __at(0xF92) TRISA;
extern volatile unsigned char __at(0xF93) TRISB;
extern volatile unsigned char __at(0xF94) TRISC;
extern volatile unsigned char __at(0xFC1) ADCON1;
extern volatile unsigned char __at(0xFC2) ADCON0;

#endif

#if defined(LATA) && !defined(PORTA)
#define PORTA LATA
#endif
#if defined(LATB) && !defined(PORTB)
#define PORTB LATB
#endif
#if defined(LATC) && !defined(PORTC)
#define PORTC LATC
#endif

#endif
