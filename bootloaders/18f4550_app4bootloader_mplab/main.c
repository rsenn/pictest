#include <p18cxxx.h>

/* --- configuration bits -------------------------------------------------- */
#pragma config PLLDIV   = 3       // (12 MHz input)
#pragma config CPUDIV   = OSC1_PLL2
#pragma config USBDIV   = 2       // Clock source from 96MHz PLL/2
#pragma config FOSC     = HSPLL_HS
#pragma config FCMEN    = OFF
#pragma config IESO     = OFF
#pragma config PWRT     = OFF
#pragma config BOR      = ON
#pragma config BORV     = 3
#pragma config VREGEN   = ON
#pragma config WDT      = OFF
#pragma config WDTPS    = 32768
#pragma config MCLRE    = ON
#pragma config LPT1OSC  = OFF
#pragma config PBADEN   = OFF
#pragma config CCP2MX   = ON
#pragma config STVREN   = ON
#pragma config LVP      = OFF
//#pragma config ICPRT    = OFF       // Dedicated In-Circuit Debug/Programming
#pragma config XINST    = OFF       // Extended Instruction Set
#pragma config CP0      = OFF
#pragma config CP1      = OFF
#pragma config CP2      = OFF
//#pragma config CP3      = OFF
#pragma config CPB      = OFF
#pragma config CPD      = OFF
#pragma config WRT0     = OFF
#pragma config WRT1     = OFF
#pragma config WRT2     = OFF
//#pragma config WRT3     = OFF
#pragma config WRTB     = ON       // Boot Block Write Protection
#pragma config WRTC     = OFF
#pragma config WRTD     = OFF
#pragma config EBTR0    = OFF
#pragma config EBTR1    = OFF
#pragma config EBTR2    = OFF
//#pragma config EBTR3    = OFF
#pragma config EBTRB    = OFF


/* --- type definitions ---------------------------------------------------- */
typedef unsigned char   byte;           // 8-bit
typedef unsigned int    word;           // 16-bit
typedef unsigned long   dword;          // 32-bit

#define InitLEDs()  LATE &= 0xFC; TRISE &= 0xFC;

#define LED1_On()	LATEbits.LATE0 = 1
#define LED1_Off()	LATEbits.LATE0 = 0


/* --- BEGIN: changes required for bootloader ------------------------------ */

extern void _startup (void);        // See c018i.c in your C18 compiler dir 
#pragma code _RESET_INTERRUPT_VECTOR = 0x000800 
void _reset (void) 
{ 
    _asm goto _startup _endasm 
} 
#pragma code 

#pragma code _HIGH_INTERRUPT_VECTOR = 0x000808 
void _high_ISR (void) 
{ 
    ; 
} 

#pragma code _LOW_INTERRUPT_VECTOR = 0x000818 
void _low_ISR (void) 
{ 
    ; 
}

/* --- END: changes required for bootloader -------------------------------- */


/* This pragma forces the code below this line to be put into the code */
/* section (memory address >= 0x82A). See linker script for details. */
#pragma code


/* ------------------------------------------------------------------------- */
/* delay                                                                     */
/* Delay function.                                                           */
/* ------------------------------------------------------------------------- */
void delay(void)
{
	int i;
	int j;
	for (j = 0; j < 10; j++)
    {
		for (i = 0; i < 30000; i++);
    }
}


/* ------------------------------------------------------------------------- */
/* main                                                                      */
/* Delay function.                                                           */
/* ------------------------------------------------------------------------- */
void main(void)
{
    ADCON1 |= 0x0F;

	InitLEDs();

	/* toggle I/0 pin */
    while(1)
	{
		LED1_On();
		delay();
		LED1_Off();
		delay();
	}
}