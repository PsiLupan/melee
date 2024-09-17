#ifndef ___mem_
#define ___mem_

#include <platform.h>

SECTION_INIT void* memset(void* dst, int val, size_t n);
SECTION_INIT void __fill_mem(void* dst, int val, size_t n);
SECTION_INIT void* memcpy(void* dst, const void* src, size_t n);

#endif
