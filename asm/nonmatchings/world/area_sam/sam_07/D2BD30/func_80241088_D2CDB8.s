.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241088_D2CDB8
/* D2CDB8 80241088 27BDFF80 */  addiu     $sp, $sp, -0x80
/* D2CDBC 8024108C AFBF0064 */  sw        $ra, 0x64($sp)
/* D2CDC0 80241090 AFBE0060 */  sw        $fp, 0x60($sp)
/* D2CDC4 80241094 AFB7005C */  sw        $s7, 0x5c($sp)
/* D2CDC8 80241098 AFB60058 */  sw        $s6, 0x58($sp)
/* D2CDCC 8024109C AFB50054 */  sw        $s5, 0x54($sp)
/* D2CDD0 802410A0 AFB40050 */  sw        $s4, 0x50($sp)
/* D2CDD4 802410A4 AFB3004C */  sw        $s3, 0x4c($sp)
/* D2CDD8 802410A8 AFB20048 */  sw        $s2, 0x48($sp)
/* D2CDDC 802410AC AFB10044 */  sw        $s1, 0x44($sp)
/* D2CDE0 802410B0 AFB00040 */  sw        $s0, 0x40($sp)
/* D2CDE4 802410B4 F7B80078 */  sdc1      $f24, 0x78($sp)
/* D2CDE8 802410B8 F7B60070 */  sdc1      $f22, 0x70($sp)
/* D2CDEC 802410BC F7B40068 */  sdc1      $f20, 0x68($sp)
/* D2CDF0 802410C0 AFA40080 */  sw        $a0, 0x80($sp)
/* D2CDF4 802410C4 8C960148 */  lw        $s6, 0x148($a0)
/* D2CDF8 802410C8 00C0902D */  daddu     $s2, $a2, $zero
/* D2CDFC 802410CC 86C40008 */  lh        $a0, 8($s6)
/* D2CE00 802410D0 0C00EABB */  jal       get_npc_unsafe
/* D2CE04 802410D4 0000B82D */   daddu    $s7, $zero, $zero
/* D2CE08 802410D8 0040882D */  daddu     $s1, $v0, $zero
/* D2CE0C 802410DC 9622008E */  lhu       $v0, 0x8e($s1)
/* D2CE10 802410E0 2442FFFF */  addiu     $v0, $v0, -1
/* D2CE14 802410E4 A622008E */  sh        $v0, 0x8e($s1)
/* D2CE18 802410E8 00021400 */  sll       $v0, $v0, 0x10
/* D2CE1C 802410EC 8EC30090 */  lw        $v1, 0x90($s6)
/* D2CE20 802410F0 00021403 */  sra       $v0, $v0, 0x10
/* D2CE24 802410F4 0062182A */  slt       $v1, $v1, $v0
/* D2CE28 802410F8 14600005 */  bnez      $v1, .L80241110
/* D2CE2C 802410FC 02E0F02D */   daddu    $fp, $s7, $zero
/* D2CE30 80241100 8EC20000 */  lw        $v0, ($s6)
/* D2CE34 80241104 3C031F10 */  lui       $v1, 0x1f10
/* D2CE38 80241108 00431025 */  or        $v0, $v0, $v1
/* D2CE3C 8024110C AEC20000 */  sw        $v0, ($s6)
.L80241110:
/* D2CE40 80241110 8622008E */  lh        $v0, 0x8e($s1)
/* D2CE44 80241114 1440025D */  bnez      $v0, .L80241A8C
/* D2CE48 80241118 00000000 */   nop
/* D2CE4C 8024111C 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* D2CE50 80241120 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* D2CE54 80241124 0C00A6C9 */  jal       clamp_angle
/* D2CE58 80241128 C44C00A8 */   lwc1     $f12, 0xa8($v0)
/* D2CE5C 8024112C 3C014334 */  lui       $at, 0x4334
/* D2CE60 80241130 44811000 */  mtc1      $at, $f2
/* D2CE64 80241134 00000000 */  nop
/* D2CE68 80241138 4602003C */  c.lt.s    $f0, $f2
/* D2CE6C 8024113C 00000000 */  nop
/* D2CE70 80241140 45000011 */  bc1f      .L80241188
/* D2CE74 80241144 00000000 */   nop
/* D2CE78 80241148 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* D2CE7C 8024114C 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* D2CE80 80241150 3C0142B4 */  lui       $at, 0x42b4
/* D2CE84 80241154 44816000 */  mtc1      $at, $f12
/* D2CE88 80241158 00031080 */  sll       $v0, $v1, 2
/* D2CE8C 8024115C 00431021 */  addu      $v0, $v0, $v1
/* D2CE90 80241160 00021080 */  sll       $v0, $v0, 2
/* D2CE94 80241164 00431023 */  subu      $v0, $v0, $v1
/* D2CE98 80241168 000218C0 */  sll       $v1, $v0, 3
/* D2CE9C 8024116C 00431021 */  addu      $v0, $v0, $v1
/* D2CEA0 80241170 000210C0 */  sll       $v0, $v0, 3
/* D2CEA4 80241174 3C01800B */  lui       $at, %hi(D_800B1DEC_B9DB1C)
/* D2CEA8 80241178 00220821 */  addu      $at, $at, $v0
/* D2CEAC 8024117C C4201DEC */  lwc1      $f0, %lo(D_800B1DEC_B9DB1C)($at)
/* D2CEB0 80241180 08090471 */  j         .L802411C4
/* D2CEB4 80241184 460C0301 */   sub.s    $f12, $f0, $f12
.L80241188:
/* D2CEB8 80241188 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* D2CEBC 8024118C 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* D2CEC0 80241190 3C0142B4 */  lui       $at, 0x42b4
/* D2CEC4 80241194 44816000 */  mtc1      $at, $f12
/* D2CEC8 80241198 00031080 */  sll       $v0, $v1, 2
/* D2CECC 8024119C 00431021 */  addu      $v0, $v0, $v1
/* D2CED0 802411A0 00021080 */  sll       $v0, $v0, 2
/* D2CED4 802411A4 00431023 */  subu      $v0, $v0, $v1
/* D2CED8 802411A8 000218C0 */  sll       $v1, $v0, 3
/* D2CEDC 802411AC 00431021 */  addu      $v0, $v0, $v1
/* D2CEE0 802411B0 000210C0 */  sll       $v0, $v0, 3
/* D2CEE4 802411B4 3C01800B */  lui       $at, %hi(D_800B1DEC_B9DB1C)
/* D2CEE8 802411B8 00220821 */  addu      $at, $at, $v0
/* D2CEEC 802411BC C4201DEC */  lwc1      $f0, %lo(D_800B1DEC_B9DB1C)($at)
/* D2CEF0 802411C0 460C0300 */  add.s     $f12, $f0, $f12
.L802411C4:
/* D2CEF4 802411C4 0C00A6C9 */  jal       clamp_angle
/* D2CEF8 802411C8 00000000 */   nop
/* D2CEFC 802411CC 46000586 */  mov.s     $f22, $f0
/* D2CF00 802411D0 3C014334 */  lui       $at, 0x4334
/* D2CF04 802411D4 44816000 */  mtc1      $at, $f12
/* D2CF08 802411D8 0C00A6C9 */  jal       clamp_angle
/* D2CF0C 802411DC 460CB300 */   add.s    $f12, $f22, $f12
/* D2CF10 802411E0 8EC20088 */  lw        $v0, 0x88($s6)
/* D2CF14 802411E4 14400010 */  bnez      $v0, .L80241228
/* D2CF18 802411E8 46000606 */   mov.s    $f24, $f0
/* D2CF1C 802411EC 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* D2CF20 802411F0 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* D2CF24 802411F4 804300B4 */  lb        $v1, 0xb4($v0)
/* D2CF28 802411F8 3C014200 */  lui       $at, 0x4200
/* D2CF2C 802411FC 4481A000 */  mtc1      $at, $f20
/* D2CF30 80241200 10600016 */  beqz      $v1, .L8024125C
/* D2CF34 80241204 24020001 */   addiu    $v0, $zero, 1
/* D2CF38 80241208 3C0142C8 */  lui       $at, 0x42c8
/* D2CF3C 8024120C 4481A000 */  mtc1      $at, $f20
/* D2CF40 80241210 14620013 */  bne       $v1, $v0, .L80241260
/* D2CF44 80241214 26300038 */   addiu    $s0, $s1, 0x38
/* D2CF48 80241218 3C0142B4 */  lui       $at, 0x42b4
/* D2CF4C 8024121C 4481A000 */  mtc1      $at, $f20
/* D2CF50 80241220 08090499 */  j         .L80241264
/* D2CF54 80241224 0200202D */   daddu    $a0, $s0, $zero
.L80241228:
/* D2CF58 80241228 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* D2CF5C 8024122C 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* D2CF60 80241230 804300B4 */  lb        $v1, 0xb4($v0)
/* D2CF64 80241234 3C014218 */  lui       $at, 0x4218
/* D2CF68 80241238 4481A000 */  mtc1      $at, $f20
/* D2CF6C 8024123C 10600007 */  beqz      $v1, .L8024125C
/* D2CF70 80241240 24020001 */   addiu    $v0, $zero, 1
/* D2CF74 80241244 3C0142B4 */  lui       $at, 0x42b4
/* D2CF78 80241248 4481A000 */  mtc1      $at, $f20
/* D2CF7C 8024124C 14620004 */  bne       $v1, $v0, .L80241260
/* D2CF80 80241250 26300038 */   addiu    $s0, $s1, 0x38
/* D2CF84 80241254 3C014296 */  lui       $at, 0x4296
/* D2CF88 80241258 4481A000 */  mtc1      $at, $f20
.L8024125C:
/* D2CF8C 8024125C 26300038 */  addiu     $s0, $s1, 0x38
.L80241260:
/* D2CF90 80241260 0200202D */  daddu     $a0, $s0, $zero
.L80241264:
/* D2CF94 80241264 3C15800F */  lui       $s5, %hi(gPlayerStatusPtr)
/* D2CF98 80241268 26B57B30 */  addiu     $s5, $s5, %lo(gPlayerStatusPtr)
/* D2CF9C 8024126C 4407C000 */  mfc1      $a3, $f24
/* D2CFA0 80241270 862200A6 */  lh        $v0, 0xa6($s1)
/* D2CFA4 80241274 8EA30000 */  lw        $v1, ($s5)
/* D2CFA8 80241278 44824000 */  mtc1      $v0, $f8
/* D2CFAC 8024127C 00000000 */  nop
/* D2CFB0 80241280 46804220 */  cvt.s.w   $f8, $f8
/* D2CFB4 80241284 C4600028 */  lwc1      $f0, 0x28($v1)
/* D2CFB8 80241288 44064000 */  mfc1      $a2, $f8
/* D2CFBC 8024128C 26330040 */  addiu     $s3, $s1, 0x40
/* D2CFC0 80241290 E6200038 */  swc1      $f0, 0x38($s1)
/* D2CFC4 80241294 C4600030 */  lwc1      $f0, 0x30($v1)
/* D2CFC8 80241298 0260282D */  daddu     $a1, $s3, $zero
/* D2CFCC 8024129C 0C00A7E7 */  jal       add_vec2D_polar
/* D2CFD0 802412A0 E6200040 */   swc1     $f0, 0x40($s1)
/* D2CFD4 802412A4 862200A6 */  lh        $v0, 0xa6($s1)
/* D2CFD8 802412A8 44820000 */  mtc1      $v0, $f0
/* D2CFDC 802412AC 00000000 */  nop
/* D2CFE0 802412B0 46800020 */  cvt.s.w   $f0, $f0
/* D2CFE4 802412B4 4600A000 */  add.s     $f0, $f20, $f0
/* D2CFE8 802412B8 4406B000 */  mfc1      $a2, $f22
/* D2CFEC 802412BC 44050000 */  mfc1      $a1, $f0
/* D2CFF0 802412C0 0C00EA95 */  jal       npc_move_heading
/* D2CFF4 802412C4 0220202D */   daddu    $a0, $s1, $zero
/* D2CFF8 802412C8 8EC20088 */  lw        $v0, 0x88($s6)
/* D2CFFC 802412CC 1440005D */  bnez      $v0, .L80241444
/* D2D000 802412D0 00000000 */   nop
/* D2D004 802412D4 C6200038 */  lwc1      $f0, 0x38($s1)
/* D2D008 802412D8 3C018024 */  lui       $at, %hi(D_80243F18_D2FC48)
/* D2D00C 802412DC D4243F18 */  ldc1      $f4, %lo(D_80243F18_D2FC48)($at)
/* D2D010 802412E0 46000021 */  cvt.d.s   $f0, $f0
/* D2D014 802412E4 4620203C */  c.lt.d    $f4, $f0
/* D2D018 802412E8 00000000 */  nop
/* D2D01C 802412EC 45000005 */  bc1f      .L80241304
/* D2D020 802412F0 00000000 */   nop
/* D2D024 802412F4 3C0143BE */  lui       $at, 0x43be
/* D2D028 802412F8 44810000 */  mtc1      $at, $f0
/* D2D02C 802412FC 00000000 */  nop
/* D2D030 80241300 E6200038 */  swc1      $f0, 0x38($s1)
.L80241304:
/* D2D034 80241304 C6200038 */  lwc1      $f0, 0x38($s1)
/* D2D038 80241308 3C018024 */  lui       $at, %hi(D_80243F20_D2FC50)
/* D2D03C 8024130C D4223F20 */  ldc1      $f2, %lo(D_80243F20_D2FC50)($at)
/* D2D040 80241310 46000021 */  cvt.d.s   $f0, $f0
/* D2D044 80241314 4622003C */  c.lt.d    $f0, $f2
/* D2D048 80241318 00000000 */  nop
/* D2D04C 8024131C 45000005 */  bc1f      .L80241334
/* D2D050 80241320 00000000 */   nop
/* D2D054 80241324 3C01C3BE */  lui       $at, 0xc3be
/* D2D058 80241328 44810000 */  mtc1      $at, $f0
/* D2D05C 8024132C 00000000 */  nop
/* D2D060 80241330 E6200038 */  swc1      $f0, 0x38($s1)
.L80241334:
/* D2D064 80241334 C6200040 */  lwc1      $f0, 0x40($s1)
/* D2D068 80241338 46000021 */  cvt.d.s   $f0, $f0
/* D2D06C 8024133C 4620203C */  c.lt.d    $f4, $f0
/* D2D070 80241340 00000000 */  nop
/* D2D074 80241344 45000005 */  bc1f      .L8024135C
/* D2D078 80241348 00000000 */   nop
/* D2D07C 8024134C 3C0143BE */  lui       $at, 0x43be
/* D2D080 80241350 44810000 */  mtc1      $at, $f0
/* D2D084 80241354 00000000 */  nop
/* D2D088 80241358 E6200040 */  swc1      $f0, 0x40($s1)
.L8024135C:
/* D2D08C 8024135C C6200040 */  lwc1      $f0, 0x40($s1)
/* D2D090 80241360 46000021 */  cvt.d.s   $f0, $f0
/* D2D094 80241364 4622003C */  c.lt.d    $f0, $f2
/* D2D098 80241368 00000000 */  nop
/* D2D09C 8024136C 45000005 */  bc1f      .L80241384
/* D2D0A0 80241370 00000000 */   nop
/* D2D0A4 80241374 3C01C3BE */  lui       $at, 0xc3be
/* D2D0A8 80241378 44810000 */  mtc1      $at, $f0
/* D2D0AC 8024137C 00000000 */  nop
/* D2D0B0 80241380 E6200040 */  swc1      $f0, 0x40($s1)
.L80241384:
/* D2D0B4 80241384 C6220038 */  lwc1      $f2, 0x38($s1)
/* D2D0B8 80241388 46021082 */  mul.s     $f2, $f2, $f2
/* D2D0BC 8024138C 00000000 */  nop
/* D2D0C0 80241390 C6200040 */  lwc1      $f0, 0x40($s1)
/* D2D0C4 80241394 46000002 */  mul.s     $f0, $f0, $f0
/* D2D0C8 80241398 00000000 */  nop
/* D2D0CC 8024139C 46001300 */  add.s     $f12, $f2, $f0
/* D2D0D0 802413A0 46006004 */  sqrt.s    $f0, $f12
/* D2D0D4 802413A4 46000032 */  c.eq.s    $f0, $f0
/* D2D0D8 802413A8 00000000 */  nop
/* D2D0DC 802413AC 45010003 */  bc1t      .L802413BC
/* D2D0E0 802413B0 00000000 */   nop
/* D2D0E4 802413B4 0C0187BC */  jal       sqrtf
/* D2D0E8 802413B8 00000000 */   nop
.L802413BC:
/* D2D0EC 802413BC 8E260038 */  lw        $a2, 0x38($s1)
/* D2D0F0 802413C0 8E270040 */  lw        $a3, 0x40($s1)
/* D2D0F4 802413C4 4480A000 */  mtc1      $zero, $f20
/* D2D0F8 802413C8 E7A00038 */  swc1      $f0, 0x38($sp)
/* D2D0FC 802413CC 4600A306 */  mov.s     $f12, $f20
/* D2D100 802413D0 0C00A720 */  jal       atan2
/* D2D104 802413D4 4600A386 */   mov.s    $f14, $f20
/* D2D108 802413D8 46000586 */  mov.s     $f22, $f0
/* D2D10C 802413DC C7A20038 */  lwc1      $f2, 0x38($sp)
/* D2D110 802413E0 3C018024 */  lui       $at, %hi(D_80243F28_D2FC58)
/* D2D114 802413E4 D4203F28 */  ldc1      $f0, %lo(D_80243F28_D2FC58)($at)
/* D2D118 802413E8 460010A1 */  cvt.d.s   $f2, $f2
/* D2D11C 802413EC 4620103C */  c.lt.d    $f2, $f0
/* D2D120 802413F0 00000000 */  nop
/* D2D124 802413F4 45000004 */  bc1f      .L80241408
/* D2D128 802413F8 0200202D */   daddu    $a0, $s0, $zero
/* D2D12C 802413FC 3C064398 */  lui       $a2, 0x4398
/* D2D130 80241400 0809050A */  j         .L80241428
/* D2D134 80241404 34C68000 */   ori      $a2, $a2, 0x8000
.L80241408:
/* D2D138 80241408 3C018024 */  lui       $at, %hi(D_80243F30_D2FC60)
/* D2D13C 8024140C D4203F30 */  ldc1      $f0, %lo(D_80243F30_D2FC60)($at)
/* D2D140 80241410 4622003C */  c.lt.d    $f0, $f2
/* D2D144 80241414 00000000 */  nop
/* D2D148 80241418 450000FA */  bc1f      .L80241804
/* D2D14C 8024141C 00000000 */   nop
/* D2D150 80241420 3C0643BB */  lui       $a2, 0x43bb
/* D2D154 80241424 34C68000 */  ori       $a2, $a2, 0x8000
.L80241428:
/* D2D158 80241428 4407B000 */  mfc1      $a3, $f22
/* D2D15C 8024142C 0260282D */  daddu     $a1, $s3, $zero
/* D2D160 80241430 E6340038 */  swc1      $f20, 0x38($s1)
/* D2D164 80241434 0C00A7E7 */  jal       add_vec2D_polar
/* D2D168 80241438 E6340040 */   swc1     $f20, 0x40($s1)
/* D2D16C 8024143C 08090601 */  j         .L80241804
/* D2D170 80241440 00000000 */   nop
.L80241444:
/* D2D174 80241444 8E220000 */  lw        $v0, ($s1)
/* D2D178 80241448 30420040 */  andi      $v0, $v0, 0x40
/* D2D17C 8024144C 144000B0 */  bnez      $v0, .L80241710
/* D2D180 80241450 27A50020 */   addiu    $a1, $sp, 0x20
/* D2D184 80241454 27B40020 */  addiu     $s4, $sp, 0x20
/* D2D188 80241458 0280282D */  daddu     $a1, $s4, $zero
/* D2D18C 8024145C 27B30024 */  addiu     $s3, $sp, 0x24
/* D2D190 80241460 8EA20000 */  lw        $v0, ($s5)
/* D2D194 80241464 3C014032 */  lui       $at, 0x4032
/* D2D198 80241468 44811800 */  mtc1      $at, $f3
/* D2D19C 8024146C 44801000 */  mtc1      $zero, $f2
/* D2D1A0 80241470 C440002C */  lwc1      $f0, 0x2c($v0)
/* D2D1A4 80241474 C4460028 */  lwc1      $f6, 0x28($v0)
/* D2D1A8 80241478 C4440030 */  lwc1      $f4, 0x30($v0)
/* D2D1AC 8024147C 46000021 */  cvt.d.s   $f0, $f0
/* D2D1B0 80241480 46220000 */  add.d     $f0, $f0, $f2
/* D2D1B4 80241484 E7A60020 */  swc1      $f6, 0x20($sp)
/* D2D1B8 80241488 E7A40028 */  swc1      $f4, 0x28($sp)
/* D2D1BC 8024148C 46200020 */  cvt.s.d   $f0, $f0
/* D2D1C0 80241490 E7A00024 */  swc1      $f0, 0x24($sp)
/* D2D1C4 80241494 E7B40010 */  swc1      $f20, 0x10($sp)
/* D2D1C8 80241498 E7B60014 */  swc1      $f22, 0x14($sp)
/* D2D1CC 8024149C 862200A8 */  lh        $v0, 0xa8($s1)
/* D2D1D0 802414A0 0260302D */  daddu     $a2, $s3, $zero
/* D2D1D4 802414A4 44820000 */  mtc1      $v0, $f0
/* D2D1D8 802414A8 00000000 */  nop
/* D2D1DC 802414AC 46800020 */  cvt.s.w   $f0, $f0
/* D2D1E0 802414B0 E7A00018 */  swc1      $f0, 0x18($sp)
/* D2D1E4 802414B4 862200A6 */  lh        $v0, 0xa6($s1)
/* D2D1E8 802414B8 27B00028 */  addiu     $s0, $sp, 0x28
/* D2D1EC 802414BC 44820000 */  mtc1      $v0, $f0
/* D2D1F0 802414C0 00000000 */  nop
/* D2D1F4 802414C4 46800020 */  cvt.s.w   $f0, $f0
/* D2D1F8 802414C8 E7A0001C */  swc1      $f0, 0x1c($sp)
/* D2D1FC 802414CC 8E240080 */  lw        $a0, 0x80($s1)
/* D2D200 802414D0 0C037711 */  jal       func_800DDC44
/* D2D204 802414D4 0200382D */   daddu    $a3, $s0, $zero
/* D2D208 802414D8 104000CA */  beqz      $v0, .L80241804
/* D2D20C 802414DC 0280282D */   daddu    $a1, $s4, $zero
/* D2D210 802414E0 8EA20000 */  lw        $v0, ($s5)
/* D2D214 802414E4 3C018024 */  lui       $at, %hi(D_80243F38_D2FC68)
/* D2D218 802414E8 D4223F38 */  ldc1      $f2, %lo(D_80243F38_D2FC68)($at)
/* D2D21C 802414EC C440002C */  lwc1      $f0, 0x2c($v0)
/* D2D220 802414F0 C4460028 */  lwc1      $f6, 0x28($v0)
/* D2D224 802414F4 C4440030 */  lwc1      $f4, 0x30($v0)
/* D2D228 802414F8 46000021 */  cvt.d.s   $f0, $f0
/* D2D22C 802414FC 46220000 */  add.d     $f0, $f0, $f2
/* D2D230 80241500 E7A60020 */  swc1      $f6, 0x20($sp)
/* D2D234 80241504 E7A40028 */  swc1      $f4, 0x28($sp)
/* D2D238 80241508 46200020 */  cvt.s.d   $f0, $f0
/* D2D23C 8024150C E7A00024 */  swc1      $f0, 0x24($sp)
/* D2D240 80241510 E7B40010 */  swc1      $f20, 0x10($sp)
/* D2D244 80241514 E7B60014 */  swc1      $f22, 0x14($sp)
/* D2D248 80241518 862200A8 */  lh        $v0, 0xa8($s1)
/* D2D24C 8024151C 44820000 */  mtc1      $v0, $f0
/* D2D250 80241520 00000000 */  nop
/* D2D254 80241524 46800020 */  cvt.s.w   $f0, $f0
/* D2D258 80241528 E7A00018 */  swc1      $f0, 0x18($sp)
/* D2D25C 8024152C 862200A6 */  lh        $v0, 0xa6($s1)
/* D2D260 80241530 0260302D */  daddu     $a2, $s3, $zero
/* D2D264 80241534 44820000 */  mtc1      $v0, $f0
/* D2D268 80241538 00000000 */  nop
/* D2D26C 8024153C 46800020 */  cvt.s.w   $f0, $f0
/* D2D270 80241540 E7A0001C */  swc1      $f0, 0x1c($sp)
/* D2D274 80241544 8E240080 */  lw        $a0, 0x80($s1)
/* D2D278 80241548 0C037711 */  jal       func_800DDC44
/* D2D27C 8024154C 0200382D */   daddu    $a3, $s0, $zero
/* D2D280 80241550 27A5002C */  addiu     $a1, $sp, 0x2c
/* D2D284 80241554 27A60030 */  addiu     $a2, $sp, 0x30
/* D2D288 80241558 27A70034 */  addiu     $a3, $sp, 0x34
/* D2D28C 8024155C 27A30038 */  addiu     $v1, $sp, 0x38
/* D2D290 80241560 C6220038 */  lwc1      $f2, 0x38($s1)
/* D2D294 80241564 C620003C */  lwc1      $f0, 0x3c($s1)
/* D2D298 80241568 3C014348 */  lui       $at, 0x4348
/* D2D29C 8024156C 44813000 */  mtc1      $at, $f6
/* D2D2A0 80241570 46000021 */  cvt.d.s   $f0, $f0
/* D2D2A4 80241574 E7A2002C */  swc1      $f2, 0x2c($sp)
/* D2D2A8 80241578 3C014059 */  lui       $at, 0x4059
/* D2D2AC 8024157C 44811800 */  mtc1      $at, $f3
/* D2D2B0 80241580 44801000 */  mtc1      $zero, $f2
/* D2D2B4 80241584 C6240040 */  lwc1      $f4, 0x40($s1)
/* D2D2B8 80241588 46220000 */  add.d     $f0, $f0, $f2
/* D2D2BC 8024158C E7A60038 */  swc1      $f6, 0x38($sp)
/* D2D2C0 80241590 E7A40034 */  swc1      $f4, 0x34($sp)
/* D2D2C4 80241594 46200020 */  cvt.s.d   $f0, $f0
/* D2D2C8 80241598 E7A00030 */  swc1      $f0, 0x30($sp)
/* D2D2CC 8024159C AFA30010 */  sw        $v1, 0x10($sp)
/* D2D2D0 802415A0 8E240080 */  lw        $a0, 0x80($s1)
/* D2D2D4 802415A4 0C0372DF */  jal       func_800DCB7C
/* D2D2D8 802415A8 0040802D */   daddu    $s0, $v0, $zero
/* D2D2DC 802415AC 1600001C */  bnez      $s0, .L80241620
/* D2D2E0 802415B0 00000000 */   nop
/* D2D2E4 802415B4 1040001A */  beqz      $v0, .L80241620
/* D2D2E8 802415B8 00000000 */   nop
/* D2D2EC 802415BC C7A20038 */  lwc1      $f2, 0x38($sp)
/* D2D2F0 802415C0 3C014054 */  lui       $at, 0x4054
/* D2D2F4 802415C4 44810800 */  mtc1      $at, $f1
/* D2D2F8 802415C8 44800000 */  mtc1      $zero, $f0
/* D2D2FC 802415CC 460010A1 */  cvt.d.s   $f2, $f2
/* D2D300 802415D0 4622003C */  c.lt.d    $f0, $f2
/* D2D304 802415D4 00000000 */  nop
/* D2D308 802415D8 45000011 */  bc1f      .L80241620
/* D2D30C 802415DC 00000000 */   nop
/* D2D310 802415E0 3C01405E */  lui       $at, 0x405e
/* D2D314 802415E4 44810800 */  mtc1      $at, $f1
/* D2D318 802415E8 44800000 */  mtc1      $zero, $f0
/* D2D31C 802415EC 00000000 */  nop
/* D2D320 802415F0 4620103C */  c.lt.d    $f2, $f0
/* D2D324 802415F4 00000000 */  nop
/* D2D328 802415F8 45000009 */  bc1f      .L80241620
/* D2D32C 802415FC 00000000 */   nop
/* D2D330 80241600 C622003C */  lwc1      $f2, 0x3c($s1)
/* D2D334 80241604 C7A00030 */  lwc1      $f0, 0x30($sp)
/* D2D338 80241608 46001032 */  c.eq.s    $f2, $f0
/* D2D33C 8024160C 00000000 */  nop
/* D2D340 80241610 45010003 */  bc1t      .L80241620
/* D2D344 80241614 00000000 */   nop
/* D2D348 80241618 08090601 */  j         .L80241804
/* D2D34C 8024161C 241E0001 */   addiu    $fp, $zero, 1
.L80241620:
/* D2D350 80241620 3C10800F */  lui       $s0, %hi(gPlayerStatusPtr)
/* D2D354 80241624 26107B30 */  addiu     $s0, $s0, %lo(gPlayerStatusPtr)
/* D2D358 80241628 8E020000 */  lw        $v0, ($s0)
/* D2D35C 8024162C 3C014024 */  lui       $at, 0x4024
/* D2D360 80241630 44811800 */  mtc1      $at, $f3
/* D2D364 80241634 44801000 */  mtc1      $zero, $f2
/* D2D368 80241638 C440002C */  lwc1      $f0, 0x2c($v0)
/* D2D36C 8024163C C4460028 */  lwc1      $f6, 0x28($v0)
/* D2D370 80241640 C4440030 */  lwc1      $f4, 0x30($v0)
/* D2D374 80241644 46000021 */  cvt.d.s   $f0, $f0
/* D2D378 80241648 46220000 */  add.d     $f0, $f0, $f2
/* D2D37C 8024164C E7A60020 */  swc1      $f6, 0x20($sp)
/* D2D380 80241650 E7A40028 */  swc1      $f4, 0x28($sp)
/* D2D384 80241654 46200020 */  cvt.s.d   $f0, $f0
/* D2D388 80241658 E7A00024 */  swc1      $f0, 0x24($sp)
/* D2D38C 8024165C E7B40010 */  swc1      $f20, 0x10($sp)
/* D2D390 80241660 E7B60014 */  swc1      $f22, 0x14($sp)
/* D2D394 80241664 862200A8 */  lh        $v0, 0xa8($s1)
/* D2D398 80241668 27A50020 */  addiu     $a1, $sp, 0x20
/* D2D39C 8024166C 44820000 */  mtc1      $v0, $f0
/* D2D3A0 80241670 00000000 */  nop
/* D2D3A4 80241674 46800020 */  cvt.s.w   $f0, $f0
/* D2D3A8 80241678 E7A00018 */  swc1      $f0, 0x18($sp)
/* D2D3AC 8024167C 862200A6 */  lh        $v0, 0xa6($s1)
/* D2D3B0 80241680 27A60024 */  addiu     $a2, $sp, 0x24
/* D2D3B4 80241684 44820000 */  mtc1      $v0, $f0
/* D2D3B8 80241688 00000000 */  nop
/* D2D3BC 8024168C 46800020 */  cvt.s.w   $f0, $f0
/* D2D3C0 80241690 E7A0001C */  swc1      $f0, 0x1c($sp)
/* D2D3C4 80241694 8E240080 */  lw        $a0, 0x80($s1)
/* D2D3C8 80241698 0C037711 */  jal       func_800DDC44
/* D2D3CC 8024169C 27A70028 */   addiu    $a3, $sp, 0x28
/* D2D3D0 802416A0 8FA60020 */  lw        $a2, 0x20($sp)
/* D2D3D4 802416A4 8E020000 */  lw        $v0, ($s0)
/* D2D3D8 802416A8 8FA70028 */  lw        $a3, 0x28($sp)
/* D2D3DC 802416AC C44C0028 */  lwc1      $f12, 0x28($v0)
/* D2D3E0 802416B0 C44E0030 */  lwc1      $f14, 0x30($v0)
/* D2D3E4 802416B4 0C00A7B5 */  jal       dist2D
/* D2D3E8 802416B8 24170001 */   addiu    $s7, $zero, 1
/* D2D3EC 802416BC 46000506 */  mov.s     $f20, $f0
/* D2D3F0 802416C0 8E030000 */  lw        $v1, ($s0)
/* D2D3F4 802416C4 862200A6 */  lh        $v0, 0xa6($s1)
/* D2D3F8 802416C8 4407C000 */  mfc1      $a3, $f24
/* D2D3FC 802416CC 44824000 */  mtc1      $v0, $f8
/* D2D400 802416D0 00000000 */  nop
/* D2D404 802416D4 46804220 */  cvt.s.w   $f8, $f8
/* D2D408 802416D8 C4600028 */  lwc1      $f0, 0x28($v1)
/* D2D40C 802416DC 44064000 */  mfc1      $a2, $f8
/* D2D410 802416E0 26240038 */  addiu     $a0, $s1, 0x38
/* D2D414 802416E4 E6200038 */  swc1      $f0, 0x38($s1)
/* D2D418 802416E8 C4600030 */  lwc1      $f0, 0x30($v1)
/* D2D41C 802416EC 26250040 */  addiu     $a1, $s1, 0x40
/* D2D420 802416F0 0C00A7E7 */  jal       add_vec2D_polar
/* D2D424 802416F4 E6200040 */   swc1     $f0, 0x40($s1)
/* D2D428 802416F8 862200A6 */  lh        $v0, 0xa6($s1)
/* D2D42C 802416FC 44820000 */  mtc1      $v0, $f0
/* D2D430 80241700 00000000 */  nop
/* D2D434 80241704 46800020 */  cvt.s.w   $f0, $f0
/* D2D438 80241708 080905FD */  j         .L802417F4
/* D2D43C 8024170C 4600A500 */   add.s    $f20, $f20, $f0
.L80241710:
/* D2D440 80241710 8EA20000 */  lw        $v0, ($s5)
/* D2D444 80241714 3C014032 */  lui       $at, 0x4032
/* D2D448 80241718 44811800 */  mtc1      $at, $f3
/* D2D44C 8024171C 44801000 */  mtc1      $zero, $f2
/* D2D450 80241720 C440002C */  lwc1      $f0, 0x2c($v0)
/* D2D454 80241724 C4460028 */  lwc1      $f6, 0x28($v0)
/* D2D458 80241728 C4440030 */  lwc1      $f4, 0x30($v0)
/* D2D45C 8024172C 46000021 */  cvt.d.s   $f0, $f0
/* D2D460 80241730 46220000 */  add.d     $f0, $f0, $f2
/* D2D464 80241734 E7A60020 */  swc1      $f6, 0x20($sp)
/* D2D468 80241738 E7A40028 */  swc1      $f4, 0x28($sp)
/* D2D46C 8024173C 46200020 */  cvt.s.d   $f0, $f0
/* D2D470 80241740 E7A00024 */  swc1      $f0, 0x24($sp)
/* D2D474 80241744 E7B40010 */  swc1      $f20, 0x10($sp)
/* D2D478 80241748 E7B60014 */  swc1      $f22, 0x14($sp)
/* D2D47C 8024174C 862200A8 */  lh        $v0, 0xa8($s1)
/* D2D480 80241750 44820000 */  mtc1      $v0, $f0
/* D2D484 80241754 00000000 */  nop
/* D2D488 80241758 46800020 */  cvt.s.w   $f0, $f0
/* D2D48C 8024175C E7A00018 */  swc1      $f0, 0x18($sp)
/* D2D490 80241760 862200A6 */  lh        $v0, 0xa6($s1)
/* D2D494 80241764 27A60024 */  addiu     $a2, $sp, 0x24
/* D2D498 80241768 44820000 */  mtc1      $v0, $f0
/* D2D49C 8024176C 00000000 */  nop
/* D2D4A0 80241770 46800020 */  cvt.s.w   $f0, $f0
/* D2D4A4 80241774 E7A0001C */  swc1      $f0, 0x1c($sp)
/* D2D4A8 80241778 8E240080 */  lw        $a0, 0x80($s1)
/* D2D4AC 8024177C 0C037711 */  jal       func_800DDC44
/* D2D4B0 80241780 27A70028 */   addiu    $a3, $sp, 0x28
/* D2D4B4 80241784 1040001F */  beqz      $v0, .L80241804
/* D2D4B8 80241788 00000000 */   nop
/* D2D4BC 8024178C 8FA60020 */  lw        $a2, 0x20($sp)
/* D2D4C0 80241790 8EA20000 */  lw        $v0, ($s5)
/* D2D4C4 80241794 8FA70028 */  lw        $a3, 0x28($sp)
/* D2D4C8 80241798 C44C0028 */  lwc1      $f12, 0x28($v0)
/* D2D4CC 8024179C 0C00A7B5 */  jal       dist2D
/* D2D4D0 802417A0 C44E0030 */   lwc1     $f14, 0x30($v0)
/* D2D4D4 802417A4 46000506 */  mov.s     $f20, $f0
/* D2D4D8 802417A8 8EA30000 */  lw        $v1, ($s5)
/* D2D4DC 802417AC 862200A6 */  lh        $v0, 0xa6($s1)
/* D2D4E0 802417B0 4407C000 */  mfc1      $a3, $f24
/* D2D4E4 802417B4 44824000 */  mtc1      $v0, $f8
/* D2D4E8 802417B8 00000000 */  nop
/* D2D4EC 802417BC 46804220 */  cvt.s.w   $f8, $f8
/* D2D4F0 802417C0 C4600028 */  lwc1      $f0, 0x28($v1)
/* D2D4F4 802417C4 44064000 */  mfc1      $a2, $f8
/* D2D4F8 802417C8 0200202D */  daddu     $a0, $s0, $zero
/* D2D4FC 802417CC E6200038 */  swc1      $f0, 0x38($s1)
/* D2D500 802417D0 C4600030 */  lwc1      $f0, 0x30($v1)
/* D2D504 802417D4 0260282D */  daddu     $a1, $s3, $zero
/* D2D508 802417D8 0C00A7E7 */  jal       add_vec2D_polar
/* D2D50C 802417DC E6200040 */   swc1     $f0, 0x40($s1)
/* D2D510 802417E0 862200A6 */  lh        $v0, 0xa6($s1)
/* D2D514 802417E4 44820000 */  mtc1      $v0, $f0
/* D2D518 802417E8 00000000 */  nop
/* D2D51C 802417EC 46800020 */  cvt.s.w   $f0, $f0
/* D2D520 802417F0 4600A500 */  add.s     $f20, $f20, $f0
.L802417F4:
/* D2D524 802417F4 4406B000 */  mfc1      $a2, $f22
/* D2D528 802417F8 4405A000 */  mfc1      $a1, $f20
/* D2D52C 802417FC 0C00EA95 */  jal       npc_move_heading
/* D2D530 80241800 0220202D */   daddu    $a0, $s1, $zero
.L80241804:
/* D2D534 80241804 C6400008 */  lwc1      $f0, 8($s2)
/* D2D538 80241808 46800020 */  cvt.s.w   $f0, $f0
/* D2D53C 8024180C 44050000 */  mfc1      $a1, $f0
/* D2D540 80241810 C640000C */  lwc1      $f0, 0xc($s2)
/* D2D544 80241814 46800020 */  cvt.s.w   $f0, $f0
/* D2D548 80241818 44060000 */  mfc1      $a2, $f0
/* D2D54C 8024181C C6200040 */  lwc1      $f0, 0x40($s1)
/* D2D550 80241820 26300038 */  addiu     $s0, $s1, 0x38
/* D2D554 80241824 E7A00010 */  swc1      $f0, 0x10($sp)
/* D2D558 80241828 C6400010 */  lwc1      $f0, 0x10($s2)
/* D2D55C 8024182C 46800020 */  cvt.s.w   $f0, $f0
/* D2D560 80241830 E7A00014 */  swc1      $f0, 0x14($sp)
/* D2D564 80241834 C6400014 */  lwc1      $f0, 0x14($s2)
/* D2D568 80241838 46800020 */  cvt.s.w   $f0, $f0
/* D2D56C 8024183C E7A00018 */  swc1      $f0, 0x18($sp)
/* D2D570 80241840 8E440004 */  lw        $a0, 4($s2)
/* D2D574 80241844 8E270038 */  lw        $a3, 0x38($s1)
/* D2D578 80241848 0C0123F5 */  jal       is_point_within_region
/* D2D57C 8024184C 26330040 */   addiu    $s3, $s1, 0x40
/* D2D580 80241850 1040005A */  beqz      $v0, .L802419BC
/* D2D584 80241854 00000000 */   nop
/* D2D588 80241858 8E430004 */  lw        $v1, 4($s2)
/* D2D58C 8024185C 10600005 */  beqz      $v1, .L80241874
/* D2D590 80241860 24020001 */   addiu    $v0, $zero, 1
/* D2D594 80241864 10620029 */  beq       $v1, $v0, .L8024190C
/* D2D598 80241868 00000000 */   nop
/* D2D59C 8024186C 0809066F */  j         .L802419BC
/* D2D5A0 80241870 00000000 */   nop
.L80241874:
/* D2D5A4 80241874 C6480008 */  lwc1      $f8, 8($s2)
/* D2D5A8 80241878 46804220 */  cvt.s.w   $f8, $f8
/* D2D5AC 8024187C 44064000 */  mfc1      $a2, $f8
/* D2D5B0 80241880 C648000C */  lwc1      $f8, 0xc($s2)
/* D2D5B4 80241884 46804220 */  cvt.s.w   $f8, $f8
/* D2D5B8 80241888 C62C0038 */  lwc1      $f12, 0x38($s1)
/* D2D5BC 8024188C C62E0040 */  lwc1      $f14, 0x40($s1)
/* D2D5C0 80241890 44074000 */  mfc1      $a3, $f8
/* D2D5C4 80241894 0C00A7B5 */  jal       dist2D
/* D2D5C8 80241898 00000000 */   nop
/* D2D5CC 8024189C C6420010 */  lwc1      $f2, 0x10($s2)
/* D2D5D0 802418A0 468010A0 */  cvt.s.w   $f2, $f2
/* D2D5D4 802418A4 4600103C */  c.lt.s    $f2, $f0
/* D2D5D8 802418A8 00000000 */  nop
/* D2D5DC 802418AC 45000043 */  bc1f      .L802419BC
/* D2D5E0 802418B0 E7A00038 */   swc1     $f0, 0x38($sp)
/* D2D5E4 802418B4 C64C0008 */  lwc1      $f12, 8($s2)
/* D2D5E8 802418B8 46806320 */  cvt.s.w   $f12, $f12
/* D2D5EC 802418BC 8E260038 */  lw        $a2, 0x38($s1)
/* D2D5F0 802418C0 8E270040 */  lw        $a3, 0x40($s1)
/* D2D5F4 802418C4 C64E000C */  lwc1      $f14, 0xc($s2)
/* D2D5F8 802418C8 0C00A720 */  jal       atan2
/* D2D5FC 802418CC 468073A0 */   cvt.s.w  $f14, $f14
/* D2D600 802418D0 0200202D */  daddu     $a0, $s0, $zero
/* D2D604 802418D4 44070000 */  mfc1      $a3, $f0
/* D2D608 802418D8 C6400008 */  lwc1      $f0, 8($s2)
/* D2D60C 802418DC 46800020 */  cvt.s.w   $f0, $f0
/* D2D610 802418E0 E6200038 */  swc1      $f0, 0x38($s1)
/* D2D614 802418E4 C640000C */  lwc1      $f0, 0xc($s2)
/* D2D618 802418E8 46800020 */  cvt.s.w   $f0, $f0
/* D2D61C 802418EC E6200040 */  swc1      $f0, 0x40($s1)
/* D2D620 802418F0 C6480010 */  lwc1      $f8, 0x10($s2)
/* D2D624 802418F4 46804220 */  cvt.s.w   $f8, $f8
/* D2D628 802418F8 44064000 */  mfc1      $a2, $f8
/* D2D62C 802418FC 0C00A7E7 */  jal       add_vec2D_polar
/* D2D630 80241900 0260282D */   daddu    $a1, $s3, $zero
/* D2D634 80241904 0809066F */  j         .L802419BC
/* D2D638 80241908 00000000 */   nop
.L8024190C:
/* D2D63C 8024190C 8E420008 */  lw        $v0, 8($s2)
/* D2D640 80241910 8E430010 */  lw        $v1, 0x10($s2)
/* D2D644 80241914 C6200038 */  lwc1      $f0, 0x38($s1)
/* D2D648 80241918 00431021 */  addu      $v0, $v0, $v1
/* D2D64C 8024191C 44821000 */  mtc1      $v0, $f2
/* D2D650 80241920 00000000 */  nop
/* D2D654 80241924 468010A0 */  cvt.s.w   $f2, $f2
/* D2D658 80241928 4600103C */  c.lt.s    $f2, $f0
/* D2D65C 8024192C 00000000 */  nop
/* D2D660 80241930 45030001 */  bc1tl     .L80241938
/* D2D664 80241934 E6220038 */   swc1     $f2, 0x38($s1)
.L80241938:
/* D2D668 80241938 8E420008 */  lw        $v0, 8($s2)
/* D2D66C 8024193C 8E430010 */  lw        $v1, 0x10($s2)
/* D2D670 80241940 C6200038 */  lwc1      $f0, 0x38($s1)
/* D2D674 80241944 00431023 */  subu      $v0, $v0, $v1
/* D2D678 80241948 44821000 */  mtc1      $v0, $f2
/* D2D67C 8024194C 00000000 */  nop
/* D2D680 80241950 468010A0 */  cvt.s.w   $f2, $f2
/* D2D684 80241954 4602003C */  c.lt.s    $f0, $f2
/* D2D688 80241958 00000000 */  nop
/* D2D68C 8024195C 45030001 */  bc1tl     .L80241964
/* D2D690 80241960 E6220038 */   swc1     $f2, 0x38($s1)
.L80241964:
/* D2D694 80241964 8E42000C */  lw        $v0, 0xc($s2)
/* D2D698 80241968 8E430014 */  lw        $v1, 0x14($s2)
/* D2D69C 8024196C C6200040 */  lwc1      $f0, 0x40($s1)
/* D2D6A0 80241970 00431021 */  addu      $v0, $v0, $v1
/* D2D6A4 80241974 44821000 */  mtc1      $v0, $f2
/* D2D6A8 80241978 00000000 */  nop
/* D2D6AC 8024197C 468010A0 */  cvt.s.w   $f2, $f2
/* D2D6B0 80241980 4600103C */  c.lt.s    $f2, $f0
/* D2D6B4 80241984 00000000 */  nop
/* D2D6B8 80241988 45030001 */  bc1tl     .L80241990
/* D2D6BC 8024198C E6220040 */   swc1     $f2, 0x40($s1)
.L80241990:
/* D2D6C0 80241990 8E42000C */  lw        $v0, 0xc($s2)
/* D2D6C4 80241994 8E430014 */  lw        $v1, 0x14($s2)
/* D2D6C8 80241998 C6200040 */  lwc1      $f0, 0x40($s1)
/* D2D6CC 8024199C 00431023 */  subu      $v0, $v0, $v1
/* D2D6D0 802419A0 44821000 */  mtc1      $v0, $f2
/* D2D6D4 802419A4 00000000 */  nop
/* D2D6D8 802419A8 468010A0 */  cvt.s.w   $f2, $f2
/* D2D6DC 802419AC 4602003C */  c.lt.s    $f0, $f2
/* D2D6E0 802419B0 00000000 */  nop
/* D2D6E4 802419B4 45030001 */  bc1tl     .L802419BC
/* D2D6E8 802419B8 E6220040 */   swc1     $f2, 0x40($s1)
.L802419BC:
/* D2D6EC 802419BC 16E0001F */  bnez      $s7, .L80241A3C
/* D2D6F0 802419C0 00000000 */   nop
/* D2D6F4 802419C4 8E220000 */  lw        $v0, ($s1)
/* D2D6F8 802419C8 30420008 */  andi      $v0, $v0, 8
/* D2D6FC 802419CC 10400003 */  beqz      $v0, .L802419DC
/* D2D700 802419D0 27A50020 */   addiu    $a1, $sp, 0x20
/* D2D704 802419D4 13C00019 */  beqz      $fp, .L80241A3C
/* D2D708 802419D8 00000000 */   nop
.L802419DC:
/* D2D70C 802419DC 27A60024 */  addiu     $a2, $sp, 0x24
/* D2D710 802419E0 27A20038 */  addiu     $v0, $sp, 0x38
/* D2D714 802419E4 C6220038 */  lwc1      $f2, 0x38($s1)
/* D2D718 802419E8 C620003C */  lwc1      $f0, 0x3c($s1)
/* D2D71C 802419EC 3C0143C8 */  lui       $at, 0x43c8
/* D2D720 802419F0 44813000 */  mtc1      $at, $f6
/* D2D724 802419F4 46000021 */  cvt.d.s   $f0, $f0
/* D2D728 802419F8 E7A20020 */  swc1      $f2, 0x20($sp)
/* D2D72C 802419FC 3C018024 */  lui       $at, %hi(D_80243F40_D2FC70)
/* D2D730 80241A00 D4223F40 */  ldc1      $f2, %lo(D_80243F40_D2FC70)($at)
/* D2D734 80241A04 C6240040 */  lwc1      $f4, 0x40($s1)
/* D2D738 80241A08 46220000 */  add.d     $f0, $f0, $f2
/* D2D73C 80241A0C E7A60038 */  swc1      $f6, 0x38($sp)
/* D2D740 80241A10 E7A40028 */  swc1      $f4, 0x28($sp)
/* D2D744 80241A14 46200020 */  cvt.s.d   $f0, $f0
/* D2D748 80241A18 E7A00024 */  swc1      $f0, 0x24($sp)
/* D2D74C 80241A1C AFA20010 */  sw        $v0, 0x10($sp)
/* D2D750 80241A20 8E240080 */  lw        $a0, 0x80($s1)
/* D2D754 80241A24 0C0372DF */  jal       func_800DCB7C
/* D2D758 80241A28 27A70028 */   addiu    $a3, $sp, 0x28
/* D2D75C 80241A2C 10400003 */  beqz      $v0, .L80241A3C
/* D2D760 80241A30 00000000 */   nop
/* D2D764 80241A34 C7A00024 */  lwc1      $f0, 0x24($sp)
/* D2D768 80241A38 E620003C */  swc1      $f0, 0x3c($s1)
.L80241A3C:
/* D2D76C 80241A3C C62C0038 */  lwc1      $f12, 0x38($s1)
/* D2D770 80241A40 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* D2D774 80241A44 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* D2D778 80241A48 C62E0040 */  lwc1      $f14, 0x40($s1)
/* D2D77C 80241A4C 8C460028 */  lw        $a2, 0x28($v0)
/* D2D780 80241A50 0C00A720 */  jal       atan2
/* D2D784 80241A54 8C470030 */   lw       $a3, 0x30($v0)
/* D2D788 80241A58 0220202D */  daddu     $a0, $s1, $zero
/* D2D78C 80241A5C 24050321 */  addiu     $a1, $zero, 0x321
/* D2D790 80241A60 0000302D */  daddu     $a2, $zero, $zero
/* D2D794 80241A64 0C012530 */  jal       func_800494C0
/* D2D798 80241A68 E620000C */   swc1     $f0, 0xc($s1)
/* D2D79C 80241A6C 8EC200CC */  lw        $v0, 0xcc($s6)
/* D2D7A0 80241A70 8C420024 */  lw        $v0, 0x24($v0)
/* D2D7A4 80241A74 AE220028 */  sw        $v0, 0x28($s1)
/* D2D7A8 80241A78 96C20096 */  lhu       $v0, 0x96($s6)
/* D2D7AC 80241A7C A622008E */  sh        $v0, 0x8e($s1)
/* D2D7B0 80241A80 8FA80080 */  lw        $t0, 0x80($sp)
/* D2D7B4 80241A84 2402000B */  addiu     $v0, $zero, 0xb
/* D2D7B8 80241A88 AD020070 */  sw        $v0, 0x70($t0)
.L80241A8C:
/* D2D7BC 80241A8C 8FBF0064 */  lw        $ra, 0x64($sp)
/* D2D7C0 80241A90 8FBE0060 */  lw        $fp, 0x60($sp)
/* D2D7C4 80241A94 8FB7005C */  lw        $s7, 0x5c($sp)
/* D2D7C8 80241A98 8FB60058 */  lw        $s6, 0x58($sp)
/* D2D7CC 80241A9C 8FB50054 */  lw        $s5, 0x54($sp)
/* D2D7D0 80241AA0 8FB40050 */  lw        $s4, 0x50($sp)
/* D2D7D4 80241AA4 8FB3004C */  lw        $s3, 0x4c($sp)
/* D2D7D8 80241AA8 8FB20048 */  lw        $s2, 0x48($sp)
/* D2D7DC 80241AAC 8FB10044 */  lw        $s1, 0x44($sp)
/* D2D7E0 80241AB0 8FB00040 */  lw        $s0, 0x40($sp)
/* D2D7E4 80241AB4 D7B80078 */  ldc1      $f24, 0x78($sp)
/* D2D7E8 80241AB8 D7B60070 */  ldc1      $f22, 0x70($sp)
/* D2D7EC 80241ABC D7B40068 */  ldc1      $f20, 0x68($sp)
/* D2D7F0 80241AC0 03E00008 */  jr        $ra
/* D2D7F4 80241AC4 27BD0080 */   addiu    $sp, $sp, 0x80
