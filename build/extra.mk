tools/make-hue-table: tools/make-hue-table.c
	$(CC) -g -O2 -Wall -static -static-libgcc --output=$@ $<


