#include <stdio.h>
#include <string.h>
#include "../../../../rv32i_pp_ip/rv32i_pp_ip.h"
#define REAL    0xcf0
#define IMAG    0x8f0
#define MAXSIZE 256
unsigned int data_ram[DATA_RAM_SIZE]={
#include "fft_no_print_0_data.hex"
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "fft_no_print_0_text.hex"
};
int main(){
  unsigned int nbi, nbc, i, j;
  float        real[MAXSIZE], imag[MAXSIZE];
  rv32i_pp_ip(0, (instruction_t*)code_ram, (int*)data_ram, &nbi, &nbc);
  memcpy((void*)real,(void*)(&data_ram[REAL/4]),4*MAXSIZE);
  memcpy((void*)imag,(void*)(&data_ram[IMAG/4]),4*MAXSIZE);
  printf("RealOut:\n");
  for (i=0;i<MAXSIZE/8;i++){
    for (j=0;j<8;j++)
      printf("%+13f ", real[i*8+j]);
    printf("\n");
  }
  printf("ImagOut:\n");
  for (i=0;i<MAXSIZE/8;i++){
    for (j=0;j<8;j++)
      printf("%+13f ", imag[i*8+j]);
    printf("\n");
  }
  printf("%d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  return 0;
}
