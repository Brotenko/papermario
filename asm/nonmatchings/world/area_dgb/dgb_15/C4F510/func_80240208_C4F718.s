.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240208_C4F718
/* C4F718 80240208 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* C4F71C 8024020C AFBF0024 */  sw        $ra, 0x24($sp)
/* C4F720 80240210 AFB40020 */  sw        $s4, 0x20($sp)
/* C4F724 80240214 AFB3001C */  sw        $s3, 0x1c($sp)
/* C4F728 80240218 AFB20018 */  sw        $s2, 0x18($sp)
/* C4F72C 8024021C AFB10014 */  sw        $s1, 0x14($sp)
/* C4F730 80240220 AFB00010 */  sw        $s0, 0x10($sp)
/* C4F734 80240224 F7B40028 */  sdc1      $f20, 0x28($sp)
/* C4F738 80240228 8C900148 */  lw        $s0, 0x148($a0)
/* C4F73C 8024022C 86040008 */  lh        $a0, 8($s0)
/* C4F740 80240230 0C00EABB */  jal       get_npc_unsafe
/* C4F744 80240234 24110001 */   addiu    $s1, $zero, 1
/* C4F748 80240238 86040008 */  lh        $a0, 8($s0)
/* C4F74C 8024023C 0040802D */  daddu     $s0, $v0, $zero
/* C4F750 80240240 3C05800B */  lui       $a1, %hi(gCameras)
/* C4F754 80240244 24A51D80 */  addiu     $a1, $a1, %lo(gCameras)
/* C4F758 80240248 3C03800A */  lui       $v1, %hi(D_8009A634_AA9B44)
/* C4F75C 8024024C 8463A634 */  lh        $v1, %lo(D_8009A634_AA9B44)($v1)
/* C4F760 80240250 00912021 */  addu      $a0, $a0, $s1
/* C4F764 80240254 00031080 */  sll       $v0, $v1, 2
/* C4F768 80240258 00431021 */  addu      $v0, $v0, $v1
/* C4F76C 8024025C 00021080 */  sll       $v0, $v0, 2
/* C4F770 80240260 00431023 */  subu      $v0, $v0, $v1
/* C4F774 80240264 000218C0 */  sll       $v1, $v0, 3
/* C4F778 80240268 00431021 */  addu      $v0, $v0, $v1
/* C4F77C 8024026C 000210C0 */  sll       $v0, $v0, 3
/* C4F780 80240270 0C00FB3A */  jal       get_enemy
/* C4F784 80240274 00459021 */   addu     $s2, $v0, $a1
/* C4F788 80240278 3C14800F */  lui       $s4, %hi(gPlayerStatusPtr)
/* C4F78C 8024027C 26947B30 */  addiu     $s4, $s4, %lo(gPlayerStatusPtr)
/* C4F790 80240280 C60C0038 */  lwc1      $f12, 0x38($s0)
/* C4F794 80240284 8E830000 */  lw        $v1, ($s4)
/* C4F798 80240288 C60E0040 */  lwc1      $f14, 0x40($s0)
/* C4F79C 8024028C 8C660028 */  lw        $a2, 0x28($v1)
/* C4F7A0 80240290 8C670030 */  lw        $a3, 0x30($v1)
/* C4F7A4 80240294 0C00A7B5 */  jal       dist2D
/* C4F7A8 80240298 0040982D */   daddu    $s3, $v0, $zero
/* C4F7AC 8024029C C6620074 */  lwc1      $f2, 0x74($s3)
/* C4F7B0 802402A0 468010A0 */  cvt.s.w   $f2, $f2
/* C4F7B4 802402A4 4600103C */  c.lt.s    $f2, $f0
/* C4F7B8 802402A8 00000000 */  nop
/* C4F7BC 802402AC 45030001 */  bc1tl     .L802402B4
/* C4F7C0 802402B0 0000882D */   daddu    $s1, $zero, $zero
.L802402B4:
/* C4F7C4 802402B4 C64C006C */  lwc1      $f12, 0x6c($s2)
/* C4F7C8 802402B8 C60E000C */  lwc1      $f14, 0xc($s0)
/* C4F7CC 802402BC 3C014387 */  lui       $at, 0x4387
/* C4F7D0 802402C0 4481A000 */  mtc1      $at, $f20
/* C4F7D4 802402C4 0C00A70A */  jal       get_clamped_angle_diff
/* C4F7D8 802402C8 00000000 */   nop
/* C4F7DC 802402CC 0C00A6C9 */  jal       clamp_angle
/* C4F7E0 802402D0 46000306 */   mov.s    $f12, $f0
/* C4F7E4 802402D4 3C018024 */  lui       $at, %hi(D_80242CF0_C52200)
/* C4F7E8 802402D8 D4222CF0 */  ldc1      $f2, %lo(D_80242CF0_C52200)($at)
/* C4F7EC 802402DC 46000021 */  cvt.d.s   $f0, $f0
/* C4F7F0 802402E0 4622003C */  c.lt.d    $f0, $f2
/* C4F7F4 802402E4 00000000 */  nop
/* C4F7F8 802402E8 45000003 */  bc1f      .L802402F8
/* C4F7FC 802402EC 00000000 */   nop
/* C4F800 802402F0 3C0142B4 */  lui       $at, 0x42b4
/* C4F804 802402F4 4481A000 */  mtc1      $at, $f20
.L802402F8:
/* C4F808 802402F8 C60C0038 */  lwc1      $f12, 0x38($s0)
/* C4F80C 802402FC 8E820000 */  lw        $v0, ($s4)
/* C4F810 80240300 C60E0040 */  lwc1      $f14, 0x40($s0)
/* C4F814 80240304 8C460028 */  lw        $a2, 0x28($v0)
/* C4F818 80240308 0C00A720 */  jal       atan2
/* C4F81C 8024030C 8C470030 */   lw       $a3, 0x30($v0)
/* C4F820 80240310 4600A306 */  mov.s     $f12, $f20
/* C4F824 80240314 0C00A70A */  jal       get_clamped_angle_diff
/* C4F828 80240318 46000386 */   mov.s    $f14, $f0
/* C4F82C 8024031C C6620078 */  lwc1      $f2, 0x78($s3)
/* C4F830 80240320 468010A0 */  cvt.s.w   $f2, $f2
/* C4F834 80240324 46000005 */  abs.s     $f0, $f0
/* C4F838 80240328 4600103C */  c.lt.s    $f2, $f0
/* C4F83C 8024032C 00000000 */  nop
/* C4F840 80240330 45030001 */  bc1tl     .L80240338
/* C4F844 80240334 0000882D */   daddu    $s1, $zero, $zero
.L80240338:
/* C4F848 80240338 8E820000 */  lw        $v0, ($s4)
/* C4F84C 8024033C C600003C */  lwc1      $f0, 0x3c($s0)
/* C4F850 80240340 C442002C */  lwc1      $f2, 0x2c($v0)
/* C4F854 80240344 860200A8 */  lh        $v0, 0xa8($s0)
/* C4F858 80240348 46020001 */  sub.s     $f0, $f0, $f2
/* C4F85C 8024034C 44821000 */  mtc1      $v0, $f2
/* C4F860 80240350 00000000 */  nop
/* C4F864 80240354 468010A1 */  cvt.d.w   $f2, $f2
/* C4F868 80240358 46221080 */  add.d     $f2, $f2, $f2
/* C4F86C 8024035C 46000005 */  abs.s     $f0, $f0
/* C4F870 80240360 46000021 */  cvt.d.s   $f0, $f0
/* C4F874 80240364 4620103E */  c.le.d    $f2, $f0
/* C4F878 80240368 00000000 */  nop
/* C4F87C 8024036C 45030001 */  bc1tl     .L80240374
/* C4F880 80240370 0000882D */   daddu    $s1, $zero, $zero
.L80240374:
/* C4F884 80240374 3C038011 */  lui       $v1, %hi(D_8010EBB3_B1E0C3)
/* C4F888 80240378 8063EBB3 */  lb        $v1, %lo(D_8010EBB3_B1E0C3)($v1)
/* C4F88C 8024037C 24020009 */  addiu     $v0, $zero, 9
/* C4F890 80240380 50620001 */  beql      $v1, $v0, .L80240388
/* C4F894 80240384 0000882D */   daddu    $s1, $zero, $zero
.L80240388:
/* C4F898 80240388 24020007 */  addiu     $v0, $zero, 7
/* C4F89C 8024038C 50620001 */  beql      $v1, $v0, .L80240394
/* C4F8A0 80240390 0000882D */   daddu    $s1, $zero, $zero
.L80240394:
/* C4F8A4 80240394 0220102D */  daddu     $v0, $s1, $zero
/* C4F8A8 80240398 8FBF0024 */  lw        $ra, 0x24($sp)
/* C4F8AC 8024039C 8FB40020 */  lw        $s4, 0x20($sp)
/* C4F8B0 802403A0 8FB3001C */  lw        $s3, 0x1c($sp)
/* C4F8B4 802403A4 8FB20018 */  lw        $s2, 0x18($sp)
/* C4F8B8 802403A8 8FB10014 */  lw        $s1, 0x14($sp)
/* C4F8BC 802403AC 8FB00010 */  lw        $s0, 0x10($sp)
/* C4F8C0 802403B0 D7B40028 */  ldc1      $f20, 0x28($sp)
/* C4F8C4 802403B4 03E00008 */  jr        $ra
/* C4F8C8 802403B8 27BD0030 */   addiu    $sp, $sp, 0x30
