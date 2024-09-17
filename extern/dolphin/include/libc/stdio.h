#ifndef _STDIO_H_
#define _STDIO_H_

#include <stdarg.h>

typedef struct {
    int unk0;
    unsigned short unk4b0 : 7;
    unsigned short unk4b7 : 3;
    unsigned short unk4b10 : 2;
    unsigned short unk4b12 : 1;
    unsigned char filler6[0x14 - 0x6];
    int unk14;
    int unk18;
    int unk1C;
    int unk20;
    int unk24;
    int unk28;
    unsigned char filler2C[0x30 - 0x2C];
    int unk30;
    unsigned char filler34[0x3C - 0x34];
    int (*unk3C)();
    unsigned char filler40[4];
    int unk44;
} FILE;

typedef struct {
    unsigned int open_mode : 2;
    unsigned int io_mode : 3;
    unsigned int buffer_mode : 2;
    unsigned int file_kind : 3;
    unsigned int file_orientation : 2;
    unsigned int binary_io : 1;
} __file_modes;

int puts(const char* s);
int printf(const char*, ...);
int sprintf(char* s, const char* format, ...);
int vprintf(const char* format, va_list arg);
int vsprintf(char* s, const char* format, va_list arg);

#endif
