.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024240C_96B5CC
/* 96B5CC 8024240C 27BDFF70 */  addiu     $sp, $sp, -0x90
/* 96B5D0 80242410 3C05F4AC */  lui       $a1, 0xf4ac
/* 96B5D4 80242414 3C048025 */  lui       $a0, %hi(D_8024EFCC)
/* 96B5D8 80242418 8C84EFCC */  lw        $a0, %lo(D_8024EFCC)($a0)
/* 96B5DC 8024241C AFBF0080 */  sw        $ra, 0x80($sp)
/* 96B5E0 80242420 AFB1007C */  sw        $s1, 0x7c($sp)
/* 96B5E4 80242424 AFB00078 */  sw        $s0, 0x78($sp)
/* 96B5E8 80242428 F7B40088 */  sdc1      $f20, 0x88($sp)
/* 96B5EC 8024242C 0C0B1EAF */  jal       get_variable
/* 96B5F0 80242430 34A5D489 */   ori      $a1, $a1, 0xd489
/* 96B5F4 80242434 0040182D */  daddu     $v1, $v0, $zero
/* 96B5F8 80242438 2C62000E */  sltiu     $v0, $v1, 0xe
/* 96B5FC 8024243C 10400295 */  beqz      $v0, .L80242E94
/* 96B600 80242440 00031080 */   sll      $v0, $v1, 2
/* 96B604 80242444 3C018025 */  lui       $at, %hi(jtbl_8024EF20_9780E0)
/* 96B608 80242448 00220821 */  addu      $at, $at, $v0
/* 96B60C 8024244C 8C22EF20 */  lw        $v0, %lo(jtbl_8024EF20_9780E0)($at)
/* 96B610 80242450 00400008 */  jr        $v0
/* 96B614 80242454 00000000 */   nop
glabel L80242458_96B618
/* 96B618 80242458 3C05F4AC */  lui       $a1, 0xf4ac
/* 96B61C 8024245C 34A5D489 */  ori       $a1, $a1, 0xd489
/* 96B620 80242460 3C048025 */  lui       $a0, %hi(D_8024EFCC)
/* 96B624 80242464 8C84EFCC */  lw        $a0, %lo(D_8024EFCC)($a0)
/* 96B628 80242468 3C018025 */  lui       $at, %hi(D_8024EF88)
/* 96B62C 8024246C AC20EF88 */  sw        $zero, %lo(D_8024EF88)($at)
/* 96B630 80242470 0C0B2026 */  jal       set_variable
/* 96B634 80242474 24060001 */   addiu    $a2, $zero, 1
/* 96B638 80242478 3C028025 */  lui       $v0, %hi(D_8024F010)
/* 96B63C 8024247C 2442F010 */  addiu     $v0, $v0, %lo(D_8024F010)
/* 96B640 80242480 24040001 */  addiu     $a0, $zero, 1
/* 96B644 80242484 3C01C348 */  lui       $at, 0xc348
/* 96B648 80242488 44811000 */  mtc1      $at, $f2
/* 96B64C 8024248C 3C014348 */  lui       $at, 0x4348
/* 96B650 80242490 44810000 */  mtc1      $at, $f0
/* 96B654 80242494 3C013F80 */  lui       $at, 0x3f80
/* 96B658 80242498 44812000 */  mtc1      $at, $f4
/* 96B65C 8024249C 3C014000 */  lui       $at, 0x4000
/* 96B660 802424A0 44813000 */  mtc1      $at, $f6
/* 96B664 802424A4 2403000C */  addiu     $v1, $zero, 0xc
/* 96B668 802424A8 AC43001C */  sw        $v1, 0x1c($v0)
/* 96B66C 802424AC 24030002 */  addiu     $v1, $zero, 2
/* 96B670 802424B0 AC430020 */  sw        $v1, 0x20($v0)
/* 96B674 802424B4 24030030 */  addiu     $v1, $zero, 0x30
/* 96B678 802424B8 AC430040 */  sw        $v1, 0x40($v0)
/* 96B67C 802424BC 24030008 */  addiu     $v1, $zero, 8
/* 96B680 802424C0 AC430060 */  sw        $v1, 0x60($v0)
/* 96B684 802424C4 24030005 */  addiu     $v1, $zero, 5
/* 96B688 802424C8 AC430064 */  sw        $v1, 0x64($v0)
/* 96B68C 802424CC 24030004 */  addiu     $v1, $zero, 4
/* 96B690 802424D0 AC440000 */  sw        $a0, ($v0)
/* 96B694 802424D4 AC400008 */  sw        $zero, 8($v0)
/* 96B698 802424D8 AC40000C */  sw        $zero, 0xc($v0)
/* 96B69C 802424DC AC400014 */  sw        $zero, 0x14($v0)
/* 96B6A0 802424E0 AC400010 */  sw        $zero, 0x10($v0)
/* 96B6A4 802424E4 AC440018 */  sw        $a0, 0x18($v0)
/* 96B6A8 802424E8 AC440024 */  sw        $a0, 0x24($v0)
/* 96B6AC 802424EC AC40002C */  sw        $zero, 0x2c($v0)
/* 96B6B0 802424F0 AC400038 */  sw        $zero, 0x38($v0)
/* 96B6B4 802424F4 AC400034 */  sw        $zero, 0x34($v0)
/* 96B6B8 802424F8 AC44003C */  sw        $a0, 0x3c($v0)
/* 96B6BC 802424FC AC400044 */  sw        $zero, 0x44($v0)
/* 96B6C0 80242500 AC440048 */  sw        $a0, 0x48($v0)
/* 96B6C4 80242504 AC40004C */  sw        $zero, 0x4c($v0)
/* 96B6C8 80242508 AC40005C */  sw        $zero, 0x5c($v0)
/* 96B6CC 8024250C AC400058 */  sw        $zero, 0x58($v0)
/* 96B6D0 80242510 AC430068 */  sw        $v1, 0x68($v0)
/* 96B6D4 80242514 E4420004 */  swc1      $f2, 4($v0)
/* 96B6D8 80242518 E4400028 */  swc1      $f0, 0x28($v0)
/* 96B6DC 8024251C E4440030 */  swc1      $f4, 0x30($v0)
/* 96B6E0 80242520 E4400050 */  swc1      $f0, 0x50($v0)
/* 96B6E4 80242524 08090BA5 */  j         .L80242E94
/* 96B6E8 80242528 E4460054 */   swc1     $f6, 0x54($v0)
glabel L8024252C_96B6EC
/* 96B6EC 8024252C 3C028025 */  lui       $v0, %hi(D_8024F010)
/* 96B6F0 80242530 2442F010 */  addiu     $v0, $v0, %lo(D_8024F010)
/* 96B6F4 80242534 3C108025 */  lui       $s0, %hi(D_8024EF88)
/* 96B6F8 80242538 2610EF88 */  addiu     $s0, $s0, %lo(D_8024EF88)
/* 96B6FC 8024253C C4440004 */  lwc1      $f4, 4($v0)
/* 96B700 80242540 3C014120 */  lui       $at, 0x4120
/* 96B704 80242544 44810000 */  mtc1      $at, $f0
/* 96B708 80242548 C4420028 */  lwc1      $f2, 0x28($v0)
/* 96B70C 8024254C 46002100 */  add.s     $f4, $f4, $f0
/* 96B710 80242550 3C01C120 */  lui       $at, 0xc120
/* 96B714 80242554 44813000 */  mtc1      $at, $f6
/* 96B718 80242558 8E030000 */  lw        $v1, ($s0)
/* 96B71C 8024255C 46061080 */  add.s     $f2, $f2, $f6
/* 96B720 80242560 C4400050 */  lwc1      $f0, 0x50($v0)
/* 96B724 80242564 24630001 */  addiu     $v1, $v1, 1
/* 96B728 80242568 AE030000 */  sw        $v1, ($s0)
/* 96B72C 8024256C 46060000 */  add.s     $f0, $f0, $f6
/* 96B730 80242570 E4440004 */  swc1      $f4, 4($v0)
/* 96B734 80242574 E4420028 */  swc1      $f2, 0x28($v0)
/* 96B738 80242578 E4400050 */  swc1      $f0, 0x50($v0)
/* 96B73C 8024257C 24020012 */  addiu     $v0, $zero, 0x12
/* 96B740 80242580 14620006 */  bne       $v1, $v0, .L8024259C
/* 96B744 80242584 00000000 */   nop
/* 96B748 80242588 3C01C47A */  lui       $at, 0xc47a
/* 96B74C 8024258C 44810000 */  mtc1      $at, $f0
/* 96B750 80242590 00000000 */  nop
/* 96B754 80242594 3C018011 */  lui       $at, %hi(gPlayerStatus+0x2C)
/* 96B758 80242598 E420EFF4 */  swc1      $f0, %lo(gPlayerStatus+0x2C)($at)
.L8024259C:
/* 96B75C 8024259C 8E030000 */  lw        $v1, ($s0)
/* 96B760 802425A0 24020014 */  addiu     $v0, $zero, 0x14
/* 96B764 802425A4 1462023B */  bne       $v1, $v0, .L80242E94
/* 96B768 802425A8 00000000 */   nop
/* 96B76C 802425AC 3C05F4AC */  lui       $a1, 0xf4ac
/* 96B770 802425B0 34A5D489 */  ori       $a1, $a1, 0xd489
/* 96B774 802425B4 3C048025 */  lui       $a0, %hi(D_8024EFCC)
/* 96B778 802425B8 8C84EFCC */  lw        $a0, %lo(D_8024EFCC)($a0)
/* 96B77C 802425BC 0C0B2026 */  jal       set_variable
/* 96B780 802425C0 24060002 */   addiu    $a2, $zero, 2
/* 96B784 802425C4 08090BA5 */  j         .L80242E94
/* 96B788 802425C8 AE000000 */   sw       $zero, ($s0)
glabel L802425CC_96B78C
/* 96B78C 802425CC 3C028025 */  lui       $v0, %hi(D_8024F010)
/* 96B790 802425D0 2442F010 */  addiu     $v0, $v0, %lo(D_8024F010)
/* 96B794 802425D4 24030002 */  addiu     $v1, $zero, 2
/* 96B798 802425D8 AC430000 */  sw        $v1, ($v0)
/* 96B79C 802425DC AC400024 */  sw        $zero, 0x24($v0)
/* 96B7A0 802425E0 AC400048 */  sw        $zero, 0x48($v0)
/* 96B7A4 802425E4 AC400004 */  sw        $zero, 4($v0)
/* 96B7A8 802425E8 AC400008 */  sw        $zero, 8($v0)
/* 96B7AC 802425EC 08090BA5 */  j         .L80242E94
/* 96B7B0 802425F0 AC40000C */   sw       $zero, 0xc($v0)
glabel L802425F4_96B7B4
/* 96B7B4 802425F4 3C038025 */  lui       $v1, %hi(D_8024F010)
/* 96B7B8 802425F8 2463F010 */  addiu     $v1, $v1, %lo(D_8024F010)
/* 96B7BC 802425FC 24020001 */  addiu     $v0, $zero, 1
/* 96B7C0 80242600 C4620004 */  lwc1      $f2, 4($v1)
/* 96B7C4 80242604 3C014120 */  lui       $at, 0x4120
/* 96B7C8 80242608 44812000 */  mtc1      $at, $f4
/* 96B7CC 8024260C 3C078025 */  lui       $a3, %hi(D_8024EF88)
/* 96B7D0 80242610 24E7EF88 */  addiu     $a3, $a3, %lo(D_8024EF88)
/* 96B7D4 80242614 AC620000 */  sw        $v0, ($v1)
/* 96B7D8 80242618 AC620024 */  sw        $v0, 0x24($v1)
/* 96B7DC 8024261C AC620048 */  sw        $v0, 0x48($v1)
/* 96B7E0 80242620 8CE40000 */  lw        $a0, ($a3)
/* 96B7E4 80242624 C4600028 */  lwc1      $f0, 0x28($v1)
/* 96B7E8 80242628 46041081 */  sub.s     $f2, $f2, $f4
/* 96B7EC 8024262C 00822021 */  addu      $a0, $a0, $v0
/* 96B7F0 80242630 2402000A */  addiu     $v0, $zero, 0xa
/* 96B7F4 80242634 46040000 */  add.s     $f0, $f0, $f4
/* 96B7F8 80242638 ACE40000 */  sw        $a0, ($a3)
/* 96B7FC 8024263C E4620004 */  swc1      $f2, 4($v1)
/* 96B800 80242640 14820214 */  bne       $a0, $v0, .L80242E94
/* 96B804 80242644 E4600028 */   swc1     $f0, 0x28($v1)
/* 96B808 80242648 3C05F4AC */  lui       $a1, 0xf4ac
/* 96B80C 8024264C 34A5D489 */  ori       $a1, $a1, 0xd489
/* 96B810 80242650 3C048025 */  lui       $a0, %hi(D_8024EFCC)
/* 96B814 80242654 8C84EFCC */  lw        $a0, %lo(D_8024EFCC)($a0)
/* 96B818 80242658 08090A91 */  j         .L80242A44
/* 96B81C 8024265C 24060004 */   addiu    $a2, $zero, 4
glabel L80242660_96B820
/* 96B820 80242660 3C078025 */  lui       $a3, %hi(D_8024EF88)
/* 96B824 80242664 24E7EF88 */  addiu     $a3, $a3, %lo(D_8024EF88)
/* 96B828 80242668 3C01C2C8 */  lui       $at, 0xc2c8
/* 96B82C 8024266C 44810000 */  mtc1      $at, $f0
/* 96B830 80242670 3C0142C8 */  lui       $at, 0x42c8
/* 96B834 80242674 44811000 */  mtc1      $at, $f2
/* 96B838 80242678 3C013F80 */  lui       $at, 0x3f80
/* 96B83C 8024267C 44812000 */  mtc1      $at, $f4
/* 96B840 80242680 3C014000 */  lui       $at, 0x4000
/* 96B844 80242684 44813000 */  mtc1      $at, $f6
/* 96B848 80242688 8CE30000 */  lw        $v1, ($a3)
/* 96B84C 8024268C 3C028025 */  lui       $v0, %hi(D_8024F010)
/* 96B850 80242690 2442F010 */  addiu     $v0, $v0, %lo(D_8024F010)
/* 96B854 80242694 AC400008 */  sw        $zero, 8($v0)
/* 96B858 80242698 AC40000C */  sw        $zero, 0xc($v0)
/* 96B85C 8024269C AC40002C */  sw        $zero, 0x2c($v0)
/* 96B860 802426A0 AC40004C */  sw        $zero, 0x4c($v0)
/* 96B864 802426A4 AC400050 */  sw        $zero, 0x50($v0)
/* 96B868 802426A8 24630001 */  addiu     $v1, $v1, 1
/* 96B86C 802426AC E4400004 */  swc1      $f0, 4($v0)
/* 96B870 802426B0 E4420028 */  swc1      $f2, 0x28($v0)
/* 96B874 802426B4 E4440030 */  swc1      $f4, 0x30($v0)
/* 96B878 802426B8 E4460054 */  swc1      $f6, 0x54($v0)
/* 96B87C 802426BC 24020014 */  addiu     $v0, $zero, 0x14
/* 96B880 802426C0 146201F4 */  bne       $v1, $v0, .L80242E94
/* 96B884 802426C4 ACE30000 */   sw       $v1, ($a3)
/* 96B888 802426C8 3C05F4AC */  lui       $a1, 0xf4ac
/* 96B88C 802426CC 34A5D489 */  ori       $a1, $a1, 0xd489
/* 96B890 802426D0 3C048025 */  lui       $a0, %hi(D_8024EFCC)
/* 96B894 802426D4 8C84EFCC */  lw        $a0, %lo(D_8024EFCC)($a0)
/* 96B898 802426D8 24060005 */  addiu     $a2, $zero, 5
/* 96B89C 802426DC 0C0B2026 */  jal       set_variable
/* 96B8A0 802426E0 ACE00000 */   sw       $zero, ($a3)
/* 96B8A4 802426E4 24040203 */  addiu     $a0, $zero, 0x203
/* 96B8A8 802426E8 0000282D */  daddu     $a1, $zero, $zero
/* 96B8AC 802426EC 08090A26 */  j         .L80242898
/* 96B8B0 802426F0 24060018 */   addiu    $a2, $zero, 0x18
glabel L802426F4_96B8B4
/* 96B8B4 802426F4 3C028025 */  lui       $v0, %hi(D_8024F010)
/* 96B8B8 802426F8 2442F010 */  addiu     $v0, $v0, %lo(D_8024F010)
/* 96B8BC 802426FC C4400010 */  lwc1      $f0, 0x10($v0)
/* 96B8C0 80242700 3C014190 */  lui       $at, 0x4190
/* 96B8C4 80242704 44811000 */  mtc1      $at, $f2
/* 96B8C8 80242708 3C108025 */  lui       $s0, %hi(D_8024EF88)
/* 96B8CC 8024270C 2610EF88 */  addiu     $s0, $s0, %lo(D_8024EF88)
/* 96B8D0 80242710 AC400034 */  sw        $zero, 0x34($v0)
/* 96B8D4 80242714 AC400058 */  sw        $zero, 0x58($v0)
/* 96B8D8 80242718 8E030000 */  lw        $v1, ($s0)
/* 96B8DC 8024271C 46020000 */  add.s     $f0, $f0, $f2
/* 96B8E0 80242720 24630001 */  addiu     $v1, $v1, 1
/* 96B8E4 80242724 AE030000 */  sw        $v1, ($s0)
/* 96B8E8 80242728 E4400010 */  swc1      $f0, 0x10($v0)
/* 96B8EC 8024272C 24020008 */  addiu     $v0, $zero, 8
/* 96B8F0 80242730 14620016 */  bne       $v1, $v0, .L8024278C
/* 96B8F4 80242734 0000202D */   daddu    $a0, $zero, $zero
/* 96B8F8 80242738 27A50018 */  addiu     $a1, $sp, 0x18
/* 96B8FC 8024273C 27A6001C */  addiu     $a2, $sp, 0x1c
/* 96B900 80242740 27A70020 */  addiu     $a3, $sp, 0x20
/* 96B904 80242744 27A20024 */  addiu     $v0, $sp, 0x24
/* 96B908 80242748 0C090885 */  jal       func_80242214_96B3D4
/* 96B90C 8024274C AFA20010 */   sw       $v0, 0x10($sp)
/* 96B910 80242750 C7A2001C */  lwc1      $f2, 0x1c($sp)
/* 96B914 80242754 3C0141A0 */  lui       $at, 0x41a0
/* 96B918 80242758 44810000 */  mtc1      $at, $f0
/* 96B91C 8024275C 00000000 */  nop
/* 96B920 80242760 46001080 */  add.s     $f2, $f2, $f0
/* 96B924 80242764 C7A00018 */  lwc1      $f0, 0x18($sp)
/* 96B928 80242768 44050000 */  mfc1      $a1, $f0
/* 96B92C 8024276C 44061000 */  mfc1      $a2, $f2
/* 96B930 80242770 C7A20020 */  lwc1      $f2, 0x20($sp)
/* 96B934 80242774 3C0141F0 */  lui       $at, 0x41f0
/* 96B938 80242778 44810000 */  mtc1      $at, $f0
/* 96B93C 8024277C 44071000 */  mfc1      $a3, $f2
/* 96B940 80242780 0000202D */  daddu     $a0, $zero, $zero
/* 96B944 80242784 0C01BFBC */  jal       func_8006FEF0
/* 96B948 80242788 E7A00010 */   swc1     $f0, 0x10($sp)
.L8024278C:
/* 96B94C 8024278C 8E030000 */  lw        $v1, ($s0)
/* 96B950 80242790 2402000A */  addiu     $v0, $zero, 0xa
/* 96B954 80242794 146201BF */  bne       $v1, $v0, .L80242E94
/* 96B958 80242798 24060006 */   addiu    $a2, $zero, 6
/* 96B95C 8024279C 3C05F4AC */  lui       $a1, 0xf4ac
/* 96B960 802427A0 34A5D489 */  ori       $a1, $a1, 0xd489
/* 96B964 802427A4 3C048025 */  lui       $a0, %hi(D_8024EFCC)
/* 96B968 802427A8 8C84EFCC */  lw        $a0, %lo(D_8024EFCC)($a0)
/* 96B96C 802427AC 0C0B2026 */  jal       set_variable
/* 96B970 802427B0 AE000000 */   sw       $zero, ($s0)
/* 96B974 802427B4 24040203 */  addiu     $a0, $zero, 0x203
/* 96B978 802427B8 0000282D */  daddu     $a1, $zero, $zero
/* 96B97C 802427BC 08090A26 */  j         .L80242898
/* 96B980 802427C0 24060040 */   addiu    $a2, $zero, 0x40
glabel L802427C4_96B984
/* 96B984 802427C4 3C028025 */  lui       $v0, %hi(D_8024F010)
/* 96B988 802427C8 2442F010 */  addiu     $v0, $v0, %lo(D_8024F010)
/* 96B98C 802427CC C4420010 */  lwc1      $f2, 0x10($v0)
/* 96B990 802427D0 3C014190 */  lui       $at, 0x4190
/* 96B994 802427D4 44812000 */  mtc1      $at, $f4
/* 96B998 802427D8 3C108025 */  lui       $s0, %hi(D_8024EF88)
/* 96B99C 802427DC 2610EF88 */  addiu     $s0, $s0, %lo(D_8024EF88)
/* 96B9A0 802427E0 AC400034 */  sw        $zero, 0x34($v0)
/* 96B9A4 802427E4 8E030000 */  lw        $v1, ($s0)
/* 96B9A8 802427E8 46041080 */  add.s     $f2, $f2, $f4
/* 96B9AC 802427EC C4400058 */  lwc1      $f0, 0x58($v0)
/* 96B9B0 802427F0 24630001 */  addiu     $v1, $v1, 1
/* 96B9B4 802427F4 46040000 */  add.s     $f0, $f0, $f4
/* 96B9B8 802427F8 AE030000 */  sw        $v1, ($s0)
/* 96B9BC 802427FC E4420010 */  swc1      $f2, 0x10($v0)
/* 96B9C0 80242800 E4400058 */  swc1      $f0, 0x58($v0)
/* 96B9C4 80242804 24020008 */  addiu     $v0, $zero, 8
/* 96B9C8 80242808 14620016 */  bne       $v1, $v0, .L80242864
/* 96B9CC 8024280C 24040002 */   addiu    $a0, $zero, 2
/* 96B9D0 80242810 27A50028 */  addiu     $a1, $sp, 0x28
/* 96B9D4 80242814 27A6002C */  addiu     $a2, $sp, 0x2c
/* 96B9D8 80242818 27A70030 */  addiu     $a3, $sp, 0x30
/* 96B9DC 8024281C 27A20034 */  addiu     $v0, $sp, 0x34
/* 96B9E0 80242820 0C090885 */  jal       func_80242214_96B3D4
/* 96B9E4 80242824 AFA20010 */   sw       $v0, 0x10($sp)
/* 96B9E8 80242828 C7A2002C */  lwc1      $f2, 0x2c($sp)
/* 96B9EC 8024282C 3C0141A0 */  lui       $at, 0x41a0
/* 96B9F0 80242830 44810000 */  mtc1      $at, $f0
/* 96B9F4 80242834 00000000 */  nop
/* 96B9F8 80242838 46001080 */  add.s     $f2, $f2, $f0
/* 96B9FC 8024283C C7A00028 */  lwc1      $f0, 0x28($sp)
/* 96BA00 80242840 44050000 */  mfc1      $a1, $f0
/* 96BA04 80242844 44061000 */  mfc1      $a2, $f2
/* 96BA08 80242848 C7A20030 */  lwc1      $f2, 0x30($sp)
/* 96BA0C 8024284C 3C0141F0 */  lui       $at, 0x41f0
/* 96BA10 80242850 44810000 */  mtc1      $at, $f0
/* 96BA14 80242854 44071000 */  mfc1      $a3, $f2
/* 96BA18 80242858 0000202D */  daddu     $a0, $zero, $zero
/* 96BA1C 8024285C 0C01BFBC */  jal       func_8006FEF0
/* 96BA20 80242860 E7A00010 */   swc1     $f0, 0x10($sp)
.L80242864:
/* 96BA24 80242864 8E030000 */  lw        $v1, ($s0)
/* 96BA28 80242868 2402000A */  addiu     $v0, $zero, 0xa
/* 96BA2C 8024286C 14620189 */  bne       $v1, $v0, .L80242E94
/* 96BA30 80242870 24060007 */   addiu    $a2, $zero, 7
/* 96BA34 80242874 3C05F4AC */  lui       $a1, 0xf4ac
/* 96BA38 80242878 34A5D489 */  ori       $a1, $a1, 0xd489
/* 96BA3C 8024287C 3C048025 */  lui       $a0, %hi(D_8024EFCC)
/* 96BA40 80242880 8C84EFCC */  lw        $a0, %lo(D_8024EFCC)($a0)
/* 96BA44 80242884 0C0B2026 */  jal       set_variable
/* 96BA48 80242888 AE000000 */   sw       $zero, ($s0)
/* 96BA4C 8024288C 24040203 */  addiu     $a0, $zero, 0x203
/* 96BA50 80242890 0000282D */  daddu     $a1, $zero, $zero
/* 96BA54 80242894 24060068 */  addiu     $a2, $zero, 0x68
.L80242898:
/* 96BA58 80242898 0C0526AE */  jal       _play_sound
/* 96BA5C 8024289C 00A0382D */   daddu    $a3, $a1, $zero
/* 96BA60 802428A0 08090BA5 */  j         .L80242E94
/* 96BA64 802428A4 00000000 */   nop
glabel L802428A8_96BA68
/* 96BA68 802428A8 3C028025 */  lui       $v0, %hi(D_8024F010)
/* 96BA6C 802428AC 2442F010 */  addiu     $v0, $v0, %lo(D_8024F010)
/* 96BA70 802428B0 C4420034 */  lwc1      $f2, 0x34($v0)
/* 96BA74 802428B4 3C014190 */  lui       $at, 0x4190
/* 96BA78 802428B8 44812000 */  mtc1      $at, $f4
/* 96BA7C 802428BC 3C108025 */  lui       $s0, %hi(D_8024EF88)
/* 96BA80 802428C0 2610EF88 */  addiu     $s0, $s0, %lo(D_8024EF88)
/* 96BA84 802428C4 AC400010 */  sw        $zero, 0x10($v0)
/* 96BA88 802428C8 8E030000 */  lw        $v1, ($s0)
/* 96BA8C 802428CC 46041080 */  add.s     $f2, $f2, $f4
/* 96BA90 802428D0 C4400058 */  lwc1      $f0, 0x58($v0)
/* 96BA94 802428D4 24630001 */  addiu     $v1, $v1, 1
/* 96BA98 802428D8 46040000 */  add.s     $f0, $f0, $f4
/* 96BA9C 802428DC AE030000 */  sw        $v1, ($s0)
/* 96BAA0 802428E0 E4420034 */  swc1      $f2, 0x34($v0)
/* 96BAA4 802428E4 E4400058 */  swc1      $f0, 0x58($v0)
/* 96BAA8 802428E8 24020008 */  addiu     $v0, $zero, 8
/* 96BAAC 802428EC 14620016 */  bne       $v1, $v0, .L80242948
/* 96BAB0 802428F0 24040001 */   addiu    $a0, $zero, 1
/* 96BAB4 802428F4 27A50038 */  addiu     $a1, $sp, 0x38
/* 96BAB8 802428F8 27A6003C */  addiu     $a2, $sp, 0x3c
/* 96BABC 802428FC 27A70040 */  addiu     $a3, $sp, 0x40
/* 96BAC0 80242900 27A20044 */  addiu     $v0, $sp, 0x44
/* 96BAC4 80242904 0C090885 */  jal       func_80242214_96B3D4
/* 96BAC8 80242908 AFA20010 */   sw       $v0, 0x10($sp)
/* 96BACC 8024290C C7A2003C */  lwc1      $f2, 0x3c($sp)
/* 96BAD0 80242910 3C0141A0 */  lui       $at, 0x41a0
/* 96BAD4 80242914 44810000 */  mtc1      $at, $f0
/* 96BAD8 80242918 00000000 */  nop
/* 96BADC 8024291C 46001080 */  add.s     $f2, $f2, $f0
/* 96BAE0 80242920 C7A00038 */  lwc1      $f0, 0x38($sp)
/* 96BAE4 80242924 44050000 */  mfc1      $a1, $f0
/* 96BAE8 80242928 44061000 */  mfc1      $a2, $f2
/* 96BAEC 8024292C C7A20040 */  lwc1      $f2, 0x40($sp)
/* 96BAF0 80242930 3C0141F0 */  lui       $at, 0x41f0
/* 96BAF4 80242934 44810000 */  mtc1      $at, $f0
/* 96BAF8 80242938 44071000 */  mfc1      $a3, $f2
/* 96BAFC 8024293C 0000202D */  daddu     $a0, $zero, $zero
/* 96BB00 80242940 0C01BFBC */  jal       func_8006FEF0
/* 96BB04 80242944 E7A00010 */   swc1     $f0, 0x10($sp)
.L80242948:
/* 96BB08 80242948 8E030000 */  lw        $v1, ($s0)
/* 96BB0C 8024294C 2402000A */  addiu     $v0, $zero, 0xa
/* 96BB10 80242950 14620150 */  bne       $v1, $v0, .L80242E94
/* 96BB14 80242954 24060008 */   addiu    $a2, $zero, 8
/* 96BB18 80242958 3C05F4AC */  lui       $a1, 0xf4ac
/* 96BB1C 8024295C 34A5D489 */  ori       $a1, $a1, 0xd489
/* 96BB20 80242960 3C048025 */  lui       $a0, %hi(D_8024EFCC)
/* 96BB24 80242964 8C84EFCC */  lw        $a0, %lo(D_8024EFCC)($a0)
/* 96BB28 80242968 0C0B2026 */  jal       set_variable
/* 96BB2C 8024296C AE000000 */   sw       $zero, ($s0)
/* 96BB30 80242970 08090BA5 */  j         .L80242E94
/* 96BB34 80242974 00000000 */   nop
glabel L80242978_96BB38
/* 96BB38 80242978 3C028025 */  lui       $v0, %hi(D_8024F010)
/* 96BB3C 8024297C 2442F010 */  addiu     $v0, $v0, %lo(D_8024F010)
/* 96BB40 80242980 C4400034 */  lwc1      $f0, 0x34($v0)
/* 96BB44 80242984 3C014190 */  lui       $at, 0x4190
/* 96BB48 80242988 44811000 */  mtc1      $at, $f2
/* 96BB4C 8024298C 3C078025 */  lui       $a3, %hi(D_8024EF88)
/* 96BB50 80242990 24E7EF88 */  addiu     $a3, $a3, %lo(D_8024EF88)
/* 96BB54 80242994 AC400010 */  sw        $zero, 0x10($v0)
/* 96BB58 80242998 AC400058 */  sw        $zero, 0x58($v0)
/* 96BB5C 8024299C 8CE30000 */  lw        $v1, ($a3)
/* 96BB60 802429A0 46020000 */  add.s     $f0, $f0, $f2
/* 96BB64 802429A4 24630001 */  addiu     $v1, $v1, 1
/* 96BB68 802429A8 ACE30000 */  sw        $v1, ($a3)
/* 96BB6C 802429AC E4400034 */  swc1      $f0, 0x34($v0)
/* 96BB70 802429B0 2402000A */  addiu     $v0, $zero, 0xa
/* 96BB74 802429B4 14620137 */  bne       $v1, $v0, .L80242E94
/* 96BB78 802429B8 24060009 */   addiu    $a2, $zero, 9
/* 96BB7C 802429BC 3C05F4AC */  lui       $a1, 0xf4ac
/* 96BB80 802429C0 3C048025 */  lui       $a0, %hi(D_8024EFCC)
/* 96BB84 802429C4 8C84EFCC */  lw        $a0, %lo(D_8024EFCC)($a0)
/* 96BB88 802429C8 08090A91 */  j         .L80242A44
/* 96BB8C 802429CC 34A5D489 */   ori      $a1, $a1, 0xd489
glabel L802429D0_96BB90
/* 96BB90 802429D0 3C028025 */  lui       $v0, %hi(D_8024F010)
/* 96BB94 802429D4 2442F010 */  addiu     $v0, $v0, %lo(D_8024F010)
/* 96BB98 802429D8 C4420004 */  lwc1      $f2, 4($v0)
/* 96BB9C 802429DC 3C014120 */  lui       $at, 0x4120
/* 96BBA0 802429E0 44812000 */  mtc1      $at, $f4
/* 96BBA4 802429E4 3C078025 */  lui       $a3, %hi(D_8024EF88)
/* 96BBA8 802429E8 24E7EF88 */  addiu     $a3, $a3, %lo(D_8024EF88)
/* 96BBAC 802429EC AC400008 */  sw        $zero, 8($v0)
/* 96BBB0 802429F0 AC400010 */  sw        $zero, 0x10($v0)
/* 96BBB4 802429F4 AC40002C */  sw        $zero, 0x2c($v0)
/* 96BBB8 802429F8 AC400034 */  sw        $zero, 0x34($v0)
/* 96BBBC 802429FC AC40004C */  sw        $zero, 0x4c($v0)
/* 96BBC0 80242A00 AC400050 */  sw        $zero, 0x50($v0)
/* 96BBC4 80242A04 AC400058 */  sw        $zero, 0x58($v0)
/* 96BBC8 80242A08 8CE30000 */  lw        $v1, ($a3)
/* 96BBCC 80242A0C 46041080 */  add.s     $f2, $f2, $f4
/* 96BBD0 80242A10 C4400028 */  lwc1      $f0, 0x28($v0)
/* 96BBD4 80242A14 24630001 */  addiu     $v1, $v1, 1
/* 96BBD8 80242A18 46040001 */  sub.s     $f0, $f0, $f4
/* 96BBDC 80242A1C ACE30000 */  sw        $v1, ($a3)
/* 96BBE0 80242A20 E4420004 */  swc1      $f2, 4($v0)
/* 96BBE4 80242A24 E4400028 */  swc1      $f0, 0x28($v0)
/* 96BBE8 80242A28 2402000A */  addiu     $v0, $zero, 0xa
/* 96BBEC 80242A2C 14620119 */  bne       $v1, $v0, .L80242E94
/* 96BBF0 80242A30 0040302D */   daddu    $a2, $v0, $zero
/* 96BBF4 80242A34 3C05F4AC */  lui       $a1, 0xf4ac
/* 96BBF8 80242A38 34A5D489 */  ori       $a1, $a1, 0xd489
/* 96BBFC 80242A3C 3C048025 */  lui       $a0, %hi(D_8024EFCC)
/* 96BC00 80242A40 8C84EFCC */  lw        $a0, %lo(D_8024EFCC)($a0)
.L80242A44:
/* 96BC04 80242A44 0C0B2026 */  jal       set_variable
/* 96BC08 80242A48 ACE00000 */   sw       $zero, ($a3)
/* 96BC0C 80242A4C 08090BA5 */  j         .L80242E94
/* 96BC10 80242A50 00000000 */   nop
glabel L80242A54_96BC14
/* 96BC14 80242A54 3C038025 */  lui       $v1, %hi(D_8024F010)
/* 96BC18 80242A58 2463F010 */  addiu     $v1, $v1, %lo(D_8024F010)
/* 96BC1C 80242A5C 24020003 */  addiu     $v0, $zero, 3
/* 96BC20 80242A60 AC620000 */  sw        $v0, ($v1)
/* 96BC24 80242A64 24020008 */  addiu     $v0, $zero, 8
/* 96BC28 80242A68 AC620018 */  sw        $v0, 0x18($v1)
/* 96BC2C 80242A6C 24020011 */  addiu     $v0, $zero, 0x11
/* 96BC30 80242A70 AC600024 */  sw        $zero, 0x24($v1)
/* 96BC34 80242A74 AC600048 */  sw        $zero, 0x48($v1)
/* 96BC38 80242A78 08090BA5 */  j         .L80242E94
/* 96BC3C 80242A7C AC62001C */   sw       $v0, 0x1c($v1)
glabel L80242A80_96BC40
/* 96BC40 80242A80 3C05F4AC */  lui       $a1, 0xf4ac
/* 96BC44 80242A84 34A5D489 */  ori       $a1, $a1, 0xd489
/* 96BC48 80242A88 2406000C */  addiu     $a2, $zero, 0xc
/* 96BC4C 80242A8C 3C118025 */  lui       $s1, %hi(D_8024EF90)
/* 96BC50 80242A90 2631EF90 */  addiu     $s1, $s1, %lo(D_8024EF90)
/* 96BC54 80242A94 0220802D */  daddu     $s0, $s1, $zero
/* 96BC58 80242A98 3C028025 */  lui       $v0, %hi(D_8024F010)
/* 96BC5C 80242A9C 2442F010 */  addiu     $v0, $v0, %lo(D_8024F010)
/* 96BC60 80242AA0 3C048025 */  lui       $a0, %hi(D_8024EFCC)
/* 96BC64 80242AA4 8C84EFCC */  lw        $a0, %lo(D_8024EFCC)($a0)
/* 96BC68 80242AA8 3C018025 */  lui       $at, %hi(D_8024EF58_978118)
/* 96BC6C 80242AAC D434EF58 */  ldc1      $f20, %lo(D_8024EF58_978118)($at)
/* 96BC70 80242AB0 3C014288 */  lui       $at, 0x4288
/* 96BC74 80242AB4 44810000 */  mtc1      $at, $f0
/* 96BC78 80242AB8 3C014334 */  lui       $at, 0x4334
/* 96BC7C 80242ABC 44811000 */  mtc1      $at, $f2
/* 96BC80 80242AC0 24030004 */  addiu     $v1, $zero, 4
/* 96BC84 80242AC4 AC430000 */  sw        $v1, ($v0)
/* 96BC88 80242AC8 24030005 */  addiu     $v1, $zero, 5
/* 96BC8C 80242ACC AC430024 */  sw        $v1, 0x24($v0)
/* 96BC90 80242AD0 24030008 */  addiu     $v1, $zero, 8
/* 96BC94 80242AD4 AC43003C */  sw        $v1, 0x3c($v0)
/* 96BC98 80242AD8 2403000A */  addiu     $v1, $zero, 0xa
/* 96BC9C 80242ADC AC400004 */  sw        $zero, 4($v0)
/* 96BCA0 80242AE0 AC40000C */  sw        $zero, 0xc($v0)
/* 96BCA4 80242AE4 AC400028 */  sw        $zero, 0x28($v0)
/* 96BCA8 80242AE8 AC400030 */  sw        $zero, 0x30($v0)
/* 96BCAC 80242AEC AC430040 */  sw        $v1, 0x40($v0)
/* 96BCB0 80242AF0 AC400044 */  sw        $zero, 0x44($v0)
/* 96BCB4 80242AF4 3C018025 */  lui       $at, %hi(D_8024EF88)
/* 96BCB8 80242AF8 AC20EF88 */  sw        $zero, %lo(D_8024EF88)($at)
/* 96BCBC 80242AFC E4400008 */  swc1      $f0, 8($v0)
/* 96BCC0 80242B00 E4420010 */  swc1      $f2, 0x10($v0)
/* 96BCC4 80242B04 E440002C */  swc1      $f0, 0x2c($v0)
/* 96BCC8 80242B08 0C0B2026 */  jal       set_variable
/* 96BCCC 80242B0C E4420034 */   swc1     $f2, 0x34($v0)
/* 96BCD0 80242B10 24040001 */  addiu     $a0, $zero, 1
/* 96BCD4 80242B14 27A50048 */  addiu     $a1, $sp, 0x48
/* 96BCD8 80242B18 27A6004C */  addiu     $a2, $sp, 0x4c
/* 96BCDC 80242B1C 3C013F80 */  lui       $at, 0x3f80
/* 96BCE0 80242B20 44810000 */  mtc1      $at, $f0
/* 96BCE4 80242B24 27A20054 */  addiu     $v0, $sp, 0x54
/* 96BCE8 80242B28 3C018025 */  lui       $at, %hi(gPauseMenuTabs)
/* 96BCEC 80242B2C AC20EF80 */  sw        $zero, %lo(gPauseMenuTabs)($at)
/* 96BCF0 80242B30 AFA20010 */  sw        $v0, 0x10($sp)
/* 96BCF4 80242B34 3C018025 */  lui       $at, %hi(D_8024EF84)
/* 96BCF8 80242B38 E420EF84 */  swc1      $f0, %lo(D_8024EF84)($at)
/* 96BCFC 80242B3C 0C090885 */  jal       func_80242214_96B3D4
/* 96BD00 80242B40 27A70050 */   addiu    $a3, $sp, 0x50
.L80242B44:
/* 96BD04 80242B44 C7A2004C */  lwc1      $f2, 0x4c($sp)
/* 96BD08 80242B48 3C0141A0 */  lui       $at, 0x41a0
/* 96BD0C 80242B4C 44810000 */  mtc1      $at, $f0
/* 96BD10 80242B50 00000000 */  nop
/* 96BD14 80242B54 46001080 */  add.s     $f2, $f2, $f0
/* 96BD18 80242B58 C7A00048 */  lwc1      $f0, 0x48($sp)
/* 96BD1C 80242B5C 24040002 */  addiu     $a0, $zero, 2
/* 96BD20 80242B60 44050000 */  mfc1      $a1, $f0
/* 96BD24 80242B64 44061000 */  mfc1      $a2, $f2
/* 96BD28 80242B68 C7A20050 */  lwc1      $f2, 0x50($sp)
/* 96BD2C 80242B6C 3C014100 */  lui       $at, 0x4100
/* 96BD30 80242B70 44810000 */  mtc1      $at, $f0
/* 96BD34 80242B74 44071000 */  mfc1      $a3, $f2
/* 96BD38 80242B78 2402FFFF */  addiu     $v0, $zero, -1
/* 96BD3C 80242B7C AFA20014 */  sw        $v0, 0x14($sp)
/* 96BD40 80242B80 0C01C82C */  jal       func_800720B0
/* 96BD44 80242B84 E7A00010 */   swc1     $f0, 0x10($sp)
/* 96BD48 80242B88 AE020000 */  sw        $v0, ($s0)
/* 96BD4C 80242B8C 8C43000C */  lw        $v1, 0xc($v0)
/* 96BD50 80242B90 240200D7 */  addiu     $v0, $zero, 0xd7
/* 96BD54 80242B94 AC620028 */  sw        $v0, 0x28($v1)
/* 96BD58 80242B98 8E020000 */  lw        $v0, ($s0)
/* 96BD5C 80242B9C 8C43000C */  lw        $v1, 0xc($v0)
/* 96BD60 80242BA0 24020037 */  addiu     $v0, $zero, 0x37
/* 96BD64 80242BA4 AC62002C */  sw        $v0, 0x2c($v1)
/* 96BD68 80242BA8 8E020000 */  lw        $v0, ($s0)
/* 96BD6C 80242BAC 8C43000C */  lw        $v1, 0xc($v0)
/* 96BD70 80242BB0 240200FF */  addiu     $v0, $zero, 0xff
/* 96BD74 80242BB4 AC620030 */  sw        $v0, 0x30($v1)
/* 96BD78 80242BB8 8E020000 */  lw        $v0, ($s0)
/* 96BD7C 80242BBC 8C420008 */  lw        $v0, 8($v0)
/* 96BD80 80242BC0 24040001 */  addiu     $a0, $zero, 1
/* 96BD84 80242BC4 0082102A */  slt       $v0, $a0, $v0
/* 96BD88 80242BC8 50400012 */  beql      $v0, $zero, .L80242C14
/* 96BD8C 80242BCC 26100004 */   addiu    $s0, $s0, 4
/* 96BD90 80242BD0 24030048 */  addiu     $v1, $zero, 0x48
.L80242BD4:
/* 96BD94 80242BD4 8E020000 */  lw        $v0, ($s0)
/* 96BD98 80242BD8 8C42000C */  lw        $v0, 0xc($v0)
/* 96BD9C 80242BDC 00621021 */  addu      $v0, $v1, $v0
/* 96BDA0 80242BE0 C4400038 */  lwc1      $f0, 0x38($v0)
/* 96BDA4 80242BE4 46000021 */  cvt.d.s   $f0, $f0
/* 96BDA8 80242BE8 46340002 */  mul.d     $f0, $f0, $f20
/* 96BDAC 80242BEC 00000000 */  nop
/* 96BDB0 80242BF0 46200020 */  cvt.s.d   $f0, $f0
/* 96BDB4 80242BF4 E4400038 */  swc1      $f0, 0x38($v0)
/* 96BDB8 80242BF8 8E020000 */  lw        $v0, ($s0)
/* 96BDBC 80242BFC 24840001 */  addiu     $a0, $a0, 1
/* 96BDC0 80242C00 8C420008 */  lw        $v0, 8($v0)
/* 96BDC4 80242C04 0082102A */  slt       $v0, $a0, $v0
/* 96BDC8 80242C08 1440FFF2 */  bnez      $v0, .L80242BD4
/* 96BDCC 80242C0C 24630048 */   addiu    $v1, $v1, 0x48
/* 96BDD0 80242C10 26100004 */  addiu     $s0, $s0, 4
.L80242C14:
/* 96BDD4 80242C14 26220010 */  addiu     $v0, $s1, 0x10
/* 96BDD8 80242C18 0202102A */  slt       $v0, $s0, $v0
/* 96BDDC 80242C1C 1040009D */  beqz      $v0, .L80242E94
/* 96BDE0 80242C20 00000000 */   nop
/* 96BDE4 80242C24 08090AD1 */  j         .L80242B44
/* 96BDE8 80242C28 00000000 */   nop
glabel L80242C2C_96BDEC
/* 96BDEC 80242C2C 24040001 */  addiu     $a0, $zero, 1
/* 96BDF0 80242C30 27A50058 */  addiu     $a1, $sp, 0x58
/* 96BDF4 80242C34 27A6005C */  addiu     $a2, $sp, 0x5c
/* 96BDF8 80242C38 27A70060 */  addiu     $a3, $sp, 0x60
/* 96BDFC 80242C3C 27A20064 */  addiu     $v0, $sp, 0x64
/* 96BE00 80242C40 0C090885 */  jal       func_80242214_96B3D4
/* 96BE04 80242C44 AFA20010 */   sw       $v0, 0x10($sp)
/* 96BE08 80242C48 3C028025 */  lui       $v0, %hi(D_8024EF90)
/* 96BE0C 80242C4C 2442EF90 */  addiu     $v0, $v0, %lo(D_8024EF90)
/* 96BE10 80242C50 0040282D */  daddu     $a1, $v0, $zero
/* 96BE14 80242C54 24A70010 */  addiu     $a3, $a1, 0x10
/* 96BE18 80242C58 C7AA0058 */  lwc1      $f10, 0x58($sp)
/* 96BE1C 80242C5C C7A80060 */  lwc1      $f8, 0x60($sp)
/* 96BE20 80242C60 3C018025 */  lui       $at, %hi(gPauseMenuIconScripts)
/* 96BE24 80242C64 D424EF60 */  ldc1      $f4, %lo(gPauseMenuIconScripts)($at)
/* 96BE28 80242C68 3C013DCC */  lui       $at, 0x3dcc
/* 96BE2C 80242C6C 3421CCCD */  ori       $at, $at, 0xcccd
/* 96BE30 80242C70 44816000 */  mtc1      $at, $f12
/* 96BE34 80242C74 C7A2005C */  lwc1      $f2, 0x5c($sp)
/* 96BE38 80242C78 3C0141A0 */  lui       $at, 0x41a0
/* 96BE3C 80242C7C 44810000 */  mtc1      $at, $f0
/* 96BE40 80242C80 3C018025 */  lui       $at, %hi(D_8024EF68_978128)
/* 96BE44 80242C84 D426EF68 */  ldc1      $f6, %lo(D_8024EF68_978128)($at)
/* 96BE48 80242C88 46001080 */  add.s     $f2, $f2, $f0
.L80242C8C:
/* 96BE4C 80242C8C 8CA20000 */  lw        $v0, ($a1)
/* 96BE50 80242C90 8C42000C */  lw        $v0, 0xc($v0)
/* 96BE54 80242C94 E44A0004 */  swc1      $f10, 4($v0)
/* 96BE58 80242C98 8CA20000 */  lw        $v0, ($a1)
/* 96BE5C 80242C9C 8C42000C */  lw        $v0, 0xc($v0)
/* 96BE60 80242CA0 E4420008 */  swc1      $f2, 8($v0)
/* 96BE64 80242CA4 8CA20000 */  lw        $v0, ($a1)
/* 96BE68 80242CA8 8C42000C */  lw        $v0, 0xc($v0)
/* 96BE6C 80242CAC E448000C */  swc1      $f8, 0xc($v0)
/* 96BE70 80242CB0 8CA20000 */  lw        $v0, ($a1)
/* 96BE74 80242CB4 8C42000C */  lw        $v0, 0xc($v0)
/* 96BE78 80242CB8 C4400034 */  lwc1      $f0, 0x34($v0)
/* 96BE7C 80242CBC 46000021 */  cvt.d.s   $f0, $f0
/* 96BE80 80242CC0 46240001 */  sub.d     $f0, $f0, $f4
/* 96BE84 80242CC4 46200020 */  cvt.s.d   $f0, $f0
/* 96BE88 80242CC8 E4400034 */  swc1      $f0, 0x34($v0)
/* 96BE8C 80242CCC 8CA20000 */  lw        $v0, ($a1)
/* 96BE90 80242CD0 8C42000C */  lw        $v0, 0xc($v0)
/* 96BE94 80242CD4 C4400034 */  lwc1      $f0, 0x34($v0)
/* 96BE98 80242CD8 46000021 */  cvt.d.s   $f0, $f0
/* 96BE9C 80242CDC 4624003C */  c.lt.d    $f0, $f4
/* 96BEA0 80242CE0 00000000 */  nop
/* 96BEA4 80242CE4 45030001 */  bc1tl     .L80242CEC
/* 96BEA8 80242CE8 E44C0034 */   swc1     $f12, 0x34($v0)
.L80242CEC:
/* 96BEAC 80242CEC 8CA20000 */  lw        $v0, ($a1)
/* 96BEB0 80242CF0 8C420008 */  lw        $v0, 8($v0)
/* 96BEB4 80242CF4 24040001 */  addiu     $a0, $zero, 1
/* 96BEB8 80242CF8 0082102A */  slt       $v0, $a0, $v0
/* 96BEBC 80242CFC 50400012 */  beql      $v0, $zero, .L80242D48
/* 96BEC0 80242D00 24A50004 */   addiu    $a1, $a1, 4
/* 96BEC4 80242D04 00A0302D */  daddu     $a2, $a1, $zero
/* 96BEC8 80242D08 24030048 */  addiu     $v1, $zero, 0x48
.L80242D0C:
/* 96BECC 80242D0C 8CC20000 */  lw        $v0, ($a2)
/* 96BED0 80242D10 8C42000C */  lw        $v0, 0xc($v0)
/* 96BED4 80242D14 00621021 */  addu      $v0, $v1, $v0
/* 96BED8 80242D18 C4400038 */  lwc1      $f0, 0x38($v0)
/* 96BEDC 80242D1C 46000021 */  cvt.d.s   $f0, $f0
/* 96BEE0 80242D20 46260000 */  add.d     $f0, $f0, $f6
/* 96BEE4 80242D24 46200020 */  cvt.s.d   $f0, $f0
/* 96BEE8 80242D28 E4400038 */  swc1      $f0, 0x38($v0)
/* 96BEEC 80242D2C 8CC20000 */  lw        $v0, ($a2)
/* 96BEF0 80242D30 24840001 */  addiu     $a0, $a0, 1
/* 96BEF4 80242D34 8C420008 */  lw        $v0, 8($v0)
/* 96BEF8 80242D38 0082102A */  slt       $v0, $a0, $v0
/* 96BEFC 80242D3C 1440FFF3 */  bnez      $v0, .L80242D0C
/* 96BF00 80242D40 24630048 */   addiu    $v1, $v1, 0x48
/* 96BF04 80242D44 24A50004 */  addiu     $a1, $a1, 4
.L80242D48:
/* 96BF08 80242D48 00A7102A */  slt       $v0, $a1, $a3
/* 96BF0C 80242D4C 1440FFCF */  bnez      $v0, .L80242C8C
/* 96BF10 80242D50 00000000 */   nop
/* 96BF14 80242D54 3C108025 */  lui       $s0, %hi(D_8024F010)
/* 96BF18 80242D58 2610F010 */  addiu     $s0, $s0, %lo(D_8024F010)
/* 96BF1C 80242D5C 3C048025 */  lui       $a0, %hi(gPauseMenuTabs)
/* 96BF20 80242D60 2484EF80 */  addiu     $a0, $a0, %lo(gPauseMenuTabs)
/* 96BF24 80242D64 3C038025 */  lui       $v1, %hi(D_8024EF84)
/* 96BF28 80242D68 2463EF84 */  addiu     $v1, $v1, %lo(D_8024EF84)
/* 96BF2C 80242D6C 3C078025 */  lui       $a3, %hi(D_8024EF88)
/* 96BF30 80242D70 24E7EF88 */  addiu     $a3, $a3, %lo(D_8024EF88)
/* 96BF34 80242D74 C6060008 */  lwc1      $f6, 8($s0)
/* 96BF38 80242D78 C4820000 */  lwc1      $f2, ($a0)
/* 96BF3C 80242D7C C604002C */  lwc1      $f4, 0x2c($s0)
/* 96BF40 80242D80 C4600000 */  lwc1      $f0, ($v1)
/* 96BF44 80242D84 46023180 */  add.s     $f6, $f6, $f2
/* 96BF48 80242D88 8CE20000 */  lw        $v0, ($a3)
/* 96BF4C 80242D8C 3C01C0A0 */  lui       $at, 0xc0a0
/* 96BF50 80242D90 44814000 */  mtc1      $at, $f8
/* 96BF54 80242D94 46002100 */  add.s     $f4, $f4, $f0
/* 96BF58 80242D98 24420001 */  addiu     $v0, $v0, 1
/* 96BF5C 80242D9C ACE20000 */  sw        $v0, ($a3)
/* 96BF60 80242DA0 4608203C */  c.lt.s    $f4, $f8
/* 96BF64 80242DA4 E604002C */  swc1      $f4, 0x2c($s0)
/* 96BF68 80242DA8 3C018025 */  lui       $at, %hi(D_8024EF70_978130)
/* 96BF6C 80242DAC D424EF70 */  ldc1      $f4, %lo(D_8024EF70_978130)($at)
/* 96BF70 80242DB0 460010A1 */  cvt.d.s   $f2, $f2
/* 96BF74 80242DB4 46241080 */  add.d     $f2, $f2, $f4
/* 96BF78 80242DB8 3C018025 */  lui       $at, %hi(D_8024EF78_978138)
/* 96BF7C 80242DBC D424EF78 */  ldc1      $f4, %lo(D_8024EF78_978138)($at)
/* 96BF80 80242DC0 46000021 */  cvt.d.s   $f0, $f0
/* 96BF84 80242DC4 E6060008 */  swc1      $f6, 8($s0)
/* 96BF88 80242DC8 46240001 */  sub.d     $f0, $f0, $f4
/* 96BF8C 80242DCC 462010A0 */  cvt.s.d   $f2, $f2
/* 96BF90 80242DD0 E4820000 */  swc1      $f2, ($a0)
/* 96BF94 80242DD4 46200020 */  cvt.s.d   $f0, $f0
/* 96BF98 80242DD8 4500002E */  bc1f      .L80242E94
/* 96BF9C 80242DDC E4600000 */   swc1     $f0, ($v1)
/* 96BFA0 80242DE0 3C05F4AC */  lui       $a1, 0xf4ac
/* 96BFA4 80242DE4 34A5D489 */  ori       $a1, $a1, 0xd489
/* 96BFA8 80242DE8 3C048025 */  lui       $a0, %hi(D_8024EFCC)
/* 96BFAC 80242DEC 8C84EFCC */  lw        $a0, %lo(D_8024EFCC)($a0)
/* 96BFB0 80242DF0 2406000D */  addiu     $a2, $zero, 0xd
/* 96BFB4 80242DF4 E608002C */  swc1      $f8, 0x2c($s0)
/* 96BFB8 80242DF8 0C0B2026 */  jal       set_variable
/* 96BFBC 80242DFC ACE00000 */   sw       $zero, ($a3)
/* 96BFC0 80242E00 24040001 */  addiu     $a0, $zero, 1
/* 96BFC4 80242E04 27A50068 */  addiu     $a1, $sp, 0x68
/* 96BFC8 80242E08 27A6006C */  addiu     $a2, $sp, 0x6c
/* 96BFCC 80242E0C 27A70070 */  addiu     $a3, $sp, 0x70
/* 96BFD0 80242E10 27A20074 */  addiu     $v0, $sp, 0x74
/* 96BFD4 80242E14 AE000000 */  sw        $zero, ($s0)
/* 96BFD8 80242E18 AE000024 */  sw        $zero, 0x24($s0)
/* 96BFDC 80242E1C 0C090885 */  jal       func_80242214_96B3D4
/* 96BFE0 80242E20 AFA20010 */   sw       $v0, 0x10($sp)
/* 96BFE4 80242E24 C7A2006C */  lwc1      $f2, 0x6c($sp)
/* 96BFE8 80242E28 3C0141A0 */  lui       $at, 0x41a0
/* 96BFEC 80242E2C 44810000 */  mtc1      $at, $f0
/* 96BFF0 80242E30 00000000 */  nop
/* 96BFF4 80242E34 46001080 */  add.s     $f2, $f2, $f0
/* 96BFF8 80242E38 C7A00068 */  lwc1      $f0, 0x68($sp)
/* 96BFFC 80242E3C 44050000 */  mfc1      $a1, $f0
/* 96C000 80242E40 44061000 */  mfc1      $a2, $f2
/* 96C004 80242E44 C7A20070 */  lwc1      $f2, 0x70($sp)
/* 96C008 80242E48 3C0141F0 */  lui       $at, 0x41f0
/* 96C00C 80242E4C 44810000 */  mtc1      $at, $f0
/* 96C010 80242E50 44071000 */  mfc1      $a3, $f2
/* 96C014 80242E54 0000202D */  daddu     $a0, $zero, $zero
/* 96C018 80242E58 0C01BFBC */  jal       func_8006FEF0
/* 96C01C 80242E5C E7A00010 */   swc1     $f0, 0x10($sp)
/* 96C020 80242E60 0C05272D */  jal       play_sound
/* 96C024 80242E64 24040206 */   addiu    $a0, $zero, 0x206
/* 96C028 80242E68 0000282D */  daddu     $a1, $zero, $zero
/* 96C02C 80242E6C 3C048025 */  lui       $a0, %hi(D_8024EF90)
/* 96C030 80242E70 2484EF90 */  addiu     $a0, $a0, %lo(D_8024EF90)
.L80242E74:
/* 96C034 80242E74 8C820000 */  lw        $v0, ($a0)
/* 96C038 80242E78 8C430000 */  lw        $v1, ($v0)
/* 96C03C 80242E7C 24A50001 */  addiu     $a1, $a1, 1
/* 96C040 80242E80 34630010 */  ori       $v1, $v1, 0x10
/* 96C044 80242E84 AC430000 */  sw        $v1, ($v0)
/* 96C048 80242E88 28A20004 */  slti      $v0, $a1, 4
/* 96C04C 80242E8C 1440FFF9 */  bnez      $v0, .L80242E74
/* 96C050 80242E90 24840004 */   addiu    $a0, $a0, 4
.L80242E94:
glabel L80242E94_96C054
/* 96C054 80242E94 8FBF0080 */  lw        $ra, 0x80($sp)
/* 96C058 80242E98 8FB1007C */  lw        $s1, 0x7c($sp)
/* 96C05C 80242E9C 8FB00078 */  lw        $s0, 0x78($sp)
/* 96C060 80242EA0 D7B40088 */  ldc1      $f20, 0x88($sp)
/* 96C064 80242EA4 03E00008 */  jr        $ra
/* 96C068 80242EA8 27BD0090 */   addiu    $sp, $sp, 0x90
