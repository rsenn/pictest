#ifndef CONFIG_18F2550_H
#define CONFIG_18F2550_H 1

#if defined(__XC) || defined(SDCC)

#pragma config FOSC = HSPLL_HS
#pragma config PWRT = ON, BOR = ON, BORV = 27
#pragma config WDT = OFF
#pragma config CCP2MX = ON, STVREN = OFF, LVP = OFF
#pragma config CP0 = OFF, CP1 = OFF, CP2 = OFF, CP3 = OFF
#pragma config CPB = OFF, CPD = OFF
#pragma config WRT0 = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF
#pragma config WRTB = OFF, WRTC = OFF, WRTD = OFF
#pragma config EBTR0 = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF
#pragma config EBTRB = OFF

#endif

#ifdef HI_TECH_C
#include <htc.h>
#include <pic18.h>
__CONFIG(1,FOSC_HS);
__CONFIG(2,BOR_ON & PWRT_ON & WDT_ON);
__CONFIG(3,CCP2MX_ON);
__CONFIG(4,DEBUG_ON);
__CONFIG(5,CPD_OFF );

#endif

#endif // defined CONFIG_18F2550_H
