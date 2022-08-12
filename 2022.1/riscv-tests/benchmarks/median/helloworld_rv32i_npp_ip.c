#include <stdio.h>
#include "xrv32i_npp_ip.h"
#include "xparameters.h"
#define LOG_CODE_RAM_SIZE 16
//size in words
#define CODE_RAM_SIZE     (1<<LOG_CODE_RAM_SIZE)
#define LOG_DATA_RAM_SIZE 16
//size in words
#define DATA_RAM_SIZE     (1<<LOG_DATA_RAM_SIZE)
#define DATA_SIZE 2700
#define RESULT    0x5460/4
XRv32i_npp_ip_Config *cfg_ptr;
XRv32i_npp_ip         ip;
word_type data_ram[DATA_RAM_SIZE]={
#include "median_no_print_0_data.hex"
};
word_type code_ram[CODE_RAM_SIZE]={
#include "median_no_print_0_text.hex"
};
int main(){
  int       i, j;
  word_type w;
  cfg_ptr = XRv32i_npp_ip_LookupConfig
    (XPAR_XRV32I_NPP_IP_0_DEVICE_ID);
  XRv32i_npp_ip_CfgInitialize(&ip, cfg_ptr);
  XRv32i_npp_ip_Set_start_pc(&ip, 0);
  XRv32i_npp_ip_Write_code_ram_Words
    (&ip, 0, code_ram, CODE_RAM_SIZE);
  XRv32i_npp_ip_Write_data_ram_Words
    (&ip, 0, data_ram, DATA_RAM_SIZE);
  XRv32i_npp_ip_Start(&ip);
  while (!XRv32i_npp_ip_IsDone(&ip));
  printf("result\n");
  for (i=0; i<DATA_SIZE/20; i++){
    for (j=0; j<20; j++){
      XRv32i_npp_ip_Read_data_ram_Words(&ip, i*20+j+RESULT, &w, 1);
      printf("%3d ", (int)w);
    }
    printf("\n");
  }
  printf("%d fetched, decoded and run instructions\n",
        (int)XRv32i_npp_ip_Get_nb_instruction(&ip));
  return 0;
}
