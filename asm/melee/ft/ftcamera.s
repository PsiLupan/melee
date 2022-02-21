.include "macros.inc"

.section .text  # 0x80076018 - 0x800DF934

.global func_80076018
func_80076018:
/* 80076018 00072BF8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8007601C 00072BFC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80076020 00072C00  D0 04 00 00 */	stfs f0, 0(r4)
/* 80076024 00072C04  C0 03 00 04 */	lfs f0, 4(r3)
/* 80076028 00072C08  EC 00 00 72 */	fmuls f0, f0, f1
/* 8007602C 00072C0C  D0 04 00 04 */	stfs f0, 4(r4)
/* 80076030 00072C10  C0 03 00 08 */	lfs f0, 8(r3)
/* 80076034 00072C14  EC 00 00 72 */	fmuls f0, f0, f1
/* 80076038 00072C18  D0 04 00 08 */	stfs f0, 8(r4)
/* 8007603C 00072C1C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80076040 00072C20  EC 00 00 72 */	fmuls f0, f0, f1
/* 80076044 00072C24  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 80076048 00072C28  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8007604C 00072C2C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80076050 00072C30  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 80076054 00072C34  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80076058 00072C38  EC 00 00 72 */	fmuls f0, f0, f1
/* 8007605C 00072C3C  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 80076060 00072C40  4E 80 00 20 */	blr 

.global func_80076064
func_80076064:
/* 80076064 00072C44  7C 08 02 A6 */	mflr r0
/* 80076068 00072C48  90 01 00 04 */	stw r0, 4(r1)
/* 8007606C 00072C4C  38 00 00 00 */	li r0, 0
/* 80076070 00072C50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80076074 00072C54  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80076078 00072C58  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8007607C 00072C5C  7C 7E 1B 78 */	mr r30, r3
/* 80076080 00072C60  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 80076084 00072C64  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80076088 00072C68  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 8007608C 00072C6C  83 FE 08 90 */	lwz r31, 0x890(r30)
/* 80076090 00072C70  C0 03 00 00 */	lfs f0, 0(r3)
/* 80076094 00072C74  EC 00 00 72 */	fmuls f0, f0, f1
/* 80076098 00072C78  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8007609C 00072C7C  C0 03 00 04 */	lfs f0, 4(r3)
/* 800760A0 00072C80  EC 00 00 72 */	fmuls f0, f0, f1
/* 800760A4 00072C84  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800760A8 00072C88  C0 03 00 08 */	lfs f0, 8(r3)
/* 800760AC 00072C8C  EC 00 00 72 */	fmuls f0, f0, f1
/* 800760B0 00072C90  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800760B4 00072C94  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800760B8 00072C98  EC 00 00 72 */	fmuls f0, f0, f1
/* 800760BC 00072C9C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800760C0 00072CA0  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800760C4 00072CA4  EC 00 00 72 */	fmuls f0, f0, f1
/* 800760C8 00072CA8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800760CC 00072CAC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 800760D0 00072CB0  EC 00 00 72 */	fmuls f0, f0, f1
/* 800760D4 00072CB4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800760D8 00072CB8  90 1F 00 08 */	stw r0, 8(r31)
/* 800760DC 00072CBC  C0 22 88 F0 */	lfs f1, lbl_804D82D0@sda21(r2)
/* 800760E0 00072CC0  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 800760E4 00072CC4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800760E8 00072CC8  40 82 00 28 */	bne lbl_80076110
/* 800760EC 00072CCC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800760F0 00072CD0  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 800760F4 00072CD4  48 1A EA 15 */	bl Stage_GetCamFixedZoom
/* 800760F8 00072CD8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800760FC 00072CDC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80076100 00072CE0  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 80076104 00072CE4  C0 02 88 F0 */	lfs f0, lbl_804D82D0@sda21(r2)
/* 80076108 00072CE8  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8007610C 00072CEC  48 00 00 2C */	b lbl_80076138
lbl_80076110:
/* 80076110 00072CF0  48 1A E9 F9 */	bl Stage_GetCamFixedZoom
/* 80076114 00072CF4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80076118 00072CF8  FC 00 00 50 */	fneg f0, f0
/* 8007611C 00072CFC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80076120 00072D00  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 80076124 00072D04  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80076128 00072D08  FC 00 00 50 */	fneg f0, f0
/* 8007612C 00072D0C  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 80076130 00072D10  C0 02 88 F4 */	lfs f0, lbl_804D82D4@sda21(r2)
/* 80076134 00072D14  D0 1F 00 28 */	stfs f0, 0x28(r31)
lbl_80076138:
/* 80076138 00072D18  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8007613C 00072D1C  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80076140 00072D20  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80076144 00072D24  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 80076148 00072D28  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8007614C 00072D2C  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 80076150 00072D30  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80076154 00072D34  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 80076158 00072D38  90 7F 00 2C */	stw r3, 0x2c(r31)
/* 8007615C 00072D3C  90 1F 00 30 */	stw r0, 0x30(r31)
/* 80076160 00072D40  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 80076164 00072D44  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 80076168 00072D48  90 7F 00 34 */	stw r3, 0x34(r31)
/* 8007616C 00072D4C  90 1F 00 38 */	stw r0, 0x38(r31)
/* 80076170 00072D50  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 80076174 00072D54  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80076178 00072D58  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 8007617C 00072D5C  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80076180 00072D60  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 80076184 00072D64  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80076188 00072D68  EC 01 00 2A */	fadds f0, f1, f0
/* 8007618C 00072D6C  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80076190 00072D70  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80076194 00072D74  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80076198 00072D78  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8007619C 00072D7C  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 800761A0 00072D80  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 800761A4 00072D84  90 1F 00 20 */	stw r0, 0x20(r31)
/* 800761A8 00072D88  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 800761AC 00072D8C  90 1F 00 24 */	stw r0, 0x24(r31)
/* 800761B0 00072D90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800761B4 00072D94  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800761B8 00072D98  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800761BC 00072D9C  38 21 00 30 */	addi r1, r1, 0x30
/* 800761C0 00072DA0  7C 08 03 A6 */	mtlr r0
/* 800761C4 00072DA4  4E 80 00 20 */	blr 

.global func_800761C8
func_800761C8:
/* 800761C8 00072DA8  7C 08 02 A6 */	mflr r0
/* 800761CC 00072DAC  90 01 00 04 */	stw r0, 4(r1)
/* 800761D0 00072DB0  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 800761D4 00072DB4  93 E1 00 34 */	stw r31, 0x34(r1)
/* 800761D8 00072DB8  93 C1 00 30 */	stw r30, 0x30(r1)
/* 800761DC 00072DBC  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 800761E0 00072DC0  7C 7D 1B 78 */	mr r29, r3
/* 800761E4 00072DC4  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 800761E8 00072DC8  C0 22 88 F0 */	lfs f1, lbl_804D82D0@sda21(r2)
/* 800761EC 00072DCC  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 800761F0 00072DD0  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 800761F4 00072DD4  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 800761F8 00072DD8  83 DF 08 90 */	lwz r30, 0x890(r31)
/* 800761FC 00072DDC  C0 03 00 00 */	lfs f0, 0(r3)
/* 80076200 00072DE0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80076204 00072DE4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80076208 00072DE8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8007620C 00072DEC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80076210 00072DF0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80076214 00072DF4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80076218 00072DF8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8007621C 00072DFC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80076220 00072E00  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80076224 00072E04  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80076228 00072E08  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8007622C 00072E0C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80076230 00072E10  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80076234 00072E14  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80076238 00072E18  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8007623C 00072E1C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80076240 00072E20  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80076244 00072E24  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80076248 00072E28  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8007624C 00072E2C  40 82 00 28 */	bne lbl_80076274
/* 80076250 00072E30  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80076254 00072E34  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 80076258 00072E38  48 1A E8 B1 */	bl Stage_GetCamFixedZoom
/* 8007625C 00072E3C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80076260 00072E40  EC 00 00 72 */	fmuls f0, f0, f1
/* 80076264 00072E44  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 80076268 00072E48  C0 02 88 F0 */	lfs f0, lbl_804D82D0@sda21(r2)
/* 8007626C 00072E4C  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 80076270 00072E50  48 00 00 2C */	b lbl_8007629C
lbl_80076274:
/* 80076274 00072E54  48 1A E8 95 */	bl Stage_GetCamFixedZoom
/* 80076278 00072E58  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8007627C 00072E5C  FC 00 00 50 */	fneg f0, f0
/* 80076280 00072E60  EC 00 00 72 */	fmuls f0, f0, f1
/* 80076284 00072E64  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 80076288 00072E68  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8007628C 00072E6C  FC 00 00 50 */	fneg f0, f0
/* 80076290 00072E70  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 80076294 00072E74  C0 02 88 F4 */	lfs f0, lbl_804D82D4@sda21(r2)
/* 80076298 00072E78  D0 1E 00 28 */	stfs f0, 0x28(r30)
lbl_8007629C:
/* 8007629C 00072E7C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 800762A0 00072E80  38 A0 00 00 */	li r5, 0
/* 800762A4 00072E84  38 7D 00 00 */	addi r3, r29, 0
/* 800762A8 00072E88  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 800762AC 00072E8C  38 9E 00 1C */	addi r4, r30, 0x1c
/* 800762B0 00072E90  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 800762B4 00072E94  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800762B8 00072E98  EC 01 00 2A */	fadds f0, f1, f0
/* 800762BC 00072E9C  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 800762C0 00072EA0  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 800762C4 00072EA4  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 800762C8 00072EA8  88 1E 00 0C */	lbz r0, 0xc(r30)
/* 800762CC 00072EAC  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 800762D0 00072EB0  98 1E 00 0C */	stb r0, 0xc(r30)
/* 800762D4 00072EB4  48 01 04 09 */	bl func_800866DC
/* 800762D8 00072EB8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 800762DC 00072EBC  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 800762E0 00072EC0  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 800762E4 00072EC4  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 800762E8 00072EC8  38 21 00 38 */	addi r1, r1, 0x38
/* 800762EC 00072ECC  7C 08 03 A6 */	mtlr r0
/* 800762F0 00072ED0  4E 80 00 20 */	blr 

.global func_800762F4
func_800762F4:
/* 800762F4 00072ED4  7C 08 02 A6 */	mflr r0
/* 800762F8 00072ED8  90 01 00 04 */	stw r0, 4(r1)
/* 800762FC 00072EDC  94 21 FF F8 */	stwu r1, -8(r1)
/* 80076300 00072EE0  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 80076304 00072EE4  80 84 08 90 */	lwz r4, 0x890(r4)
/* 80076308 00072EE8  38 84 00 1C */	addi r4, r4, 0x1c
/* 8007630C 00072EEC  48 01 03 D1 */	bl func_800866DC
/* 80076310 00072EF0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80076314 00072EF4  38 21 00 08 */	addi r1, r1, 8
/* 80076318 00072EF8  7C 08 03 A6 */	mtlr r0
/* 8007631C 00072EFC  4E 80 00 20 */	blr 

.global func_80076320
func_80076320:
/* 80076320 00072F00  7C 08 02 A6 */	mflr r0
/* 80076324 00072F04  90 01 00 04 */	stw r0, 4(r1)
/* 80076328 00072F08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8007632C 00072F0C  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 80076330 00072F10  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80076334 00072F14  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 80076338 00072F18  83 E4 08 90 */	lwz r31, 0x890(r4)
/* 8007633C 00072F1C  4B FF FE 8D */	bl func_800761C8
/* 80076340 00072F20  38 61 00 10 */	addi r3, r1, 0x10
/* 80076344 00072F24  48 1A E8 B5 */	bl Stage_UnkSetVec3TCam_Offset
/* 80076348 00072F28  48 1A E8 21 */	bl Stage_GetBlastZoneTopOffset
/* 8007634C 00072F2C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80076350 00072F30  C0 02 88 F8 */	lfs f0, lbl_804D82D8@sda21(r2)
/* 80076354 00072F34  EC 21 10 28 */	fsubs f1, f1, f2
/* 80076358 00072F38  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8007635C 00072F3C  40 82 00 1C */	bne lbl_80076378
/* 80076360 00072F40  3C 60 80 3C */	lis r3, lbl_803C0C08@ha
/* 80076364 00072F44  3C 80 80 3C */	lis r4, lbl_803C0C14@ha
/* 80076368 00072F48  38 A4 0C 14 */	addi r5, r4, lbl_803C0C14@l
/* 8007636C 00072F4C  38 63 0C 08 */	addi r3, r3, lbl_803C0C08@l
/* 80076370 00072F50  38 80 00 89 */	li r4, 0x89
/* 80076374 00072F54  48 31 1E AD */	bl __assert
lbl_80076378:
/* 80076378 00072F58  48 1A E7 F1 */	bl Stage_GetBlastZoneTopOffset
/* 8007637C 00072F5C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80076380 00072F60  EF E1 00 28 */	fsubs f31, f1, f0
/* 80076384 00072F64  48 1A E6 FD */	bl Stage_GetCamBoundsTopOffset
/* 80076388 00072F68  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8007638C 00072F6C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80076390 00072F70  EC 21 10 28 */	fsubs f1, f1, f2
/* 80076394 00072F74  EC 00 00 72 */	fmuls f0, f0, f1
/* 80076398 00072F78  EC 00 F8 24 */	fdivs f0, f0, f31
/* 8007639C 00072F7C  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 800763A0 00072F80  48 1A E7 C9 */	bl Stage_GetBlastZoneTopOffset
/* 800763A4 00072F84  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 800763A8 00072F88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800763AC 00072F8C  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 800763B0 00072F90  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 800763B4 00072F94  38 21 00 30 */	addi r1, r1, 0x30
/* 800763B8 00072F98  7C 08 03 A6 */	mtlr r0
/* 800763BC 00072F9C  4E 80 00 20 */	blr 


.section .data
    .balign 8
.global lbl_803C0C08
lbl_803C0C08:
    .asciz "ftcamera.c"
    .balign 4
.global lbl_803C0C14
lbl_803C0C14:
    .asciz "stGetPlyDeadUp() - center_pos.y != 0.0F"
    .balign 4


.section .sdata2
    .balign 8
.global lbl_804D82D0
lbl_804D82D0:
	.4byte 0x3F800000
.global lbl_804D82D4
lbl_804D82D4:
	.4byte 0xBF800000
.global lbl_804D82D8
lbl_804D82D8:
	.4byte 0x00000000
	.4byte 0x00000000
