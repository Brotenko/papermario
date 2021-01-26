.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241158_D94098
/* D94098 80241158 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* D9409C 8024115C AFBF0024 */  sw        $ra, 0x24($sp)
/* D940A0 80241160 AFB40020 */  sw        $s4, 0x20($sp)
/* D940A4 80241164 AFB3001C */  sw        $s3, 0x1c($sp)
/* D940A8 80241168 AFB20018 */  sw        $s2, 0x18($sp)
/* D940AC 8024116C AFB10014 */  sw        $s1, 0x14($sp)
/* D940B0 80241170 AFB00010 */  sw        $s0, 0x10($sp)
/* D940B4 80241174 F7B40028 */  sdc1      $f20, 0x28($sp)
/* D940B8 80241178 8C900148 */  lw        $s0, 0x148($a0)
/* D940BC 8024117C 86040008 */  lh        $a0, 8($s0)
/* D940C0 80241180 0C00EABB */  jal       get_npc_unsafe
/* D940C4 80241184 24110001 */   addiu    $s1, $zero, 1
/* D940C8 80241188 86040008 */  lh        $a0, 8($s0)
/* D940CC 8024118C 0040802D */  daddu     $s0, $v0, $zero
/* D940D0 80241190 3C05800B */  lui       $a1, %hi(gCameras)
/* D940D4 80241194 24A51D80 */  addiu     $a1, $a1, %lo(gCameras)
/* D940D8 80241198 3C03800A */  lui       $v1, %hi(D_8009A634_BED574)
/* D940DC 8024119C 8463A634 */  lh        $v1, %lo(D_8009A634_BED574)($v1)
/* D940E0 802411A0 00912021 */  addu      $a0, $a0, $s1
/* D940E4 802411A4 00031080 */  sll       $v0, $v1, 2
/* D940E8 802411A8 00431021 */  addu      $v0, $v0, $v1
/* D940EC 802411AC 00021080 */  sll       $v0, $v0, 2
/* D940F0 802411B0 00431023 */  subu      $v0, $v0, $v1
/* D940F4 802411B4 000218C0 */  sll       $v1, $v0, 3
/* D940F8 802411B8 00431021 */  addu      $v0, $v0, $v1
/* D940FC 802411BC 000210C0 */  sll       $v0, $v0, 3
/* D94100 802411C0 0C00FB3A */  jal       get_enemy
/* D94104 802411C4 00459021 */   addu     $s2, $v0, $a1
/* D94108 802411C8 3C14800F */  lui       $s4, %hi(gPlayerStatusPtr)
/* D9410C 802411CC 26947B30 */  addiu     $s4, $s4, %lo(gPlayerStatusPtr)
/* D94110 802411D0 C60C0038 */  lwc1      $f12, 0x38($s0)
/* D94114 802411D4 8E830000 */  lw        $v1, ($s4)
/* D94118 802411D8 C60E0040 */  lwc1      $f14, 0x40($s0)
/* D9411C 802411DC 8C660028 */  lw        $a2, 0x28($v1)
/* D94120 802411E0 8C670030 */  lw        $a3, 0x30($v1)
/* D94124 802411E4 0C00A7B5 */  jal       dist2D
/* D94128 802411E8 0040982D */   daddu    $s3, $v0, $zero
/* D9412C 802411EC C6620074 */  lwc1      $f2, 0x74($s3)
/* D94130 802411F0 468010A0 */  cvt.s.w   $f2, $f2
/* D94134 802411F4 4600103C */  c.lt.s    $f2, $f0
/* D94138 802411F8 00000000 */  nop
/* D9413C 802411FC 45030001 */  bc1tl     .L80241204
/* D94140 80241200 0000882D */   daddu    $s1, $zero, $zero
.L80241204:
/* D94144 80241204 C64C006C */  lwc1      $f12, 0x6c($s2)
/* D94148 80241208 C60E000C */  lwc1      $f14, 0xc($s0)
/* D9414C 8024120C 3C014387 */  lui       $at, 0x4387
/* D94150 80241210 4481A000 */  mtc1      $at, $f20
/* D94154 80241214 0C00A70A */  jal       get_clamped_angle_diff
/* D94158 80241218 00000000 */   nop
/* D9415C 8024121C 0C00A6C9 */  jal       clamp_angle
/* D94160 80241220 46000306 */   mov.s    $f12, $f0
/* D94164 80241224 3C018024 */  lui       $at, %hi(D_80242510_D95450)
/* D94168 80241228 D4222510 */  ldc1      $f2, %lo(D_80242510_D95450)($at)
/* D9416C 8024122C 46000021 */  cvt.d.s   $f0, $f0
/* D94170 80241230 4622003C */  c.lt.d    $f0, $f2
/* D94174 80241234 00000000 */  nop
/* D94178 80241238 45000003 */  bc1f      .L80241248
/* D9417C 8024123C 00000000 */   nop
/* D94180 80241240 3C0142B4 */  lui       $at, 0x42b4
/* D94184 80241244 4481A000 */  mtc1      $at, $f20
.L80241248:
/* D94188 80241248 C60C0038 */  lwc1      $f12, 0x38($s0)
/* D9418C 8024124C 8E820000 */  lw        $v0, ($s4)
/* D94190 80241250 C60E0040 */  lwc1      $f14, 0x40($s0)
/* D94194 80241254 8C460028 */  lw        $a2, 0x28($v0)
/* D94198 80241258 0C00A720 */  jal       atan2
/* D9419C 8024125C 8C470030 */   lw       $a3, 0x30($v0)
/* D941A0 80241260 4600A306 */  mov.s     $f12, $f20
/* D941A4 80241264 0C00A70A */  jal       get_clamped_angle_diff
/* D941A8 80241268 46000386 */   mov.s    $f14, $f0
/* D941AC 8024126C C6620078 */  lwc1      $f2, 0x78($s3)
/* D941B0 80241270 468010A0 */  cvt.s.w   $f2, $f2
/* D941B4 80241274 46000005 */  abs.s     $f0, $f0
/* D941B8 80241278 4600103C */  c.lt.s    $f2, $f0
/* D941BC 8024127C 00000000 */  nop
/* D941C0 80241280 45030001 */  bc1tl     .L80241288
/* D941C4 80241284 0000882D */   daddu    $s1, $zero, $zero
.L80241288:
/* D941C8 80241288 8E820000 */  lw        $v0, ($s4)
/* D941CC 8024128C C600003C */  lwc1      $f0, 0x3c($s0)
/* D941D0 80241290 C442002C */  lwc1      $f2, 0x2c($v0)
/* D941D4 80241294 860200A8 */  lh        $v0, 0xa8($s0)
/* D941D8 80241298 46020001 */  sub.s     $f0, $f0, $f2
/* D941DC 8024129C 44821000 */  mtc1      $v0, $f2
/* D941E0 802412A0 00000000 */  nop
/* D941E4 802412A4 468010A1 */  cvt.d.w   $f2, $f2
/* D941E8 802412A8 46221080 */  add.d     $f2, $f2, $f2
/* D941EC 802412AC 46000005 */  abs.s     $f0, $f0
/* D941F0 802412B0 46000021 */  cvt.d.s   $f0, $f0
/* D941F4 802412B4 4620103E */  c.le.d    $f2, $f0
/* D941F8 802412B8 00000000 */  nop
/* D941FC 802412BC 45030001 */  bc1tl     .L802412C4
/* D94200 802412C0 0000882D */   daddu    $s1, $zero, $zero
.L802412C4:
/* D94204 802412C4 3C038011 */  lui       $v1, %hi(D_8010EBB3_C61AF3)
/* D94208 802412C8 8063EBB3 */  lb        $v1, %lo(D_8010EBB3_C61AF3)($v1)
/* D9420C 802412CC 24020009 */  addiu     $v0, $zero, 9
/* D94210 802412D0 50620001 */  beql      $v1, $v0, .L802412D8
/* D94214 802412D4 0000882D */   daddu    $s1, $zero, $zero
.L802412D8:
/* D94218 802412D8 24020007 */  addiu     $v0, $zero, 7
/* D9421C 802412DC 50620001 */  beql      $v1, $v0, .L802412E4
/* D94220 802412E0 0000882D */   daddu    $s1, $zero, $zero
.L802412E4:
/* D94224 802412E4 0220102D */  daddu     $v0, $s1, $zero
/* D94228 802412E8 8FBF0024 */  lw        $ra, 0x24($sp)
/* D9422C 802412EC 8FB40020 */  lw        $s4, 0x20($sp)
/* D94230 802412F0 8FB3001C */  lw        $s3, 0x1c($sp)
/* D94234 802412F4 8FB20018 */  lw        $s2, 0x18($sp)
/* D94238 802412F8 8FB10014 */  lw        $s1, 0x14($sp)
/* D9423C 802412FC 8FB00010 */  lw        $s0, 0x10($sp)
/* D94240 80241300 D7B40028 */  ldc1      $f20, 0x28($sp)
/* D94244 80241304 03E00008 */  jr        $ra
/* D94248 80241308 27BD0030 */   addiu    $sp, $sp, 0x30
