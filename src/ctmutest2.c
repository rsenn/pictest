#pragma interrupt high_handler
#include "timer.h"
void
high_handler(void) {
  if(INTCONbits.TMR0IF) {        // check timer0 irq
    if(!CTMUCONHbits.IDISSEN) {  // charge cycle timer0 int, because not shorting the CTMU voltage.
      CTMUCONLbits.EDG1STAT = 0; // Stop charging touch circuit
      TIME_CHARGE = FALSE;       // clear charging flag
      CTMU_WORKING = TRUE;       // set working flag, doing touch ADC conversion
      // configure ADC for next reading
      ADCON0bits.CHS = 0;  // Select ADC channel
      ADCON0bits.ADON = 1; // Turn on ADC
      ADCON0bits.GO = 1;   // and begin A/D conv, will set adc int flag when done.
      //    LATCbits.LATC7=!LATCbits.LATC7;     // blink led
    } else { // discharge cycle timer0 int, because CTMU voltage is shorted
      //    LATCbits.LATC6=!LATCbits.LATC6;     // blink led
      CTMUCONHbits.IDISSEN = 0;  // end drain of touch circuit
      TIME_CHARGE = TRUE;        // set charging flag
      CTMU_WORKING = TRUE;       // set working flag, doing
      WriteTimer0(charge_time);  // set timer to charge rate time
      CTMUCONLbits.EDG1STAT = 1; // Begin charging the touch circuit
    }
    // clr  TMR0 int flag
    INTCONbits.TMR0IF = 0; // clear interrupt flag
  }
  if(PIR1bits.ADIF) {  // check ADC irq
    PIR1bits.ADIF = 0; // clear ADC int flag
    //   LATCbits.LATC5=!LATCbits.LATC5;      // blink led
    Vread = ADRES;                    // Get the value from the A/D
    Vread = (Vread >> 3) & 0x007f;    // toss lower bit noise and mask
    if(Vread < (touch_base - TRIP)) { // see if we have a pressed button
      switchState = PRESSED;
      LATCbits.LATC4 = OFF;
    } else if(Vread > (touch_base - TRIP + HYST)) {
      switchState = UNPRESSED;
      LATCbits.LATC4 = ON;
    }
    CTMU_ADC_UPDATED = TRUE; // New data is in Vread, set to FALSE in main program flow
    CTMU_WORKING = FALSE;    // clear working flag, ok to read Vread.
    // config CTMU for next reading
    CTMUCONHbits.CTMUEN = 1;   // Enable the CTMU
    CTMUCONLbits.EDG1STAT = 0; // Set Edge status bits to zero
    CTMUCONLbits.EDG2STAT = 0;
    CTMUCONHbits.IDISSEN = 1;    // drain charge on the circuit
    WriteTimer0(TIMERDISCHARGE); // set timer to discharge rate
  }
  if(PIR1bits.TMR2IF) {
    PIR1bits.TMR2IF = 0; // clear TMR2 int flag
  }
}
#pragma interrupt high_handler
void
high_handler(void) {
  if(INTCONbits.TMR0IF) {        // check timer0 irq
    if(!CTMUCONHbits.IDISSEN) {  // charge cycle timer0 int, because not shorting the CTMU voltage.
      CTMUCONLbits.EDG1STAT = 0; // Stop charging touch circuit
      TIME_CHARGE = FALSE;       // clear charging flag
      CTMU_WORKING = TRUE;       // set working flag, doing touch ADC conversion
      // configure ADC for next reading
      ADCON0bits.CHS = 0;  // Select ADC channel
      ADCON0bits.ADON = 1; // Turn on ADC
      ADCON0bits.GO = 1;   // and begin A/D conv, will set adc int flag when done.
      //    LATCbits.LATC7=!LATCbits.LATC7;     // blink led
    } else { // discharge cycle timer0 int, because CTMU voltage is shorted
      //    LATCbits.LATC6=!LATCbits.LATC6;     // blink led
      CTMUCONHbits.IDISSEN = 0;  // end drain of touch circuit
      TIME_CHARGE = TRUE;        // set charging flag
      CTMU_WORKING = TRUE;       // set working flag, doing
      WriteTimer0(charge_time);  // set timer to charge rate time
      CTMUCONLbits.EDG1STAT = 1; // Begin charging the touch circuit
    }
    // clr  TMR0 int flag
    INTCONbits.TMR0IF = 0; // clear interrupt flag
  }
  if(PIR1bits.ADIF) {  // check ADC irq
    PIR1bits.ADIF = 0; // clear ADC int flag
    //   LATCbits.LATC5=!LATCbits.LATC5;      // blink led
    Vread = ADRES;                    // Get the value from the A/D
    Vread = (Vread >> 3) & 0x007f;    // toss lower bit noise and mask
    if(Vread < (touch_base - TRIP)) { // see if we have a pressed button
      switchState = PRESSED;
      LATCbits.LATC4 = OFF;
    } else if(Vread > (touch_base - TRIP + HYST)) {
      switchState = UNPRESSED;
      LATCbits.LATC4 = ON;
    }
    CTMU_ADC_UPDATED = TRUE; // New data is in Vread, set to FALSE in main program flow
    CTMU_WORKING = FALSE;    // clear working flag, ok to read Vread.
    // config CTMU for next reading
    CTMUCONHbits.CTMUEN = 1;   // Enable the CTMU
    CTMUCONLbits.EDG1STAT = 0; // Set Edge status bits to zero
    CTMUCONLbits.EDG2STAT = 0;
    CTMUCONHbits.IDISSEN = 1;    // drain charge on the circuit
    WriteTimer0(TIMERDISCHARGE); // set timer to discharge rate
  }
  if(PIR1bits.TMR2IF) {
    PIR1bits.TMR2IF = 0; // clear TMR2 int flag
  }
}
