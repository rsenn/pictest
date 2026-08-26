# miditest — USB-MIDI/UART-MIDI Light Controller — Design Doc

Status: **draft, pre-implementation**. Capturing requirements before any code in
`src/miditest.c` is written. Sections marked "OPEN" need the musician's/your
input before they can be locked in.

## Build: SDCC + XC8, both required

All firmware for this project (demo and full vision) must build under
**both** toolchains already wired into this repo's `Makefile`:
- `COMPILER=sdcc`, `CCDIR=/opt/sdcc-4.3.0rc1` (`build/sdcc.mk`)
- `COMPILER=xc8` (`build/xc8.mk`, default `CCDIR=/opt/microchip/xc8/$(CCVER)`)

No new build plumbing is needed — both compiler targets already exist in
the Makefile chain. New code (in `src/miditest.c` and any new `lib/*.[ch]`)
must follow the existing cross-compiler pattern used throughout `lib/`
(`#if defined(__SDCC) || defined(__XC8) || defined(HI_TECH_C) || ...`, see
`lib/typedef.h`, `lib/interrupt.h`, `lib/device.h`) rather than assuming
one compiler. Note the two toolchains predefine the target-chip macro
differently — XC8 predefines `__18F25K50` (uppercase), while `lib/device.h`
keys off lowercase `__18f25k50`, which the build passes explicitly via
`-D__18f25k50=1` (see `build/pictest-xc8.mk` for the existing pattern) —
keep following that convention for any new per-chip code, don't rely on
compiler-predefined macros directly.

### Build matrix — `miditest` is now wired in

`miditest` builds cleanly under both toolchains via the top-level
Makefile's matrix form:

```
make COMPILERS="sdcc xc8" CCDIR=/opt/sdcc-4.3.0rc1 CHIPS=18f25k50 BAUD_RATES=31250 PROGRAMS=miditest compile
```

`build/vars.mk` gained a `miditest_SOURCES`/`miditest_DEFS` entry
(`lib/timer.c lib/uart.c lib/queue.c lib/extra/midi.c lib/lcd5110.c
lib/delay.c`, `-DUSE_TIMER0=1 -DUSE_UART=1 -DUSE_NOKIA5110_LCD=1`). MIDI
baud comes from the existing `BAUD_RATES=31250` mechanism (per
`lib/extra/midi.h`'s own note), not a hardcoded `-DUART_BAUD=` in
`miditest_DEFS` — a second `-DUART_BAUD=` collides with the one
`build/vars.mk` already adds globally from `$(BAUD)`, and XC8's
preprocessor treats that redefinition as fatal even though it prints it
as a "warning".

Getting there also surfaced and fixed four **pre-existing** bugs (verified
by reproducing each on `blinktest` before the fix, so none of this was
`miditest`-specific):

| File | Bug | Fix |
|---|---|---|
| `build/sdcc.mk` | `SDCC =` always resolved bare `sdcc` off `$PATH`, ignoring `CCDIR` — silently picked up the system's non-pic16 SDCC 4.2.0 instead of `/opt/sdcc-4.3.0rc1` | use `$(CCDIR)/bin/$(COMPILER_NAME)` when `CCDIR` is set to something other than `/usr` |
| `lib/queue.h` | no trailing newline after the closing `#endif // QUEUE_H` — XC8's lexer reads it as an unterminated `//` comment eating the `#endif` | added trailing newline |
| `lib/lcd5110.c` | called `__delay_ms()`/`delay_ms()` without including `lib/delay.h` — under SDCC this hits a builtin with a mismatched prototype ("too many parameters"); under XC8 the real `delay_ms`/`delay_us` never got linked in | added `#include "delay.h"`; added `lib/delay.c` to `miditest_SOURCES` |
| `src/config-18f25k50.h` | `#pragma config CCP2MX = RC1` etc. get macro-expanded by `lib/device.h`'s `RC1`/`RC0`/`RB3` port-bit macros (`RC1` → `PORTCbits.RC1`) before the pragma is parsed — this was the previously-documented "out of scope" XC8 v1.43 blocker, now actually fixed | `#undef`/`#define` those three macros bracketing just the CONFIG3H pragma lines |

Confirmed `pictest` and `ringtone` still build clean on both toolchains
after these fixes. `blinktest`/`rgbtest` still fail on both toolchains for
unrelated, pre-existing reasons (missing `_ser_txsize` symbol in
`lib/ser.c`, chip-specific SFR names not present on the 18F25K50) — not
touched by this work.

### Build matrix — CODE_OFFSET (bootloader-relocated builds)

`miditest` is meant to be flashed under the existing USB bootloader at
`../USB-uC/USB_uC.X` (`main.c`: the bootloader's own vectors at
0x0000/0x0008/0x0018 just `GOTO PROG_REGION_START[+0x08/+0x18]`, where
`PROG_REGION_START = 0x2000`), so the app needs to link and build at
`CODE_OFFSET=0x2000` in addition to the normal `0x0000` (bare-chip/ICSP)
build:

```
make COMPILERS="sdcc xc8" CCDIR=/opt/sdcc-4.3.0rc1 CHIPS=18f25k50 BAUD_RATES=31250 CODE_OFFSETS="0x0000 0x2000" PROGRAMS=miditest compile
```

- **XC8**: already fully wired (`build/xc8.mk`'s `--codeoffset=` LDFLAG) —
  relocates code, the reset vector, and the interrupt vector table in one
  flag, and correctly emits nothing at all below the offset.
- **SDCC**: had no working equivalent, needed real changes in
  `build/sdcc.mk`:
  - The generic `--code-loc=` option (previously wired but unused — the
    `=` form isn't accepted at all, and even in the accepted space-separated
    form it turns out to be a silent no-op for the pic16 port) is gone.
    pic16 relocation instead needs a **custom gputils linker script**
    with `CODEPAGE NAME=page` shifted to `START=$(CODE_OFFSET)` — generated
    on the fly per offset from gplink's own default script (located next to
    whichever `gplink` binary `which gplink` resolves to, `$(chipl)_g.lkr`),
    passed in via `-Wl-s -Wl<generated-script>`.
  - `--ivt-loc=$(CODE_OFFSET)+8` (this one *is* real and pic16-specific,
    confirmed via its own "setting interrupt vector addresses" link-time
    message) relocates the `__interrupt()` vector trampoline to match where
    the bootloader's `GOTO PROG_REGION_START+0x08` expects it.
  - Even with both of those, sdcc's crt0 unconditionally drops a small
    reset-vector stub at the true, physical 0x0000/0x0008 regardless of
    where `page` was shifted to — harmless if the bootloader's own upload
    path only ever touches its app region, but if this hex were ever
    written whole via ICSP it would clobber the bootloader's own vector
    table at those same addresses. XC8's `--codeoffset` avoids emitting
    that stub in the first place; sdcc doesn't, so the `$(HEXFILE)` recipe
    now post-processes the linked `.hex` with a small `awk` step that drops
    any data record whose true (bank-aware) address falls below
    `CODE_OFFSET`, so the sdcc-built offset image ends up address-clean
    just like the XC8 one (verified: no data record below 0x2000 survives).

Verified both toolchains produce a clean `0x2000`-based hex with the ISR
vector correctly at `0x2008` and nothing below `0x2000` in the final
`.hex`.

## `lib/` is the `libpicp` submodule — reuse-first rule

`lib/` is the `libpicp` submodule (`.gitmodules`: `lib` →
`https://github.com/rsenn/libpicp`). Working rule for this whole project:
**reuse everything usable from `lib/`**; anything new that's peripheral-
driven or protocol/common-method shaped (not specific to this one
application) becomes a new `lib/<name>.[ch]` pair, in the same style as
existing modules (`PICLIB_<NAME>_H` include guards, chip-conditional pin/
register macros, cross-compiler handling per `lib/typedef.h`) — not
one-off glue code living only in `src/miditest.c`. Concretely, `lib/i2c.
[ch]` and `lib/spi.[ch]` don't exist yet and will need to be written from
scratch in this style if the multi-board MIDI topology (§2, §3a) needs an
inter-board bus. `lib/extra/midi.[ch]` (transport-agnostic MIDI craft/
parse) belongs under `lib/` for the same reason.

## 0. Demo build (v0) — what gets built first

Everything below §1 is the long-term full vision (multi-input MIDI merge,
USB bridge, addressable RGB show, button menu). Before any of that, the
near-term goal is a standalone **demo** to show off the concept, for a
musician doing an all-hardware live act to have a decent rig. Scope for
the demo, as given:

- **Board**: `picstick_25k50_v1` (existing Eagle board in this repo).
- **Power**: powered from a USB charger into the picstick's USB connector.
  Checked `eagle/picstick_25k50_v1.sch`: there is **no onboard 5V→3.3V
  LDO** — VDD is tied directly to USB VBUS, so the board runs at **5V**,
  not 3.3V. The PIC18F25K50's internal USB voltage regulator only
  generates an internal 3.3V rail for the USB transceiver itself (the
  `VUSB`/`VUSB3V3` net), it does not step down VDD for the rest of the
  chip or any external peripherals. **Implication (OPEN, verify against
  the actual SparkFun 5110 module in hand)**: Nokia 5110 breakouts are
  almost always 3.3V-logic parts; some have their own onboard 3.3V
  regulator + level-shifting and are fine fed from 5V logic, others are
  not — check before wiring, may need a resistor divider/level-shifter on
  the SPI lines from the PIC's 5V GPIO down to the LCD's 3.3V inputs.
- **MIDI input(s)**: **OPEN, being revised** — originally scoped as a single
  DIN-5 MIDI IN with opto-isolator into the hardware EUSART, no MIDI OUT/
  merge/USB-MIDI. This is now in question: the demo may need to read
  multiple MIDI lines and/or USB-MIDI too, and a MIDI merge facility is
  confirmed needed at the full-vision level (§1, §3a) — not yet decided
  whether the demo itself needs more than one input. Whatever the final
  count, §3a's per-input-parser + message-level merge approach is the
  right shape if it does end up multi-input.
- **USB**: **USB-MIDI class endpoint is conditional/optional**, gated
  behind a build-time `#ifdef` — flash footprint on the 25K50 is a
  concern and it may not be needed at all for the demo or even the full
  vision. **USB-CDC bridging incoming UART MIDI to a virtual serial port
  is a firm requirement** (independent of USB-MIDI), so a computer can
  analyze/log the traffic — reuses `USB-Stack/USB_Stack/USB/
  usb_cdc_acm.c` per the `CDC_Serial_Example` already in that stack.
  **OPEN**: whether the v0 demo itself includes the CDC bridge, or defers
  it to the next milestone after the bare LCD+LED demo is working.
- **LCD**: Nokia 5110 wired up per `lib/lcd5110.c/.h`, showing:
  - a fast, at-a-glance, fixed-layout dump of incoming MIDI messages
    (decoded: type, channel, note/CC number + name, value) and MIDI
    transport state. **Clarified**: "graphically appealing" here does
    NOT mean pixel-art/decoration — the real requirement is speed and
    overseeability: the musician needs to read note/octave/CC/transport
    state instantly mid-performance. Achievable with `lcd5110.c`'s
    existing text/symbol primitives (fixed-position fields, maybe a
    handful of custom glyphs for transport icons) — no new graphics
    framework needed, just a good fixed-layout screen design (exact
    field layout still OPEN).
  - MIDI transport state (responding to realtime bytes 0xFA Start, 0xFB
    Continue, 0xFC Stop, 0xF8 Clock) — at minimum a Running/Stopped
    indicator; a BPM readout derived from Clock tick spacing is a nice-to-
    have, not required for v0.
- **LEDs — three total, confirmed simplified (no PWM)**:
  - **RGB indicator**: one common RGB LED (common-cathode or -anode, TBD
    by wiring) driven by 3 plain GPIO pins, each just on/off for its
    color channel. Gives 8 discrete colors (including off and white), no
    fading, no true-color mixing — explicitly *not* meant to preview the
    final light show's look, just to prove out "different colors for
    different musical information" as a concept (e.g. `note % 12`
    chromatic position, or `note / 12` octave number, mapped into one of
    the 8 available colors — exact mapping function OPEN). This also
    means the earlier PWM-budget question is moot for the demo: 0 PWM
    channels needed, so both hardware CCP channels stay free.
  - **Transport-clock LED**: a single-color indicator LED that blinks on
    MIDI Clock (0xF8) / transport state.
  - **Bidirectional-interaction LED**: a single-color indicator LED
    driven by `lib/extra/ledsense.[ch]` (see below) — used as both an
    emitter and a crude sensor.
  - MIDI transport and CC could also want to affect the RGB LED (e.g.
    transport running = base color, note-on briefly overrides it) —
    needs deciding once the rest of the input scope settles, since it
    interacts with what else is competing for that LED.
- **No buttons, no menu, no scenes** in this build — that's full-vision-only
  (§5 item 7). The demo is fixed-function.

### 0a. `lib/extra/ledsense.[ch]` — dual-backend, resolved & implemented

`lib/extra/ledsense.[ch]` (in the `libpicp` submodule) drives an LED as a
sensor via charge/discharge timing (`ledsense_emit`/`ledsense_charge`/
`ledsense_read`/`ledsense_loop`). The original direct-I/O implementation
(GPIO charge/discharge + ADC read) was flagged as "not yet so robust."
**Resolved**: extended to a dual-backend driver, selectable at compile
time via `LEDSENSE_USE_CTMU`:
- **Undefined (default)**: today's direct-I/O behavior, unchanged.
- **Defined**: uses the PIC18F25K50's built-in **CTMU** (Charge Time
  Measurement Unit) peripheral instead — a hardware-trimmed constant
  current source for the charge phase instead of GPIO drive strength,
  expected to be more repeatable. Ported the charge/measure register
  sequence from this repo's existing `ctmu.c` (Pinguino-derived, at the
  top level, not in `lib/`) into libpicp style: no floats, uses `lib/
  adc.h`/`lib/delay.h`, same `uint16_t ledsense_read()` contract so
  callers don't change regardless of backend. Added `ledsense_init()`
  (no-op for direct-I/O; configures `CTMUCONH`/`CTMUCONL`/`CTMUICON` for
  the CTMU backend) — the one new call sites need to add.
- Verified compiling clean under **both** SDCC 4.3.0rc1 and XC8 v2.46 for
  `18f25k50`, both with and without `LEDSENSE_USE_CTMU` defined.
- Along the way, corrected a latent bug: the original file's `#include
  "ds18b20.h"`/`"lcd44780.h"` looked like copy-paste cruft but were
  actually the accidental source of `device.h` (hence `RA4`/`TRISA4`
  etc.) — replaced with an explicit `#include "device.h"`.

### 0b. Demo hardware assembly (ordered build plan)

The concrete physical build sequence for the demo, as given:

1. **Nokia 5110 (SparkFun module)**: wire to the picstick's male header
   via a female header + wire-wrap + resistors + heat-shrink. First step
   of wiring up the demo. (See power/level-shifting note above — verify
   before connecting.)
2. **MIDI RX/TX**: interface through an **Agilent HCPL-2730** dual
   optocoupler on a small perfboard between the picstick's male header
   and a DIN-5 jack with solder tabs. Second step.
3. **LEDs**: wire-wrap + heat-shrink for the RGB LED plus the 2 indicator
   LEDs (transport-clock blinker, `ledsense`-based bidirectional one —
   see §0/§0a). Third step.

This keeps the demo's hardware simple: no PWM/softPWM driver needed for
the RGB LED (just 3 GPIOs), the existing LCD driver, the existing (now
dual-backend) `ledsense.c`, and however many MIDI input(s) the
requirements settle on. The MIDI merge, USB-MIDI, and addressable-LED
work in §1-§7 below stay as the roadmap for after the demo lands.

## 1. Full vision (post-demo)

Sections 1-7 below describe the eventual full stagebox. Purpose and roles:

A stagebox for an all-hardware live act. Sits inline on the performer's DIN-5
MIDI rig — **merging multiple MIDI IN sources onto one MIDI OUT** (at least
a sequencer feeding a synth, plus possibly a groovebox with its own
seq+synth that also outputs MIDI) — bridges the merged/individual streams to
a laptop over USB, and separately drives addressable RGB LEDs (a light show)
from the same MIDI traffic. Has a local Nokia 5110 LCD + 4 buttons so the
show can be inspected and reconfigured without a computer.

Five roles at once:

1. **MIDI merge** — combine 2+ independent live DIN-5 MIDI IN streams
   (sequencer, groovebox, etc.) onto a single MIDI OUT (to the synth), byte-
   correctly (no torn running-status messages, no dropped realtime bytes).
   Confirmed a hard requirement, not optional. This is the topology
   backbone everything else taps into — see §3a.
2. **MIDI sniffer** — dump incoming MIDI traffic (status byte, channel,
   data bytes, decoded name, and which input it came from) to the LCD
   and/or the USB-CDC bridge for live debugging on stage or analysis on a
   computer.
3. **UART↔USB-CDC bridge** (firm requirement) — forward raw/decoded MIDI
   traffic to a computer over USB-CDC (virtual serial) for logging/
   analysis, via `USB-Stack/USB_Stack/USB/usb_cdc_acm.c`.
4. **UART↔USB-MIDI bridge** (optional, `#ifdef`-gated — flash budget) —
   forward the merged (and/or per-port, TBD — see §5) MIDI traffic to the
   host as a class-compliant USB-MIDI streaming device (Interface =
   Audio/MIDI, per USB-Stack's `MIDI_Controller` example), and forward
   USB MIDI OUT traffic from the host back onto the MIDI OUT, so the box
   can be transparent to a DAW/looper on the laptop when this feature is
   built in.
5. **Light controller** — a subset of incoming MIDI (Note On/Off, CC)
   drives an addressable RGB LED strip, independent of whether a host is
   attached. Should keep running the light show even with no USB host
   connected (standalone gig-box mode).
6. **Configurable light-show / choreography UX** — the musician should be
   able to program HOW the firmware reacts to MIDI, analogous to
   programming a sequencer: mapping MIDI events to light behaviors for
   different choreographies per track. **Explicitly under active
   development, not yet specified** (the user's own framing: "this idea
   we will have to develop further") — not designing a speculative
   scheme for this yet, just recording the requirement. Needs a UX on
   the 4-button + LCD interface (§3, §5 item 7) that's versatile and
   artistic, not just a fixed preset list.

## 2. Target hardware

Reusing this repo's existing PIC18F25K50 USB platform
(`src/config-18f25k50.h`, `eagle/PIC18F25k50-USB+ICSP-Board.*`,
`eagle/picstick_25k50_v1.*`) and the sibling `USB-Stack` project for the
USB device stack.

| Function | Peripheral | Notes |
|---|---|---|
| MIDI IN #1 | EUSART hardware (`lib/uart.h`) | 31250 baud, 8N1. The PIC18F25K50 has only **one** hardware EUSART, so this is the only IN that gets hardware-assisted, glitch-free reception |
| MIDI IN #2 (+ #3?) | software UART (`lib/softser.h`, already in-tree), **or** a 2nd/3rd picstick board over an inter-board bus | Two options on the table, not yet chosen (see §5): (a) bit-banged software-UART RX on this same board, timer/interrupt-driven, costing a timer/ISR budget + GPIO per extra input; (b) **cascade multiple `picstick_25k50` boards**, each with its own DIN-5 opto-isolated UART input doing local parse, bridged to a "master" board over **SPI or I2C** — needs new `lib/spi.[ch]`/`lib/i2c.[ch]` (neither exists yet in the `libpicp` submodule). Both may end up coexisting rather than one replacing the other. |
| MIDI OUT (merged) | EUSART TX or bit-banged TX | Whichever port isn't consumed by IN #1 |
| USB-CDC | PIC18F25K50 native USB, `USB-Stack/USB_Stack/USB/usb_cdc_acm.c` | Firm requirement — bridges UART MIDI to a computer for analysis/logging |
| USB-MIDI | PIC18F25K50 native USB, `USB-Stack/USB_Stack` `MIDI_Controller` example | **Conditional/`#ifdef`-gated** — flash-budget concern, may be dropped entirely; composite with CDC if both are built in |
| Addressable LEDs | bit-banged 1-wire (WS2812-style) — **OPEN: confirm LED chipset** | Needs a precise ~800kHz bit-bang or SPI/CCP-assisted output; existing `lib/softpwm.h` (PWM-per-pin, Timer1-driven) is for analog RGB LEDs, not per-pixel addressable ones — different driver needed |
| LCD | Nokia 5110 (PCD8544), `lib/lcd5110.c/.h` already exists | SPI-like bit-bang, pins `LCD_CE/RESET/DC/DATA/CLK` on PORTB |
| Menu input | 4 buttons — **or a rotary encoder + 1 push button, per §9.5** | OPEN: which input scheme, and pin assignment; likely PORTA or remaining PORTB/PORTC pins after LCD + LED + UART are allocated |

**Pin budget concern (OPEN):** LCD currently claims RB2‑RB6. Hardware UART
uses its dedicated TX/RX pins. Each extra on-board MIDI IN needs its own
GPIO for software-UART RX (avoided entirely if using the multi-board/SPI-
I2C cascade option instead). USB uses its dedicated D+/D-. Addressable
LEDs need 1 free timing-critical output pin. 4 buttons need 4 input pins
(or a matrix/ADC ladder to save pins). Need to check
`eagle/PIC18F25k50-USB+ICSP-Board.sch`/`picstick_25k50_v1.sch` for what's
already committed vs. free before locking the pinout — with 2+ MIDI INs +
1 OUT + LCD (5 pins) + LED (1 pin) + 4 buttons this is a tight fit on a
28-pin part and may push toward a button matrix or ADC-ladder input, or
toward the multi-board cascade to avoid stacking software-UART inputs on
one chip.

## 3. Data flow

```
  MIDI IN #1  ----->+                     +-----> MIDI OUT (merged)
  (sequencer)       |                     |       (to synth, DIN-5)
                     |                     |
  MIDI IN #2  ----->|      miditest       |
  (groovebox) ----->|    (PIC18F25K50)    |<----> USB-CDC (to computer, firm)
                     |                     |<----> USB-MIDI (to laptop/DAW, optional)
  MIDI IN #n  ----->|                     |
  (OPEN, §5)         |                     |-----> Addressable RGB LEDs
                     |                     |
                     |                     |<----> Nokia 5110 LCD + 4 buttons
                     +---------------------+
```

If the multi-board cascade option (§2) is used, MIDI IN #2/#3 physically
sit on separate picstick boards, each running their own local MIDI parser,
feeding decoded messages to the "master" board above over SPI/I2C instead
of a local GPIO.

### 3a. MIDI merge — the hard part

Merging N *independent, asynchronous* live MIDI streams onto one OUT is the
riskiest piece of this design, because a naive byte-forwarder can corrupt
messages:

- **Running status is per-stream, not global.** Each input tracks its own
  "last status byte" so repeated same-type messages can omit the status
  byte. When merging, the output's running status has to be tracked
  separately, and a status byte must be re-inserted (or at minimum the
  merge logic must never emit input A's data bytes while input B's running
  status is still "active" on the wire) — you cannot just splice raw bytes
  from two streams.
- **System Realtime bytes (Clock 0xF8, Start/Stop/Continue, Active Sense
  0xFE) can legally interrupt a message mid-stream** on real MIDI gear.
  They're single bytes and don't disturb running status, so they're the
  one thing that *can* be spliced in immediately without breaking the
  other stream's in-progress message — but only if the merge logic
  recognizes and special-cases them rather than treating everything as
  "wait for a full message, then forward."
- **Design implication:** each MIDI IN needs its own independent
  byte-stream parser/state machine producing complete, decoded messages
  (status/channel/data1/data2) before those messages hit the merge/output
  stage — i.e. merge at the *message* level, not the raw-byte level, with
  Realtime bytes handled as an immediate-passthrough special case per
  input. This lines up with the transport-agnostic MIDI library planned
  for `lib/extra/midi.[ch]` (§4): the parser output is transport-agnostic
  (`midi_msg_t`), the transport (UART pin, USB endpoint, or an inter-board
  SPI/I2C link) is just the byte source/sink underneath it. Needs one
  parser instance *per input*, each with its own running-status state.
- **Cross-board merge (if the multi-board cascade option is used):** the
  message-level merge logic is unchanged, but the transport carrying
  decoded `midi_msg_t` values between boards over SPI/I2C is new surface
  area — framing/serializing a `midi_msg_t` over that bus isn't designed
  yet (needs the new `lib/spi.[ch]`/`lib/i2c.[ch]` from §2 first).
- **Output-side contention:** if two inputs produce messages back-to-back,
  the merged OUT needs a small queue (ring buffer) per output so a message
  from input B isn't dropped or torn while input A's message is still
  draining out the (slow, 31250 baud) TX line. Depth OPEN — depends on
  worst-case simultaneous burst (e.g. a chord + a CC sweep at the same
  instant).

Core loop responsibilities:
- **MIDI parser (×N inputs)**: one byte-stream state machine per input
  (status byte, running status, 1 or 2 data bytes depending on message
  type; Realtime bytes handled as immediate passthrough), each producing a
  normalized `midi_msg_t {source, status, channel, data1, data2}`, backed
  by whichever transport (UART, USB, inter-board bus) that input uses.
- **Merge/router**: each parsed message, tagged with its source port, is
  independently: (a) pushed into the output ring buffer feeding the merged
  MIDI OUT (with its own running-status re-encoding), (b) queued for LCD
  sniffer display and/or the USB-CDC bridge (showing which input it came
  from), (c) forwarded to the USB-MIDI IN endpoint if that feature is
  built in, (d) handed to the light-show engine if it matches the
  configured trigger (channel/note-range/CC number — OPEN, see §5).
  USB-MIDI OUT from the host (if built in) is treated as one more input
  into the same merge stage.
- **Light-show engine**: maps MIDI events to LED state/animations per the
  active "scene"/choreography (OPEN and under active development — see
  §1 item 6, §5).
- **UI**: 4 buttons navigate a menu tree on the LCD; also used to toggle
  sniffer view vs. light-show config view, and eventually to author
  choreographies.

## 4. Known building blocks already in this repo / USB-Stack / libpicp

- `lib/extra/midi.c/.h` — currently only note-name constants and one
  `midi_send(putch_ptr, cmd, d1, d2, chan)` helper taking a raw `putch`
  function pointer. Needs extending into a proper transport-agnostic MIDI
  message crafting/parsing API — backed by `lib/uart.h` for the UART
  transport and `../USB-Stack/USB_Stack/` for the USB transport(s) —
  replacing today's single `putch`-based send. This generalizes the
  per-input-parser idea from §3a: the parser/craft API itself doesn't
  know or care which transport it's riding on.
- `lib/lcd5110.c/.h` — full PCD8544 driver (init, puts, gotoxy, symbols).
  Text/symbol primitives only, no widget framework — sufficient for the
  fast/fixed-layout UI this project needs (§0), not a graphics engine.
- `lib/uart.h` — UART driver.
- `lib/softser.h` — bit-banged software UART, candidate for extra MIDI
  IN ports on a single board (§2).
- `lib/extra/ledsense.[ch]` — LED-as-sensor driver, now dual-backend
  (direct-I/O / CTMU), see §0a. Resolved and implemented.
- `lib/i2c.[ch]`, `lib/spi.[ch]` — **do not exist yet**, needed if the
  multi-board MIDI cascade topology (§2) is pursued. To be written from
  scratch in libpicp style (not vendored) when that topology is chosen.
- `/mnt/data/Projects/USB-Stack/USB_Stack/Examples/MIDI_Examples/MIDI_Controller.c` —
  reference for the optional USB-MIDI streaming class descriptor +
  endpoint handling on this exact chip.
- `/mnt/data/Projects/USB-Stack/USB_Stack/USB/usb_cdc_acm.c` — CDC class
  driver backing the firm USB-CDC bridge requirement (also relevant to
  the separate INSIDER debug-monitor idea in `../USB-Stack/IDEAS.md`,
  which stays out of scope here).
- Nothing yet for: addressable LED bit-banging, MIDI byte-stream parser,
  button/menu framework, light-show/choreography scene engine.

## 5. OPEN — requirements still needed from you

Not guessing at these; flagging what's needed before design can be finalized:

1. **LED hardware**: which addressable LED chipset (WS2812/WS2811/SK6812/
   APA102 etc.)? Determines bit-bang timing vs. SPI-clocked (APA102 is much
   easier on a PIC18 since it's a real 2-wire SPI protocol, no strict
   timing loop needed).
2. **LED count / power**: how many pixels, and are they powered/driven
   externally (level shifter, separate 5V rail) or direct from the PIC?
3. **MIDI→light mapping model / choreography UX**: still under active
   development per the user (§1 item 6) — no fixed spec yet. When it
   firms up: fixed small set of behaviors vs. fully configurable per-
   scene mapping editable from the 4-button menu? How many scenes/
   presets, do they persist (EEPROM)?
4. **MIDI trigger scope**: which channel(s)/message types matter for the
   light show — a single dedicated "lighting channel" vs. reacting to
   everything?
5. **MIDI merge topology — how many IN ports, exactly, and single-board
   vs. multi-board?** Confirmed: at least a sequencer→synth pair to
   merge, plus possibly a groovebox (combined seq+synth) that also
   outputs MIDI, and a merge facility is required. Still open: exact port
   count; whether it's done via on-board software-UART inputs (§2 option
   a) or cascaded picstick boards over SPI/I2C (§2 option b) or a mix;
   and whether the groovebox's own synth needs to *receive* the merged
   stream too (bidirectional, not just an IN).
6. **USB role**: USB-CDC bridging is now confirmed firm (for logging/
   analysis on a computer); USB-MIDI is now optional/flash-budget-gated.
   Still open: if USB-MIDI is built in, does the laptop drive the light
   show over it too, or is it purely for optional standalone DAW use?
7. **Buttons**: menu semantics (up/down/select/back?) and what's
   configurable — LED scene/choreography, brightness, MIDI channel
   filter, sniffer on/off?
8. **Standalone mode**: confirmed the light show must run without USB
   attached at all (battery/gig-safe) — please confirm this is a hard
   requirement, since it affects whether USB enumeration is allowed to
   block the main loop.
9. **Board**: full vision — is this on the existing
   `PIC18F25k50-USB+ICSP-Board` Eagle board, the `picstick_25k50_v1`
   board the demo uses, or a new board? Determines what's actually free
   pin-wise for LED data line + 4 buttons alongside the LCD, and whether
   the multi-board cascade option is physically convenient.
10. **Demo LCD power/level-shifting**: does the specific SparkFun 5110
    module in hand have its own 3.3V regulation/level-shifting, given the
    picstick runs at 5V (§0)? Needs checking before wiring step 1 (§0b).
11. **Demo scope for USB-CDC**: is the CDC bridge part of the v0 demo, or
    deferred to the milestone after the bare LCD+LED demo works (§0)?

## 6. Non-goals for v1 (assumed unless told otherwise)

- No SysEx handling beyond pass-through (not parsed/acted on).
- No MIDI clock/transport sync (start/stop/clock) handling for the light
  show beyond what's needed for the transport-clock LED and LCD display.
- No USB-MIDI *host* mode (i.e. not plugging other class-compliant USB-MIDI
  gear into this box) — USB side is device-only, talking to a computer.

## 7. Next steps

Once §5 is answered: lock the pinout (including whether single-board or
multi-board), pick the LED driver approach (bit-bang timer vs.
SPI-clocked) for the addressable strip, define `midi_msg_t` and the
parser state machine in `lib/extra/midi.[ch]`, define the scene/
choreography mapping data structure once that design develops further,
then sketch the menu tree before writing `src/miditest.c`.

## 8. Hardware harnesses (schematics)

The demo's physical build (§0b) is really 4 separate small subprojects,
each its own perfboard/wire-wrap harness plugging into the picstick's
male header. ASCII schematics below, first pass — to be converted to
real EAGLE `.sch` sheets once designs are confirmed and the relevant
library part names are known (see the EAGLE-tooling discussion — this
project will get its own `.scr`/ULP-driven schematic generation rather
than hand-drawing in EAGLE).

### 8.0 Finalized pin table (this doc is the single source of truth for it)

Board facts (pin numbering, on-board LEDs, ICSP sharing, etc.) live in
`picstick.md` — this table is the project-specific *allocation* of those
pins, decided over the course of this design. Header/DIP pin numbers per
`picstick.md` §1-§2.

| Pin (header / DIP) | Function | Notes |
|---|---|---|
| JP1-10 / RC7 (DIP 18) | UART MIDI RX | hardware EUSART, fixed pin, no alternative on this chip |
| JP1-11 / RC6 (DIP 17) | UART MIDI TX | hardware EUSART, fixed pin |
| JP2-9 / RB0 (DIP 21) | SPI SDI / **MISO** (master) | hw MSSP, shared bus to PIC16 MIDI-satellite cascade — fixed pin, no PPS on this chip |
| JP2-8 / RB1 (DIP 22) | SPI SCK | hw MSSP, shared cascade bus — fixed pin |
| JP2-6 / RB3 (DIP 24) | SPI SDO / **MOSI** (master) | hw MSSP (`SDOMX=RB3` per `src/config-18f25k50.h`), shared cascade bus — the only SPI pin with an alternate (RC7), which is unusable here (claimed by MIDI RX) |
| — | SPI CS, one per PIC16 satellite | **OPEN**: pin(s) TBD — depends on satellite count (§5 item 5); candidates from remaining free pins below (RA2, RA6/RA7 if X1 unpopulated, RB7 if no ICSP programmer attached during operation) |
| JP1-12 / RC2 (DIP 13) | RGB LED — Red | = CCP1 pin (hardware PWM available later if wanted; digital on/off only for the demo) |
| JP1-13 / RC1 (DIP 12) | RGB LED — Green | = CCP2 pin (`CCP2MX=RC1`) — same PWM note as Red |
| JP1-14 / RC0 (DIP 11) | RGB LED — Blue | no hardware PWM available on this pin if ever upgraded |
| JP1-6 / RA4 (DIP 6) | *(reserved, not chosen)* | **Onboard User LED D2** — avoid unless intentionally double-driving it |
| JP1-2 / RA0 (DIP 2) | `ledsense` sense/cathode (`LS_K_PIN`) | AN0/ADC channel 0; also the CTMU sense channel if `LEDSENSE_USE_CTMU` |
| JP1-3 / RA1 (DIP 3) | `ledsense` drive/anode (`LS_A_PIN`) | through 330R, per §0a/§8.3 |
| JP1-7 / RA5 (DIP 7) | Transport-clock LED | fully free pin — no longer reserved for SPI `SS` since the picstick is SPI **master**, which doesn't need its own hardware slave-select pin |
| JP2-7 / RB2 (DIP 23) | LCD `LCD_CE` | bit-banged, `lib/lcd5110.h` default |
| JP1-4 / RA3 (DIP 5) | LCD `LCD_RESET` | **moved off RB3** (was the library default) because RB3 is now the SPI SDO/MOSI pin — see `lib/lcd5110.h` |
| JP2-5 / RB4 (DIP 25) | LCD `LCD_DC` | bit-banged, `lib/lcd5110.h` default |
| JP2-4 / RB5 (DIP 26) | LCD `LCD_DATA`/DIN | bit-banged, `lib/lcd5110.h` default |
| JP2-3 / RB6 (DIP 27) | LCD `LCD_CLK`/SCLK | bit-banged, `lib/lcd5110.h` default. Shares the net with ICSP PGC (JP2-14) — fine unless a programmer is attached while running |

**Still free** after all the above: RA2, RA6/RA7 (conditionally, if the
optional X1 crystal stays unpopulated), RB7 (conditionally, shares ICSP
PGD). These are the candidates for per-satellite SPI chip-select pins
(§5 item 5, §8.4) once the satellite count is known.

Source changes made to match this table:
- `lib/lcd5110.h`: `LCD_RESET` moved from `OUTB3` to `OUTA3`; `LCD_TRIS()`
  changed from a blanket `TRISB &= 0x00` to setting only the 4 TRISB bits
  the LCD actually owns (RB2/RB4/RB5/RB6) plus `TRISA3` — the old blanket
  clear would otherwise have forced RB0 (SPI SDI) to output every time
  `lcd_init()` ran, breaking the cascade bus.
- `lib/extra/ledsense.c`: `LS_A_PIN`/`LS_K_PIN` moved from `RA4`/`RA5` to
  `RA1`/`RA0` (and `LEDSENSE_ADC_CHANNEL` from 1 to 0) — the library's
  original default (`RA4`) collided with the picstick's onboard User LED.
  Both changes verified compiling clean under SDCC 4.3.0rc1 and XC8 v2.46,
  all `LEDSENSE_USE_CTMU` on/off combinations.

### 8.1 5110 LCD harness

Two problems to solve: the picstick's logic is 5V (§0 power note — no
onboard 5V→3.3V regulator, VDD tied straight to USB VBUS), but the LCD's
`VCC` and its logic inputs are 3.3V-rated. Needs (a) a 3.3V rail for the
LCD, and (b) level-shifting on every PIC→LCD signal line so the PIC's 5V
HIGH never reaches the 3.3V LCD inputs.

**Do NOT use the PIC's internal `VUSB`/`VUSB3V3` pin as a 3.3V source** —
that's the PIC18F25K50's internal USB-transceiver regulator, its pin is a
bypass-cap-only node, not rated to source external load current.

**5V→3.3V, option A — proper LDO (preferred if you have one):**
```
  +5V ---[IN   LDO 3.3V (e.g. HT7333/MCP1700-3302/AMS1117-3.3)   OUT]--- +3V3_LCD
                          |
                         GND
     (+ input/output bypass caps per the LDO's datasheet, e.g. 1uF/1uF
      ceramic for the MCP1700, 10uF/10uF for the AMS1117)
```

**5V→3.3V, option B — Zener shunt regulator (no LDO on hand)**: the
PCD8544 controller's own logic/charge-pump current draw is small (order
1-2mA, backlight excluded), so a simple resistor+zener shunt is a
legitimate "bare" regulator here — it would NOT be adequate for anything
with a large/variable load (like the backlight LED), but is fine for the
logic rail alone:
```
        +5V
         |
        R1 (330R, ~1/4W)
         |
         +--------------------------> +3V3_LCD  (LCD VCC + pull-up rail, §8.1 below)
         |
        ZD1 (BZX55C3V3, 3.3V/0.25W-0.5W)
         |
        GND
```
Sized so ~6mA nominally flows through R1: at no LCD load, all 6mA flows
through the zener (Pzd ≈ 3.3V × 6mA ≈ 20mW, well inside a small zener's
rating); at ~2mA LCD load, ~4mA still flows through the zener, keeping it
in regulation. **If the LCD module has a backlight LED**, drive it
separately, directly off +5V (or +3.3V) through its own current-limiting
resistor — not through this shunt rail, since backlight current (tens of
mA) would blow the shunt's regulation range.
**OPEN**: confirm actual PCD8544 logic current draw for your specific
SparkFun module (datasheet or measure) before finalizing R1's value —
figures above are typical-case estimates, not measured.

**Signal level-shifting** — one identical diode+pull-up network per line,
so the PIC's GPIO can pull each line LOW but can never drive it above
+3.3V:
```
                +3V3_LCD
                    |
                   R (10k)
                    |
   LCD_PIN <--------+-------->|-------- PIC_GPIO (5V push-pull output)
                            D (1N4148)
                    anode at LCD_PIN side, cathode at PIC side
```
- PIC drives LOW (0V): diode conducts (LCD-side 3.3V pull-up is now the
  higher potential), clamps `LCD_PIN` to ≈0.6V (diode drop) — a valid
  LOW into the 3.3V LCD input.
- PIC drives HIGH (5V): diode is reverse-biased (cathode now higher than
  anode), so no current flows from the 5V side onto `LCD_PIN`; the pull-
  up alone holds `LCD_PIN` at +3.3V — a valid HIGH, and the LCD input is
  never exposed to more than its own 3.3V rail.
- This is a slow/unidirectional-only trick (PIC→LCD, no line driven back
  toward the PIC), which matches every 5110 control/data line in
  `lib/lcd5110.c` (all PIC-driven outputs) — fine at this bit-banged
  interface's speed.
- Parts: any small-signal switching diode (1N4148 or similar) and 10k
  resistors are typical choices; exact values not critical at this
  interface speed/current.

**Full net list** (5 identical R+D networks, one per signal — pin
assignments per §8.0):

| Net | PIC side | R (10k) → +3V3_LCD | D (1N4148) anode/cathode | LCD side |
|---|---|---|---|---|
| `LCD_CE_NET` | JP2-7 / RB2 | yes | anode@net, cathode@PIC | 5110 `SCE` |
| `LCD_RESET_NET` | JP1-4 / RA3 | yes | anode@net, cathode@PIC | 5110 `RST` |
| `LCD_DC_NET` | JP2-5 / RB4 | yes | anode@net, cathode@PIC | 5110 `D/C` |
| `LCD_DATA_NET` | JP2-4 / RB5 | yes | anode@net, cathode@PIC | 5110 `DN`/`DIN` |
| `LCD_CLK_NET` | JP2-3 / RB6 | yes | anode@net, cathode@PIC | 5110 `CLK` |
| `+3V3_LCD` | — | supply rail (§8.1 5V→3.3V circuit) | — | 5110 `VCC` |
| `GND` | JP1-1 | — | — | 5110 `GND` |

**Full ASCII schematic** (LDO-supply variant shown; substitute the zener
network from above for the 5V→3.3V block if no LDO is on hand):

```
                                    +3V3_LCD
                                        |
  +5V (JP2-11) ---[LDO 3.3V]-----------+------------------------------+
                       |                                               |
                      GND                                              |
                                                                        |
  JP2-7 / RB2  ---------->|------+-----[10k]-----------------------> 5110 SCE
                        1N4148   |
                                 (repeat identical R+D network per
                                  line below, all pulling to the
                                  same +3V3_LCD rail)

  JP1-4 / RA3  ---------->|------+-----[10k]-----------------------> 5110 RST
  JP2-5 / RB4  ---------->|------+-----[10k]-----------------------> 5110 D/C
  JP2-4 / RB5  ---------->|------+-----[10k]-----------------------> 5110 DN
  JP2-3 / RB6  ---------->|------+-----[10k]-----------------------> 5110 CLK

  JP1-1 / GND  -------------------------------------------------------> 5110 GND
                                                                        5110 VCC <- +3V3_LCD
```

### 8.2 MIDI I/O harness

Standard opto-isolated MIDI IN per the MIDI 1.0 electrical spec, using
one channel of the **HCPL-2730** dual high-speed optocoupler (digital
output stage, not a slow phototransistor like the classic 6N138 — output
swings cleanly between logic levels without needing an extra buffer):

```
 DIN-5 MIDI IN
  pin 4 ----+
             |
            220R
             |
             +---------[opto LED anode]
                                          HCPL-2730 (channel A)
             +---------[opto LED cathode]
             |
  pin 5 ----+
             |
            D1 (1N4148, reverse-parallel across the LED,
                cathode-to-pin4 / anode-to-pin5, for reverse-
                polarity/spike protection)
  pin 2 ---- (shield — tie to chassis/case ground only, NOT to the
              PIC-side signal ground, to preserve opto-isolation)

  --- isolation barrier ---

  +5V (picstick VDD, JP1-1's supply / JP2-11)
    |
   Rpu (1k-10k, per HCPL-2730 datasheet output stage)
    |
    +-------------------------------------> JP1-10 / RC7 (UART RX)
    |
  [opto phototransistor/output stage, channel A]
    |
   GND (JP1-1)
```

**Net list**:

| Net | From | To |
|---|---|---|
| `MIDI_IN_LOOP+` | DIN-5 pin 4 | 220R → opto ch.A LED anode |
| `MIDI_IN_LOOP-` | DIN-5 pin 5 | opto ch.A LED cathode |
| `MIDI_IN_PROT` | D1 anode | DIN-5 pin 5 (D1 cathode → DIN-5 pin 4), reverse-parallel across the LED loop |
| `MIDI_SHIELD` | DIN-5 pin 2 | chassis/case ground only — not `GND` |
| `MIDI_RX_PU` | +5V (picstick VDD) | Rpu → `MIDI_RX` |
| `MIDI_RX` | opto ch.A output/collector | JP1-10 / RC7 (UART RX) |
| `GND` (opto output side) | opto ch.A output/emitter | JP1-1 |

- The HCPL-2730 is dual-channel — one channel (A) used for this MIDI IN,
  **channel B is spare**, available for a second MIDI IN on the same
  package if a second on-board (non-satellite) input is ever wanted —
  though the decided scaling path for extra inputs is now the SPI-cascaded
  PIC16 satellites (§8.4), each with its own opto/DIN-5 built the same way
  as this section, not a second channel on this board.
- **MIDI OUT is not opto-isolated** in the standard spec (only INs are) —
  needs its own small circuit (typically a logic buffer/inverter or a
  transistor driving the 220R current-limited DIN-5 output pins directly
  from JP1-11/RC6, the UART TX pin), not yet designed — **OPEN**, needed
  once the MIDI OUT / merge topology (§5 item 5) is locked down.
- This whole harness sits on the perfboard between the picstick's male
  header and the DIN-5 jack (§0b step 2).

### 8.3 LED harness

Three LEDs (§0), each simple GPIO-driven, no PWM. Pin assignments per §8.0.

**RGB indicator** (assume common-cathode; adjust polarity if the actual
LED on hand is common-anode):
```
  JP1-12 / RC2 (Red)   ---[330R]--->|---+
  JP1-13 / RC1 (Green) ---[330R]--->|---+---- (RGB LED, common cathode) ---- JP1-1 / GND
  JP1-14 / RC0 (Blue)  ---[330R]--->|---+
```

**Transport-clock LED** (blinks on MIDI Clock/transport state):
```
  JP1-7 / RA5 ---[330R]--->|---- JP1-1 / GND
```

**Bidirectional `ledsense` LED** — matches `lib/extra/ledsense.c`'s
`LS_A_PIN`/`LS_K_PIN` pair (§0a, now RA1/RA0 — moved off the library's
RA4/RA5 default to avoid the onboard User LED on RA4, see §8.0): current-
limiting resistor only on the drive/"anode" side, so it doesn't distort
the ADC/CTMU charge-time reading taken on the sense/"cathode" side:
```
  JP1-3 / RA1 (LS_A_PIN) ---[330R]--->|---+
                                            |
                                     (LED, direction reversible in
                                      software -- ledsense_emit/
                                      ledsense_charge toggle which
                                      side drives/senses)
                                            |
  JP1-2 / RA0 (LS_K_PIN) -----------------------+   (direct to PIC,
                                                      no series R --
                                                      ADC/CTMU reads
                                                      this node directly)
```

**Net list**:

| Net | Pins |
|---|---|
| `LED_RGB_R` | JP1-12/RC2 → 330R → RGB LED red anode |
| `LED_RGB_G` | JP1-13/RC1 → 330R → RGB LED green anode |
| `LED_RGB_B` | JP1-14/RC0 → 330R → RGB LED blue anode |
| `LED_RGB_COM` | RGB LED common cathode → `GND` |
| `LED_CLOCK` | JP1-7/RA5 → 330R → transport-clock LED anode → `GND` |
| `LEDSENSE_DRIVE` | JP1-3/RA1 → 330R → ledsense LED anode |
| `LEDSENSE_SENSE` | JP1-2/RA0 → ledsense LED cathode (no series R) |
| `GND` | JP1-1, shared by all three LED cathodes above |

- All 3 LEDs' resistor values (330R shown) are a starting-point estimate
  for a standard 5V-driven indicator LED — **OPEN**: confirm against the
  actual LED forward-voltage/current specs once parts are chosen, and
  note the RGB LED's 3 channels may want different resistor values if the
  color dies have different forward voltages (typical for red vs.
  blue/green in a common package).
- This harness is wire-wrap + heat-shrink directly off the picstick's
  header (§0b step 3), no separate perfboard needed given the low part
  count.

### 8.4 SPI MIDI-satellite cascade harness

For scaling beyond one MIDI input: cascade PIC16-based satellite boards,
each with its own opto-isolated DIN-5 MIDI IN (built the same way as
§8.2), reporting decoded MIDI bytes/messages to the picstick (acting as
SPI **master**) over the shared hardware SPI bus. Pin assignments and the
"no PPS on this chip" constraint are covered in §8.0.

```
                              picstick_25k50 (SPI master)
                             +---------------------------+
   satellite 1  <--SCK------|  JP2-8 / RB1               |
   (PIC16, own  <--MOSI-----|  JP2-6 / RB3 (SDO)         |
   DIN-5 opto   --MISO----->|  JP2-9 / RB0 (SDI)         |
   MIDI IN)     <--CS1------|  (TBD free pin, §8.0)      |
                             |                            |
   satellite 2  <--SCK------|  (same SCK net, shared)    |
   ...          <--MOSI-----|  (same MOSI net, shared)   |
                --MISO----->|  (same MISO net, shared)   |
                <--CS2------|  (TBD free pin, §8.0)      |
                             +---------------------------+
```

**Net list** (shared bus + per-satellite chip-select):

| Net | picstick pin | Shared/per-satellite |
|---|---|---|
| `SPI_SCK` | JP2-8 / RB1 | shared by all satellites |
| `SPI_MOSI` | JP2-6 / RB3 (SDO) | shared — picstick's output, each satellite's SDI/MOSI input |
| `SPI_MISO` | JP2-9 / RB0 (SDI) | shared — picstick's input, each satellite's SDO/MISO output (only needed if satellites talk back rather than just being polled) |
| `SPI_CS<n>` | one dedicated free GPIO per satellite | **OPEN** — exact pin(s) depend on satellite count (§5 item 5); candidates: RA2, RA6/RA7 (if X1 stays unpopulated), RB7 (if no ICSP programmer attached during operation) |

- As SPI **master**, the picstick does not need its own hardware `SS`
  pin (that's only required in slave mode) — chip-select for each
  satellite is just a plain GPIO the master drives low to address that
  satellite, which is why RA5 was free to use for the transport-clock LED
  instead (§8.0, §8.3).
- Each satellite PIC16 board is its own small subproject: local MIDI
  DIN-5 opto-in (§8.2 circuit, repeated) + local UART parse + an SPI
  slave interface reporting decoded messages up to the master — **not
  yet designed** (needs its own harness doc once the PIC16 part and
  satellite count are chosen).
- **OPEN**: satellite count (drives CS pin count and whether RA6/RA7/RB7
  need to be sacrificed), and the wire protocol for what a satellite
  sends the master over SPI (raw MIDI bytes vs. pre-parsed `midi_msg_t`
  — see §3a's note on framing this over an inter-board bus).

## 9. Reactive demo behavior (v1 — after the bare hardware demo, before the full menu/programming UX)

`src/miditest.c` already has the byte-stream parser (§3a design, implemented)
running off `midi_getch()`/`midi_int()` (§4). This section captures what it
should *do* with parsed messages and transport events for a first
interactive demo, before the full choreography-programming UX (§1 item 6)
exists. Scope: make the hardware from §0/§8 visibly react to live MIDI in
a musically legible way. Explicitly **not** in this scope: the menu/
rotary-encoder UI, EEPROM-stored lightshow programs — see §9.5.

### 9.1 BPM / transport timing — measured, not transmitted

MIDI carries no BPM field in real-time messages. Per spec, **Timing Clock
(0xF8) is sent 24 times per quarter note** — BPM has to be derived by
timing between Clock pulses (or averaged over more than one for
stability) against a free-running timer, not read from a message field.
For the transport-clock LED (§0/§8.3, JP1-7/RA5): count Clock pulses
since the last Start/Continue; **blink once per quarter note** (every 24
clocks), not once per bar — on for an eighth note (12 clocks), off for
the following eighth note (12 clocks), i.e. 50% duty at quarter-note
rate: `led = (clock_count % 24) < 12`. Stop/no-clock state = LED off.
(Corrected from an earlier once-per-bar draft of this section.)

### 9.2 MIDI → RGB color mapping

Chosen default (3-bit digital RGB, §0/§8.3, JP1-12/13/14 = RC2/RC1/RC0),
honoring the anchors given — natural notes get 7 of the 8 available 3-bit
colors, sharps/flats get white as a neutral "in-between":

| Halftone | Note | Color | RGB bits |
|---|---|---|---|
| 0 | C | Red | 100 |
| 1 | C#/Db | White | 111 |
| 2 | D | Yellow | 110 |
| 3 | D#/Eb | White | 111 |
| 4 | E | Green | 010 |
| 5 | F | Blue | 001 |
| 6 | F#/Gb | White | 111 |
| 7 | G | Magenta | 101 |
| 8 | G#/Ab | White | 111 |
| 9 | A | Cyan | 011 |
| 10 | A#/Bb | White | 111 |
| 11 | B | Red | 100 |

Rationale: `MIDI_NOTE_HALFTONE(note)` (already implemented) indexes a
12-entry table of 3-bit values — repeats octave to octave. This is an
aesthetic default, not a spec — easy to retune (it's a 12-entry const
table). Driven on Note On (color = mapped color, LED on); Note Off (of
whatever note is currently lit) turns the RGB LED off — monophonic
color display, last-note-wins if notes overlap (no per-note polyphony
tracking planned for this LED).

### 9.3 `ledsense` LED — dual role: octave brightness + touch/light sensor

Two behaviors sharing the one LED (JP1-2/3, RA0/RA1, §0a/§8.3):

- **Octave brightness**: `MIDI_NOTE_OCTAVE(note)` (already implemented)
  maps to a soft-PWM brightness level on the drive pin (RA1) — higher
  octave = brighter (or a fixed small number of discrete brightness
  steps, since octaves span roughly -1 to 9).
- **Touch/light sensing**: periodically (not continuously) borrow the
  same pin pair for a `ledsense_charge()`/`ledsense_read()` cycle
  (§0a — CTMU or direct-I/O backend) to detect a hand covering the LED;
  show the raw sensor value as a bar/meter on the LCD when it changes
  significantly.
- **Real conflict found while designing this**: `lib/softpwm.h`'s
  channel model is hardcoded to bits 0/1/2 of one whole 8-bit port
  (`PORTC` on this chip) — that's RC0/RC1/RC2, i.e. the RGB LED pins,
  not RA1. It doesn't fit "PWM just RA1" without fighting the library's
  port-wide assumption, and pulling in the whole multi-channel module
  for one pin conflicts with the flash-economy goal (§9.4). **Decision**:
  write a small inline single-pin soft-PWM counter in `src/miditest.c`
  instead of reusing `lib/softpwm.h` for this one LED.
- **Time-multiplexing needed**: the brightness-PWM drive and the sense
  cycle both need control of the same pin pair, so they can't run
  simultaneously — periodically pause the PWM drive for one
  `ledsense_charge()`/`ledsense_read()` cycle (a few hundred µs, per the
  delays in `ledsense.c`), then resume. Exact interval/duty split is
  **OPEN** — needs to be short enough that the pause isn't visible as
  brightness flicker.

### 9.4 LCD: 3-column MIDI dump screen

Fixed-column layout (matches the "fast, overseeable" UX goal from §0)
so a stream of CCs doesn't scroll the last Note On/Off off the small
5110 screen:

| Column | Content |
|---|---|
| 1 (left) | Last Note On/Off: note name + octave, on/off state |
| 2 (middle) | Last CC: number + value |
| 3 (right) | Everything else — transport state, and the `ledsense` touch/light bar-meter when active |

Uses `lib/lcd5110.c`'s existing `lcd_gotoxy`/`lcd_puts` primitives
(§0/§4) — fixed x-offsets per column, no new graphics framework, per the
earlier "fast/overseeable, not decorative" UX decision.

### 9.5 Explicitly deferred (not in this demo increment)

Captured here because they came up in the same design conversation, but
these are full-vision-scale features, not part of the reactive demo
above:

- **Menu/programming UX for lamp color & brightness-envelope
  modulation** — the choreography-programming system already flagged as
  under active development in §1 item 6/§5 item 3. Input hardware for it
  is now decided as **a rotary encoder + 1 push button**, added to the
  input set alongside (or instead of) the earlier "4 menu buttons" idea
  from §0/§2 — **OPEN**: does the rotary encoder replace the 4-button
  menu concept entirely, or supplement it? Needs its own pin allocation
  in §8.0 once decided.
- **EEPROM-based behavior storage**: "all EEPROM will be used to store
  behaviour data" — i.e. the lightshow/choreography programs (once
  designed, §1 item 6) persist in the chip's onboard EEPROM. `lib/
  eeprom.h` already exists in the libpicp submodule (seen referenced in
  `src/ringtone.c`) as the likely building block. No data format
  designed yet — depends on the choreography model landing first.
- **Flash ROM economy**: called out explicitly as a constraint on the
  eventual full menu/programming build (PIC18F25K50 has 32KB flash,
  shared with USB stack + LCD driver + parser + everything else) — worth
  keeping in mind for §9.3's design choice above, and for any future
  code review of this project once the menu/EEPROM system is built.
