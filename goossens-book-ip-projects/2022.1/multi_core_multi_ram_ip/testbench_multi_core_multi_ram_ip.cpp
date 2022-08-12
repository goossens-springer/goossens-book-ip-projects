#include "multi_core_multi_ram_ip.h"
int  ram[RAM_SIZE];
int *ram0 =  ram;
int *ram1 = &ram[LOCAL_RAM_SIZE];
void multi_core_multi_ram_ip(
  int ip_num,
  int local_ram[LOCAL_RAM_SIZE],
  int data_ram [RAM_SIZE]
);
int main(){
  multi_core_multi_ram_ip(0, ram, ram);
  multi_core_multi_ram_ip(1, &ram[LOCAL_RAM_SIZE], ram);
  printf("ram0 dump\n");
  for (int i=0; i<LOCAL_RAM_SIZE; i++){
    if (ram0[i]!=0)
      printf("ram0[%4d] = %2d\n", 4*i, ram0[i]);
  }
  printf("ram1 dump\n");
  for (int i=0; i<LOCAL_RAM_SIZE; i++){
    if (ram1[i]!=0)
      printf("ram1[%4d] = %2d\n", 4*i, ram1[i]);
  }
  return 0;
}
