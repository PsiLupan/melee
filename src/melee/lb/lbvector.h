#ifndef GALE01_00D2EC
#define GALE01_00D2EC

#include <baselib/forward.h>

#include <dolphin/mtx.h>
#include <MetroTRK/intrinsics.h>

static float lbVector_Len(Vec* vec);
static float lbVector_Len_xy(Vec* vec);

float lbVector_Normalize(Vec* vec);
float lbVector_NormalizeXY(Vec* a);
Vec* lbVector_Add(Vec* a, Vec* b);
Vec* lbVector_Add_xy(Vec* a, Vec* b);
Vec* lbVector_Sub(Vec* a, Vec* b);
Vec* lbVector_Diff(Vec* a, Vec* b, Vec* result);
Vec* lbVector_CrossprodNormalized(Vec* a, Vec* b, Vec* result);

float lbVector_Angle(Vec* a, Vec* b);
float lbVector_AngleXY(Vec* a, Vec* b);

static float sin(float angle);
static float cos(float angle);

void lbVector_RotateAboutUnitAxis(Vec* v, Vec* axis, float angle);
void lbVector_Rotate(Vec* v, int axis, float angle);

float dummy(void);
void lbVector_Mirror(Vec* a, Vec* b);
float lbVector_CosAngle(Vec* a, Vec* b);
Vec* lbVector_Lerp(Vec* a, Vec* b, Vec* result, float f);
Vec* lbVector_8000DE38(Mtx m, Vec* v, float c);

Vec* lbVector_EulerAnglesFromONB(Vec* result_angles, Vec* a, Vec* b, Vec* c);
Vec* lbVector_EulerAnglesFromPartialONB(Vec* result_angles, Vec* a, Vec* c);
Vec* lbVector_ApplyEulerRotation(Vec* v, Vec* angles);
float lbVector_sqrtf_accurate(float x);

Vec* lbVector_WorldToScreen(HSD_CObj* cobj, const Vec* pos3d,
                            Vec* screenCoords, int d);
void lbVector_CreateEulerMatrix(Mtx m, Vec* angles);
float lbVector_8000E838(Vec* a, Vec* b, Vec* c, Vec* d);

#endif
