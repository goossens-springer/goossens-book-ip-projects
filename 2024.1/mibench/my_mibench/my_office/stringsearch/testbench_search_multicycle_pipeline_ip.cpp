#include <stdio.h>
#include "../../../../multicycle_pipeline_ip/multicycle_pipeline_ip.h"
#define RESULT 0x1e88
unsigned int data_ram[DATA_RAM_SIZE]={
#include "search_large_no_print_0_data.hex"
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "search_large_no_print_0_text.hex"
};
int main(){
  unsigned int nbi, nbc;
  multicycle_pipeline_ip(0, (instruction_t*)code_ram, (int*)data_ram, &nbi, &nbc);
  printf("%s",((char*)data_ram)+RESULT);
  printf("%d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  return 0;
}
