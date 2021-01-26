.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024121C_889DEC
/* 889DEC 8024121C 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* 889DF0 80241220 AFB60040 */  sw        $s6, 0x40($sp)
/* 889DF4 80241224 0080B02D */  daddu     $s6, $a0, $zero
/* 889DF8 80241228 AFB00028 */  sw        $s0, 0x28($sp)
/* 889DFC 8024122C 00A0802D */  daddu     $s0, $a1, $zero
/* 889E00 80241230 AFBF0044 */  sw        $ra, 0x44($sp)
/* 889E04 80241234 AFB5003C */  sw        $s5, 0x3c($sp)
/* 889E08 80241238 AFB40038 */  sw        $s4, 0x38($sp)
/* 889E0C 8024123C AFB30034 */  sw        $s3, 0x34($sp)
/* 889E10 80241240 AFB20030 */  sw        $s2, 0x30($sp)
/* 889E14 80241244 AFB1002C */  sw        $s1, 0x2c($sp)
/* 889E18 80241248 F7B80058 */  sdc1      $f24, 0x58($sp)
/* 889E1C 8024124C F7B60050 */  sdc1      $f22, 0x50($sp)
/* 889E20 80241250 F7B40048 */  sdc1      $f20, 0x48($sp)
/* 889E24 80241254 8ED3000C */  lw        $s3, 0xc($s6)
/* 889E28 80241258 0C00EAD2 */  jal       get_npc_safe
/* 889E2C 8024125C 2404FFFC */   addiu    $a0, $zero, -4
/* 889E30 80241260 27A50018 */  addiu     $a1, $sp, 0x18
/* 889E34 80241264 3C048007 */  lui       $a0, %hi(gCurrentCameraID)
/* 889E38 80241268 8C847410 */  lw        $a0, %lo(gCurrentCameraID)($a0)
/* 889E3C 8024126C 27A6001C */  addiu     $a2, $sp, 0x1c
/* 889E40 80241270 00041880 */  sll       $v1, $a0, 2
/* 889E44 80241274 00641821 */  addu      $v1, $v1, $a0
/* 889E48 80241278 00031880 */  sll       $v1, $v1, 2
/* 889E4C 8024127C 00641823 */  subu      $v1, $v1, $a0
/* 889E50 80241280 000320C0 */  sll       $a0, $v1, 3
/* 889E54 80241284 00641821 */  addu      $v1, $v1, $a0
/* 889E58 80241288 000318C0 */  sll       $v1, $v1, 3
/* 889E5C 8024128C 3C01800B */  lui       $at, %hi(D_800B1DEC_6FA9BC)
/* 889E60 80241290 00230821 */  addu      $at, $at, $v1
/* 889E64 80241294 C42C1DEC */  lwc1      $f12, %lo(D_800B1DEC_6FA9BC)($at)
/* 889E68 80241298 0C00A88D */  jal       sin_cos_deg
/* 889E6C 8024129C 0040A82D */   daddu    $s5, $v0, $zero
/* 889E70 802412A0 1200005D */  beqz      $s0, .L80241418
/* 889E74 802412A4 00000000 */   nop
/* 889E78 802412A8 0C00AB0A */  jal       general_heap_malloc
/* 889E7C 802412AC 24040068 */   addiu    $a0, $zero, 0x68
/* 889E80 802412B0 0040902D */  daddu     $s2, $v0, $zero
/* 889E84 802412B4 02C0202D */  daddu     $a0, $s6, $zero
/* 889E88 802412B8 0000882D */  daddu     $s1, $zero, $zero
/* 889E8C 802412BC 2414FFFF */  addiu     $s4, $zero, -1
/* 889E90 802412C0 AED20060 */  sw        $s2, 0x60($s6)
/* 889E94 802412C4 8E650000 */  lw        $a1, ($s3)
/* 889E98 802412C8 3C014148 */  lui       $at, 0x4148
/* 889E9C 802412CC 4481C000 */  mtc1      $at, $f24
/* 889EA0 802412D0 3C013F80 */  lui       $at, 0x3f80
/* 889EA4 802412D4 4481B000 */  mtc1      $at, $f22
/* 889EA8 802412D8 4480A000 */  mtc1      $zero, $f20
/* 889EAC 802412DC 0C0B1EAF */  jal       get_variable
/* 889EB0 802412E0 0240802D */   daddu    $s0, $s2, $zero
/* 889EB4 802412E4 0C04417A */  jal       get_entity_by_index
/* 889EB8 802412E8 0040202D */   daddu    $a0, $v0, $zero
/* 889EBC 802412EC AE42005C */  sw        $v0, 0x5c($s2)
.L802412F0:
/* 889EC0 802412F0 8E42005C */  lw        $v0, 0x5c($s2)
/* 889EC4 802412F4 C440004C */  lwc1      $f0, 0x4c($v0)
/* 889EC8 802412F8 0000202D */  daddu     $a0, $zero, $zero
/* 889ECC 802412FC E7B60010 */  swc1      $f22, 0x10($sp)
/* 889ED0 80241300 AFB40014 */  sw        $s4, 0x14($sp)
/* 889ED4 80241304 46180000 */  add.s     $f0, $f0, $f24
/* 889ED8 80241308 8C450048 */  lw        $a1, 0x48($v0)
/* 889EDC 8024130C 8C470050 */  lw        $a3, 0x50($v0)
/* 889EE0 80241310 44060000 */  mfc1      $a2, $f0
/* 889EE4 80241314 0C01C5BC */  jal       func_800716F0
/* 889EE8 80241318 26310001 */   addiu    $s1, $s1, 1
/* 889EEC 8024131C AE020008 */  sw        $v0, 8($s0)
/* 889EF0 80241320 E614002C */  swc1      $f20, 0x2c($s0)
/* 889EF4 80241324 E6140020 */  swc1      $f20, 0x20($s0)
/* 889EF8 80241328 E6140014 */  swc1      $f20, 0x14($s0)
/* 889EFC 8024132C E6140050 */  swc1      $f20, 0x50($s0)
/* 889F00 80241330 E6140044 */  swc1      $f20, 0x44($s0)
/* 889F04 80241334 E6140038 */  swc1      $f20, 0x38($s0)
/* 889F08 80241338 2A220003 */  slti      $v0, $s1, 3
/* 889F0C 8024133C 1440FFEC */  bnez      $v0, .L802412F0
/* 889F10 80241340 26100004 */   addiu    $s0, $s0, 4
/* 889F14 80241344 0000882D */  daddu     $s1, $zero, $zero
/* 889F18 80241348 0240802D */  daddu     $s0, $s2, $zero
/* 889F1C 8024134C 3C148024 */  lui       $s4, %hi(D_80243D04_88C8D4)
/* 889F20 80241350 26943D04 */  addiu     $s4, $s4, %lo(D_80243D04_88C8D4)
/* 889F24 80241354 3C014248 */  lui       $at, 0x4248
/* 889F28 80241358 4481A000 */  mtc1      $at, $f20
/* 889F2C 8024135C 24130044 */  addiu     $s3, $zero, 0x44
/* 889F30 80241360 AE400000 */  sw        $zero, ($s2)
/* 889F34 80241364 AE400004 */  sw        $zero, 4($s2)
/* 889F38 80241368 AE400060 */  sw        $zero, 0x60($s2)
/* 889F3C 8024136C AE400064 */  sw        $zero, 0x64($s2)
.L80241370:
/* 889F40 80241370 27A40020 */  addiu     $a0, $sp, 0x20
/* 889F44 80241374 4406A000 */  mfc1      $a2, $f20
/* 889F48 80241378 8E870000 */  lw        $a3, ($s4)
/* 889F4C 8024137C 02532821 */  addu      $a1, $s2, $s3
/* 889F50 80241380 0C00A7E7 */  jal       add_vec2D_polar
/* 889F54 80241384 AFA00020 */   sw       $zero, 0x20($sp)
/* 889F58 80241388 C7A2001C */  lwc1      $f2, 0x1c($sp)
/* 889F5C 8024138C C7A40020 */  lwc1      $f4, 0x20($sp)
/* 889F60 80241390 46041082 */  mul.s     $f2, $f2, $f4
/* 889F64 80241394 00000000 */  nop
/* 889F68 80241398 C7A00018 */  lwc1      $f0, 0x18($sp)
/* 889F6C 8024139C 46040002 */  mul.s     $f0, $f0, $f4
/* 889F70 802413A0 00000000 */  nop
/* 889F74 802413A4 E6020038 */  swc1      $f2, 0x38($s0)
/* 889F78 802413A8 E6000050 */  swc1      $f0, 0x50($s0)
/* 889F7C 802413AC 8E42005C */  lw        $v0, 0x5c($s2)
/* 889F80 802413B0 C6000038 */  lwc1      $f0, 0x38($s0)
/* 889F84 802413B4 C4420048 */  lwc1      $f2, 0x48($v0)
/* 889F88 802413B8 46001080 */  add.s     $f2, $f2, $f0
/* 889F8C 802413BC C6A00038 */  lwc1      $f0, 0x38($s5)
/* 889F90 802413C0 46020001 */  sub.s     $f0, $f0, $f2
/* 889F94 802413C4 E6000038 */  swc1      $f0, 0x38($s0)
/* 889F98 802413C8 8E42005C */  lw        $v0, 0x5c($s2)
/* 889F9C 802413CC C6000044 */  lwc1      $f0, 0x44($s0)
/* 889FA0 802413D0 C442004C */  lwc1      $f2, 0x4c($v0)
/* 889FA4 802413D4 46001080 */  add.s     $f2, $f2, $f0
/* 889FA8 802413D8 C6A0003C */  lwc1      $f0, 0x3c($s5)
/* 889FAC 802413DC 46020001 */  sub.s     $f0, $f0, $f2
/* 889FB0 802413E0 E6000044 */  swc1      $f0, 0x44($s0)
/* 889FB4 802413E4 8E42005C */  lw        $v0, 0x5c($s2)
/* 889FB8 802413E8 C6000050 */  lwc1      $f0, 0x50($s0)
/* 889FBC 802413EC C4420050 */  lwc1      $f2, 0x50($v0)
/* 889FC0 802413F0 26940004 */  addiu     $s4, $s4, 4
/* 889FC4 802413F4 46001080 */  add.s     $f2, $f2, $f0
/* 889FC8 802413F8 C6A00040 */  lwc1      $f0, 0x40($s5)
/* 889FCC 802413FC 26730004 */  addiu     $s3, $s3, 4
/* 889FD0 80241400 46020001 */  sub.s     $f0, $f0, $f2
/* 889FD4 80241404 26310001 */  addiu     $s1, $s1, 1
/* 889FD8 80241408 2A220003 */  slti      $v0, $s1, 3
/* 889FDC 8024140C E6000050 */  swc1      $f0, 0x50($s0)
/* 889FE0 80241410 1440FFD7 */  bnez      $v0, .L80241370
/* 889FE4 80241414 26100004 */   addiu    $s0, $s0, 4
.L80241418:
/* 889FE8 80241418 8ED20060 */  lw        $s2, 0x60($s6)
/* 889FEC 8024141C 8E430000 */  lw        $v1, ($s2)
/* 889FF0 80241420 24020001 */  addiu     $v0, $zero, 1
/* 889FF4 80241424 10620038 */  beq       $v1, $v0, .L80241508
/* 889FF8 80241428 28620002 */   slti     $v0, $v1, 2
/* 889FFC 8024142C 50400005 */  beql      $v0, $zero, .L80241444
/* 88A000 80241430 24020002 */   addiu    $v0, $zero, 2
/* 88A004 80241434 10600007 */  beqz      $v1, .L80241454
/* 88A008 80241438 24040005 */   addiu    $a0, $zero, 5
/* 88A00C 8024143C 0809057B */  j         .L802415EC
/* 88A010 80241440 00000000 */   nop
.L80241444:
/* 88A014 80241444 10620058 */  beq       $v1, $v0, .L802415A8
/* 88A018 80241448 00000000 */   nop
/* 88A01C 8024144C 0809057B */  j         .L802415EC
/* 88A020 80241450 00000000 */   nop
.L80241454:
/* 88A024 80241454 0000882D */  daddu     $s1, $zero, $zero
/* 88A028 80241458 3C148024 */  lui       $s4, %hi(D_80243D04_88C8D4)
/* 88A02C 8024145C 26943D04 */  addiu     $s4, $s4, %lo(D_80243D04_88C8D4)
/* 88A030 80241460 24130020 */  addiu     $s3, $zero, 0x20
/* 88A034 80241464 3C064248 */  lui       $a2, 0x4248
/* 88A038 80241468 44800000 */  mtc1      $zero, $f0
/* 88A03C 8024146C 24020014 */  addiu     $v0, $zero, 0x14
/* 88A040 80241470 AFA20010 */  sw        $v0, 0x10($sp)
/* 88A044 80241474 44050000 */  mfc1      $a1, $f0
/* 88A048 80241478 8E470060 */  lw        $a3, 0x60($s2)
/* 88A04C 8024147C 4485B000 */  mtc1      $a1, $f22
/* 88A050 80241480 0C00A8ED */  jal       update_lerp
/* 88A054 80241484 0240802D */   daddu    $s0, $s2, $zero
/* 88A058 80241488 46000506 */  mov.s     $f20, $f0
.L8024148C:
/* 88A05C 8024148C 4406A000 */  mfc1      $a2, $f20
/* 88A060 80241490 27A40020 */  addiu     $a0, $sp, 0x20
/* 88A064 80241494 E6160020 */  swc1      $f22, 0x20($s0)
/* 88A068 80241498 8E870000 */  lw        $a3, ($s4)
/* 88A06C 8024149C 02532821 */  addu      $a1, $s2, $s3
/* 88A070 802414A0 0C00A7E7 */  jal       add_vec2D_polar
/* 88A074 802414A4 E7B60020 */   swc1     $f22, 0x20($sp)
/* 88A078 802414A8 C7A4001C */  lwc1      $f4, 0x1c($sp)
/* 88A07C 802414AC C7A00020 */  lwc1      $f0, 0x20($sp)
/* 88A080 802414B0 46002102 */  mul.s     $f4, $f4, $f0
/* 88A084 802414B4 00000000 */  nop
/* 88A088 802414B8 C7A20018 */  lwc1      $f2, 0x18($sp)
/* 88A08C 802414BC 26940004 */  addiu     $s4, $s4, 4
/* 88A090 802414C0 46001082 */  mul.s     $f2, $f2, $f0
/* 88A094 802414C4 00000000 */  nop
/* 88A098 802414C8 26730004 */  addiu     $s3, $s3, 4
/* 88A09C 802414CC 26310001 */  addiu     $s1, $s1, 1
/* 88A0A0 802414D0 2A220003 */  slti      $v0, $s1, 3
/* 88A0A4 802414D4 E6040014 */  swc1      $f4, 0x14($s0)
/* 88A0A8 802414D8 E602002C */  swc1      $f2, 0x2c($s0)
/* 88A0AC 802414DC 1440FFEB */  bnez      $v0, .L8024148C
/* 88A0B0 802414E0 26100004 */   addiu    $s0, $s0, 4
/* 88A0B4 802414E4 8E420060 */  lw        $v0, 0x60($s2)
/* 88A0B8 802414E8 24420001 */  addiu     $v0, $v0, 1
/* 88A0BC 802414EC AE420060 */  sw        $v0, 0x60($s2)
/* 88A0C0 802414F0 28420015 */  slti      $v0, $v0, 0x15
/* 88A0C4 802414F4 1440003D */  bnez      $v0, .L802415EC
/* 88A0C8 802414F8 24020001 */   addiu    $v0, $zero, 1
/* 88A0CC 802414FC AE420000 */  sw        $v0, ($s2)
/* 88A0D0 80241500 0809057B */  j         .L802415EC
/* 88A0D4 80241504 AE400060 */   sw       $zero, 0x60($s2)
.L80241508:
/* 88A0D8 80241508 0000882D */  daddu     $s1, $zero, $zero
/* 88A0DC 8024150C 3C148024 */  lui       $s4, %hi(D_80243D04_88C8D4)
/* 88A0E0 80241510 26943D04 */  addiu     $s4, $s4, %lo(D_80243D04_88C8D4)
/* 88A0E4 80241514 24130020 */  addiu     $s3, $zero, 0x20
/* 88A0E8 80241518 0240802D */  daddu     $s0, $s2, $zero
/* 88A0EC 8024151C 3C014248 */  lui       $at, 0x4248
/* 88A0F0 80241520 4481A000 */  mtc1      $at, $f20
/* 88A0F4 80241524 4480B000 */  mtc1      $zero, $f22
.L80241528:
/* 88A0F8 80241528 4406A000 */  mfc1      $a2, $f20
/* 88A0FC 8024152C 27A40020 */  addiu     $a0, $sp, 0x20
/* 88A100 80241530 E6160020 */  swc1      $f22, 0x20($s0)
/* 88A104 80241534 8E870000 */  lw        $a3, ($s4)
/* 88A108 80241538 02532821 */  addu      $a1, $s2, $s3
/* 88A10C 8024153C 0C00A7E7 */  jal       add_vec2D_polar
/* 88A110 80241540 E7B60020 */   swc1     $f22, 0x20($sp)
/* 88A114 80241544 C7A4001C */  lwc1      $f4, 0x1c($sp)
/* 88A118 80241548 C7A00020 */  lwc1      $f0, 0x20($sp)
/* 88A11C 8024154C 46002102 */  mul.s     $f4, $f4, $f0
/* 88A120 80241550 00000000 */  nop
/* 88A124 80241554 C7A20018 */  lwc1      $f2, 0x18($sp)
/* 88A128 80241558 26940004 */  addiu     $s4, $s4, 4
/* 88A12C 8024155C 46001082 */  mul.s     $f2, $f2, $f0
/* 88A130 80241560 00000000 */  nop
/* 88A134 80241564 26730004 */  addiu     $s3, $s3, 4
/* 88A138 80241568 26310001 */  addiu     $s1, $s1, 1
/* 88A13C 8024156C 2A220003 */  slti      $v0, $s1, 3
/* 88A140 80241570 E6040014 */  swc1      $f4, 0x14($s0)
/* 88A144 80241574 E602002C */  swc1      $f2, 0x2c($s0)
/* 88A148 80241578 1440FFEB */  bnez      $v0, .L80241528
/* 88A14C 8024157C 26100004 */   addiu    $s0, $s0, 4
/* 88A150 80241580 8E420060 */  lw        $v0, 0x60($s2)
/* 88A154 80241584 24420001 */  addiu     $v0, $v0, 1
/* 88A158 80241588 AE420060 */  sw        $v0, 0x60($s2)
/* 88A15C 8024158C 28420010 */  slti      $v0, $v0, 0x10
/* 88A160 80241590 14400016 */  bnez      $v0, .L802415EC
/* 88A164 80241594 2402000F */   addiu    $v0, $zero, 0xf
/* 88A168 80241598 AE420060 */  sw        $v0, 0x60($s2)
/* 88A16C 8024159C 24020002 */  addiu     $v0, $zero, 2
/* 88A170 802415A0 0809057B */  j         .L802415EC
/* 88A174 802415A4 AE420000 */   sw       $v0, ($s2)
.L802415A8:
/* 88A178 802415A8 8E420060 */  lw        $v0, 0x60($s2)
/* 88A17C 802415AC 24420001 */  addiu     $v0, $v0, 1
/* 88A180 802415B0 AE420060 */  sw        $v0, 0x60($s2)
/* 88A184 802415B4 2842001F */  slti      $v0, $v0, 0x1f
/* 88A188 802415B8 1440000C */  bnez      $v0, .L802415EC
/* 88A18C 802415BC 0000882D */   daddu    $s1, $zero, $zero
/* 88A190 802415C0 0240282D */  daddu     $a1, $s2, $zero
.L802415C4:
/* 88A194 802415C4 8CA20008 */  lw        $v0, 8($a1)
/* 88A198 802415C8 8C430000 */  lw        $v1, ($v0)
/* 88A19C 802415CC 26310001 */  addiu     $s1, $s1, 1
/* 88A1A0 802415D0 34630010 */  ori       $v1, $v1, 0x10
/* 88A1A4 802415D4 AC430000 */  sw        $v1, ($v0)
/* 88A1A8 802415D8 2A220003 */  slti      $v0, $s1, 3
/* 88A1AC 802415DC 1440FFF9 */  bnez      $v0, .L802415C4
/* 88A1B0 802415E0 24A50004 */   addiu    $a1, $a1, 4
/* 88A1B4 802415E4 080905C8 */  j         .L80241720
/* 88A1B8 802415E8 24020002 */   addiu    $v0, $zero, 2
.L802415EC:
/* 88A1BC 802415EC 8E430004 */  lw        $v1, 4($s2)
/* 88A1C0 802415F0 10600005 */  beqz      $v1, .L80241608
/* 88A1C4 802415F4 24020001 */   addiu    $v0, $zero, 1
/* 88A1C8 802415F8 1062000B */  beq       $v1, $v0, .L80241628
/* 88A1CC 802415FC 0000882D */   daddu    $s1, $zero, $zero
/* 88A1D0 80241600 080905B7 */  j         .L802416DC
/* 88A1D4 80241604 0240282D */   daddu    $a1, $s2, $zero
.L80241608:
/* 88A1D8 80241608 8E420064 */  lw        $v0, 0x64($s2)
/* 88A1DC 8024160C 24420001 */  addiu     $v0, $v0, 1
/* 88A1E0 80241610 AE420064 */  sw        $v0, 0x64($s2)
/* 88A1E4 80241614 28420010 */  slti      $v0, $v0, 0x10
/* 88A1E8 80241618 1440002F */  bnez      $v0, .L802416D8
/* 88A1EC 8024161C 0000882D */   daddu    $s1, $zero, $zero
/* 88A1F0 80241620 080905B3 */  j         .L802416CC
/* 88A1F4 80241624 24020001 */   addiu    $v0, $zero, 1
.L80241628:
/* 88A1F8 80241628 4480A000 */  mtc1      $zero, $f20
/* 88A1FC 8024162C 24130014 */  addiu     $s3, $zero, 0x14
/* 88A200 80241630 0240802D */  daddu     $s0, $s2, $zero
.L80241634:
/* 88A204 80241634 4405A000 */  mfc1      $a1, $f20
/* 88A208 80241638 AFB30010 */  sw        $s3, 0x10($sp)
/* 88A20C 8024163C 8E060038 */  lw        $a2, 0x38($s0)
/* 88A210 80241640 8E470064 */  lw        $a3, 0x64($s2)
/* 88A214 80241644 0C00A8ED */  jal       update_lerp
/* 88A218 80241648 24040001 */   addiu    $a0, $zero, 1
/* 88A21C 8024164C C6020014 */  lwc1      $f2, 0x14($s0)
/* 88A220 80241650 46001080 */  add.s     $f2, $f2, $f0
/* 88A224 80241654 4405A000 */  mfc1      $a1, $f20
/* 88A228 80241658 E6020014 */  swc1      $f2, 0x14($s0)
/* 88A22C 8024165C AFB30010 */  sw        $s3, 0x10($sp)
/* 88A230 80241660 8E060044 */  lw        $a2, 0x44($s0)
/* 88A234 80241664 8E470064 */  lw        $a3, 0x64($s2)
/* 88A238 80241668 0C00A8ED */  jal       update_lerp
/* 88A23C 8024166C 24040001 */   addiu    $a0, $zero, 1
/* 88A240 80241670 C6020020 */  lwc1      $f2, 0x20($s0)
/* 88A244 80241674 46001080 */  add.s     $f2, $f2, $f0
/* 88A248 80241678 4405A000 */  mfc1      $a1, $f20
/* 88A24C 8024167C E6020020 */  swc1      $f2, 0x20($s0)
/* 88A250 80241680 AFB30010 */  sw        $s3, 0x10($sp)
/* 88A254 80241684 8E060050 */  lw        $a2, 0x50($s0)
/* 88A258 80241688 8E470064 */  lw        $a3, 0x64($s2)
/* 88A25C 8024168C 0C00A8ED */  jal       update_lerp
/* 88A260 80241690 24040001 */   addiu    $a0, $zero, 1
/* 88A264 80241694 C602002C */  lwc1      $f2, 0x2c($s0)
/* 88A268 80241698 46001080 */  add.s     $f2, $f2, $f0
/* 88A26C 8024169C 26310001 */  addiu     $s1, $s1, 1
/* 88A270 802416A0 2A220003 */  slti      $v0, $s1, 3
/* 88A274 802416A4 E602002C */  swc1      $f2, 0x2c($s0)
/* 88A278 802416A8 1440FFE2 */  bnez      $v0, .L80241634
/* 88A27C 802416AC 26100004 */   addiu    $s0, $s0, 4
/* 88A280 802416B0 8E420064 */  lw        $v0, 0x64($s2)
/* 88A284 802416B4 24420001 */  addiu     $v0, $v0, 1
/* 88A288 802416B8 AE420064 */  sw        $v0, 0x64($s2)
/* 88A28C 802416BC 28420015 */  slti      $v0, $v0, 0x15
/* 88A290 802416C0 14400005 */  bnez      $v0, .L802416D8
/* 88A294 802416C4 0000882D */   daddu    $s1, $zero, $zero
/* 88A298 802416C8 24020002 */  addiu     $v0, $zero, 2
.L802416CC:
/* 88A29C 802416CC AE420004 */  sw        $v0, 4($s2)
/* 88A2A0 802416D0 AE400064 */  sw        $zero, 0x64($s2)
/* 88A2A4 802416D4 0000882D */  daddu     $s1, $zero, $zero
.L802416D8:
/* 88A2A8 802416D8 0240282D */  daddu     $a1, $s2, $zero
.L802416DC:
/* 88A2AC 802416DC 8CA20008 */  lw        $v0, 8($a1)
/* 88A2B0 802416E0 C4A00014 */  lwc1      $f0, 0x14($a1)
/* 88A2B4 802416E4 8C42000C */  lw        $v0, 0xc($v0)
/* 88A2B8 802416E8 E4400010 */  swc1      $f0, 0x10($v0)
/* 88A2BC 802416EC 8CA20008 */  lw        $v0, 8($a1)
/* 88A2C0 802416F0 C4A00020 */  lwc1      $f0, 0x20($a1)
/* 88A2C4 802416F4 8C42000C */  lw        $v0, 0xc($v0)
/* 88A2C8 802416F8 26310001 */  addiu     $s1, $s1, 1
/* 88A2CC 802416FC E4400014 */  swc1      $f0, 0x14($v0)
/* 88A2D0 80241700 8CA20008 */  lw        $v0, 8($a1)
/* 88A2D4 80241704 C4A0002C */  lwc1      $f0, 0x2c($a1)
/* 88A2D8 80241708 8C42000C */  lw        $v0, 0xc($v0)
/* 88A2DC 8024170C E4400018 */  swc1      $f0, 0x18($v0)
/* 88A2E0 80241710 2A220003 */  slti      $v0, $s1, 3
/* 88A2E4 80241714 1440FFF1 */  bnez      $v0, .L802416DC
/* 88A2E8 80241718 24A50004 */   addiu    $a1, $a1, 4
/* 88A2EC 8024171C 0000102D */  daddu     $v0, $zero, $zero
.L80241720:
/* 88A2F0 80241720 8FBF0044 */  lw        $ra, 0x44($sp)
/* 88A2F4 80241724 8FB60040 */  lw        $s6, 0x40($sp)
/* 88A2F8 80241728 8FB5003C */  lw        $s5, 0x3c($sp)
/* 88A2FC 8024172C 8FB40038 */  lw        $s4, 0x38($sp)
/* 88A300 80241730 8FB30034 */  lw        $s3, 0x34($sp)
/* 88A304 80241734 8FB20030 */  lw        $s2, 0x30($sp)
/* 88A308 80241738 8FB1002C */  lw        $s1, 0x2c($sp)
/* 88A30C 8024173C 8FB00028 */  lw        $s0, 0x28($sp)
/* 88A310 80241740 D7B80058 */  ldc1      $f24, 0x58($sp)
/* 88A314 80241744 D7B60050 */  ldc1      $f22, 0x50($sp)
/* 88A318 80241748 D7B40048 */  ldc1      $f20, 0x48($sp)
/* 88A31C 8024174C 03E00008 */  jr        $ra
/* 88A320 80241750 27BD0060 */   addiu    $sp, $sp, 0x60
