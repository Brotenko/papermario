.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80066660
/* 41A60 80066660 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 41A64 80066664 AFB20018 */  sw        $s2, 0x18($sp)
/* 41A68 80066668 00809021 */  addu      $s2, $a0, $zero
/* 41A6C 8006666C AFBF001C */  sw        $ra, 0x1c($sp)
/* 41A70 80066670 AFB10014 */  sw        $s1, 0x14($sp)
/* 41A74 80066674 0C01ACD0 */  jal       func_8006B340
/* 41A78 80066678 AFB00010 */   sw       $s0, 0x10($sp)
/* 41A7C 8006667C 3C038009 */  lui       $v1, %hi(D_80094650)
/* 41A80 80066680 8C634650 */  lw        $v1, %lo(D_80094650)($v1)
/* 41A84 80066684 8C660000 */  lw        $a2, ($v1)
/* 41A88 80066688 8E500010 */  lw        $s0, 0x10($s2)
/* 41A8C 8006668C 8E510014 */  lw        $s1, 0x14($s2)
/* 41A90 80066690 10C30017 */  beq       $a2, $v1, .L800666F0
/* 41A94 80066694 00403821 */   addu     $a3, $v0, $zero
/* 41A98 80066698 080199B2 */  j         .L800666C8
/* 41A9C 8006669C 00000000 */   nop
.L800666A0:
/* 41AA0 800666A0 8CC20010 */  lw        $v0, 0x10($a2)
/* 41AA4 800666A4 8CC30014 */  lw        $v1, 0x14($a2)
/* 41AA8 800666A8 8CC60000 */  lw        $a2, ($a2)
/* 41AAC 800666AC 3C048009 */  lui       $a0, %hi(D_80094650)
/* 41AB0 800666B0 8C844650 */  lw        $a0, %lo(D_80094650)($a0)
/* 41AB4 800666B4 0223282B */  sltu      $a1, $s1, $v1
/* 41AB8 800666B8 02238823 */  subu      $s1, $s1, $v1
/* 41ABC 800666BC 02028023 */  subu      $s0, $s0, $v0
/* 41AC0 800666C0 10C4000B */  beq       $a2, $a0, .L800666F0
/* 41AC4 800666C4 02058023 */   subu     $s0, $s0, $a1
.L800666C8:
/* 41AC8 800666C8 8CC30010 */  lw        $v1, 0x10($a2)
/* 41ACC 800666CC 0070102B */  sltu      $v0, $v1, $s0
/* 41AD0 800666D0 1440FFF3 */  bnez      $v0, .L800666A0
/* 41AD4 800666D4 00000000 */   nop
/* 41AD8 800666D8 16030005 */  bne       $s0, $v1, .L800666F0
/* 41ADC 800666DC 00000000 */   nop
/* 41AE0 800666E0 8CC20014 */  lw        $v0, 0x14($a2)
/* 41AE4 800666E4 0051102B */  sltu      $v0, $v0, $s1
/* 41AE8 800666E8 1440FFED */  bnez      $v0, .L800666A0
/* 41AEC 800666EC 00000000 */   nop
.L800666F0:
/* 41AF0 800666F0 3C028009 */  lui       $v0, %hi(D_80094650)
/* 41AF4 800666F4 8C424650 */  lw        $v0, %lo(D_80094650)($v0)
/* 41AF8 800666F8 AE500010 */  sw        $s0, 0x10($s2)
/* 41AFC 800666FC AE510014 */  sw        $s1, 0x14($s2)
/* 41B00 80066700 50C2000A */  beql      $a2, $v0, .L8006672C
/* 41B04 80066704 AE460000 */   sw       $a2, ($s2)
/* 41B08 80066708 8CC20010 */  lw        $v0, 0x10($a2)
/* 41B0C 8006670C 8CC30014 */  lw        $v1, 0x14($a2)
/* 41B10 80066710 0071202B */  sltu      $a0, $v1, $s1
/* 41B14 80066714 00711823 */  subu      $v1, $v1, $s1
/* 41B18 80066718 00501023 */  subu      $v0, $v0, $s0
/* 41B1C 8006671C 00441023 */  subu      $v0, $v0, $a0
/* 41B20 80066720 ACC20010 */  sw        $v0, 0x10($a2)
/* 41B24 80066724 ACC30014 */  sw        $v1, 0x14($a2)
/* 41B28 80066728 AE460000 */  sw        $a2, ($s2)
.L8006672C:
/* 41B2C 8006672C 8CC20004 */  lw        $v0, 4($a2)
/* 41B30 80066730 AE420004 */  sw        $v0, 4($s2)
/* 41B34 80066734 8CC20004 */  lw        $v0, 4($a2)
/* 41B38 80066738 00E02021 */  addu      $a0, $a3, $zero
/* 41B3C 8006673C AC520000 */  sw        $s2, ($v0)
/* 41B40 80066740 0C01ACEC */  jal       func_8006B3B0
/* 41B44 80066744 ACD20004 */   sw       $s2, 4($a2)
/* 41B48 80066748 02001021 */  addu      $v0, $s0, $zero
/* 41B4C 8006674C 02201821 */  addu      $v1, $s1, $zero
/* 41B50 80066750 8FBF001C */  lw        $ra, 0x1c($sp)
/* 41B54 80066754 8FB20018 */  lw        $s2, 0x18($sp)
/* 41B58 80066758 8FB10014 */  lw        $s1, 0x14($sp)
/* 41B5C 8006675C 8FB00010 */  lw        $s0, 0x10($sp)
/* 41B60 80066760 03E00008 */  jr        $ra
/* 41B64 80066764 27BD0020 */   addiu    $sp, $sp, 0x20
/* 41B68 80066768 00000000 */  nop
/* 41B6C 8006676C 00000000 */  nop
