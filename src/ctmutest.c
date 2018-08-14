//****************************************************
#include "timer.h"
//***** 100YEN LED Modification / CTMU test **********
//*************************** By Minarai Shokunin ****
//*************************** 2013/12/01          ****
//****************************************************

#include "pic18f14k50.h"

#define DELAY1 for(i = 0; i < 500; i++)
#define DELAY2 for(i = 0; i < 100; i++)

// prototyping
void delay_some(int);
void delay_short(int);
unsigned int ReadCTMU(int);

// config

// defines

#define THRESH 1

// main loop
int
main(void) {
  int touchoff_value[4];
  int i, val, led;

  OSCCON = 0x7f;
  TRISC = 0x0000;

  PORTC = 0x55;
  delay_some(30);

  TRISA = 0x000f;      // USE A3-A0 for ADC input
  ANCON0 = 0b11110000; // USE AN3-AN1
  ANCON1 = 0b00011111; //
  // ADCON1
  ADCON1bits.ADFM = 1;  // Result format 1= Right justified
  ADCON1bits.ADCAL = 0; // Normal A/D conversion operation
  ADCON1bits.ACQT = 1;  // Acquisition time 7 = 20TAD 2 = 4TAD 1=2TAD
  ADCON1bits.ADCS = 2;  // Clock conversion bits 6= FOSC/64 2=FOSC/32
  ANCON1bits.VBGEN = 1; // Turn on the Bandgap
  // ADCON0
  ADCON0bits.VCFG0 = 0; // Vref+ = AVdd
  ADCON0bits.VCFG1 = 0; // Vref- = AVss
  ADCON0bits.CHS = 0;   // Select ADC channel
  ADCON0bits.ADON = 1;  // Turn on ADC

  CTMUICON = 0b00000001;   // 0.55uA No adjustment
  CTMUCONL = 0b00000000;   //
  CTMUCONH = 0b00000000;   // CTMU not enabled
  CTMUCONHbits.CTMUEN = 1; // Enable the CTMU

  PORTC = 0xaa;
  delay_some(30);
  PORTC = 0xff;
  delay_some(30);
  // ******* Check touch off value **********
  touchoff_value[0] = ReadCTMU(0) / 4; // dummy read
  touchoff_value[0] = ReadCTMU(0) / 4;
  touchoff_value[1] = ReadCTMU(1) / 4;
  touchoff_value[2] = ReadCTMU(2) / 4;
  touchoff_value[3] = ReadCTMU(3) / 4;

  // ******* Main Loop *****************
  while(1) {
    led = 0;
    for(i = 0; i < 4; i++) {
      led <<= 1;
      val = ReadCTMU(i) / 4;
      if(val > (touchoff_value[i] + THRESH)) {
        led |= 0x10;
      }
    }
    PORTC = ~led;
  }
}

// ****** Get CTMU result *****
unsigned int
ReadCTMU(int ch) {
  unsigned int res, i;

  ADCON0bits.CHS = ch;       // Select ADC channel
  CTMUCONHbits.CTMUEN = 1;   // Enable the CTMU
  CTMUCONLbits.EDG1STAT = 0; // Set Edge status bits to zero
  CTMUCONHbits.IDISSEN = 1; // drain charge on the circuit
  DELAY1;
  CTMUCONHbits.IDISSEN = 0; // end drain of circuit
  CTMUCONLbits.EDG2STAT = 0;
  CTMUCONLbits.EDG1STAT = 1; // Begin charging the circuit
  // using CTMU current source
  DELAY2;
  CTMUCONLbits.EDG1STAT = 0; // Stop charging circuit
  PIR1bits.ADIF = 0; // make sure A/D Int not set
  ADCON0bits.GO = 1; // and begin A/D conv.
  DELAY1;
  while(ADCON0bits.GO)
    ; // Wait for A/D convert complete
  res = ADRES; // Get the value from the A/D
  // ADCON0bits.GO=0; //and begin A/D conv.
  CTMUCONHbits.CTMUEN = 0; // Enable the CTMU
  return res;
}

void
delay_some(int t) {
  int t0, t1;
  for(t0=0; t0
