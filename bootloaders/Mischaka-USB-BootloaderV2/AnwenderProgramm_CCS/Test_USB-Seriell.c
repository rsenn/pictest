// USB-RS232-Wandler Baudrate 115200 kBit/s

#include <18F2550.h>
#include "Mischaka.h"
#Bit TRMT=0xFAC.1       // bleibt 0 solange RS232 beschäftigt ist

#use delay(clock=48000000)
#use rs232(baud=115200,parity=N,xmit=PIN_C6,rcv=PIN_C7,bits=8)

void main()
{
    char a;
    while(1)
    {
        if(USB_RCIF)            // wenn USB-Seite ein Zeichen empfangen hat dann,
        {
            a=USB_Char_empf();  // Zeichen einlesen
            while(!TRMT);       // Warten bis RS232-Sendepuffer frei ist
            putc(a);            // Zeichen über RS232 senden
        }

        if(kbhit())             // wenn RS232-Seite ein Zeichen empfangen hat dann,
        {
            a=getc();           // Zeichen einlesen und
            USB_Char_send(a);   // Über USB senden
        }
    } // ende der Hauptschleife
}
