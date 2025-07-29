#include <stdlib.h>
#include <math.h>
#define ARRAYSIZE 1200
struct my3DVertexStruct {
  int    x, y, z;
  double distance;
};
struct my3DVertexStruct array[ARRAYSIZE]={
#include "input_1200.dat"
};
void main() __attribute__((section(".text.main")));
int compare(const void *elem1, const void *elem2)
{
  /* D = [(x1 - x2)^2 + (y1 - y2)^2 + (z1 - z2)^2]^(1/2) */
  /* sort based on distances from the origin... */
  double distance1, distance2;
  distance1 = (*((struct my3DVertexStruct *)elem1)).distance;
  distance2 = (*((struct my3DVertexStruct *)elem2)).distance;
  return (distance1 > distance2) ? 1 : ((distance1 == distance2) ? 0 : -1);
}
void main(){
  int i;
  for (i=0; i<ARRAYSIZE; i++)
    array[i].distance = sqrt(pow(array[i].x, 2) +
                             pow(array[i].y, 2) +
                             pow(array[i].z, 2));
  qsort(array,ARRAYSIZE,sizeof(struct my3DVertexStruct),compare);
}
