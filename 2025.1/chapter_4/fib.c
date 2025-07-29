#include <stdio.h>
unsigned int fibonacci(unsigned int n){
  unsigned int i, un, unm1=1, unm2=0;
  if (n==0) return unm2;
  if (n==1) return unm1;
  for (i=2; i<=n; i++){
    un   = unm1+unm2;
    unm2 = unm1;
    unm1 = un;
  }
  return(un);
}
void main(){
  printf("fibonacci(0)=%d\n",fibonacci(0));
  printf("fibonacci(1)=%d\n",fibonacci(1));
  printf("fibonacci(10)=%d\n",fibonacci(10));
  printf("fibonacci(11)=%d\n",fibonacci(11));
  printf("fibonacci(12)=%d\n",fibonacci(12));
}
