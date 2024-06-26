PROJECT_NAME = pictest

LAYOUTS := $(patsubst eagle/%,%,$(shell grep -L -E '(layer="19"|<polygon.*layer="16")' eagle/*.brd) $(shell ls -d eagle/picstick*.brd))

COMPILER ?= htc
DEBUG ?= 0

-include build/defaults.mk
-include build/vars.mk


ifeq ($(BUILD_TYPES),)
#BUILD_TYPES := debug release
BUILD_TYPES := debug
#BUILD_TYPE := release
endif

#ifeq ($(XTAL_FREQS),)
#XTAL_FREQS := 16000000 20000000
#XTAL_FREQS := 20000000 
#endif

ifeq ($(BAUD_RATES),)
#@BAUD_RATES := 19200 38400
BAUD_RATES := 38400
endif

# ifeq ($(CODE_OFFSETS),)
# CODE_OFFSETS := 0x0000 0x0800 0x1000 0x2000
# endif

ifeq ($(BUILD_TYPE),debug)
DEBUG = 1
else
DEBUG = 0
endif

MAKE_CMD := "$(MAKE)" -f build/$$COMPILER.mk
MAKE_LOOP := @MAKE@ || exit $$?

#default:
#	@echo "Please specify build system:"
#	@echo " sdcc htc"
#
ifneq ($(subst program,,$(MAKECMDGOALS)),$(MAKECMDGOALS))
BUILD_TYPES := $(lastword $(strip $(BUILD_TYPES)))
COMPILERS := $(firstword $(strip $(COMPILERS)))
XTAL_FREQS := $(firstword $(strip $(XTAL_FREQS)))
BAUD_RATES := $(firstword $(strip $(BAUD_RATES)))
CHIPS := $(firstword $(strip $(CHIPS)))
#$(info BUILD_TYPES="$(BUILD_TYPES)" COMPILERS="$(COMPILERS)" XTAL_FREQS="$(XTAL_FREQS)" BAUD_RATES="$(BAUD_RATES)" CHIPS="$(CHIPS)" BUILD_TYPES="$(BUILD_TYPES)")
endif


ifneq ($(call is-list,XTAL_FREQ),)
MAKE_CMD +=  XTAL=$$XTAL_FREQ
MAKE_LOOP := for XTAL_FREQ in $(call get-list,XTAL_FREQ); do $(MAKE_LOOP); done
else
ifneq ($(call get-list,XTAL_FREQ),)
MAKE_CMD += XTAL=$(call get-list,XTAL_FREQ)
endif
endif

ifneq ($(call is-list,CHIP),)
MAKE_CMD +=  CHIP=$$CHIP
MAKE_LOOP := for CHIP in $(call get-list,CHIP); do $(MAKE_LOOP); done
else
ifneq ($(call get-list,CHIP),)
MAKE_CMD += CHIP=$(call get-list,CHIP)
endif
endif

ifneq ($(call is-list,BAUD_RATE),)
MAKE_CMD +=  BAUD=$$BAUD_RATE
MAKE_LOOP := for BAUD_RATE in $(call get-list,BAUD_RATES); do $(MAKE_LOOP); done
else
ifneq ($(call get-list,BAUD_RATE),)
MAKE_CMD += BAUD=$(call get-list,BAUD_RATE)
endif
endif

ifneq ($(call is-list,CODE_OFFSET),)
MAKE_CMD +=  CODE_OFFSET=$$CODE_OFFSET
MAKE_LOOP := for CODE_OFFSET in $(call get-list,CODE_OFFSET); do $(MAKE_LOOP); done
else
ifneq ($(call get-list,CODE_OFFSET),)
MAKE_CMD += CODE_OFFSET=$(call get-list,CODE_OFFSET)
endif
endif

ifneq ($(call is-list,COMPILER),)
MAKE_CMD +=  COMPILER=$$COMPILER
MAKE_LOOP := for COMPILER in $(call get-list,COMPILER); do $(MAKE_LOOP); done
else
ifneq ($(call get-list,COMPILER),)
MAKE_CMD := $(subst $$COMPILER,$(call get-list,COMPILER),$(MAKE_CMD))
endif
endif

ifneq ($(call is-list,BUILD_TYPE),)
MAKE_CMD +=  BUILD_TYPE=$$BUILD_TYPE
MAKE_LOOP := for BUILD_TYPE in $(call get-list,BUILD_TYPE); do $(MAKE_LOOP); done
else
ifneq ($(call get-list,BUILD_TYPE),)
MAKE_CMD += BUILD_TYPE=$(call get-list,BUILD_TYPE)
endif
endif


ifeq ($(VERBOSE),)
REDIR_LOGFILE :=  >$$NAME.log
else
REDIR_LOGFILE := | tee $$NAME.log
endif

.PHONY: all
all: compile 


ifneq ($(call is-list,PROGRAM),)
P_MAKE_CMD :=  $(MAKE_CMD) PROGRAM=$$P 2>&1
P_MAKE_LOOP := for P in $(call get-list,PROGRAM) ; do $(MAKE_LOOP); done

.PHONY: compile clean program verify 
compile clean program verify:
	NAME=$@; $(subst @MAKE@,(set -x; $(P_MAKE_CMD) $@); R=$$?;  [ "$$R" = 0 ] || { echo " ($$R)" 1>&2; exit $$R; },$(P_MAKE_LOOP)) $(REDIR_LOGFILE)
else
.PHONY: compile clean program verify
compile clean program verify:
	NAME=$@; $(subst @MAKE@,(set -x; $(MAKE_CMD) PROGRAM=$(call get-list,PROGRAM) $@),$(MAKE_LOOP)) $(REDIR_LOGFILE)
endif


# STUFF YOU WILL NEED:
# - git, gerbv and eagle must be installed and must be in path.
# - Got GitHub account?
# - GitHub set up with your SSH keys etc.
# - Put your GitHub username and private API key in the makefile

# On Mac OSX we will create a link to the Eagle binary:
# sudo ln -s /Applications/EAGLE/EAGLE.app/Contents/MacOS/EAGLE /usr/bin/eagle

.SILENT: _gerbers git github clean
.PHONY: layouts

layouts:
	echo $(LAYOUTS)
	@for x in $(LAYOUTS); do \
		LAYOUT_NAME="$${x##*/}"; LAYOUT_NAME=$${LAYOUT_NAME%.brd}; \
		if [ ! -e "gerbers/$$LAYOUT_NAME.zip" -o "eagle/$$LAYOUT_NAME.brd" -nt "gerbers/$$LAYOUT_NAME.zip" -o Makefile -nt "gerbers/$$LAYOUT_NAME.zip" ]; then \
			echo "$(MAKE) layout LAYOUT_NAME=$$LAYOUT_NAME" 1>&2 ; \
			$(MAKE) layout LAYOUT_NAME=$$LAYOUT_NAME || { R=$$?; echo "Abort: $$R" 1>&2; exit $$R; }	\
		fi; \
	done
	
include build/gerbers.mk

$(PROGRAMS):
	$(subst @MAKE@,$(MAKE_CMD) PROGRAM=$@,$(MAKE_LOOP))


fword = $(firstword $(strip $(subst -, ,$1)))
remove-fword = $(subst $(call fword,$1)-,,$1)

$(PROGRAMS:%=clean-%):
	$(subst @MAKE@,$(MAKE_CMD) PROGRAM=$(call remove-fword,$@) $(call fword,$@),$(MAKE_LOOP))

$(PROGRAMS:%=program-%): $(@:program-%=%)
	$(subst @MAKE@,$(MAKE_CMD) PROGRAM=$(call remove-fword,$@) compile $(call fword,$@),$(MAKE_LOOP))

$(PROGRAMS:%=verify-%): $(@:verify-%=%)
	$(subst @MAKE@,$(MAKE_CMD) PROGRAM=$(call remove-fword,$@) compile $(call fword,$@),$(MAKE_LOOP))

DISTFILES = $(wildcard Makefile*) $(wildcard *.mcw *.mcp *.cbp *.sh) $(pictest_SOURCES)

distdir = pictest-$(shell date +%Y%m%d)

dist:
	mkdir -p $(distdir)
	cp -f $(DISTFILES) $(distdir)/
	tar -cvJf $(distdir).txz --exclude="build" $(distdir)/
	$(RM) -r $(distdir)

clean-compile:
	$(RM) -r bin obj
	
include build/extra.mk
