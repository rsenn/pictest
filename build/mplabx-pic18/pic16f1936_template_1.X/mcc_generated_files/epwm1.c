/**
  EPWM1 Generated Driver File

  @Company
    Microchip Technology Inc.

  @File Name
    epwm1.c

  @Summary
    This is the generated driver implementation file for the EPWM1 driver using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This source file provides implementations for driver APIs for EPWM1.
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
#include "epwm1.h"

/**
  Section: Macro Declarations
*/

#define PWM1_INITIALIZE_DUTY_VALUE    0

/**
  Section: EPWM Module APIs
*/

void EPWM1_Initialize(void)
{
    // Set the EPWM1 to the options selected in the User Interface
	
	// CCP1M P1A,P1C: active high; P1B,P1D: active high; DC1B 0; P1M single; 
	CCP1CON = 0x0C;    
	
	// CCP1ASE operating; PSS1BD0 low; PSS1AC0 low; CCP1AS0 disabled; 
	ECCP1AS = 0x00;    
	
	// P1RSEN automatic_restart; P1DC0 0; 
	PWM1CON = 0x80;    
	
	// STR1D P1D_to_port; STR1C P1C_to_port; STR1B P1B_to_port; STR1A P1A_to_CCP1M; STR1SYNC start_at_begin; 
	PSTR1CON = 0x01;    
	
	// CCPR1H 0; 
	CCPR1H = 0x00;    
	
	// CCPR1L 0; 
	CCPR1L = 0x00;    

	// Selecting CCPTMRS0
	CCPTMRS0bits.C1TSEL = 0x0;
}

void EPWM1_LoadDutyValue(uint16_t dutyValue)
{
   // Writing to 8 MSBs of pwm duty cycle in CCPRL register
    CCPR1L = ((dutyValue & 0x03FC)>>2);
    
   // Writing to 2 LSBs of pwm duty cycle in CCPCON register
    CCP1CON = ((uint8_t)(CCP1CON & 0xCF) | ((dutyValue & 0x0003)<<4));
}
/**
 End of File
*/

