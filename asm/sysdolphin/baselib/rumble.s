.include "macros.inc"

.section .text  # 0x80378090 - 0x80378A30

.global HSD_PadRumbleOn
HSD_PadRumbleOn:
/* 80378090 00374C70  7C 08 02 A6 */	mflr r0
/* 80378094 00374C74  90 01 00 04 */	stw r0, 4(r1)
/* 80378098 00374C78  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8037809C 00374C7C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 803780A0 00374C80  7C 7F 1B 78 */	mr r31, r3
/* 803780A4 00374C84  4B FC F2 C1 */	bl OSDisableInterrupts
/* 803780A8 00374C88  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 803780AC 00374C8C  1C A0 00 0C */	mulli r5, r0, 0xc
/* 803780B0 00374C90  3C 80 80 4C */	lis r4, lbl_804C22E0@ha
/* 803780B4 00374C94  38 04 22 E0 */	addi r0, r4, lbl_804C22E0@l
/* 803780B8 00374C98  7C 80 2A 14 */	add r4, r0, r5
/* 803780BC 00374C9C  38 00 00 01 */	li r0, 1
/* 803780C0 00374CA0  98 04 00 02 */	stb r0, 2(r4)
/* 803780C4 00374CA4  4B FC F2 C9 */	bl OSRestoreInterrupts
/* 803780C8 00374CA8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803780CC 00374CAC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 803780D0 00374CB0  38 21 00 18 */	addi r1, r1, 0x18
/* 803780D4 00374CB4  7C 08 03 A6 */	mtlr r0
/* 803780D8 00374CB8  4E 80 00 20 */	blr 

.global func_803780DC
func_803780DC:
/* 803780DC 00374CBC  7C 08 02 A6 */	mflr r0
/* 803780E0 00374CC0  90 01 00 04 */	stw r0, 4(r1)
/* 803780E4 00374CC4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 803780E8 00374CC8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 803780EC 00374CCC  7C 7F 1B 78 */	mr r31, r3
/* 803780F0 00374CD0  4B FC F2 75 */	bl OSDisableInterrupts
/* 803780F4 00374CD4  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 803780F8 00374CD8  1C A0 00 0C */	mulli r5, r0, 0xc
/* 803780FC 00374CDC  3C 80 80 4C */	lis r4, lbl_804C22E0@ha
/* 80378100 00374CE0  38 04 22 E0 */	addi r0, r4, lbl_804C22E0@l
/* 80378104 00374CE4  7C 80 2A 14 */	add r4, r0, r5
/* 80378108 00374CE8  38 00 00 00 */	li r0, 0
/* 8037810C 00374CEC  98 04 00 02 */	stb r0, 2(r4)
/* 80378110 00374CF0  4B FC F2 7D */	bl OSRestoreInterrupts
/* 80378114 00374CF4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80378118 00374CF8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8037811C 00374CFC  38 21 00 18 */	addi r1, r1, 0x18
/* 80378120 00374D00  7C 08 03 A6 */	mtlr r0
/* 80378124 00374D04  4E 80 00 20 */	blr 

.global func_80378128
func_80378128:
/* 80378128 00374D08  3C A0 80 4C */	lis r5, HSD_PadLibData@ha
/* 8037812C 00374D0C  38 A5 1F 78 */	addi r5, r5, HSD_PadLibData@l
/* 80378130 00374D10  38 C5 00 2C */	addi r6, r5, 0x2c
/* 80378134 00374D14  38 A3 00 08 */	addi r5, r3, 8
/* 80378138 00374D18  48 00 00 08 */	b lbl_80378140
lbl_8037813C:
/* 8037813C 00374D1C  7C 05 03 78 */	mr r5, r0
lbl_80378140:
/* 80378140 00374D20  80 05 00 00 */	lwz r0, 0(r5)
/* 80378144 00374D24  7C 00 20 40 */	cmplw r0, r4
/* 80378148 00374D28  40 82 FF F4 */	bne lbl_8037813C
/* 8037814C 00374D2C  80 04 00 00 */	lwz r0, 0(r4)
/* 80378150 00374D30  90 05 00 00 */	stw r0, 0(r5)
/* 80378154 00374D34  A0 A3 00 04 */	lhz r5, 4(r3)
/* 80378158 00374D38  38 05 FF FF */	addi r0, r5, -1
/* 8037815C 00374D3C  B0 03 00 04 */	sth r0, 4(r3)
/* 80378160 00374D40  80 06 00 04 */	lwz r0, 4(r6)
/* 80378164 00374D44  90 04 00 00 */	stw r0, 0(r4)
/* 80378168 00374D48  90 86 00 04 */	stw r4, 4(r6)
/* 8037816C 00374D4C  4E 80 00 20 */	blr 

.global func_80378170
func_80378170:
/* 80378170 00374D50  7C 08 02 A6 */	mflr r0
/* 80378174 00374D54  90 01 00 04 */	stw r0, 4(r1)
/* 80378178 00374D58  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8037817C 00374D5C  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80378180 00374D60  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80378184 00374D64  3C 60 80 4C */	lis r3, lbl_804C22E0@ha
/* 80378188 00374D68  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8037818C 00374D6C  38 03 22 E0 */	addi r0, r3, lbl_804C22E0@l
/* 80378190 00374D70  7F E0 22 14 */	add r31, r0, r4
/* 80378194 00374D74  4B FC F1 D1 */	bl OSDisableInterrupts
/* 80378198 00374D78  3C 80 80 4C */	lis r4, HSD_PadLibData@ha
/* 8037819C 00374D7C  80 FF 00 08 */	lwz r7, 8(r31)
/* 803781A0 00374D80  38 84 1F 78 */	addi r4, r4, HSD_PadLibData@l
/* 803781A4 00374D84  38 A4 00 2C */	addi r5, r4, 0x2c
/* 803781A8 00374D88  48 00 00 40 */	b lbl_803781E8
lbl_803781AC:
/* 803781AC 00374D8C  80 C7 00 00 */	lwz r6, 0(r7)
/* 803781B0 00374D90  38 9F 00 08 */	addi r4, r31, 8
/* 803781B4 00374D94  48 00 00 08 */	b lbl_803781BC
lbl_803781B8:
/* 803781B8 00374D98  7C 04 03 78 */	mr r4, r0
lbl_803781BC:
/* 803781BC 00374D9C  80 04 00 00 */	lwz r0, 0(r4)
/* 803781C0 00374DA0  7C 00 38 40 */	cmplw r0, r7
/* 803781C4 00374DA4  40 82 FF F4 */	bne lbl_803781B8
/* 803781C8 00374DA8  90 C4 00 00 */	stw r6, 0(r4)
/* 803781CC 00374DAC  A0 9F 00 04 */	lhz r4, 4(r31)
/* 803781D0 00374DB0  38 04 FF FF */	addi r0, r4, -1
/* 803781D4 00374DB4  B0 1F 00 04 */	sth r0, 4(r31)
/* 803781D8 00374DB8  80 05 00 04 */	lwz r0, 4(r5)
/* 803781DC 00374DBC  90 07 00 00 */	stw r0, 0(r7)
/* 803781E0 00374DC0  90 E5 00 04 */	stw r7, 4(r5)
/* 803781E4 00374DC4  7C C7 33 78 */	mr r7, r6
lbl_803781E8:
/* 803781E8 00374DC8  28 07 00 00 */	cmplwi r7, 0
/* 803781EC 00374DCC  40 82 FF C0 */	bne lbl_803781AC
/* 803781F0 00374DD0  4B FC F1 9D */	bl OSRestoreInterrupts
/* 803781F4 00374DD4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803781F8 00374DD8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 803781FC 00374DDC  38 21 00 18 */	addi r1, r1, 0x18
/* 80378200 00374DE0  7C 08 03 A6 */	mtlr r0
/* 80378204 00374DE4  4E 80 00 20 */	blr 

.global func_80378208
func_80378208:
/* 80378208 00374DE8  7C 08 02 A6 */	mflr r0
/* 8037820C 00374DEC  3C 60 80 4C */	lis r3, lbl_804C22E0@ha
/* 80378210 00374DF0  90 01 00 04 */	stw r0, 4(r1)
/* 80378214 00374DF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80378218 00374DF8  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 8037821C 00374DFC  3B E3 22 E0 */	addi r31, r3, lbl_804C22E0@l
/* 80378220 00374E00  3B 60 00 00 */	li r27, 0
lbl_80378224:
/* 80378224 00374E04  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 80378228 00374E08  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8037822C 00374E0C  7F 9F 02 14 */	add r28, r31, r0
/* 80378230 00374E10  4B FC F1 35 */	bl OSDisableInterrupts
/* 80378234 00374E14  80 9C 00 08 */	lwz r4, 8(r28)
/* 80378238 00374E18  7C 7D 1B 78 */	mr r29, r3
/* 8037823C 00374E1C  48 00 00 14 */	b lbl_80378250
lbl_80378240:
/* 80378240 00374E20  83 C4 00 00 */	lwz r30, 0(r4)
/* 80378244 00374E24  7F 83 E3 78 */	mr r3, r28
/* 80378248 00374E28  4B FF FE E1 */	bl func_80378128
/* 8037824C 00374E2C  7F C4 F3 78 */	mr r4, r30
lbl_80378250:
/* 80378250 00374E30  28 04 00 00 */	cmplwi r4, 0
/* 80378254 00374E34  40 82 FF EC */	bne lbl_80378240
/* 80378258 00374E38  7F A3 EB 78 */	mr r3, r29
/* 8037825C 00374E3C  4B FC F1 31 */	bl OSRestoreInterrupts
/* 80378260 00374E40  3B 7B 00 01 */	addi r27, r27, 1
/* 80378264 00374E44  2C 1B 00 04 */	cmpwi r27, 4
/* 80378268 00374E48  41 80 FF BC */	blt lbl_80378224
/* 8037826C 00374E4C  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 80378270 00374E50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80378274 00374E54  38 21 00 20 */	addi r1, r1, 0x20
/* 80378278 00374E58  7C 08 03 A6 */	mtlr r0
/* 8037827C 00374E5C  4E 80 00 20 */	blr 

.global func_80378280
func_80378280:
/* 80378280 00374E60  7C 08 02 A6 */	mflr r0
/* 80378284 00374E64  90 01 00 04 */	stw r0, 4(r1)
/* 80378288 00374E68  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8037828C 00374E6C  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80378290 00374E70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80378294 00374E74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80378298 00374E78  3C 60 80 4C */	lis r3, lbl_804C22E0@ha
/* 8037829C 00374E7C  38 03 22 E0 */	addi r0, r3, lbl_804C22E0@l
/* 803782A0 00374E80  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803782A4 00374E84  3B C4 00 00 */	addi r30, r4, 0
/* 803782A8 00374E88  7F E0 2A 14 */	add r31, r0, r5
/* 803782AC 00374E8C  4B FC F0 B9 */	bl OSDisableInterrupts
/* 803782B0 00374E90  3C 80 80 4C */	lis r4, HSD_PadLibData@ha
/* 803782B4 00374E94  80 FF 00 08 */	lwz r7, 8(r31)
/* 803782B8 00374E98  38 84 1F 78 */	addi r4, r4, HSD_PadLibData@l
/* 803782BC 00374E9C  38 A4 00 2C */	addi r5, r4, 0x2c
/* 803782C0 00374EA0  48 00 00 4C */	b lbl_8037830C
lbl_803782C4:
/* 803782C4 00374EA4  80 07 00 04 */	lwz r0, 4(r7)
/* 803782C8 00374EA8  80 C7 00 00 */	lwz r6, 0(r7)
/* 803782CC 00374EAC  7C 00 F0 40 */	cmplw r0, r30
/* 803782D0 00374EB0  40 82 00 38 */	bne lbl_80378308
/* 803782D4 00374EB4  38 9F 00 08 */	addi r4, r31, 8
/* 803782D8 00374EB8  48 00 00 08 */	b lbl_803782E0
lbl_803782DC:
/* 803782DC 00374EBC  7C 04 03 78 */	mr r4, r0
lbl_803782E0:
/* 803782E0 00374EC0  80 04 00 00 */	lwz r0, 0(r4)
/* 803782E4 00374EC4  7C 00 38 40 */	cmplw r0, r7
/* 803782E8 00374EC8  40 82 FF F4 */	bne lbl_803782DC
/* 803782EC 00374ECC  90 C4 00 00 */	stw r6, 0(r4)
/* 803782F0 00374ED0  A0 9F 00 04 */	lhz r4, 4(r31)
/* 803782F4 00374ED4  38 04 FF FF */	addi r0, r4, -1
/* 803782F8 00374ED8  B0 1F 00 04 */	sth r0, 4(r31)
/* 803782FC 00374EDC  80 05 00 04 */	lwz r0, 4(r5)
/* 80378300 00374EE0  90 07 00 00 */	stw r0, 0(r7)
/* 80378304 00374EE4  90 E5 00 04 */	stw r7, 4(r5)
lbl_80378308:
/* 80378308 00374EE8  7C C7 33 78 */	mr r7, r6
lbl_8037830C:
/* 8037830C 00374EEC  28 07 00 00 */	cmplwi r7, 0
/* 80378310 00374EF0  40 82 FF B4 */	bne lbl_803782C4
/* 80378314 00374EF4  4B FC F0 79 */	bl OSRestoreInterrupts
/* 80378318 00374EF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037831C 00374EFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80378320 00374F00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80378324 00374F04  38 21 00 20 */	addi r1, r1, 0x20
/* 80378328 00374F08  7C 08 03 A6 */	mtlr r0
/* 8037832C 00374F0C  4E 80 00 20 */	blr 

.global func_80378330
func_80378330:
/* 80378330 00374F10  7C 08 02 A6 */	mflr r0
/* 80378334 00374F14  3C 60 80 4C */	lis r3, lbl_804C22E0@ha
/* 80378338 00374F18  90 01 00 04 */	stw r0, 4(r1)
/* 8037833C 00374F1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80378340 00374F20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80378344 00374F24  3B E0 00 01 */	li r31, 1
/* 80378348 00374F28  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037834C 00374F2C  3B C3 22 E0 */	addi r30, r3, lbl_804C22E0@l
/* 80378350 00374F30  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80378354 00374F34  3B A0 00 00 */	li r29, 0
lbl_80378358:
/* 80378358 00374F38  4B FC F0 0D */	bl OSDisableInterrupts
/* 8037835C 00374F3C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80378360 00374F40  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80378364 00374F44  7C 9E 02 14 */	add r4, r30, r0
/* 80378368 00374F48  80 84 00 08 */	lwz r4, 8(r4)
/* 8037836C 00374F4C  48 00 00 10 */	b lbl_8037837C
lbl_80378370:
/* 80378370 00374F50  80 04 00 00 */	lwz r0, 0(r4)
/* 80378374 00374F54  9B E4 00 08 */	stb r31, 8(r4)
/* 80378378 00374F58  7C 04 03 78 */	mr r4, r0
lbl_8037837C:
/* 8037837C 00374F5C  28 04 00 00 */	cmplwi r4, 0
/* 80378380 00374F60  40 82 FF F0 */	bne lbl_80378370
/* 80378384 00374F64  4B FC F0 09 */	bl OSRestoreInterrupts
/* 80378388 00374F68  3B BD 00 01 */	addi r29, r29, 1
/* 8037838C 00374F6C  2C 1D 00 04 */	cmpwi r29, 4
/* 80378390 00374F70  41 80 FF C8 */	blt lbl_80378358
/* 80378394 00374F74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80378398 00374F78  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037839C 00374F7C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803783A0 00374F80  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803783A4 00374F84  38 21 00 20 */	addi r1, r1, 0x20
/* 803783A8 00374F88  7C 08 03 A6 */	mtlr r0
/* 803783AC 00374F8C  4E 80 00 20 */	blr 

.global func_803783B0
func_803783B0:
/* 803783B0 00374F90  7C 08 02 A6 */	mflr r0
/* 803783B4 00374F94  3C 60 80 4C */	lis r3, lbl_804C22E0@ha
/* 803783B8 00374F98  90 01 00 04 */	stw r0, 4(r1)
/* 803783BC 00374F9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803783C0 00374FA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803783C4 00374FA4  3B E0 00 00 */	li r31, 0
/* 803783C8 00374FA8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803783CC 00374FAC  3B C3 22 E0 */	addi r30, r3, lbl_804C22E0@l
/* 803783D0 00374FB0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803783D4 00374FB4  3B A0 00 00 */	li r29, 0
lbl_803783D8:
/* 803783D8 00374FB8  4B FC EF 8D */	bl OSDisableInterrupts
/* 803783DC 00374FBC  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 803783E0 00374FC0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 803783E4 00374FC4  7C 9E 02 14 */	add r4, r30, r0
/* 803783E8 00374FC8  80 84 00 08 */	lwz r4, 8(r4)
/* 803783EC 00374FCC  48 00 00 10 */	b lbl_803783FC
lbl_803783F0:
/* 803783F0 00374FD0  80 04 00 00 */	lwz r0, 0(r4)
/* 803783F4 00374FD4  9B E4 00 08 */	stb r31, 8(r4)
/* 803783F8 00374FD8  7C 04 03 78 */	mr r4, r0
lbl_803783FC:
/* 803783FC 00374FDC  28 04 00 00 */	cmplwi r4, 0
/* 80378400 00374FE0  40 82 FF F0 */	bne lbl_803783F0
/* 80378404 00374FE4  4B FC EF 89 */	bl OSRestoreInterrupts
/* 80378408 00374FE8  3B BD 00 01 */	addi r29, r29, 1
/* 8037840C 00374FEC  2C 1D 00 04 */	cmpwi r29, 4
/* 80378410 00374FF0  41 80 FF C8 */	blt lbl_803783D8
/* 80378414 00374FF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80378418 00374FF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037841C 00374FFC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80378420 00375000  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80378424 00375004  38 21 00 20 */	addi r1, r1, 0x20
/* 80378428 00375008  7C 08 03 A6 */	mtlr r0
/* 8037842C 0037500C  4E 80 00 20 */	blr 

.global func_80378430
func_80378430:
/* 80378430 00375010  7C 08 02 A6 */	mflr r0
/* 80378434 00375014  3D 20 80 4C */	lis r9, HSD_PadLibData@ha
/* 80378438 00375018  90 01 00 04 */	stw r0, 4(r1)
/* 8037843C 0037501C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80378440 00375020  1D 00 00 0C */	mulli r8, r0, 0xc
/* 80378444 00375024  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80378448 00375028  BF 21 00 24 */	stmw r25, 0x24(r1)
/* 8037844C 0037502C  3C 60 80 4C */	lis r3, lbl_804C22E0@ha
/* 80378450 00375030  39 29 1F 78 */	addi r9, r9, HSD_PadLibData@l
/* 80378454 00375034  38 03 22 E0 */	addi r0, r3, lbl_804C22E0@l
/* 80378458 00375038  3B 24 00 00 */	addi r25, r4, 0
/* 8037845C 0037503C  3B 45 00 00 */	addi r26, r5, 0
/* 80378460 00375040  3B 66 00 00 */	addi r27, r6, 0
/* 80378464 00375044  3B 87 00 00 */	addi r28, r7, 0
/* 80378468 00375048  3B E9 00 2C */	addi r31, r9, 0x2c
/* 8037846C 0037504C  7F C0 42 14 */	add r30, r0, r8
/* 80378470 00375050  3B A0 00 00 */	li r29, 0
/* 80378474 00375054  4B FC EE F1 */	bl OSDisableInterrupts
/* 80378478 00375058  80 FF 00 04 */	lwz r7, 4(r31)
/* 8037847C 0037505C  28 07 00 00 */	cmplwi r7, 0
/* 80378480 00375060  41 82 00 88 */	beq lbl_80378508
/* 80378484 00375064  A0 9E 00 04 */	lhz r4, 4(r30)
/* 80378488 00375068  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8037848C 0037506C  7C 04 00 40 */	cmplw r4, r0
/* 80378490 00375070  40 80 00 78 */	bge lbl_80378508
/* 80378494 00375074  80 87 00 00 */	lwz r4, 0(r7)
/* 80378498 00375078  38 00 00 00 */	li r0, 0
/* 8037849C 0037507C  38 DE 00 08 */	addi r6, r30, 8
/* 803784A0 00375080  90 9F 00 04 */	stw r4, 4(r31)
/* 803784A4 00375084  93 27 00 04 */	stw r25, 4(r7)
/* 803784A8 00375088  98 07 00 08 */	stb r0, 8(r7)
/* 803784AC 0037508C  9B 67 00 09 */	stb r27, 9(r7)
/* 803784B0 00375090  98 07 00 0A */	stb r0, 0xa(r7)
/* 803784B4 00375094  B0 07 00 0C */	sth r0, 0xc(r7)
/* 803784B8 00375098  B0 07 00 0E */	sth r0, 0xe(r7)
/* 803784BC 0037509C  93 47 00 10 */	stw r26, 0x10(r7)
/* 803784C0 003750A0  90 07 00 14 */	stw r0, 0x14(r7)
/* 803784C4 003750A4  93 87 00 1C */	stw r28, 0x1c(r7)
/* 803784C8 003750A8  93 87 00 18 */	stw r28, 0x18(r7)
/* 803784CC 003750AC  48 00 00 08 */	b lbl_803784D4
lbl_803784D0:
/* 803784D0 003750B0  7C A6 2B 78 */	mr r6, r5
lbl_803784D4:
/* 803784D4 003750B4  80 A6 00 00 */	lwz r5, 0(r6)
/* 803784D8 003750B8  28 05 00 00 */	cmplwi r5, 0
/* 803784DC 003750BC  41 82 00 14 */	beq lbl_803784F0
/* 803784E0 003750C0  88 85 00 09 */	lbz r4, 9(r5)
/* 803784E4 003750C4  88 07 00 09 */	lbz r0, 9(r7)
/* 803784E8 003750C8  7C 04 00 40 */	cmplw r4, r0
/* 803784EC 003750CC  40 81 FF E4 */	ble lbl_803784D0
lbl_803784F0:
/* 803784F0 003750D0  90 A7 00 00 */	stw r5, 0(r7)
/* 803784F4 003750D4  3B A0 00 01 */	li r29, 1
/* 803784F8 003750D8  90 E6 00 00 */	stw r7, 0(r6)
/* 803784FC 003750DC  A0 9E 00 04 */	lhz r4, 4(r30)
/* 80378500 003750E0  38 04 00 01 */	addi r0, r4, 1
/* 80378504 003750E4  B0 1E 00 04 */	sth r0, 4(r30)
lbl_80378508:
/* 80378508 003750E8  4B FC EE 85 */	bl OSRestoreInterrupts
/* 8037850C 003750EC  7F A3 EB 78 */	mr r3, r29
/* 80378510 003750F0  BB 21 00 24 */	lmw r25, 0x24(r1)
/* 80378514 003750F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80378518 003750F8  38 21 00 40 */	addi r1, r1, 0x40
/* 8037851C 003750FC  7C 08 03 A6 */	mtlr r0
/* 80378520 00375100  4E 80 00 20 */	blr 

.global func_80378524
func_80378524:
/* 80378524 00375104  7C 08 02 A6 */	mflr r0
/* 80378528 00375108  90 01 00 04 */	stw r0, 4(r1)
/* 8037852C 0037510C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80378530 00375110  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80378534 00375114  7C 7F 1B 78 */	mr r31, r3
/* 80378538 00375118  4B FC EE 2D */	bl OSDisableInterrupts
/* 8037853C 0037511C  3C 80 80 4C */	lis r4, HSD_PadLibData@ha
/* 80378540 00375120  38 84 1F 78 */	addi r4, r4, HSD_PadLibData@l
/* 80378544 00375124  9B E4 00 2E */	stb r31, 0x2e(r4)
/* 80378548 00375128  4B FC EE 45 */	bl OSRestoreInterrupts
/* 8037854C 0037512C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80378550 00375130  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80378554 00375134  38 21 00 18 */	addi r1, r1, 0x18
/* 80378558 00375138  7C 08 03 A6 */	mtlr r0
/* 8037855C 0037513C  4E 80 00 20 */	blr 

.global func_80378560
func_80378560:
/* 80378560 00375140  88 03 00 08 */	lbz r0, 8(r3)
/* 80378564 00375144  28 00 00 01 */	cmplwi r0, 1
/* 80378568 00375148  40 82 01 38 */	bne lbl_803786A0
/* 8037856C 0037514C  38 60 00 00 */	li r3, 0
/* 80378570 00375150  4E 80 00 20 */	blr 
/* 80378574 00375154  48 00 01 2C */	b lbl_803786A0
lbl_80378578:
/* 80378578 00375158  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 8037857C 0037515C  88 05 00 00 */	lbz r0, 0(r5)
/* 80378580 00375160  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 80378584 00375164  2C 00 00 03 */	cmpwi r0, 3
/* 80378588 00375168  41 82 00 A0 */	beq lbl_80378628
/* 8037858C 0037516C  40 80 00 1C */	bge lbl_803785A8
/* 80378590 00375170  2C 00 00 01 */	cmpwi r0, 1
/* 80378594 00375174  41 82 00 44 */	beq lbl_803785D8
/* 80378598 00375178  40 80 00 68 */	bge lbl_80378600
/* 8037859C 0037517C  2C 00 00 00 */	cmpwi r0, 0
/* 803785A0 00375180  40 80 00 18 */	bge lbl_803785B8
/* 803785A4 00375184  48 00 00 FC */	b lbl_803786A0
lbl_803785A8:
/* 803785A8 00375188  2C 00 00 05 */	cmpwi r0, 5
/* 803785AC 0037518C  41 82 00 C8 */	beq lbl_80378674
/* 803785B0 00375190  40 80 00 F0 */	bge lbl_803786A0
/* 803785B4 00375194  48 00 00 9C */	b lbl_80378650
lbl_803785B8:
/* 803785B8 00375198  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803785BC 0037519C  2C 00 FF FE */	cmpwi r0, -2
/* 803785C0 003751A0  40 82 00 0C */	bne lbl_803785CC
/* 803785C4 003751A4  38 60 00 01 */	li r3, 1
/* 803785C8 003751A8  4E 80 00 20 */	blr 
lbl_803785CC:
/* 803785CC 003751AC  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 803785D0 003751B0  90 03 00 18 */	stw r0, 0x18(r3)
/* 803785D4 003751B4  48 00 00 CC */	b lbl_803786A0
lbl_803785D8:
/* 803785D8 003751B8  38 00 00 02 */	li r0, 2
/* 803785DC 003751BC  98 03 00 0A */	stb r0, 0xa(r3)
/* 803785E0 003751C0  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 803785E4 003751C4  A0 05 00 00 */	lhz r0, 0(r5)
/* 803785E8 003751C8  54 00 04 FE */	clrlwi r0, r0, 0x13
/* 803785EC 003751CC  B0 03 00 0E */	sth r0, 0xe(r3)
/* 803785F0 003751D0  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 803785F4 003751D4  38 05 00 02 */	addi r0, r5, 2
/* 803785F8 003751D8  90 03 00 18 */	stw r0, 0x18(r3)
/* 803785FC 003751DC  48 00 00 A4 */	b lbl_803786A0
lbl_80378600:
/* 80378600 003751E0  38 00 00 01 */	li r0, 1
/* 80378604 003751E4  98 03 00 0A */	stb r0, 0xa(r3)
/* 80378608 003751E8  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 8037860C 003751EC  A0 05 00 00 */	lhz r0, 0(r5)
/* 80378610 003751F0  54 00 04 FE */	clrlwi r0, r0, 0x13
/* 80378614 003751F4  B0 03 00 0E */	sth r0, 0xe(r3)
/* 80378618 003751F8  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 8037861C 003751FC  38 05 00 02 */	addi r0, r5, 2
/* 80378620 00375200  90 03 00 18 */	stw r0, 0x18(r3)
/* 80378624 00375204  48 00 00 7C */	b lbl_803786A0
lbl_80378628:
/* 80378628 00375208  38 00 00 00 */	li r0, 0
/* 8037862C 0037520C  98 03 00 0A */	stb r0, 0xa(r3)
/* 80378630 00375210  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 80378634 00375214  A0 05 00 00 */	lhz r0, 0(r5)
/* 80378638 00375218  54 00 04 FE */	clrlwi r0, r0, 0x13
/* 8037863C 0037521C  B0 03 00 0E */	sth r0, 0xe(r3)
/* 80378640 00375220  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 80378644 00375224  38 05 00 02 */	addi r0, r5, 2
/* 80378648 00375228  90 03 00 18 */	stw r0, 0x18(r3)
/* 8037864C 0037522C  48 00 00 54 */	b lbl_803786A0
lbl_80378650:
/* 80378650 00375230  A0 05 00 00 */	lhz r0, 0(r5)
/* 80378654 00375234  54 00 04 FE */	clrlwi r0, r0, 0x13
/* 80378658 00375238  B0 03 00 0C */	sth r0, 0xc(r3)
/* 8037865C 0037523C  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 80378660 00375240  38 05 00 02 */	addi r0, r5, 2
/* 80378664 00375244  90 03 00 18 */	stw r0, 0x18(r3)
/* 80378668 00375248  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8037866C 0037524C  90 03 00 14 */	stw r0, 0x14(r3)
/* 80378670 00375250  48 00 00 30 */	b lbl_803786A0
lbl_80378674:
/* 80378674 00375254  A0 A3 00 0C */	lhz r5, 0xc(r3)
/* 80378678 00375258  38 A5 FF FF */	addi r5, r5, -1
/* 8037867C 0037525C  54 A0 04 3F */	clrlwi. r0, r5, 0x10
/* 80378680 00375260  B0 A3 00 0C */	sth r5, 0xc(r3)
/* 80378684 00375264  41 82 00 10 */	beq lbl_80378694
/* 80378688 00375268  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8037868C 0037526C  90 03 00 18 */	stw r0, 0x18(r3)
/* 80378690 00375270  48 00 00 10 */	b lbl_803786A0
lbl_80378694:
/* 80378694 00375274  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 80378698 00375278  38 05 00 02 */	addi r0, r5, 2
/* 8037869C 0037527C  90 03 00 18 */	stw r0, 0x18(r3)
lbl_803786A0:
/* 803786A0 00375280  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 803786A4 00375284  28 00 00 00 */	cmplwi r0, 0
/* 803786A8 00375288  41 82 FE D0 */	beq lbl_80378578
/* 803786AC 0037528C  88 03 00 0A */	lbz r0, 0xa(r3)
/* 803786B0 00375290  98 04 00 00 */	stb r0, 0(r4)
/* 803786B4 00375294  A0 83 00 0E */	lhz r4, 0xe(r3)
/* 803786B8 00375298  38 04 FF FF */	addi r0, r4, -1
/* 803786BC 0037529C  B0 03 00 0E */	sth r0, 0xe(r3)
/* 803786C0 003752A0  80 83 00 10 */	lwz r4, 0x10(r3)
/* 803786C4 003752A4  2C 04 FF FF */	cmpwi r4, -1
/* 803786C8 003752A8  41 82 00 20 */	beq lbl_803786E8
/* 803786CC 003752AC  2C 04 FF FE */	cmpwi r4, -2
/* 803786D0 003752B0  41 82 00 18 */	beq lbl_803786E8
/* 803786D4 003752B4  34 04 FF FF */	addic. r0, r4, -1
/* 803786D8 003752B8  90 03 00 10 */	stw r0, 0x10(r3)
/* 803786DC 003752BC  40 82 00 0C */	bne lbl_803786E8
/* 803786E0 003752C0  38 60 00 01 */	li r3, 1
/* 803786E4 003752C4  4E 80 00 20 */	blr 
lbl_803786E8:
/* 803786E8 003752C8  38 60 00 00 */	li r3, 0
/* 803786EC 003752CC  4E 80 00 20 */	blr 

.global func_803786F0
func_803786F0:
/* 803786F0 003752D0  7C 08 02 A6 */	mflr r0
/* 803786F4 003752D4  3C 80 80 4C */	lis r4, HSD_PadLibData@ha
/* 803786F8 003752D8  90 01 00 04 */	stw r0, 4(r1)
/* 803786FC 003752DC  3C 60 80 4C */	lis r3, lbl_804C22E0@ha
/* 80378700 003752E0  38 84 1F 78 */	addi r4, r4, HSD_PadLibData@l
/* 80378704 003752E4  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80378708 003752E8  38 03 22 E0 */	addi r0, r3, lbl_804C22E0@l
/* 8037870C 003752EC  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 80378710 003752F0  7C 1E 03 78 */	mr r30, r0
/* 80378714 003752F4  3B E4 00 2C */	addi r31, r4, 0x2c
/* 80378718 003752F8  3B 60 00 00 */	li r27, 0
lbl_8037871C:
/* 8037871C 003752FC  38 00 00 00 */	li r0, 0
/* 80378720 00375300  98 1E 00 01 */	stb r0, 1(r30)
/* 80378724 00375304  88 1F 00 02 */	lbz r0, 2(r31)
/* 80378728 00375308  28 00 00 00 */	cmplwi r0, 0
/* 8037872C 0037530C  40 82 00 70 */	bne lbl_8037879C
/* 80378730 00375310  88 1E 00 02 */	lbz r0, 2(r30)
/* 80378734 00375314  98 1E 00 01 */	stb r0, 1(r30)
/* 80378738 00375318  83 BE 00 08 */	lwz r29, 8(r30)
/* 8037873C 0037531C  48 00 00 58 */	b lbl_80378794
lbl_80378740:
/* 80378740 00375320  83 9D 00 00 */	lwz r28, 0(r29)
/* 80378744 00375324  38 7D 00 00 */	addi r3, r29, 0
/* 80378748 00375328  38 9E 00 01 */	addi r4, r30, 1
/* 8037874C 0037532C  4B FF FE 15 */	bl func_80378560
/* 80378750 00375330  2C 03 00 00 */	cmpwi r3, 0
/* 80378754 00375334  41 82 00 3C */	beq lbl_80378790
/* 80378758 00375338  38 7E 00 08 */	addi r3, r30, 8
/* 8037875C 0037533C  48 00 00 08 */	b lbl_80378764
lbl_80378760:
/* 80378760 00375340  7C 03 03 78 */	mr r3, r0
lbl_80378764:
/* 80378764 00375344  80 03 00 00 */	lwz r0, 0(r3)
/* 80378768 00375348  7C 00 E8 40 */	cmplw r0, r29
/* 8037876C 0037534C  40 82 FF F4 */	bne lbl_80378760
/* 80378770 00375350  80 1D 00 00 */	lwz r0, 0(r29)
/* 80378774 00375354  90 03 00 00 */	stw r0, 0(r3)
/* 80378778 00375358  A0 7E 00 04 */	lhz r3, 4(r30)
/* 8037877C 0037535C  38 03 FF FF */	addi r0, r3, -1
/* 80378780 00375360  B0 1E 00 04 */	sth r0, 4(r30)
/* 80378784 00375364  80 1F 00 04 */	lwz r0, 4(r31)
/* 80378788 00375368  90 1D 00 00 */	stw r0, 0(r29)
/* 8037878C 0037536C  93 BF 00 04 */	stw r29, 4(r31)
lbl_80378790:
/* 80378790 00375370  7F 9D E3 78 */	mr r29, r28
lbl_80378794:
/* 80378794 00375374  28 1D 00 00 */	cmplwi r29, 0
/* 80378798 00375378  40 82 FF A8 */	bne lbl_80378740
lbl_8037879C:
/* 8037879C 0037537C  88 7E 00 01 */	lbz r3, 1(r30)
/* 803787A0 00375380  88 1E 00 00 */	lbz r0, 0(r30)
/* 803787A4 00375384  7C 03 00 40 */	cmplw r3, r0
/* 803787A8 00375388  41 82 00 5C */	beq lbl_80378804
/* 803787AC 0037538C  2C 03 00 01 */	cmpwi r3, 1
/* 803787B0 00375390  41 82 00 30 */	beq lbl_803787E0
/* 803787B4 00375394  40 80 00 10 */	bge lbl_803787C4
/* 803787B8 00375398  2C 03 00 00 */	cmpwi r3, 0
/* 803787BC 0037539C  40 80 00 14 */	bge lbl_803787D0
/* 803787C0 003753A0  48 00 00 3C */	b lbl_803787FC
lbl_803787C4:
/* 803787C4 003753A4  2C 03 00 03 */	cmpwi r3, 3
/* 803787C8 003753A8  40 80 00 34 */	bge lbl_803787FC
/* 803787CC 003753AC  48 00 00 24 */	b lbl_803787F0
lbl_803787D0:
/* 803787D0 003753B0  38 7B 00 00 */	addi r3, r27, 0
/* 803787D4 003753B4  38 80 00 02 */	li r4, 2
/* 803787D8 003753B8  4B FD 56 E5 */	bl PADControlMotor
/* 803787DC 003753BC  48 00 00 20 */	b lbl_803787FC
lbl_803787E0:
/* 803787E0 003753C0  38 7B 00 00 */	addi r3, r27, 0
/* 803787E4 003753C4  38 80 00 00 */	li r4, 0
/* 803787E8 003753C8  4B FD 56 D5 */	bl PADControlMotor
/* 803787EC 003753CC  48 00 00 10 */	b lbl_803787FC
lbl_803787F0:
/* 803787F0 003753D0  38 7B 00 00 */	addi r3, r27, 0
/* 803787F4 003753D4  38 80 00 01 */	li r4, 1
/* 803787F8 003753D8  4B FD 56 C5 */	bl PADControlMotor
lbl_803787FC:
/* 803787FC 003753DC  88 1E 00 01 */	lbz r0, 1(r30)
/* 80378800 003753E0  98 1E 00 00 */	stb r0, 0(r30)
lbl_80378804:
/* 80378804 003753E4  3B 7B 00 01 */	addi r27, r27, 1
/* 80378808 003753E8  2C 1B 00 04 */	cmpwi r27, 4
/* 8037880C 003753EC  3B DE 00 0C */	addi r30, r30, 0xc
/* 80378810 003753F0  41 80 FF 0C */	blt lbl_8037871C
/* 80378814 003753F4  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 80378818 003753F8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8037881C 003753FC  38 21 00 28 */	addi r1, r1, 0x28
/* 80378820 00375400  7C 08 03 A6 */	mtlr r0
/* 80378824 00375404  4E 80 00 20 */	blr 

.global func_80378828
func_80378828:
/* 80378828 00375408  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8037882C 0037540C  3C A0 80 4C */	lis r5, HSD_PadLibData@ha
/* 80378830 00375410  38 A5 1F 78 */	addi r5, r5, HSD_PadLibData@l
/* 80378834 00375414  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80378838 00375418  38 C5 00 2C */	addi r6, r5, 0x2c
/* 8037883C 0037541C  38 A0 00 00 */	li r5, 0
/* 80378840 00375420  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80378844 00375424  54 67 04 3F */	clrlwi. r7, r3, 0x10
/* 80378848 00375428  3D 00 80 4C */	lis r8, lbl_804C22E0@ha
/* 8037884C 0037542C  98 A6 00 02 */	stb r5, 2(r6)
/* 80378850 00375430  B0 66 00 00 */	sth r3, 0(r6)
/* 80378854 00375434  38 68 22 E0 */	addi r3, r8, lbl_804C22E0@l
/* 80378858 00375438  90 86 00 04 */	stw r4, 4(r6)
/* 8037885C 0037543C  41 82 01 3C */	beq lbl_80378998
/* 80378860 00375440  34 07 FF FF */	addic. r0, r7, -1
/* 80378864 00375444  38 80 00 00 */	li r4, 0
/* 80378868 00375448  40 81 01 20 */	ble lbl_80378988
/* 8037886C 0037544C  2C 00 00 08 */	cmpwi r0, 8
/* 80378870 00375450  39 07 FF F7 */	addi r8, r7, -9
/* 80378874 00375454  40 81 01 A8 */	ble lbl_80378A1C
/* 80378878 00375458  38 E8 00 07 */	addi r7, r8, 7
/* 8037887C 0037545C  54 E7 E8 FE */	srwi r7, r7, 3
/* 80378880 00375460  2C 08 00 00 */	cmpwi r8, 0
/* 80378884 00375464  7C E9 03 A6 */	mtctr r7
/* 80378888 00375468  40 81 01 94 */	ble lbl_80378A1C
lbl_8037888C:
/* 8037888C 0037546C  38 E4 00 01 */	addi r7, r4, 1
/* 80378890 00375470  81 06 00 04 */	lwz r8, 4(r6)
/* 80378894 00375474  54 E7 28 34 */	slwi r7, r7, 5
/* 80378898 00375478  7C E8 3A 14 */	add r7, r8, r7
/* 8037889C 0037547C  7C E8 29 2E */	stwx r7, r8, r5
/* 803788A0 00375480  39 04 00 02 */	addi r8, r4, 2
/* 803788A4 00375484  55 08 28 34 */	slwi r8, r8, 5
/* 803788A8 00375488  81 46 00 04 */	lwz r10, 4(r6)
/* 803788AC 0037548C  38 E4 00 03 */	addi r7, r4, 3
/* 803788B0 00375490  39 64 00 04 */	addi r11, r4, 4
/* 803788B4 00375494  7D 2A 42 14 */	add r9, r10, r8
/* 803788B8 00375498  39 05 00 20 */	addi r8, r5, 0x20
/* 803788BC 0037549C  7D 2A 41 2E */	stwx r9, r10, r8
/* 803788C0 003754A0  54 E8 28 34 */	slwi r8, r7, 5
/* 803788C4 003754A4  38 E5 00 40 */	addi r7, r5, 0x40
/* 803788C8 003754A8  81 86 00 04 */	lwz r12, 4(r6)
/* 803788CC 003754AC  39 44 00 05 */	addi r10, r4, 5
/* 803788D0 003754B0  39 24 00 06 */	addi r9, r4, 6
/* 803788D4 003754B4  7D 0C 42 14 */	add r8, r12, r8
/* 803788D8 003754B8  7D 0C 39 2E */	stwx r8, r12, r7
/* 803788DC 003754BC  55 6C 28 34 */	slwi r12, r11, 5
/* 803788E0 003754C0  39 04 00 08 */	addi r8, r4, 8
/* 803788E4 003754C4  83 E6 00 04 */	lwz r31, 4(r6)
/* 803788E8 003754C8  38 E4 00 07 */	addi r7, r4, 7
/* 803788EC 003754CC  39 65 00 60 */	addi r11, r5, 0x60
/* 803788F0 003754D0  7D 9F 62 14 */	add r12, r31, r12
/* 803788F4 003754D4  7D 9F 59 2E */	stwx r12, r31, r11
/* 803788F8 003754D8  55 5F 28 34 */	slwi r31, r10, 5
/* 803788FC 003754DC  39 45 00 80 */	addi r10, r5, 0x80
/* 80378900 003754E0  83 C6 00 04 */	lwz r30, 4(r6)
/* 80378904 003754E4  55 2C 28 34 */	slwi r12, r9, 5
/* 80378908 003754E8  39 65 00 A0 */	addi r11, r5, 0xa0
/* 8037890C 003754EC  7D 3E FA 14 */	add r9, r30, r31
/* 80378910 003754F0  7D 3E 51 2E */	stwx r9, r30, r10
/* 80378914 003754F4  54 EA 28 34 */	slwi r10, r7, 5
/* 80378918 003754F8  39 25 00 C0 */	addi r9, r5, 0xc0
/* 8037891C 003754FC  83 C6 00 04 */	lwz r30, 4(r6)
/* 80378920 00375500  38 E5 00 E0 */	addi r7, r5, 0xe0
/* 80378924 00375504  55 08 28 34 */	slwi r8, r8, 5
/* 80378928 00375508  7D 9E 62 14 */	add r12, r30, r12
/* 8037892C 0037550C  7D 9E 59 2E */	stwx r12, r30, r11
/* 80378930 00375510  38 A5 01 00 */	addi r5, r5, 0x100
/* 80378934 00375514  38 84 00 08 */	addi r4, r4, 8
/* 80378938 00375518  81 66 00 04 */	lwz r11, 4(r6)
/* 8037893C 0037551C  7D 4B 52 14 */	add r10, r11, r10
/* 80378940 00375520  7D 4B 49 2E */	stwx r10, r11, r9
/* 80378944 00375524  81 26 00 04 */	lwz r9, 4(r6)
/* 80378948 00375528  7D 09 42 14 */	add r8, r9, r8
/* 8037894C 0037552C  7D 09 39 2E */	stwx r8, r9, r7
/* 80378950 00375530  42 00 FF 3C */	bdnz lbl_8037888C
/* 80378954 00375534  48 00 00 C8 */	b lbl_80378A1C
lbl_80378958:
/* 80378958 00375538  7C A4 00 50 */	subf r5, r4, r0
/* 8037895C 0037553C  7C 04 00 00 */	cmpw r4, r0
/* 80378960 00375540  7C A9 03 A6 */	mtctr r5
/* 80378964 00375544  40 80 00 24 */	bge lbl_80378988
lbl_80378968:
/* 80378968 00375548  38 04 00 01 */	addi r0, r4, 1
/* 8037896C 0037554C  80 A6 00 04 */	lwz r5, 4(r6)
/* 80378970 00375550  54 00 28 34 */	slwi r0, r0, 5
/* 80378974 00375554  7C 05 02 14 */	add r0, r5, r0
/* 80378978 00375558  7C 05 39 2E */	stwx r0, r5, r7
/* 8037897C 0037555C  38 E7 00 20 */	addi r7, r7, 0x20
/* 80378980 00375560  38 84 00 01 */	addi r4, r4, 1
/* 80378984 00375564  42 00 FF E4 */	bdnz lbl_80378968
lbl_80378988:
/* 80378988 00375568  80 A6 00 04 */	lwz r5, 4(r6)
/* 8037898C 0037556C  54 80 28 34 */	slwi r0, r4, 5
/* 80378990 00375570  38 80 00 00 */	li r4, 0
/* 80378994 00375574  7C 85 01 2E */	stwx r4, r5, r0
lbl_80378998:
/* 80378998 00375578  3C 80 80 40 */	lis r4, lbl_80406DE0@ha
/* 8037899C 0037557C  38 A4 6D E0 */	addi r5, r4, lbl_80406DE0@l
/* 803789A0 00375580  80 85 00 00 */	lwz r4, 0(r5)
/* 803789A4 00375584  80 05 00 04 */	lwz r0, 4(r5)
/* 803789A8 00375588  90 81 00 10 */	stw r4, 0x10(r1)
/* 803789AC 0037558C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803789B0 00375590  80 05 00 08 */	lwz r0, 8(r5)
/* 803789B4 00375594  90 01 00 18 */	stw r0, 0x18(r1)
/* 803789B8 00375598  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803789BC 0037559C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803789C0 003755A0  90 83 00 00 */	stw r4, 0(r3)
/* 803789C4 003755A4  90 03 00 04 */	stw r0, 4(r3)
/* 803789C8 003755A8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 803789CC 003755AC  90 03 00 08 */	stw r0, 8(r3)
/* 803789D0 003755B0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803789D4 003755B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803789D8 003755B8  90 83 00 0C */	stw r4, 0xc(r3)
/* 803789DC 003755BC  90 03 00 10 */	stw r0, 0x10(r3)
/* 803789E0 003755C0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 803789E4 003755C4  90 03 00 14 */	stw r0, 0x14(r3)
/* 803789E8 003755C8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803789EC 003755CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803789F0 003755D0  90 83 00 18 */	stw r4, 0x18(r3)
/* 803789F4 003755D4  90 03 00 1C */	stw r0, 0x1c(r3)
/* 803789F8 003755D8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 803789FC 003755DC  90 03 00 20 */	stw r0, 0x20(r3)
/* 80378A00 003755E0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80378A04 003755E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80378A08 003755E8  90 83 00 24 */	stw r4, 0x24(r3)
/* 80378A0C 003755EC  90 03 00 28 */	stw r0, 0x28(r3)
/* 80378A10 003755F0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80378A14 003755F4  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80378A18 003755F8  48 00 00 0C */	b lbl_80378A24
lbl_80378A1C:
/* 80378A1C 003755FC  54 87 28 34 */	slwi r7, r4, 5
/* 80378A20 00375600  4B FF FF 38 */	b lbl_80378958
lbl_80378A24:
/* 80378A24 00375604  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80378A28 00375608  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80378A2C 0037560C  38 21 00 30 */	addi r1, r1, 0x30
/* 80378A30 00375610  4E 80 00 20 */	blr 


.section .data
    .balign 8
.global lbl_80406DE0
lbl_80406DE0:
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL


.section .bss, "wa"
.global lbl_804C22E0
lbl_804C22E0:
	.skip 0x30
