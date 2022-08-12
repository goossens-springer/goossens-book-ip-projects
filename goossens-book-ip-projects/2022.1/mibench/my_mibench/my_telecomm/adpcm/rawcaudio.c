#include <stdio.h>
#include "adpcm.h"
void main() __attribute__((section(".text.main")));
unsigned char input[]={
#include "small_22000_pcm.hex"
};
unsigned char output[5500];
struct  adpcm_state state;
#define NSAMPLES 1000
char	abuf[NSAMPLES/2];
short	sbuf[NSAMPLES];
int     length;
void copy_output(unsigned char *dest, unsigned char *src, int n){
  int i = 0;
  while (i<n){
    *dest++ = *src++;
    i++;
  }
}
int copyn_input(unsigned char *dest, unsigned char *src, int n){
  int i = 0;
  while (src-input<22000 && i<n){
    *dest++ = *src++;
    i++;
  }
  return i;
}
void main(){
  unsigned char *in, *out;
  int            n;
  in  = input;
  out = output;
  while(1){
    n = copyn_input((unsigned char*)sbuf, in, NSAMPLES*2);
    in += n;
    if (n == 0) break;
    adpcm_coder(sbuf, abuf, n/2, &state);
    copy_output(out, abuf, n/4);
    out += n/4;
  }
  length = out-output;
  for (n=0; n<length; n++)
    printf("%c", output[n]);
  printf("\nFinal valprev=%d, index=%d\n",
          state.valprev, state.index);
}
