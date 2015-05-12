
all:
	@echo "Please specify build system:"
	@echo " sdcc htc"

BUILD_TYPES = sdcc htc

$(BUILD_TYPES):
	$(MAKE) -f Makefile.$@ all


clean all program:
	for T in $(BUILD_TYPES); do $(MAKE) -f Makefile.$$T $@; done
