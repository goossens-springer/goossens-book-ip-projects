#include <stdio.h>
void main(){
  int i, un, unm1=1, unm2=0;
  for (i=2; i<=10; i++){
    un   = unm1+unm2;
    unm2 = unm1;
    unm1 = un;
  }
  printf("fibonacci(10)=%d\n",un);
}
