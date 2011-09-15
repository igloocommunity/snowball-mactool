
CC := arm-linux-gnueabi-gcc

SOURCES = newmac.c

snowball-mactool: $(SOURCES)
	$(CC) -static $(SOURCES) -o $@
