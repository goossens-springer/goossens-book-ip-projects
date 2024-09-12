all: qsort_large

qsort_large: qsort_large.c Makefile
	riscv32-unknown-elf-gcc -static qsort_large.c -O3 -o qsort_large -lm

clean:
	rm -rf qsort_large output*
