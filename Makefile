
CC := arm-linux-gnueabi-gcc

SOURCES = newmac.c

snowball-mactool: $(SOURCES)
	$(CC) -static $(SOURCES) -o $@

prefix := /usr/local

install:
	install -d $(DESTDIR)/$(prefix)/bin
	install -m 0775 snowball-mactool $(DESTDIR)/$(prefix)/bin

clean:
	rm -rf snowball-mactool

