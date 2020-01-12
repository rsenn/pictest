: ${OS:=`uname -o`}

exec 10>&2

case "$OS" in
  "GNU/Linux") EXEEXT=".elf" ;;
  *) EXEEXT=".exe" ;;
 esac

set -- --preproc="./cpp-xc8${EXEEXT} -DMCHP_XC8=1 -D__XC=1" "$@" 
for CHIP in 16f876a 18f2450 18f2520 18f2550 18f25k22 18f25k50; do
	for BUILD_TYPE in debug release; do
		for COMPILER in xc8 htc sdcc
		do
      (set -x;
			genmakefile -t $COMPILER -m gmake \
				"$@" \
				-I. -Ilib -Isrc \
			blinktest.c lib/comparator.c lib/random.c lib/ser.c lib/softpwm.c lib/softser.c lib/timer.c lib/uart.c \
      -DHAVE_COMPARATOR=1 -DNDEBUG=1 -DPIC18F2550=1 -DSOFTSER_TIMER=2 -DUART_BAUD=38400 -DUSE_SOFTPWM=1 -DUSE_SOFTSER=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 \
				--create-bins \
				--no-create-libs \
				--$BUILD_TYPE \
				--chip=${CHIP} \
        -o $COMPILER-$CHIP-$BUILD_TYPE.mk 2>genmakefile-$COMPILER-$BUILD_TYPE.log) 2>&10
		done
	done
done
