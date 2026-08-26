# picstick_25k50 — pinout & on-board specialties (source of truth)

Condensed reference for anything targeting the `picstick_25k50` board
(design files: `/mnt/data/Projects/rsenn/picstick_25k50/`, schematic
`picstick_25k50_v1.sch`, board render `picstick_25k50_v1_top.jpg`,
pinout diagram `picstick_25k50_v1_pinout.jpg`) — as opposed to a bare
PIC18F25K50 on a generic board. **The picstick is not a bare chip**: it
has an on-board reset button, two LEDs, an optional crystal, and no
onboard 5V→3.3V regulator, all of which constrain which header pins are
"free" GPIO and which come with side effects.

Facts below were cross-checked directly against `picstick_25k50_v1.sch`'s
netlist (not just the vendor pinout JPEG, which turns out to have at
least one wrong label — see §3).

## 0. Numbering: two unrelated pin-numbering schemes

The picstick exposes the PIC18F25K50 on **two 14-pin male headers, JP1
and JP2**. Header pin numbers (JP1/JP2, 1-14) and the PIC's own 28-pin
SPDIP **DIP pin** numbers are **completely different, unrelated
numberings** for the same physical chip pin. Always state both in docs
and source comments when referencing a picstick pin — e.g. "JP1-6 / RA4
(DIP 6)" — never just a bare number, since "pin 6" means something
different depending which numbering you mean.

## 1. JP1 (right header)

| JP1 | Port pin | DIP pin | Notes |
|---|---|---|---|
| 1 | GND (VSS) | 8 or 19 | |
| 2 | RA0 | 2 | AN0 |
| 3 | RA1 | 3 | AN1 |
| 4 | RA2 | 4 | AN2 / VREF- |
| 5 | RA3 | 5 | AN3 / VREF+ |
| 6 | RA4 | 6 | **On-board: User LED D2 anode via R4 (470R) to this net — driving RA4 also lights D2.** (The vendor pinout JPEG labels JP1-12/RC2 as "User LED" — verified **wrong** against the actual schematic netlist; ignore that label.) |
| 7 | RA5 | 7 | AN4 / SS (SPI slave select) |
| 8 | RA6 | 10 | OSC2/CLKO. **Shared with the optional X1 crystal** (ties to C3) — only free as plain GPIO if X1 is left unpopulated (per the board's own construction guide, X1 is optional; default bootloader uses INTOSC, no crystal required) |
| 9 | RA7 | 9 | OSC1/CLKI. **Shared with the optional X1 crystal** (ties to C4) — same caveat as RA6 |
| 10 | RC7 | 18 | RX/DT (hardware EUSART RX) |
| 11 | RC6 | 17 | TX/CK (hardware EUSART TX) |
| 12 | RC2 | 13 | CCP1. **Plain/free GPIO** — despite the vendor pinout JPEG's "User LED" label here, the schematic shows no LED on this net |
| 13 | RC1 | 12 | CCP2 (this board's config sets `CCP2MX=RC1`, matching `src/config-18f25k50.h`) |
| 14 | RC0 | 11 | T1OSO/T13CKI |

## 2. JP2 (left header)

| JP2 | Port pin | DIP pin | Notes |
|---|---|---|---|
| 1 | "RESET_SW" node | — | **Not raw MCLR.** Goes through SW1 (reset button) to GND, pulled up to VDD via R3 (10k), and reaches the real MCLR net only through a series resistor R2. Pressing SW1, or driving this pin low externally, triggers a reset — but this node is electrically distinct from DIP pin 1/MCLR itself. |
| 2 | RB7 | 28 | PGD/KBI3. **Same net as JP2-13** (both are RB7/PGD) — using one as GPIO also connects to whatever's on the other (usually nothing, unless a programmer is attached to the ICSP block) |
| 3 | RB6 | 27 | PGC/KBI2. **Same net as JP2-14** (both are RB6/PGC), same caveat |
| 4 | RB5 | 26 | AN13/KBI1/PGM |
| 5 | RB4 | 25 | AN11/KBI0/CSSPP |
| 6 | RB3 | 24 | AN9. Also **SDO** (SPI data out) — this board's config sets `SDOMX=RB3` |
| 7 | RB2 | 23 | AN8 |
| 8 | RB1 | 22 | AN10. Also SCK (SPI clock) / SCL (I2C clock) |
| 9 | RB0 | 21 | AN12. Also SDI (SPI data in) / SDA (I2C data) |
| 10 | MCLR (true) | 1 | Real `!MCLR!/VPP/RE3` net — same net as the ICSP block expects. Reachable from JP2-1 only through R2 (see above) |
| 11 | 5V (VDD) | 20 | Also shares this net with `VUSB3V3`/DIP 14 and `USB.VBUS` — see §4 caveat |
| 12 | "GND" (silkscreen) | 12 | **OPEN/verify**: in the schematic this is a separately-named net (`VSS`), distinct from the main `GND` net everything else uses. Confirmed as two genuinely different `<net>` entries in `picstick_25k50_v1.sch`, not a parsing artifact. They're almost certainly the same physical ground plane on the actual board, but this hasn't been continuity-checked — verify with a multimeter before relying on JP2-12 as a ground reference for anything sensitive. |
| 13 | RB7 / PGD | 28 | Same net as JP2-2 |
| 14 | RB6 / PGC | 27 | Same net as JP2-3 |

## 3. On-board components and what they commit

- **SW1 (reset button)**: wired as described above (JP2-1 → SW1/R3 →
  R2 → real MCLR). Already on the board — no external reset circuit
  needed unless you want a *second* momentary switch fed into JP2-1 or
  a separate direct connection to DIP-1/MCLR.
- **D2 ("User LED", red)**: anode → R4 (470R) → **RA4** (JP1-6, DIP 6).
  Cathode → GND. Software-controlled — this is the LED the Pinguino
  `blink.pde` example (`USERLED`) toggles.
- **D1 (unlabeled red LED)**: anode → R1 (470R) → **VDD directly** (not
  a GPIO). Cathode → GND. This is a fixed power-on indicator, always lit
  whenever the board has 5V — not software-controllable, doesn't consume
  a header pin.
- **X1 (16MHz crystal, optional)**: only populate if you need a crystal-
  clocked USB reference instead of the default INTOSC-based bootloader;
  ties up RA6/RA7 (JP1-8/9) if populated.
- **R2, R3**: part of the reset chain (§2, JP2-1/JP2-10).
- **No onboard 5V→3.3V regulator.** VDD is tied directly to USB VBUS —
  the board runs its logic at **5V**, confirmed both from the schematic
  netlist (`VDD` net includes `USB.VBUS` directly, no regulator part in
  the BOM) and independently in `src/miditest.md`'s power analysis for
  the same board. Any 3.3V peripheral (e.g. a Nokia 5110 LCD) needs its
  own regulation/level-shifting — see `src/miditest.md` §8.1 for a worked
  example.
- **`VUSB3V3` (DIP 14, the PIC's internal USB-transceiver regulator
  pin) is tied to the same net as VDD/VBUS in this schematic** — **OPEN/
  verify against the PIC18F25K50 datasheet** before assuming anything
  about it: normally this pin only needs a bypass capacitor to ground
  when the chip's internal USB voltage regulator is enabled (the usual
  mode for a 5V-VDD USB device); tying it straight to VDD is only the
  documented-correct wiring when that internal regulator is disabled by
  config fuse instead. Whichever it is, DIP 14 is already committed by
  the board design — don't plan to use it or add anything else to that
  net in a daughter design.

## 4. Practical rule for sub-projects

When writing code or docs for anything running on a picstick_25k50 (not
a bare 18F25K50 test board): don't assume pin availability or behavior
from the datasheet alone. Check this file first for what's already
committed (User LED on RA4, power LED fixed on VDD, reset chain, shared
ICSP/PORTB pins, optional-crystal pins, no 3.3V rail), then reference
both the header pin number and the DIP pin number together wherever a
specific pin is named in source comments or docs, e.g.:
```c
#define BUTTON_PIN RA4  // picstick JP1-6 (DIP 6) -- also drives onboard User LED D2
```
