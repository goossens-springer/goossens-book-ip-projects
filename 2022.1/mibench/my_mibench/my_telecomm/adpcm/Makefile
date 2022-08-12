CC     = riscv32-unknown-elf-gcc
CFLAGS = -static -O3

ALLSRC = adpcm.h adpcm.c rawcaudio.c \
	 rawdaudio.c

all: rawcaudio rawdaudio

adpcm.o: adpcm.h

rawcaudio: rawcaudio.o adpcm.o
	$(CC) $(CFLAGS) rawcaudio.o adpcm.o -o rawcaudio

rawdaudio: rawdaudio.o adpcm.o
	$(CC) $(CFLAGS) rawdaudio.o adpcm.o -o rawdaudio

clean:
	rm -f *.o ; rm rawcaudio rawdaudio ; rm -f ../output*
