#ifndef MELEE_CM_TYPES_H
#define MELEE_CM_TYPES_H

#include "cm/forward.h" // IWYU pragma: export
#include <baselib/forward.h>

#include <placeholder.h>
#include <dolphin/mtx.h>

struct CameraBox {
    u32 data_filler[2];
    bool x8;
    /* +C:0 */ u8 xC_b0 : 1;
    u8 xD_fill[0x10 - 0xD];
    Vec x10; // might be Vec2?
    Vec x1C;
    float x28;
    Vec2 x2C;
    Vec x34;
    Vec2 x40;
    Vec x48;
};

struct CameraMovement {
    Vec interest;
    Vec target_interest;
    Vec position;
    Vec target_position;
    float fov;
    float target_fov;
};

struct CameraBounds {
    float x_min;
    float y_min;
    float x_max;
    float y_max;
    float subjects;
    float z_pos;
};

struct Camera {
    HSD_GObj* gobj;
    uint mode;
    unsigned char background_r;
    unsigned char background_g;
    unsigned char background_b;
    u8 unk_0xb;
    float nearz;
    float farz;
    CameraMovement movement;
    CameraMovement movement_lerp;
    Vec2 translation;
    u8 unk_cam[0x2B0 - 0x8C];
    u8 unk[0x2BC - 0x2B0];
    float unk_2bc;
    float unk_2c0;
    u8 unk2[0x39C - 0x2c0];
    uint last_mode;
};

#endif
