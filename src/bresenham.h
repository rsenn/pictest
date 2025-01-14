#ifndef BRESENHAM_H
#define BRESENHAM_H

#include <stdint.h>

#define BRESENHAM_DECL(name) volatile uint16_t name = 0
#define BRESENHAM_INC8(name) name += 256
#define BRESENHAM_INC(name, v) name += (v)
#define BRESENHAM_COND(name, rate) name >= (rate)
#define BRESENHAM_SUB(name, rate) name -= (rate)

#endif /* defined(BRESENHAM_H) */
