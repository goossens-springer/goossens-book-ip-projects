#include <stdio.h>
#include "xrv32i_npp_ip.h"
#include "xparameters.h"
#define LOG_CODE_RAM_SIZE 15
//size in words
#define CODE_RAM_SIZE     (1<<LOG_CODE_RAM_SIZE)
#define LOG_DATA_RAM_SIZE 15
//size in words
#define DATA_RAM_SIZE     (1<<LOG_DATA_RAM_SIZE)
XRv32i_npp_ip_Config *cfg_ptr;
XRv32i_npp_ip ip;
int *code_ram = (int *)(0x40000000);
int *data_ram = (int *)(0x40020000);
word_type input_code_ram[CODE_RAM_SIZE]={
#include "test_mem_0_text.hex"
};
int main(){
  word_type w;
  cfg_ptr = XRv32i_npp_ip_LookupConfig(XPAR_XRV32I_NPP_IP_0_BASEADDR);
  XRv32i_npp_ip_CfgInitialize(&ip, cfg_ptr);
  XRv32i_npp_ip_Set_start_pc(&ip, 0);
  for (int i=0; i<CODE_RAM_SIZE; i++)
    code_ram[i] = input_code_ram[i];
  XRv32i_npp_ip_Start(&ip);
  while (!XRv32i_npp_ip_IsDone(&ip));
  printf("%d fetched and decoded instructions\n",
    (int)XRv32i_npp_ip_Get_nb_instruction(&ip));
  printf("data memory dump (non null words)\n");
  for (int i=0; i<DATA_RAM_SIZE; i++){
    w = data_ram[i];
    if (w != 0)
      printf("m[%5x] = %16d (%8x)\n", 4*i, (int)w,
            (unsigned int)w);
  }
  return 0;
}
