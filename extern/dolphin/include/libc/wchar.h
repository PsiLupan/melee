#ifndef _WCHAR_H_
#define _WCHAR_H_

#include <stdio.h>

typedef unsigned short wchar_t;

int fwide(struct FILE* stream, int mode);

#endif
