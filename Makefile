NAME = pic16test

target = pic14
chip = 16f876a
serialport = /dev/ttyS0

prefix ?= /usr
libdir = ${prefix}/lib
datadir = ${prefix}/share

ifeq ($(prefix),/usr)
 sdcclibdir = $(datadir)/sdcc/lib/pic
 targetlibdir = $(datadir)/sdcc/lib/pic
else
 sdcclibdir = $(datadir)/sdcc/lib/$(target)
 targetlibdir = $(datadir)/sdcc/non-free/lib/$(target)
endif

CC = ${prefix}/bin/sdcc
AS = gpasm
LD = gplink
PICPROG = picprog
CFLAGS =  -S -V -m${target} -pp$(chip) -D__$(chip) --use-non-free 
LDFLAGS = -m -s ${prefix}/share/gputils/lkr/$(chip).lkr
LIBS = \
  $(targetlibdir)/pic$(chip).lib \
  $(sdcclibdir)/libsdcc.lib

all: $(NAME).hex
program:
	$(PICPROG) --device="pic$(chip)" --erase --burn \
	--pic-serial-port="$(serialport)" --input-hexfile="$(NAME).hex"

%.o: %.asm
	$(AS) -c $<

%.hex: %.o
	$(LD) $(LDFLAGS) -o $@ $^ 


$(NAME).hex: $(LIBS) $(NAME).o

$(NAME).asm: $(NAME).c
	$(CC) $(CFLAGS) $<

clean:
	$(RM) $(NAME).asm $(NAME).c.orig $(NAME).cod $(NAME).hex $(NAME).lst $(NAME).map $(NAME).o

