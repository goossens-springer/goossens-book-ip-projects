FILE1 = search_large.c 

all: search_large

search_large: ${FILE1} Makefile
	riscv32-unknown-elf-gcc -static ${FILE1} -O3 -o search_large

clean:
	rm -rf search_large output*
