#ifndef PICTEST_H
#define PICTEST_H 1

#ifdef HI_TECH_C
#include <htc.h>
#else
#include <pic16f876a.h>
#endif

#ifdef SDCC
#include <stdbool.h>
#include <stdint.h>
#endif


//----------------------------------------------------------------------------
// Preprocessor macros
//----------------------------------------------------------------------------
#define MSEC_TO_TICKS(m) (uint32)(((float)m) * 256. / 1000. + 0.5)
#define HZ_TO_TICKS(hz) (MSEC_TO_TICKS((1000/hz)))


#endif
