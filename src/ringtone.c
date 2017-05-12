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
#include "random.h"

#if NO_PORTB
#define TONE RA0
#define TONE_TRIS TRISA0
#else
#define TONE RB0
#define TONE_TRIS TRISB0
#endif

#include "config-bits.h"


//void InitTimer(void);
//void delayms(unsigned char cnt);
void main(void);
void PlayNote(unsigned short note, unsigned char octave, unsigned int duration);

volatile unsigned char beep;
volatile unsigned char preloadTMR1L;
volatile unsigned char preloadTMR1H;
volatile unsigned short TMR0Count;

//#define MissionImpossible

typedef struct ringtone {
  unsigned int defaultoctave;
  unsigned int defaultduration;
  unsigned char beat_speed;
  const unsigned char* Melody;
} ringtone_t;

#define NUM_RINGTONES ((sizeof(ringtones)/sizeof(ringtones[0]))-1)

const ringtone_t ringtones[] = {
  { /* AxelF */ 5, 4, 125, "32p,8g,8p,16a#.,8p,16g,16p,16g,8c6,8g,8f,8g,8p,16d.6,8p,16g,16p,16g,8d#6,8d6,8a#,8g,8d6,8g6,16g,16f,16p,16f,8d,8a#,2g,4p,16f6,8d6,8c6,8a#,4g,8a#.,16g,16p,16g,8c6,8g,8f,4g,8d.6,16g,16p,16g,8d#6,86,8a#,8g,8d6,8g6,16g,16f,16p,16f,8d,8a#,2g" },
  { /* HappyBirthday */ 5, 4, 125, "8g.,16g,a,g,c6,2b,8g.,16g,a,g,d6,2c6,8g.,16g,g6,e6,c6,b,a,8f6.,16f6,e6,c6,d6,2c6,8g.,16g,a,g,c6,2b,8g.,16g,a,g,d6,2c6,8g.,16g,g6,e6,c6,b,a,8f6.,16f6,e6,c6,d6,2c6" },
  { /* Itchy & Scratcy */ 6, 8, 198, "8c,8a5,4p,8c,8a,4p,8c,a5,8c,a5,8c,8a,4p,8p,8c,8d,8e,8p,8e,8f,8g,4p,8d,8c,4d,8f,4a#,4a,2c7" },
  { /* Mission Impossible */ 6, 4, 150, "16d5,16d#5,16d5,16d#5,16d5,16d#5,16d5,16d5,16d#5,16e5,16f5,16f#5,16g5,8g5,4p,8g5,4p,8a#5,8p,8c6,8p,8g5,4p,8g5,4p,8f5,8p,8p,8g5,4p,4p,8a#5,8p,8c6,8p,8g5,4p,4p,8f5,8p,8f#5,8p,8a#5,8g5,1d5" },
  { /* Adams Family */ 5, 8, 160, "c,4f,a,4f,c,4b4,2g,f,4e,g,4e,g4,4c,2f,c,4f,a,4f,c,4b4,2g,f,4e,c,4d,e,1f,c,d,e,f,1p,d,e,f#,g,1p,d,e,f#,g,4p,d,e,f#,g,4p,c,d,e,f" },
  { /* Back to the Future */ 5, 16, 200, "4g.,p,4c.,p,2f#.,p,g.,p,a.,p,8g,p,8e,p,8c,p,4f#,p,g.,p,a.,p,8g.,p,8d.,p,8g.,p,8d.6,p,4d.6,p,4c#6,p,b.,p,c#.6,p,2d.6" },
  { /* Dallas */ 5, 8, 125, "e,4a.,e,4e.6,a,4c#6,b,c#6,4a,4e,4a,4f#6,4e6,c#6,d6,2e.6,p,e,4a,4f#6,4e6,c#6,d6,4e6,b,c#6,4a,4e,4a,c#6,d6,4b.,a,2a" },
  { /* Deep Purple-Smoke on the Water */ 4, 4, 112, "c,d#,f.,c,d#,8f#,f,p,c,d#,f.,d#,c,2p,8p,c,d#,f.,c,d#,8f#,f,p,c,d#,f.,d#,c" },
  { /* Flintstones */ 5, 8, 200, "g#,4c#,p,4c#6,a#,4g#,4c#,p,4g#,f#,f,f,f#,g#,4c#,4d#,2f,2p,4g#,4c#,p,4c#6,a#,4g#,4c#,p,4g#,f#,f,f,f#,g#,4c#,4d#,2c#" },
  { /* Funky Town */ 4, 8, 125, "c6,c6,a#5,c6,p,g5,p,g5,c6,f6,e6,c6,2p,c6,c6,a#5,c6,p,g5,p,g5,c6,f6,e6,c6" },
  { /* Ghost Busters */ 5, 8, 145, "16c6,32p,16c6,e6,c6,d6,a#,2p,32c6,32p,32c6,32p,c6,a#,c6" },
  { /* Hitchcock */ 5, 16, 200, "c,p,f4,8p,8f,32g,32p,f,32p,e,32p,d,32p,e,8p,f,32p,g,8p.,c,p,f4,8p,8f,32g,32p,f,32p,e,32p,d,32p,e,8p,f,32p,g,8p.,c,p,f4,8p,g#,32p,8c6,p,a#,32p,g#,8p,c6,32p,8d#6,p,c#6,32p,c6,8p,d#6,32p,8g6,p,f6,32p,e6,32p,c#6,32p,c6,32p,a#,32p,g#,32p,g,32p,8f4" },
  { /* Knight Rider */ 5, 32, 63, "16e,f,e,8b,16e6,f6,e6,8b,16e,f,e,16b,16e6,4d6,8p,4p,16e,f,e,8b,16e6,f6,e6,8b,16e,f,e,16b,16e6,4f6" },
  { /* Stairway to Heaven */ 5, 8, 63, "a4,c,e,a,b,e,c,b,c6,e,c,c6,f#,d,a4,f#,e.,16c,a4,4e,c,a4,e,g4,a4,4a4" },
  { /* Let it be */ 5, 8, 100, "16e6,d6,4c6,16e6,g6,a6,g.6,16g6,g6,e6,16d6,c6,16a,g,4e.6,4p,e6,16e6,f.6,e6,e6,d6,16p,16e6,16d6,d6,2c.6." },
  { /* Snow */ 5, 8, 120, "c,c,c6,c6,4a#,4a,4g,4f,2c,c,16c,4g.,f,4g.,f,4e,2c,4d,d6,d6,4c6,4a#,4a,2g.,e.6,16d6,4c6,c.6,16a#,4a,a#.,16a,2f.,4c,c6,c6,4a#,4a,4g,4f,2c,c.,16c,4g.,f,4g.,f,4e,2c,4d,d6,d6,4c6,4a#,4a,2g.,e.6,16d6,4c6,c.6,16a#,4a,a.,16g,2f." },
  { /* Light My Fire */ 5, 8, 140, "b,16g,16a,b,d6,c6,b,a,g,a,16f,16a,c6,f6,16d6,16c6,16a#,16g,g#,g,g#,16g,16a,b,c#6,16b,16a,16g,16f,e,f,4a" },
  { /* Monty Python */ 5, 8, 180, "d#6,d6,4c6,b,4a#,a,4g#,g,f,g,g#,4g,f,2a#,p,a#,g,p,g,g,f#,g,d#6,p,a#,a#,p,g,g#,p,g#,g#,p,a#,2c6,p,g#,f,p,f,f,e,f,d6,p,c6,c6,p,g#,g,p,g,g,p,g#,2a#,p,a#,g,p,g,g,f#,g,g6,p,d#6,d#6,p,a#,a,p,f6,f6,p,f6,2f6,p,d#6,4d6,f6,f6,e6,f6,4c6,f6,f6,e6,f6,a#,p,a,a#,p,a,2a#" },
  { /* Munsters */ 5, 8, 160, "d,f,d,g#,a,4d6,a#,a,2g,f,g,4a,a4,g#4,a4,b4,4c#,2d,4p,4c,4c6,4c6,2c6,a#,a,a#,g,a,4f,4p,4g,4g,2g,f,e,f,d,e,2c#,4p,4d,f,d,g#,a,4d6,a#,a,2g,f,g,4a,a4,g#4,a4,b4,4c#,2d" },
  { /* Muppets */ 5, 4, 250, "c6,c6,a,b,8a,b,g,p,c6,c6,a,8b,8a,8p,g.,p,e,e,g,f,8e,f,8c6,8c,8d,e,8e,8e,8p,8e,g,2p,c6,c6,a,b,8a,b,g,p,c6,c6,a,8b,a,g.,p,e,e,g,f,8e,f,8c6,8c,8d,e,8e,d,8d,c" },
  { /* Pingu */ 6, 4, 285, "g,p,e,p,f,e,d,p,g,p,e,p,f,a,g,p,a,c7,b,a,g,c7,g,f,e,f,e,d,g,g,p,f,e,p,g,p,c7,c" },
  { /* Pinky and the Brain */ 6, 16, 200, "b.5,p,8e.,p,d#.,p,8e.,p,g.,p,4d#.,4p,b.5,p,8e.,p,d#.,p,8e.,p,g.,p,4d#.,4p,4e,8p,8e.,p,g.,p,8a#.,p,4a#,8p,a#.,p,8b.,p,a.,p,4g,8p,4f#,4p,e.,p,8a.,p,g#.,p,8a.,p,b.,p,4g#,4p,e.,p,8a.,p,g#.,p,8a.,p,b.,p,4g#,4p,c.,p,8b.5,p,8b.5,8p,b.5,p" },
  { /* Popeye */ 6, 8, 160, "a5,c,c,c,4a#5,a5,4c,2p,c,d,a#5,d,4f,d,2c,p,c,d,a#5,d,f,e,d,c,d,c,a5,f5,a5,c,d,c,4a#5,g5,2f5" },
  { /* Scarlet */ 5, 4, 50, "16d6,16a,16a#,16d#6,16d,32d,16e,32d,16e,8f,8g,32a.,32a#.,32g.,8a.,16a,32a.,32a#.,32g.,a" },
  { /* Scatman */ 5, 16, 200, "8b,b,32p,8b,b,32p,8b,2d6,p,c#.6,p.,8d6,p,c#6,8b,p,8f#,2p.,c#6,8p,d.6,p.,c#6,b,8p,8f#,2p,32p,2d6,p,c#6,8p,d.6,p.,c#6,a.,p.,8e,2p.,c#6,8p,d.6,p.,c#6,b,8p,8b,b,32p,8b,b,32p,8b,2d6,p,c#.6,p.,8d6,p,c#6,8b,p,8f#,2p.,c#6,8p,d.6,p.,c#6,b,8p,8f#,2p,32p,2d6,p,c#6,8p,d.6,p.,c#6,a.,p.,8e,2p.,c#6,8p,d.6,p.,c#6,a,8p,8e,2p,32p,f#.6,p.,b.,p." },
  { /* Scooby Doo */ 6, 8, 160, "e,e,d,d,2c,d,4e,2a5,a5,4b5,4g5,4e,d,4c,d,2e,4p,e,e,d,d,2c,d,4f,2a5,a5,4b5,4g5,4e,d,2c" },
  { /* Simpsons */ 5, 8, 160, "c.6,4e6,4f#6,a6,4g.6,4e6,4c6,a,f#,f#,f#,2g,p,p,f#,f#,f#,g,4a#.,c6,c6,c6,4c6" },
  { /* Smurfs */ 5, 4, 200, "2c6,f.6,8c6,d6,a#,2g,c.6,8a,f,a,2g,p,16g,16a,16a#,16b,2c6,f.6,8c6,d6,a#,2g,c.6,8a,a#,e,2f,p,16g,16a,16a#,16b,2c6,f.6,8c6,d6,a#,2g,c.6,8a,f,a,2g,p,16g,16a,16a#,16b,2c6,f.6,8c6,d6,a#,2g,c.6,8a,a#,e,2f.,1p" },
  { /* South Park */ 5, 8, 125, "e,e,e,16e,e,16e,p,e,e,e,e,e,16p,16e,e,2p,g,g,4g,16b,16b,b,e,a#,16g,16g,g,16f#,16f#,f#,e" },
  { /* Star Trek */ 5, 16, 63, "8f.,a#,4d#.6,8d6,a#.,g.,c.6,4f6" },
  { /* Star Wars */ 6, 8, 180, "f5,f5,f5,2a#5.,2f.,d#,d,c,2a#.,4f.,d#,d,c,2a#.,4f.,d#,d,d#,2c,4p,f5,f5,f5,2a#5.,2f.,d#,d,c,2a#.,4f.,d#,d,c,2a#.,4f.,d#,d,d#,2c" },
  { /* Teenate Turtles */ 6, 8, 100, "g5,a5,g5,a5,g5,16a5,g.5,a5,a#5,c,a#5,c,a#5,16c,a#.5,c,d#,f,d#,f,d#,16f,d#.,f,16c,16c,16c,16c,a#5,4c,16c7,16c7,16c7" },
  { /* The A-Team */ 5, 8, 132, "4d#6,a#,2d#6,16p,g#,4a#,4d#.,p,16g,16a#,d#6,a#,f6,2d#6,16p,c#.6,16c6,16a#,g#.,2a#." },
  { 0,0,0, 0 }
};

volatile unsigned char beat_speed;

void main() {
  unsigned int pointer = 0;
  unsigned int octave = 0;
  unsigned int duration = 0;
  unsigned short note = 0;
  const ringtone_t* rt_p;
  const char* Melody;

  TONE_TRIS = 0; /* Make TONE an output */

  beep = 0;

  random_init(eeprom_read(0), eeprom_read(1), eeprom_read(2));
  
  eeprom_write(0, random());
  eeprom_write(1, random());
  eeprom_write(2, random());

  rt_p = &ringtones[random() % NUM_RINGTONES];

  //  InitTimer();
  timer0_init(PRESCALE_1_256 | TIMER0_FLAGS_INTR);
  timer1_init(PRESCALE_1_1 | TIMER1_FLAGS_EXTCLK | TIMER1_FLAGS_SYNC);

  PEIE = 1;
  GIE = 1; /* Enable General Purpose Interrupts */

  do {

    octave = rt_p->defaultoctave; /* Set Default Octave */
    beat_speed = rt_p->beat_speed;
    Melody = rt_p->Melody;

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
    } else duration = rt_p->defaultduration;

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
