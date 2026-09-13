
#CHIP = 16F876A
ifeq ($(CHIP),)
CHIP := 16F876A
endif


ifeq ($(BAUD),)
BAUD = 38400
#BAUD = 31250
endif

# USB requires an exact 48MHz USB clock domain -- if USE_USB is requested
# and the caller didn't already pin _XTAL_FREQ, default straight to the
# INTOSC+PLL path (src/config-18f25k50.h's XTAL_USED==NO_XTAL branch,
# matching picstick_25k50's no-crystal-populated default) rather than
# silently building at the wrong clock.
ifneq ($(USE_USB),)
ifeq ($(_XTAL_FREQ),)
_XTAL_FREQ := 48000000
endif
endif

ifeq ($(_XTAL_FREQ),)
_XTAL_FREQ := 20000000
endif


#CODE_OFFSET := $(CODE_OFFSET:0x%=%)
#CODE_OFFSET = 0x200

# accept CODE_OFFSET/CODE_OFFSETS given as bare hex ("2000") as well as
# 0x-prefixed ("0x2000") -- downstream .lkr generation and --ivt-loc need
# an unambiguous hex literal, "0" alone stays as-is (means "no offset",
# checked verbatim against "0" further down in sdcc.mk/xc8.mk)
ifneq ($(CODE_OFFSET),)
ifneq ($(CODE_OFFSET),0)
ifeq ($(filter 0x%,$(CODE_OFFSET)),)
override CODE_OFFSET := 0x$(CODE_OFFSET)
endif
endif
endif

chipu = $(subst a,A,$(subst b,B,$(subst c,C,$(subst d,D,$(subst e,E,$(subst f,F,$(subst g,G,$(subst h,H,$(subst i,I,$(subst j,J,$(subst k,K,$(subst l,L,$(subst m,M,$(subst n,N,$(subst o,O,$(subst p,P,$(subst q,Q,$(subst r,R,$(subst s,S,$(subst t,T,$(subst u,U,$(subst v,V,$(subst w,W,$(subst x,X,$(subst y,Y,$(subst z,Z,$(CHIP)))))))))))))))))))))))))))
chipl = $(subst A,a,$(subst B,b,$(subst C,c,$(subst D,d,$(subst E,e,$(subst F,f,$(subst G,g,$(subst H,h,$(subst I,i,$(subst J,j,$(subst K,k,$(subst L,l,$(subst M,m,$(subst N,n,$(subst O,o,$(subst P,p,$(subst Q,q,$(subst R,r,$(subst S,s,$(subst T,t,$(subst U,u,$(subst V,v,$(subst W,w,$(subst X,x,$(subst Y,y,$(subst Z,z,$(CHIP)))))))))))))))))))))))))))


#MHZ := $(shell echo "$(XTAL) / 1000000" | bc -l | sed "s|0*$$|| ;; s|\.$$|| ;; s|\.|,|g")

ifeq ($(_XTAL_FREQ),48000000)
MHZ := intosc48
XTAL_USED := NO_XTAL
else
MHZ := $(shell echo $$(($(_XTAL_FREQ) / 1000000)))
endif
KBPS := $(shell echo $$(($(BAUD) / 1000)))

ifneq ($(CODE_OFFSET),)
BUILD_ID := $(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps_at$(CODE_OFFSET)
else
BUILD_ID := $(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps
endif

ifeq ($(BUILD_TYPE),debug)
DEBUG = 1
else
DEBUG = 0
endif

#ifeq ($(DEBUG),1)
#BUILD_TYPE = debug
#else
#BUILD_TYPE = release
#endif
ifeq ($(COMPILER),)
COMPILER := htc xc8
endif
ifeq ($(BUILDDIR),)
BUILDDIR := bin/$(COMPILER)-$(chipl)/
endif
ifeq ($(OBJDIR),)
OBJDIR := obj/$(COMPILER)-$(chipl)/$(BUILD_ID)/$(PROGRAM)/
#OBJDIR := $(BUILDDIR)$(BUILD_ID)/
endif

vpath lib lib/extra src $(OBJDIR) $(BUILDDIR)
VPATH = lib lib/extra src $(OBJDIR) $(BUILDDIR)

DEFINES += PIC$(chipu)=1 __$(chipl)=1
##DEFINES += USE_ADC=1
#DEFINES += USE_HD44780_LCD=1
##DEFINES += USE_7SEGMENT=1
#DEFINES += USE_UART=1
#DEFINES += USE_SOFTSER=1
##DEFINES += USE_SER=1
#
##DEFINES += USE_PWM=1
ifeq ($(BUILD_TYPE),debug)
DEFINES += __DEBUG=1 _DEBUG=1
else
DEFINES += NDEBUG=1 __NDEBUG=1
endif

ifeq ($(_XTAL_FREQ),INTOSC)
DEFINES += _XTAL_FREQ=48000000
else
ifneq ($(_XTAL_FREQ),)
DEFINES += _XTAL_FREQ=$(_XTAL_FREQ) 
endif
endif

ifneq ($(XTAL_USED),)
DEFINES += XTAL_USED=$(XTAL_USED)
endif

ifneq ($(BAUD),)
DEFINES += UART_BAUD=$(BAUD)
endif

INCLUDE_DIRS += . lib src

# USB-Stack headers (sibling checkout, see rgbtest's USE_USB block below).
# Added via INCLUDE_DIRS/CPPFLAGS, not a program-specific -I, so it goes
# through xc8.mk's $(CPPFLAGS:-I%=-I../%) cwd-adjustment (xc8.mk compiles
# from inside obj/) the same way lib/src already do -- a raw -I baked into
# rgbtest_DEFS would resolve one directory level wrong under xc8.
USB_STACK_DIR := ../USB-Stack/USB_Stack
ifneq ($(USE_USB),)
INCLUDE_DIRS += $(USB_STACK_DIR)/USB $(USB_STACK_DIR)/Hardware
endif

#CPPFLAGS += $(addprefix -I../,$(INCLUDE_DIRS))
CPPFLAGS += $(addprefix -I,$(INCLUDE_DIRS))

get-list = $(sort $(if $(value $(1)S),$(value $(1)S),$(value $(1))))
is-list = $(if $(subst 1,,$(subst 0,,$(words $(call get-list,$(1))))),$(call get-list,$(1)),)


HEXFILE = $(BUILDDIR)$(PROGRAM)_$(BUILD_ID).hex
BINFILE = $(BUILDDIR)$(PROGRAM)_$(BUILD_ID).bin
COFFILE = $(BUILDDIR)$(PROGRAM)_$(BUILD_ID).cof
ELFFILE = $(BUILDDIR)$(PROGRAM)_$(BUILD_ID).elf
CFGFILE = $(BUILDDIR)$(PROGRAM)_$(BUILD_ID).cfg

COMMON_SOURCES = #lib/queue.c


pictest_SOURCES = pictest.c lib/delay.c lib/lcd44780.c lib/ser.c lib/softser.c lib/uart.c lib/adc.c lib/timer.c lib/7segment.c #lib/onewire.c lib/ds18b20.c midi.c lib/softser.c #shell.c
pictest_DEFS += -DUSE_TIMER0=1

ifneq ($(chipl),12f1840)
ifneq ($(chipl),16f628a)
pictest_DEFS += -DUSE_HD44780_LCD=1
pictest_DEFS +=   -DUSE_SOFTSER=1 -DSOFTSER_BAUD=38400
endif
endif
ifeq ($(chipl),12f1840)
pictest_DEFS += -DUSE_SER=1
#pictest_DEFS += -DUSE_UART=1
endif

pictest2_SOURCES = pictest2.c lib/adc.c lib/delppic lib/lcd44780.c lib/ser.c lib/pwm.c lib/onewire.c lib/ds18b20.c lib/timer.c
pictest2_DEFS += -DUSE_TIMER0=1

ps2test_SOURCES = ps2test.c lib/uart.c lib/timer.c
ps2test_DEFS += -DUSE_TIMER0=1

blinktest_SOURCES = blinktest.c lib/buffer.c lib/random.c lib/ser.c lib/softpwm.c lib/softser.c lib/timer.c lib/uart.c lib/delay.c lib/adc.c
blinktest_DEFS += -DUSE_TIMER0=1
blinktest_DEFS += -DUSE_TIMER1=1
#blinktest_DEFS += -DUSE_TIMER2=1
#
#blinktest_DEFS += -DUSE_ADCONVERTER=1
#blinktest_DEFS += -DUSE_MCP3001=1
#blinktest_DEFS += -DUSE_NOKIA5110_LCD=1
blinktest_DEFS += -DUSE_SER=1
#blinktest_DEFS += -DUSE_UART=1

ifeq ($(CHIP),16f876a)
blinktest_DEFS +=	-DUSE_LED=1
endif
ifeq ($(CHIP),12f1840)
blinktest_DEFS +=	-DUSE_LED=1
#blinktest_DEFS += -DUSE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_TIMER2=1
endif
ifeq ($(CHIP),18f25k50)
blinktest_DEFS +=	-DUSE_LED=1
#blinktest_DEFS += -DUSE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_TIMER2=1
endif
ifeq ($(CHIP),$(subst q,,$(CHIP)))

ifneq ($(chipl),12f1840)
ifneq ($(chipl),18f14k50)
ifneq ($(chipl),18f2550)
ifneq ($(chipl),18f25k50)
blinktest_DEFS += -DUSE_SOFTPWM=1
endif
endif
endif
endif

#blinktest_DEFS += -DUSE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_TIMER2=1
endif

rgbtest_SOURCES = rgbtest.c lib/softpwm.c lib/timer.c
rgbtest_DEFS += -DUSE_TIMER0=1
# lib/softpwm.c hardcodes Timer1 as its own tick source (SOFTPWM_TIMER_SETUP),
# regardless of the header's vestigial SOFTPWM_TIMER macro -- USE_TIMER1 just
# needs to be defined so lib/timer.c compiles timer1_init() in.
rgbtest_DEFS += -DUSE_TIMER1=1
rgbtest_DEFS += -DUSE_SOFTPWM=1

# USB CDC command interface (optional, #ifdef USE_USB in rgbtest.c) --
# build with USE_USB=1 on the make command line. usb.c/usb_cdc_acm.c come
# from the sibling ../USB-Stack checkout (referenced by relative path, not
# vendored -- see sources.yaml's usb-stack-jdrazi entry); usb_app.c and
# usb_descriptors.c are project-owned (descriptors are inherently
# project-specific) and live in src/ like any other rgbtest source.
ifneq ($(USE_USB),)
vpath %.c $(USB_STACK_DIR)/USB
rgbtest_SOURCES += usb.c usb_cdc_acm.c usb_app.c usb_descriptors.c
rgbtest_DEFS += -DUSE_USB=1
# Old Hi-Tech-heritage XC8 (PRO mode, e.g. v1.43 -- this project's default
# CCVER) rejects an arithmetic expression as a __at() argument; usb.h/
# usb_cdc.h's PIC18/PINGPONG_0_OUT branch computes exactly the addresses
# __at() needs (in usb.c/usb_cdc_acm.c) that way, so both now #ifndef-guard
# those specific defines. These are the precomputed literals for rgbtest's
# exact config (CDC_EXAMPLE, 18F25K50, PINGPONG_0_OUT, NUM_ENDPOINTS=3,
# EP0_SIZE=8, EP1_SIZE(CDC_COM_EP_SIZE)=10, EP2_SIZE(CDC_DAT_EP_SIZE)=64;
# BDT_BASE_ADDR=0x400 for the 18F24/25/45K50 family) -- recompute if any of
# those change: NUM_BD=(NUM_ENDPOINTS*2)+1=7, BDT_SIZE=NUM_BD*4=0x1C,
# EP_BUFFERS_STARTING_ADDR=BDT_BASE_ADDR+BDT_SIZE=0x41C, then
# EP0_OUT_EVEN=0x41C, EP0_OUT_ODD=+EP0_SIZE=0x424, EP0_IN=+EP0_SIZE*2=0x42C,
# CDC_EP_BUFFERS_STARTING_ADDR=+EP0_SIZE*3=0x434, CDC_COM_EP_IN=0x434,
# CDC_DAT_EP_OUT=+CDC_COM_EP_SIZE=0x43E, CDC_DAT_EP_IN=+CDC_DAT_EP_SIZE=0x47E
# (span 0x400-0x4BE, 190 bytes, inside usb_hal.h's USB_RAM_SIZE=256 window).
# Passed as -D flags (not a header) so usb.c/usb_cdc_acm.c see them too --
# neither includes any rgbtest-specific header.
rgbtest_DEFS += -DEP0_OUT_EVEN_BUFFER_BASE_ADDR=0x41C
rgbtest_DEFS += -DEP0_OUT_ODD_BUFFER_BASE_ADDR=0x424
rgbtest_DEFS += -DEP0_IN_BUFFER_BASE_ADDR=0x42C
rgbtest_DEFS += -DCDC_COM_EP_IN_BUFFER_BASE_ADDR=0x434
rgbtest_DEFS += -DCDC_DAT_EP_OUT_BUFFER_BASE_ADDR=0x43E
rgbtest_DEFS += -DCDC_DAT_EP_IN_BUFFER_BASE_ADDR=0x47E
endif

seg7test_SOURCES = 7segtest.c lib/7segment.c lib/timer.c lib/buffer.c lib/format.c lib/random.c lib/softser.c lib/ser.c lib/uart.c
seg7test_DEFS = -DUSE_7SEGMENT=1 -DUSE_SER=1 
#seg7test_DEFS = -DUSE_UART=1
seg7test_DEFS += -DUSE_TIMER0=1
#seg7test_DEFS += -DUSE_TIMER1=1
#seg7test_DEFS += -DUSE_TIMER2=1
#seg7test_DEFS += -DUSE_SOFTSER=1 -DSOFTSER_TIMER=0
ifeq ($(CHIP),$(subst 18f,,$(CHIP)))

seg7test_CCVER = 9.83
else
seg7test_CCVER = 9.80
endif
#seg7test_DEFS += -DUSE_TIMER2=1 #-DUSE_TIMER1=1
#seg7test_DEFS += -DUSE_UART=1

serialtest_SOURCES = serialtest.c lib/ser.c lib/uart.c lib/softser.c lib/lcd44780.c lib/timer.c lib/format.c lib/buffer.c lib/delay.c
ifeq ($(filter 10f%,$(chipl)),)
serialtest_DEFS += -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1
endif
ifeq ($(filter 10f% 12f%,$(chipl)),)
serialtest_DEFS += -DUSE_HD44780_LCD=1 -DUSE_SOFTSER=1 -DSOFTSER_BAUD=38400
endif

pwmtest_SOURCES = pwmtest.c lib/timer.c lib/adc.c lib/pwm.c
pwmtest_DEFS += -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_ADCONVERTER=1 -DUSE_PWM=1

ctmutest_SOURCES = ctmutest.c lib/timer.c
ctmutest_DEFS += -DUSE_TIMER0=1

ctmutest2_SOURCES = ctmutest2.c lib/timer.c
ctmutest2_DEFS += -DUSE_TIMER0=1

ringtone_SOURCES = ringtone.c lib/timer.c lib/random.c lib/eeprom.c
ringtone_DEFS += -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DAxelF=1

miditest_SOURCES = miditest.c lib/timer.c lib/uart.c lib/queue.c lib/extra/midi.c lib/lcd5110.c lib/delay.c lib/spi.c lib/pcd8544.c
miditest_DEFS += -DUSE_TIMER0=1 
#miditest_DEFS += -DUSE_UART=1 
miditest_DEFS += -DUSE_NOKIA5110_LCD=1
# build with BAUD=31250 (or BAUD_RATES=31250) -- MIDI_BAUD is fixed by spec,
# see lib/extra/midi.h's UART_BAUD note; the global -DUART_BAUD=$(BAUD)
# from build/vars.mk already covers it, adding a 2nd -DUART_BAUD here
# collides with that and XC8's preprocessor treats redefinition as fatal

miditest2_SOURCES = miditest2.c lib/timer.c lib/uart.c lib/queue.c lib/extra/midi.c lib/ser_ioc.c lib/softpwm.c lib/delay.c
miditest2_DEFS += -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_UART=1 -DUSE_SOFTPWM=1
# 18f25k50/picstick_25k50 only (see src/miditest2.c's own header comment
# for the pin table) -- must build with BAUD=31250 (or BAUD_RATES=31250,
# same reasoning as miditest above) *and* _XTAL_FREQ=48000000 (picstick_
# 25k50 has no crystal populated, see picstick.md -- the top-level
# Makefile's own default of 20000000 assumes an external crystal that
# doesn't physically exist on this board), e.g.:
#   make COMPILERS="xc8 sdcc" CCDIR=/opt/sdcc-4.6.0 CHIPS=18f25k50 \
#     BAUD_RATES=31250 _XTAL_FREQ=48000000 CODE_OFFSETS="0x0000 0x2000" \
#     PROGRAMS=miditest2 compile

