NAME = pic16test

target = pic14

prefix ?= /usr
libdir = ${prefix}/lib
datadir = ${prefix}/share


sdcclibdir = $(datadir)/sdcc/lib
nonfreelibdir = $(datadir)/sdcc/non-free/lib
#targetlibdir = $(sdcclibdir)/${target}

CC = ${prefix}/bin/sdcc
AS = gpasm

CHIP = 16f876a
CFLAGS =  -S -V -m${target} -pp$(CHIP) -D__$(CHIP) --use-non-free 
LIBS = \
  $(nonfreelibdir)/$(target)/pic$(CHIP).lib \
  $(sdcclibdir)/$(target)/libsdcc.lib

LD = gplink
LDFLAGS = -m -s ${prefix}/share/gputils/lkr/$(CHIP).lkr

all: $(NAME).hex
program:
	picprog --device=pic$(CHIP) --erase --burn \
	--pic-serial-port=/dev/ttyS0 --input-hexfile=$(NAME).hex

%.o: %.asm
	$(AS) -c $<

%.hex: %.o
	$(LD) $(LDFLAGS) -o $@ $^ 


$(NAME).hex: $(LIBS) $(NAME).o

$(NAME).asm: $(NAME).c
	$(CC) $(CFLAGS) $<

clean:
	$(RM) $(NAME).asm $(NAME).c.orig $(NAME).cod $(NAME).hex $(NAME).lst $(NAME).map $(NAME).o

