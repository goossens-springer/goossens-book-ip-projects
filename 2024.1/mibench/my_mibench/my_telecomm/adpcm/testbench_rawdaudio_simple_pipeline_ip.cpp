#include <stdio.h>
#include <string.h>
#include "../../../../simple_pipeline_ip/simple_pipeline_ip.h"
#define OUTPUT 0x20e4
#define LENGTH 0x76d4
#define STATE  0x76d8
unsigned int data_ram[DATA_RAM_SIZE]={
#include "rawdaudio_no_print_0_data.hex"
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "rawdaudio_no_print_0_text.hex"
};
int main(){
  unsigned int nbi, length, i, j;
  struct state_s{short valprev; char index;} state;
  simple_pipeline_ip(0, (instruction_t*)code_ram, (int*)data_ram, &nbi);
  state  = ((struct state_s*)data_ram)[STATE/4];
  length = data_ram[LENGTH/4];
  printf("Final valprev=%d, index=%d\n",
          state.valprev, state.index);
  for (i=0; i<length/20; i++){
    for (j=0; j<20; j++)
      printf("%3d ", ((unsigned char*)data_ram)[OUTPUT+i*20+j]);
    printf("\n");
  }
  for (j=0; j<length%20; j++)
    printf("%3d ", ((unsigned char*)data_ram)[OUTPUT+i*20+j]);
  printf("\n");
  printf("%d fetched, decoded and run instructions\n", nbi);
  return 0;
}
