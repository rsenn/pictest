// Grundgerüst des Programms mit Interrupts zum nutzen des Mischaka-USB-Bootloaders

#include <18F2550.h>
#include "Mischaka.h"

#bit TMR0IF=0xFF2.2
char a;

#use delay(clock=48000000)
#use rs232(baud=115200,parity=N,xmit=PIN_C6,rcv=PIN_C7,bits=8)

#INT_GLOBAL         // Alle Iterrupts hirher, Registern sind vom Btldr. schon gesichert
void Interrupts (void)
{
    if (TMR0IF)             // Wenn es Timer0 gewesen war
    {
        putc(a);            // sende über RS232 inhalt der "a"-Variable
        disable_interrupts(INT_Timer0);//Timer0-Interrupt wieder auschalten
        TMR0IF=0;           //   Int-Flag löschen
    }
/*
Hier können andere Iterruptrutienen stehen
*/
            #asm            // Wieder zum Btldr.  Registern wider herstellen.
            goto 0x5C    
            #endasm
}

void main()
{

    setup_timer_0(RTCC_INTERNAL);
    printf("Testprogramm Gestartet\n\r");   // Sende an USART
    set_timer0(81);

    while(1)
    {
        a=USB_Char_empf(); //Empange ein zeichen über USB

        if (a==0x80)       //Wenn sich der Bootloader meldet
        {
            #asm
            goto 0x1002    //Bootloader starten
            #endasm
        }

        USB_Char_send(a);  // Sende ein zeichen über USB

        //putc(a);           // Sende an USART macht jetzt Timerinterrupt

        enable_interrupts(INT_Timer0);//Timerinterrupt einschalten
    }
}
