// Grundgerüst des Programms zum nutzen des Mischaka-USB-Bootloaders

#include "Mischaka.h"
#include <18F2550.h>

#use delay(clock = 48000000)
#use rs232(baud = 115200, parity = N, xmit = PIN_C6, rcv = PIN_C7, bits = 8)

void
main() {
  char a;
  while(1) {

    a = USB_Char_empf(); // Empange ein zeichen über USB

    if(a == 0x80) // Diese teil ermöglicht das automatisches Startten
    {             // des  Bootloaders ohne PIC zu resetten.
#asm              // Wenn sich der Bootloader meldet
      goto 0x1002 // Bootloader starten
#endasm
    }

    USB_Char_send(a); // Sende ein zeichen über USB
  }
}
