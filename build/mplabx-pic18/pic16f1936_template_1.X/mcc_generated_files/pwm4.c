/**
  PWM4 Generated Driver File

  @Company
    Microchip Technology Inc.

  @File Name
    pwm4.c

  @Summary
    This is the generated driver implementation file for the PWM4 driver using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This source file provides implementations for driver APIs for PWM4.
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
#include "pwm4.h"

/**
  Section: Macro Declarations
*/

#define PWM4_INITIALIZE_DUTY_VALUE 0

/**
  Section: PWM Module APIs
*/

void
PWM4_Initialize(void) {
  // Set the PWM4 to the options selected in the User Interface

  // CCP4M PWM; DC4B 0;
  CCP4CON = 0x0C;

  // CCPR4L 0;
  CCPR4L = 0x00;

  // CCPR4H 0;
  CCPR4H = 0x00;

  // Selecting Timer 2
  CCPTMRS0bits.C4TSEL = 0x0;
}

void
PWM4_LoadDutyValue(uint16_t dutyValue) {
  // Writing to 8 MSBs of pwm duty cycle in CCPRL register
  CCPR4L = ((dutyValue & 0x03FC) >> 2);

  // Writing to 2 LSBs of pwm duty cycle in CCPCON register
  CCP4CON = ((uint8_t)(CCP4CON & 0xCF) | ((dutyValue & 0x0003) << 4));
}

/**
 End of File
*/
