// Aufbau der USB -Verbindung mit dem Mischaka-USB-Bootloader

// Das wird gebraucht wenn PIC startet ohne dabei an USB angeschlossen zu sein.
// Dann ist keine USB-Verbindung vom Bootloader aufgebaut

// Funktion dieses Programms kann mit USB_Comport_Suche.exe geprüft werden. 


#include <18F2550.h>
#include "Mischaka.h"

#use delay(clock=48000000)
#use rs232(baud=115200,parity=N,xmit=PIN_C6,rcv=PIN_C7,bits=8)

void main()
{
    char a;
    USB_Reset();    // Schaltet USB ab
    printf("Testprogramm USB Restart\n\r");// Sende an USART

    DELAY_MS(10000);   //Wartet 10sek

    while(!USB_Verbunden) USB_Verbinde(); // Baut USB-Verbindung auf

    while(1)
    {
        a=USB_Char_empf();         //Empange ein zeichen über USB
        if (a==0x80)       //Wenn sich der Bootloader meldet
        {
            #asm
            goto 0x1002    //Bootloader starten
            #endasm
        }
    }
}
