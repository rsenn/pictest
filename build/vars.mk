#CODE_OFFSET := $(CODE_OFFSET:0x%=%)
#CODE_OFFSET = 0x200

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

rgbtest_SOURCES = rgbtest.c lib/softpwm.c lib/timer.c lib/delay.c lib/random.c
rgbtest_DEFS += -DUSE_TIMER0=1
rgbtest_DEFS += -DUSE_TIMER1=1
rgbtest_DEFS += -DUSE_SOFTPWM=1 -DSOFTPWM_TIMER=1 -DSOFTPWM_CHANNELS=3
rgbtest_DEFS += -DUSE_LED=1

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

serialtest_SOURCES = serialtest.c lib/ser.c lib/uart.c lib/softser.c lib/lcd44780.c lib/timer.c lib/format.c lib/buffer.c
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

