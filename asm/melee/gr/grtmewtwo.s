.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global func_802221D8
func_802221D8:
/* 802221D8 0021EDB8  4E 80 00 20 */	blr 
/* 802221DC 0021EDBC  7C 08 02 A6 */	mflr r0
/* 802221E0 0021EDC0  90 01 00 04 */	stw r0, 4(r1)
/* 802221E4 0021EDC4  94 21 FF F8 */	stwu r1, -8(r1)
/* 802221E8 0021EDC8  4B FA 28 11 */	bl func_801C49F8
/* 802221EC 0021EDCC  3C 80 80 4A */	lis r4, lbl_8049E6C8@ha
/* 802221F0 0021EDD0  90 6D B4 68 */	stw r3, lbl_804D6B08@sda21(r13)
/* 802221F4 0021EDD4  38 64 E6 C8 */	addi r3, r4, lbl_8049E6C8@l
/* 802221F8 0021EDD8  38 A3 00 8C */	addi r5, r3, 0x8c
/* 802221FC 0021EDDC  88 03 00 8C */	lbz r0, 0x8c(r3)
/* 80222200 0021EDE0  38 60 00 00 */	li r3, 0
/* 80222204 0021EDE4  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 80222208 0021EDE8  98 05 00 00 */	stb r0, 0(r5)
/* 8022220C 0021EDEC  38 80 00 01 */	li r4, 1
/* 80222210 0021EDF0  38 60 00 00 */	li r3, 0
/* 80222214 0021EDF4  88 05 00 00 */	lbz r0, 0(r5)
/* 80222218 0021EDF8  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 8022221C 0021EDFC  98 05 00 00 */	stb r0, 0(r5)
/* 80222220 0021EE00  48 00 00 65 */	bl func_80222284
/* 80222224 0021EE04  38 60 00 01 */	li r3, 1
/* 80222228 0021EE08  48 00 00 5D */	bl func_80222284
/* 8022222C 0021EE0C  38 60 00 02 */	li r3, 2
/* 80222230 0021EE10  48 00 00 55 */	bl func_80222284
/* 80222234 0021EE14  4B FA 17 8D */	bl func_801C39C0
/* 80222238 0021EE18  4B FA 19 7D */	bl func_801C3BB4
/* 8022223C 0021EE1C  4B FA 1F D5 */	bl func_801C4210
/* 80222240 0021EE20  4B FA 20 6D */	bl func_801C42AC
/* 80222244 0021EE24  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80222248 0021EE28  38 21 00 08 */	addi r1, r1, 8
/* 8022224C 0021EE2C  7C 08 03 A6 */	mtlr r0
/* 80222250 0021EE30  4E 80 00 20 */	blr 
/* 80222254 0021EE34  4E 80 00 20 */	blr 
/* 80222258 0021EE38  7C 08 02 A6 */	mflr r0
/* 8022225C 0021EE3C  38 60 00 00 */	li r3, 0
/* 80222260 0021EE40  90 01 00 04 */	stw r0, 4(r1)
/* 80222264 0021EE44  94 21 FF F8 */	stwu r1, -8(r1)
/* 80222268 0021EE48  4B FA 8B 9D */	bl func_801CAE04
/* 8022226C 0021EE4C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80222270 0021EE50  38 21 00 08 */	addi r1, r1, 8
/* 80222274 0021EE54  7C 08 03 A6 */	mtlr r0
/* 80222278 0021EE58  4E 80 00 20 */	blr 
/* 8022227C 0021EE5C  38 60 00 00 */	li r3, 0
/* 80222280 0021EE60  4E 80 00 20 */	blr 

.global func_80222284
func_80222284:
/* 80222284 0021EE64  7C 08 02 A6 */	mflr r0
/* 80222288 0021EE68  90 01 00 04 */	stw r0, 4(r1)
/* 8022228C 0021EE6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80222290 0021EE70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80222294 0021EE74  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80222298 0021EE78  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8022229C 0021EE7C  93 81 00 10 */	stw r28, 0x10(r1)
/* 802222A0 0021EE80  3B 83 00 00 */	addi r28, r3, 0
/* 802222A4 0021EE84  1C 1C 00 14 */	mulli r0, r28, 0x14
/* 802222A8 0021EE88  3C 60 80 3F */	lis r3, lbl_803E8F70@ha
/* 802222AC 0021EE8C  3B E3 8F 70 */	addi r31, r3, lbl_803E8F70@l
/* 802222B0 0021EE90  38 7C 00 00 */	addi r3, r28, 0
/* 802222B4 0021EE94  7F BF 02 14 */	add r29, r31, r0
/* 802222B8 0021EE98  4B F9 F2 19 */	bl func_801C14D0
/* 802222BC 0021EE9C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802222C0 0021EEA0  41 82 00 70 */	beq lbl_80222330
/* 802222C4 0021EEA4  83 FE 00 2C */	lwz r31, 0x2c(r30)
/* 802222C8 0021EEA8  38 00 00 00 */	li r0, 0
/* 802222CC 0021EEAC  3C 60 80 1C */	lis r3, func_801C5DB0@ha
/* 802222D0 0021EEB0  90 1F 00 08 */	stw r0, 8(r31)
/* 802222D4 0021EEB4  38 83 5D B0 */	addi r4, r3, func_801C5DB0@l
/* 802222D8 0021EEB8  38 7E 00 00 */	addi r3, r30, 0
/* 802222DC 0021EEBC  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802222E0 0021EEC0  38 A0 00 03 */	li r5, 3
/* 802222E4 0021EEC4  38 C0 00 00 */	li r6, 0
/* 802222E8 0021EEC8  48 16 E3 B5 */	bl func_8039069C
/* 802222EC 0021EECC  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802222F0 0021EED0  28 00 00 00 */	cmplwi r0, 0
/* 802222F4 0021EED4  41 82 00 08 */	beq lbl_802222FC
/* 802222F8 0021EED8  90 1F 00 1C */	stw r0, 0x1c(r31)
lbl_802222FC:
/* 802222FC 0021EEDC  81 9D 00 00 */	lwz r12, 0(r29)
/* 80222300 0021EEE0  28 0C 00 00 */	cmplwi r12, 0
/* 80222304 0021EEE4  41 82 00 10 */	beq lbl_80222314
/* 80222308 0021EEE8  7D 88 03 A6 */	mtlr r12
/* 8022230C 0021EEEC  38 7E 00 00 */	addi r3, r30, 0
/* 80222310 0021EEF0  4E 80 00 21 */	blrl 
lbl_80222314:
/* 80222314 0021EEF4  80 9D 00 08 */	lwz r4, 8(r29)
/* 80222318 0021EEF8  28 04 00 00 */	cmplwi r4, 0
/* 8022231C 0021EEFC  41 82 00 2C */	beq lbl_80222348
/* 80222320 0021EF00  38 7E 00 00 */	addi r3, r30, 0
/* 80222324 0021EF04  38 A0 00 04 */	li r5, 4
/* 80222328 0021EF08  48 16 DA 2D */	bl func_8038FD54
/* 8022232C 0021EF0C  48 00 00 1C */	b lbl_80222348
lbl_80222330:
/* 80222330 0021EF10  38 DC 00 00 */	addi r6, r28, 0
/* 80222334 0021EF14  4C C6 31 82 */	crclr 6
/* 80222338 0021EF18  38 7F 00 90 */	addi r3, r31, 0x90
/* 8022233C 0021EF1C  38 9F 00 B4 */	addi r4, r31, 0xb4
/* 80222340 0021EF20  38 A0 00 C9 */	li r5, 0xc9
/* 80222344 0021EF24  48 12 33 65 */	bl OSReport
lbl_80222348:
/* 80222348 0021EF28  7F C3 F3 78 */	mr r3, r30
/* 8022234C 0021EF2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80222350 0021EF30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80222354 0021EF34  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80222358 0021EF38  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8022235C 0021EF3C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80222360 0021EF40  38 21 00 20 */	addi r1, r1, 0x20
/* 80222364 0021EF44  7C 08 03 A6 */	mtlr r0
/* 80222368 0021EF48  4E 80 00 20 */	blr 
/* 8022236C 0021EF4C  7C 08 02 A6 */	mflr r0
/* 80222370 0021EF50  38 A0 00 00 */	li r5, 0
/* 80222374 0021EF54  90 01 00 04 */	stw r0, 4(r1)
/* 80222378 0021EF58  94 21 FF F8 */	stwu r1, -8(r1)
/* 8022237C 0021EF5C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 80222380 0021EF60  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80222384 0021EF64  4B FA 5D B5 */	bl func_801C8138
/* 80222388 0021EF68  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8022238C 0021EF6C  38 21 00 08 */	addi r1, r1, 8
/* 80222390 0021EF70  7C 08 03 A6 */	mtlr r0
/* 80222394 0021EF74  4E 80 00 20 */	blr 
/* 80222398 0021EF78  38 60 00 00 */	li r3, 0
/* 8022239C 0021EF7C  4E 80 00 20 */	blr 
/* 802223A0 0021EF80  4E 80 00 20 */	blr 
/* 802223A4 0021EF84  4E 80 00 20 */	blr 
/* 802223A8 0021EF88  7C 08 02 A6 */	mflr r0
/* 802223AC 0021EF8C  90 01 00 04 */	stw r0, 4(r1)
/* 802223B0 0021EF90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802223B4 0021EF94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802223B8 0021EF98  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802223BC 0021EF9C  7C 7E 1B 78 */	mr r30, r3
/* 802223C0 0021EFA0  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802223C4 0021EFA4  80 63 00 28 */	lwz r3, 0x28(r3)
/* 802223C8 0021EFA8  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 802223CC 0021EFAC  4B FA 0B 05 */	bl func_801C2ED0
/* 802223D0 0021EFB0  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 802223D4 0021EFB4  38 7E 00 00 */	addi r3, r30, 0
/* 802223D8 0021EFB8  38 A0 00 00 */	li r5, 0
/* 802223DC 0021EFBC  4B FA 5D 5D */	bl func_801C8138
/* 802223E0 0021EFC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802223E4 0021EFC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802223E8 0021EFC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802223EC 0021EFCC  38 21 00 20 */	addi r1, r1, 0x20
/* 802223F0 0021EFD0  7C 08 03 A6 */	mtlr r0
/* 802223F4 0021EFD4  4E 80 00 20 */	blr 
/* 802223F8 0021EFD8  38 60 00 00 */	li r3, 0
/* 802223FC 0021EFDC  4E 80 00 20 */	blr 
/* 80222400 0021EFE0  7C 08 02 A6 */	mflr r0
/* 80222404 0021EFE4  90 01 00 04 */	stw r0, 4(r1)
/* 80222408 0021EFE8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8022240C 0021EFEC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80222410 0021EFF0  7C 7F 1B 78 */	mr r31, r3
/* 80222414 0021EFF4  4B DE F1 E1 */	bl func_800115F4
/* 80222418 0021EFF8  7F E3 FB 78 */	mr r3, r31
/* 8022241C 0021EFFC  4B FA 0B C5 */	bl func_801C2FE0
/* 80222420 0021F000  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80222424 0021F004  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80222428 0021F008  38 21 00 18 */	addi r1, r1, 0x18
/* 8022242C 0021F00C  7C 08 03 A6 */	mtlr r0
/* 80222430 0021F010  4E 80 00 20 */	blr 
/* 80222434 0021F014  4E 80 00 20 */	blr 
/* 80222438 0021F018  7C 08 02 A6 */	mflr r0
/* 8022243C 0021F01C  90 01 00 04 */	stw r0, 4(r1)
/* 80222440 0021F020  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80222444 0021F024  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80222448 0021F028  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8022244C 0021F02C  7C 7E 1B 78 */	mr r30, r3
/* 80222450 0021F030  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 80222454 0021F034  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80222458 0021F038  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8022245C 0021F03C  4B FA 0A 75 */	bl func_801C2ED0
/* 80222460 0021F040  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80222464 0021F044  38 7E 00 00 */	addi r3, r30, 0
/* 80222468 0021F048  38 A0 00 00 */	li r5, 0
/* 8022246C 0021F04C  4B FA 5C CD */	bl func_801C8138
/* 80222470 0021F050  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80222474 0021F054  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80222478 0021F058  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8022247C 0021F05C  38 21 00 20 */	addi r1, r1, 0x20
/* 80222480 0021F060  7C 08 03 A6 */	mtlr r0
/* 80222484 0021F064  4E 80 00 20 */	blr 
/* 80222488 0021F068  38 60 00 00 */	li r3, 0
/* 8022248C 0021F06C  4E 80 00 20 */	blr 
/* 80222490 0021F070  7C 08 02 A6 */	mflr r0
/* 80222494 0021F074  90 01 00 04 */	stw r0, 4(r1)
/* 80222498 0021F078  94 21 FF F8 */	stwu r1, -8(r1)
/* 8022249C 0021F07C  4B FA 0B 45 */	bl func_801C2FE0
/* 802224A0 0021F080  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802224A4 0021F084  38 21 00 08 */	addi r1, r1, 8
/* 802224A8 0021F088  7C 08 03 A6 */	mtlr r0
/* 802224AC 0021F08C  4E 80 00 20 */	blr 
/* 802224B0 0021F090  4E 80 00 20 */	blr 
/* 802224B4 0021F094  7C 08 02 A6 */	mflr r0
/* 802224B8 0021F098  90 01 00 04 */	stw r0, 4(r1)
/* 802224BC 0021F09C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802224C0 0021F0A0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802224C4 0021F0A4  3B E3 00 00 */	addi r31, r3, 0
/* 802224C8 0021F0A8  2C 1F FF FF */	cmpwi r31, -1
/* 802224CC 0021F0AC  41 82 00 E4 */	beq lbl_802225B0
/* 802224D0 0021F0B0  7F E3 FB 78 */	mr r3, r31
/* 802224D4 0021F0B4  4B E3 46 99 */	bl func_80056B6C
/* 802224D8 0021F0B8  2C 03 FF FF */	cmpwi r3, -1
/* 802224DC 0021F0BC  41 82 00 D4 */	beq lbl_802225B0
/* 802224E0 0021F0C0  2C 03 00 00 */	cmpwi r3, 0
/* 802224E4 0021F0C4  40 82 00 64 */	bne lbl_80222548
/* 802224E8 0021F0C8  7F E3 FB 78 */	mr r3, r31
/* 802224EC 0021F0CC  4B E3 27 81 */	bl func_80054C6C
/* 802224F0 0021F0D0  2C 03 00 01 */	cmpwi r3, 1
/* 802224F4 0021F0D4  40 82 00 10 */	bne lbl_80222504
/* 802224F8 0021F0D8  80 6D B4 68 */	lwz r3, lbl_804D6B08@sda21(r13)
/* 802224FC 0021F0DC  80 63 00 00 */	lwz r3, 0(r3)
/* 80222500 0021F0E0  48 00 00 B4 */	b lbl_802225B4
lbl_80222504:
/* 80222504 0021F0E4  2C 03 00 02 */	cmpwi r3, 2
/* 80222508 0021F0E8  40 82 00 10 */	bne lbl_80222518
/* 8022250C 0021F0EC  80 6D B4 68 */	lwz r3, lbl_804D6B08@sda21(r13)
/* 80222510 0021F0F0  80 63 00 04 */	lwz r3, 4(r3)
/* 80222514 0021F0F4  48 00 00 A0 */	b lbl_802225B4
lbl_80222518:
/* 80222518 0021F0F8  2C 03 00 04 */	cmpwi r3, 4
/* 8022251C 0021F0FC  40 82 00 10 */	bne lbl_8022252C
/* 80222520 0021F100  80 6D B4 68 */	lwz r3, lbl_804D6B08@sda21(r13)
/* 80222524 0021F104  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80222528 0021F108  48 00 00 8C */	b lbl_802225B4
lbl_8022252C:
/* 8022252C 0021F10C  2C 03 00 08 */	cmpwi r3, 8
/* 80222530 0021F110  40 82 00 10 */	bne lbl_80222540
/* 80222534 0021F114  80 6D B4 68 */	lwz r3, lbl_804D6B08@sda21(r13)
/* 80222538 0021F118  80 63 00 08 */	lwz r3, 8(r3)
/* 8022253C 0021F11C  48 00 00 78 */	b lbl_802225B4
lbl_80222540:
/* 80222540 0021F120  38 60 00 00 */	li r3, 0
/* 80222544 0021F124  48 00 00 70 */	b lbl_802225B4
lbl_80222548:
/* 80222548 0021F128  2C 03 00 01 */	cmpwi r3, 1
/* 8022254C 0021F12C  40 82 00 64 */	bne lbl_802225B0
/* 80222550 0021F130  7F E3 FB 78 */	mr r3, r31
/* 80222554 0021F134  4B E3 27 19 */	bl func_80054C6C
/* 80222558 0021F138  2C 03 00 01 */	cmpwi r3, 1
/* 8022255C 0021F13C  40 82 00 10 */	bne lbl_8022256C
/* 80222560 0021F140  80 6D B4 68 */	lwz r3, lbl_804D6B08@sda21(r13)
/* 80222564 0021F144  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80222568 0021F148  48 00 00 4C */	b lbl_802225B4
lbl_8022256C:
/* 8022256C 0021F14C  2C 03 00 02 */	cmpwi r3, 2
/* 80222570 0021F150  40 82 00 10 */	bne lbl_80222580
/* 80222574 0021F154  80 6D B4 68 */	lwz r3, lbl_804D6B08@sda21(r13)
/* 80222578 0021F158  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8022257C 0021F15C  48 00 00 38 */	b lbl_802225B4
lbl_80222580:
/* 80222580 0021F160  2C 03 00 04 */	cmpwi r3, 4
/* 80222584 0021F164  40 82 00 10 */	bne lbl_80222594
/* 80222588 0021F168  80 6D B4 68 */	lwz r3, lbl_804D6B08@sda21(r13)
/* 8022258C 0021F16C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80222590 0021F170  48 00 00 24 */	b lbl_802225B4
lbl_80222594:
/* 80222594 0021F174  2C 03 00 08 */	cmpwi r3, 8
/* 80222598 0021F178  40 82 00 10 */	bne lbl_802225A8
/* 8022259C 0021F17C  80 6D B4 68 */	lwz r3, lbl_804D6B08@sda21(r13)
/* 802225A0 0021F180  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802225A4 0021F184  48 00 00 10 */	b lbl_802225B4
lbl_802225A8:
/* 802225A8 0021F188  38 60 00 00 */	li r3, 0
/* 802225AC 0021F18C  48 00 00 08 */	b lbl_802225B4
lbl_802225B0:
/* 802225B0 0021F190  38 60 00 00 */	li r3, 0
lbl_802225B4:
/* 802225B4 0021F194  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802225B8 0021F198  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802225BC 0021F19C  38 21 00 18 */	addi r1, r1, 0x18
/* 802225C0 0021F1A0  7C 08 03 A6 */	mtlr r0
/* 802225C4 0021F1A4  4E 80 00 20 */	blr 
/* 802225C8 0021F1A8  38 60 00 01 */	li r3, 1
/* 802225CC 0021F1AC  4E 80 00 20 */	blr 
