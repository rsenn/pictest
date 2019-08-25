#ifndef PICLIB_PORTS_H
#define PICLIB_PORTS_H

#if defined(LATA) && !defined(PORTA)
#define PORTA LATA
#endif
#if defined(LATB) && !defined(PORTB)
#define PORTB LATB
#endif
#if defined(LATC) && !defined(PORTB)
#define PORTB LATC
#endif

#endif
