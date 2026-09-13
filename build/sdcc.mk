VERSION_MAJOR = 0
VERSION_MINOR = 9
VERSION_PATCH = 1

COMPILER = sdcc

-include build/vars.mk
-include build/targets.mk

TIMER_DEFS := -DUSE_TIMER0=1


ifeq ($(PROGRAM),)
PROGRAM := pictest
endif



define nl = 
$(empty)
$(empty)
endef

#BUILDDIR = build/sdcc-$(chipl)/
#OBJDIR = $(BUILDDIR)$(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps_$(SOFTKBPS)skbps/

VERSION = $(VERSION_MAJOR).$(VERSION_MINOR).$(VERSION_PATCH)

CCVER = 3.6.0

PROGRAMFILES = C:/Program\ Files

OS = $(shell uname -o)

SDCC = $(shell which sdcc 2>/dev/null)

ifeq ($(SDCC),)
ifeq ($(OS),GNU/Linux)
CCDIR = /usr
else
CCDIR = $(PROGRAMFILES)/SDCC
endif
endif


ifeq ($(COMPILER),sdcc)
#ifneq ($(CHIP),$(subst 18f,,$(CHIP)))
#COMPILER_NAME = picc18
#else
COMPILER_NAME = sdcc
#endif
else
COMPILER_NAME = picc
endif

ifneq ($(CCDIR),/usr)
SDCC = $(CCDIR)/bin/$(COMPILER_NAME)
else
SDCC = $(COMPILER_NAME)
endif

ifeq ($(strip $(SDCC)),)
SDCC = picc
endif

CPP = $(CCDIR)/bin/cpp
INCDIR = $(CCDIR)/include
#INCDIR := $(dir $(dir $(shell which picc)))/include

LD = $(SDCC)
#RM = del /f
DISTFILES = Makefile build/sdcc.mk build/sdcc.mk

OPT = speed

DEFINES += __SDCC__=1

SOURCES =  $(COMMON_SOURCES) $($(subst -,_,$(PROGRAM))_SOURCES)
COMMON_FLAGS += $($(subst -,_,$(PROGRAM))_DEFS) $(DEFINES:%=-D%)
OBJECTS = $(patsubst %,$(OBJDIR)%,$(notdir $(patsubst %.c,%.o,$(SOURCES))))
ASSRCS = $(SOURCES:%.c=$(OBJDIR)%.s)
PREPROCESSED = $(SOURCES:%.c=$(OBJDIR)%.e)

# sdcc's generic --code-loc is a no-op for the pic16 port (gplink does its
# own placement from a .lkr script) -- relocating actually needs a custom
# linker script with CODEPAGE 'page' shifted, plus --ivt-loc so the
# __interrupt() vector trampoline lands at OFFSET+8 to match where a
# bootloader (../USB-uC/USB_uC.X) GOTOs into the app. gplink's default
# script is found next to the gplink binary sdcc is actually using.
GPUTILS_PREFIX := $(patsubst %/bin/gplink,%,$(shell which gplink))
GPUTILS_LKR := $(GPUTILS_PREFIX)/share/gputils/lkr/$(chipl)_g.lkr

ifneq ($(CODE_OFFSET),0x0000)
ifneq ($(CODE_OFFSET),0)
ifneq ($(CODE_OFFSET),)
GENERATED_LKR := $(OBJDIR)$(chipl)_at$(CODE_OFFSET).lkr
LDFLAGS += -Wl-s -Wl$(GENERATED_LKR)
LDFLAGS += --ivt-loc=$$(($(CODE_OFFSET) + 8))
endif
endif
endif
#
ifeq ($(OPT),speed)
OPT_SPEED = --opt-code-speed
endif
ifeq ($(OPT),space)
OPT_SPEED = --opt-code-size
endif

ifeq ($(BUILD_TYPE),debug)
COMMON_FLAGS += --debug
LDFLAGS += --debug
#COMMON_FLAGS += -D_DEBUG=1
else
COMMON_FLAGS += 
COMMON_FLAGS +=  -DNDEBUG=1
endif

#CPPFLAGS += $($(subst -,_,$(PROGRAM))_DEFS)
#CPPFLAGS += $(DEFINES:%=-D%)
CPPFLAGS += $(sort $(COMMON_FLAGS))

_CPPFLAGS += \
	-DVERSION_MAJOR=$(VERSION_MAJOR) \
	-DVERSION_MINOR=$(VERSION_MINOR) \
	-DVERSION_PATCH=$(VERSION_PATCH)

CFLAGS = --use-non-free
ifeq ($(chipl),12f1840)
CFLAGS += -mpic14
endif

CFLAGS += $(EXTRA_CFLAGS)


ifneq ($(chipl),$(chipl:16f%=%))
CFLAGS +=
else
CFLAGS +=
endif

PIC_TYPE := $(shell echo $(chipl) | head -c 3)
ifeq ($(PIC_TYPE),16f)
CFLAGS += -mpic14
LIBS += -llibm.lib
endif
ifeq ($(PIC_TYPE),18f)
CFLAGS += -mpic16
LIBS += -llibm18f.lib
endif


#$(info LIBS: $(LIBS))
CFLAGS += -p$(chipl)

#LDFLAGS += --summary="default,-psect,-class,+mem,-hex,-file"
#
#LDFLAGS += --runtime="default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,+download,+clib"
#LDFLAGS += --output="-mcof,+elf"
#LDFLAGS += --stack=compiled
#
#
#LDFLAGS += --output="default,-inhx032"
#LDFLAGS += --chip=$(chipl)
#LDFLAGS +=  --asmlist

PM3CMD = "$$PROGRAMFILES"/Microchip/MPLAB\ IDE/Programmer\ Utilities/PM3Cmd/PM3Cmd

COFFILE = $(subst .hex,.cof,$(HEXFILE))
# gplink (sdcc's pic14/pic16 linker) already writes a .cod symbol file as a
# side effect of every link, named by swapping .hex's extension -- this just
# gives that byproduct a Makefile identity so it's tracked as a real output
# and cleaned up, rather than an untracked file nobody declared.
CODFILE = $(subst .hex,.cod,$(HEXFILE))

ifeq ($(VERBOSE),1)
	QUIET_STDERR := 
	QUIET_STDOUT := 
	QUIET := 
	NO_QUIET := #
else
	QUIET_STDERR := 2>/dev/null
	QUIET_STDOUT := >/dev/null
	NO_QUIET :=
	QUIET := @
endif

#-include build/vars.mk

.PHONY: compile dist prototypes
#CPP_CONFIG = obj/sdcc-cpp.config

compile: $(BUILDDIR) $(OBJDIR) $(CPP_CONFIG) output

output: $(HEXFILE) $(CFGFILE) $(CODFILE) #$(COFFILE)
	@for F in $^; do \
	  echo "Output file '$(C_RED)$$F$(C_OFF)' built..." 1>&2; \
	 done

# $(CODFILE) is produced by the same gplink invocation as $(HEXFILE) --
# no separate recipe needed, just make its presence depend on the hex build.
$(CODFILE): $(HEXFILE)
	@:

dist:
	mkdir -p $(PROGRAM)-$(VERSION)
	cp -rvf $(DISTFILES) $(PROGRAM)-$(VERSION)
	tar -cvzf $(PROGRAM)-$(VERSION).tar.gz $(PROGRAM)-$(VERSION)

$(HEXFILE): $(OBJECTS)
	@-$(RM) $(HEXFILE) $(COFFILE)
ifneq ($(GENERATED_LKR),)
	@sed 's/CODEPAGE   NAME=page       START=0x0 /CODEPAGE   NAME=page       START=$(CODE_OFFSET) /' $(GPUTILS_LKR) >$(GENERATED_LKR)
endif
	$(NO_QUIET)@echo Link $< 1>&2
	$(QUIET)$(SDCC) $(LDFLAGS) $(CFLAGS) -o $@ $^ $(LIBS) $(QUIET_STDERR) $(QUIET_STDOUT)
	#sed -i 's/^:02400E00\(....\)\(..\)/:02400E0072FF32/' $(HEXFILE)
ifneq ($(GENERATED_LKR),)
	@# a bootloaded app must not carry anything below CODE_OFFSET -- sdcc's
	@# crt0 always drops a reset-vector GOTO stub at true 0x0000 regardless
	@# of the shifted CODEPAGE, which would clobber the bootloader's own
	@# vector table if this hex were ever flashed whole via ICSP. XC8's
	@# --codeoffset avoids emitting that stub in the first place; sdcc
	@# doesn't, so strip it here instead.
	@awk -v off=$$(($(CODE_OFFSET))) 'BEGIN{u=0} {t=substr($$0,8,2)} t=="04"{u=strtonum("0x" substr($$0,10,4)); print; next} t=="00"{if(u*65536+strtonum("0x" substr($$0,4,4))<off) next; print; next} {print}' $(HEXFILE) >$(HEXFILE).tmp && mv $(HEXFILE).tmp $(HEXFILE)
endif
	@-(type cygpath 2>/dev/null >/dev/null && PATHTOOL="cygpath -w"; \
	 test -f "$$PWD/$(HEXFILE)" && { echo; echo "Got HEX file: `$${PATHTOOL:-echo} $$PWD/$(HEXFILE)`"; })

#$(OBJECTS): $(OBJDIR)%.o: lib/%.c
#	$(SDCC) $(CFLAGS) $(CPPFLAGS) -c -o $@ $<

$(OBJECTS): $(OBJDIR)%.o: %.c
	$(NO_QUIET)@echo Compile $< 1>&2
	$(QUIET)$(SDCC) $(CFLAGS) $(CPPFLAGS) -c -o $@ $<

$(ASSRCS): $(OBJDIR)%.s: %.c
	$(SDCC) $(CFLAGS) $(CPPFLAGS) -S -o $@ $<
		$(SDCC) $(CFLAGS) $(CPPFLAGS) -c -o $@ $<

$(PREPROCESSED): $(OBJDIR)%.e: %.c
	$(SDCC) $(CFLAGS) $(CPPFLAGS) -E -o $@ $<

prototypes:
	cproto -DHI_TECH_C=1 -E '$(CPP)' $(CPPFLAGS) $(SOURCES) 2>/dev/null
ifneq ($(CCDIR),)
prototypes: CPPFLAGS += -I'$(CCDIR)/include'
endif


-include build/common.mk
