#ifndef CONFIG_12F1840_H
#define CONFIG_12F1840_H 1

#if defined(__XC) || defined(MCHP_XC8) || defined(XC8)

// Word CONFIG1 @ 0x8007

#pragma config FOSC = INTOSC  // Oscillator Selection [ ECH | ECL | ECM | EXTRC | HS | INTOSC | LP | OF | ON | XT ]
#pragma config WDTE = OFF     // Watchdog Timer Enable [ NSLEEP | OFF | ON | SWDTEN ]
#pragma config PWRTE = ON     // Power-up Timer Enable [ OFF | ON   ]
#pragma config MCLRE = OFF    // MCLR Pin Function Select [ OFF | ON   ]
#pragma config CP = OFF       // Flash Program Memory Code Protection [ OFF | ON   ]
#pragma config CPD = OFF      // Data Memory Code Protection [ OFF | ON   ]
#pragma config BOREN = ON     // Brown-out Reset Enable [ NSLEEP | OFF | ON | SBODEN ]
#pragma config CLKOUTEN = OFF // Clock Out Enable [ OFF | ON   ]
#pragma config IESO = OFF     // Internal/External Switchover [ OFF | ON   ]

// Word CONFIG2 @ 0x8008

#pragma config FCMEN = OFF // Fail-Safe Clock Monitor Enable [ OFF | ON   ]
#pragma config WRT = OFF   // Flash Memory Self-Write Protection [ ALL | BOOT | HALF | OFF ]
#pragma config PLLEN = OFF // PLL Enable [ OFF | ON   ]
#pragma config STVREN = ON // Stack Overflow/Underflow Reset Enable [ OFF | ON   ]
#pragma config BORV = LO   // Brown-out Reset Voltage Selection [ HI | LO    ]

#elif defined(__SDCC__) || defined(SDCC)
#define _CONFIG1 0x8007

#define _FOSC_LP 0x3FF8      // LP Oscillator, Low-power crystal connected between OSC1 and OSC2 pins.
#define _FOSC_XT 0x3FF9      // XT Oscillator, Crystal/resonator connected between OSC1 and OSC2 pins.
#define _FOSC_HS 0x3FFA      // HS Oscillator, High-speed crystal/resonator connected between OSC1 and OSC2 pins.
#define _FOSC_EXTRC 0x3FFB   // EXTRC oscillator: External RC circuit connected to CLKIN pin.
#define _FOSC_INTOSC 0x3FFC  // INTOSC oscillator: I/O function on CLKIN pin.
#define _FOSC_ECL 0x3FFD     // ECL, External Clock, Low Power Mode (0-0.5 MHz): device clock supplied to CLKIN pin.
#define _FOSC_ECM 0x3FFE     // ECM, External Clock, Medium Power Mode (0.5-4 MHz): device clock supplied to CLKIN pin.
#define _FOSC_ECH 0x3FFF     // ECH, External Clock, High Power Mode (4-32 MHz): device clock supplied to CLKIN pin.
#define _WDTE_OFF 0x3FE7     // WDT disabled.
#define _WDTE_SWDTEN 0x3FEF  // WDT controlled by the SWDTEN bit in the WDTCON register.
#define _WDTE_NSLEEP 0x3FF7  // WDT enabled while running and disabled in Sleep.
#define _WDTE_ON 0x3FFF      // WDT enabled.
#define _PWRTE_ON 0x3FDF     // PWRT enabled.
#define _PWRTE_OFF 0x3FFF    // PWRT disabled.
#define _MCLRE_OFF 0x3FBF    // MCLR/VPP pin function is digital input.
#define _MCLRE_ON 0x3FFF     // MCLR/VPP pin function is MCLR.
#define _CP_ON 0x3F7F        // Program memory code protection is enabled.
#define _CP_OFF 0x3FFF       // Program memory code protection is disabled.
#define _CPD_ON 0x3EFF       // Data memory code protection is enabled.
#define _CPD_OFF 0x3FFF      // Data memory code protection is disabled.
#define _BOREN_OFF 0x39FF    // Brown-out Reset disabled.
#define _BOREN_SBODEN 0x3BFF // Brown-out Reset controlled by the SBOREN bit in the BORCON register.
#define _BOREN_NSLEEP 0x3DFF // Brown-out Reset enabled while running and disabled in Sleep.
#define _BOREN_ON 0x3FFF     // Brown-out Reset enabled.
#define _CLKOUTEN_ON 0x37FF  // CLKOUT function is enabled on the CLKOUT pin.
#define _CLKOUTEN_OFF 0x3FFF // CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin.
#define _IESO_OFF 0x2FFF     // Internal/External Switchover mode is disabled.
#define _IESO_ON 0x3FFF      // Internal/External Switchover mode is enabled.
#define _FCMEN_OFF 0x1FFF    // Fail-Safe Clock Monitor is disabled.
#define _FCMEN_ON 0x3FFF     // Fail-Safe Clock Monitor is enabled.

static __code char __at(_CONFIG1) configword1 = 0x3fff; //_FOSC_INTOSC & _WDTE_OFF & _PWRTE_ON & _MCLRE_OFF & _CP_OFF & _CPD_OFF                                                & _BOREN_ON & _CLKOUTEN_OFF & _IESO_OFF & _FCMEN_OFF;
static __code char __at(_CONFIG2) configword2 = 0x3fff; //_FOSC_INTOSC & _WDTE_OFF & _PWRTE_ON & _MCLRE_OFF & _CP_OFF & _CPD_OFF                                                & _BOREN_ON & _CLKOUTEN_OFF & _IESO_OFF & _FCMEN_OFF;

#pragma config FOSC = INTOSC, WDTE = OFF, PWRTE = ON, MCLRE = OFF, CP = OFF, CPD = OFF, BOREN = ON, CLKOUTEN = OFF,    \
               IESO = OFF, FCMEN = OFF, WRT = OFF, PLLEN = OFF, STVREN = ON, BORV = LO, LVP = OFF

#elif defined(HI_TECH_C)

__CONFIG(1, FOSC_INTOSC& WDTE_OFF& PWRTE_ON& MCLRE_OFF& BOREN_ON& CP_OFF& CPD_OFF& CLKOUTEN_OFF);
__CONFIG(2, BORV_LO& WRT_OFF);

#endif

#endif // defined CONFIG_12F1840_H
