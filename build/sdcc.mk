PROGRAM ?= pictest

serialport = /dev/ttyS0

prefix ?= /usr
libdir = ${prefix}/lib
datadir = ${prefix}/share

COMPILER = sdcc

-include build/vars.mk

ifneq ($(CHIP),$(CHIP:18%=%))
target = pic16
else
target = pic14
endif

#SDCC = /usr/bin/sdcc
SDCC = sdcc
AS = gpasm
LD = gplink
PICPROG = picprog
#CFLAGS =  -S -V -m${target} -pp$(chipl)
CFLAGS =  -m${target} -pp$(chipl)
#CFLAGS += --code-loc $(CODE_OFFSET)

#LDFLAGS = -m -s ${prefix}/share/gputils/lkr/$(chipl).lkr
#LIBS = $(targetlibdir)/pic$(chipl).lib
#LIBS = $(targetlibdir)/pic$(chipl).lib $(sdcclibdir)/libsdcc.lib

CFLAGS += --opt-code-size
#CFLAGS += --stack-auto

-include build/vars.mk

ifneq ($(CHIP),$(CHIP:18%=%))

endif
#DEFINES += NO_BIT_DEFINES=1
#DEFINES += __SDCC=1

CPPFLAGS += $(DEFINES:%=-D%)

CPPFLAGS += $($(PROGRAM)_DEFS)
SOURCES = $($(PROGRAM)_SOURCES) $(COMMON_SOURCES)
OBJECTS = $(patsubst %.c,$(OBJDIR)%.o,$(notdir $(SOURCES)))


ifeq ($(DEBUG),1)
	CFLAGS += --debug
endif

$(info OBJDIR: $(OBJDIR))
$(info BUILD_TYPE: $(BUILD_TYPE))

ifeq ($(SDCC),/usr/bin/sdcc)
 sdcclibdir = $(datadir)/sdcc/lib/pic
 targetlibdir = $(datadir)/sdcc/lib/pic
else
 sdcclibdir = $(datadir)/sdcc/lib/$(target)
 targetlibdir = $(datadir)/sdcc/non-free/lib/$(target)
 CFLAGS += --use-non-free
endif

all: $(BUILDDIR) $(OBJDIR)  $(HEXFILE)


$(OBJDIR)7segment.o $(OBJDIR)adc.o $(OBJDIR)buffer.o $(OBJDIR)comparator.o $(OBJDIR)delay.o $(OBJDIR)ds18b20.o $(OBJDIR)format.o $(OBJDIR)lcd44780.o $(OBJDIR)lcd5110.o $(OBJDIR)onewire.o $(OBJDIR)pwm.o $(OBJDIR)queue.o $(OBJDIR)random.o $(OBJDIR)ser.o $(OBJDIR)softpwm.o $(OBJDIR)softser.o $(OBJDIR)timer.o $(OBJDIR)uart.o: $(OBJDIR)%.o: lib/%.c
	$(SDCC) $(CFLAGS) $(CPPFLAGS) -o $@ -c $<


#$(OBJDIR)ser.o: CPPFLAGS += -DUSE_SER=1
#$(OBJDIR)softser.o: CPPFLAGS += -DUSE_SOFTSER=1
#$(OBJDIR)softpwm.o: CPPFLAGS += -DUSE_SOFTPWM=1



$(OBJDIR)7segtest.o $(OBJDIR)blinktest.o $(OBJDIR)pictest.o $(OBJDIR)serialtest.o: $(OBJDIR)%.o: %.c
	$(SDCC) $(CFLAGS) $(CPPFLAGS) -o $@ -c $<

$(BUILDDIR)%_$(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps.cof: $(OBJDIR)%.o
	$(SDCC) $(CFLAGS) $(CPPFLAGS) -o $@ -E $<

$(BUILDDIR)%_$(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps.asm: %.c
	$(SDCC) $(CFLAGS) $(CPPFLAGS) -o $@ -S $<

$(HEXFILE): $(OBJECTS)
	(cd $(BUILDDIR); $(SDCC) $(CFLAGS) -o $(notdir $(HEXFILE)) $(^:%=../../%))

$(ELFFILE): $(OBJECTS)
	(cd $(BUILDDIR); $(SDCC) $(CFLAGS)  -o $(notdir $(ELFFILE)) $(^:%=../../%))

$(COFFILE): $(OBJECTS)
	(cd $(BUILDDIR); $(SDCC) $(CFLAGS) -o $(notdir $(COFFILE)) $(^:%=../../%))

.PHONY: clean
clean:
ifeq ($(BUILDDIR),)
	$(RM) *.asm *.cod *.hex *.map *.o *.lst *.asm *.as *.obj *.rlf *.dep *.p1 *.pre
else
	$(RM) -r $(BUILDDIR)
endif

include build/common.mk
