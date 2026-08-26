# pictest

## picstick_25k50 sub-projects

Any sub-project that targets the **picstick_25k50** board (as opposed to
a bare/generic PIC18F25K50 on a test board) must consult `picstick.md`
for the board's actual on-board design — reset chain, onboard LEDs,
ICSP-shared pins, optional crystal, lack of a 3.3V rail — rather than
assuming a bare-chip pinout. Several header pins carry side effects
(e.g. driving RA4 also lights the onboard User LED) that aren't visible
from the PIC18F25K50 datasheet alone.

When documenting or commenting on a specific picstick_25k50 pin, always
state **both** the picstick header pin (JP1/JP2 + number) and the PIC's
own DIP pin number together — they are two completely different,
unrelated numbering schemes for the same physical pin. See `picstick.md`
§0 for the mapping tables.
