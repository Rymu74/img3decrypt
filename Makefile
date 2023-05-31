BIN = /usr/bin
CC_BIN = $(BIN)/cc
CC_UNIVERSAL = $(CC_BASE)

CFLAGS = 
CC_BASE = $(CC_BIN) -Os $(CFLAGS) -Wimplicit -I ./includes/

all: xpwntool.c img3.o img2.o abstractfile.o nor_files.o libxpwn.o lzssfile.o lzss.o
	$(CC_UNIVERSAL) -std=gnu99 -L/usr/local/opt/openssl@3/lib/ -lcrypto -lz -o img3decrypt $^


%.o: %.c
	$(CC_UNIVERSAL) -c -o $@ $< 

clean:
	rm -f *.o xpwntool
