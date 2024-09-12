#include <stdio.h>
#include <string.h>
#include "../../../../multihart_ip/multihart_ip.h"
#define REAL    0xcf0
#define IMAG    0x8f0
#define MAXSIZE 256
unsigned int data_ram[NB_HART][HART_DATA_RAM_SIZE]={
{
#include "fft_no_print_0_data.hex"
},
{
#include "fft_no_print_0_data.hex"
}
#if (NB_HART>2)
,{
#include "fft_no_print_0_data.hex"
},
{
#include "fft_no_print_0_data.hex"
}
#endif
#if (NB_HART>4)
,{
#include "fft_no_print_0_data.hex"
},
{
#include "fft_no_print_0_data.hex"
},
{
#include "fft_no_print_0_data.hex"
},
{
#include "fft_no_print_0_data.hex"
}
#endif
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "fft_no_print_0_text.hex"
};
unsigned int start_pc[NB_HART];
int main(){
  unsigned int nbi, nbc, i, j;
  float        real[MAXSIZE], imag[MAXSIZE];
  multihart_ip((1<<NB_HART)-1,//start all harts
               start_pc, code_ram, (int (*)[HART_DATA_RAM_SIZE])data_ram, &nbi, &nbc);
  for (int h=0; h<NB_HART; h++){
    printf("hart %d\n", (int)h);
    memcpy((void*)real,(void*)(&data_ram[h][REAL/4]),4*MAXSIZE);
    memcpy((void*)imag,(void*)(&data_ram[h][IMAG/4]),4*MAXSIZE);
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
  }
  printf("%d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  return 0;
}
