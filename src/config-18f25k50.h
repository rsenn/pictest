#ifndef CONFIG_18F25K50_H
#define CONFIG_18F25K50_H 1

/* Config bit settings match ../USB-Stack/USB_Stack/Examples/CDC_Examples/
   CDC_Serial_Example.X exactly -- confirmed byte-for-byte via piccfg
   against that project's own built, hardware-tested
   dist/PIC18F25K50/production/*.hex (2026-09-02). A single #pragma
   config block covers every compiler this project builds with for this
   chip: both XC8 flavors (legacy v1.x and modern v2.x/v4.x -- both
   define __XC) and SDCC (__SDCC__) all accept this same pragma syntax.
   (An earlier version of this file also carried a second, __CONFIG()-
   based branch guarded by `#elif defined(__XC)` -- always unreachable,
   since `defined(__XC)` was already true in the first branch's own
   condition -- and a third HI_TECH_C branch never exercised by this
   project's actual toolchains. Both removed as dead code.) */
#if defined(__XC) || defined(MCHP_XC8) || defined(__SDCC__) || defined(__XC__)

// CONFIG1L
#pragma config PLLSEL = PLL4X    // PLL Selection (4x clock multiplier)
#pragma config CFGPLLEN = OFF    // PLL Enable Configuration bit (PLL Disabled (firmware controlled))
#pragma config CPUDIV = NOCLKDIV // CPU System Clock Postscaler (CPU uses system clock (no divide))
#pragma config LS48MHZ = SYS48X8 // Low Speed USB mode with 48 MHz system clock (System clock at 48 MHz, USB clock divider is set to 8)

// CONFIG1H
#if (XTAL_USED == NO_XTAL)
#warning NO_XTAL
#pragma config FOSC = INTOSCIO
#else
#pragma config FOSC = HSH
#endif
#pragma config PCLKEN = OFF // Primary Oscillator Shutdown (Primary oscillator shutdown firmware controlled)
#pragma config FCMEN = OFF  // Fail-Safe Clock Monitor (Fail-Safe Clock Monitor disabled)
#pragma config IESO = OFF   // Internal/External Oscillator Switchover (Oscillator Switchover mode disabled)

// CONFIG2L
#pragma config BOREN = ON // Brown-out Reset Enable (BOR controlled by firmware (SBOREN is enabled))
#pragma config BORV = 285 // Brown-out Reset Voltage (BOR set to 2.85V nominal)

// CONFIG2H
#pragma config WDTEN = SWON // Watchdog Timer Enable bits (WDT controlled by firmware (SWDTEN enabled))
#pragma config WDTPS = 256  // Watchdog Timer Postscaler (1:256)

// CONFIG3H
// RC1/RC0/RB3 collide with device.h's port-bit macros (RC1 ->
// PORTCbits.RC1 etc) -- undef them just for these config values, then
// restore so the rest of this translation unit still gets the port bits.
#undef RC1
#undef RC0
#undef RB3
#pragma config CCP2MX = RC1 // CCP2 MUX bit (CCP2 input/output is multiplexed with RC1)
#pragma config PBADEN = OFF // PORTB A/D Enable bit (PORTB<5:0> pins are configured as digital I/O on Reset)
#pragma config T3CMX = RC0  // Timer3 Clock Input MUX bit (T3CKI function is on RC0)
#pragma config SDOMX = RB3  // SDO Output MUX bit (SDO function is on RB3)
#define RC1 PORTCbits.RC1
#define RC0 PORTCbits.RC0
#define RB3 PORTBbits.RB3
#ifdef USE_MCLRE
#pragma config MCLRE = ON
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
#pragma config ICPRT = OFF // Dedicated In-Circuit Debug/Programming Port Enable (ICPORT disabled)
#pragma config XINST = OFF // Extended Instruction Set Enable bit (Instruction set extension and Indexed Addressing mode disabled)

// CONFIG5L
#pragma config CP0 = OFF // Block 0 Code Protect (Block 0 is not code-protected)
#pragma config CP1 = OFF // Block 1 Code Protect (Block 1 is not code-protected)
#if !defined(_18F24K50)
#pragma config CP2 = OFF // Block 2 Code Protect (Block 2 is not code-protected)
#pragma config CP3 = OFF // Block 3 Code Protect (Block 3 is not code-protected)
#endif

// CONFIG5H
#pragma config CPB = OFF // Boot Block Code Protect (Boot block is not code-protected)
#pragma config CPD = OFF // Data EEPROM Code Protect (Data EEPROM is not code-protected)

// CONFIG6L
#ifndef DEBUG
#pragma config WRT0 = ON // Block 0 Write Protect (Block 0 (0800-1FFFh) is write-protected)
#endif
#pragma config WRT1 = OFF // Block 1 Write Protect (Block 1 (2000-3FFFh) is not write-protected)
#if !defined(_18F24K50)
#pragma config WRT2 = OFF // Block 2 Write Protect (Block 2 (04000-5FFFh) is not write-protected)
#pragma config WRT3 = OFF // Block 3 Write Protect (Block 3 (06000-7FFFh) is not write-protected)
#endif

// CONFIG6H
#ifndef DEBUG
#pragma config WRTC = ON // Configuration Registers Write Protect (Configuration registers (300000-3000FFh) are write-protected)
#pragma config WRTB = ON // Boot Block Write Protect (Boot block (0000-7FFh) is write-protected)
#endif
#pragma config WRTD = OFF // Data EEPROM Write Protect (Data EEPROM is not write-protected)

// CONFIG7L
#pragma config EBTR0 = OFF // Block 0 Table Read Protect (Block 0 is not protected from table reads executed in other blocks)
#pragma config EBTR1 = OFF // Block 1 Table Read Protect (Block 1 is not protected from table reads executed in other blocks)
#if !defined(_18F24K50)
#pragma config EBTR2 = OFF // Block 2 Table Read Protect (Block 2 is not protected from table reads executed in other blocks)
#pragma config EBTR3 = OFF // Block 3 Table Read Protect (Block 3 is not protected from table reads executed in other blocks)
#endif

// CONFIG7H
#pragma config EBTRB = OFF // Boot Block Table Read Protect (Boot block is not protected from table reads executed in other blocks)

#ifndef __SDCC__
#pragma config nLPBOR = ON
#pragma config nPWRTEN = ON
#else
#pragma config LPBOR = ON
#pragma config PWRTEN = ON
#endif

#endif // defined(__XC) || defined(MCHP_XC8) || defined(__SDCC__) || defined(__XC__)

#endif // defined CONFIG_18F25K50_H
