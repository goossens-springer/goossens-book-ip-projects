#ifndef _MM_H
#define _MM_H
#include <stdint.h>
typedef double t;
#define alloca_aligned(s, a) ((void*)(((unsigned int)alloca((s)+(a)-1)+(a)-1)&~((a)-1)))
void mm(int m, int n, int p,
        t* a, int lda, t* b, int ldb, t* c, int ldc);
#endif
