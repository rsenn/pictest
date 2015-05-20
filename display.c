#include "pictest.h"
#include "display.h"
#include "interrupt.h"

//----------------------------------------------------------------------------
// Variables for controlling the 7-segment display
//----------------------------------------------------------------------------
uint8 display_latch[4];
volatile uint8 display_buffer[4];
volatile uint8 display_update = 0;
volatile bool display_enable = TRUE;

// blinking
volatile bool blink_enable = 0;
volatile int8 blink_count = 1;
volatile uint32 blink_lasttime;

//----------------------------------------------------------------------------
uint8 display_char(char c) {
  uint8 n;

  if((c >= '0' && c <= '9'))
    return display_digits[c & 0x0f];

  if(c == '!')
    return DISPLAY_EXCLAM;

  if((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z'))
    n = c & 0x1f;
  else
    n = 0;

  return display_letters[n];
}

//----------------------------------------------------------------------------
void display_string(const char *str) {
  uint8 v[4];

  v[0] = display_char(*str);
  if(*str) str++;
  if(*str == '.') {
    v[0] |= 1;
    str++;
  }
  v[1] = display_char(*str);
  if(*str) str++;
  if(*str == '.') {
    v[1] |= 1;
    str++;
  }
  v[2] = display_char(*str);
  if(*str) str++;
  if(*str == '.') {
    v[2] |= 1;
    str++;
  }
  v[3] = display_char(*str);
  if(*str) str++;
  if(*str == '.') {
    v[3] |= 1;
    str++;
  }

  DISPLAY_SET(v[0], v[1], v[2], v[3], 1);
}

//----------------------------------------------------------------------------
//#ifdef __DEBUG
void display_float(float f) {
  bool neg = FALSE;
  uint16 mult;

  if(f < 0) {
    neg = TRUE;
    f = -f;
  }

  if(f < 10) {
    if(neg) mult = 100;
    else mult = 1000;
  } else if(f < 100) {
    if(neg) mult = 10;
    else mult = 100;
  } else if(f < 1000) {
    if(neg) mult = 1;
    else mult = 10;
  } else mult = 1;

  display_decimal((uint16)((f * (float)mult)+0.5));

  if(neg)
    display_buffer[0] = 0x08;

  switch(mult) {
  case 1000:
    display_buffer[0] |= 1;
    break;
  case 100:
    display_buffer[1] |= 1;
    break;
  case 10:
    display_buffer[2] |= 1;
    break;
  }

}
//#endif // defined(__DEBUG)

//----------------------------------------------------------------------------
#ifdef __DEBUG
void display_hexadecimal(uint16 n) {
  uint8 v[4];

  v[3] = display_digits[n & 0x0f];
  n >>= 4;
  v[2] = display_digits[n & 0x0f];
  n >>= 4;
  v[1] = display_digits[n & 0x0f];
  n >>= 4;
  v[0] = display_digits[n & 0x0f];

  DISPLAY_SET(v[0], v[1], v[2], v[3], 0);
}
#endif // defined(__DEBUG)

//----------------------------------------------------------------------------
void display_decimal(uint16 n) {
  uint8 v[4];

  v[3] = display_digits[n % 10];
  n /= 10;
  v[2] = display_digits[n % 10];
  n /= 10;
  v[1] = display_digits[n % 10];
  n /= 10;
  v[0] = display_digits[n % 10];

  DISPLAY_SET(v[0], v[1], v[2], v[3], 0);
}



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

//----------------------------------------------------------------------------


//----------------------------------------------------------------------------

const rom uint8 display_digits[] = {
//  afebgcdh
  0xf6, // 0b11110110, // 0
  0x14, // 0b00010100, // 1
  0xba, // 0b10111010, // 2
  0x9e, // 0b10011110, // 3
  0x5c, // 0b01011100, // 4
  0xce, // 0b11001110, // 5
  0xee, // 0b11101110, // 6
  0x94, // 0b10010100, // 7
  0xfe, // 0b11111110, // 8
  0xde, // 0b11011110, // 9
  //----------------- hex numbers
  DISPLAY_LETTER_A, // A
  DISPLAY_LETTER_B, // b
  DISPLAY_LETTER_C, // C
  DISPLAY_LETTER_D, // d
  DISPLAY_LETTER_E, // E
  DISPLAY_LETTER_F, // F
};


//---------------------h-------------------------------------------------------
const rom uint8 display_animation[] = {
  0x80, // turn on a
  0x90, // 0b10010000, // turn on ab
  0x98, // 0b10011000, // turn on abg
  0xd8, // 0b11011000, // turn on abgf
  0xd8, // 0b11011000, // turn on abgf
};

//----------------------------------------------------------------------------

const rom uint8 display_letters[] = {
  0,                  // 0
  DISPLAY_LETTER_A,   // 1
  DISPLAY_LETTER_B,   // 2
  DISPLAY_LETTER_C,   // 3
  DISPLAY_LETTER_D,   // 4
  DISPLAY_LETTER_E,   // 5
  DISPLAY_LETTER_F,   // 6
  DISPLAY_LETTER_G,   // 7
  DISPLAY_LETTER_H,   // 8
  DISPLAY_LETTER_I,   // 9
  DISPLAY_LETTER_J,   // 10
  0,                  // 11
  DISPLAY_LETTER_L,   // 12
  0,                  // 13
  DISPLAY_LETTER_N,   // 14
  DISPLAY_LETTER_O,   // 15
  DISPLAY_LETTER_P,   // 16
  DISPLAY_LETTER_Q,   // 17
  DISPLAY_LETTER_R,   // 18
  DISPLAY_LETTER_S,   // 19
  DISPLAY_LETTER_T,   // 20
  DISPLAY_LETTER_U,   // 21
  0,                  // 22
  0,                  // 23
  0,                  // 24
  DISPLAY_LETTER_Y,   // 25
  DISPLAY_LETTER_Z,   // 26
  0,                  // 27
  0,                  // 28
  0,                  // 29
  0,                  // 30
  0                   // 31
};

