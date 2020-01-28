/*****************************************************************************/
/*   18F4550 Application Demo for usage of MCHPUSB Bootloader                */
/*                                                                           */
/*   Author:   Christian Stadler                                             */
/*   Date:     18.08.2010                                                    */
/*   Version:  1.0                                                           */
/*                                                                           */
/*   Purpose:  Demo application for usage of MCHPUSB bootloader to show the  */
/*             special requirements of an application which shall be flashed */
/*             via Microchip MCHPUSB bootloader.                             */
/*                                                                           */
/*             Requirements for bootloader:                                  */
/*             - reserve boot block area (0x000-0x7FF)                       */
/*             - map reset vector from 0x000 to 0x800                        */
/*             - map interrupt vector from 0x008 to 0x808                    */
/*                                                                           */
/*             The demo application itself is very simple. It just toggles   */
/*             an I/O pin based a counter derived from Timer1 interrupt.     */
/*                                                                           */
/*****************************************************************************/

/* make compiler case sensitive */
#pragma case

/* --- configuration bits -------------------------------------------------- */
#include <18F4550.h>
#device adc = 8

#FUSES NOWDT      // No Watch Dog Timer
#FUSES WDT128     // Watch Dog Timer uses 1:128 Postscale
#FUSES HSPLL      // High Speed Crystal/Resonator with PLL enabled
#FUSES NOPROTECT  // Code not protected from reading
#FUSES NOBROWNOUT // No brownout reset
#FUSES BORV20     // Brownout reset at 2.0V
#FUSES NOPUT      // No Power Up Timer
#FUSES NOCPD      // No EE protection
#FUSES STVREN     // Stack full/underflow will cause reset
#FUSES NODEBUG    // No Debug mode for ICD
#FUSES NOLVP      // No low voltage prgming, B3(PIC16) or B5(PIC18) used for I/O
#FUSES NOWRT      // Program memory not write protected
#FUSES NOWRTD     // Data EEPROM not write protected
#FUSES IESO       // Internal External Switch Over mode enabled
#FUSES FCMEN      // Fail-safe clock monitor enabled
#FUSES PBADEN     // PORTB pins are configured as analog input channels on RESET
#FUSES NOWRTC     // configuration not registers write protected
#FUSES NOWRTB     // Boot block not write protected
#FUSES NOEBTR     // Memory not protected from table reads
#FUSES NOEBTRB    // Boot block not protected from table reads
#FUSES NOCPB      // No Boot Block code protection
#FUSES MCLR       // Master Clear pin enabled
#FUSES LPT1OSC    // Timer1 configured for low-power operation
#FUSES NOXINST    // Extended set extension and Indexed Addressing mode disabled (Legacy mode)
#FUSES PLL3       // Divide By 12(48MHz oscillator input)
#FUSES CPUDIV2    // System Clock by 2
#FUSES USBDIV     // USB clock source comes from PLL divide by 2
#FUSES VREGEN     // USB voltage regulator enabled
#FUSES ICPRT      // ICPRT enabled

/* systm clock is 48 MHz */
#use delay(clock = 48000000, RESTART_WDT)

/* --- BEGIN: changes required for bootloader ------------------------------ */

/* ------------------------------------------------------------------------- */
/* map reset vector and interrupt vector                                     */
/* 0x000-0x7FF is used by the bootloader. The bootloader maps the original   */
/* reset vecotr (0x000) to 0x800 and the reset vector (0x008) to 0x800.      */
/* ------------------------------------------------------------------------- */
#build(reset = 0x800, interrupt = 0x808)

/* ------------------------------------------------------------------------- */
/* reserve boot block area                                                   */
/* This memory range is used by the bootloader, so the application must not  */
/* use this area.                                                            */
/* ------------------------------------------------------------------------- */
#org 0, 0x7FF {}

/* --- END: changes required for bootloader -------------------------------- */

/* timer 1 reload value (@ 48MHz) to get a 1ms interrupt on timer 1 overflow */
/* => CPU clock = 48MHz => instruction cycle = 83ns => prescaler = 1:        */
/*    reload value = 0xFFFF - (1ms / 83ns) */
#define TIMER1_RELOAD_VAL (0xFFFF - (1000000 / 83))

/* 1ms counter derived from Timer1 interrupt */
static int16 cnt_1ms = 0;

/* ------------------------------------------------------------------------- */
/* isr_timer1                                                                */
/* Timer1 overflow interrupt service routine. Increments 1ms counter.        */
/* ------------------------------------------------------------------------- */
#INT_TIMER1
void
isr_timer1(void) {
  /* reload timer 1 */
  set_timer1(TIMER1_RELOAD_VAL);

  cnt_1ms++;
}

/* ------------------------------------------------------------------------- */
/* main                                                                      */
/* Toggles I/O pin                                                           */
/* ------------------------------------------------------------------------- */
void
main() {
  setup_adc_ports(NO_ANALOGS | VSS_VDD);
  setup_adc(ADC_OFF);
  setup_psp(PSP_DISABLED);
  setup_spi(SPI_SS_DISABLED);
  setup_wdt(WDT_OFF);
  setup_timer_0(RTCC_INTERNAL);
  setup_timer_1(T1_DISABLED);
  setup_timer_2(T2_DISABLED, 0, 1);
  setup_timer_3(T3_DISABLED | T3_DIV_BY_1);
  setup_comparator(NC_NC_NC_NC);
  setup_vref(FALSE);

  /* init timer 1 as 1ms timer */
  setup_timer_1(T1_INTERNAL | T1_DIV_BY_1);
  set_timer1(TIMER1_RELOAD_VAL);

  /* enable interrupts */
  enable_interrupts(GLOBAL);
  enable_interrupts(INT_TIMER1);

  while(TRUE) {
    /* toggle I/0 pin every second */
    if(cnt_1ms < 1000) {
      output_low(PIN_E0);
    } else if(cnt_1ms < 2000) {
      output_high(PIN_E0);
    } else {
      cnt_1ms = 0;
    }
  }
}
