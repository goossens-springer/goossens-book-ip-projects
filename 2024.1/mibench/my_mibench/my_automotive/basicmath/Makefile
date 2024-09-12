FILE = basicmath_small.c   rad2deg.c  cubic.c   isqrt.c

all: basicmath_small

basicmath_small: ${FILE} Makefile
	riscv32-unknown-elf-gcc -static -O3 ${FILE} -o basicmath_small -lm

clean:
	rm basicmath_small 
