

# Gerbv PCB image preview parameters - colours, plus resolution.
GERBER_IMAGE_RESOLUTION ?= 400
BACKGROUND_COLOUR ?= \#ffffff
HOLES_COLOUR ?= \#ffffff
SILKSCREEN_COLOUR ?= \#afafaf
PADS_COLOUR ?= \#4ba54b
TOP_SOLDERMASK_COLOUR ?= \#a54b4b
BOTTOM_SOLDERMASK_COLOUR ?= \#4b4ba5
OUTLINE_COLOUR ?= \#a5a5a5


.PHONY: gerbers project
project : gerbers


.PHONY: gerbers

gerbers :
	-@mkdir -p gerbers
	-@mkdir -p temp
	-@for f in `ls *.s#* *.b#* 2> /dev/null`; do mv $$f ./temp/; done
	@echo "Generating Gerber files for 'eagle/$(PROJECT_NAME).brd' ..." 1>&2
	eagle -X -d GERBER_RS274X -o "./gerbers/$(PROJECT_NAME).GTL" "eagle/$(PROJECT_NAME).brd" Top Pads Vias Dimension > /dev/null
	eagle -X -d GERBER_RS274X -o "./gerbers/$(PROJECT_NAME).GBL" "eagle/$(PROJECT_NAME).brd" Bottom Pads Vias > /dev/null
	eagle -X -d GERBER_RS274X -o "./gerbers/$(PROJECT_NAME).GTO" "eagle/$(PROJECT_NAME).brd" tPlace tNames tValues > /dev/null
	eagle -X -d GERBER_RS274X -o "./gerbers/$(PROJECT_NAME).GTP" "eagle/$(PROJECT_NAME).brd" tCream > /dev/null
	eagle -X -d GERBER_RS274X -o "./gerbers/$(PROJECT_NAME).GBO" "eagle/$(PROJECT_NAME).brd" bPlace bNames bValues > /dev/null
	eagle -X -d GERBER_RS274X -o "./gerbers/$(PROJECT_NAME).GTS" "eagle/$(PROJECT_NAME).brd" tStop > /dev/null
	eagle -X -d GERBER_RS274X -o "./gerbers/$(PROJECT_NAME).GBS" "eagle/$(PROJECT_NAME).brd" bStop > /dev/null
	eagle -X -d GERBER_RS274X -o "./gerbers/$(PROJECT_NAME).GML" "eagle/$(PROJECT_NAME).brd" Milling > /dev/null
	eagle -X -d GERBER_RS274X -o "./gerbers/$(PROJECT_NAME).GKO" "eagle/$(PROJECT_NAME).brd" Dimension > /dev/null
	eagle -X -d EXCELLON -o "./gerbers/$(PROJECT_NAME).TXT" "eagle/$(PROJECT_NAME).brd" Drills Holes > /dev/null

	sed -i "s|X\\([0-9]\\+\\)[0-9]\\+Y\\([0-9]\\+\\)[0-9]$$|X\\1Y\\2|" "./gerbers/$(PROJECT_NAME).TXT"

	for FMT in png pdf; do (set -x; gerbv --export=$$FMT --output="gerbers/$(PROJECT_NAME)-pcb.$$FMT" --dpi=$(GERBER_IMAGE_RESOLUTION) --background=$(BACKGROUND_COLOUR) \
    --f=$(SILKSCREEN_COLOUR) "gerbers/$(PROJECT_NAME).GTO" \
    --f=$(HOLES_COLOUR) "gerbers/$(PROJECT_NAME).TXT" \
    --f=$(PADS_COLOUR) "gerbers/$(PROJECT_NAME).GTS" \
    --f=$(TOP_SOLDERMASK_COLOUR) "gerbers/$(PROJECT_NAME).GTL" \
    --f=$(BOTTOM_SOLDERMASK_COLOUR) "gerbers/$(PROJECT_NAME).GBL" \
    --f=$(OUTLINE_COLOUR) "gerbers/$(PROJECT_NAME).GKO" \
    ); done
