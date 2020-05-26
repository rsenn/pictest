/**
  PWM5 Generated Driver File

  @Company
    Microchip Technology Inc.

  @File Name
    pwm5.c

  @Summary
    This is the generated driver implementation file for the PWM5 driver using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This source file provides implementations for driver APIs for PWM5.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.0
        Device            :  PIC16F1936
        Driver Version    :  2.01
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.10 and above
         MPLAB 	          :  MPLAB X 5.35
*/

/**
  Section: Included Files
*/

#include <xc.h>
#include "pwm5.h"

/**
  Section: Macro Declarations
*/

#define PWM5_INITIALIZE_DUTY_VALUE 0

/**
  Section: PWM Module APIs
*/

void
PWM5_Initialize(void) {
  // Set the PWM5 to the options selected in the User Interface

  // CCP5M PWM; DC5B 0;
  CCP5CON = 0x0C;

  // CCPR5L 0;
  CCPR5L = 0x00;

  // CCPR5H 0;
  CCPR5H = 0x00;

  // Selecting Timer 2
  CCPTMRS1bits.C5TSEL = 0x0;
}

void
PWM5_LoadDutyValue(uint16_t dutyValue) {
  // Writing to 8 MSBs of pwm duty cycle in CCPRL register
  CCPR5L = ((dutyValue & 0x03FC) >> 2);

  // Writing to 2 LSBs of pwm duty cycle in CCPCON register
  CCP5CON = ((uint8_t)(CCP5CON & 0xCF) | ((dutyValue & 0x0003) << 4));
}

/**
 End of File
*/
