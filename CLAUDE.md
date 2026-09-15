# pictest

## Comment style

Use C-style `/* ... */` comments in all C sources (`.c`/`.h`), never `//`
C++-style comments -- this applies project-wide, not just to new files.

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
## glcdtest wine/mingw Makefiles (Proteus debug builds)

`glcdtest-18f25k50-{xc8,sdcc}-{debug,release}.mk` (repo root) are
`genmakefile`-generated, GNU-make-syntax Makefiles for building
`glcdtest` under Windows via `wine` + MSYS2's `mingw32-make.exe`, using
the real Windows `xc8.exe`/`sdcc.exe` (not the Linux native compilers
`build/xc8.mk`/`build/sdcc.mk` use) -- built this way specifically so
the resulting `.cof` carries full debug symbols/source references for
loading into **Proteus**. **These four files are disposable build
output, not source -- never `git add`/commit them.** Regenerate them
on request with the commands below rather than assuming stale copies
on disk are still correct (recreate the file if it's missing or if
`genmakefile` has been rebuilt since).

Run from the project root (`genmakefile` is `/usr/local/bin/genmakefile`,
source `../c-utils`):

```sh
for BT in debug release; do
  if [ "$BT" = debug ]; then BTFLAG=--debug; BTDEFS="-D__DEBUG=1 -D_DEBUG=1"
  else BTFLAG=--release; BTDEFS="-DNDEBUG=1 -D__NDEBUG=1"; fi
  for COMPILER in xc8 sdcc; do
    if [ "$COMPILER" = xc8 ]; then OBJDIR=build/wine-obj/18f25k50-$BT
    else OBJDIR=build/wine-obj-sdcc/18f25k50-$BT; fi
    genmakefile -t $COMPILER -m gmake -s mingw \
      -I. -Ilib -Isrc \
      src/glcdtest.c lib/delay.c lib/random.c lib/spi.c lib/st7735r.c \
      lib/delay.h lib/random.h lib/spi.h lib/st7735r.h lib/const.h lib/device.h lib/typedef.h \
      src/config-18f25k50.h src/config-bits.h \
      -DPIC18F25K50=1 -D__18f25k50=1 -D_XTAL_FREQ=48000000 -DXTAL_USED=NO_XTAL -DUART_BAUD=38400 -DSPI_USE_HW=1 \
      $BTDEFS --create-bins --no-create-libs $BTFLAG --chip=18f25k50 \
      -d $OBJDIR \
      -o glcdtest-18f25k50-$COMPILER-$BT.mk
  done
done
```

This mirrors `make COMPILERS="xc8 sdcc" CHIPS="18f25k50" PROGRAMS="glcdtest" _XTAL_FREQ=48000000`
from `build/vars.mk`'s `glcdtest_SOURCES`/`glcdtest_DEFS` -- update the
source list/defines above to match if `glcdtest_SOURCES`/`_DEFS` ever
change there.

**As of the `genmakefile` build installed 2026-09-16, the generated
output needs zero manual patching** -- three earlier bugs (an `-I`
path miscomputed relative to `BUILDDIR`'s depth, `-s mingw` adding a
bogus `EXTRA_LIBS=libkernel32.lpp` that broke the link, and `mkdir -p`/
`rm -f` instead of `cmd.exe`'s `MKDIR`/`DEL`) are all fixed. If a
regenerated file ever shows `-I../` prefixes, an `EXTRA_LIBS` line, or
`test -d`/`rm -f` again (e.g. after reverting to an older
`genmakefile`), see the `mcu-firmware-engineer` skill's `genmakefile`
section for the diagnosis and hand-fix.

To actually build/test one, real Windows binaries live under a
non-default wine prefix -- **not** `~/.wine` (no `xc8`/`mingw32-make`,
no meaningful drive mappings):

```sh
WINEPREFIX=/mnt/data/.wine wine cmd /c \
  "cd /d D:\Projects\pictest && M:\mingw64\bin\mingw32-make.exe -f glcdtest-18f25k50-xc8-debug.mk"
```

(`D:` → `/mnt/data`, `M:` → `/mnt/data/msys64` in that prefix; there is
no `Z:` drive.) Swap in the `sdcc` filename for the SDCC build -- SDCC's
own driver auto-detects gputils' `gplink.exe` on `PATH` and links
through it internally, no separate link rule needed. Output lands in
`build/wine-obj/18f25k50-<build_type>/glcdtest.cof` for xc8, or
`build/wine-obj-sdcc/18f25k50-<build_type>/glcdtest.cof` for sdcc —
load the `.cof`/`.cod` into Proteus.

`pathtool -a -w <path>` converts a Linux path to the Windows path wine
would see (e.g. `pathtool -a -w build/` → `D:\Projects\pictest\build`);
handy instead of hand-typing `D:\...` paths above.

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
