.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241F4C_C820EC
/* C820EC 80241F4C 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* C820F0 80241F50 AFB40028 */  sw        $s4, 0x28($sp)
/* C820F4 80241F54 0080A02D */  daddu     $s4, $a0, $zero
/* C820F8 80241F58 AFBF0038 */  sw        $ra, 0x38($sp)
/* C820FC 80241F5C AFB70034 */  sw        $s7, 0x34($sp)
/* C82100 80241F60 AFB60030 */  sw        $s6, 0x30($sp)
/* C82104 80241F64 AFB5002C */  sw        $s5, 0x2c($sp)
/* C82108 80241F68 AFB30024 */  sw        $s3, 0x24($sp)
/* C8210C 80241F6C AFB20020 */  sw        $s2, 0x20($sp)
/* C82110 80241F70 AFB1001C */  sw        $s1, 0x1c($sp)
/* C82114 80241F74 AFB00018 */  sw        $s0, 0x18($sp)
/* C82118 80241F78 F7B80050 */  sdc1      $f24, 0x50($sp)
/* C8211C 80241F7C F7B60048 */  sdc1      $f22, 0x48($sp)
/* C82120 80241F80 F7B40040 */  sdc1      $f20, 0x40($sp)
/* C82124 80241F84 8E82000C */  lw        $v0, 0xc($s4)
/* C82128 80241F88 00A0802D */  daddu     $s0, $a1, $zero
/* C8212C 80241F8C 8C450000 */  lw        $a1, ($v0)
/* C82130 80241F90 0C0B1EAF */  jal       get_variable
/* C82134 80241F94 0000A82D */   daddu    $s5, $zero, $zero
/* C82138 80241F98 8E830148 */  lw        $v1, 0x148($s4)
/* C8213C 80241F9C 84640008 */  lh        $a0, 8($v1)
/* C82140 80241FA0 0C00EABB */  jal       get_npc_unsafe
/* C82144 80241FA4 0040902D */   daddu    $s2, $v0, $zero
/* C82148 80241FA8 0040882D */  daddu     $s1, $v0, $zero
/* C8214C 80241FAC 0C00EABB */  jal       get_npc_unsafe
/* C82150 80241FB0 2404FFFC */   addiu    $a0, $zero, -4
/* C82154 80241FB4 3C138011 */  lui       $s3, %hi(gPlayerStatus)
/* C82158 80241FB8 2673EFC8 */  addiu     $s3, $s3, %lo(gPlayerStatus)
/* C8215C 80241FBC 3C168011 */  lui       $s6, %hi(D_8010EBB0_B4ED50)
/* C82160 80241FC0 26D6EBB0 */  addiu     $s6, $s6, %lo(D_8010EBB0_B4ED50)
/* C82164 80241FC4 1200001C */  beqz      $s0, .L80242038
/* C82168 80241FC8 0040B82D */   daddu    $s7, $v0, $zero
/* C8216C 80241FCC 0C00AB39 */  jal       heap_malloc
/* C82170 80241FD0 24040030 */   addiu    $a0, $zero, 0x30
/* C82174 80241FD4 0040802D */  daddu     $s0, $v0, $zero
/* C82178 80241FD8 AE900074 */  sw        $s0, 0x74($s4)
/* C8217C 80241FDC AE000000 */  sw        $zero, ($s0)
/* C82180 80241FE0 C6400000 */  lwc1      $f0, ($s2)
/* C82184 80241FE4 46800020 */  cvt.s.w   $f0, $f0
/* C82188 80241FE8 E6000004 */  swc1      $f0, 4($s0)
/* C8218C 80241FEC C6400004 */  lwc1      $f0, 4($s2)
/* C82190 80241FF0 46800020 */  cvt.s.w   $f0, $f0
/* C82194 80241FF4 E6000008 */  swc1      $f0, 8($s0)
/* C82198 80241FF8 C6400008 */  lwc1      $f0, 8($s2)
/* C8219C 80241FFC 46800020 */  cvt.s.w   $f0, $f0
/* C821A0 80242000 E600000C */  swc1      $f0, 0xc($s0)
/* C821A4 80242004 C640000C */  lwc1      $f0, 0xc($s2)
/* C821A8 80242008 46800020 */  cvt.s.w   $f0, $f0
/* C821AC 8024200C E6000010 */  swc1      $f0, 0x10($s0)
/* C821B0 80242010 8E420010 */  lw        $v0, 0x10($s2)
/* C821B4 80242014 AE020014 */  sw        $v0, 0x14($s0)
/* C821B8 80242018 8E420014 */  lw        $v0, 0x14($s2)
/* C821BC 8024201C AE020018 */  sw        $v0, 0x18($s0)
/* C821C0 80242020 8E420018 */  lw        $v0, 0x18($s2)
/* C821C4 80242024 AE000020 */  sw        $zero, 0x20($s0)
/* C821C8 80242028 AE000024 */  sw        $zero, 0x24($s0)
/* C821CC 8024202C AE000028 */  sw        $zero, 0x28($s0)
/* C821D0 80242030 AE12002C */  sw        $s2, 0x2c($s0)
/* C821D4 80242034 AE02001C */  sw        $v0, 0x1c($s0)
.L80242038:
/* C821D8 80242038 0C009C64 */  jal       func_80027190
/* C821DC 8024203C 00000000 */   nop
/* C821E0 80242040 14400131 */  bnez      $v0, .L80242508
/* C821E4 80242044 0000102D */   daddu    $v0, $zero, $zero
/* C821E8 80242048 8E900074 */  lw        $s0, 0x74($s4)
/* C821EC 8024204C 8E020018 */  lw        $v0, 0x18($s0)
/* C821F0 80242050 02A2102A */  slt       $v0, $s5, $v0
/* C821F4 80242054 10400082 */  beqz      $v0, .L80242260
/* C821F8 80242058 0000902D */   daddu    $s2, $zero, $zero
/* C821FC 8024205C 3C013F00 */  lui       $at, 0x3f00
/* C82200 80242060 4481C000 */  mtc1      $at, $f24
.L80242064:
/* C82204 80242064 8E040014 */  lw        $a0, 0x14($s0)
/* C82208 80242068 0C00EABB */  jal       get_npc_unsafe
/* C8220C 8024206C 00922021 */   addu     $a0, $a0, $s2
/* C82210 80242070 8E030000 */  lw        $v1, ($s0)
/* C82214 80242074 30630001 */  andi      $v1, $v1, 1
/* C82218 80242078 14600020 */  bnez      $v1, .L802420FC
/* C8221C 8024207C 0040882D */   daddu    $s1, $v0, $zero
/* C82220 80242080 862200A6 */  lh        $v0, 0xa6($s1)
/* C82224 80242084 02420018 */  mult      $s2, $v0
/* C82228 80242088 00004012 */  mflo      $t0
/* C8222C 8024208C C6200054 */  lwc1      $f0, 0x54($s1)
/* C82230 80242090 4488A000 */  mtc1      $t0, $f20
/* C82234 80242094 00000000 */  nop
/* C82238 80242098 4680A520 */  cvt.s.w   $f20, $f20
/* C8223C 8024209C 4600A502 */  mul.s     $f20, $f20, $f0
/* C82240 802420A0 00000000 */  nop
/* C82244 802420A4 0C00A8BB */  jal       sin_deg
/* C82248 802420A8 C60C0028 */   lwc1     $f12, 0x28($s0)
/* C8224C 802420AC C60C0028 */  lwc1      $f12, 0x28($s0)
/* C82250 802420B0 4600A582 */  mul.s     $f22, $f20, $f0
/* C82254 802420B4 0C00A8D4 */  jal       cos_deg
/* C82258 802420B8 00000000 */   nop
/* C8225C 802420BC C6020004 */  lwc1      $f2, 4($s0)
/* C82260 802420C0 46161080 */  add.s     $f2, $f2, $f22
/* C82264 802420C4 4600A507 */  neg.s     $f20, $f20
/* C82268 802420C8 4600A502 */  mul.s     $f20, $f20, $f0
/* C8226C 802420CC 00000000 */  nop
/* C82270 802420D0 E6220038 */  swc1      $f2, 0x38($s1)
/* C82274 802420D4 C6000008 */  lwc1      $f0, 8($s0)
/* C82278 802420D8 E620003C */  swc1      $f0, 0x3c($s1)
/* C8227C 802420DC C60E000C */  lwc1      $f14, 0xc($s0)
/* C82280 802420E0 46147380 */  add.s     $f14, $f14, $f20
/* C82284 802420E4 E62E0040 */  swc1      $f14, 0x40($s1)
/* C82288 802420E8 8E660028 */  lw        $a2, 0x28($s3)
/* C8228C 802420EC 8E670030 */  lw        $a3, 0x30($s3)
/* C82290 802420F0 0C00A720 */  jal       atan2
/* C82294 802420F4 46001306 */   mov.s    $f12, $f2
/* C82298 802420F8 E620000C */  swc1      $f0, 0xc($s1)
.L802420FC:
/* C8229C 802420FC 8E020000 */  lw        $v0, ($s0)
/* C822A0 80242100 30420002 */  andi      $v0, $v0, 2
/* C822A4 80242104 14400051 */  bnez      $v0, .L8024224C
/* C822A8 80242108 00000000 */   nop
/* C822AC 8024210C 8E620000 */  lw        $v0, ($s3)
/* C822B0 80242110 30428000 */  andi      $v0, $v0, 0x8000
/* C822B4 80242114 1440004D */  bnez      $v0, .L8024224C
/* C822B8 80242118 24020001 */   addiu    $v0, $zero, 1
/* C822BC 8024211C C664002C */  lwc1      $f4, 0x2c($s3)
/* C822C0 80242120 C622003C */  lwc1      $f2, 0x3c($s1)
/* C822C4 80242124 82C30000 */  lb        $v1, ($s6)
/* C822C8 80242128 1462000F */  bne       $v1, $v0, .L80242168
/* C822CC 8024212C 46022181 */   sub.s    $f6, $f4, $f2
/* C822D0 80242130 82C30003 */  lb        $v1, 3($s6)
/* C822D4 80242134 24020008 */  addiu     $v0, $zero, 8
/* C822D8 80242138 14620004 */  bne       $v1, $v0, .L8024214C
/* C822DC 8024213C 24020004 */   addiu    $v0, $zero, 4
/* C822E0 80242140 C6E0003C */  lwc1      $f0, 0x3c($s7)
/* C822E4 80242144 0809085A */  j         .L80242168
/* C822E8 80242148 46020181 */   sub.s    $f6, $f0, $f2
.L8024214C:
/* C822EC 8024214C 14620006 */  bne       $v1, $v0, .L80242168
/* C822F0 80242150 00000000 */   nop
/* C822F4 80242154 3C014120 */  lui       $at, 0x4120
/* C822F8 80242158 44810000 */  mtc1      $at, $f0
/* C822FC 8024215C 00000000 */  nop
/* C82300 80242160 46002001 */  sub.s     $f0, $f4, $f0
/* C82304 80242164 46020181 */  sub.s     $f6, $f0, $f2
.L80242168:
/* C82308 80242168 862200A8 */  lh        $v0, 0xa8($s1)
/* C8230C 8024216C 3C013F4C */  lui       $at, 0x3f4c
/* C82310 80242170 3421CCCD */  ori       $at, $at, 0xcccd
/* C82314 80242174 44810000 */  mtc1      $at, $f0
/* C82318 80242178 44822000 */  mtc1      $v0, $f4
/* C8231C 8024217C 00000000 */  nop
/* C82320 80242180 46802120 */  cvt.s.w   $f4, $f4
/* C82324 80242184 46002102 */  mul.s     $f4, $f4, $f0
/* C82328 80242188 00000000 */  nop
/* C8232C 8024218C C6620028 */  lwc1      $f2, 0x28($s3)
/* C82330 80242190 C6200038 */  lwc1      $f0, 0x38($s1)
/* C82334 80242194 46001581 */  sub.s     $f22, $f2, $f0
/* C82338 80242198 C6620030 */  lwc1      $f2, 0x30($s3)
/* C8233C 8024219C C6200040 */  lwc1      $f0, 0x40($s1)
/* C82340 802421A0 46001501 */  sub.s     $f20, $f2, $f0
/* C82344 802421A4 46003005 */  abs.s     $f0, $f6
/* C82348 802421A8 4604003C */  c.lt.s    $f0, $f4
/* C8234C 802421AC 00000000 */  nop
/* C82350 802421B0 45000026 */  bc1f      .L8024224C
/* C82354 802421B4 00000000 */   nop
/* C82358 802421B8 4616B082 */  mul.s     $f2, $f22, $f22
/* C8235C 802421BC 00000000 */  nop
/* C82360 802421C0 4614A002 */  mul.s     $f0, $f20, $f20
/* C82364 802421C4 00000000 */  nop
/* C82368 802421C8 46001300 */  add.s     $f12, $f2, $f0
/* C8236C 802421CC 46006104 */  sqrt.s    $f4, $f12
/* C82370 802421D0 46042032 */  c.eq.s    $f4, $f4
/* C82374 802421D4 00000000 */  nop
/* C82378 802421D8 45010004 */  bc1t      .L802421EC
/* C8237C 802421DC 00000000 */   nop
/* C82380 802421E0 0C0187BC */  jal       sqrtf
/* C82384 802421E4 00000000 */   nop
/* C82388 802421E8 46000106 */  mov.s     $f4, $f0
.L802421EC:
/* C8238C 802421EC 862200A6 */  lh        $v0, 0xa6($s1)
/* C82390 802421F0 44821000 */  mtc1      $v0, $f2
/* C82394 802421F4 00000000 */  nop
/* C82398 802421F8 468010A0 */  cvt.s.w   $f2, $f2
/* C8239C 802421FC 46181082 */  mul.s     $f2, $f2, $f24
/* C823A0 80242200 00000000 */  nop
/* C823A4 80242204 C6200054 */  lwc1      $f0, 0x54($s1)
/* C823A8 80242208 46001082 */  mul.s     $f2, $f2, $f0
/* C823AC 8024220C 00000000 */  nop
/* C823B0 80242210 866200B2 */  lh        $v0, 0xb2($s3)
/* C823B4 80242214 44820000 */  mtc1      $v0, $f0
/* C823B8 80242218 00000000 */  nop
/* C823BC 8024221C 46800020 */  cvt.s.w   $f0, $f0
/* C823C0 80242220 46180002 */  mul.s     $f0, $f0, $f24
/* C823C4 80242224 00000000 */  nop
/* C823C8 80242228 46181082 */  mul.s     $f2, $f2, $f24
/* C823CC 8024222C 00000000 */  nop
/* C823D0 80242230 46180002 */  mul.s     $f0, $f0, $f24
/* C823D4 80242234 00000000 */  nop
/* C823D8 80242238 46001080 */  add.s     $f2, $f2, $f0
/* C823DC 8024223C 4602203E */  c.le.s    $f4, $f2
/* C823E0 80242240 00000000 */  nop
/* C823E4 80242244 45030001 */  bc1tl     .L8024224C
/* C823E8 80242248 24150001 */   addiu    $s5, $zero, 1
.L8024224C:
/* C823EC 8024224C 8E020018 */  lw        $v0, 0x18($s0)
/* C823F0 80242250 26520001 */  addiu     $s2, $s2, 1
/* C823F4 80242254 0242102A */  slt       $v0, $s2, $v0
/* C823F8 80242258 1440FF82 */  bnez      $v0, .L80242064
/* C823FC 8024225C 00000000 */   nop
.L80242260:
/* C82400 80242260 8E620000 */  lw        $v0, ($s3)
/* C82404 80242264 30428000 */  andi      $v0, $v0, 0x8000
/* C82408 80242268 54400001 */  bnel      $v0, $zero, .L80242270
/* C8240C 8024226C 2415FFFF */   addiu    $s5, $zero, -1
.L80242270:
/* C82410 80242270 C60C0028 */  lwc1      $f12, 0x28($s0)
/* C82414 80242274 C6000010 */  lwc1      $f0, 0x10($s0)
/* C82418 80242278 46006300 */  add.s     $f12, $f12, $f0
/* C8241C 8024227C 0C00A6C9 */  jal       clamp_angle
/* C82420 80242280 E60C0028 */   swc1     $f12, 0x28($s0)
/* C82424 80242284 C6020028 */  lwc1      $f2, 0x28($s0)
/* C82428 80242288 46000106 */  mov.s     $f4, $f0
/* C8242C 8024228C 46022032 */  c.eq.s    $f4, $f2
/* C82430 80242290 00000000 */  nop
/* C82434 80242294 4501000D */  bc1t      .L802422CC
/* C82438 80242298 00000000 */   nop
/* C8243C 8024229C 8E020020 */  lw        $v0, 0x20($s0)
/* C82440 802422A0 C600000C */  lwc1      $f0, 0xc($s0)
/* C82444 802422A4 E6040028 */  swc1      $f4, 0x28($s0)
/* C82448 802422A8 00021080 */  sll       $v0, $v0, 2
/* C8244C 802422AC E7A00010 */  swc1      $f0, 0x10($sp)
/* C82450 802422B0 3C048024 */  lui       $a0, %hi(D_802437B4_C83954)
/* C82454 802422B4 00822021 */  addu      $a0, $a0, $v0
/* C82458 802422B8 8C8437B4 */  lw        $a0, %lo(D_802437B4_C83954)($a0)
/* C8245C 802422BC 8E060004 */  lw        $a2, 4($s0)
/* C82460 802422C0 8E070008 */  lw        $a3, 8($s0)
/* C82464 802422C4 0C052757 */  jal       play_sound_at_position
/* C82468 802422C8 0000282D */   daddu    $a1, $zero, $zero
.L802422CC:
/* C8246C 802422CC C60C0004 */  lwc1      $f12, 4($s0)
/* C82470 802422D0 C60E000C */  lwc1      $f14, 0xc($s0)
/* C82474 802422D4 8E660028 */  lw        $a2, 0x28($s3)
/* C82478 802422D8 0C00A7B5 */  jal       dist2D
/* C8247C 802422DC 8E670030 */   lw       $a3, 0x30($s3)
/* C82480 802422E0 C60C0004 */  lwc1      $f12, 4($s0)
/* C82484 802422E4 C60E000C */  lwc1      $f14, 0xc($s0)
/* C82488 802422E8 8E260038 */  lw        $a2, 0x38($s1)
/* C8248C 802422EC 8E270040 */  lw        $a3, 0x40($s1)
/* C82490 802422F0 0C00A7B5 */  jal       dist2D
/* C82494 802422F4 46000586 */   mov.s    $f22, $f0
/* C82498 802422F8 862200A6 */  lh        $v0, 0xa6($s1)
/* C8249C 802422FC 3C013F00 */  lui       $at, 0x3f00
/* C824A0 80242300 44813000 */  mtc1      $at, $f6
/* C824A4 80242304 44821000 */  mtc1      $v0, $f2
/* C824A8 80242308 00000000 */  nop
/* C824AC 8024230C 468010A0 */  cvt.s.w   $f2, $f2
/* C824B0 80242310 46061082 */  mul.s     $f2, $f2, $f6
/* C824B4 80242314 00000000 */  nop
/* C824B8 80242318 C6240054 */  lwc1      $f4, 0x54($s1)
/* C824BC 8024231C 46041082 */  mul.s     $f2, $f2, $f4
/* C824C0 80242320 00000000 */  nop
/* C824C4 80242324 866200B2 */  lh        $v0, 0xb2($s3)
/* C824C8 80242328 44822000 */  mtc1      $v0, $f4
/* C824CC 8024232C 00000000 */  nop
/* C824D0 80242330 46802120 */  cvt.s.w   $f4, $f4
/* C824D4 80242334 46062102 */  mul.s     $f4, $f4, $f6
/* C824D8 80242338 00000000 */  nop
/* C824DC 8024233C 46061082 */  mul.s     $f2, $f2, $f6
/* C824E0 80242340 00000000 */  nop
/* C824E4 80242344 46062102 */  mul.s     $f4, $f4, $f6
/* C824E8 80242348 00000000 */  nop
/* C824EC 8024234C C60C0004 */  lwc1      $f12, 4($s0)
/* C824F0 80242350 C60E000C */  lwc1      $f14, 0xc($s0)
/* C824F4 80242354 46020000 */  add.s     $f0, $f0, $f2
/* C824F8 80242358 8E660028 */  lw        $a2, 0x28($s3)
/* C824FC 8024235C 8E670030 */  lw        $a3, 0x30($s3)
/* C82500 80242360 0C00A720 */  jal       atan2
/* C82504 80242364 46040600 */   add.s    $f24, $f0, $f4
/* C82508 80242368 C60C0004 */  lwc1      $f12, 4($s0)
/* C8250C 8024236C C60E000C */  lwc1      $f14, 0xc($s0)
/* C82510 80242370 8E260038 */  lw        $a2, 0x38($s1)
/* C82514 80242374 8E270040 */  lw        $a3, 0x40($s1)
/* C82518 80242378 0C00A720 */  jal       atan2
/* C8251C 8024237C 46000506 */   mov.s    $f20, $f0
/* C82520 80242380 4600A306 */  mov.s     $f12, $f20
/* C82524 80242384 0C00A70A */  jal       get_clamped_angle_diff
/* C82528 80242388 46000386 */   mov.s    $f14, $f0
/* C8252C 8024238C 1AA0002A */  blez      $s5, .L80242438
/* C82530 80242390 46000506 */   mov.s    $f20, $f0
/* C82534 80242394 826300B4 */  lb        $v1, 0xb4($s3)
/* C82538 80242398 24020015 */  addiu     $v0, $zero, 0x15
/* C8253C 8024239C 10620026 */  beq       $v1, $v0, .L80242438
/* C82540 802423A0 0040202D */   daddu    $a0, $v0, $zero
/* C82544 802423A4 24020003 */  addiu     $v0, $zero, 3
/* C82548 802423A8 0C039769 */  jal       set_action_state
/* C8254C 802423AC A26200BF */   sb       $v0, 0xbf($s3)
/* C82550 802423B0 240400E8 */  addiu     $a0, $zero, 0xe8
/* C82554 802423B4 8E660028 */  lw        $a2, 0x28($s3)
/* C82558 802423B8 8E67002C */  lw        $a3, 0x2c($s3)
/* C8255C 802423BC C6600030 */  lwc1      $f0, 0x30($s3)
/* C82560 802423C0 0000282D */  daddu     $a1, $zero, $zero
/* C82564 802423C4 0C052757 */  jal       play_sound_at_position
/* C82568 802423C8 E7A00010 */   swc1     $f0, 0x10($sp)
/* C8256C 802423CC 2402002D */  addiu     $v0, $zero, 0x2d
/* C82570 802423D0 3C01800B */  lui       $at, %hi(gCurrentEncounter+0xA)
/* C82574 802423D4 A0220F1A */  sb        $v0, %lo(gCurrentEncounter+0xA)($at)
/* C82578 802423D8 C6600028 */  lwc1      $f0, 0x28($s3)
/* C8257C 802423DC C6620030 */  lwc1      $f2, 0x30($s3)
/* C82580 802423E0 2402002D */  addiu     $v0, $zero, 0x2d
/* C82584 802423E4 A6620010 */  sh        $v0, 0x10($s3)
/* C82588 802423E8 4600020D */  trunc.w.s $f8, $f0
/* C8258C 802423EC 44024000 */  mfc1      $v0, $f8
/* C82590 802423F0 C660002C */  lwc1      $f0, 0x2c($s3)
/* C82594 802423F4 A6620016 */  sh        $v0, 0x16($s3)
/* C82598 802423F8 4600020D */  trunc.w.s $f8, $f0
/* C8259C 802423FC 44024000 */  mfc1      $v0, $f8
/* C825A0 80242400 00000000 */  nop
/* C825A4 80242404 A6620018 */  sh        $v0, 0x18($s3)
/* C825A8 80242408 4600120D */  trunc.w.s $f8, $f2
/* C825AC 8024240C 44024000 */  mfc1      $v0, $f8
/* C825B0 80242410 00000000 */  nop
/* C825B4 80242414 A662001A */  sh        $v0, 0x1a($s3)
/* C825B8 80242418 8E02001C */  lw        $v0, 0x1c($s0)
/* C825BC 8024241C 10400033 */  beqz      $v0, .L802424EC
/* C825C0 80242420 AE000020 */   sw       $zero, 0x20($s0)
/* C825C4 80242424 0200202D */  daddu     $a0, $s0, $zero
/* C825C8 80242428 0040F809 */  jalr      $v0
/* C825CC 8024242C 24050002 */   addiu    $a1, $zero, 2
/* C825D0 80242430 0809093B */  j         .L802424EC
/* C825D4 80242434 00000000 */   nop
.L80242438:
/* C825D8 80242438 4618B03C */  c.lt.s    $f22, $f24
/* C825DC 8024243C 00000000 */  nop
/* C825E0 80242440 4500002A */  bc1f      .L802424EC
/* C825E4 80242444 00000000 */   nop
/* C825E8 80242448 8E020000 */  lw        $v0, ($s0)
/* C825EC 8024244C 30420002 */  andi      $v0, $v0, 2
/* C825F0 80242450 14400026 */  bnez      $v0, .L802424EC
/* C825F4 80242454 00000000 */   nop
/* C825F8 80242458 16A00024 */  bnez      $s5, .L802424EC
/* C825FC 8024245C 24020015 */   addiu    $v0, $zero, 0x15
/* C82600 80242460 826300B4 */  lb        $v1, 0xb4($s3)
/* C82604 80242464 10620021 */  beq       $v1, $v0, .L802424EC
/* C82608 80242468 00000000 */   nop
/* C8260C 8024246C C6000010 */  lwc1      $f0, 0x10($s0)
/* C82610 80242470 44801000 */  mtc1      $zero, $f2
/* C82614 80242474 00000000 */  nop
/* C82618 80242478 4600103C */  c.lt.s    $f2, $f0
/* C8261C 8024247C 00000000 */  nop
/* C82620 80242480 45000009 */  bc1f      .L802424A8
/* C82624 80242484 00000000 */   nop
/* C82628 80242488 C6000024 */  lwc1      $f0, 0x24($s0)
/* C8262C 8024248C 4602003C */  c.lt.s    $f0, $f2
/* C82630 80242490 00000000 */  nop
/* C82634 80242494 45000015 */  bc1f      .L802424EC
/* C82638 80242498 00000000 */   nop
/* C8263C 8024249C 4614103C */  c.lt.s    $f2, $f20
/* C82640 802424A0 08090931 */  j         .L802424C4
/* C82644 802424A4 00000000 */   nop
.L802424A8:
/* C82648 802424A8 C6000024 */  lwc1      $f0, 0x24($s0)
/* C8264C 802424AC 4600103C */  c.lt.s    $f2, $f0
/* C82650 802424B0 00000000 */  nop
/* C82654 802424B4 4500000D */  bc1f      .L802424EC
/* C82658 802424B8 00000000 */   nop
/* C8265C 802424BC 4602A03C */  c.lt.s    $f20, $f2
/* C82660 802424C0 00000000 */  nop
.L802424C4:
/* C82664 802424C4 45000009 */  bc1f      .L802424EC
/* C82668 802424C8 00000000 */   nop
/* C8266C 802424CC 8E020020 */  lw        $v0, 0x20($s0)
/* C82670 802424D0 8E03001C */  lw        $v1, 0x1c($s0)
/* C82674 802424D4 24420001 */  addiu     $v0, $v0, 1
/* C82678 802424D8 10600004 */  beqz      $v1, .L802424EC
/* C8267C 802424DC AE020020 */   sw       $v0, 0x20($s0)
/* C82680 802424E0 0200202D */  daddu     $a0, $s0, $zero
/* C82684 802424E4 0060F809 */  jalr      $v1
/* C82688 802424E8 24050001 */   addiu    $a1, $zero, 1
.L802424EC:
/* C8268C 802424EC 8E02001C */  lw        $v0, 0x1c($s0)
/* C82690 802424F0 10400004 */  beqz      $v0, .L80242504
/* C82694 802424F4 E6140024 */   swc1     $f20, 0x24($s0)
/* C82698 802424F8 0200202D */  daddu     $a0, $s0, $zero
/* C8269C 802424FC 0040F809 */  jalr      $v0
/* C826A0 80242500 0000282D */   daddu    $a1, $zero, $zero
.L80242504:
/* C826A4 80242504 0000102D */  daddu     $v0, $zero, $zero
.L80242508:
/* C826A8 80242508 8FBF0038 */  lw        $ra, 0x38($sp)
/* C826AC 8024250C 8FB70034 */  lw        $s7, 0x34($sp)
/* C826B0 80242510 8FB60030 */  lw        $s6, 0x30($sp)
/* C826B4 80242514 8FB5002C */  lw        $s5, 0x2c($sp)
/* C826B8 80242518 8FB40028 */  lw        $s4, 0x28($sp)
/* C826BC 8024251C 8FB30024 */  lw        $s3, 0x24($sp)
/* C826C0 80242520 8FB20020 */  lw        $s2, 0x20($sp)
/* C826C4 80242524 8FB1001C */  lw        $s1, 0x1c($sp)
/* C826C8 80242528 8FB00018 */  lw        $s0, 0x18($sp)
/* C826CC 8024252C D7B80050 */  ldc1      $f24, 0x50($sp)
/* C826D0 80242530 D7B60048 */  ldc1      $f22, 0x48($sp)
/* C826D4 80242534 D7B40040 */  ldc1      $f20, 0x40($sp)
/* C826D8 80242538 03E00008 */  jr        $ra
/* C826DC 8024253C 27BD0058 */   addiu    $sp, $sp, 0x58
