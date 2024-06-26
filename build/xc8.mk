VERSION_MAJOR = 0
VERSION_MINOR = 9
VERSION_PATCH = 1

COMPILER = xc8

-include build/vars.mk

ifeq ($(PROGRAM),)
PROGRAM := pictest
endif

define nl =
$(empty)
$(empty)
endef

#BUILDDIR = build/xc8-$(chipl)/
#OBJDIR = $(BUILDDIR)$(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps_$(SOFTKBPS)skbps/

VERSION = $(VERSION_MAJOR).$(VERSION_MINOR).$(VERSION_PATCH)

#$(info CHIP: $(CHIP))

ifeq ($(CHIP),18f16q41)
CCVER := v2.36
else
CCVER ?= v1.43
endif
#$(info CCVER: $(CCVER))
#$(info OS: $(OS))

CPU_ARCH := $(shell uname -m)

ifneq ($(CPU_ARCH),x86_64)
PROGRAMFILES := C:/Program Files
else
PROGRAMFILES := C:/Program Files (x86)
endif

OS = $(shell uname -o)

#PICC = $(shell which picc 2>/dev/null)
ifeq ($(OS),GNU/Linux)
PICC = /opt/microchip/xc8/$(CCVER)/bin/xc8
endif

ifeq ($(PICC),)
ifeq ($(OS),GNU/Linux)
CCDIR = /opt/microchip/xc8/$(CCVER)
else
#CCDIR = $(patsubst %/bin,%,$(dir $(PICC)))
CCDIR = $(PROGRAMFILES)/Microchip/xc8/$(CCVER)
#CCDIR := 
endif
endif
#$(info CCDIR: $(CCDIR))

ifeq ($(VERBOSE),1)
		QUIET_STDERR := 
	QUIET_STDOUT := 
	QUIET := 
else
	QUIET_STDERR := 2>/dev/null
	QUIET_STDOUT := >/dev/null
	QUIET  := @
endif

ifeq ($(COMPILER),xc8)
#ifneq ($(CHIP),$(subst 18f,,$(CHIP)))
#COMPILER_NAME = picc18
#else
COMPILER_NAME = xc8
#endif
else
COMPILER_NAME = picc
endif

ifneq ($(PICC),)

else
ifneq ($(CCDIR),)
PICC = "$(CCDIR)/bin/$(COMPILER_NAME)"
else
PICC = $(COMPILER_NAME)
endif
endif

ifeq ($(strip $(PICC)),)
PICC = picc
endif

CPP = $(CCDIR)/bin/cpp
INCDIR = $(CCDIR)/include
#INCDIR := $(dir $(dir $(shell which picc)))/include

LD = $(PICC)
#RM = del /f
DISTFILES = Makefile build/xc8.mk build/sdcc.mk

OPT = space

#DEFINES += HI_TECH_C=1

SOURCES = $($(PROGRAM)_SOURCES) $(COMMON_SOURCES)
COMMON_FLAGS += $($(PROGRAM)_DEFS)
#$(info COMMON_FLAGS:$(COMMON_FLAGS))
DEPENDS := $(patsubst %.c,$(OBJDIR)%.dep,$(notdir $(SOURCES)))
P1OBJS := $(patsubst %.c,$(OBJDIR)%.p1,$(notdir $(SOURCES)))
ASSRCS := $(patsubst %.c,$(OBJDIR)%.as,$(notdir $(SOURCES)))

COMMON_FLAGS += -g
COMMON_FLAGS += -N127

#COMMON_FLAGS += --runtime="default,+clear,+init,-keep,+osccal,+download,-resetbits,+clib"
#COMMON_FLAGS += --runtime="default,-clear,+init,+keep,-osccal,+download,+resetbits,+clib"
COMMON_FLAGS += --runtime="default,+init,+osccal,+download,+clib"

ifneq ($(CODE_OFFSET),0)
ifneq ($(CODE_OFFSET),0x0000)
ifneq ($(CODE_OFFSET),)
#COMMON_FLAGS += --codeoffset=$(CODE_OFFSET)
LDFLAGS += --codeoffset=$(CODE_OFFSET)
endif
endif
endif

ifeq ($(OPT),speed)
OPT_SPEED = ,+speed,-space,9
endif
ifeq ($(OPT),space)
OPT_SPEED = ,+speed,-space,9
endif

ifneq ($(DEBUG),1)
COMMON_FLAGS += --opt="default,+asm,-debug$(OPT_SPEED)"
#COMMON_FLAGS += -D__DEBUG=1
else
COMMON_FLAGS += -G --opt="default,+asm,+debug$(OPT_SPEED)"
COMMON_FLAGS +=  -DNDEBUG=1
endif
COMMON_FLAGS +=  -DMCHP_XC8=1

COMMON_FLAGS += --debugger=icd2


COMMON_FLAGS += --double=32 --float=24

COMMON_FLAGS += --warn=9
COMMON_FLAGS += --asmlist

COMMON_FLAGS += --mode=PRO

#COMMON_FLAGS += --errformat="Error   [%n] %f; %l.%c %s"
#COMMON_FLAGS += --msgformat="Advisory[%n] %s"
#COMMON_FLAGS += --warnformat="Warning [%n] %f; %l.%c %s"
COMMON_FLAGS += #--errformat="\n\n%f:%l: error: (%n) %s"
COMMON_FLAGS += --warnformat="%f:%l: warning: (%n) %s"
COMMON_FLAGS += --msgformat="%f:%l: advisory: (%n) %s"
#COMMON_FLAGS += -E1
#COMMON_FLAGS += -P
#COMMON_FLAGS += -V

DEFINES += __XC=1

CPPFLAGS += $(DEFINES:%=-D%)

_CPPFLAGS += \
	-DVERSION_MAJOR=$(VERSION_MAJOR) \
	-DVERSION_MINOR=$(VERSION_MINOR) \
	-DVERSION_PATCH=$(VERSION_PATCH)

CFLAGS = -q --chip=$(chipl) $(COMMON_FLAGS)

LDFLAGS += --summary=default,-psect,-class,+mem,-hex,-file

LDFLAGS += --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,+download,+clib
LDFLAGS += --stack=compiled


LDFLAGS += --chip=$(chipl)
LDFLAGS +=  --asmlist

PM3CMD = "$$PROGRAMFILES"/Microchip/MPLAB\ IDE/Programmer\ Utilities/PM3Cmd/PM3Cmd

COFFILE = $(subst .hex,.cof,$(HEXFILE))

#-include build/vars.mk

.PHONY: compile dist prototypes output
#CPP_CONFIG = obj/xc8-cpp.config

compile: $(BUILDDIR) $(OBJDIR) $(CPP_CONFIG) output

ifneq ($(CPP_CONFIG),)
$(CPP_CONFIG): build/xc8.mk
	rm -f "$@"; set --  -DHI_TECH_C=1 -D__PICCPRO__=1 -D__PICC__=1 -D__XC=1 -D__XC__=1 -D__XC8=1 -D__XC8__=1 -p1 --c++11 --disambiguate=0 -S "$(CCDIR)/include"; for LINE; do case "$$LINE" in \
	 *\ *[\\/]*) LINE="\"$$LINE\"" ;; esac; echo "$$LINE"; done >"$@"
endif

output: $(HEXFILE) $(CFGFILE) $(BINFILE)
	@-mkdir -p $(BUILDDIR)
	@for F in $(HEXFILE) $(CFGFILE) $(COFFILE) $(BINFILE); do \
	  echo "Output file '$(C_RED)$$F$(C_OFF)' built..." 1>&2; \
	 done

dist:
	mkdir -p $(PROGRAM)-$(VERSION)
	cp -rvf $(DISTFILES) $(PROGRAM)-$(VERSION)
	tar -cvzf $(PROGRAM)-$(VERSION).tar.gz $(PROGRAM)-$(VERSION)

$(HEXFILE): LDFLAGS += --output=-mcof,+elf --output="default,-inhx032"
$(HEXFILE): $(P1OBJS)
	@-mkdir -p $(BUILDDIR)
	@-$(RM) $(HEXFILE)
	@echo Link $@ 1>&2
	$(QUIET)$(LD) $(LDFLAGS) $(COMMON_FLAGS) -m$(BUILDDIR)$(PROGRAM)_$(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps_$(SOFTKBPS)skbps.map -o$@ $^ $(QUIET_STDERR)
	@-(type cygpath 2>/dev/null >/dev/null && PATHTOOL="cygpath -w"; \
	 test -f "$$PWD/$(HEXFILE)" && { echo; echo "Got HEX file: `$${PATHTOOL:-echo} $$PWD/$(HEXFILE)`"; })

$(BINFILE): LDFLAGS += --output=bin
$(BINFILE): $(P1OBJS)
	@-mkdir -p $(BUILDDIR)
	@-$(RM) $(BINFILE)
	@echo Link $@ 1>&2
	$(QUIET)$(LD) $(LDFLAGS) -m$(BUILDDIR)$(PROGRAM)_$(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps_$(SOFTKBPS)skbps.map -o$@ $^ $(QUIET_STDERR)
	@-(type cygpath 2>/dev/null >/dev/null && PATHTOOL="cygpath -w"; \
	 test -f "$$PWD/$(BINFILE)" && { echo; echo "Got BIN file: `$${PATHTOOL:-echo} $$PWD/$(BINFILE)`"; })

$(P1OBJS): $(OBJDIR)%.p1: %.c
	@-mkdir -p $(OBJDIR)
#	(cd obj; $(PICC) --pass1 $(CFLAGS) $(CPPFLAGS:-I%=-I../%) --outdir=$(OBJDIR:obj/%/=%)  ../$< #; R=$$?; echo; exit $$R)
	@echo Compile $< 1>&2
	$(QUIET)(cd obj; $(SHELL) ../scripts/xc8.sh -v $(if $(CPP_CONFIG),@$(CPP_CONFIG:obj/%=%),) $(PICC) --pass1 $(CFLAGS) $(CPPFLAGS:-I%=-I../%) --outdir=$(OBJDIR:obj/%/=%)  ../$<) $(QUIET_STDERR)
#	$(PICC) --pass1 $(CFLAGS) $(CPPFLAGS) -o$(<:%.c=$(BUILDDIR)%_$(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps_$(SOFTKBPS)skbps.p1) $<

$(ASSRCS): $(OBJDIR)%.as: %.c
	@-mkdir -p $(OBJDIR)
	$(PICC) -S $(CFLAGS) $(CPPFLAGS) --outdir=$(OBJDIR:%/=%) $<

prototypes:
	cproto -DHI_TECH_C=1 -E '$(CPP)' $(CPPFLAGS) $(SOURCES) $(QUIET_STDERR)
ifneq ($(CCDIR),)
prototypes: CPPFLAGS += -I'$(CCDIR)/include'
endif


-include build/common.mk
