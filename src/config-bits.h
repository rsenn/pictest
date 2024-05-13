#ifndef CONFIG_BITS_H
#define CONFIG_BITS_H 1

#include "../lib/device.h"

#ifdef __10f206
#include "config-10f206.h"
#endif // defined __10f206

#if defined(__12f1840) || defined(PIC12F1840) || defined(PIC12)
#include "config-12f1840.h"
#endif // defined __12f1840

#ifdef __16f628a
#include "config-16f628a.h"
#endif // defined __16f628a


#ifdef __16f876a
#include "config-16f876a.h"
#endif // defined __16f876a

#ifdef __18f14k50
#include "config-18f14k50.h"
#endif // defined __18f14k50

#ifdef __18f16q41
#include "config-18f16q41.h"
#endif // defined __18f16q41

#ifdef __18f2450
#include "config-18f2450.h"
#endif // defined __18f2450
#ifdef __18f2455
#include "config-18f2455.h"
#endif // defined __18f2455
#ifdef __18f252
#include "config-18f252.h"
#endif // defined __18f252

#ifdef __18f2520 
#include "config-18f2520.h"
#endif // defined __18f2520
 
#ifdef __18f2550
#include "config-18f2550.h"
#endif // defined __18f2550

#ifdef __18f25k22
#include "config-18f25k22.h"
#endif // defined __18f25k22

#ifdef __18f25k50
#include "config-18f25k50.h"
#endif // defined __18f25k50

#
#endif // defined CONFIG_BITS_H
