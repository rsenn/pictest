/*****************************************************************************/
/*                                                                           */
/* RTTTL Ring Tone Player for Microchip PIC16F87x Microcontrollers           */
/* Copyright Craig.Peacock@beyondlogic.org                                   */
/* Version 1.0 17th August 2003                                              */
/*                                                                           */
/*****************************************************************************/

#include "pictest.h"
#include "device.h"
#include "timer.h"

#if NO_PORTB
#define TONE RA0
#define TONE_TRIS TRISA0
#else
#define TONE RB0
#define TONE_TRIS TRISB0
#endif

void InitTimer(void);
void delayms(unsigned char cnt);
void PlayNote(unsigned short note, unsigned char octave, unsigned int duration);

unsigned char beep;
unsigned char preloadTMR1L;
unsigned char preloadTMR1H;
unsigned short TMR0Count;

//#define MissionImpossible

#ifdef AxelF
  /* AxelF */
  const unsigned char static Melody[] = {"32p,8g,8p,16a#.,8p,16g,16p,16g,8c6,8g,8f,8g,8p,16d.6,8p,16g,16p,16g,8d#6,8d6,8a#,8g,8d6,8g6,16g,16f,16p,16f,8d,8a#,2g,4p,16f6,8d6,8c6,8a#,4g,8a#.,16g,16p,16g,8c6,8g,8f,4g,8d.6,16g,16p,16g,8d#6,86,8a#,8g,8d6,8g6,16g,16f,16p,16f,8d,8a#,2g"};
  const unsigned int defaultoctave = 5;
  const unsigned int defaultduration = 4;
  const unsigned char beat_speed = 125;
#endif

#ifdef HappyBirthday
  /* HappyBirthday */
  const unsigned char static Melody[] = {"8g.,16g,a,g,c6,2b,8g.,16g,a,g,d6,2c6,8g.,16g,g6,e6,c6,b,a,8f6.,16f6,e6,c6,d6,2c6,8g.,16g,a,g,c6,2b,8g.,16g,a,g,d6,2c6,8g.,16g,g6,e6,c6,b,a,8f6.,16f6,e6,c6,d6,2c6"};
  const unsigned int defaultoctave = 5;
  const unsigned int defaultduration = 4;
  const unsigned char beat_speed = 125;
#endif

#ifdef Itchy
  /* Itchy & Scratcy */
  const unsigned char static Melody[] = {"8c,8a5,4p,8c,8a,4p,8c,a5,8c,a5,8c,8a,4p,8p,8c,8d,8e,8p,8e,8f,8g,4p,8d,8c,4d,8f,4a#,4a,2c7"};
  const unsigned int defaultoctave = 6;
  const unsigned int defaultduration = 8;
  const unsigned char beat_speed = 198;
#endif

#ifdef MissionImpossible
  /* Mission Impossible */
  const unsigned char static Melody[] = {"16d5,16d#5,16d5,16d#5,16d5,16d#5,16d5,16d5,16d#5,16e5,16f5,16f#5,16g5,8g5,4p,8g5,4p,8a#5,8p,8c6,8p,8g5,4p,8g5,4p,8f5,8p,8p,8g5,4p,4p,8a#5,8p,8c6,8p,8g5,4p,4p,8f5,8p,8f#5,8p,8a#5,8g5,1d5"};
  const unsigned int defaultoctave = 6;
  const unsigned int defaultduration = 4;
  const unsigned char beat_speed = 150;
#endif
void main(void) {
  unsigned int pointer = 0;
  unsigned int octave = 0;
  unsigned int duration = 0;
  unsigned short note = 0;


  TONE_TRIS = 0; /* Make TONE an output */

  beep = 0;

//  InitTimer();
  timer0_init(PRESCALE_1_256 | TIMER0_FLAGS_INTR);
  timer1_init(PRESCALE_1_1 | TIMER1_FLAGS_EXTCLK | TIMER1_FLAGS_SYNC);
 
  PEIE = 1;
  GIE = 1; /* Enable General Purpose Interrupts */

  do {

    octave = defaultoctave; /* Set Default Octave */

    if((Melody[pointer] == '3') && (Melody[pointer + 1] == '2')) {
      duration = 32;
      pointer += 2;
    } else if((Melody[pointer] == '1') && (Melody[pointer + 1] == '6')) {
      duration = 16;
      pointer += 2;
    } else if(Melody[pointer] == '8') {
      duration = 8;
      pointer++;
    } else if(Melody[pointer] == '4') {
      duration = 4;
      pointer++;
    } else if(Melody[pointer] == '2') {
      duration = 2;
      pointer++;
    } else if(Melody[pointer] == '1') {
      duration = 1;
      pointer++;
    } else duration = defaultduration;

    if(Melody[pointer + 1] == '#') {

      /* Process Sharps */

      switch(Melody[pointer]) {
        case 'a': note = 10726;
          break;
        case 'c': note = 9019;
          break;
        case 'd': note = 8035;
          break;
        case 'f': note = 6757;
          break;
        case 'g': note = 6024;
          break;
      }
      pointer += 2;

    } else {

      switch(Melody[pointer]) {
        case 'a': note = 11364;
          break;
        case 'b': note = 10123;
          break;
        case 'c': note = 9555;
          break;
        case 'd': note = 8513;
          break;
        case 'e': note = 7584;
          break;
        case 'f': note = 7158;
          break;
        case 'g': note = 6378;
          break;
        case 'p': note = 0;
          break;
      }
      pointer++;
    }

    if(Melody[pointer] == '.') {
      /* Duration 1.5x */
      duration = duration + 128;
      pointer++;
    }

    if(Melody[pointer] == '4') {
      octave = 4;
      pointer++;
    } else if(Melody[pointer] == '5') {
      octave = 5;
      pointer++;
    } else if(Melody[pointer] == '6') {
      octave = 6;
      pointer++;
    } else if(Melody[pointer] == '7') {
      octave = 7;
      pointer++;
    }

    if(Melody[pointer] == '.') {
      /* Duration 1.5x */
      duration = duration + 128;
      pointer++;
    }

    PlayNote(note, octave, duration);



  } while(Melody[pointer++] == ',');

  /* Wait until last note has played */
  while(TMR0Count) { };
  beep = 0;

  /* Loop */
  while(1) {};
}

void PlayNote(unsigned short note, unsigned char octave, unsigned int duration) {

  /* Process octave */
  switch(octave) {
    case 4: /* Do noting */
      break;
    case 5: /* %2 */
      note = note >> 1;
      break;
    case 6: /* %4 */
      note = note >> 2;
      break;
    case 7: /* %8 */
      note = note >> 4;
      break;
  }

  /* Wait until last note has played */
  while(TMR0Count) { };
  beep = 0;

  /* Process New Note Frequency */
  if(note) {
    note = ~note;
    preloadTMR1L = (note & 0xFF);
    preloadTMR1H = ((note & 0xFF00) >> 8);
  }

  /* Process Note Duration */
  TMR0Count = 255 / (duration & 0x7F);

  /* If duration is 1.5x add .5 to duration */
  if(duration & 0x80) TMR0Count = (TMR0Count + (TMR0Count >> 1));

  if(note) beep = 1;
}

//void InitTimer(void) {
//  /* Initialise Timer 0 */
//  OPTION_REG = 0b11010111; /* Set TMR0 to Internal CLk, 1:256 */
//  T0IF = 0; /* Clear TMR0 Flag, ready for use */
//  T0IE = 1; /* Enable Timer Overflow Interrupt */

//  /* Initialise Timer 1 */
//  T1CON = 0b00000001; /* Counter Enabled, Using Ext Pin 1:1 Prescaler */
//  TMR1IF = 0; /* Clear Flag */
//  TMR1IE = 1; /* Enable Interrupt */
//}

void interrupt interr(void) {
  if(T0IF) {
    TMR0 = beat_speed;
    if(TMR0Count) TMR0Count--;
    T0IF = 0;
  }
  if(TMR1IF) {
    if(beep) TONE = !TONE;
    else TONE = 0;
    TMR1H = preloadTMR1H;
    TMR1L = preloadTMR1L;
    TMR1IF = 0; /* Clear Flag */
  }
}
