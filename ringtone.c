/*****************************************************************************/
/*                                                                           */
/* RTTTL Ring Tone Player for Microchip PIC16F87x Microcontrollers           */
/* Copyright Craig.Peacock@beyondlogic.org                                   */
/* Version 1.0 17th August 2003                                              */
/*                                                                           */
/*****************************************************************************/

#include "lib/device.h"
#include "lib/interrupt.h"
#include "lib/random.h"
#include "lib/timer.h"
#include "pictest.h"

#if NO_PORTB
#define TONE RA0
#define TONE_TRIS TRISA0
#else
#define TONE RB0
#define TONE_TRIS TRISB0
#endif

#include "config-bits.h"

// void InitTimer(void);
// void delayms(unsigned char cnt);
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

#define NUM_RINGTONES ((sizeof(ringtones) / sizeof(ringtones[0])) - 1)

const ringtone_t ringtones[] = {

    {/* Adams Family */ 5,
     8,
     160,
     "c,4f,a,4f,c,4b4,2g,f,4e,g,4e,g4,4c,2f,c,4f,a,4f,c,4b4,2g,f,4e,c,4d,e,1f,c,d,e,f,1p,"
     "d,e,f#,g,1p,d,e,f#,g,4p,d,e,f#,g,4p,c,d,e,f"},
    {/* Animaniacs Theme  */ 5,
     4,
     160,
     "d#6,d6,d#6,f.6,8d#6,d.6,8d#6,c6,2p,8d6,8d#6,f.6,8d#6,d.6,8d#6,a#,2p,8c6,8a#,"
     "8g#,8g#,8c6,8d#6,g#6,8p,8g#6,8a#.6,16g#6,8g6,8g#6,f6,8p,8f6,d#6,c7,a#.6,8g#6,"
     "g#6,"},
    {/* Babylon 5 */ 5, 4, 180, "32p,2b4,1e,1g,1f#,1a,1b,2g,g,8g,8a,1b,1f#,1b4,1d,1c#,1e,1f#,2d,d,8d,8e,1f#"},
    {/* Back to the Future */ 5,
     16,
     200,
     "4g.,p,4c.,p,2f#.,p,g.,p,a.,p,8g,p,8e,p,8c,p,4f#,p,g.,p,a.,p,8g.,p,8d.,p,8g.,"
     "p,8d.6,p,4d.6,p,4c#6,p,b.,p,c#.6,p,2d.6"},
    //{ /* Bad Boys - Theme */ 6, 4, 160,
    //"a_5,g5,a_5,g5,p,8f5,8g5,8g5,8g5,2a_5,8a_5,8a_5,8a_5,8a_5,a_5,8a_5,8c,a_5,g5,g5,a_5,g5,a_5,g5,p,8f5,8g5,8g5,8g5,2a_5,8a_5,8a_5,8a_5,8a_5,a_5,8a_5,8c,a_5,g5,g5,a_5,g5,a_5,g5,p,8f5,8g5,8g5,8g5,2a_5,8a_5,8a_5,8a_5,8a_5,a_5,8a_5,8c,a_5,g5,g5,a_5,g5,a_5,g5,p,8f5,8g5,8g5,8g5,2a_5,8a_5,8a_5,8a_5,8a_5,a_5,8a_5,8c,a_5,g5,g5"
    //},
    {/* Barbapapa - Theme */ 6,
     4,
     180,
     "8f5,8f5,8p,8f5,a_5,d,d_,d,c,2a_5,8d,8g,8p,8d,8p,2f.,8p,p,8f5,8f5,8p,8f5,a_5,d,"
     "d_,d,c,a_5,8f,8g,8p,8d,f,c,d,d_,f,a_5,p,8g,8f,g,a,a_,f,d,a_5,p,g5,8d_5,8d5,8p,"
     "c.5,f_5,8f_5,8f_5,8p,f.5,f5,a_5,d,d_,d,8c,1a_5"},
    {/* Bugs Bunny */ 5,
     16,
     200,
     "4a6,8g6,2a6,8p,4e6,8d6,2e6,8p,4a6,8g6,2a6,8g6,4e6,8d6,4e6,8p,8d6,4b,4d6,8g6,4a6,8g6,"
     "8g6,8e6,8g6,4f#6,8p,8a6,4b6,8a6,8g6,4f#6,4e6,2a6"},
    //{ /* Computer Games - Final Fantasy 7 - Boss Theme */ 5, 4, 112,
    //"16a4,16a4,16a4,8c.,16a4,16a4,16a4,8d.,16a4,16a4,16a4,16d#,16d,16c,16d,16c,16b4,8c,16b4,16a4,16a4,16a4,8c.,16a4,16a4,16a4,8d.,16a4,16a4,16a4,16d#,16d,16c,16d,16c,16b4,8c,16b4,16c,16c,16c,8d#.,16c,16c,16c,8f.,16c,16c,16c,16f#,16f,16d#,16f,16d#,16d,8d#,16d,16c,16c,16c,8d#.,16c,16c,16c,8f.,16c,16c,16c,16f#,16f,16d#,16f,16d#,16d,16d#,16d,16c"
    //},
    {/* Computer Games - Secret Of Monkey Island - Theme */ 5,
     4,
     180,
     "8e6,8p,8e6,8g6,8f#6,8e6,d6,2e6,8p,8d6,8p,8d6,"
     "8c6,8b,8d6,8c6,8p,8c6,8p,b,p,8e6,8p,e.6,8g6,8f#"
     "6,8e6,d6,2e6,8p,8f#6,8g6,8p,8g6,8p,a6,p,f#6,8p,"
     "8g6,8f#6,8e6,8d6,8f#6,8g6,8p,8g6,8p,f#6"},
    {/* Dallas */ 5,
     8,
     125,
     "e,4a.,e,4e.6,a,4c#6,b,c#6,4a,4e,4a,4f#6,4e6,c#6,d6,2e.6,p,e,4a,4f#6,4e6,c#6,d6,4e6,b,c#6,"
     "4a,4e,4a,c#6,d6,4b.,a,2a"},
    {/* Deep Purple-Smoke on the Water */ 4,
     4,
     112,
     "c,d#,f.,c,d#,8f#,f,p,c,d#,f.,d#,c,2p,8p,c,d#,f.,c,d#,8f#,f,p,c,d#,f.,d#,c"},
    {/* Donkey Kong Country Theme  */ 5,
     4,
     125,
     "8d6,8d6,2a.6,8f6,8g6,8f6,2d.6,8d6,8d6,2a#.6,8g6,8a6,8g6,2e.6,8e6,8e6,"
     "2c.7,8a6,8a#6,8c7,2d.7,8f6,8g6,2a.6,8e6,8f6,8g6,1f6,"},
    //{ /* Films And Tv - Taxi Theme */ 5, 4, 140,
    //"8d#6,8g6,8g#6,a#6,a#6,a#.6,8d#7,8c7,8a#6,8d#6,8f6,g6,8a#6,2f.6,p,8c6,8d#6,8f6,32f#6,8g6,8a#6,8c7,32f6,32f#6,8g6,8p,8f6,8d#6,8c6,8d#6,8f6,16g6,16p,32d#6,32e6,f6,8d#6,2c.6,p,8c6,8d#6,8f6,32f#6,8g6,8a#6,8c7,8d#7,8p,8c7,8a#6,16g.6,32a#6,32b6,8c7,d#.7"
    //},
    {/* Flintstones */ 5,
     16,
     200,
     "4g#6,4c#6,8p,4c#7,8a#6,4g#6,4c#6,8p,4g#6,8f#6,8f6,8f6,8f#6,8g#6,4c#6,4d#6,2f6,2p,"
     "4g#6,4c#6,8p,4c#7,8a#6,4g#6,4c#6,8p,4g#6,8f#6,8f6,8f6,8f#6,8g#6,4c#6,4d#6,2c#6"},
    {/* Forest Gump - Theme */ 5,
     4,
     100,
     "16c#6,16c#6,16f#6,8d#6,8c#6,8d#6,16p,16g#6,16f#6,16p,8c#6,16p,16f#6,16f#6,"
     "8f#6,8c#6,8f#6,p,8p,16p,16c#6,16f#6,8f#6,8c#6,8f#6,16p,16a#6,8g#6,8d#6,8c#"
     "6"},
    {/* Funky Town */ 4, 8, 125, "c6,c6,a#5,c6,p,g5,p,g5,c6,f6,e6,c6,2p,c6,c6,a#5,c6,p,g5,p,g5,c6,f6,e6,c6"},
    {/* Ghostbusters Theme  */ 5,
     4,
     125,
     "16c#,16p,8c#,16e,16f,16g#,16p,8b,8p,8a#.,16p,16c#,16p,8c#,16e,16f,16g#,16p,"
     "16b,16p,16b,16p,a#,8p,16c#6,16c#6,8f6,16c#6,16p,8d#6,16b,"},
    //{ /* Hitchcock */ 5, 16, 200,
    //"c,p,f4,8p,8f,32g,32p,f,32p,e,32p,d,32p,e,8p,f,32p,g,8p.,c,p,f4,8p,8f,32g,32p,f,32p,e,32p,d,32p,e,8p,f,32p,g,8p.,c,p,f4,8p,g#,32p,8c6,p,a#,32p,g#,8p,c6,32p,8d#6,p,c#6,32p,c6,8p,d#6,32p,8g6,p,f6,32p,e6,32p,c#6,32p,c6,32p,a#,32p,g#,32p,g,32p,8f4"
    //},
    {/* Indiana Jones - Theme */ 5,
     4,
     225,
     "e,16f,8g,2c6,d,16e,1f,g,16a,8b,2f6,a,16b,c6,d6,e6,e,16f,8g,1c6,d6,16e6,"
     "2f6,g,16g,e6,d6,16g,e6,d6,16g,f6,e6,16d6,2c6"},
    {/* Itchy & Scratcy */ 6,
     8,
     198,
     "8c,8a5,4p,8c,8a,4p,8c,a5,8c,a5,8c,8a,4p,8p,8c,8d,8e,8p,8e,8f,8g,4p,8d,8c,4d,8f,4a#,4a,2c7"},
    {/* Knight Rider */ 5,
     32,
     63,
     "16e,f,e,8b,16e6,f6,e6,8b,16e,f,e,16b,16e6,4d6,8p,4p,16e,f,e,8b,16e6,f6,e6,8b,16e,f,e,16b,16e6,4f6"},
    {/* Legend Of Zelda - Title Theme */ 6,
     16,
     50,
     "8b5,8f#.5,b5,32b5,32c#,32d#,32e,4f#,f#,32f#.,32g.,32a.,4b,32b,32b."
     ",32a.,32g.,a.,32g.,4f#,8f#,e,32e,32f#,4g,f#,e,d,32d,32e,4f#,e,d,c#"
     ",32c#,32d#,4f,8g#,4f#"},
    {/* Leisure Suit Larry - Main Theme */ 6,
     16,
     56,
     "f.5,f#.5,g.5,g#5,32a#5,f5,g#.5,a#.5,32f5,g#5,32a#5,g#5,8c#.,a#5,"
     "32c#,a5,a#.5,c#.,32a5,a#5,32c#,d#,8e,c#.,f.,f.,f.,f.,f,32e,d#,"
     "8d,a#.5,e,32f,e,32f,c#,d#.,c#"},
    {/* Light My Fire */ 5,
     8,
     140,
     "b,16g,16a,b,d6,c6,b,a,g,a,16f,16a,c6,f6,16d6,16c6,16a#,16g,g#,g,g#,16g,16a,b,c#6,16b,16a,16g,16f,e,f,4a"},
    {/* Looney Tunes */ 5,
     16,
     160,
     "f7,f7,8e7,8d7,8c7,4a6,8p,8c7,f7,f7,8e7,8d7,8d#7,4e7,8p,8e7,8e7,8c7,8d7,8c7,e7,e7,"
     "8c7,8d7,8a6,8c7,8g6,8a#6,8a6,8f6"},
    {/* McGyver */ 4,
     4,
     160,
     "8c5,8c5,8c5,8c5,2b,8f#,a,2g,8c5,c5,b,8a,8b,8a,g,e5,2  "
     "a,b.,8p,8c5,8b,8a,c5,8b,8a,d5,8c5,8b,d5,8c5,8b,e5,8d5,8e5,f#5,b,1g5,8p,8g5  "
     ",8e5,8c5,8f#5,8d5,8b,8e5,8c5,8a,8d5,8b,8g,c5,b,8c5,8b,8a,8g,a#,a,8g."},
    //{ /* Monty Python */ 5, 8, 180,
    //"d#6,d6,4c6,b,4a#,a,4g#,g,f,g,g#,4g,f,2a#,p,a#,g,p,g,g,f#,g,d#6,p,a#,a#,p,g,g#,p,g#,g#,p,a#,2c6,p,g#,f,p,f,f,e,f,d6,p,c6,c6,p,g#,g,p,g,g,p,g#,2a#,p,a#,g,p,g,g,f#,g,g6,p,d#6,d#6,p,a#,a,p,f6,f6,p,f6,2f6,p,d#6,4d6,f6,f6,e6,f6,4c6,f6,f6,e6,f6,a#,p,a,a#,p,a,2a#"
    //},
    {/* Mortal Kombat - Theme */ 6,
     4,
     160,
     "16a7,16a7,16c7,16a7,16d7,16a7,16e7,16d7,16c7,16c7,16e7,16d7,16g7,16c7,"
     "16e7,16c7,16g7,16g7,16b7,16g7,16c7,16g7,16d7,16c7,16f7,16f7,16a7,16f7,"
     "16c7,16f7,16c7,16b7"},
    {/* Munsters */ 5,
     8,
     160,
     "d,f,d,g#,a,4d6,a#,a,2g,f,g,4a,a4,g#4,a4,b4,4c#,2d,4p,4c,4c6,4c6,2c6,a#,a,a#,g,a,4f,4p,"
     "4g,4g,2g,f,e,f,d,e,2c#,4p,4d,f,d,g#,a,4d6,a#,a,2g,f,g,4a,a4,g#4,a4,b4,4c#,2d"},
    //{ /* Pacman - Theme */ 5, 4, 112,
    //"32b,32p,32b6,32p,32f#6,32p,32d#6,32p,32b6,32f#6,16p,16d#6,16p,32c6,32p,32c7,32p,32g6,32p,32e6,32p,32c7,32g6,16p,16e6,16p,32b,32p,32b6,32p,32f#6,32p,32d#6,32p,32b6,32f#6,16p,16d#6,16p,32d#6,32e6,32f6,32p,32f6,32f#6,32g6,32p,32g6,32g#6,32a6,32p,32b.6"
    //},
    {/* Pingu */ 6, 4, 285, "g,p,e,p,f,e,d,p,g,p,e,p,f,a,g,p,a,c7,b,a,g,c7,g,f,e,f,e,d,g,g,p,f,e,p,g,p,c7,c"},
    {/* Pink Panter - Theme */ 6,
     4,
     100,
     "8g_5,2a5,8b5,2c,8g_5,8a5,8b5,8c,8f,8e,8a5,8c,8e,2d_,16d,16c,16a5,8g5,1a5,8g_"
     "5,2a5,8b5,2c,8g_5,8a5,8b5,8c,8f,8e,8c,8e,8a,1g_,8g_5,2a5,8b5,2c,16g_5,8a5,"
     "8b5,8c,8f,8e,8a5,8c,8e,2d_,8d,16c,16a5"},
    {/* Pinky and the Brain */ 6,
     16,
     200,
     "b.5,p,8e.,p,d#.,p,8e.,p,g.,p,4d#.,4p,b.5,p,8e.,p,d#.,p,8e.,p,g.,p,4d#.,4p,"
     "4e,8p,8e.,p,g.,p,8a#.,p,4a#,8p,a#.,p,8b.,p,a.,p,4g,8p,4f#,4p,e.,p,8a.,p,g#."
     ",p,8a.,p,b.,p,4g#,4p,e.,p,8a.,p,g#.,p,8a.,p,b.,p,4g#,4p,c.,p,8b.5,p,8b.5,"
     "8p,b.5,p"},
    {/* Pirates Of The Caribbean - Theme */ 6,
     4,
     200,
     "8d,8e,2f,8g,8a,g,f,e,f,g,a,g,p,8f,8g,a,p,8g,8f,e,f,e,d,p,8e,8c,d,8p,p,8d,8e,f,p,8e,8f,g,f,g,a,g,f,d"},
    {/* Police Academy - Theme */ 6,
     4,
     160,
     "g5,c5,8d5,c5,32p,c,b5,8a5,8a5,8a5,8g5,p,8g5,8a5,8g5,8g5,g5,8c,g5,16p,f5,e5,f5,e5,c5,8d5"},
    {/* Popeye */ 6,
     8,
     160,
     "a5,c,c,c,4a#5,a5,4c,2p,c,d,a#5,d,4f,d,2c,p,c,d,a#5,d,f,e,d,c,d,c,a5,f5,a5,c,d,c,4a#5,g5,2f5"},
    //{ /* Pulp Fiction - Theme */ 6, 4, 113,
    //"16f5,16f5,16f5,16f5,16f5,16f5,16f5,16f5,16a5,16a5,16a5,16a5,16a_5,16a_5,16a_5,16a_5,16c,16c,16c,16c,16c,16c,16c,16f5,16e,16e,16e,16e,16c_,16c_,16c_,16c_,16c,16c,16c,16c,16c,16c,16c,16c,16c,16c,16c,16c,16c,16c,16c,16c,16c,16c"
    //},
    {/* Scooby Doo */ 6,
     8,
     160,
     "e,e,d,d,2c,d,4e,2a5,a5,4b5,4g5,4e,d,4c,d,2e,4p,e,e,d,d,2c,d,4f,2a5,a5,4b5,4g5,4e,d,2c"},
    {/* Simpsons */ 5, 8, 160, "c.6,4e6,4f#6,a6,4g.6,4e6,4c6,a,f#,f#,f#,2g,p,p,f#,f#,f#,g,4a#.,c6,c6,c6,4c6"},
    {/* Smurfs */ 5,
     4,
     200,
     "2c6,f.6,8c6,d6,a#,2g,c.6,8a,f,a,2g,p,16g,16a,16a#,16b,2c6,f.6,8c6,d6,a#,2g,c.6,8a,a#,e,"
     "2f,p,16g,16a,16a#,16b,2c6,f.6,8c6,d6,a#,2g,c.6,8a,f,a,2g,p,16g,16a,16a#,16b,2c6,f.6,8c6,"
     "d6,a#,2g,c.6,8a,a#,e,2f.,1p"},
    {/* South Park */ 5,
     8,
     125,
     "e,e,e,16e,e,16e,p,e,e,e,e,e,16p,16e,e,2p,g,g,4g,16b,16b,b,e,a#,16g,16g,g,16f#,16f#,f#,e"},
    {/* Spongebob Squarepants - Theme */ 6,
     4,
     112,
     "c,a5,g5,e5,c,a5,g5,e5,c,a5,g5,e5,8g.5,16g5,2a5,b5,2c,2p,c,a5,g5,"
     "e5,c,a5,g5,e5,c,a5,g5,e5,8g.5,16g5,2a5,b5,2c,2p,c,a5,g5,e5,c,a5,"
     "g5,e5,c,a5,g5,e5,8g.5,16g5,2a5,b5,2c,2p,c,a5,g5,e5,c,a5,g5,e5,c,"
     "a5,g5,e5,8g.5,16g5,2a5,b5,2c"},
    {/* Star Trek */ 5, 16, 63, "8f.,a#,4d#.6,8d6,a#.,g.,c.6,4f6"},
    {/* Star Wars */ 6,
     8,
     180,
     "f5,f5,f5,2a#5.,2f.,d#,d,c,2a#.,4f.,d#,d,c,2a#.,4f.,d#,d,d#,2c,4p,f5,f5,f5,2a#5.,2f.,d#"
     ",d,c,2a#.,4f.,d#,d,c,2a#.,4f.,d#,d,d#,2c"},
    {/* Super Mario Bros - Theme */ 6,
     4,
     100,
     "p,8c.5,16g5,8p,8e5,16p,8a5,16b5,16p,16a_5,8a5,8g5,8e,8g,8a,16e,16g,16p,"
     "8e,16c,16d,8b.5,8c.,16g5,8p,8e5,16p,8a5,16b5,16p,16a_5,8a5,8g5,8e,8g,"
     "8a,16f,16g,16p,8e,16c,16d,8b.5"},
    {/* Super Mario Bros 3 - Theme */ 6,
     4,
     100,
     "16e,16e,32p,8e,16c,8e,8g,8p,8g5,8p,8c,16p,8g5,16p,8e5,16p,8a5,8b5,"
     "16a_5,8a5,16g.5,16e,16g,8a,16f,8g,8e,16c,16d,8b5,16p,8c,16p,8g5,16p,"
     "8e5,16p,8a5,8b5,16a_5,8a5,16g.5,16e,16g,8a,16f,8g,8e,16c,16d,8b5,8p,"
     "16g,16f_,16f"},
    {/* Teenage Mutant Ninja Turtle - Theme */ 6,
     4,
     90,
     "p,8g,8a,8g,8a,8g,16a,8g,16p,8a,8a_,8c7,8a_,8c7,8d_7,16c7,8a_,"
     "16p,8c7,8f7,8f7,8d_7,8f7,8g_7,16f7,8d_7,16p,8f7,16c7,16c7,"
     "16c7,16c7,8a_,c7,16c7,16c7,16c7,8c7"},
    {/* Terminator Soundtrack - Theme */ 6,
     4,
     90,
     "16d,8e,1f,8e,8c,1f5,16p,8e,1f,8e,8c,2a,2g,16d,8e,1f,8e,8c,1f5,16p,8e,1f,8e,8c,2a,2g"},
    {/* Tetris Theme 1 */ 5,
     4,
     160,
     "e6,8b,8c6,8d6,16e6,16d6,8c6,8b,a,8a,8c6,e6,8d6,8c6,b,8b,8c6,d6,e6,c6,a,2a,8p,d6,"
     "8f6,a6,8g6,8f6,e6,8e6,8c6,e6,8d6,8c6,b,8b,8c6,d6,e6,c6,a,a"},
    {/* Tetris Theme 2 */ 5,
     4,
     160,
     "d6,32p,c.6,32p,8a,8c6,8a#,16a,16g,f,c,8a,8c6,8g,8a,f,c,d,8d,8e,8g,8f,8e,8d,c,c,c"},
    {/* Tetris Theme 3 */ 5,
     4,
     63,
     "d#6,b,c#6,a#,16b,16g#,16a#,16b,16b,16g#,16a#,16b,c#6,g,d#6,16p,16g#,16a#,16b,c#6,"
     "16p,16b,16a#,g#,g,g#,16f,16g,16g#,16a#,8d#.6,32d#6,32p,32d#6,32p,32d#6,32p,16d6,"
     "16d#6,8f.6,16d6,8a#,8p,8f#6,8d#6,8f#,8g#,a#.,16p,16a#,8d#.6,16f6,16f#6,16f6,16d#6,"
     "16a#,8g#.,16b,8d#6,16f6,16d#6,8a#.,16b,16a#,16g#,16f,16f#,d#"},
    {/* The A-Team */ 5, 8, 132, "4d#6,a#,2d#6,16p,g#,4a#,4d#.,p,16g,16a#,d#6,a#,f6,2d#6,16p,c#.6,16c6,16a#,g#.,2a#."},
    {/* The Muppets - Theme */ 6,
     4,
     225,
     "16a5,8p.,8a,16p.,32c5,8a,8p,8f_5,16p.,32b5,8c_,16p.,32g5,8c_,8p,8e5,16p.,32f_5,8d,8p"},
    {/* The X Files - Theme */ 6,
     4,
     125,
     "e5,b5,a5,b5,d,2b.5,1p,e5,b5,a5,b5,e,2b.5,g,f_,e,d,f_,2b.5,1p,e5,b5,a5,b5,d,2b.5,1p,e,2b.5"},

    {0, 0, 0, 0}};

volatile unsigned char beat_speed;

void
main() {
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
  INTERRUPT_ENABLE(); /* Enable General Purpose Interrupts */

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
    } else
      duration = rt_p->defaultduration;

    if(Melody[pointer + 1] == '#') {

      /* Process Sharps */

      switch(Melody[pointer]) {
        case 'a': note = 10726; break;
        case 'c': note = 9019; break;
        case 'd': note = 8035; break;
        case 'f': note = 6757; break;
        case 'g': note = 6024; break;
      }
      pointer += 2;

    } else {

      switch(Melody[pointer]) {
        case 'a': note = 11364; break;
        case 'b': note = 10123; break;
        case 'c': note = 9555; break;
        case 'd': note = 8513; break;
        case 'e': note = 7584; break;
        case 'f': note = 7158; break;
        case 'g': note = 6378; break;
        case 'p': note = 0; break;
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
  while(TMR0Count) {
  };
  beep = 0;

  /* Loop */
  while(1) {
  };
}

void
PlayNote(unsigned short note, unsigned char octave, unsigned int duration) {

  /* Process octave */
  switch(octave) {
    case 4: /* Do noting */ break;
    case 5: /* %2 */ note = note >> 1; break;
    case 6: /* %4 */ note = note >> 2; break;
    case 7: /* %8 */ note = note >> 4; break;
  }

  /* Wait until last note has played */
  while(TMR0Count) {
  };
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
  if(duration & 0x80)
    TMR0Count = (TMR0Count + (TMR0Count >> 1));

  if(note)
    beep = 1;
}

// void InitTimer(void) {
//  /* Initialise Timer 0 */
//  OPTION_REG = 0b11010111; /* Set TMR0 to Internal CLk, 1:256 */
//  TIMER0_INTERRUPT_CLEAR(); /* Clear TMR0 Flag, ready for use */
//  T0IE = 1; /* Enable Timer Overflow Interrupt */

//  /* Initialise Timer 1 */
//  T1CON = 0b00000001; /* Counter Enabled, Using Ext Pin 1:1 Prescaler */
//  TMR1IF = 0; /* Clear Flag */
//  TMR1IE = 1; /* Enable Interrupt */
//}

void interrupt
interr(void) {
  if(TIMER0_INTERRUPT_FLAG) {
    TMR0 = beat_speed;
    if(TMR0Count)
      TMR0Count--;
    TIMER0_INTERRUPT_CLEAR();
  }
  if(TMR1IF) {
    if(beep)
      TONE = !TONE;
    else
      TONE = 0;
    TMR1H = preloadTMR1H;
    TMR1L = preloadTMR1L;
    TMR1IF = 0; /* Clear Flag */
  }
}
