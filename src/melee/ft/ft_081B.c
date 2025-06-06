#include <platform.h>
#include <placeholder.h>

#include "ft/ft_081B.h"

#include "inlines.h"

#include "ft/fighter.h"
#include "ft/ft_0819.h"
#include "ft/ftcommon.h"
#include "ft/types.h"
#include "lb/types.h"
#include "mp/mpcoll.h"

#include <common_structs.h>
#include <dolphin/mtx.h>
#include <baselib/gobj.h>
#include <MSL/math.h>

void ft_80081B38(HSD_GObj* arg0)
{
    u8* sp8;
    CollData* temp_r30;
    Fighter* temp_r31;
    FighterBone* temp_r11;
    ftData_x44_t* temp_r29;
    f32 temp_f0;
    f32 temp_f3;

    temp_r31 = arg0->user_data;
    temp_r31->ecb_lock = 0;
    temp_r30 = &temp_r31->coll_data;
    temp_r31->coll_data.cur_topn = temp_r31->cur_pos;
    temp_r31->coll_data.prev_topn = temp_r31->coll_data.cur_topn;
    mpColl_80041EE4(temp_r30);
    temp_r30->x34_flags.b1234 = 1;
    temp_r11 = temp_r31->parts;
    temp_r29 = temp_r31->ft_data->x44;
    mpColl_80042078(
        temp_r30, arg0, temp_r11->joint, temp_r11[temp_r29->unk0].joint,
        temp_r11[temp_r29->unk2].joint, temp_r11[temp_r29->unk4].joint,
        temp_r11[temp_r29->unk6].joint, temp_r11[temp_r29->unk8].joint,
        temp_r11[temp_r29->unkA].joint,
        temp_r29->unkC * temp_r31->x34_scale.y);
    temp_f3 = temp_r31->x34_scale.y;
    mpColl_80042374(temp_r30, temp_r29->unk10 * temp_f3,
                    temp_r29->unk14 * temp_f3, temp_r29->unk18 * temp_f3);
    temp_r30->x50 = temp_r31->co_attrs.weight;
    temp_f0 = 10.0f * temp_r31->x34_scale.y;
    if ((s32) temp_r30->x104 == 1) {
        temp_r30->x128 = temp_f0;
        temp_r30->x12C = temp_f0;
    }
}

/// #ft_8008239C

/// #ft_800824A0

/// #ft_80082578

/// #ft_80082638

/// EnvironmentCollision_AllowGroundToAir(SpecialAttackGround)
GroundOrAir ft_80082708(Fighter_GObj* gobj)
{
    Fighter* fp = gobj->user_data;
    CollData* cd = &fp->coll_data;
    fp->coll_data.prev_topn = fp->coll_data.cur_topn;
    fp->coll_data.cur_topn = fp->cur_pos;
    {
        bool fall_off_ledge = mpColl_8004B108(cd);
        fp->cur_pos = cd->cur_topn;
        return fall_off_ledge ? GA_Air : GA_Ground;
    }
}

/// #ft_800827A0

/// #ft_80082838

/// #ft_80082888

/// #ft_80082978

/// #ft_80082A68

/// #ft_80082B1C

/// #ftCo_AirCatchHit_Coll

/// #ft_80082C74

/// #ft_80082D40

/// #ft_80082E3C

/// #ft_80082F28

/// #ft_80083090

/// #ft_800831CC

/// #ft_80083318

/// #ft_80083464

/// #ft_800835B0

/// #ft_8008370C

/// #ft_80083844

/// #ft_80083910

/// #ft_80083A48

void ft_80083B68(Fighter_GObj* gobj)
{
    u32 unused[4];
    CollData* coll;
    Fighter* fp = GET_FIGHTER(gobj);
    coll = &fp->coll_data;
    coll->prev_topn = coll->cur_topn;
    coll->cur_topn = fp->cur_pos;
    mpColl_800477E0(coll);
    fp->cur_pos = coll->cur_topn;
    ft_80081A00(gobj);
}

/// #ft_80083C00

/// #ft_80083CE4

/// #ft_80083DCC

/// #ft_80083E64

/// #ft_80083F88

/// #ft_8008403C

/// #ft_80084104

/// #ft_800841B8

/// #ft_80084280

/// #ft_800843FC

/// #ft_800844EC

/// #ft_800845B4

/// #ft_800846B0

/// #ft_800847D0

/// #ft_800848DC

/// #ft_800849EC

/// #ft_80084A18

/// #ft_GetGroundFrictionMultiplier

/// #ft_80084A80

/// #ft_80084BFC

/// #ft_80084C38

/// #ft_80084C74

/// #ft_80084CB0

/// #ft_80084CE4

/// #ft_80084DB0

/// #ft_80084E1C

/// #ft_80084EEC

extern f32 ft_804D83B8;

void ft_80084F3C(Fighter_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    u32 unused;
    ftCo_DatAttrs* co = &fp->co_attrs;
    f32 var_f2 = fp->gr_vel;
    f32 var_f1 = co->gr_friction;
    if (var_f2 < ft_804D83B8) {
        var_f2 = -var_f2;
    }
    if (var_f2 > co->walk_max_vel) {
        var_f1 *= p_ftCommonData->x6C;
    }
    ftCommon_8007C930(fp, var_f1);
    ftCommon_8007CB74(gobj);
}

void ft_80084FA8(Fighter_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    ftCo_DatAttrs* co = &fp->co_attrs;
    f32 var_f2 = fp->gr_vel;
    f32 var_f1 = co->gr_friction;
    if (var_f2 < 0.0F) {
        var_f2 = -var_f2;
    }
    if (var_f2 > co->walk_max_vel) {
        var_f1 *= p_ftCommonData->x6C;
    }
    ft_80085030(gobj, var_f1, fp->facing_dir);
}

/// #ft_80085004

void ft_80085030(HSD_GObj* gobj, float gr_friction, float facing_dir)
{
    ftCo_Fighter* fp = gobj->user_data;
    if (fp->x594_b0) {
        fp->xE4_ground_accel_1 =
            fp->x6A4_transNOffset.z * facing_dir - fp->gr_vel;
    } else {
        ftCommon_8007C930(fp, gr_friction);
    }
    ftCommon_8007CB74(gobj);
}

/// #ft_800850E0;

/// #ft_80085088

/// #ft_800850B4

void ft_800850E0(Fighter_GObj* gobj, f32 arg8, f32 arg9)
{
    Fighter* fp = GET_FIGHTER(gobj);
    if (fp->x594_b0) {
        fp->gr_vel = fp->x6A4_transNOffset.z * arg9;
    } else {
        ftCommon_8007C930(fp, arg8);
    }
    ftCommon_8007CB74(gobj);
}

void ft_80085134(Fighter_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    fp->self_vel.x = fp->x6A4_transNOffset.z * fp->facing_dir;
    fp->self_vel.y = fp->x6A4_transNOffset.y;
}

void ft_80085154(Fighter_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    f32 lstick_x = cosf(fp->lstick_angle);
    f32 lstick_y = sinf(fp->lstick_angle);
    f32 temp_f0 = fp->x6A4_transNOffset.y;
    f32 temp_f3 = fp->x6A4_transNOffset.z * fp->facing_dir;
    fp->self_vel.x = (temp_f3 * lstick_x) - (temp_f0 * lstick_y);
    fp->self_vel.y = (temp_f3 * lstick_y) + (temp_f0 * lstick_x);
}

void ft_800851C0(Fighter_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    fp->self_vel.y = fp->x6A4_transNOffset.y;
}

void ft_800851D0(Fighter_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    if (fp->x197C != NULL) {
        fp->self_vel.y =
            fp->x6A4_transNOffset.y * ((f32*) Fighter_804D6520)[5];
    } else {
        fp->self_vel.y = fp->x6A4_transNOffset.y;
    }
}

void ft_80085204(Fighter_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    fp->self_vel.x = fp->x6A4_transNOffset.z * fp->facing_dir;
}
