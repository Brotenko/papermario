.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240FC0_B45730
/* B45730 80240FC0 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* B45734 80240FC4 AFB10014 */  sw        $s1, 0x14($sp)
/* B45738 80240FC8 3C118011 */  lui       $s1, %hi(gPlayerStatus)
/* B4573C 80240FCC 2631EFC8 */  addiu     $s1, $s1, %lo(gPlayerStatus)
/* B45740 80240FD0 AFB00010 */  sw        $s0, 0x10($sp)
/* B45744 80240FD4 3C108024 */  lui       $s0, %hi(D_8024625C_B4A9CC)
/* B45748 80240FD8 2610625C */  addiu     $s0, $s0, %lo(D_8024625C_B4A9CC)
/* B4574C 80240FDC AFBF0018 */  sw        $ra, 0x18($sp)
/* B45750 80240FE0 8E030000 */  lw        $v1, ($s0)
/* B45754 80240FE4 28620003 */  slti      $v0, $v1, 3
/* B45758 80240FE8 10400007 */  beqz      $v0, .L80241008
/* B4575C 80240FEC 0220202D */   daddu    $a0, $s1, $zero
/* B45760 80240FF0 1C600027 */  bgtz      $v1, .L80241090
/* B45764 80240FF4 24620001 */   addiu    $v0, $v1, 1
/* B45768 80240FF8 10600008 */  beqz      $v1, .L8024101C
/* B4576C 80240FFC 0000102D */   daddu    $v0, $zero, $zero
/* B45770 80241000 08090437 */  j         .L802410DC
/* B45774 80241004 00000000 */   nop
.L80241008:
/* B45778 80241008 24020003 */  addiu     $v0, $zero, 3
/* B4577C 8024100C 10620022 */  beq       $v1, $v0, .L80241098
/* B45780 80241010 0000102D */   daddu    $v0, $zero, $zero
/* B45784 80241014 08090437 */  j         .L802410DC
/* B45788 80241018 00000000 */   nop
.L8024101C:
/* B4578C 8024101C 0C03AD8E */  jal       partner_get_ride_script
/* B45790 80241020 00000000 */   nop
/* B45794 80241024 0040202D */  daddu     $a0, $v0, $zero
/* B45798 80241028 1080002B */  beqz      $a0, .L802410D8
/* B4579C 8024102C 0000282D */   daddu    $a1, $zero, $zero
/* B457A0 80241030 8E020000 */  lw        $v0, ($s0)
/* B457A4 80241034 24060020 */  addiu     $a2, $zero, 0x20
/* B457A8 80241038 24420001 */  addiu     $v0, $v0, 1
/* B457AC 8024103C 0C0B0CF8 */  jal       start_script
/* B457B0 80241040 AE020000 */   sw       $v0, ($s0)
/* B457B4 80241044 C6200028 */  lwc1      $f0, 0x28($s1)
/* B457B8 80241048 3C014120 */  lui       $at, 0x4120
/* B457BC 8024104C 44811000 */  mtc1      $at, $f2
/* B457C0 80241050 00000000 */  nop
/* B457C4 80241054 46020001 */  sub.s     $f0, $f0, $f2
/* B457C8 80241058 4600010D */  trunc.w.s $f4, $f0
/* B457CC 8024105C E4440088 */  swc1      $f4, 0x88($v0)
/* B457D0 80241060 C620002C */  lwc1      $f0, 0x2c($s1)
/* B457D4 80241064 4600010D */  trunc.w.s $f4, $f0
/* B457D8 80241068 E444008C */  swc1      $f4, 0x8c($v0)
/* B457DC 8024106C C6200030 */  lwc1      $f0, 0x30($s1)
/* B457E0 80241070 24030001 */  addiu     $v1, $zero, 1
/* B457E4 80241074 3C018025 */  lui       $at, %hi(D_8024A290_B4EA00)
/* B457E8 80241078 AC22A290 */  sw        $v0, %lo(D_8024A290_B4EA00)($at)
/* B457EC 8024107C AC4300B4 */  sw        $v1, 0xb4($v0)
/* B457F0 80241080 4600010D */  trunc.w.s $f4, $f0
/* B457F4 80241084 E4440090 */  swc1      $f4, 0x90($v0)
/* B457F8 80241088 08090437 */  j         .L802410DC
/* B457FC 8024108C 0000102D */   daddu    $v0, $zero, $zero
.L80241090:
/* B45800 80241090 08090436 */  j         .L802410D8
/* B45804 80241094 AE020000 */   sw       $v0, ($s0)
.L80241098:
/* B45808 80241098 3C038011 */  lui       $v1, %hi(D_8010C930_A110A0)
/* B4580C 8024109C 8C63C930 */  lw        $v1, %lo(D_8010C930_A110A0)($v1)
/* B45810 802410A0 3C014387 */  lui       $at, 0x4387
/* B45814 802410A4 44810000 */  mtc1      $at, $f0
/* B45818 802410A8 3C014334 */  lui       $at, 0x4334
/* B4581C 802410AC 44811000 */  mtc1      $at, $f2
/* B45820 802410B0 24020002 */  addiu     $v0, $zero, 2
/* B45824 802410B4 E460000C */  swc1      $f0, 0xc($v1)
/* B45828 802410B8 E4800080 */  swc1      $f0, 0x80($a0)
/* B4582C 802410BC E4800084 */  swc1      $f0, 0x84($a0)
/* B45830 802410C0 E48200A8 */  swc1      $f2, 0xa8($a0)
/* B45834 802410C4 3C048025 */  lui       $a0, %hi(D_8024A290_B4EA00)
/* B45838 802410C8 8C84A290 */  lw        $a0, %lo(D_8024A290_B4EA00)($a0)
/* B4583C 802410CC 24030001 */  addiu     $v1, $zero, 1
/* B45840 802410D0 08090437 */  j         .L802410DC
/* B45844 802410D4 AC830074 */   sw       $v1, 0x74($a0)
.L802410D8:
/* B45848 802410D8 0000102D */  daddu     $v0, $zero, $zero
.L802410DC:
/* B4584C 802410DC 8FBF0018 */  lw        $ra, 0x18($sp)
/* B45850 802410E0 8FB10014 */  lw        $s1, 0x14($sp)
/* B45854 802410E4 8FB00010 */  lw        $s0, 0x10($sp)
/* B45858 802410E8 03E00008 */  jr        $ra
/* B4585C 802410EC 27BD0020 */   addiu    $sp, $sp, 0x20
