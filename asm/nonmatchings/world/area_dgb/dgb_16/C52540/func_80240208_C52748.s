.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240208_C52748
/* C52748 80240208 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* C5274C 8024020C AFBF0024 */  sw        $ra, 0x24($sp)
/* C52750 80240210 AFB40020 */  sw        $s4, 0x20($sp)
/* C52754 80240214 AFB3001C */  sw        $s3, 0x1c($sp)
/* C52758 80240218 AFB20018 */  sw        $s2, 0x18($sp)
/* C5275C 8024021C AFB10014 */  sw        $s1, 0x14($sp)
/* C52760 80240220 AFB00010 */  sw        $s0, 0x10($sp)
/* C52764 80240224 F7B40028 */  sdc1      $f20, 0x28($sp)
/* C52768 80240228 8C900148 */  lw        $s0, 0x148($a0)
/* C5276C 8024022C 86040008 */  lh        $a0, 8($s0)
/* C52770 80240230 0C00EABB */  jal       get_npc_unsafe
/* C52774 80240234 24110001 */   addiu    $s1, $zero, 1
/* C52778 80240238 86040008 */  lh        $a0, 8($s0)
/* C5277C 8024023C 0040802D */  daddu     $s0, $v0, $zero
/* C52780 80240240 3C05800B */  lui       $a1, %hi(gCameras)
/* C52784 80240244 24A51D80 */  addiu     $a1, $a1, %lo(gCameras)
/* C52788 80240248 3C03800A */  lui       $v1, %hi(D_8009A634_AACB74)
/* C5278C 8024024C 8463A634 */  lh        $v1, %lo(D_8009A634_AACB74)($v1)
/* C52790 80240250 00912021 */  addu      $a0, $a0, $s1
/* C52794 80240254 00031080 */  sll       $v0, $v1, 2
/* C52798 80240258 00431021 */  addu      $v0, $v0, $v1
/* C5279C 8024025C 00021080 */  sll       $v0, $v0, 2
/* C527A0 80240260 00431023 */  subu      $v0, $v0, $v1
/* C527A4 80240264 000218C0 */  sll       $v1, $v0, 3
/* C527A8 80240268 00431021 */  addu      $v0, $v0, $v1
/* C527AC 8024026C 000210C0 */  sll       $v0, $v0, 3
/* C527B0 80240270 0C00FB3A */  jal       get_enemy
/* C527B4 80240274 00459021 */   addu     $s2, $v0, $a1
/* C527B8 80240278 3C14800F */  lui       $s4, %hi(gPlayerStatusPtr)
/* C527BC 8024027C 26947B30 */  addiu     $s4, $s4, %lo(gPlayerStatusPtr)
/* C527C0 80240280 C60C0038 */  lwc1      $f12, 0x38($s0)
/* C527C4 80240284 8E830000 */  lw        $v1, ($s4)
/* C527C8 80240288 C60E0040 */  lwc1      $f14, 0x40($s0)
/* C527CC 8024028C 8C660028 */  lw        $a2, 0x28($v1)
/* C527D0 80240290 8C670030 */  lw        $a3, 0x30($v1)
/* C527D4 80240294 0C00A7B5 */  jal       dist2D
/* C527D8 80240298 0040982D */   daddu    $s3, $v0, $zero
/* C527DC 8024029C C6620074 */  lwc1      $f2, 0x74($s3)
/* C527E0 802402A0 468010A0 */  cvt.s.w   $f2, $f2
/* C527E4 802402A4 4600103C */  c.lt.s    $f2, $f0
/* C527E8 802402A8 00000000 */  nop
/* C527EC 802402AC 45030001 */  bc1tl     .L802402B4
/* C527F0 802402B0 0000882D */   daddu    $s1, $zero, $zero
.L802402B4:
/* C527F4 802402B4 C64C006C */  lwc1      $f12, 0x6c($s2)
/* C527F8 802402B8 C60E000C */  lwc1      $f14, 0xc($s0)
/* C527FC 802402BC 3C014387 */  lui       $at, 0x4387
/* C52800 802402C0 4481A000 */  mtc1      $at, $f20
/* C52804 802402C4 0C00A70A */  jal       get_clamped_angle_diff
/* C52808 802402C8 00000000 */   nop
/* C5280C 802402CC 0C00A6C9 */  jal       clamp_angle
/* C52810 802402D0 46000306 */   mov.s    $f12, $f0
/* C52814 802402D4 3C018024 */  lui       $at, %hi(D_802431F0_C55730)
/* C52818 802402D8 D42231F0 */  ldc1      $f2, %lo(D_802431F0_C55730)($at)
/* C5281C 802402DC 46000021 */  cvt.d.s   $f0, $f0
/* C52820 802402E0 4622003C */  c.lt.d    $f0, $f2
/* C52824 802402E4 00000000 */  nop
/* C52828 802402E8 45000003 */  bc1f      .L802402F8
/* C5282C 802402EC 00000000 */   nop
/* C52830 802402F0 3C0142B4 */  lui       $at, 0x42b4
/* C52834 802402F4 4481A000 */  mtc1      $at, $f20
.L802402F8:
/* C52838 802402F8 C60C0038 */  lwc1      $f12, 0x38($s0)
/* C5283C 802402FC 8E820000 */  lw        $v0, ($s4)
/* C52840 80240300 C60E0040 */  lwc1      $f14, 0x40($s0)
/* C52844 80240304 8C460028 */  lw        $a2, 0x28($v0)
/* C52848 80240308 0C00A720 */  jal       atan2
/* C5284C 8024030C 8C470030 */   lw       $a3, 0x30($v0)
/* C52850 80240310 4600A306 */  mov.s     $f12, $f20
/* C52854 80240314 0C00A70A */  jal       get_clamped_angle_diff
/* C52858 80240318 46000386 */   mov.s    $f14, $f0
/* C5285C 8024031C C6620078 */  lwc1      $f2, 0x78($s3)
/* C52860 80240320 468010A0 */  cvt.s.w   $f2, $f2
/* C52864 80240324 46000005 */  abs.s     $f0, $f0
/* C52868 80240328 4600103C */  c.lt.s    $f2, $f0
/* C5286C 8024032C 00000000 */  nop
/* C52870 80240330 45030001 */  bc1tl     .L80240338
/* C52874 80240334 0000882D */   daddu    $s1, $zero, $zero
.L80240338:
/* C52878 80240338 8E820000 */  lw        $v0, ($s4)
/* C5287C 8024033C C600003C */  lwc1      $f0, 0x3c($s0)
/* C52880 80240340 C442002C */  lwc1      $f2, 0x2c($v0)
/* C52884 80240344 860200A8 */  lh        $v0, 0xa8($s0)
/* C52888 80240348 46020001 */  sub.s     $f0, $f0, $f2
/* C5288C 8024034C 44821000 */  mtc1      $v0, $f2
/* C52890 80240350 00000000 */  nop
/* C52894 80240354 468010A1 */  cvt.d.w   $f2, $f2
/* C52898 80240358 46221080 */  add.d     $f2, $f2, $f2
/* C5289C 8024035C 46000005 */  abs.s     $f0, $f0
/* C528A0 80240360 46000021 */  cvt.d.s   $f0, $f0
/* C528A4 80240364 4620103E */  c.le.d    $f2, $f0
/* C528A8 80240368 00000000 */  nop
/* C528AC 8024036C 45030001 */  bc1tl     .L80240374
/* C528B0 80240370 0000882D */   daddu    $s1, $zero, $zero
.L80240374:
/* C528B4 80240374 3C038011 */  lui       $v1, %hi(D_8010EBB3_B210F3)
/* C528B8 80240378 8063EBB3 */  lb        $v1, %lo(D_8010EBB3_B210F3)($v1)
/* C528BC 8024037C 24020009 */  addiu     $v0, $zero, 9
/* C528C0 80240380 50620001 */  beql      $v1, $v0, .L80240388
/* C528C4 80240384 0000882D */   daddu    $s1, $zero, $zero
.L80240388:
/* C528C8 80240388 24020007 */  addiu     $v0, $zero, 7
/* C528CC 8024038C 50620001 */  beql      $v1, $v0, .L80240394
/* C528D0 80240390 0000882D */   daddu    $s1, $zero, $zero
.L80240394:
/* C528D4 80240394 0220102D */  daddu     $v0, $s1, $zero
/* C528D8 80240398 8FBF0024 */  lw        $ra, 0x24($sp)
/* C528DC 8024039C 8FB40020 */  lw        $s4, 0x20($sp)
/* C528E0 802403A0 8FB3001C */  lw        $s3, 0x1c($sp)
/* C528E4 802403A4 8FB20018 */  lw        $s2, 0x18($sp)
/* C528E8 802403A8 8FB10014 */  lw        $s1, 0x14($sp)
/* C528EC 802403AC 8FB00010 */  lw        $s0, 0x10($sp)
/* C528F0 802403B0 D7B40028 */  ldc1      $f20, 0x28($sp)
/* C528F4 802403B4 03E00008 */  jr        $ra
/* C528F8 802403B8 27BD0030 */   addiu    $sp, $sp, 0x30
