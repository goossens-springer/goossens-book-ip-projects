OBJ    = main.o     fftmisc.o  fourierf.o
OBJI   = main_inv.o fftmisc.o  fourierf.o
CFLAGS = -static -O3

all: fft fft_inv

fft:     ${OBJ}  Makefile
	riscv32-unknown-elf-gcc ${CFLAGS} ${OBJ} -o fft -lm
fft_inv: ${OBJI} Makefile
	riscv32-unknown-elf-gcc ${CFLAGS} ${OBJI} -o fft_inv -lm
fftmisc.o:  fftmisc.c
	riscv32-unknown-elf-gcc ${CFLAGS} -c fftmisc.c
fourierf.o: fourierf.c
	riscv32-unknown-elf-gcc ${CFLAGS} -c fourierf.c
main.o:     main.c
	riscv32-unknown-elf-gcc ${CFLAGS} -c main.c
main_inv.o: main_inv.c
	riscv32-unknown-elf-gcc ${CFLAGS} -c main_inv.c
clean:
	rm -rf *.o fft fft_inv output*
