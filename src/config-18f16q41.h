#ifndef CONFIG_18F16Q41_H
#define CONFIG_18F16Q41_H 1

#if defined(__XC) || defined(MCHP_XC8) || defined(SDCC)

// CONFIG1L
//#pragma config PLLSEL = PLL4X    // PLL Selection (4x clock multiplier)
//#pragma config CFGPLLEN = OFF    // PLL Enable Configuration bit (PLL Disabled (firmware controlled))
//#pragma config CPUDIV = NOCLKDIV // CPU System Clock Postscaler (CPU uses system clock (no divide))
//#pragma config LS48MHZ = SYS48X8 // Low Speed USB mode with 48 MHz system clock (System clock at 48 MHz, USB clock
// divider is set to 8)

// CONFIG1H
#if(XTAL_USED == NO_XTAL)
#warning NO_XTAL

//#pragma config FOSC = INTOSCIO
#else
#pragma config FOSC = HSH
#endif
//#pragma config PCLKEN = OFF // Primary Oscillator Shutdown (Primary oscillator shutdown firmware controlled)
#pragma config FCMEN = OFF // Fail-Safe Clock Monitor (Fail-Safe Clock Monitor disabled)
//#pragma config IESO = OFF   // Internal/External Oscillator Switchover (Oscillator Switchover mode disabled)

// CONFIG2L
//#pragma config nPWRTEN = ON // Power-up Timer Enable (Power up timer enabled)
#pragma config BOREN = ON // Brown-out Reset Enable (BOR controlled by firmware (SBOREN is enabled))
//#pragma config BORV = 285   // Brown-out Reset Voltage (BOR set to 2.85V nominal)
//#pragma config nLPBOR = ON  // Low-Power Brown-out Reset (Low-Power Brown-out Reset enabled)

// CONFIG2H
//#pragma config WDTEN = SWON // Watchdog Timer Enable bits (WDT controlled by firmware (SWDTEN enabled))
//#pragma config WDTPS = 256  // Watchdog Timer Postscaler (1:256)

// CONFIG3H
//#pragma config CCP2MX = RC1 // CCP2 MUX bit (CCP2 input/output is multiplexed with RC1)
//#pragma config PBADEN = OFF // PORTB A/D Enable bit (PORTB<5:0> pins are configured as digital I/O on Reset)
//#pragma config T3CMX = RC0  // Timer3 Clock Input MUX bit (T3CKI function is on RC0)
//#pragma config SDOMX = RB3  // SDO Output MUX bit (SDO function is on RB3)
#ifdef USE_MCLRE
//#pragma config MCLRE = ON
#else
#pragma config MCLRE = OFF
#endif

// CONFIG4L
#pragma config STVREN = ON // Stack Full/Underflow Reset (Stack full/underflow will cause Reset)
#ifdef USE_LVP
#pragma config LVP = ON
#else
#pragma config LVP = OFF
#endif
//#pragma config ICPRT = OFF // Dedicated In-Circuit Debug/Programming Port Enable (ICPORT disabled)
#pragma config XINST =                                                                                                 \
    OFF // Extended Instruction Set Enable bit (Instruction set extension and Indexed Addressing mode disabled)

// CONFIG5L
//#pragma config CP0 = OFF // Block 0 Code Protect (Block 0 is not code-protected)
//#pragma config CP1 = OFF // Block 1 Code Protect (Block 1 is not code-protected)
#if !defined(_18F24K50)
//#pragma config CP2 = OFF // Block 2 Code Protect (Block 2 is not code-protected)
//#pragma config CP3 = OFF // Block 3 Code Protect (Block 3 is not code-protected)
#endif

// CONFIG5H
//#pragma config CPB = OFF // Boot Block Code Protect (Boot block is not code-protected)
//#pragma config CPD = OFF // Data EEPROM Code Protect (Data EEPROM is not code-protected)

// CONFIG6L

#ifndef DEBUG
//#pragma config WRT0 = ON // Block 0 Write Protect (Block 0 (0800-1FFFh) is write-protected)
#endif
//#pragma config WRT1 = OFF // Block 1 Write Protect (Block 1 (2000-3FFFh) is not write-protected)
#if !defined(_18F24K50)
//#pragma config WRT2 = OFF // Block 2 Write Protect (Block 2 (04000-5FFFh) is not write-protected)
//#pragma config WRT3 = OFF // Block 3 Write Protect (Block 3 (06000-7FFFh) is not write-protected)
#endif

// CONFIG6H
#ifndef DEBUG
#pragma config WRTC =                                                                                                  \
    ON // Configuration Registers Write Protect (Configuration registers (300000-3000FFh) are write-protected)
#pragma config WRTB = ON // Boot Block Write Protect (Boot block (0000-7FFh) is write-protected)
#endif
#pragma config WRTD = OFF // Data EEPROM Write Protect (Data EEPROM is not write-protected)

// CONFIG7L
//#pragma config EBTR0 = OFF // Block 0 Table Read Protect (Block 0 is not protected from table reads executed in other
// blocks) #pragma config EBTR1 = OFF // Block 1 Table Read Protect (Block 1 is not protected from table reads executed
// in other blocks)
#if !defined(_18F24K50)
//#pragma config EBTR2 = OFF // Block 2 Table Read Protect (Block 2 is not protected from table reads executed in other
// blocks) #pragma config EBTR3 = OFF // Block 3 Table Read Protect (Block 3 is not protected from table reads executed
// in other blocks)
#endif

// CONFIG7H
//#pragma config EBTRB = OFF // Boot Block Table Read Protect (Boot block is not protected from table reads executed in
// other blocks)

#ifndef SDCC
//#pragma config nPWRTEN = ON
#endif

/*#pragma config BOREN = ON, BORV = 285
#pragma config WDTEN = OFF
#pragma config STVREN = OFF, LVP = OFF
#pragma config CP0 = OFF, CP1 = OFF, CP2 = OFF, CP3 = OFF
#pragma config CPB = OFF, CPD = OFF
#pragma config WRT0 = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF
#pragma config WRTB = OFF, WRTC = OFF, WRTD = OFF
#pragma config EBTR0 = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF
#pragma config EBTRB = OFF

#pragma config XINST = OFF
#ifdef _DEBUG
#pragma config DEBUG = ON
#endif
*/
#elif defined(__XC)

__CONFIG(1, FOSC_XT& FCMEN_ON);
__CONFIG(2, nPWRTEN_ON& WDTEN_OFF);
__CONFIG(3, PBADEN_OFF& MCLRE_ON);
__CONFIG(4, STVREN_ON);
//__CONFIG(5, CPB_ON & CPD_OFF);
__CONFIG(6, WRTC_ON& WRTB_ON& WRTD_OFF);
__CONFIG(7, EBTR0_OFF& EBTR1_OFF& EBTR2_OFF& EBTR3_OFF);

#elif defined(HI_TECH_C)
#include <pic18fregs.h>

__CONFIG(__CONFIG1L, 0xFFFF);
__CONFIG(__CONFIG1H, _FOSC_HS_1H& _FCMEN_ON_1H& _IESO_OFF_1H);
__CONFIG(__CONFIG4L, _XINST_ON_4L& _STVREN_ON_4L& _DEBUG_ON_4L& _LVP_OFF_4L);

#endif

#endif // defined CONFIG_18F16Q41_H
