NAME = pictest

target = pic14
chip = 16f876a
serialport = /dev/ttyS0

prefix ?= /usr
libdir = ${prefix}/lib
datadir = ${prefix}/share

chipu := `echo "${chip}" | tr "[:lower:]" "[:upper]"`

CC = ${prefix}/bin/sdcc
AS = gpasm
LD = gplink
PICPROG = picprog
CFLAGS =  -S -V -m${target} -pp$(chip) -D__$(chip) 
LDFLAGS = -m -s ${prefix}/share/gputils/lkr/$(chip).lkr
LIBS = \
  $(targetlibdir)/pic$(chip).lib \
  $(sdcclibdir)/libsdcc.lib

ifeq ($(prefix),/usr)
 sdcclibdir = $(datadir)/sdcc/lib/pic
 targetlibdir = $(datadir)/sdcc/lib/pic
else
 sdcclibdir = $(datadir)/sdcc/lib/$(target)
 targetlibdir = $(datadir)/sdcc/non-free/lib/$(target)
 CFLAGS += --use-non-free
endif

all: $(NAME).hex

program: $(NAME).hex
	#$(PICPROG) --device="pic$(chip)" --erase --burn --pic-serial-port="$(serialport)" --input-hexfile="$<"
	picpgm -p PIC$(chipu) -e -p "$<"

.c.o: ;
%.o: %.c

%.o: %.asm
	$(AS) -c $<

%.hex: %.o
	$(LD) $(LDFLAGS) -o $@ $^ 


$(NAME).hex: $(LIBS) $(NAME).o

%.asm: %.c
	$(CC) $(CFLAGS) -c $<

clean:
	$(RM) $(NAME).asm $(NAME).c.orig $(NAME).cod $(NAME).hex $(NAME).lst $(NAME).map $(NAME).o


pictest.asm: pictest.c
pictest.o: pictest.asm
pictest.hex: pictest.o $(LIBS)

blink3.asm: blink3.c
blink3.o: blink3.asm
blink3.hex: blink3.o $(LIBS)
