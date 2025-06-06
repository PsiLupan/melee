#include <platform.h>

#include "gr/granime.h"
#include "gr/grzakogenerator.h"
#include "gr/inlines.h"
#include "lb/lb_00B0.h"

#include <dolphin/mtx.h>
#include <baselib/gobj.h>
#include <baselib/jobj.h>

void grFourside_801F2D0C(void) {}

/// #grFourside_801F2D10

void grFourside_801F2DA0(void) {}

void grFourside_801F2DA4(void)
{
    grZakoGenerator_801CAE04(0);
}

bool grFourside_801F2DC8(void)
{
    return false;
}

/// #grFourside_801F2DD0

void grFourside_801F2EBC(HSD_GObj* gobj)
{
    Ground* gp = GET_GROUND(gobj);
    grAnime_801C8138(gobj, gp->map_id, 0);
}

bool grFourside_801F2EE8(void)
{
    return false;
}

void grFourside_801F2EF0(void) {}

void grFourside_801F2EF4(void) {}

void grFourside_801F2EF8(HSD_GObj* gobj)
{
    Ground* gp = GET_GROUND(gobj);
    grAnime_801C8138(gobj, gp->map_id, 0);
}

bool grFourside_801F2F24(void)
{
    return false;
}

void grFourside_801F2F2C(void) {}

void grFourside_801F2F30(void) {}

/// #grFourside_801F2F34

bool grFourside_801F3070(void)
{
    return false;
}

/// #grFourside_801F3078

void grFourside_801F309C(void) {}

/// #fn_801F30A0

/// #grFourside_801F30F0

bool grFourside_801F3144(void)
{
    return false;
}

void grFourside_801F314C(void) {}

void grFourside_801F3150(void) {}

/// #grFourside_801F3154

bool grFourside_801F326C(void)
{
    return false;
}

/// #grFourside_801F3274

void grFourside_801F37F8(void) {}

/// #grFourside_801F37FC

bool grFourside_801F388C(void)
{
    return false;
}

/// #grFourside_801F3894

void grFourside_801F3B6C(void) {}

/// #grFourside_801F3B70

/// #grFourside_801F3C40

bool grFourside_801F3CC0(void)
{
    return false;
}

/// #grFourside_801F3CC8

void grFourside_801F3F0C(void) {}

/// #grFourside_801F3F10

/// #fn_801F3F74

bool grFourside_801F41E0(void)
{
    return false;
}

bool grFourside_801F41E8(Vec3* a, int arg, HSD_JObj* joint)
{
    u8 _[4];
    Vec3 b;

    lb_8000B1CC(joint, NULL, &b);

    if (a->y > b.y) {
        return true;
    } else {
        return false;
    }
}
