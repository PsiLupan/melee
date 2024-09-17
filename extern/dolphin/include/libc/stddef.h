#ifndef _STDDEF_H_
#define _STDDEF_H_

#define offsetof(type, member) ((size_t) & (((type*) 0)->member))

typedef unsigned int size_t;
typedef signed int ssize_t;

typedef unsigned int usize_t;

typedef signed int intptr_t;
typedef unsigned int uintptr_t;

#ifndef NULL
#define NULL 0L
#endif

#endif
