#include <pic16f876a.h>

#define CONFIG_WORD (_HS_OSC & _DEBUG_OFF & _CP_ALL & _WRT_OFF & _CPD_OFF & _LVP_OFF & _BODEN_OFF & _PWRTE_OFF & _WDT_OFF)

unsigned short __at(0x2007)  __CONFIG = CONFIG_WORD;
unsigned char b;

// Configure A/D converter
void adc_init()
{
  ADFM = 1;  // right justified result

  ADCS0 = 0; // Fosc / 64
  ADCS1 = 1;
  ADCS2 = 1;

  ADON = 1; // Fire up the A/D converter
}

unsigned short adc_get(char channel)
{
  CHS0 = channel & 0b001;
  CHS1 = (channel & 0b010) >> 1;
  CHS2 = (channel & 0b100) >> 2;

  GO = 1;

  while(NOT_DONE)
    {}

  return (ADRESH << 8) | ADRESL;
}

void my_delay(unsigned short iterations)
{
  short i;

  for(i = 0; i < iterations; i++)
  {
    __asm nop __endasm;
  }
}

int main()
{
  adc_init();

  TRISB = 0b00000000;
  PORTB = 0;

  for(;;)
  {
    short i;

    PORTB = b++;

    my_delay(8192);
  }
}
