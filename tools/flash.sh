#!/usr/bin/env bash
#
# flash.sh - flash a hex file to a PIC via PICkit 2 using pk2cmd.
#
# Usage:
#   tools/flash.sh <hex-file> [part]
#   tools/flash.sh -e                       # erase only
#   tools/flash.sh -i                       # identify target only, no programming
#   tools/flash.sh -t                       # power target and let it run, no programming
#   tools/flash.sh <hex-file> -p PIC18F25K50
#
# Part is optional: pass -p/--part explicitly, set PK2_PART, or omit it to
# let pk2cmd auto-detect the connected device.
#
# Environment overrides:
#   PK2CMD            path to the pk2cmd binary (default: auto-detected)
#   PK2_DEVICE_FILE   path to PK2DeviceFile.dat (default: auto-detected)
#   PK2_PART          part number, e.g. PIC18F25K50 (default: auto-detect)
#   PK2_VDD           target Vdd in volts (default: 3.7, matching the
#                     picstick_25k50's Li-ion battery supply -- see
#                     picstick.md; the board has no separate 3.3V rail)
#
# Re-execs itself under sudo if it isn't already root - pk2cmd needs write
# access to the PICkit2's USB device node, which typically has no udev rule.
set -euo pipefail

usage() {
    sed -n '2,16p' "$0" | sed 's/^# \{0,1\}//'
}

ORIG_ARGS=("$@")

HEXFILE=""
PART="${PK2_PART:-}"
MODE="program"   # program | erase | identify | read | run

while [ $# -gt 0 ]; do
    case "$1" in
        -p|--part) PART="$2"; shift 2 ;;
        -e|--erase) MODE="erase"; shift ;;
        -i|--identify) MODE="identify"; shift ;;
        -t|--run) MODE="run"; shift ;;
        -r|--read) MODE="read"; HEXFILE="${2:-readback.hex}"; shift 2 ;;
        -h|--help) usage; exit 0 ;;
        -*) echo "flash.sh: unknown option: $1" >&2; usage; exit 2 ;;
        *)
            if [ -z "$HEXFILE" ]; then HEXFILE="$1"; else PART="$1"; fi
            shift
            ;;
    esac
done

if [ "$MODE" = "program" ] && [ -z "$HEXFILE" ]; then
    echo "flash.sh: no hex file given" >&2
    usage
    exit 2
fi
if [ "$MODE" = "program" ] && [ ! -f "$HEXFILE" ]; then
    echo "flash.sh: hex file not found: $HEXFILE" >&2
    exit 2
fi

# Re-exec under sudo: pk2cmd needs write access to the PICkit2 USB device
# node, and there is typically no udev rule granting that to a normal user.
if [ "$(id -u)" -ne 0 ]; then
    exec sudo -E "$0" "${ORIG_ARGS[@]}"
fi

# ---------------------------------------------------------------------------
# Locate pk2cmd
# ---------------------------------------------------------------------------
if [ -n "${PK2CMD:-}" ]; then
    :
elif command -v pk2cmd-minus >/dev/null 2>&1; then
    PK2CMD="$(command -v pk2cmd-minus)"
elif command -v pk2cmd >/dev/null 2>&1; then
    PK2CMD="$(command -v pk2cmd)"
elif [ -x /usr/local/bin/pk2cmd-minus ]; then
    PK2CMD=/usr/local/bin/pk2cmd-minus
elif [ -x /usr/local/bin/pk2cmd ]; then
    PK2CMD=/usr/local/bin/pk2cmd
else
    echo "flash.sh: pk2cmd not found. Set PK2CMD=/path/to/pk2cmd." >&2
    exit 1
fi

# ---------------------------------------------------------------------------
# Locate PK2DeviceFile.dat
# ---------------------------------------------------------------------------
if [ -n "${PK2_DEVICE_FILE:-}" ]; then
    DEVICE_FILE="$PK2_DEVICE_FILE"
else
    DEVICE_FILE=""
    for candidate in \
        "$(dirname "$PK2CMD")/PK2DeviceFile.dat" \
        "$HOME"/Projects/pk2cmd*/pk2cmd/pk2cmd/PK2DeviceFile.dat \
        /usr/local/share/pk2/PK2DeviceFile.dat \
        /usr/share/pk2/PK2DeviceFile.dat
    do
        # shellcheck disable=SC2086 # candidate may contain an unquoted glob
        for f in $candidate; do
            if [ -f "$f" ]; then DEVICE_FILE="$f"; break 2; fi
        done
    done
    if [ -z "$DEVICE_FILE" ]; then
        echo "flash.sh: PK2DeviceFile.dat not found. Set PK2_DEVICE_FILE=/path/to/it." >&2
        exit 1
    fi
fi

PART_ARG="-P${PART}"   # -P alone (empty PART) means auto-detect
DEVICE_DIR="$(dirname "$DEVICE_FILE")"   # pk2cmd's -B wants the containing dir
VDD="${PK2_VDD:-3.7}"

echo "flash.sh: pk2cmd=$PK2CMD"
echo "flash.sh: device file=$DEVICE_FILE"
echo "flash.sh: part=${PART:-<auto-detect>}"
echo "flash.sh: vdd=${VDD}V"

run() {
    echo "+ $PK2CMD -B$DEVICE_DIR $PART_ARG -A$VDD $*" >&2
    "$PK2CMD" "-B$DEVICE_DIR" "$PART_ARG" "-A$VDD" "$@"
}

case "$MODE" in
    identify)
        run -I
        ;;
    erase)
        run -E
        ;;
    read)
        run -GF "$HEXFILE"
        echo "flash.sh: read back to $HEXFILE"
        ;;
    run)
        # No -F/-M at all - just release /MCLR and power the target from
        # the PICkit2, so whatever's already flashed starts running. -T
        # ("Power Target after operations") is what actually leaves Vdd on
        # after pk2cmd exits; without it pk2cmd explicitly turns Vdd back
        # off on exit (confirmed in pk2cmd-minus's own source, cmd_app.cpp
        # priority4Args(): "ensure VDD off if no -T").
        run -R -T
        echo "flash.sh: target powered and running (Vdd stays on until unplugged, erased, or run again without -t)"
        ;;
    program)
        # Check connectivity first: pk2cmd -I can exit non-zero (e.g. a VPP
        # error) or exit 0 while still reporting "<no device>", so a blind
        # -M could otherwise run against nothing. Capture the text instead
        # of relying on the exit code, which set -e/pipefail would tangle
        # with pk2cmd's own non-zero-on-hardware-error behaviour.
        ID_OUTPUT="$(run -I 2>&1)" || true
        echo "$ID_OUTPUT" >&2
        if echo "$ID_OUTPUT" | grep -q '<no device>'; then
            echo "flash.sh: no target detected - check ICSP wiring/power" >&2
            exit 1
        fi
        # -M programs+verifies all memory regions, -R releases MCLR and
        # -T powers the target afterwards so the program actually runs.
        run -F"$HEXFILE" -M -R -T
        ;;
esac
