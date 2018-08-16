/**
  Generated Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This is the main file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.65.2
        Device            :  PIC12F1840
        Driver Version    :  2.00
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries.

    Subject to your compliance with these terms, you may use Microchip software and any
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party
    license terms applicable to your use of third party software (including open source software) that
    may accompany Microchip software.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS
    FOR A PARTICULAR PURPOSE.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS
    SOFTWARE.
*/

#include <pic.h>

//#include "mcc_generated_files/mcc.h"

// CONFIG1
#pragma config FOSC = INTOSC // Oscillator Selection->INTOSC oscillator: I/O function on CLKIN pin
#pragma config WDTE = OFF    // Watchdog Timer Enable->WDT disabled
#pragma config PWRTE = OFF   // Power-up Timer Enable->PWRT disabled
#pragma config MCLRE = ON    // MCLR Pin Function Select->MCLR/VPP pin function is MCLR
#pragma config CP = OFF      // Flash Program Memory Code Protection->Program memory code protection is disabled
#pragma config CPD = OFF     // Data Memory Code Protection->Data memory code protection is disabled
#pragma config BOREN = ON    // Brown-out Reset Enable->Brown-out Reset enabled
#pragma config CLKOUTEN =                                                                                              \
    OFF                   // Clock Out Enable->CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin
#pragma config IESO = ON  // Internal/External Switchover->Internal/External Switchover mode is enabled
#pragma config FCMEN = ON // Fail-Safe Clock Monitor Enable->Fail-Safe Clock Monitor is enabled

// CONFIG2
#pragma config WRT = OFF   // Flash Memory Self-Write Protection->Write protection off
#pragma config PLLEN = ON  // PLL Enable->4x PLL enabled
#pragma config STVREN = ON // Stack Overflow/Underflow Reset Enable->Stack Overflow or Underflow will cause a Reset
#pragma config BORV = LO // Brown-out Reset Voltage Selection->Brown-out Reset Voltage (Vbor), low trip point selected.
#pragma config LVP = ON  // Low-Voltage Programming Enable->Low-voltage programming enabled

void
OSCILLATOR_Initialize(void) {
  // SCS INTOSC; SPLLEN disabled; IRCF 4MHz_HF;
  OSCCON = 0x6A;
  // TUN 0;
  OSCTUNE = 0x00;
  // SBOREN disabled; BORFS disabled;
  BORCON = 0x00;
}

void
WDT_Initialize(void) {
  // WDTPS 1:65536; SWDTEN OFF;
  WDTCON = 0x16;
}

void
PIN_MANAGER_Initialize(void) {
  LATA = 0x00;

  TRISA = 0x3F;
  ANSELA = 0x17;
  WPUA = 0x00;
  OPTION_REGbits.nWPUEN = 1;
  APFCON = 0x00;
}

void
SYSTEM_Initialize(void) {

  PIN_MANAGER_Initialize();
  OSCILLATOR_Initialize();
  WDT_Initialize();
}

void __interrupt
isr() {
  uart_isr();
}

/*
                         Main application
 */
void
main(void) {
  // initialize the device
  SYSTEM_Initialize();

  // When using interrupts, you need to set the Global and Peripheral Interrupt Enable bits
  // Use the following macros to:

  // Enable the Global Interrupts
  GIE = 1;

  // Enable the Peripheral Interrupts
  PEIE = 1;

  // Disable the Global Interrupts
  // GIE = 0;

  // Disable the Peripheral Interrupts
  // PEIE = 0;

  uart_init();

  while(1) {
    if(RCIF) {
    }
    // Add your application code
  }
}
/**
 End of File
*/