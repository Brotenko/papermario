.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242958_912008
/* 912008 80242958 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 91200C 8024295C AFB30024 */  sw        $s3, 0x24($sp)
/* 912010 80242960 0080982D */  daddu     $s3, $a0, $zero
/* 912014 80242964 AFBF002C */  sw        $ra, 0x2c($sp)
/* 912018 80242968 AFB40028 */  sw        $s4, 0x28($sp)
/* 91201C 8024296C AFB20020 */  sw        $s2, 0x20($sp)
/* 912020 80242970 AFB1001C */  sw        $s1, 0x1c($sp)
/* 912024 80242974 AFB00018 */  sw        $s0, 0x18($sp)
/* 912028 80242978 8E710148 */  lw        $s1, 0x148($s3)
/* 91202C 8024297C 86240008 */  lh        $a0, 8($s1)
/* 912030 80242980 0C00EABB */  jal       get_npc_unsafe
/* 912034 80242984 00A0A02D */   daddu    $s4, $a1, $zero
/* 912038 80242988 0040802D */  daddu     $s0, $v0, $zero
/* 91203C 8024298C 3C12800F */  lui       $s2, %hi(gPlayerStatusPtr)
/* 912040 80242990 26527B30 */  addiu     $s2, $s2, %lo(gPlayerStatusPtr)
/* 912044 80242994 C60C0038 */  lwc1      $f12, 0x38($s0)
/* 912048 80242998 8E420000 */  lw        $v0, ($s2)
/* 91204C 8024299C C60E0040 */  lwc1      $f14, 0x40($s0)
/* 912050 802429A0 8C460028 */  lw        $a2, 0x28($v0)
/* 912054 802429A4 0C00A720 */  jal       atan2
/* 912058 802429A8 8C470030 */   lw       $a3, 0x30($v0)
/* 91205C 802429AC 3C025555 */  lui       $v0, 0x5555
/* 912060 802429B0 9603008E */  lhu       $v1, 0x8e($s0)
/* 912064 802429B4 34425556 */  ori       $v0, $v0, 0x5556
/* 912068 802429B8 00031C00 */  sll       $v1, $v1, 0x10
/* 91206C 802429BC 00032403 */  sra       $a0, $v1, 0x10
/* 912070 802429C0 00820018 */  mult      $a0, $v0
/* 912074 802429C4 00031FC3 */  sra       $v1, $v1, 0x1f
/* 912078 802429C8 00004010 */  mfhi      $t0
/* 91207C 802429CC 01031823 */  subu      $v1, $t0, $v1
/* 912080 802429D0 00031040 */  sll       $v0, $v1, 1
/* 912084 802429D4 00431021 */  addu      $v0, $v0, $v1
/* 912088 802429D8 00822023 */  subu      $a0, $a0, $v0
/* 91208C 802429DC 00042400 */  sll       $a0, $a0, 0x10
/* 912090 802429E0 1480000C */  bnez      $a0, .L80242A14
/* 912094 802429E4 E600000C */   swc1     $f0, 0xc($s0)
/* 912098 802429E8 C6020040 */  lwc1      $f2, 0x40($s0)
/* 91209C 802429EC 3C014000 */  lui       $at, 0x4000
/* 9120A0 802429F0 44810000 */  mtc1      $at, $f0
/* 9120A4 802429F4 AFA00010 */  sw        $zero, 0x10($sp)
/* 9120A8 802429F8 AFA00014 */  sw        $zero, 0x14($sp)
/* 9120AC 802429FC 46001080 */  add.s     $f2, $f2, $f0
/* 9120B0 80242A00 8E06003C */  lw        $a2, 0x3c($s0)
/* 9120B4 80242A04 8E050038 */  lw        $a1, 0x38($s0)
/* 9120B8 80242A08 44071000 */  mfc1      $a3, $f2
/* 9120BC 80242A0C 0C01BECC */  jal       fx_walk_normal
/* 9120C0 80242A10 24040002 */   addiu    $a0, $zero, 2
.L80242A14:
/* 9120C4 80242A14 9602008E */  lhu       $v0, 0x8e($s0)
/* 9120C8 80242A18 2442FFFF */  addiu     $v0, $v0, -1
/* 9120CC 80242A1C A602008E */  sh        $v0, 0x8e($s0)
/* 9120D0 80242A20 00021400 */  sll       $v0, $v0, 0x10
/* 9120D4 80242A24 1C40002C */  bgtz      $v0, .L80242AD8
/* 9120D8 80242A28 00000000 */   nop
/* 9120DC 80242A2C C6000038 */  lwc1      $f0, 0x38($s0)
/* 9120E0 80242A30 4600010D */  trunc.w.s $f4, $f0
/* 9120E4 80242A34 44022000 */  mfc1      $v0, $f4
/* 9120E8 80242A38 00000000 */  nop
/* 9120EC 80242A3C A6220010 */  sh        $v0, 0x10($s1)
/* 9120F0 80242A40 C600003C */  lwc1      $f0, 0x3c($s0)
/* 9120F4 80242A44 4600010D */  trunc.w.s $f4, $f0
/* 9120F8 80242A48 44022000 */  mfc1      $v0, $f4
/* 9120FC 80242A4C 00000000 */  nop
/* 912100 80242A50 A6220012 */  sh        $v0, 0x12($s1)
/* 912104 80242A54 C6000040 */  lwc1      $f0, 0x40($s0)
/* 912108 80242A58 24020001 */  addiu     $v0, $zero, 1
/* 91210C 80242A5C A2220007 */  sb        $v0, 7($s1)
/* 912110 80242A60 4600010D */  trunc.w.s $f4, $f0
/* 912114 80242A64 44022000 */  mfc1      $v0, $f4
/* 912118 80242A68 00000000 */  nop
/* 91211C 80242A6C A6220014 */  sh        $v0, 0x14($s1)
/* 912120 80242A70 C6800018 */  lwc1      $f0, 0x18($s4)
/* 912124 80242A74 C60C0038 */  lwc1      $f12, 0x38($s0)
/* 912128 80242A78 C60E0040 */  lwc1      $f14, 0x40($s0)
/* 91212C 80242A7C 8E420000 */  lw        $v0, ($s2)
/* 912130 80242A80 E6000018 */  swc1      $f0, 0x18($s0)
/* 912134 80242A84 8C460028 */  lw        $a2, 0x28($v0)
/* 912138 80242A88 0C00A7B5 */  jal       dist2D
/* 91213C 80242A8C 8C470030 */   lw       $a3, 0x30($v0)
/* 912140 80242A90 C6020018 */  lwc1      $f2, 0x18($s0)
/* 912144 80242A94 46020003 */  div.s     $f0, $f0, $f2
/* 912148 80242A98 3C018024 */  lui       $at, %hi(D_802465D8_915C88)
/* 91214C 80242A9C D42265D8 */  ldc1      $f2, %lo(D_802465D8_915C88)($at)
/* 912150 80242AA0 46000021 */  cvt.d.s   $f0, $f0
/* 912154 80242AA4 46220000 */  add.d     $f0, $f0, $f2
/* 912158 80242AA8 4620010D */  trunc.w.d $f4, $f0
/* 91215C 80242AAC 44022000 */  mfc1      $v0, $f4
/* 912160 80242AB0 00000000 */  nop
/* 912164 80242AB4 A602008E */  sh        $v0, 0x8e($s0)
/* 912168 80242AB8 00021400 */  sll       $v0, $v0, 0x10
/* 91216C 80242ABC 00021403 */  sra       $v0, $v0, 0x10
/* 912170 80242AC0 2842000F */  slti      $v0, $v0, 0xf
/* 912174 80242AC4 10400002 */  beqz      $v0, .L80242AD0
/* 912178 80242AC8 2402000F */   addiu    $v0, $zero, 0xf
/* 91217C 80242ACC A602008E */  sh        $v0, 0x8e($s0)
.L80242AD0:
/* 912180 80242AD0 24020016 */  addiu     $v0, $zero, 0x16
/* 912184 80242AD4 AE620070 */  sw        $v0, 0x70($s3)
.L80242AD8:
/* 912188 80242AD8 8FBF002C */  lw        $ra, 0x2c($sp)
/* 91218C 80242ADC 8FB40028 */  lw        $s4, 0x28($sp)
/* 912190 80242AE0 8FB30024 */  lw        $s3, 0x24($sp)
/* 912194 80242AE4 8FB20020 */  lw        $s2, 0x20($sp)
/* 912198 80242AE8 8FB1001C */  lw        $s1, 0x1c($sp)
/* 91219C 80242AEC 8FB00018 */  lw        $s0, 0x18($sp)
/* 9121A0 80242AF0 03E00008 */  jr        $ra
/* 9121A4 80242AF4 27BD0030 */   addiu    $sp, $sp, 0x30
