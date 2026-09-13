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
## TODO and BUGS files

`TODO` and `BUGS` are plain text files in the repo root — the roadmap and known bugs,
respectively. No title header, no numbering: every entry is a top-level `- ` bullet whose text
starts with a `kebab-case-slug-title:` naming the bug/item, followed by a description. Wrapped
continuation lines are indented two spaces to line up under the bullet; a blank-line-separated
indented block inside an entry is a code/repro snippet. Use `` `backticks` `` for every file,
function, and symbol name mentioned. Prefer `--` over an em dash. Match the style already in the
files (and see `../shish/BUGS` for a reference example from a sibling project). Check them for
planned work or known issues; add entries the same way when asked to note something down.

This repo keeps these as a running log, not a one-off report. Whenever you diagnose a bug, fix a
bug, or find follow-up work while doing something else:

- Update `BUGS` immediately when a bug is found or fixed. A newly discovered bug becomes a new
  entry at the end of the file. Once a bug is verified fixed, **delete its entry** rather than
  marking it — a fixed bug isn't a known bug anymore, and the fix itself belongs in the commit
  message/git history, not in this file. Don't wait to be asked.
- Update `TODO` immediately when you notice follow-up work, a deferred fix, or a known limitation
  that isn't being addressed in the current task. Delete entries once done, same rule as above.
- Do this automatically, without being asked each time, as part of normal work in this
  repository — these files are how work carries over between sessions.
