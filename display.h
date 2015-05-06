#ifndef DISPLAY_H
#define DISPLAY_H 1

#include "types.h"
#include "interrupt.h"

#define DISPLAY_BLINK_TICKS HZ_TO_TICKS(1)
#define DISPLAY_DOT_BLINK_TICKS HZ_TO_TICKS(5)

//----------------------------------------------------------------------------
// Display state variables
//----------------------------------------------------------------------------
//extern volatile boolean_t blink_enable;
//extern volatile uint32 blink_lasttime;
extern volatile uint8 display_update;
//extern volatile boolean_t display_enable;
//extern uint8 display_latch[4];
extern volatile uint8 display_buffer[4];

//----------------------------------------------------------------------------
// Display functions
//----------------------------------------------------------------------------
//uint8 display_char(const char c);
//void display_string(const rom char *str);
//void display_hexadecimal(uint16 n);
//void display_decimal(uint16 n);
//void display_string(const char *);

//----------------------------------------------------------------------------
// Preprocessor macros
//----------------------------------------------------------------------------

#define DISPLAY_REFRESH() do { \
  INTERRUPT_DISABLE(); \
  \
  display_update |= 1; \
  INTERRUPT_ENABLE(); \
} while(0);

#ifndef __IAR_SYSTEMS_ICC__
# define DISPLAY_SET(a, b, c, d, update) do { \
  display_buffer[0] = (a); \
  display_buffer[1] = (b); \
  display_buffer[2] = (c); \
  display_buffer[3] = (d); \
  \
  INTERRUPT_DISABLE(); \
  display_update |= (update); \
  INTERRUPT_ENABLE(); \
} while(0);
#else
#pragma inline
static void DISPLAY_SET(uint8 a, uint8 b, uint8 c, uint8 d, boolean_t upd)
{
  display_buffer[0] = a;
  display_buffer[1] = b;
  display_buffer[2] = c;
  display_buffer[3] = d;
  
  if(upd)
  {
    __disable_high_priority_interrupt();
    display_update |= upd;  
    __enable_high_priority_interrupt();
  }  
}  
#endif


#define DISPLAY_CLEAR(update) DISPLAY_SET(0,0,0,0,update)

/*
#define bit_test(data, bitno) ((data >> bitno) & 0x01)
#define bit_set(var, bitno) ((var) |= 1UL << (bitno))
#define bit_clear(var, bitno) ((var) &= ~(1UL << (bitno)))
*/

#define DISPLAY_BLINK_DOT(n, freq) \
        if((timer_value / MSEC_TO_TICKS(1000/(freq))) & 1) \
             display_buffer[n] |= 1; \
           else \
              display_buffer[n] &= ~1;


//#define DISPLAY_PORTB_MASK 0x3f
#define DISPLAY_PORTB_MASK 0xff

#ifndef __18F252

# define DISPLAY_PORTC_MASK 0x3c  // Mask for 7-segment common cathodes

# define DISPLAY_CATHODE_0 (RC1)
# define DISPLAY_CATHODE_1 (RC0)
# define DISPLAY_CATHODE_2 (RC6)
# define DISPLAY_CATHODE_3 (RC7)

/*# define DISPLAY_TRIS_0 (TRISC1)
# define DISPLAY_TRIS_1 (TRISC0)
# define DISPLAY_TRIS_2 (TRISC6)
# define DISPLAY_TRIS_3 (TRISC7)*/
#else
# define DISPLAY_PORTC_MASK 0xcc  // Mask for 7-segment common cathodes

# define DISPLAY_CATHODE_0 (RC1)
# define DISPLAY_CATHODE_1 (RC0)
# define DISPLAY_CATHODE_2 (RC4)
# define DISPLAY_CATHODE_3 (RC5)

/*# define DISPLAY_TRIS_0 (TRISC1)
# define DISPLAY_TRIS_1 (TRISC0)
# define DISPLAY_TRIS_2 (TRISC4)
# define DISPLAY_TRIS_3 (TRISC5)*/
#endif



//----------------------------------------------------------------------------
// 7-segment display bit values
//----------------------------------------------------------------------------

/*
 *   aaaaaa
 *   aaaaaa
 *  ff    bb
 *  ff    bb
 *  ff    bb
 *   gggggg
 *   gggggg
 *  ee    cc
 *  ee    cc
 *  ee    cc
 *   dddddd
 *   dddddd  hh
 *           hh
 */
//                         afebgcdh
#define DISPLAY_LETTER_A 0xfc
#define DISPLAY_LETTER_B 0x6e       // 0b01101110
#define DISPLAY_LETTER_C 0xe2       // 0b11100010
#define DISPLAY_LETTER_D 0x3e       // 0b00111110
#define DISPLAY_LETTER_E 0xea       // 0b11101010
#define DISPLAY_LETTER_F 0xe8       // 0b11101000
#define DISPLAY_LETTER_G 0xce       // 0b11011110
#define DISPLAY_LETTER_H 0x7c       // 0b01111100
#define DISPLAY_LETTER_I 0x14       // 0b00010100
#define DISPLAY_LETTER_J 0x36       // 0b00110110
#define DISPLAY_LETTER_K 0x00
#define DISPLAY_LETTER_L 0x62       // 0b01100010
#define DISPLAY_LETTER_M 0x00
#define DISPLAY_LETTER_N 0x2c       // 0b00101100
#define DISPLAY_LETTER_O 0xf6       // 0b11110110
#define DISPLAY_LETTER_P 0xf8       // 0b11111000
#define DISPLAY_LETTER_Q 0xdc       // 0b11011100
#define DISPLAY_LETTER_R 0x28       // 0b00101000
#define DISPLAY_LETTER_S 0xce       // 0b11001110
#define DISPLAY_LETTER_T 0x6a       // 0b01101010
#define DISPLAY_LETTER_U 0x76       // 0b01110110
#define DISPLAY_LETTER_V 0x26       // 0b00100110
#define DISPLAY_LETTER_W 0x00       
#define DISPLAY_LETTER_X 0x00      
#define DISPLAY_LETTER_Y 0x5c       // 0b01011100
#define DISPLAY_LETTER_Z 0xba       // 0b10111010

#define DISPLAY_DEGREE   0xd8       // 0b11011000

#define DISPLAY_EXCLAM   0x11


//----------------------------------------------------------------------------
// Prototypes
//----------------------------------------------------------------------------

void display_decimal(uint16);
void display_hexadecimal(uint16);
void display_float(float f);

extern const rom uint8 display_digits[];
extern const rom uint8 display_animation[];
extern const rom uint8 display_letters[];

#endif // !defined(DISPLAY_H)
