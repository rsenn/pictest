
//==============================================================================
// PIC18F2550 Application Template (USB Bootloader)
//==============================================================================

//device definition header file
//========================
#include <p18f2550.h>

//define
//=================================
//#define LED1	LATBbits.LATB5				
#define LED1	LATBbits.LATB6
#define LED2	LATBbits.LATB7				
	
//function prototype
//=================================
void Delay100TCYx(unsigned char unit);		//C18 built-in delay function
void Delay10TCYx(unsigned char unit);
void Delay1KTCYx(unsigned char unit);
void Delay10KTCYx(unsigned char unit);

void HighPriorityISRCode();					//interrupt function prototype
void LowPriorityISRCode();

//remap reset and interrupt vector
//=================================
extern void _startup (void);        // See c018i.c in your C18 compiler dir
#pragma code REMAPPED_RESET_VECTOR = 0x1000				//remap reset vector to 0x1100
void _reset (void)
{
    _asm goto _startup _endasm
}
#pragma code REMAPPED_HIGH_INTERRUPT_VECTOR = 0x1008	//remap High Interrupt vector to 0x1108
void Remapped_High_ISR (void)
{
    _asm goto HighPriorityISRCode _endasm
}
#pragma code REMAPPED_LOW_INTERRUPT_VECTOR = 0x1018		//remap Low Interrupt vector to 0x1118
void Remapped_Low_ISR (void)
{
     _asm goto LowPriorityISRCode _endasm
}
#pragma code
	
//==============================================================================
//main function
//==============================================================================
void main(void)
{
	//init TRIS
	TRISBbits.TRISB4=0;
	TRISBbits.TRISB5=0;
	TRISBbits.TRISB6=0;
	TRISBbits.TRISB7=0;

	//infinity loop
	while(1)
	{
		LED1=1;				//simple LED Blinking
		LED2=1;				//simple LED Blinking
		Delay10KTCYx(250);
		Delay10KTCYx(250);
		LED1=0;
		LED2=0;
		Delay10KTCYx(250);
		Delay10KTCYx(250);
			
	}		

}//
	
//==============================================================================
//	interrupt function
//==============================================================================
#pragma interrupt HighPriorityISRCode
void HighPriorityISRCode()
{
	
}	//This return will be a "retfie fast", since this is in a #pragma interrupt section 

#pragma interruptlow LowPriorityISRCode
void LowPriorityISRCode()
{

}	//This return will be a "retfie", since this is in a #pragma interruptlow section 
	