.include "macros.inc"

.section .text

.global it_802C01AC
it_802C01AC:
/* 802C01AC 002BCD8C  7C 08 02 A6 */	mflr r0
/* 802C01B0 002BCD90  90 01 00 04 */	stw r0, 4(r1)
/* 802C01B4 002BCD94  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802C01B8 002BCD98  DB E1 00 78 */	stfd f31, 0x78(r1)
/* 802C01BC 002BCD9C  FF E0 08 90 */	fmr f31, f1
/* 802C01C0 002BCDA0  93 E1 00 74 */	stw r31, 0x74(r1)
/* 802C01C4 002BCDA4  93 C1 00 70 */	stw r30, 0x70(r1)
/* 802C01C8 002BCDA8  7C 7E 1B 78 */	mr r30, r3
/* 802C01CC 002BCDAC  90 A1 00 28 */	stw r5, 0x28(r1)
/* 802C01D0 002BCDB0  C0 02 D7 A8 */	lfs f0, it_804DD188@sda21(r2)
/* 802C01D4 002BCDB4  80 A4 00 00 */	lwz r5, 0(r4)
/* 802C01D8 002BCDB8  80 04 00 04 */	lwz r0, 4(r4)
/* 802C01DC 002BCDBC  90 A1 00 40 */	stw r5, 0x40(r1)
/* 802C01E0 002BCDC0  90 01 00 44 */	stw r0, 0x44(r1)
/* 802C01E4 002BCDC4  80 04 00 08 */	lwz r0, 8(r4)
/* 802C01E8 002BCDC8  38 81 00 34 */	addi r4, r1, 0x34
/* 802C01EC 002BCDCC  90 01 00 48 */	stw r0, 0x48(r1)
/* 802C01F0 002BCDD0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 802C01F4 002BCDD4  4B FA B9 75 */	bl it_8026BB68
/* 802C01F8 002BCDD8  D3 E1 00 58 */	stfs f31, 0x58(r1)
/* 802C01FC 002BCDDC  38 A0 00 00 */	li r5, 0
/* 802C0200 002BCDE0  C0 02 D7 A8 */	lfs f0, it_804DD188@sda21(r2)
/* 802C0204 002BCDE4  38 80 00 01 */	li r4, 1
/* 802C0208 002BCDE8  B0 A1 00 5C */	sth r5, 0x5c(r1)
/* 802C020C 002BCDEC  38 61 00 20 */	addi r3, r1, 0x20
/* 802C0210 002BCDF0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 802C0214 002BCDF4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 802C0218 002BCDF8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 802C021C 002BCDFC  93 C1 00 20 */	stw r30, 0x20(r1)
/* 802C0220 002BCE00  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802C0224 002BCE04  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C0228 002BCE08  88 01 00 64 */	lbz r0, 0x64(r1)
/* 802C022C 002BCE0C  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 802C0230 002BCE10  98 01 00 64 */	stb r0, 0x64(r1)
/* 802C0234 002BCE14  90 A1 00 60 */	stw r5, 0x60(r1)
/* 802C0238 002BCE18  4B FA 88 E1 */	bl Item_80268B18
/* 802C023C 002BCE1C  7C 7F 1B 79 */	or. r31, r3, r3
/* 802C0240 002BCE20  41 82 00 20 */	beq .L_802C0260
/* 802C0244 002BCE24  7F E3 FB 78 */	mr r3, r31
/* 802C0248 002BCE28  48 00 00 35 */	bl it_802C027C
/* 802C024C 002BCE2C  38 7F 00 00 */	addi r3, r31, 0
/* 802C0250 002BCE30  38 9E 00 00 */	addi r4, r30, 0
/* 802C0254 002BCE34  4B F6 5B 85 */	bl db_80225DD8
/* 802C0258 002BCE38  7F E3 FB 78 */	mr r3, r31
/* 802C025C 002BCE3C  4B FB 4E 9D */	bl it_802750F8
.L_802C0260:
/* 802C0260 002BCE40  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802C0264 002BCE44  CB E1 00 78 */	lfd f31, 0x78(r1)
/* 802C0268 002BCE48  83 E1 00 74 */	lwz r31, 0x74(r1)
/* 802C026C 002BCE4C  83 C1 00 70 */	lwz r30, 0x70(r1)
/* 802C0270 002BCE50  38 21 00 80 */	addi r1, r1, 0x80
/* 802C0274 002BCE54  7C 08 03 A6 */	mtlr r0
/* 802C0278 002BCE58  4E 80 00 20 */	blr

.global it_802C027C
it_802C027C:
/* 802C027C 002BCE5C  7C 08 02 A6 */	mflr r0
/* 802C0280 002BCE60  90 01 00 04 */	stw r0, 4(r1)
/* 802C0284 002BCE64  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802C0288 002BCE68  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802C028C 002BCE6C  7C 7F 1B 78 */	mr r31, r3
/* 802C0290 002BCE70  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 802C0294 002BCE74  80 85 00 C4 */	lwz r4, 0xc4(r5)
/* 802C0298 002BCE78  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 802C029C 002BCE7C  80 84 00 04 */	lwz r4, 4(r4)
/* 802C02A0 002BCE80  C0 24 00 00 */	lfs f1, 0(r4)
/* 802C02A4 002BCE84  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C02A8 002BCE88  D0 05 00 40 */	stfs f0, 0x40(r5)
/* 802C02AC 002BCE8C  C0 02 D7 A8 */	lfs f0, it_804DD188@sda21(r2)
/* 802C02B0 002BCE90  D0 05 00 48 */	stfs f0, 0x48(r5)
/* 802C02B4 002BCE94  D0 05 00 44 */	stfs f0, 0x44(r5)
/* 802C02B8 002BCE98  C0 24 00 04 */	lfs f1, 4(r4)
/* 802C02BC 002BCE9C  4B FB 4E 9D */	bl it_80275158
/* 802C02C0 002BCEA0  38 7F 00 00 */	addi r3, r31, 0
/* 802C02C4 002BCEA4  38 80 00 00 */	li r4, 0
/* 802C02C8 002BCEA8  38 A0 00 02 */	li r5, 2
/* 802C02CC 002BCEAC  4B FA 8B 91 */	bl Item_80268E5C
/* 802C02D0 002BCEB0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802C02D4 002BCEB4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802C02D8 002BCEB8  38 21 00 18 */	addi r1, r1, 0x18
/* 802C02DC 002BCEBC  7C 08 03 A6 */	mtlr r0
/* 802C02E0 002BCEC0  4E 80 00 20 */	blr

.global it_802C02E4
it_802C02E4:
/* 802C02E4 002BCEC4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 802C02E8 002BCEC8  C0 02 D7 AC */	lfs f0, it_804DD18C@sda21(r2)
/* 802C02EC 002BCECC  C0 23 0D 44 */	lfs f1, 0xd44(r3)
/* 802C02F0 002BCED0  EC 01 00 28 */	fsubs f0, f1, f0
/* 802C02F4 002BCED4  D0 03 0D 44 */	stfs f0, 0xd44(r3)
/* 802C02F8 002BCED8  C0 23 0D 44 */	lfs f1, 0xd44(r3)
/* 802C02FC 002BCEDC  C0 02 D7 A8 */	lfs f0, it_804DD188@sda21(r2)
/* 802C0300 002BCEE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802C0304 002BCEE4  4C 40 13 82 */	cror 2, 0, 2
/* 802C0308 002BCEE8  40 82 00 0C */	bne .L_802C0314
/* 802C030C 002BCEEC  38 60 00 01 */	li r3, 1
/* 802C0310 002BCEF0  4E 80 00 20 */	blr
.L_802C0314:
/* 802C0314 002BCEF4  38 60 00 00 */	li r3, 0
/* 802C0318 002BCEF8  4E 80 00 20 */	blr

.global it_802C031C
it_802C031C:
/* 802C031C 002BCEFC  7C 08 02 A6 */	mflr r0
/* 802C0320 002BCF00  90 01 00 04 */	stw r0, 4(r1)
/* 802C0324 002BCF04  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802C0328 002BCF08  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802C032C 002BCF0C  7C 7F 1B 78 */	mr r31, r3
/* 802C0330 002BCF10  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802C0334 002BCF14  80 84 00 CC */	lwz r4, 0xcc(r4)
/* 802C0338 002BCF18  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 802C033C 002BCF1C  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 802C0340 002BCF20  4B FB 25 21 */	bl it_80272860
/* 802C0344 002BCF24  80 8D B6 88 */	lwz r4, it_804D6D28@sda21(r13)
/* 802C0348 002BCF28  7F E3 FB 78 */	mr r3, r31
/* 802C034C 002BCF2C  C0 24 00 68 */	lfs f1, 0x68(r4)
/* 802C0350 002BCF30  4B FB 43 09 */	bl it_80274658
/* 802C0354 002BCF34  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802C0358 002BCF38  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802C035C 002BCF3C  38 21 00 18 */	addi r1, r1, 0x18
/* 802C0360 002BCF40  7C 08 03 A6 */	mtlr r0
/* 802C0364 002BCF44  4E 80 00 20 */	blr

.global it_802C0368
it_802C0368:
/* 802C0368 002BCF48  7C 08 02 A6 */	mflr r0
/* 802C036C 002BCF4C  90 01 00 04 */	stw r0, 4(r1)
/* 802C0370 002BCF50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802C0374 002BCF54  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802C0378 002BCF58  7C 7F 1B 78 */	mr r31, r3
/* 802C037C 002BCF5C  4B FA D6 25 */	bl it_8026D9A0
/* 802C0380 002BCF60  7F E3 FB 78 */	mr r3, r31
/* 802C0384 002BCF64  4B FB 74 99 */	bl it_8027781C
/* 802C0388 002BCF68  2C 03 00 00 */	cmpwi r3, 0
/* 802C038C 002BCF6C  41 82 00 EC */	beq .L_802C0478
/* 802C0390 002BCF70  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 802C0394 002BCF74  C0 02 D7 A8 */	lfs f0, it_804DD188@sda21(r2)
/* 802C0398 002BCF78  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 802C039C 002BCF7C  C0 24 00 44 */	lfs f1, 0x44(r4)
/* 802C03A0 002BCF80  EC 42 00 B2 */	fmuls f2, f2, f2
/* 802C03A4 002BCF84  80 64 00 C4 */	lwz r3, 0xc4(r4)
/* 802C03A8 002BCF88  EC 21 00 72 */	fmuls f1, f1, f1
/* 802C03AC 002BCF8C  80 FF 00 28 */	lwz r7, 0x28(r31)
/* 802C03B0 002BCF90  80 63 00 04 */	lwz r3, 4(r3)
/* 802C03B4 002BCF94  EC 82 08 2A */	fadds f4, f2, f1
/* 802C03B8 002BCF98  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 802C03BC 002BCF9C  40 81 00 60 */	ble .L_802C041C
/* 802C03C0 002BCFA0  FC 20 20 34 */	frsqrte f1, f4
/* 802C03C4 002BCFA4  C8 62 D7 B0 */	lfd f3, it_804DD190@sda21(r2)
/* 802C03C8 002BCFA8  C8 42 D7 B8 */	lfd f2, it_804DD198@sda21(r2)
/* 802C03CC 002BCFAC  FC 01 00 72 */	fmul f0, f1, f1
/* 802C03D0 002BCFB0  FC 23 00 72 */	fmul f1, f3, f1
/* 802C03D4 002BCFB4  FC 04 10 3C */	fnmsub f0, f4, f0, f2
/* 802C03D8 002BCFB8  FC 21 00 32 */	fmul f1, f1, f0
/* 802C03DC 002BCFBC  FC 01 00 72 */	fmul f0, f1, f1
/* 802C03E0 002BCFC0  FC 23 00 72 */	fmul f1, f3, f1
/* 802C03E4 002BCFC4  FC 04 10 3C */	fnmsub f0, f4, f0, f2
/* 802C03E8 002BCFC8  FC 21 00 32 */	fmul f1, f1, f0
/* 802C03EC 002BCFCC  FC 01 00 72 */	fmul f0, f1, f1
/* 802C03F0 002BCFD0  FC 23 00 72 */	fmul f1, f3, f1
/* 802C03F4 002BCFD4  FC 04 10 3C */	fnmsub f0, f4, f0, f2
/* 802C03F8 002BCFD8  FC 21 00 32 */	fmul f1, f1, f0
/* 802C03FC 002BCFDC  FC 01 00 72 */	fmul f0, f1, f1
/* 802C0400 002BCFE0  FC 23 00 72 */	fmul f1, f3, f1
/* 802C0404 002BCFE4  FC 04 10 3C */	fnmsub f0, f4, f0, f2
/* 802C0408 002BCFE8  FC 01 00 32 */	fmul f0, f1, f0
/* 802C040C 002BCFEC  FC 04 00 32 */	fmul f0, f4, f0
/* 802C0410 002BCFF0  FC 00 00 18 */	frsp f0, f0
/* 802C0414 002BCFF4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802C0418 002BCFF8  C0 81 00 20 */	lfs f4, 0x20(r1)
.L_802C041C:
/* 802C041C 002BCFFC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 802C0420 002BD000  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 802C0424 002BD004  40 80 00 0C */	bge .L_802C0430
/* 802C0428 002BD008  38 60 00 01 */	li r3, 1
/* 802C042C 002BD00C  48 00 00 50 */	b .L_802C047C
.L_802C0430:
/* 802C0430 002BD010  80 04 00 10 */	lwz r0, 0x10(r4)
/* 802C0434 002BD014  2C 00 00 69 */	cmpwi r0, 0x69
/* 802C0438 002BD018  40 82 00 24 */	bne .L_802C045C
/* 802C043C 002BD01C  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 802C0440 002BD020  38 7F 00 00 */	addi r3, r31, 0
/* 802C0444 002BD024  4C C6 31 82 */	crclr 6
/* 802C0448 002BD028  38 A0 00 01 */	li r5, 1
/* 802C044C 002BD02C  38 84 0B C0 */	addi r4, r4, 0xbc0
/* 802C0450 002BD030  38 C0 05 08 */	li r6, 0x508
/* 802C0454 002BD034  4B DA 72 9D */	bl efAsync_Spawn
/* 802C0458 002BD038  48 00 00 20 */	b .L_802C0478
.L_802C045C:
/* 802C045C 002BD03C  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 802C0460 002BD040  38 7F 00 00 */	addi r3, r31, 0
/* 802C0464 002BD044  4C C6 31 82 */	crclr 6
/* 802C0468 002BD048  38 A0 00 01 */	li r5, 1
/* 802C046C 002BD04C  38 84 0B C0 */	addi r4, r4, 0xbc0
/* 802C0470 002BD050  38 C0 04 B2 */	li r6, 0x4b2
/* 802C0474 002BD054  4B DA 72 7D */	bl efAsync_Spawn
.L_802C0478:
/* 802C0478 002BD058  38 60 00 00 */	li r3, 0
.L_802C047C:
/* 802C047C 002BD05C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802C0480 002BD060  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802C0484 002BD064  38 21 00 30 */	addi r1, r1, 0x30
/* 802C0488 002BD068  7C 08 03 A6 */	mtlr r0
/* 802C048C 002BD06C  4E 80 00 20 */	blr

.global it_802C0490
it_802C0490:
/* 802C0490 002BD070  38 60 00 01 */	li r3, 1
/* 802C0494 002BD074  4E 80 00 20 */	blr

.global it_802C0498
it_802C0498:
/* 802C0498 002BD078  7C 08 02 A6 */	mflr r0
/* 802C049C 002BD07C  90 01 00 04 */	stw r0, 4(r1)
/* 802C04A0 002BD080  94 21 FF F8 */	stwu r1, -8(r1)
/* 802C04A4 002BD084  4B FB 2B 8D */	bl it_80273030
/* 802C04A8 002BD088  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802C04AC 002BD08C  38 21 00 08 */	addi r1, r1, 8
/* 802C04B0 002BD090  7C 08 03 A6 */	mtlr r0
/* 802C04B4 002BD094  4E 80 00 20 */	blr

.global it_802C04B8
it_802C04B8:
/* 802C04B8 002BD098  38 60 00 01 */	li r3, 1
/* 802C04BC 002BD09C  4E 80 00 20 */	blr

.global it_802C04C0
it_802C04C0:
/* 802C04C0 002BD0A0  38 60 00 01 */	li r3, 1
/* 802C04C4 002BD0A4  4E 80 00 20 */	blr

.global it_802C04C8
it_802C04C8:
/* 802C04C8 002BD0A8  38 60 00 01 */	li r3, 1
/* 802C04CC 002BD0AC  4E 80 00 20 */	blr

.global it_802C04D0
it_802C04D0:
/* 802C04D0 002BD0B0  7C 08 02 A6 */	mflr r0
/* 802C04D4 002BD0B4  90 01 00 04 */	stw r0, 4(r1)
/* 802C04D8 002BD0B8  94 21 FF F8 */	stwu r1, -8(r1)
/* 802C04DC 002BD0BC  4B FB 2B 9D */	bl itColl_BounceOffShield
/* 802C04E0 002BD0C0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802C04E4 002BD0C4  38 21 00 08 */	addi r1, r1, 8
/* 802C04E8 002BD0C8  7C 08 03 A6 */	mtlr r0
/* 802C04EC 002BD0CC  4E 80 00 20 */	blr

.global it_802C04F0
it_802C04F0:
/* 802C04F0 002BD0D0  7C 08 02 A6 */	mflr r0
/* 802C04F4 002BD0D4  90 01 00 04 */	stw r0, 4(r1)
/* 802C04F8 002BD0D8  94 21 FF F8 */	stwu r1, -8(r1)
/* 802C04FC 002BD0DC  4B FA B3 99 */	bl it_8026B894
/* 802C0500 002BD0E0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802C0504 002BD0E4  38 21 00 08 */	addi r1, r1, 8
/* 802C0508 002BD0E8  7C 08 03 A6 */	mtlr r0
/* 802C050C 002BD0EC  4E 80 00 20 */	blr


.section .data
    .balign 8
.global it_803F75C0
it_803F75C0:
    .4byte 0
    .4byte it_802C02E4
    .4byte it_802C031C
    .4byte it_802C0368


.section .sdata2
    .balign 8
.global it_804DD188
it_804DD188:
    .4byte 0x00000000
.global it_804DD18C
it_804DD18C:
    .4byte 0x3F800000
.global it_804DD190
it_804DD190:
    .4byte 0x3FE00000
    .4byte 0x00000000
.global it_804DD198
it_804DD198:
    .4byte 0x40080000
    .4byte 0x00000000