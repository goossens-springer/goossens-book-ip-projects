OBJ = main.o fftmisc.o  fourierf.o
FILE = main.c fftmisc.c  fourierf.c
CFLAGS = -static -O3 -g

fft: ${OBJ} Makefile
	riscv32-unknown-elf-gcc  ${CFLAGS} ${OBJ} -o fft -lm
fftmisc.o: fftmisc.c
	riscv32-unknown-elf-gcc ${CFLAGS} -c fftmisc.c
fourierf.o: fourierf.c
	riscv32-unknown-elf-gcc ${CFLAGS} -c fourierf.c
main.o: main.c
	riscv32-unknown-elf-gcc ${CFLAGS} -c main.c

clean:
	rm -rf *.o fft output*
