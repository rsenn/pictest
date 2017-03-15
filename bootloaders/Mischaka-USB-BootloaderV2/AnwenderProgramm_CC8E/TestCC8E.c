#include <18F2550.h>
#include<hexcodes.h>
#pragma rambank 1
#pragma bit Terminal @ 0x7A.1        // Ist ein empfangsprogramm am PC gestartet? Wenn ja wird 1
#pragma bit USB_RCIF @ 0x7C.0        // Wird 1 wen ein zeichen über USB empfangen wurde
#pragma char USB_Verbunden @ 0x1A  // USB Status

#pragma origin 0x0E32      //
void USB_Reset()
{
}
#pragma origin 0x0E7A      //
void USB_Verbinde(void)
{

}


#pragma origin 0x0F08     // An dieser stelle befindet sich Unterprogramm zum senden eines Zeichens über USB
void USB_Char_send(void)  // So heist diese Unterprogramm in unserem Programm
{

}

char W1   @ 0x001;
char USBout @ 0x0CE;

#pragma origin 0x0F2A          //Dummy Empfangen eines Zeichens
char USB_Char_empf(void)
{
return 1;
}

//#pragma resetVector 0x1140

#pragma origin 0x1200
void main(void)
{

    BRGH=0;
    SPBRG=2; // (115200 baud @ 48MHz input clock)
    SPEN = 1; //  Set_Serial_Pins;
    TXSTA.4 = 0; //Dann eben so ;)
    TX9 = 0; //  Set_8bit_Tx;
    RX9 = 0; //  Set_8bit_Rx;
    CREN = 1; //  Enable_Rx;
    TXEN = 1; //  Enable_Tx;
 

while(1)
{
char c;
char tabelle1[254];
#pragma rambank 2
char tabelle2[256];
#pragma rambank 1
char n;

tabelle1[2]=0;
tabelle2[2]=0;
n=5;
#asm
    CLRF BSR   
#endasm
USB_Char_empf();
c=W1;
//TXREG ='b';

if (c==0x80)      //Wenn sich der Bootloader meldet
{  
#asm
CLRF BSR
DW __GOTO(0x1002)      
#endasm
}            

//    while(!TXIF);       // Pruefen ob register TXREG leher ist
//    TXREG =c ;         // Datenbyte senden
#asm
      CLRF BSR     
#endasm
USBout=c;
USB_Char_send() ;    
   
}
}     