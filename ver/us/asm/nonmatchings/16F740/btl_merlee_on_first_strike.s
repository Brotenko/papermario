.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel btl_merlee_on_first_strike
/* 16F8BC 80240FDC 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 16F8C0 80240FE0 AFB40020 */  sw        $s4, 0x20($sp)
/* 16F8C4 80240FE4 3C14800E */  lui       $s4, %hi(gBattleStatus)
/* 16F8C8 80240FE8 2694C070 */  addiu     $s4, $s4, %lo(gBattleStatus)
/* 16F8CC 80240FEC AFB3001C */  sw        $s3, 0x1c($sp)
/* 16F8D0 80240FF0 3C13800B */  lui       $s3, %hi(gCurrentEncounter)
/* 16F8D4 80240FF4 26730F10 */  addiu     $s3, $s3, %lo(gCurrentEncounter)
/* 16F8D8 80240FF8 AFB00010 */  sw        $s0, 0x10($sp)
/* 16F8DC 80240FFC 3C108011 */  lui       $s0, %hi(gPlayerData)
/* 16F8E0 80241000 2610F290 */  addiu     $s0, $s0, %lo(gPlayerData)
/* 16F8E4 80241004 AFBF0024 */  sw        $ra, 0x24($sp)
/* 16F8E8 80241008 AFB20018 */  sw        $s2, 0x18($sp)
/* 16F8EC 8024100C AFB10014 */  sw        $s1, 0x14($sp)
/* 16F8F0 80241010 8E820004 */  lw        $v0, 4($s4)
/* 16F8F4 80241014 30420040 */  andi      $v0, $v0, 0x40
/* 16F8F8 80241018 14400055 */  bnez      $v0, .L80241170
/* 16F8FC 8024101C 24110003 */   addiu    $s1, $zero, 3
/* 16F900 80241020 8282008A */  lb        $v0, 0x8a($s4)
/* 16F904 80241024 10510052 */  beq       $v0, $s1, .L80241170
/* 16F908 80241028 24120004 */   addiu    $s2, $zero, 4
/* 16F90C 8024102C 10520050 */  beq       $v0, $s2, .L80241170
/* 16F910 80241030 00000000 */   nop
/* 16F914 80241034 8202028A */  lb        $v0, 0x28a($s0)
/* 16F918 80241038 1840004D */  blez      $v0, .L80241170
/* 16F91C 8024103C 00000000 */   nop
/* 16F920 80241040 8602028C */  lh        $v0, 0x28c($s0)
/* 16F924 80241044 1C400039 */  bgtz      $v0, .L8024112C
/* 16F928 80241048 00000000 */   nop
/* 16F92C 8024104C 0C00A67F */  jal       rand_int
/* 16F930 80241050 24040064 */   addiu    $a0, $zero, 0x64
/* 16F934 80241054 8E63008C */  lw        $v1, 0x8c($s3)
/* 16F938 80241058 10600018 */  beqz      $v1, .L802410BC
/* 16F93C 8024105C 0040202D */   daddu    $a0, $v0, $zero
/* 16F940 80241060 8C620000 */  lw        $v0, ($v1)
/* 16F944 80241064 3C030004 */  lui       $v1, 4
/* 16F948 80241068 00431024 */  and       $v0, $v0, $v1
/* 16F94C 8024106C 10400008 */  beqz      $v0, .L80241090
/* 16F950 80241070 2882002E */   slti     $v0, $a0, 0x2e
/* 16F954 80241074 14400014 */  bnez      $v0, .L802410C8
/* 16F958 80241078 24020001 */   addiu    $v0, $zero, 1
/* 16F95C 8024107C 2882005B */  slti      $v0, $a0, 0x5b
/* 16F960 80241080 14400016 */  bnez      $v0, .L802410DC
/* 16F964 80241084 24020002 */   addiu    $v0, $zero, 2
/* 16F968 80241088 0809043D */  j         .L802410F4
/* 16F96C 8024108C A2110289 */   sb       $s1, 0x289($s0)
.L80241090:
/* 16F970 80241090 2882001F */  slti      $v0, $a0, 0x1f
/* 16F974 80241094 1440000C */  bnez      $v0, .L802410C8
/* 16F978 80241098 24020001 */   addiu    $v0, $zero, 1
/* 16F97C 8024109C 2882003D */  slti      $v0, $a0, 0x3d
/* 16F980 802410A0 1440000E */  bnez      $v0, .L802410DC
/* 16F984 802410A4 24020002 */   addiu    $v0, $zero, 2
/* 16F988 802410A8 28820051 */  slti      $v0, $a0, 0x51
/* 16F98C 802410AC 54400011 */  bnel      $v0, $zero, .L802410F4
/* 16F990 802410B0 A2110289 */   sb       $s1, 0x289($s0)
/* 16F994 802410B4 0809043D */  j         .L802410F4
/* 16F998 802410B8 A2120289 */   sb       $s2, 0x289($s0)
.L802410BC:
/* 16F99C 802410BC 2882001F */  slti      $v0, $a0, 0x1f
/* 16F9A0 802410C0 10400003 */  beqz      $v0, .L802410D0
/* 16F9A4 802410C4 24020001 */   addiu    $v0, $zero, 1
.L802410C8:
/* 16F9A8 802410C8 0809043D */  j         .L802410F4
/* 16F9AC 802410CC A2020289 */   sb       $v0, 0x289($s0)
.L802410D0:
/* 16F9B0 802410D0 2882003D */  slti      $v0, $a0, 0x3d
/* 16F9B4 802410D4 10400003 */  beqz      $v0, .L802410E4
/* 16F9B8 802410D8 24020002 */   addiu    $v0, $zero, 2
.L802410DC:
/* 16F9BC 802410DC 0809043D */  j         .L802410F4
/* 16F9C0 802410E0 A2020289 */   sb       $v0, 0x289($s0)
.L802410E4:
/* 16F9C4 802410E4 28820051 */  slti      $v0, $a0, 0x51
/* 16F9C8 802410E8 50400002 */  beql      $v0, $zero, .L802410F4
/* 16F9CC 802410EC A2120289 */   sb       $s2, 0x289($s0)
/* 16F9D0 802410F0 A2110289 */  sb        $s1, 0x289($s0)
.L802410F4:
/* 16F9D4 802410F4 82030289 */  lb        $v1, 0x289($s0)
/* 16F9D8 802410F8 24020004 */  addiu     $v0, $zero, 4
/* 16F9DC 802410FC 10620006 */  beq       $v1, $v0, .L80241118
/* 16F9E0 80241100 2402FFFF */   addiu    $v0, $zero, -1
/* 16F9E4 80241104 8603028C */  lh        $v1, 0x28c($s0)
/* 16F9E8 80241108 10620004 */  beq       $v1, $v0, .L8024111C
/* 16F9EC 8024110C 24040005 */   addiu    $a0, $zero, 5
/* 16F9F0 80241110 08090447 */  j         .L8024111C
/* 16F9F4 80241114 00000000 */   nop
.L80241118:
/* 16F9F8 80241118 24040008 */  addiu     $a0, $zero, 8
.L8024111C:
/* 16F9FC 8024111C 0C00A67F */  jal       rand_int
/* 16FA00 80241120 00000000 */   nop
/* 16FA04 80241124 24440005 */  addiu     $a0, $v0, 5
/* 16FA08 80241128 A604028C */  sh        $a0, 0x28c($s0)
.L8024112C:
/* 16FA0C 8024112C 92040289 */  lbu       $a0, 0x289($s0)
/* 16FA10 80241130 2482FFFD */  addiu     $v0, $a0, -3
/* 16FA14 80241134 2C420002 */  sltiu     $v0, $v0, 2
/* 16FA18 80241138 1040000D */  beqz      $v0, .L80241170
/* 16FA1C 8024113C 00000000 */   nop
/* 16FA20 80241140 8602028C */  lh        $v0, 0x28c($s0)
/* 16FA24 80241144 9603028C */  lhu       $v1, 0x28c($s0)
/* 16FA28 80241148 28420002 */  slti      $v0, $v0, 2
/* 16FA2C 8024114C 14400003 */  bnez      $v0, .L8024115C
/* 16FA30 80241150 2462FFFF */   addiu    $v0, $v1, -1
/* 16FA34 80241154 0809045C */  j         .L80241170
/* 16FA38 80241158 A602028C */   sh       $v0, 0x28c($s0)
.L8024115C:
/* 16FA3C 8024115C 9202028A */  lbu       $v0, 0x28a($s0)
/* 16FA40 80241160 A284008A */  sb        $a0, 0x8a($s4)
/* 16FA44 80241164 A600028C */  sh        $zero, 0x28c($s0)
/* 16FA48 80241168 2442FFFF */  addiu     $v0, $v0, -1
/* 16FA4C 8024116C A202028A */  sb        $v0, 0x28a($s0)
.L80241170:
/* 16FA50 80241170 8FBF0024 */  lw        $ra, 0x24($sp)
/* 16FA54 80241174 8FB40020 */  lw        $s4, 0x20($sp)
/* 16FA58 80241178 8FB3001C */  lw        $s3, 0x1c($sp)
/* 16FA5C 8024117C 8FB20018 */  lw        $s2, 0x18($sp)
/* 16FA60 80241180 8FB10014 */  lw        $s1, 0x14($sp)
/* 16FA64 80241184 8FB00010 */  lw        $s0, 0x10($sp)
/* 16FA68 80241188 03E00008 */  jr        $ra
/* 16FA6C 8024118C 27BD0028 */   addiu    $sp, $sp, 0x28
