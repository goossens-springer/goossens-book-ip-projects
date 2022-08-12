#include <stdio.h>
void my_adder_ip(unsigned int  a,
                 unsigned int  b,
                 unsigned int *c);
int main(){
  unsigned int a, b, c;
  a = 10000;
  b = 20000;
  my_adder_ip(a, b, &c);
  printf("%d + %d is %d\n", a, b, c);
  if (c != (a+b)) return 1;
  else return 0;
}
