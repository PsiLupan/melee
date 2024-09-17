#ifndef MELEE_IT_ITPKTHUNDER_H
#define MELEE_IT_ITPKTHUNDER_H

#include <platform.h>
#include <baselib/forward.h>

#include <dolphin/mtx.h>

typedef struct itPKThunderAttributes {
    float x0_PKTHUNDER_LIFETIME;
    float x4_PKTHUNDER_SPEED;
    float x8_PKTHUNDER_SPAWN_ANGLE;
    float xC_PKTHUNDER_STICK_THRESHOLD;
    float x10_PKTHUNDER_TURN_RADIUS;
} itPKThunderAttributes;

typedef struct PKThunderVars {
    HSD_GObj* xDD4[6];
    Vec xDEC;
    Vec xDFC;
    Vec xE08;
    Vec xE14;
    Vec xE20;
    Vec xE2C;
    Vec xE38;
    Vec xE44;
    Vec xE50;
    Vec xE5C;
    Vec xE68;
    Vec xE74;
    Vec xE80;
    Vec xE8C;
    Vec xE98;
    Vec xEA0;
    float xEAC; // PK Thunder release angles?
    float xEB0;
    float xEB4;
    float xEB8;
    float xEBC;
    float xEC0;
    float xEC4;
    float xEC8;
    float xECC;
    float xED0;
    float xED4;
    float xED8;
    float xEDC;
    float xEE0;
    float xEE4;
    float xEE8;
    s32 xEEC;
    s32 xEF0;
    HSD_GObj* xEF4;
    HSD_GObj* xEF8;
    HSD_GObj* xEFC;
    HSD_GObj* xF00;
    HSD_GObj* xF04;
    HSD_GObj* xF08;
} PKThunderVars;

#endif
