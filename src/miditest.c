#include "config-bits.h"
#include "../lib/const.h"
#include "../lib/typedef.h"
#include "../lib/interrupt.h"
#include "../lib/oscillator.h"
#include "../lib/timer.h"
#include "../lib/uart.h"
#include "../lib/extra/midi.h"
#include "../lib/lcd5110.h"
#include "bresenham.h"

/* Decoded channel-voice or System Common message. Realtime bytes
   (0xF8-0xFF) don't produce one of these -- they're reported separately
   via midi_last_realtime, since they can legally interrupt an
   in-progress message (§3a).

   For channel-voice messages (status byte < 0xf0), .status is the top
   nibble only (e.g. MIDI_NOTE_ON) and .channel is 0-15. For System
   Common messages (0xf1-0xf6), .status is the raw status byte and
   .channel is unused (always 0) -- System Common has no channel field. */
typedef struct {
  uint8_t status;
  uint8_t channel;
  uint8_t data1;
  uint8_t data2;
} midi_msg_t;

volatile midi_msg_t midi_last_msg;
volatile BOOL midi_msg_ready = 0;
volatile uint8_t midi_last_realtime = 0;

static uint8_t running_status = 0;
static uint8_t data_buf[2];
static uint8_t data_count = 0;

/* Number of data bytes following a channel-voice or System Common status
   byte, or 0xff if it's not one we track (SysEx start/end, or a byte
   that's reserved/never legally sent as a status). */
static uint8_t
midi_data_len(uint8_t status) {
  switch(status) {
  case 0xf1: /* MTC Quarter Frame */
  case 0xf3: /* Song Select */
    return 1;
  case 0xf2: /* Song Position Pointer */
    return 2;
  case 0xf6: /* Tune Request */
    return 0;
  default:
    break;
  }
  switch(status & 0xf0) {
  case 0xc0: /* Program Change */
  case 0xd0: /* Channel Aftertouch */
    return 1;
  case 0x80: /* Note Off */
  case 0x90: /* Note On */
  case 0xa0: /* Polyphonic Aftertouch */
  case 0xb0: /* Control Change */
  case 0xe0: /* Pitch Bend */
    return 2;
  default: /* SysEx (0xf0/0xf7) -- not parsed, see §6 non-goals */
    return 0xff;
  }
}

/* Stores a completed message and flags it ready for the main loop. */
static void
midi_dispatch(uint8_t status, uint8_t d1, uint8_t d2) {
  midi_last_msg.status = status < 0xf0 ? (status & 0xf0) : status;
  midi_last_msg.channel = status < 0xf0 ? (status & 0x0f) : 0;
  midi_last_msg.data1 = d1;
  midi_last_msg.data2 = d2;
  midi_msg_ready = 1;
}

/* Feeds one received byte through the parser state machine. Realtime
   bytes are handled immediately regardless of what's mid-flight; running
   status lets repeated same-type messages omit the status byte. Per
   spec, System Common messages (unlike channel-voice ones) cancel
   running status once they complete. */
static void
midi_parse_byte(uint8_t byte) {
  if(byte >= 0xf8) {
    /* System Realtime: Clock/Start/Continue/Stop/ActiveSense/Reset --
       does not touch running status or any in-progress message */
    midi_last_realtime = byte;
    return;
  }

  if(byte & 0x80) {
    /* new status byte */
    uint8_t len = midi_data_len(byte);
    if(len == 0xff) {
      /* SysEx start/end: not parsed, just drop running status so stray
         data bytes afterward are ignored until the next real status
         byte arrives */
      running_status = 0;
      data_count = 0;
      return;
    }
    running_status = byte;
    data_count = 0;
    if(len == 0) {
      /* zero-data message (Tune Request) completes on the status byte
         itself -- there's no data byte to wait for */
      midi_dispatch(byte, 0, 0);
      running_status = 0; /* System Common cancels running status */
    }
    return;
  }

  /* data byte */
  if(running_status == 0)
    return; /* no status yet (or an unparsed SysEx) -- drop */

  data_buf[data_count++] = byte;

  if(data_count == midi_data_len(running_status)) {
    midi_dispatch(running_status, data_buf[0], data_count > 1 ? data_buf[1] : 0);
    data_count = 0;
    if(running_status >= 0xf0)
      running_status = 0; /* System Common cancels running status */
  }
}

/* Drains midi_rxq (filled by midi_int() in the ISR) and advances the
   parser one byte at a time. Call from the main loop -- MIDI reception is
   interrupt-driven (push), the parser is pull/poll-driven by design: the
   ISR only has to enqueue a byte and get out, so it stays short and
   doesn't do any parsing work at interrupt time. */
void
midi_poll(void) {
  int byte;

  while((byte = midi_getch()) >= 0) midi_parse_byte((uint8_t)byte);
}

/* Decisecond (0.1s) tick counter, advanced from Timer0 overflows via a
   Bresenham accumulator (src/bresenham.h, same technique src/blinktest.c
   uses for its millisecond ticks) -- exact over time, no drift, and no
   division in the hot path. A 32-bit accumulator is required here (not
   the 16-bit BRESENHAM_DECL default): at OSC_4=12MHz (48MHz system
   clock), the target (OSC_4/10 = 1,200,000) doesn't fit in 16 bits. */
volatile uint32_t decisec_bres = 0;
volatile uint32_t decisec_count = 0;

#define TRANSPORT_LED_PIN RA5
#define TRANSPORT_LED_TRIS TRISA5

/* LCD MIDI dump: 3 fixed rows (the display's 14-char/6-row text grid
   doesn't fit 3 side-by-side columns legibly) -- row 0 for Note On/Off,
   row 1 for Control Change, row 2 for everything else (Program Change,
   Aftertouch, Pitch Bend, System Common), row 3 for transport/BPM. */
#define LCD_ROW_NOTE 0
#define LCD_ROW_CC 1
#define LCD_ROW_OTHER 2
#define LCD_ROW_TRANSPORT 3

static const char* const halftone_names[12] = {"C-", "C#", "D-", "D#", "E-", "F-", "F#", "G-", "G#", "A-", "A#", "B-"};

static void
lcd_put_hex_byte(uint8_t v) {
  static const char hexdig[] = "0123456789ABCDEF";
  lcd_putch(hexdig[v >> 4]);
  lcd_putch(hexdig[v & 0x0f]);
}

/* e.g. note 61 -> "C#4" */
static void
lcd_put_note_name(uint8_t note) {
  int8_t octave = MIDI_NOTE_OCTAVE(note);
  lcd_puts(halftone_names[MIDI_NOTE_HALFTONE(note)]);
  if(octave < 0) {
    lcd_putch('-');
    octave = -octave;
  }
  lcd_putch('0' + octave);
}

static void
lcd_show_note(const midi_msg_t* msg) {
  lcd_clear_line(LCD_ROW_NOTE);
  lcd_gotoxy(0, LCD_ROW_NOTE);
  lcd_put_note_name(msg->data1);
  lcd_putch(msg->status == MIDI_NOTE_OFF ? '-' : ' ');
  lcd_put_hex_byte(msg->data2); /* velocity */
}

static void
lcd_show_cc(const midi_msg_t* msg) {
  lcd_clear_line(LCD_ROW_CC);
  lcd_gotoxy(0, LCD_ROW_CC);
  lcd_put_hex_byte(msg->data1); /* controller number */
  lcd_putch(' ');
  lcd_put_hex_byte(msg->data2); /* value */
}

/* Program Change, Aftertouch, Pitch Bend, and System Common -- the
   "everything else" column (§9.4). */
static void
lcd_show_other(const midi_msg_t* msg) {
  const char* tag;

  lcd_clear_line(LCD_ROW_OTHER);
  lcd_gotoxy(0, LCD_ROW_OTHER);

  switch(msg->status) {
  case 0xc0: tag = "PC "; break;
  case 0xd0: tag = "AT "; break;
  case 0xa0: tag = "PA "; break;
  case 0xe0: tag = "PB "; break;
  case 0xf1: tag = "MTC "; break;
  case 0xf2: tag = "SPP "; break;
  case 0xf3: tag = "SSEL "; break;
  case 0xf6: tag = "TUNE"; break;
  default: tag = "? "; break;
  }
  lcd_puts(tag);
  if(msg->status != 0xf6) { /* Tune Request has no data bytes to show */
    lcd_put_hex_byte(msg->data1);
    if(msg->status == 0xa0 || msg->status == 0xe0 || msg->status == 0xf2) {
      lcd_putch(' ');
      lcd_put_hex_byte(msg->data2);
    }
  }
}

static uint32_t last_quarter_decisec = 0;
static uint8_t midi_clock_count = 0;
static uint16_t bpm_x10 = 0; /* fixed point, tenths of a BPM, e.g. 1204 = 120.4 */

/* BPM_x10 = round(6000 / elapsed_deciseconds), tabulated so computing a
   tempo from a measured interval never needs a runtime division (this
   chip has no hardware divider, only an 8-bit multiplier) -- covers
   20.0-600.0 BPM, well beyond any real musical tempo. Index 0 is unused
   (an elapsed time of 0 deciseconds can't happen between two distinct
   quarter notes; treated as "not enough data yet"). */
static const uint16_t bpm_table[31] = {
    0,    /* 0: invalid */
    6000, 3000, 2000, 1500, 1200, 1000, 857, 750, 667, 600,
    545,  500,  462,  429,  400,  375,  353, 333, 316, 300,
    286,  273,  261,  250,  240,  231,  222, 214, 207, 200,
};

static uint16_t
bpm_from_elapsed(uint32_t elapsed_decisec) {
  if(elapsed_decisec == 0)
    return 0; /* not enough data yet */
  if(elapsed_decisec > 30)
    elapsed_decisec = 30; /* clamp: slower than 20 BPM reads as 20 BPM */
  return bpm_table[elapsed_decisec];
}

static void
lcd_show_transport(const char* state) {
  lcd_clear_line(LCD_ROW_TRANSPORT);
  lcd_gotoxy(0, LCD_ROW_TRANSPORT);
  lcd_puts(state);
}

/* prints v in decimal, no leading zeros -- v is small (BPM_x10 <= 6000)
   so this doesn't need lib/format.c's general-purpose (and much
   heavier, math.h-linking) formatter */
static void
lcd_put_dec(uint16_t v) {
  char buf[5];
  uint8_t i = 0;
  if(v == 0) {
    lcd_putch('0');
    return;
  }
  while(v) {
    buf[i++] = '0' + (v % 10);
    v /= 10;
  }
  while(i)
    lcd_putch(buf[--i]);
}

static void
lcd_show_bpm(uint16_t bpm_x10_val) {
  lcd_clear_line(LCD_ROW_TRANSPORT);
  lcd_gotoxy(0, LCD_ROW_TRANSPORT);
  lcd_puts("BPM ");
  lcd_put_dec(bpm_x10_val / 10);
  lcd_putch('.');
  lcd_put_dec(bpm_x10_val % 10);
}

INTERRUPT_FN() {
  midi_int();

  if(TIMER0_INTERRUPT_FLAG) {
    BRESENHAM_INC8(decisec_bres);
    if(BRESENHAM_COND(decisec_bres, OSC_4 / 10)) {
      BRESENHAM_SUB(decisec_bres, OSC_4 / 10);
      decisec_count++;
    }
    TIMER0_INTERRUPT_CLEAR();
  }
}

int
main() {
  midi_init();

  TRANSPORT_LED_TRIS = OUTPUT;
  TRANSPORT_LED_PIN = LOW;

  lcd_init();
  lcd_clear();

  timer0_init(PRESCALE_1_1 | TIMER0_FLAGS_INTR);
  TIMER0_INTERRUPT_CLEAR();
  TIMER0_INTERRUPT_ENABLE();

  PEIE = 1;
  INTERRUPT_ENABLE();

  for(;;) {
    midi_poll();

    if(midi_msg_ready) {
      midi_msg_ready = 0;

      switch(midi_last_msg.status) {
      case 0x80: /* Note Off */
      case 0x90: /* Note On */
        lcd_show_note((const midi_msg_t*)&midi_last_msg);
        break;
      case 0xb0: /* Control Change */
        lcd_show_cc((const midi_msg_t*)&midi_last_msg);
        break;
      default: /* Program Change, Aftertouch, Pitch Bend, System Common */
        lcd_show_other((const midi_msg_t*)&midi_last_msg);
        break;
      }
    }

    if(midi_last_realtime) {
      uint8_t realtime = midi_last_realtime;
      midi_last_realtime = 0;

      if(realtime == 0xf8) { /* Timing Clock -- 24 per quarter note, fixed by spec */
        midi_clock_count++;

        /* on for the first eighth note (12 clocks), off for the second
           (12 clocks) -- one full blink per quarter note (§9.1) */
        TRANSPORT_LED_PIN = midi_clock_count < 12;

        if(midi_clock_count >= 24) {
          uint32_t elapsed = decisec_count - last_quarter_decisec;
          last_quarter_decisec = decisec_count;
          bpm_x10 = bpm_from_elapsed(elapsed);
          midi_clock_count = 0;
          if(bpm_x10)
            lcd_show_bpm(bpm_x10);
        }
      } else if(realtime == 0xfc) { /* Stop */
        TRANSPORT_LED_PIN = LOW;
        midi_clock_count = 0;
        lcd_show_transport("STOP");
      } else if(realtime == 0xfa) { /* Start */
        midi_clock_count = 0;
        last_quarter_decisec = decisec_count;
        lcd_show_transport("START");
      } else if(realtime == 0xfb) { /* Continue */
        lcd_show_transport("CONT");
      }
    }
  }
}
