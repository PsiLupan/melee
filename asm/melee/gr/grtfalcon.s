.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global func_8021FC60
func_8021FC60:
/* 8021FC60 0021C840  4E 80 00 20 */	blr 
.global lbl_8021FC64
lbl_8021FC64:
/* 8021FC64 0021C844  7C 08 02 A6 */	mflr r0
/* 8021FC68 0021C848  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 8021FC6C 0021C84C  90 01 00 04 */	stw r0, 4(r1)
/* 8021FC70 0021C850  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 8021FC74 0021C854  38 A3 00 8C */	addi r5, r3, 0x8c
/* 8021FC78 0021C858  94 21 FF F8 */	stwu r1, -8(r1)
/* 8021FC7C 0021C85C  38 80 00 01 */	li r4, 1
/* 8021FC80 0021C860  88 03 00 8C */	lbz r0, 0x8c(r3)
/* 8021FC84 0021C864  38 60 00 00 */	li r3, 0
/* 8021FC88 0021C868  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8021FC8C 0021C86C  98 05 00 00 */	stb r0, 0(r5)
/* 8021FC90 0021C870  38 60 00 00 */	li r3, 0
/* 8021FC94 0021C874  88 05 00 00 */	lbz r0, 0(r5)
/* 8021FC98 0021C878  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 8021FC9C 0021C87C  98 05 00 00 */	stb r0, 0(r5)
/* 8021FCA0 0021C880  48 00 00 65 */	bl func_8021FD04
/* 8021FCA4 0021C884  38 60 00 01 */	li r3, 1
/* 8021FCA8 0021C888  48 00 00 5D */	bl func_8021FD04
/* 8021FCAC 0021C88C  38 60 00 02 */	li r3, 2
/* 8021FCB0 0021C890  48 00 00 55 */	bl func_8021FD04
/* 8021FCB4 0021C894  4B FA 3D 0D */	bl func_801C39C0
/* 8021FCB8 0021C898  4B FA 3E FD */	bl func_801C3BB4
/* 8021FCBC 0021C89C  4B FA 45 55 */	bl func_801C4210
/* 8021FCC0 0021C8A0  4B FA 45 ED */	bl func_801C42AC
/* 8021FCC4 0021C8A4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8021FCC8 0021C8A8  38 21 00 08 */	addi r1, r1, 8
/* 8021FCCC 0021C8AC  7C 08 03 A6 */	mtlr r0
/* 8021FCD0 0021C8B0  4E 80 00 20 */	blr 
.global lbl_8021FCD4
lbl_8021FCD4:
/* 8021FCD4 0021C8B4  4E 80 00 20 */	blr 
.global lbl_8021FCD8
lbl_8021FCD8:
/* 8021FCD8 0021C8B8  7C 08 02 A6 */	mflr r0
/* 8021FCDC 0021C8BC  38 60 00 00 */	li r3, 0
/* 8021FCE0 0021C8C0  90 01 00 04 */	stw r0, 4(r1)
/* 8021FCE4 0021C8C4  94 21 FF F8 */	stwu r1, -8(r1)
/* 8021FCE8 0021C8C8  4B FA B1 1D */	bl func_801CAE04
/* 8021FCEC 0021C8CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8021FCF0 0021C8D0  38 21 00 08 */	addi r1, r1, 8
/* 8021FCF4 0021C8D4  7C 08 03 A6 */	mtlr r0
/* 8021FCF8 0021C8D8  4E 80 00 20 */	blr 
.global lbl_8021FCFC
lbl_8021FCFC:
/* 8021FCFC 0021C8DC  38 60 00 00 */	li r3, 0
/* 8021FD00 0021C8E0  4E 80 00 20 */	blr 

.global func_8021FD04
func_8021FD04:
/* 8021FD04 0021C8E4  7C 08 02 A6 */	mflr r0
/* 8021FD08 0021C8E8  90 01 00 04 */	stw r0, 4(r1)
/* 8021FD0C 0021C8EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021FD10 0021C8F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8021FD14 0021C8F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8021FD18 0021C8F8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8021FD1C 0021C8FC  93 81 00 10 */	stw r28, 0x10(r1)
/* 8021FD20 0021C900  3B 83 00 00 */	addi r28, r3, 0
/* 8021FD24 0021C904  1C 1C 00 14 */	mulli r0, r28, 0x14
/* 8021FD28 0021C908  3C 60 80 3F */	lis r3, lbl_803E8608@ha
/* 8021FD2C 0021C90C  3B E3 86 08 */	addi r31, r3, lbl_803E8608@l
/* 8021FD30 0021C910  38 7C 00 00 */	addi r3, r28, 0
/* 8021FD34 0021C914  7F BF 02 14 */	add r29, r31, r0
/* 8021FD38 0021C918  4B FA 17 99 */	bl func_801C14D0
/* 8021FD3C 0021C91C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8021FD40 0021C920  41 82 00 70 */	beq lbl_8021FDB0
/* 8021FD44 0021C924  83 FE 00 2C */	lwz r31, 0x2c(r30)
/* 8021FD48 0021C928  38 00 00 00 */	li r0, 0
/* 8021FD4C 0021C92C  3C 60 80 1C */	lis r3, func_801C5DB0@ha
/* 8021FD50 0021C930  90 1F 00 08 */	stw r0, 8(r31)
/* 8021FD54 0021C934  38 83 5D B0 */	addi r4, r3, func_801C5DB0@l
/* 8021FD58 0021C938  38 7E 00 00 */	addi r3, r30, 0
/* 8021FD5C 0021C93C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8021FD60 0021C940  38 A0 00 03 */	li r5, 3
/* 8021FD64 0021C944  38 C0 00 00 */	li r6, 0
/* 8021FD68 0021C948  48 17 09 35 */	bl func_8039069C
/* 8021FD6C 0021C94C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8021FD70 0021C950  28 00 00 00 */	cmplwi r0, 0
/* 8021FD74 0021C954  41 82 00 08 */	beq lbl_8021FD7C
/* 8021FD78 0021C958  90 1F 00 1C */	stw r0, 0x1c(r31)
lbl_8021FD7C:
/* 8021FD7C 0021C95C  81 9D 00 00 */	lwz r12, 0(r29)
/* 8021FD80 0021C960  28 0C 00 00 */	cmplwi r12, 0
/* 8021FD84 0021C964  41 82 00 10 */	beq lbl_8021FD94
/* 8021FD88 0021C968  7D 88 03 A6 */	mtlr r12
/* 8021FD8C 0021C96C  38 7E 00 00 */	addi r3, r30, 0
/* 8021FD90 0021C970  4E 80 00 21 */	blrl 
lbl_8021FD94:
/* 8021FD94 0021C974  80 9D 00 08 */	lwz r4, 8(r29)
/* 8021FD98 0021C978  28 04 00 00 */	cmplwi r4, 0
/* 8021FD9C 0021C97C  41 82 00 2C */	beq lbl_8021FDC8
/* 8021FDA0 0021C980  38 7E 00 00 */	addi r3, r30, 0
/* 8021FDA4 0021C984  38 A0 00 04 */	li r5, 4
/* 8021FDA8 0021C988  48 16 FF AD */	bl func_8038FD54
/* 8021FDAC 0021C98C  48 00 00 1C */	b lbl_8021FDC8
lbl_8021FDB0:
/* 8021FDB0 0021C990  38 DC 00 00 */	addi r6, r28, 0
/* 8021FDB4 0021C994  4C C6 31 82 */	crclr 6
/* 8021FDB8 0021C998  38 7F 00 90 */	addi r3, r31, 0x90
/* 8021FDBC 0021C99C  38 9F 00 B4 */	addi r4, r31, 0xb4
/* 8021FDC0 0021C9A0  38 A0 00 D7 */	li r5, 0xd7
/* 8021FDC4 0021C9A4  48 12 58 E5 */	bl OSReport
lbl_8021FDC8:
/* 8021FDC8 0021C9A8  7F C3 F3 78 */	mr r3, r30
/* 8021FDCC 0021C9AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021FDD0 0021C9B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8021FDD4 0021C9B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8021FDD8 0021C9B8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8021FDDC 0021C9BC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8021FDE0 0021C9C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8021FDE4 0021C9C4  7C 08 03 A6 */	mtlr r0
/* 8021FDE8 0021C9C8  4E 80 00 20 */	blr 
.global lbl_8021FDEC
lbl_8021FDEC:
/* 8021FDEC 0021C9CC  7C 08 02 A6 */	mflr r0
/* 8021FDF0 0021C9D0  38 A0 00 00 */	li r5, 0
/* 8021FDF4 0021C9D4  90 01 00 04 */	stw r0, 4(r1)
/* 8021FDF8 0021C9D8  94 21 FF F8 */	stwu r1, -8(r1)
/* 8021FDFC 0021C9DC  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 8021FE00 0021C9E0  80 84 00 14 */	lwz r4, 0x14(r4)
/* 8021FE04 0021C9E4  4B FA 83 35 */	bl func_801C8138
/* 8021FE08 0021C9E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8021FE0C 0021C9EC  38 21 00 08 */	addi r1, r1, 8
/* 8021FE10 0021C9F0  7C 08 03 A6 */	mtlr r0
/* 8021FE14 0021C9F4  4E 80 00 20 */	blr 
.global lbl_8021FE18
lbl_8021FE18:
/* 8021FE18 0021C9F8  38 60 00 00 */	li r3, 0
/* 8021FE1C 0021C9FC  4E 80 00 20 */	blr 
.global lbl_8021FE20
lbl_8021FE20:
/* 8021FE20 0021CA00  4E 80 00 20 */	blr 
.global lbl_8021FE24
lbl_8021FE24:
/* 8021FE24 0021CA04  4E 80 00 20 */	blr 
.global lbl_8021FE28
lbl_8021FE28:
/* 8021FE28 0021CA08  7C 08 02 A6 */	mflr r0
/* 8021FE2C 0021CA0C  90 01 00 04 */	stw r0, 4(r1)
/* 8021FE30 0021CA10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021FE34 0021CA14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8021FE38 0021CA18  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8021FE3C 0021CA1C  7C 7E 1B 78 */	mr r30, r3
/* 8021FE40 0021CA20  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 8021FE44 0021CA24  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8021FE48 0021CA28  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8021FE4C 0021CA2C  4B FA 30 85 */	bl func_801C2ED0
/* 8021FE50 0021CA30  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8021FE54 0021CA34  38 7E 00 00 */	addi r3, r30, 0
/* 8021FE58 0021CA38  38 A0 00 00 */	li r5, 0
/* 8021FE5C 0021CA3C  4B FA 82 DD */	bl func_801C8138
/* 8021FE60 0021CA40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021FE64 0021CA44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8021FE68 0021CA48  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8021FE6C 0021CA4C  38 21 00 20 */	addi r1, r1, 0x20
/* 8021FE70 0021CA50  7C 08 03 A6 */	mtlr r0
/* 8021FE74 0021CA54  4E 80 00 20 */	blr 
.global lbl_8021FE78
lbl_8021FE78:
/* 8021FE78 0021CA58  38 60 00 00 */	li r3, 0
/* 8021FE7C 0021CA5C  4E 80 00 20 */	blr 
.global lbl_8021FE80
lbl_8021FE80:
/* 8021FE80 0021CA60  7C 08 02 A6 */	mflr r0
/* 8021FE84 0021CA64  90 01 00 04 */	stw r0, 4(r1)
/* 8021FE88 0021CA68  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8021FE8C 0021CA6C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8021FE90 0021CA70  7C 7F 1B 78 */	mr r31, r3
/* 8021FE94 0021CA74  4B DF 17 61 */	bl func_800115F4
/* 8021FE98 0021CA78  7F E3 FB 78 */	mr r3, r31
/* 8021FE9C 0021CA7C  4B FA 31 45 */	bl func_801C2FE0
/* 8021FEA0 0021CA80  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8021FEA4 0021CA84  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8021FEA8 0021CA88  38 21 00 18 */	addi r1, r1, 0x18
/* 8021FEAC 0021CA8C  7C 08 03 A6 */	mtlr r0
/* 8021FEB0 0021CA90  4E 80 00 20 */	blr 
.global lbl_8021FEB4
lbl_8021FEB4:
/* 8021FEB4 0021CA94  4E 80 00 20 */	blr 
.global lbl_8021FEB8
lbl_8021FEB8:
/* 8021FEB8 0021CA98  7C 08 02 A6 */	mflr r0
/* 8021FEBC 0021CA9C  90 01 00 04 */	stw r0, 4(r1)
/* 8021FEC0 0021CAA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021FEC4 0021CAA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8021FEC8 0021CAA8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8021FECC 0021CAAC  7C 7E 1B 78 */	mr r30, r3
/* 8021FED0 0021CAB0  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 8021FED4 0021CAB4  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8021FED8 0021CAB8  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8021FEDC 0021CABC  4B FA 2F F5 */	bl func_801C2ED0
/* 8021FEE0 0021CAC0  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8021FEE4 0021CAC4  38 7E 00 00 */	addi r3, r30, 0
/* 8021FEE8 0021CAC8  38 A0 00 00 */	li r5, 0
/* 8021FEEC 0021CACC  4B FA 82 4D */	bl func_801C8138
/* 8021FEF0 0021CAD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021FEF4 0021CAD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8021FEF8 0021CAD8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8021FEFC 0021CADC  38 21 00 20 */	addi r1, r1, 0x20
/* 8021FF00 0021CAE0  7C 08 03 A6 */	mtlr r0
/* 8021FF04 0021CAE4  4E 80 00 20 */	blr 
.global lbl_8021FF08
lbl_8021FF08:
/* 8021FF08 0021CAE8  38 60 00 00 */	li r3, 0
/* 8021FF0C 0021CAEC  4E 80 00 20 */	blr 
.global lbl_8021FF10
lbl_8021FF10:
/* 8021FF10 0021CAF0  7C 08 02 A6 */	mflr r0
/* 8021FF14 0021CAF4  90 01 00 04 */	stw r0, 4(r1)
/* 8021FF18 0021CAF8  94 21 FF F8 */	stwu r1, -8(r1)
/* 8021FF1C 0021CAFC  4B FA 30 C5 */	bl func_801C2FE0
/* 8021FF20 0021CB00  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8021FF24 0021CB04  38 21 00 08 */	addi r1, r1, 8
/* 8021FF28 0021CB08  7C 08 03 A6 */	mtlr r0
/* 8021FF2C 0021CB0C  4E 80 00 20 */	blr 
.global lbl_8021FF30
lbl_8021FF30:
/* 8021FF30 0021CB10  4E 80 00 20 */	blr 
.global lbl_8021FF34
lbl_8021FF34:
/* 8021FF34 0021CB14  38 60 00 00 */	li r3, 0
/* 8021FF38 0021CB18  4E 80 00 20 */	blr 
.global lbl_8021FF3C
lbl_8021FF3C:
/* 8021FF3C 0021CB1C  38 60 00 01 */	li r3, 1
/* 8021FF40 0021CB20  4E 80 00 20 */	blr 