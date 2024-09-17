#ifndef _DOLPHIN_TYPES_H_
#define _DOLPHIN_TYPES_H_

typedef signed char s8;
typedef unsigned char u8;
typedef signed short int s16;
typedef unsigned short int u16;
typedef signed long s32;
typedef unsigned long u32;
typedef signed long long int s64;
typedef unsigned long long int u64;
typedef signed int intptr_t;
typedef unsigned int uintptr_t;

typedef float f32;
typedef double f64;

typedef char* Ptr;

typedef int BOOL;

#define FALSE 0
#define TRUE 1

#ifdef PERMUTER
#define AT_ADDRESS(x) = FIXEDADDR(x)
#elif defined(__MWERKS__) && !defined(M2CTX)
#define AT_ADDRESS(x) : (x)
#else
#define AT_ADDRESS(x)
#endif

#define ATTRIBUTE_ALIGN(num) __attribute__((aligned(num)))

#define INT_MAX 2147483647

#ifndef NULL
#define NULL ((void*) 0)
#endif

#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))

#include "cmath.h"

#include "libc/ctype.h"
#include "libc/stdarg.h"
#include "libc/stdio.h"
#include "libc/string.h"

#endif
