.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802408D0_865410
/* 865410 802408D0 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 865414 802408D4 24040001 */  addiu     $a0, $zero, 1
/* 865418 802408D8 27A50010 */  addiu     $a1, $sp, 0x10
/* 86541C 802408DC 27A60014 */  addiu     $a2, $sp, 0x14
/* 865420 802408E0 27A70018 */  addiu     $a3, $sp, 0x18
/* 865424 802408E4 AFBF0028 */  sw        $ra, 0x28($sp)
/* 865428 802408E8 AFB10024 */  sw        $s1, 0x24($sp)
/* 86542C 802408EC 0C0470AC */  jal       func_8011C2B0
/* 865430 802408F0 AFB00020 */   sw       $s0, 0x20($sp)
/* 865434 802408F4 3C118024 */  lui       $s1, %hi(D_80241B64_8666A4)
/* 865438 802408F8 26311B64 */  addiu     $s1, $s1, %lo(D_80241B64_8666A4)
/* 86543C 802408FC 8FA40010 */  lw        $a0, 0x10($sp)
/* 865440 80240900 8FA50014 */  lw        $a1, 0x14($sp)
/* 865444 80240904 8FA60018 */  lw        $a2, 0x18($sp)
/* 865448 80240908 0C090196 */  jal       func_80240658_865198
/* 86544C 8024090C 0220382D */   daddu    $a3, $s1, $zero
/* 865450 80240910 3C03800A */  lui       $v1, %hi(gMasterGfxPos)
/* 865454 80240914 2463A66C */  addiu     $v1, $v1, %lo(gMasterGfxPos)
/* 865458 80240918 8C620000 */  lw        $v0, ($v1)
/* 86545C 8024091C 24040001 */  addiu     $a0, $zero, 1
/* 865460 80240920 0040802D */  daddu     $s0, $v0, $zero
/* 865464 80240924 24420008 */  addiu     $v0, $v0, 8
/* 865468 80240928 AC620000 */  sw        $v0, ($v1)
/* 86546C 8024092C 3C02DE00 */  lui       $v0, 0xde00
/* 865470 80240930 0C0470BB */  jal       func_8011C2EC
/* 865474 80240934 AE020000 */   sw       $v0, ($s0)
/* 865478 80240938 8E230000 */  lw        $v1, ($s1)
/* 86547C 8024093C 04600003 */  bltz      $v1, .L8024094C
/* 865480 80240940 AE020004 */   sw       $v0, 4($s0)
/* 865484 80240944 24620004 */  addiu     $v0, $v1, 4
/* 865488 80240948 AE220000 */  sw        $v0, ($s1)
.L8024094C:
/* 86548C 8024094C 8E220000 */  lw        $v0, ($s1)
/* 865490 80240950 28420168 */  slti      $v0, $v0, 0x168
/* 865494 80240954 14400002 */  bnez      $v0, .L80240960
/* 865498 80240958 2402FFFF */   addiu    $v0, $zero, -1
/* 86549C 8024095C AE220000 */  sw        $v0, ($s1)
.L80240960:
/* 8654A0 80240960 8FBF0028 */  lw        $ra, 0x28($sp)
/* 8654A4 80240964 8FB10024 */  lw        $s1, 0x24($sp)
/* 8654A8 80240968 8FB00020 */  lw        $s0, 0x20($sp)
/* 8654AC 8024096C 03E00008 */  jr        $ra
/* 8654B0 80240970 27BD0030 */   addiu    $sp, $sp, 0x30
