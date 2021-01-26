.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802407F4_A4D214
/* A4D214 802407F4 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* A4D218 802407F8 AFB3001C */  sw        $s3, 0x1c($sp)
/* A4D21C 802407FC 0080982D */  daddu     $s3, $a0, $zero
/* A4D220 80240800 AFBF0020 */  sw        $ra, 0x20($sp)
/* A4D224 80240804 AFB20018 */  sw        $s2, 0x18($sp)
/* A4D228 80240808 AFB10014 */  sw        $s1, 0x14($sp)
/* A4D22C 8024080C AFB00010 */  sw        $s0, 0x10($sp)
/* A4D230 80240810 8E720148 */  lw        $s2, 0x148($s3)
/* A4D234 80240814 0C00EABB */  jal       get_npc_unsafe
/* A4D238 80240818 86440008 */   lh       $a0, 8($s2)
/* A4D23C 8024081C 0040802D */  daddu     $s0, $v0, $zero
/* A4D240 80240820 8603008E */  lh        $v1, 0x8e($s0)
/* A4D244 80240824 3C118024 */  lui       $s1, %hi(func_80241CF0_9113A0)
/* A4D248 80240828 26311CF0 */  addiu     $s1, $s1, %lo(func_80241CF0_9113A0)
/* A4D24C 8024082C 00031040 */  sll       $v0, $v1, 1
/* A4D250 80240830 00431021 */  addu      $v0, $v0, $v1
/* A4D254 80240834 00021080 */  sll       $v0, $v0, 2
/* A4D258 80240838 3C018024 */  lui       $at, %hi(func_80241CF0_9113A0)
/* A4D25C 8024083C 00220821 */  addu      $at, $at, $v0
/* A4D260 80240840 C4201CF0 */  lwc1      $f0, %lo(func_80241CF0_9113A0)($at)
/* A4D264 80240844 00031040 */  sll       $v0, $v1, 1
/* A4D268 80240848 00431021 */  addu      $v0, $v0, $v1
/* A4D26C 8024084C 00021080 */  sll       $v0, $v0, 2
/* A4D270 80240850 E6000054 */  swc1      $f0, 0x54($s0)
/* A4D274 80240854 3C018024 */  lui       $at, %hi(func_80241CF4_88A8C4)
/* A4D278 80240858 00220821 */  addu      $at, $at, $v0
/* A4D27C 8024085C C4201CF4 */  lwc1      $f0, %lo(func_80241CF4_88A8C4)($at)
/* A4D280 80240860 00031040 */  sll       $v0, $v1, 1
/* A4D284 80240864 00431021 */  addu      $v0, $v0, $v1
/* A4D288 80240868 9603008E */  lhu       $v1, 0x8e($s0)
/* A4D28C 8024086C 00021080 */  sll       $v0, $v0, 2
/* A4D290 80240870 E6000058 */  swc1      $f0, 0x58($s0)
/* A4D294 80240874 3C018024 */  lui       $at, %hi(D_80241CF8_A4E718)
/* A4D298 80240878 00220821 */  addu      $at, $at, $v0
/* A4D29C 8024087C 90221CF8 */  lbu       $v0, %lo(D_80241CF8_A4E718)($at)
/* A4D2A0 80240880 24630001 */  addiu     $v1, $v1, 1
/* A4D2A4 80240884 A603008E */  sh        $v1, 0x8e($s0)
/* A4D2A8 80240888 00031C00 */  sll       $v1, $v1, 0x10
/* A4D2AC 8024088C 00031C03 */  sra       $v1, $v1, 0x10
/* A4D2B0 80240890 A20200AC */  sb        $v0, 0xac($s0)
/* A4D2B4 80240894 24020004 */  addiu     $v0, $zero, 4
/* A4D2B8 80240898 14620007 */  bne       $v1, $v0, .L802408B8
/* A4D2BC 8024089C 00000000 */   nop
/* A4D2C0 802408A0 0C00EAFF */  jal       disable_npc_shadow
/* A4D2C4 802408A4 0200202D */   daddu    $a0, $s0, $zero
/* A4D2C8 802408A8 8E420000 */  lw        $v0, ($s2)
/* A4D2CC 802408AC 3C031F10 */  lui       $v1, 0x1f10
/* A4D2D0 802408B0 00431025 */  or        $v0, $v0, $v1
/* A4D2D4 802408B4 AE420000 */  sw        $v0, ($s2)
.L802408B8:
/* A4D2D8 802408B8 8602008E */  lh        $v0, 0x8e($s0)
/* A4D2DC 802408BC 00021840 */  sll       $v1, $v0, 1
/* A4D2E0 802408C0 00621821 */  addu      $v1, $v1, $v0
/* A4D2E4 802408C4 00031880 */  sll       $v1, $v1, 2
/* A4D2E8 802408C8 00711821 */  addu      $v1, $v1, $s1
/* A4D2EC 802408CC 90620008 */  lbu       $v0, 8($v1)
/* A4D2F0 802408D0 1440000C */  bnez      $v0, .L80240904
/* A4D2F4 802408D4 240200FF */   addiu    $v0, $zero, 0xff
/* A4D2F8 802408D8 A20200AC */  sb        $v0, 0xac($s0)
/* A4D2FC 802408DC 24020005 */  addiu     $v0, $zero, 5
/* A4D300 802408E0 8E030000 */  lw        $v1, ($s0)
/* A4D304 802408E4 3C013F80 */  lui       $at, 0x3f80
/* A4D308 802408E8 44810000 */  mtc1      $at, $f0
/* A4D30C 802408EC 34630002 */  ori       $v1, $v1, 2
/* A4D310 802408F0 E6000054 */  swc1      $f0, 0x54($s0)
/* A4D314 802408F4 E6000058 */  swc1      $f0, 0x58($s0)
/* A4D318 802408F8 E600005C */  swc1      $f0, 0x5c($s0)
/* A4D31C 802408FC AE030000 */  sw        $v1, ($s0)
/* A4D320 80240900 AE620070 */  sw        $v0, 0x70($s3)
.L80240904:
/* A4D324 80240904 8FBF0020 */  lw        $ra, 0x20($sp)
/* A4D328 80240908 8FB3001C */  lw        $s3, 0x1c($sp)
/* A4D32C 8024090C 8FB20018 */  lw        $s2, 0x18($sp)
/* A4D330 80240910 8FB10014 */  lw        $s1, 0x14($sp)
/* A4D334 80240914 8FB00010 */  lw        $s0, 0x10($sp)
/* A4D338 80240918 03E00008 */  jr        $ra
/* A4D33C 8024091C 27BD0028 */   addiu    $sp, $sp, 0x28
