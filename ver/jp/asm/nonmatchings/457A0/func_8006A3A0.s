.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8006A3A0
/* 457A0 8006A3A0 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 457A4 8006A3A4 8FA20058 */  lw        $v0, 0x58($sp)
/* 457A8 8006A3A8 AFB40030 */  sw        $s4, 0x30($sp)
/* 457AC 8006A3AC 0080A021 */  addu      $s4, $a0, $zero
/* 457B0 8006A3B0 AFB3002C */  sw        $s3, 0x2c($sp)
/* 457B4 8006A3B4 00A09821 */  addu      $s3, $a1, $zero
/* 457B8 8006A3B8 AFB50034 */  sw        $s5, 0x34($sp)
/* 457BC 8006A3BC 24150002 */  addiu     $s5, $zero, 2
/* 457C0 8006A3C0 AFB7003C */  sw        $s7, 0x3c($sp)
/* 457C4 8006A3C4 00E0B821 */  addu      $s7, $a3, $zero
/* 457C8 8006A3C8 AFB00020 */  sw        $s0, 0x20($sp)
/* 457CC 8006A3CC 00C08021 */  addu      $s0, $a2, $zero
/* 457D0 8006A3D0 3204FFFF */  andi      $a0, $s0, 0xffff
/* 457D4 8006A3D4 2C830007 */  sltiu     $v1, $a0, 7
/* 457D8 8006A3D8 AFBF0044 */  sw        $ra, 0x44($sp)
/* 457DC 8006A3DC AFBE0040 */  sw        $fp, 0x40($sp)
/* 457E0 8006A3E0 AFB60038 */  sw        $s6, 0x38($sp)
/* 457E4 8006A3E4 AFB20028 */  sw        $s2, 0x28($sp)
/* 457E8 8006A3E8 38420001 */  xori      $v0, $v0, 1
/* 457EC 8006A3EC 0002102B */  sltu      $v0, $zero, $v0
/* 457F0 8006A3F0 00431024 */  and       $v0, $v0, $v1
/* 457F4 8006A3F4 10400003 */  beqz      $v0, .L8006A404
/* 457F8 8006A3F8 AFB10024 */   sw       $s1, 0x24($sp)
/* 457FC 8006A3FC 1480005D */  bnez      $a0, .L8006A574
/* 45800 8006A400 00001021 */   addu     $v0, $zero, $zero
.L8006A404:
/* 45804 8006A404 0C019765 */  jal       func_80065D94
/* 45808 8006A408 241E0003 */   addiu    $fp, $zero, 3
/* 4580C 8006A40C 3216FFFF */  andi      $s6, $s0, 0xffff
/* 45810 8006A410 00108140 */  sll       $s0, $s0, 5
/* 45814 8006A414 AFB00014 */  sw        $s0, 0x14($sp)
.L8006A418:
/* 45818 8006A418 3C02800A */  lui       $v0, %hi(D_8009A5FC)
/* 4581C 8006A41C 9042A5FC */  lbu       $v0, %lo(D_8009A5FC)($v0)
/* 45820 8006A420 3C10800E */  lui       $s0, %hi(D_800D9FE0)
/* 45824 8006A424 145E0005 */  bne       $v0, $fp, .L8006A43C
/* 45828 8006A428 26109FE0 */   addiu    $s0, $s0, %lo(D_800D9FE0)
/* 4582C 8006A42C 3C028009 */  lui       $v0, %hi(D_80095870)
/* 45830 8006A430 8C425870 */  lw        $v0, %lo(D_80095870)($v0)
/* 45834 8006A434 5053001A */  beql      $v0, $s3, .L8006A4A0
/* 45838 8006A438 02708021 */   addu     $s0, $s3, $s0
.L8006A43C:
/* 4583C 8006A43C 3C01800A */  lui       $at, %hi(D_8009A5FC)
/* 45840 8006A440 A03EA5FC */  sb        $fp, %lo(D_8009A5FC)($at)
/* 45844 8006A444 3C018009 */  lui       $at, %hi(D_80095870)
/* 45848 8006A448 AC335870 */  sw        $s3, %lo(D_80095870)($at)
/* 4584C 8006A44C 1A600006 */  blez      $s3, .L8006A468
/* 45850 8006A450 00001821 */   addu     $v1, $zero, $zero
.L8006A454:
/* 45854 8006A454 A2000000 */  sb        $zero, ($s0)
/* 45858 8006A458 24630001 */  addiu     $v1, $v1, 1
/* 4585C 8006A45C 0073102A */  slt       $v0, $v1, $s3
/* 45860 8006A460 1440FFFC */  bnez      $v0, .L8006A454
/* 45864 8006A464 26100001 */   addiu    $s0, $s0, 1
.L8006A468:
/* 45868 8006A468 24080001 */  addiu     $t0, $zero, 1
/* 4586C 8006A46C 3C01800E */  lui       $at, %hi(D_800DA01C)
/* 45870 8006A470 AC28A01C */  sw        $t0, %lo(D_800DA01C)($at)
/* 45874 8006A474 240800FF */  addiu     $t0, $zero, 0xff
/* 45878 8006A478 24020023 */  addiu     $v0, $zero, 0x23
/* 4587C 8006A47C A2080000 */  sb        $t0, ($s0)
/* 45880 8006A480 24080001 */  addiu     $t0, $zero, 1
/* 45884 8006A484 A2080002 */  sb        $t0, 2($s0)
/* 45888 8006A488 240800FF */  addiu     $t0, $zero, 0xff
/* 4588C 8006A48C A2020001 */  sb        $v0, 1($s0)
/* 45890 8006A490 240200FE */  addiu     $v0, $zero, 0xfe
/* 45894 8006A494 A21E0003 */  sb        $fp, 3($s0)
/* 45898 8006A498 A2080026 */  sb        $t0, 0x26($s0)
/* 4589C 8006A49C A2020027 */  sb        $v0, 0x27($s0)
.L8006A4A0:
/* 458A0 8006A4A0 02C02021 */  addu      $a0, $s6, $zero
/* 458A4 8006A4A4 001610C2 */  srl       $v0, $s6, 3
/* 458A8 8006A4A8 0C01B210 */  jal       func_8006C840
/* 458AC 8006A4AC A2020004 */   sb       $v0, 4($s0)
/* 458B0 8006A4B0 02E02021 */  addu      $a0, $s7, $zero
/* 458B4 8006A4B4 8FA80014 */  lw        $t0, 0x14($sp)
/* 458B8 8006A4B8 26050006 */  addiu     $a1, $s0, 6
/* 458BC 8006A4BC 24060020 */  addiu     $a2, $zero, 0x20
/* 458C0 8006A4C0 00481025 */  or        $v0, $v0, $t0
/* 458C4 8006A4C4 0C019188 */  jal       func_80064620
/* 458C8 8006A4C8 A2020005 */   sb       $v0, 5($s0)
/* 458CC 8006A4CC 3C05800E */  lui       $a1, %hi(D_800D9FE0)
/* 458D0 8006A4D0 24A59FE0 */  addiu     $a1, $a1, %lo(D_800D9FE0)
/* 458D4 8006A4D4 0C019724 */  jal       func_80065C90
/* 458D8 8006A4D8 24040001 */   addiu    $a0, $zero, 1
/* 458DC 8006A4DC 0C01B22B */  jal       func_8006C8AC
/* 458E0 8006A4E0 02E02021 */   addu     $a0, $s7, $zero
/* 458E4 8006A4E4 02802021 */  addu      $a0, $s4, $zero
/* 458E8 8006A4E8 00002821 */  addu      $a1, $zero, $zero
/* 458EC 8006A4EC 24060001 */  addiu     $a2, $zero, 1
/* 458F0 8006A4F0 0C0195B0 */  jal       func_800656C0
/* 458F4 8006A4F4 00409021 */   addu     $s2, $v0, $zero
/* 458F8 8006A4F8 3C05800E */  lui       $a1, %hi(D_800D9FE0)
/* 458FC 8006A4FC 24A59FE0 */  addiu     $a1, $a1, %lo(D_800D9FE0)
/* 45900 8006A500 0C019724 */  jal       func_80065C90
/* 45904 8006A504 00002021 */   addu     $a0, $zero, $zero
/* 45908 8006A508 02802021 */  addu      $a0, $s4, $zero
/* 4590C 8006A50C 00002821 */  addu      $a1, $zero, $zero
/* 45910 8006A510 0C0195B0 */  jal       func_800656C0
/* 45914 8006A514 24060001 */   addiu    $a2, $zero, 1
/* 45918 8006A518 92020002 */  lbu       $v0, 2($s0)
/* 4591C 8006A51C 304200C0 */  andi      $v0, $v0, 0xc0
/* 45920 8006A520 00028902 */  srl       $s1, $v0, 4
/* 45924 8006A524 5620000B */  bnel      $s1, $zero, .L8006A554
/* 45928 8006A528 24110001 */   addiu    $s1, $zero, 1
/* 4592C 8006A52C 92030026 */  lbu       $v1, 0x26($s0)
/* 45930 8006A530 324200FF */  andi      $v0, $s2, 0xff
/* 45934 8006A534 10430007 */  beq       $v0, $v1, .L8006A554
/* 45938 8006A538 02802021 */   addu     $a0, $s4, $zero
/* 4593C 8006A53C 0C01A528 */  jal       func_800694A0
/* 45940 8006A540 02602821 */   addu     $a1, $s3, $zero
/* 45944 8006A544 00408821 */  addu      $s1, $v0, $zero
/* 45948 8006A548 16200007 */  bnez      $s1, .L8006A568
/* 4594C 8006A54C 00000000 */   nop
/* 45950 8006A550 24110004 */  addiu     $s1, $zero, 4
.L8006A554:
/* 45954 8006A554 24020004 */  addiu     $v0, $zero, 4
/* 45958 8006A558 16220003 */  bne       $s1, $v0, .L8006A568
/* 4595C 8006A55C 02A01021 */   addu     $v0, $s5, $zero
/* 45960 8006A560 0441FFAD */  bgez      $v0, .L8006A418
/* 45964 8006A564 26B5FFFF */   addiu    $s5, $s5, -1
.L8006A568:
/* 45968 8006A568 0C019780 */  jal       func_80065E00
/* 4596C 8006A56C 00000000 */   nop
/* 45970 8006A570 02201021 */  addu      $v0, $s1, $zero
.L8006A574:
/* 45974 8006A574 8FBF0044 */  lw        $ra, 0x44($sp)
/* 45978 8006A578 8FBE0040 */  lw        $fp, 0x40($sp)
/* 4597C 8006A57C 8FB7003C */  lw        $s7, 0x3c($sp)
/* 45980 8006A580 8FB60038 */  lw        $s6, 0x38($sp)
/* 45984 8006A584 8FB50034 */  lw        $s5, 0x34($sp)
/* 45988 8006A588 8FB40030 */  lw        $s4, 0x30($sp)
/* 4598C 8006A58C 8FB3002C */  lw        $s3, 0x2c($sp)
/* 45990 8006A590 8FB20028 */  lw        $s2, 0x28($sp)
/* 45994 8006A594 8FB10024 */  lw        $s1, 0x24($sp)
/* 45998 8006A598 8FB00020 */  lw        $s0, 0x20($sp)
/* 4599C 8006A59C 03E00008 */  jr        $ra
/* 459A0 8006A5A0 27BD0048 */   addiu    $sp, $sp, 0x48
/* 459A4 8006A5A4 00000000 */  nop
/* 459A8 8006A5A8 00000000 */  nop
/* 459AC 8006A5AC 00000000 */  nop
/* 459B0 8006A5B0 00000000 */  nop
/* 459B4 8006A5B4 00000000 */  nop
/* 459B8 8006A5B8 00000000 */  nop
/* 459BC 8006A5BC 00000000 */  nop
/* 459C0 8006A5C0 00000000 */  nop
/* 459C4 8006A5C4 00000000 */  nop
/* 459C8 8006A5C8 00000000 */  nop
/* 459CC 8006A5CC 00000000 */  nop
/* 459D0 8006A5D0 00000000 */  nop
/* 459D4 8006A5D4 00000000 */  nop
/* 459D8 8006A5D8 00000000 */  nop
/* 459DC 8006A5DC 00000000 */  nop
/* 459E0 8006A5E0 00000000 */  nop
/* 459E4 8006A5E4 00000000 */  nop
/* 459E8 8006A5E8 00000000 */  nop
/* 459EC 8006A5EC 00000000 */  nop
/* 459F0 8006A5F0 00000000 */  nop
/* 459F4 8006A5F4 00000000 */  nop
/* 459F8 8006A5F8 00000000 */  nop
/* 459FC 8006A5FC 00000000 */  nop
/* 45A00 8006A600 00000000 */  nop
/* 45A04 8006A604 00000000 */  nop
/* 45A08 8006A608 00000000 */  nop
/* 45A0C 8006A60C 00000000 */  nop
