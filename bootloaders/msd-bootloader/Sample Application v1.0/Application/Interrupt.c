/*********************************************************************
 *
 *                Sample Application Firmware
 *
 *********************************************************************
 * FileName:        Interrupt.c
 * Dependencies:    See INCLUDES section below
 * Processor:       PIC18
 * Compiler:        C18
 * Company:         Scene Double Ltd.
 * Author:			Ray Gordon
 * Version:			1.0
 * Date:			7/07/08
 *
 * Notes:			Interrupt Handlers
 *
 *
 ********************************************************************/

/** INCLUDES **/
#include "sample.h"  
             

/** GLOBAL VARIABLES **/
#pragma udata
volatile word Timer_800mS = 800;										// Global 800mS timer

/** PROTOTYPES **/
void Low_Priority_ISR (void);
void High_Priority_ISR (void);

/** VECTOR REMAPPING **/

#pragma code low_vector = REMAP_LOW_INTERRUPT_VECTOR
void lv_int(void)
{
	_asm GOTO Low_Priority_ISR _endasm
}

#pragma code high_vector = REMAP_HIGH_INTERRUPT_VECTOR
void hv_int(void)
{
	_asm GOTO High_Priority_ISR _endasm
}


#pragma code

/******************************************************************************
 * Function:        void Low_Priority_ISR(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Low priority 1mS ISR handler
  *					Increments general purpose 800mS timer
 *
 *****************************************************************************/

#pragma interruptlow Low_Priority_ISR
void Low_Priority_ISR()
{
	if(Timer_800mS)														// 800mS timeout reached?
		Timer_800mS--;													// No, so increment timer
	Timer_Flag_1mS = 0;													// Clear 1mS interrupt flag

}


/******************************************************************************
 * Function:        void High_Priority_ISR(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Null
 *
 *****************************************************************************/

#pragma interrupt High_Priority_ISR
void High_Priority_ISR()
{

}