/// @file
/// @todo Restructure this, possibly items/common/types.h
#ifndef MELEE_IT_ITCOMMONITEMS_H
#define MELEE_IT_ITCOMMONITEMS_H

#include <platform.h>
#include <baselib/forward.h>

#include <common_structs.h>
#include <placeholder.h>
#include <dolphin/mtx/types.h>

typedef struct {
    bool x0;
    bool x4;
} ItCapsuleVars;

typedef struct {
    bool x0; // [true]
    s32 x4;  // [8]
} ItCapsuleAttr;

typedef struct {
    /* ip+DD4 */ float dir;
    /* ip+DD8 */ float x4;
    /* ip+DDC */ float x8;
    /* ip+DE0 */ float xC;
    /* ip+DE4 */ float xvel;
    /* ip+DE8 */ float yvel;
} ItStarVars;

struct itSword_ItemVars {
    /* ip+DD4 */ int x0;
    /* ip+DD8 */ int x4;
    /* ip+DDC */ int x8;
    /* ip+DE0 */ int xC;
    /* ip+DE4 */ float x10;
    /* ip+DE8 */ float x14;
    /* ip+DEC */ float x18;
    /* ip+DF0 */ int x1C;
    /* ip+DF4 */ int x20;
    /* ip+DF8 */ int x24;
    /* ip+DFC */ float x28;
    /* ip+E00 */ float x2C;
    /* ip+E04 */ float x30;
    /* ip+E08 */ int x34;
    /* ip+E0C */ int x38;
    /* ip+E10 */ int x3C;
    /* ip+E14 */ float x40;
    /* ip+E18 */ float x44;
    /* ip+E1C */ float x48;
    /* ip+E20 */ float x4C;
    /* ip+E24 */ float x50;
    /* ip+E28 */ int x54;
    /* ip+E2C */ float x58;
};

typedef struct itBatAttributes {
    int x0;
    int x4;
    int x8;
    f32 xC_vel;
} itBatAttributes;

typedef struct BobOmbVars {
    s32 xDD4;
    s32 xDD8;
    s32 xDDC;
    s32 xDE0;
    s32 xDE4;
    s32 xDE8;
    float xDEC;
} BobOmbVars;

typedef struct HeartContainerVars {
    s32 xDD4_heal;
    union {
        struct {
            u8 b0 : 1;
            u8 b1 : 1;
            u8 b2 : 1;
            u8 b3 : 1;
            u8 b4 : 1;
            u8 b5 : 1;
            u8 b6 : 1;
            u8 b7 : 1;
        } bits;
        u32 flags;
    } xDD8;
    s32 xDDC;
    u8 xDE0_filler[8];
    f32 xDE8_float;
    f32 xDEC;
} HeartContainerVars;

typedef struct HeartContainerAttr {
    s32 x0_heal; // [100]
    union {
        struct {
            u8 b0 : 1;
            u8 b1 : 1;
            u8 b2 : 1;
            u8 b3 : 1;
            u8 b4 : 1;
            u8 b5 : 1;
            u8 b6 : 1;
            u8 b7 : 1;
        } bits;
        u32 flags;
    } x4;    // [999]
    s32 x8;  // [1200]
    s32 xC;  // [1140]
    s32 x10; // [120]
    f32 x14; // y velocity? [1.5]
    f32 x18; // y rotation? [0.0349066]
} HeartContainerAttr;

typedef struct MaximTomatoVars {
    s32 heal_amount;
    union {
        struct {
            u8 b0 : 1;
            u8 b1 : 1;
            u8 b2 : 1;
            u8 b3 : 1;
            u8 b4 : 1;
            u8 b5 : 1;
            u8 b6 : 1;
            u8 b7 : 1;
        } bits;
        u32 flags;
    } x4;
    s32 x8;
} MaximTomatoVars;

typedef struct {
    int x0;
    int x4;
    int x8;
    int xC;
    int x10;
    f32 x14;
} MaximTomatoSpecialAttr;

typedef struct FoodVars {
    s32 xDD4_unk;
    s32 xDD8_heal;
} FoodVars;

typedef struct ItLGunVars {
    /*  +0 ip+DD4 */ int timer;
} ItLGunVars;

typedef struct ItLGunAttr {
    int max_ammo; // [16]
    Vec3 pos;     // [0, 2.128, 6.668]
} ItLGunAttr;

typedef struct ItLGunRayVars {
    /* +0 ip+DD4 */ float scale;
    /* +4 ip+DD8 */ float angle;
    /* +8 ip+DDC */ float speed;
    /* +C ip+DE0 */ Vec3 pos;
} ItLGunRayVars;

typedef struct ItLGunRayAttr {
    /* +0 */ float speed;     // [5]
    /* +4 */ float lifetime;  // [80]
    /* +8 */ float max_scale; // [3]
} ItLGunRayAttr;

typedef struct ItLGunBeamVars {
    /*  +0 ip+DD4 */ Vec3 position0;
    /*  +C ip+DE0 */ Vec3 position1;
    /* +18 ip+DEC */ Vec3 velocity;
    /* +24 ip+DF8 */ f32 angle0;
    /* +28 ip+DFC */ f32 angle1;
    /* +2C ip+E00 */ f32 lifetime;
    /* +30 ip+E04 */ int xE04;
} ItLGunBeamVars;

typedef struct ItLGunBeamAttr {
    float lifetime; // lifetime - [18]
    float x4;       // related to position calcs for var angle1 - [1]
    float x8;       // related to position calcs for var angle1 - [2]
    float xC;       // related to position calcs for var angle0 - [1.22173]
    float x10;      // related to position calcs for var angle0 - [2/3 * pi]
} ItLGunBeamAttr;

/// Eggs spawned on Yoshi stages / by Chansey
typedef struct EggVars {
    /* +0 */ bool x0;
    /* +4 */ int rand_max;
    /* +8 */ u8 _8[0x60 - 0x8];
    /* +60 */ int heal_amount;
} EggVars;

typedef struct itHeiHoVars {
    f32 x0;
    f32 x4;
    UnkFlagStruct x8;
    f32 xC;
    f32 x10;
    f32 x14;
    f32 x18;
    f32 x1C;
    s8 x20;
    s8 x21;
    s8 x22;
    s8 x23;
    s32 x24;
    f32 x28;
    s32 x2C;
    f32 x30;
    f32 x34;
    f32 x38;
    Vec3 x3C;
    f32 x48;
    f32 x4C;
    f32 x50;
    HSD_GObj* x54;
    f32 x58;
    f32 x5C;
    f32 x6C;
    f32 x60;
    f32 x64;
    f32 x68;
    f32 x7C;
    f32 x70;
    f32 x74;
    f32 x78;
} itHeiHoVars;

typedef struct itFoodsVars {
    s32 x0;
    s32 x4;
} itFoodsVars;

typedef struct itFoodsAttributes {
    s32 x0;
    HSD_Joint* x4;
    s32 x8;
    s32 xC;
} itFoodsAttributes;

typedef struct WhispyAppleVars {
    s32 xDD4_heal;
} WhispyAppleVars;

/// @remarks Might be shared?
typedef struct itUnkAttributes {
    float x0_float;
    float x4_float;
    float x8;
    float xC;
    float x10;
} itUnkAttributes;

typedef struct {
    HSD_JObj* x0;
} ItMatoVars;

typedef struct {
    int x0;
    int x4;

} itTomatoVars;

typedef struct {
    u8 padding[0xE10 - 0xDD4];
    int xE10;
} itShellVars;

typedef struct itPokemonAttributes {
    f32 x0;
    s32 timer;
    s32 max;
    s32 xC;
    s32 x10;
    s32 x14;
    s32 x18;
} itPokemonAttributes;

typedef struct {
    u8 padding[0xE34 - 0xDD4];
    s32 timer;
    int x64;
} ItPokemonVars;

typedef struct {
    int x0;
    HSD_JObj* jobj;
} itTargetVars;

typedef struct MewVars {
    f32 x0;
    f32 x4;
    f32 x8;
    f32 xC;
} MewVars;

typedef struct itCoinAttributes {
    f32 x0;
    f32 x4;
    f32 x8;
    f32 xC;
    f32 x10;
    f32 x14;
    f32 x18;
    f32 x1C;
    f32 x20;
    f32 x24;
    f32 x28;
    f32 x2C;
    f32 x30;
    f32 x34;
    f32 x38;
    f32 x3C;
    f32 x40;
    f32 x44;
    f32 x48;
} itCoinAttributes;

typedef struct CoinVars {
    int x0;
    int x4;
    f32 x8;
    f32 xC;
    int x10;
    int x14;
} CoinVars;

typedef struct FFlowerVars {
    int x0;
    uint x4;
} FFlowerVars;

typedef struct FFlowerAttr {
    int x0;    // [120]
    int x4;    // [1200]
    int x8;    // [1140]
    int xC;    // [120]
    float x10; // [1.5]
    float x14;
} FFlowerAttr;

typedef struct FFlowerFlameVars {
    /* +0 */ Vec3 pos;
    /* +C */ f32 unk;
} FFlowerFlameVars;

typedef struct HassamVars {
    f32 x0;
    f32 x4;
    f32 x8;
    f32 xC;
    f32 x10;
    f32 x14;
    s32 x18;
    s32 x1C;
    s32 x20;
    u8 padding[0x5C - 0x20];
    Vec3 x5C;
    f32 x68;
} HassamVars;

typedef struct KinokoVars {
    f32 x0;
    f32 x4;
    f32 x8;
    f32 xC;
} KinokoVars;

#endif
