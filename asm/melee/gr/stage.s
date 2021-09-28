.include "macros.inc"

.section .text  # 0x80224A54 - 0x80225370

.global func_80224A54
func_80224A54:
/* 80224A54 00221634  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224A58 00221638  C4 23 E6 C8 */	lfsu f1, lbl_8049E6C8@l(r3)
/* 80224A5C 0022163C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80224A60 00221640  EC 21 00 2A */	fadds f1, f1, f0
/* 80224A64 00221644  4E 80 00 20 */	blr 

.global func_80224A68
func_80224A68:
/* 80224A68 00221648  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224A6C 0022164C  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224A70 00221650  C0 23 00 04 */	lfs f1, 4(r3)
/* 80224A74 00221654  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80224A78 00221658  EC 21 00 2A */	fadds f1, f1, f0
/* 80224A7C 0022165C  4E 80 00 20 */	blr 

.global func_80224A80
func_80224A80:
/* 80224A80 00221660  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224A84 00221664  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224A88 00221668  C0 23 00 08 */	lfs f1, 8(r3)
/* 80224A8C 0022166C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80224A90 00221670  EC 21 00 2A */	fadds f1, f1, f0
/* 80224A94 00221674  4E 80 00 20 */	blr 

.global func_80224A98
func_80224A98:
/* 80224A98 00221678  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224A9C 0022167C  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224AA0 00221680  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80224AA4 00221684  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80224AA8 00221688  EC 21 00 2A */	fadds f1, f1, f0
/* 80224AAC 0022168C  4E 80 00 20 */	blr 

.global func_80224AB0
func_80224AB0:
/* 80224AB0 00221690  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224AB4 00221694  C0 22 C2 F0 */	lfs f1, lbl_804DBCD0@sda21(r2)
/* 80224AB8 00221698  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224ABC 0022169C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80224AC0 002216A0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80224AC4 002216A4  4E 80 00 20 */	blr 

.global func_80224AC8
func_80224AC8:
/* 80224AC8 002216A8  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224ACC 002216AC  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224AD0 002216B0  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 80224AD4 002216B4  4E 80 00 20 */	blr 

.global func_80224AD8
func_80224AD8:
/* 80224AD8 002216B8  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224ADC 002216BC  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224AE0 002216C0  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 80224AE4 002216C4  4E 80 00 20 */	blr 

.global func_80224AE8
func_80224AE8:
/* 80224AE8 002216C8  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224AEC 002216CC  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224AF0 002216D0  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 80224AF4 002216D4  4E 80 00 20 */	blr 

.global func_80224AF8
func_80224AF8:
/* 80224AF8 002216D8  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224AFC 002216DC  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224B00 002216E0  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80224B04 002216E4  4E 80 00 20 */	blr 

.global func_80224B08
func_80224B08:
/* 80224B08 002216E8  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224B0C 002216EC  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224B10 002216F0  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80224B14 002216F4  4E 80 00 20 */	blr 

.global func_80224B18
func_80224B18:
/* 80224B18 002216F8  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224B1C 002216FC  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224B20 00221700  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80224B24 00221704  4E 80 00 20 */	blr 

.global func_80224B28
func_80224B28:
/* 80224B28 00221708  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224B2C 0022170C  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224B30 00221710  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 80224B34 00221714  4E 80 00 20 */	blr 

.global func_80224B38
func_80224B38:
/* 80224B38 00221718  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224B3C 0022171C  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224B40 00221720  C0 23 00 78 */	lfs f1, 0x78(r3)
/* 80224B44 00221724  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80224B48 00221728  EC 21 00 2A */	fadds f1, f1, f0
/* 80224B4C 0022172C  4E 80 00 20 */	blr 

.global func_80224B50
func_80224B50:
/* 80224B50 00221730  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224B54 00221734  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224B58 00221738  C0 23 00 74 */	lfs f1, 0x74(r3)
/* 80224B5C 0022173C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80224B60 00221740  EC 21 00 2A */	fadds f1, f1, f0
/* 80224B64 00221744  4E 80 00 20 */	blr 

.global func_80224B68
func_80224B68:
/* 80224B68 00221748  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224B6C 0022174C  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224B70 00221750  C0 23 00 7C */	lfs f1, 0x7c(r3)
/* 80224B74 00221754  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80224B78 00221758  EC 21 00 2A */	fadds f1, f1, f0
/* 80224B7C 0022175C  4E 80 00 20 */	blr 

.global func_80224B80
func_80224B80:
/* 80224B80 00221760  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224B84 00221764  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224B88 00221768  C0 23 00 80 */	lfs f1, 0x80(r3)
/* 80224B8C 0022176C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80224B90 00221770  EC 21 00 2A */	fadds f1, f1, f0
/* 80224B94 00221774  4E 80 00 20 */	blr 

.global func_80224B98
func_80224B98:
/* 80224B98 00221778  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224B9C 0022177C  C0 42 C2 F4 */	lfs f2, lbl_804DBCD4@sda21(r2)
/* 80224BA0 00221780  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224BA4 00221784  C0 63 00 14 */	lfs f3, 0x14(r3)
/* 80224BA8 00221788  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80224BAC 0022178C  C0 03 00 80 */	lfs f0, 0x80(r3)
/* 80224BB0 00221790  EC 21 18 2A */	fadds f1, f1, f3
/* 80224BB4 00221794  EC 00 18 2A */	fadds f0, f0, f3
/* 80224BB8 00221798  EC 01 00 2A */	fadds f0, f1, f0
/* 80224BBC 0022179C  EC 22 00 32 */	fmuls f1, f2, f0
/* 80224BC0 002217A0  4E 80 00 20 */	blr 

.global func_80224BC4
func_80224BC4:
/* 80224BC4 002217A4  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224BC8 002217A8  C0 42 C2 F4 */	lfs f2, lbl_804DBCD4@sda21(r2)
/* 80224BCC 002217AC  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224BD0 002217B0  C0 63 00 14 */	lfs f3, 0x14(r3)
/* 80224BD4 002217B4  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80224BD8 002217B8  C0 03 00 80 */	lfs f0, 0x80(r3)
/* 80224BDC 002217BC  EC 21 18 2A */	fadds f1, f1, f3
/* 80224BE0 002217C0  EC 00 18 2A */	fadds f0, f0, f3
/* 80224BE4 002217C4  EC 01 00 2A */	fadds f0, f1, f0
/* 80224BE8 002217C8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80224BEC 002217CC  EC 01 00 2A */	fadds f0, f1, f0
/* 80224BF0 002217D0  EC 22 00 32 */	fmuls f1, f2, f0
/* 80224BF4 002217D4  4E 80 00 20 */	blr 

.global func_80224BF8
func_80224BF8:
/* 80224BF8 002217D8  3C 80 80 4A */	lis r4, lbl_8049E6C8@ha
/* 80224BFC 002217DC  38 84 E6 C8 */	addi r4, r4, lbl_8049E6C8@l
/* 80224C00 002217E0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80224C04 002217E4  D0 03 00 00 */	stfs f0, 0(r3)
/* 80224C08 002217E8  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80224C0C 002217EC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80224C10 002217F0  C0 02 C2 F8 */	lfs f0, lbl_804DBCD8@sda21(r2)
/* 80224C14 002217F4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80224C18 002217F8  4E 80 00 20 */	blr 

.global func_80224C1C
func_80224C1C:
/* 80224C1C 002217FC  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224C20 00221800  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224C24 00221804  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 80224C28 00221808  4E 80 00 20 */	blr 

.global func_80224C2C
func_80224C2C:
/* 80224C2C 0022180C  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224C30 00221810  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224C34 00221814  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 80224C38 00221818  4E 80 00 20 */	blr 

.global func_80224C3C
func_80224C3C:
/* 80224C3C 0022181C  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224C40 00221820  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224C44 00221824  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 80224C48 00221828  4E 80 00 20 */	blr 

.global func_80224C4C
func_80224C4C:
/* 80224C4C 0022182C  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224C50 00221830  C0 22 C2 F0 */	lfs f1, lbl_804DBCD0@sda21(r2)
/* 80224C54 00221834  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224C58 00221838  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 80224C5C 0022183C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80224C60 00221840  4E 80 00 20 */	blr 

.global func_80224C64
func_80224C64:
/* 80224C64 00221844  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224C68 00221848  C0 22 C2 F0 */	lfs f1, lbl_804DBCD0@sda21(r2)
/* 80224C6C 0022184C  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224C70 00221850  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80224C74 00221854  EC 21 00 32 */	fmuls f1, f1, f0
/* 80224C78 00221858  4E 80 00 20 */	blr 

.global func_80224C7C
func_80224C7C:
/* 80224C7C 0022185C  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224C80 00221860  C0 22 C2 F0 */	lfs f1, lbl_804DBCD0@sda21(r2)
/* 80224C84 00221864  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224C88 00221868  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 80224C8C 0022186C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80224C90 00221870  4E 80 00 20 */	blr 

.global func_80224C94
func_80224C94:
/* 80224C94 00221874  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224C98 00221878  C0 22 C2 F0 */	lfs f1, lbl_804DBCD0@sda21(r2)
/* 80224C9C 0022187C  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224CA0 00221880  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 80224CA4 00221884  EC 21 00 32 */	fmuls f1, f1, f0
/* 80224CA8 00221888  4E 80 00 20 */	blr 

.global func_80224CAC
func_80224CAC:
/* 80224CAC 0022188C  7C 08 02 A6 */	mflr r0
/* 80224CB0 00221890  3C 80 80 3C */	lis r4, lbl_803B84C8@ha
/* 80224CB4 00221894  90 01 00 04 */	stw r0, 4(r1)
/* 80224CB8 00221898  38 E4 84 C8 */	addi r7, r4, lbl_803B84C8@l
/* 80224CBC 0022189C  3C 80 80 4A */	lis r4, lbl_8049E6C8@ha
/* 80224CC0 002218A0  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80224CC4 002218A4  38 C4 E6 C8 */	addi r6, r4, lbl_8049E6C8@l
/* 80224CC8 002218A8  93 E1 00 34 */	stw r31, 0x34(r1)
/* 80224CCC 002218AC  3B E3 00 00 */	addi r31, r3, 0
/* 80224CD0 002218B0  38 61 00 24 */	addi r3, r1, 0x24
/* 80224CD4 002218B4  80 A7 00 00 */	lwz r5, 0(r7)
/* 80224CD8 002218B8  38 81 00 18 */	addi r4, r1, 0x18
/* 80224CDC 002218BC  80 07 00 04 */	lwz r0, 4(r7)
/* 80224CE0 002218C0  90 A1 00 24 */	stw r5, 0x24(r1)
/* 80224CE4 002218C4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80224CE8 002218C8  80 07 00 08 */	lwz r0, 8(r7)
/* 80224CEC 002218CC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80224CF0 002218D0  80 A6 00 5C */	lwz r5, 0x5c(r6)
/* 80224CF4 002218D4  80 06 00 60 */	lwz r0, 0x60(r6)
/* 80224CF8 002218D8  90 BF 00 00 */	stw r5, 0(r31)
/* 80224CFC 002218DC  90 1F 00 04 */	stw r0, 4(r31)
/* 80224D00 002218E0  80 06 00 64 */	lwz r0, 0x64(r6)
/* 80224D04 002218E4  90 1F 00 08 */	stw r0, 8(r31)
/* 80224D08 002218E8  C0 42 C2 F0 */	lfs f2, lbl_804DBCD0@sda21(r2)
/* 80224D0C 002218EC  C0 26 00 6C */	lfs f1, 0x6c(r6)
/* 80224D10 002218F0  C0 02 C2 F8 */	lfs f0, lbl_804DBCD8@sda21(r2)
/* 80224D14 002218F4  EC 22 00 72 */	fmuls f1, f2, f1
/* 80224D18 002218F8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80224D1C 002218FC  C0 26 00 70 */	lfs f1, 0x70(r6)
/* 80224D20 00221900  EC 22 00 72 */	fmuls f1, f2, f1
/* 80224D24 00221904  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80224D28 00221908  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80224D2C 0022190C  4B DE 94 0D */	bl func_8000E138
/* 80224D30 00221910  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80224D34 00221914  C0 9F 00 08 */	lfs f4, 8(r31)
/* 80224D38 00221918  FC 00 00 50 */	fneg f0, f0
/* 80224D3C 0022191C  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 80224D40 00221920  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80224D44 00221924  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80224D48 00221928  EC 84 00 24 */	fdivs f4, f4, f0
/* 80224D4C 0022192C  C0 02 C2 F8 */	lfs f0, lbl_804DBCD8@sda21(r2)
/* 80224D50 00221930  EC 23 09 3A */	fmadds f1, f3, f4, f1
/* 80224D54 00221934  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80224D58 00221938  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80224D5C 0022193C  EC 22 09 3A */	fmadds f1, f2, f4, f1
/* 80224D60 00221940  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80224D64 00221944  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80224D68 00221948  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80224D6C 0022194C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80224D70 00221950  90 7F 00 00 */	stw r3, 0(r31)
/* 80224D74 00221954  90 1F 00 04 */	stw r0, 4(r31)
/* 80224D78 00221958  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224D7C 0022195C  90 1F 00 08 */	stw r0, 8(r31)
/* 80224D80 00221960  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80224D84 00221964  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 80224D88 00221968  38 21 00 38 */	addi r1, r1, 0x38
/* 80224D8C 0022196C  7C 08 03 A6 */	mtlr r0
/* 80224D90 00221970  4E 80 00 20 */	blr 

.global func_80224D94
func_80224D94:
/* 80224D94 00221974  3C 80 80 4A */	lis r4, lbl_8049E6C8@ha
/* 80224D98 00221978  38 A4 E6 C8 */	addi r5, r4, lbl_8049E6C8@l
/* 80224D9C 0022197C  80 85 00 5C */	lwz r4, 0x5c(r5)
/* 80224DA0 00221980  80 05 00 60 */	lwz r0, 0x60(r5)
/* 80224DA4 00221984  90 83 00 00 */	stw r4, 0(r3)
/* 80224DA8 00221988  90 03 00 04 */	stw r0, 4(r3)
/* 80224DAC 0022198C  80 05 00 64 */	lwz r0, 0x64(r5)
/* 80224DB0 00221990  90 03 00 08 */	stw r0, 8(r3)
/* 80224DB4 00221994  4E 80 00 20 */	blr 

.global func_80224DB8
func_80224DB8:
/* 80224DB8 00221998  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 80224DBC 0022199C  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 80224DC0 002219A0  C0 23 00 68 */	lfs f1, 0x68(r3)
/* 80224DC4 002219A4  4E 80 00 20 */	blr 

.global func_80224DC8
func_80224DC8:
/* 80224DC8 002219A8  2C 03 00 3B */	cmpwi r3, 0x3b
/* 80224DCC 002219AC  38 00 00 01 */	li r0, 1
/* 80224DD0 002219B0  7C 04 03 78 */	mr r4, r0
/* 80224DD4 002219B4  7C 05 03 78 */	mr r5, r0
/* 80224DD8 002219B8  7C 06 03 78 */	mr r6, r0
/* 80224DDC 002219BC  41 82 00 10 */	beq lbl_80224DEC
/* 80224DE0 002219C0  2C 03 00 3F */	cmpwi r3, 0x3f
/* 80224DE4 002219C4  41 82 00 08 */	beq lbl_80224DEC
/* 80224DE8 002219C8  38 C0 00 00 */	li r6, 0
lbl_80224DEC:
/* 80224DEC 002219CC  2C 06 00 00 */	cmpwi r6, 0
/* 80224DF0 002219D0  40 82 00 10 */	bne lbl_80224E00
/* 80224DF4 002219D4  2C 03 00 42 */	cmpwi r3, 0x42
/* 80224DF8 002219D8  41 82 00 08 */	beq lbl_80224E00
/* 80224DFC 002219DC  38 A0 00 00 */	li r5, 0
lbl_80224E00:
/* 80224E00 002219E0  2C 05 00 00 */	cmpwi r5, 0
/* 80224E04 002219E4  40 82 00 10 */	bne lbl_80224E14
/* 80224E08 002219E8  2C 03 00 49 */	cmpwi r3, 0x49
/* 80224E0C 002219EC  41 82 00 08 */	beq lbl_80224E14
/* 80224E10 002219F0  38 80 00 00 */	li r4, 0
lbl_80224E14:
/* 80224E14 002219F4  2C 04 00 00 */	cmpwi r4, 0
/* 80224E18 002219F8  40 82 00 10 */	bne lbl_80224E28
/* 80224E1C 002219FC  2C 03 00 4C */	cmpwi r3, 0x4c
/* 80224E20 00221A00  41 82 00 08 */	beq lbl_80224E28
/* 80224E24 00221A04  38 00 00 00 */	li r0, 0
lbl_80224E28:
/* 80224E28 00221A08  7C 60 00 D0 */	neg r3, r0
/* 80224E2C 00221A0C  30 03 FF FF */	addic r0, r3, -1
/* 80224E30 00221A10  7C 60 19 10 */	subfe r3, r0, r3
/* 80224E34 00221A14  4E 80 00 20 */	blr 

.global func_80224E38
func_80224E38:
/* 80224E38 00221A18  7C 08 02 A6 */	mflr r0
/* 80224E3C 00221A1C  90 01 00 04 */	stw r0, 4(r1)
/* 80224E40 00221A20  38 03 00 00 */	addi r0, r3, 0
/* 80224E44 00221A24  38 64 00 04 */	addi r3, r4, 4
/* 80224E48 00221A28  94 21 FF F8 */	stwu r1, -8(r1)
/* 80224E4C 00221A2C  7C 04 03 78 */	mr r4, r0
/* 80224E50 00221A30  4B F9 DE D5 */	bl func_801C2D24
/* 80224E54 00221A34  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80224E58 00221A38  38 21 00 08 */	addi r1, r1, 8
/* 80224E5C 00221A3C  7C 08 03 A6 */	mtlr r0
/* 80224E60 00221A40  4E 80 00 20 */	blr 

.global func_80224E64
func_80224E64:
/* 80224E64 00221A44  7C 08 02 A6 */	mflr r0
/* 80224E68 00221A48  90 01 00 04 */	stw r0, 4(r1)
/* 80224E6C 00221A4C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80224E70 00221A50  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 80224E74 00221A54  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80224E78 00221A58  DB A1 00 28 */	stfd f29, 0x28(r1)
/* 80224E7C 00221A5C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80224E80 00221A60  3B E3 00 00 */	addi r31, r3, 0
/* 80224E84 00221A64  2C 1F FF FF */	cmpwi r31, -1
/* 80224E88 00221A68  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80224E8C 00221A6C  3B C4 00 00 */	addi r30, r4, 0
/* 80224E90 00221A70  40 82 00 18 */	bne lbl_80224EA8
/* 80224E94 00221A74  3C 60 80 3F */	lis r3, lbl_803E9940@ha
/* 80224E98 00221A78  38 A3 99 40 */	addi r5, r3, lbl_803E9940@l
/* 80224E9C 00221A7C  38 6D 93 58 */	addi r3, r13, lbl_804D49F8@sda21
/* 80224EA0 00221A80  38 80 01 68 */	li r4, 0x168
/* 80224EA4 00221A84  48 16 33 7D */	bl __assert
lbl_80224EA8:
/* 80224EA8 00221A88  2C 1F 00 04 */	cmpwi r31, 4
/* 80224EAC 00221A8C  40 82 01 00 */	bne lbl_80224FAC
/* 80224EB0 00221A90  C3 A2 C2 FC */	lfs f29, lbl_804DBCDC@sda21(r2)
/* 80224EB4 00221A94  3B E0 00 00 */	li r31, 0
/* 80224EB8 00221A98  C3 E2 C3 00 */	lfs f31, lbl_804DBCE0@sda21(r2)
/* 80224EBC 00221A9C  C3 C2 C3 04 */	lfs f30, lbl_804DBCE4@sda21(r2)
/* 80224EC0 00221AA0  48 00 00 48 */	b lbl_80224F08
lbl_80224EC4:
/* 80224EC4 00221AA4  C0 22 C2 F8 */	lfs f1, lbl_804DBCD8@sda21(r2)
/* 80224EC8 00221AA8  FC 80 E8 90 */	fmr f4, f29
/* 80224ECC 00221AAC  EC 5F E8 2A */	fadds f2, f31, f29
/* 80224ED0 00221AB0  38 61 00 10 */	addi r3, r1, 0x10
/* 80224ED4 00221AB4  FC 60 08 90 */	fmr f3, f1
/* 80224ED8 00221AB8  38 80 00 00 */	li r4, 0
/* 80224EDC 00221ABC  38 A0 00 00 */	li r5, 0
/* 80224EE0 00221AC0  38 C0 00 00 */	li r6, 0
/* 80224EE4 00221AC4  38 E0 00 01 */	li r7, 1
/* 80224EE8 00221AC8  39 00 FF FF */	li r8, -1
/* 80224EEC 00221ACC  39 20 FF FF */	li r9, -1
/* 80224EF0 00221AD0  4B E2 CF D9 */	bl func_80051EC8
/* 80224EF4 00221AD4  2C 03 00 00 */	cmpwi r3, 0
/* 80224EF8 00221AD8  41 82 00 0C */	beq lbl_80224F04
/* 80224EFC 00221ADC  3B E0 00 01 */	li r31, 1
/* 80224F00 00221AE0  48 00 00 10 */	b lbl_80224F10
lbl_80224F04:
/* 80224F04 00221AE4  EF BD F8 2A */	fadds f29, f29, f31
lbl_80224F08:
/* 80224F08 00221AE8  FC 1D F0 40 */	fcmpo cr0, f29, f30
/* 80224F0C 00221AEC  41 80 FF B8 */	blt lbl_80224EC4
lbl_80224F10:
/* 80224F10 00221AF0  2C 1F 00 00 */	cmpwi r31, 0
/* 80224F14 00221AF4  40 82 00 60 */	bne lbl_80224F74
/* 80224F18 00221AF8  C3 A2 C2 FC */	lfs f29, lbl_804DBCDC@sda21(r2)
/* 80224F1C 00221AFC  C3 C2 C3 00 */	lfs f30, lbl_804DBCE0@sda21(r2)
/* 80224F20 00221B00  C3 E2 C3 08 */	lfs f31, lbl_804DBCE8@sda21(r2)
/* 80224F24 00221B04  48 00 00 48 */	b lbl_80224F6C
lbl_80224F28:
/* 80224F28 00221B08  C0 22 C2 F8 */	lfs f1, lbl_804DBCD8@sda21(r2)
/* 80224F2C 00221B0C  FC 40 E8 90 */	fmr f2, f29
/* 80224F30 00221B10  EC 9D F0 28 */	fsubs f4, f29, f30
/* 80224F34 00221B14  38 61 00 10 */	addi r3, r1, 0x10
/* 80224F38 00221B18  FC 60 08 90 */	fmr f3, f1
/* 80224F3C 00221B1C  38 80 00 00 */	li r4, 0
/* 80224F40 00221B20  38 A0 00 00 */	li r5, 0
/* 80224F44 00221B24  38 C0 00 00 */	li r6, 0
/* 80224F48 00221B28  38 E0 00 01 */	li r7, 1
/* 80224F4C 00221B2C  39 00 FF FF */	li r8, -1
/* 80224F50 00221B30  39 20 FF FF */	li r9, -1
/* 80224F54 00221B34  4B E2 CF 75 */	bl func_80051EC8
/* 80224F58 00221B38  2C 03 00 00 */	cmpwi r3, 0
/* 80224F5C 00221B3C  41 82 00 0C */	beq lbl_80224F68
/* 80224F60 00221B40  3B E0 00 01 */	li r31, 1
/* 80224F64 00221B44  48 00 00 10 */	b lbl_80224F74
lbl_80224F68:
/* 80224F68 00221B48  EF BD F0 28 */	fsubs f29, f29, f30
lbl_80224F6C:
/* 80224F6C 00221B4C  FC 1D F8 40 */	fcmpo cr0, f29, f31
/* 80224F70 00221B50  41 81 FF B8 */	bgt lbl_80224F28
lbl_80224F74:
/* 80224F74 00221B54  2C 1F 00 00 */	cmpwi r31, 0
/* 80224F78 00221B58  41 82 00 20 */	beq lbl_80224F98
/* 80224F7C 00221B5C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80224F80 00221B60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224F84 00221B64  90 7E 00 00 */	stw r3, 0(r30)
/* 80224F88 00221B68  90 1E 00 04 */	stw r0, 4(r30)
/* 80224F8C 00221B6C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80224F90 00221B70  90 1E 00 08 */	stw r0, 8(r30)
/* 80224F94 00221B74  48 00 00 24 */	b lbl_80224FB8
lbl_80224F98:
/* 80224F98 00221B78  C0 02 C2 F8 */	lfs f0, lbl_804DBCD8@sda21(r2)
/* 80224F9C 00221B7C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80224FA0 00221B80  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80224FA4 00221B84  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80224FA8 00221B88  48 00 00 10 */	b lbl_80224FB8
lbl_80224FAC:
/* 80224FAC 00221B8C  38 7F 00 00 */	addi r3, r31, 0
/* 80224FB0 00221B90  38 9E 00 00 */	addi r4, r30, 0
/* 80224FB4 00221B94  4B F9 DD 71 */	bl func_801C2D24
lbl_80224FB8:
/* 80224FB8 00221B98  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80224FBC 00221B9C  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 80224FC0 00221BA0  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80224FC4 00221BA4  CB A1 00 28 */	lfd f29, 0x28(r1)
/* 80224FC8 00221BA8  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80224FCC 00221BAC  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80224FD0 00221BB0  38 21 00 40 */	addi r1, r1, 0x40
/* 80224FD4 00221BB4  7C 08 03 A6 */	mtlr r0
/* 80224FD8 00221BB8  4E 80 00 20 */	blr 

.global func_80224FDC
func_80224FDC:
/* 80224FDC 00221BBC  7C 08 02 A6 */	mflr r0
/* 80224FE0 00221BC0  90 01 00 04 */	stw r0, 4(r1)
/* 80224FE4 00221BC4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80224FE8 00221BC8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80224FEC 00221BCC  3B E0 00 15 */	li r31, 0x15
/* 80224FF0 00221BD0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80224FF4 00221BD4  3B C3 00 00 */	addi r30, r3, 0
lbl_80224FF8:
/* 80224FF8 00221BD8  7F E3 FB 78 */	mr r3, r31
/* 80224FFC 00221BDC  48 15 B5 85 */	bl HSD_Randi
/* 80225000 00221BE0  38 9E 00 00 */	addi r4, r30, 0
/* 80225004 00221BE4  38 63 00 7F */	addi r3, r3, 0x7f
/* 80225008 00221BE8  4B F9 DD 1D */	bl func_801C2D24
/* 8022500C 00221BEC  2C 03 00 00 */	cmpwi r3, 0
/* 80225010 00221BF0  41 82 00 0C */	beq lbl_8022501C
/* 80225014 00221BF4  38 60 00 01 */	li r3, 1
/* 80225018 00221BF8  48 00 00 44 */	b lbl_8022505C
lbl_8022501C:
/* 8022501C 00221BFC  37 FF FF FF */	addic. r31, r31, -1
/* 80225020 00221C00  40 82 FF D8 */	bne lbl_80224FF8
/* 80225024 00221C04  38 60 00 04 */	li r3, 4
/* 80225028 00221C08  48 00 00 28 */	b lbl_80225050
lbl_8022502C:
/* 8022502C 00221C0C  48 15 B5 55 */	bl HSD_Randi
/* 80225030 00221C10  3B E3 00 00 */	addi r31, r3, 0
/* 80225034 00221C14  38 9E 00 00 */	addi r4, r30, 0
/* 80225038 00221C18  4B F9 DC ED */	bl func_801C2D24
/* 8022503C 00221C1C  2C 03 00 00 */	cmpwi r3, 0
/* 80225040 00221C20  41 82 00 0C */	beq lbl_8022504C
/* 80225044 00221C24  38 60 00 01 */	li r3, 1
/* 80225048 00221C28  48 00 00 14 */	b lbl_8022505C
lbl_8022504C:
/* 8022504C 00221C2C  7F E3 FB 78 */	mr r3, r31
lbl_80225050:
/* 80225050 00221C30  2C 03 00 00 */	cmpwi r3, 0
/* 80225054 00221C34  40 82 FF D8 */	bne lbl_8022502C
/* 80225058 00221C38  38 60 00 00 */	li r3, 0
lbl_8022505C:
/* 8022505C 00221C3C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80225060 00221C40  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80225064 00221C44  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80225068 00221C48  38 21 00 18 */	addi r1, r1, 0x18
/* 8022506C 00221C4C  7C 08 03 A6 */	mtlr r0
/* 80225070 00221C50  4E 80 00 20 */	blr 

.global func_80225074
func_80225074:
/* 80225074 00221C54  7C 08 02 A6 */	mflr r0
/* 80225078 00221C58  90 01 00 04 */	stw r0, 4(r1)
/* 8022507C 00221C5C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80225080 00221C60  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80225084 00221C64  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80225088 00221C68  7C 7E 1B 78 */	mr r30, r3
/* 8022508C 00221C6C  4B F4 61 AD */	bl func_8016B238
/* 80225090 00221C70  2C 03 00 00 */	cmpwi r3, 0
/* 80225094 00221C74  41 82 00 30 */	beq lbl_802250C4
/* 80225098 00221C78  3C 60 80 4A */	lis r3, lbl_8049E6C8@ha
/* 8022509C 00221C7C  38 63 E6 C8 */	addi r3, r3, lbl_8049E6C8@l
/* 802250A0 00221C80  88 03 00 8C */	lbz r0, 0x8c(r3)
/* 802250A4 00221C84  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802250A8 00221C88  40 82 00 0C */	bne lbl_802250B4
/* 802250AC 00221C8C  2C 1E 00 02 */	cmpwi r30, 2
/* 802250B0 00221C90  40 82 00 0C */	bne lbl_802250BC
lbl_802250B4:
/* 802250B4 00221C94  3B E0 00 12 */	li r31, 0x12
/* 802250B8 00221C98  48 00 00 90 */	b lbl_80225148
lbl_802250BC:
/* 802250BC 00221C9C  3B E0 00 11 */	li r31, 0x11
/* 802250C0 00221CA0  48 00 00 88 */	b lbl_80225148
lbl_802250C4:
/* 802250C4 00221CA4  4B F4 62 DD */	bl func_8016B3A0
/* 802250C8 00221CA8  2C 03 00 00 */	cmpwi r3, 0
/* 802250CC 00221CAC  41 82 00 2C */	beq lbl_802250F8
/* 802250D0 00221CB0  2C 1E 00 02 */	cmpwi r30, 2
/* 802250D4 00221CB4  40 82 00 0C */	bne lbl_802250E0
/* 802250D8 00221CB8  3B E0 00 22 */	li r31, 0x22
/* 802250DC 00221CBC  48 00 00 6C */	b lbl_80225148
lbl_802250E0:
/* 802250E0 00221CC0  2C 1E 00 01 */	cmpwi r30, 1
/* 802250E4 00221CC4  40 82 00 0C */	bne lbl_802250F0
/* 802250E8 00221CC8  3B E0 00 64 */	li r31, 0x64
/* 802250EC 00221CCC  48 00 00 5C */	b lbl_80225148
lbl_802250F0:
/* 802250F0 00221CD0  3B E0 00 24 */	li r31, 0x24
/* 802250F4 00221CD4  48 00 00 54 */	b lbl_80225148
lbl_802250F8:
/* 802250F8 00221CD8  2C 1E 00 00 */	cmpwi r30, 0
/* 802250FC 00221CDC  40 82 00 0C */	bne lbl_80225108
/* 80225100 00221CE0  3B E0 00 04 */	li r31, 4
/* 80225104 00221CE4  48 00 00 44 */	b lbl_80225148
lbl_80225108:
/* 80225108 00221CE8  2C 1E 00 03 */	cmpwi r30, 3
/* 8022510C 00221CEC  40 82 00 0C */	bne lbl_80225118
/* 80225110 00221CF0  3B E0 00 01 */	li r31, 1
/* 80225114 00221CF4  48 00 00 34 */	b lbl_80225148
lbl_80225118:
/* 80225118 00221CF8  2C 1E 00 02 */	cmpwi r30, 2
/* 8022511C 00221CFC  40 82 00 0C */	bne lbl_80225128
/* 80225120 00221D00  3B E0 00 02 */	li r31, 2
/* 80225124 00221D04  48 00 00 24 */	b lbl_80225148
lbl_80225128:
/* 80225128 00221D08  2C 1E 00 01 */	cmpwi r30, 1
/* 8022512C 00221D0C  40 82 00 0C */	bne lbl_80225138
/* 80225130 00221D10  3B E0 00 44 */	li r31, 0x44
/* 80225134 00221D14  48 00 00 14 */	b lbl_80225148
lbl_80225138:
/* 80225138 00221D18  38 6D 93 58 */	addi r3, r13, lbl_804D49F8@sda21
/* 8022513C 00221D1C  38 80 02 0E */	li r4, 0x20e
/* 80225140 00221D20  38 AD 93 60 */	addi r5, r13, lbl_804D4A00@sda21
/* 80225144 00221D24  48 16 30 DD */	bl __assert
lbl_80225148:
/* 80225148 00221D28  80 6D 93 48 */	lwz r3, lbl_804D49E8@sda21(r13)
/* 8022514C 00221D2C  38 9F 00 00 */	addi r4, r31, 0
/* 80225150 00221D30  38 A1 00 0C */	addi r5, r1, 0xc
/* 80225154 00221D34  4B F9 D7 59 */	bl func_801C28AC
/* 80225158 00221D38  7C 60 1B 78 */	mr r0, r3
/* 8022515C 00221D3C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80225160 00221D40  7C 1F 03 78 */	mr r31, r0
/* 80225164 00221D44  4B DF ED C5 */	bl func_80023F28
/* 80225168 00221D48  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8022516C 00221D4C  4B FA 09 19 */	bl func_801C5A84
/* 80225170 00221D50  7F E3 FB 78 */	mr r3, r31
/* 80225174 00221D54  4B FA 09 31 */	bl func_801C5AA4
/* 80225178 00221D58  7F C3 F3 78 */	mr r3, r30
/* 8022517C 00221D5C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80225180 00221D60  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80225184 00221D64  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80225188 00221D68  38 21 00 18 */	addi r1, r1, 0x18
/* 8022518C 00221D6C  7C 08 03 A6 */	mtlr r0
/* 80225190 00221D70  4E 80 00 20 */	blr 

.global func_80225194
func_80225194:
/* 80225194 00221D74  80 6D 93 48 */	lwz r3, lbl_804D49E8@sda21(r13)
/* 80225198 00221D78  4E 80 00 20 */	blr 

.global func_8022519C
func_8022519C:
/* 8022519C 00221D7C  1C 83 00 0C */	mulli r4, r3, 0xc
/* 802251A0 00221D80  3C 60 80 3F */	lis r3, lbl_803E9960@ha
/* 802251A4 00221D84  38 03 99 60 */	addi r0, r3, lbl_803E9960@l
/* 802251A8 00221D88  7C 60 22 14 */	add r3, r0, r4
/* 802251AC 00221D8C  80 63 00 00 */	lwz r3, 0(r3)
/* 802251B0 00221D90  4E 80 00 20 */	blr 

.global func_802251B4
func_802251B4:
/* 802251B4 00221D94  7C 08 02 A6 */	mflr r0
/* 802251B8 00221D98  1C 83 00 0C */	mulli r4, r3, 0xc
/* 802251BC 00221D9C  90 01 00 04 */	stw r0, 4(r1)
/* 802251C0 00221DA0  3C 60 80 3F */	lis r3, lbl_803E9960@ha
/* 802251C4 00221DA4  94 21 FF F8 */	stwu r1, -8(r1)
/* 802251C8 00221DA8  38 03 99 60 */	addi r0, r3, lbl_803E9960@l
/* 802251CC 00221DAC  7C 60 22 14 */	add r3, r0, r4
/* 802251D0 00221DB0  80 63 00 00 */	lwz r3, 0(r3)
/* 802251D4 00221DB4  4B F9 B4 E5 */	bl func_801C06B8
/* 802251D8 00221DB8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802251DC 00221DBC  38 21 00 08 */	addi r1, r1, 8
/* 802251E0 00221DC0  7C 08 03 A6 */	mtlr r0
/* 802251E4 00221DC4  4E 80 00 20 */	blr 

.global func_802251E8
func_802251E8:
/* 802251E8 00221DC8  7C 08 02 A6 */	mflr r0
/* 802251EC 00221DCC  1C 83 00 0C */	mulli r4, r3, 0xc
/* 802251F0 00221DD0  90 01 00 04 */	stw r0, 4(r1)
/* 802251F4 00221DD4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802251F8 00221DD8  38 AD 93 48 */	addi r5, r13, lbl_804D49E8@sda21
/* 802251FC 00221DDC  90 6D 93 48 */	stw r3, lbl_804D49E8@sda21(r13)
/* 80225200 00221DE0  3C 60 80 3F */	lis r3, lbl_803E9960@ha
/* 80225204 00221DE4  38 03 99 60 */	addi r0, r3, lbl_803E9960@l
/* 80225208 00221DE8  7C 00 22 14 */	add r0, r0, r4
/* 8022520C 00221DEC  90 05 00 04 */	stw r0, 4(r5)
/* 80225210 00221DF0  38 61 00 10 */	addi r3, r1, 0x10
/* 80225214 00221DF4  80 0D 93 50 */	lwz r0, lbl_804D49F0@sda21(r13)
/* 80225218 00221DF8  80 8D 93 54 */	lwz r4, lbl_804D49F4@sda21(r13)
/* 8022521C 00221DFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80225220 00221E00  80 0D 93 48 */	lwz r0, lbl_804D49E8@sda21(r13)
/* 80225224 00221E04  90 81 00 14 */	stw r4, 0x14(r1)
/* 80225228 00221E08  80 85 00 04 */	lwz r4, 4(r5)
/* 8022522C 00221E0C  80 84 00 00 */	lwz r4, 0(r4)
/* 80225230 00221E10  90 81 00 10 */	stw r4, 0x10(r1)
/* 80225234 00221E14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80225238 00221E18  4B F9 B5 1D */	bl func_801C0754
/* 8022523C 00221E1C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80225240 00221E20  38 21 00 18 */	addi r1, r1, 0x18
/* 80225244 00221E24  7C 08 03 A6 */	mtlr r0
/* 80225248 00221E28  4E 80 00 20 */	blr 

.global func_8022524C
func_8022524C:
/* 8022524C 00221E2C  7C 08 02 A6 */	mflr r0
/* 80225250 00221E30  38 8D 93 48 */	addi r4, r13, lbl_804D49E8@sda21
/* 80225254 00221E34  90 01 00 04 */	stw r0, 4(r1)
/* 80225258 00221E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022525C 00221E3C  80 0D 93 50 */	lwz r0, lbl_804D49F0@sda21(r13)
/* 80225260 00221E40  38 61 00 08 */	addi r3, r1, 8
/* 80225264 00221E44  80 AD 93 54 */	lwz r5, lbl_804D49F4@sda21(r13)
/* 80225268 00221E48  90 01 00 08 */	stw r0, 8(r1)
/* 8022526C 00221E4C  80 0D 93 48 */	lwz r0, lbl_804D49E8@sda21(r13)
/* 80225270 00221E50  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80225274 00221E54  80 84 00 04 */	lwz r4, 4(r4)
/* 80225278 00221E58  80 84 00 00 */	lwz r4, 0(r4)
/* 8022527C 00221E5C  90 81 00 08 */	stw r4, 8(r1)
/* 80225280 00221E60  90 01 00 0C */	stw r0, 0xc(r1)
/* 80225284 00221E64  4B F9 B5 7D */	bl func_801C0800
/* 80225288 00221E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022528C 00221E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80225290 00221E70  7C 08 03 A6 */	mtlr r0
/* 80225294 00221E74  4E 80 00 20 */	blr 

.global func_80225298
func_80225298:
/* 80225298 00221E78  7C 08 02 A6 */	mflr r0
/* 8022529C 00221E7C  38 8D 93 48 */	addi r4, r13, lbl_804D49E8@sda21
/* 802252A0 00221E80  90 01 00 04 */	stw r0, 4(r1)
/* 802252A4 00221E84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802252A8 00221E88  80 0D 93 50 */	lwz r0, lbl_804D49F0@sda21(r13)
/* 802252AC 00221E8C  38 61 00 08 */	addi r3, r1, 8
/* 802252B0 00221E90  80 AD 93 54 */	lwz r5, lbl_804D49F4@sda21(r13)
/* 802252B4 00221E94  90 01 00 08 */	stw r0, 8(r1)
/* 802252B8 00221E98  80 0D 93 48 */	lwz r0, lbl_804D49E8@sda21(r13)
/* 802252BC 00221E9C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802252C0 00221EA0  80 84 00 04 */	lwz r4, 4(r4)
/* 802252C4 00221EA4  80 84 00 00 */	lwz r4, 0(r4)
/* 802252C8 00221EA8  90 81 00 08 */	stw r4, 8(r1)
/* 802252CC 00221EAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802252D0 00221EB0  4B F9 BC A9 */	bl func_801C0F78
/* 802252D4 00221EB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802252D8 00221EB8  38 21 00 10 */	addi r1, r1, 0x10
/* 802252DC 00221EBC  7C 08 03 A6 */	mtlr r0
/* 802252E0 00221EC0  4E 80 00 20 */	blr 

.global func_802252E4
func_802252E4:
/* 802252E4 00221EC4  7C 08 02 A6 */	mflr r0
/* 802252E8 00221EC8  38 8D 93 48 */	addi r4, r13, lbl_804D49E8@sda21
/* 802252EC 00221ECC  90 01 00 04 */	stw r0, 4(r1)
/* 802252F0 00221ED0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802252F4 00221ED4  80 AD 93 50 */	lwz r5, lbl_804D49F0@sda21(r13)
/* 802252F8 00221ED8  80 0D 93 54 */	lwz r0, lbl_804D49F4@sda21(r13)
/* 802252FC 00221EDC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80225300 00221EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80225304 00221EE4  80 84 00 04 */	lwz r4, 4(r4)
/* 80225308 00221EE8  80 04 00 00 */	lwz r0, 0(r4)
/* 8022530C 00221EEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80225310 00221EF0  90 61 00 14 */	stw r3, 0x14(r1)
/* 80225314 00221EF4  38 61 00 10 */	addi r3, r1, 0x10
/* 80225318 00221EF8  4B F9 BC A1 */	bl func_801C0FB8
/* 8022531C 00221EFC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80225320 00221F00  38 21 00 18 */	addi r1, r1, 0x18
/* 80225324 00221F04  7C 08 03 A6 */	mtlr r0
/* 80225328 00221F08  4E 80 00 20 */	blr 

.global func_8022532C
func_8022532C:
/* 8022532C 00221F0C  7C 08 02 A6 */	mflr r0
/* 80225330 00221F10  38 AD 93 48 */	addi r5, r13, lbl_804D49E8@sda21
/* 80225334 00221F14  90 01 00 04 */	stw r0, 4(r1)
/* 80225338 00221F18  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8022533C 00221F1C  80 CD 93 50 */	lwz r6, lbl_804D49F0@sda21(r13)
/* 80225340 00221F20  80 0D 93 54 */	lwz r0, lbl_804D49F4@sda21(r13)
/* 80225344 00221F24  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80225348 00221F28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022534C 00221F2C  80 A5 00 04 */	lwz r5, 4(r5)
/* 80225350 00221F30  80 05 00 00 */	lwz r0, 0(r5)
/* 80225354 00221F34  90 01 00 10 */	stw r0, 0x10(r1)
/* 80225358 00221F38  90 61 00 14 */	stw r3, 0x14(r1)
/* 8022535C 00221F3C  38 61 00 10 */	addi r3, r1, 0x10
/* 80225360 00221F40  4B F9 BD 15 */	bl func_801C1074
/* 80225364 00221F44  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80225368 00221F48  38 21 00 18 */	addi r1, r1, 0x18
/* 8022536C 00221F4C  7C 08 03 A6 */	mtlr r0
/* 80225370 00221F50  4E 80 00 20 */	blr 
