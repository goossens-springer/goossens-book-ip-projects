#include <stdio.h>
#include "xmulti_core_multi_ram_ip.h"
#include "xparameters.h"
#define LOG_NB_RAM         1  //2^LOG_NB_RAM ram blocks
#define LOG_RAM_SIZE       16 //2^LOG_RAM_SIZE words
#define LOG_LOCAL_RAM_SIZE (LOG_RAM_SIZE - LOG_NB_RAM)
#define LOCAL_RAM_SIZE     (1<<LOG_LOCAL_RAM_SIZE)
#define BASE_RAM           0x40000000
int *ram0 = (int *)(BASE_RAM + 0);
int *ram1 = (int *)(BASE_RAM + 0x20000);
XMulti_core_multi_ram_ip_Config *cfg_ptr0;
XMulti_core_multi_ram_ip_Config *cfg_ptr1;
XMulti_core_multi_ram_ip ip0;
XMulti_core_multi_ram_ip ip1;
int main(){
  cfg_ptr0 = XMulti_core_multi_ram_ip_LookupConfig(XPAR_XMULTI_CORE_MULTI_RAM_IP_0_DEVICE_ID);
  XMulti_core_multi_ram_ip_CfgInitialize(&ip0, cfg_ptr0);
  XMulti_core_multi_ram_ip_Set_ip_num(&ip0, 0);
  XMulti_core_multi_ram_ip_Set_data_ram(&ip0, BASE_RAM);
  cfg_ptr1 = XMulti_core_multi_ram_ip_LookupConfig(XPAR_XMULTI_CORE_MULTI_RAM_IP_1_DEVICE_ID);
  XMulti_core_multi_ram_ip_CfgInitialize(&ip1, cfg_ptr1);
  XMulti_core_multi_ram_ip_Set_ip_num(&ip1, 1);
  XMulti_core_multi_ram_ip_Set_data_ram(&ip1, BASE_RAM);
  XMulti_core_multi_ram_ip_Start(&ip0);
  XMulti_core_multi_ram_ip_Start(&ip1);
  while (!XMulti_core_multi_ram_ip_IsDone(&ip0));
  while (!XMulti_core_multi_ram_ip_IsDone(&ip1));
  printf("ram0 dump\n");
  for (int i=0; i<LOCAL_RAM_SIZE; i++){
    if (ram0[i]!=0)
      printf("ram0[%2d] = %2d\n", 4*i, ram0[i]);
  }
  printf("ram1 dump\n");
  for (int i=0; i<LOCAL_RAM_SIZE; i++){
    if (ram1[i]!=0)
      printf("ram1[%2d] = %2d\n", 4*i, ram1[i]);
  }
  return 0;
}
