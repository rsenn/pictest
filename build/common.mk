#serialport = $(wildcard /dev/ttyS0)
#serialport =

C_RED = [1;31m
C_OFF = [0m


ifneq ($(shell which picprog 2>/dev/null),)
PICPROG = picprog
endif
ifneq ($(shell which picpgm 2>/dev/null),)
PICPGM = picpgm
endif

ifeq ($(BUILD_TYPE),)
BUILD_TYPE = htc
endif

ifneq ($(serialport),)
PICPROG_FLAGS += --pic-serial-port="$(serialport)"
endif
PICPROG_FLAGS += --jdm
#PICPROG_FLAGS += --rdtsc

PICPGM_FLAGS = -if JDM
.PHONY: all clean dist output prototypes
all:

$(BUILDDIR):
	@-mkdir -p $(BUILDDIR) || md $(subst /,\,$(BUILDDIR)) || true


$(OBJDIR): $(BUILDDIR)
	@-mkdir -p $(dir $(dir $(OBJDIR))) || md $(dir $(dir $(subst /,\,$(OBJDIR)))) || true
	@-mkdir -p $(dir $(OBJDIR)) || md $(dir $(subst /,\,$(OBJDIR))) || true
	@-mkdir -p $(OBJDIR) || md $(subst /,\,$(OBJDIR)) || true


program: $(OBJDIR) $(BUILDDIR) $(HEXFILE)
ifneq ($(PICPGM),)
	$(PICPGM) $(PICPGM_FLAGS) -pic PIC$(chipu) -e -p $(HEXFILE)
else
	$(PICPROG) $(PICPROG_FLAGS) --device="pic$(CHIP)" --input-hexfile="$<" --erase --burn
endif


verify: $(HEXFILE)
ifneq ($(PICPGM),)
	$(PICPGM) $(PICPGM_FLAGS) -pic PIC$(chipu) -v $(HEXFILE)
#else
#	$(PICPROG) $(PICPROG_FLAGS) --device="pic$(CHIP)" --input-hexfile="$<" --erase --burn
endif

report:
ifneq ($(PICPROG),)
	$(PICPROG) $(PICPROG_FLAGS) --device="pic$(CHIP)" --input-hexfile="$<" --erase --burn
else
	picpgm $(PICPGM_FLAGS) -p PIC$(chipu) -blank -r
endif

chip-header:
	@find $(CCDIR)/include -iname "p*$(chipl).h"

clean:
	-$(RM) $(BUILDDIR)*.hex $(OBJDIR)*.as $(BUILDDIR)*.cof $(BUILDDIR)*.hex $(BUILDDIR)*.hxl $(BUILDDIR)*.lst $(BUILDDIR)*.map $(OBJDIR)*.obj $(OBJDIR)*.rlf $(OBJDIR)*.sdb $(OBJDIR)*.sym \
	$(OBJDIR)*.lst $(OBJDIR)*.p1 $(OBJDIR)*.pre

-include $(OBJDIR)*.d