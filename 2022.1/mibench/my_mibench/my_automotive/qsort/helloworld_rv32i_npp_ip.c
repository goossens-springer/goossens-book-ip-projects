#include <stdio.h>
#include "xrv32i_npp_ip.h"
#include "xparameters.h"
#define LOG_CODE_RAM_SIZE 16
//size in words
#define CODE_RAM_SIZE     (1<<LOG_CODE_RAM_SIZE)
#define LOG_DATA_RAM_SIZE 16
//size in words
#define DATA_RAM_SIZE     (1<<LOG_DATA_RAM_SIZE)
#define ARRAYSIZE         1200
XRv32i_npp_ip_Config *cfg_ptr;
XRv32i_npp_ip         ip;
word_type data_ram[DATA_RAM_SIZE]={
#include "qsort_large_no_print_0_data.hex"
};
word_type code_ram[CODE_RAM_SIZE]={
#include "qsort_large_no_print_0_text.hex"
};
int main(){
  int       i;
  word_type n0, n1, n2;
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
  for (i=0; i<6*ARRAYSIZE; i+=6){
    XRv32i_npp_ip_Read_data_ram_Words(&ip, i,   &n0, 1);
    XRv32i_npp_ip_Read_data_ram_Words(&ip, i+1, &n1, 1);
    XRv32i_npp_ip_Read_data_ram_Words(&ip, i+2, &n2, 1);
    printf("%d %d %d\n", (int)n0, (int)n1, (int)n2);
  }
  printf("%d fetched, decoded and run instructions\n",
        (int)XRv32i_npp_ip_Get_nb_instruction(&ip));
  return 0;
}
