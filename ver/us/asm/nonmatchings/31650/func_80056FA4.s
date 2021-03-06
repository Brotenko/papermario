.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80056FA4
/* 323A4 80056FA4 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 323A8 80056FA8 308400FF */  andi      $a0, $a0, 0xff
/* 323AC 80056FAC F7B40028 */  sdc1      $f20, 0x28($sp)
/* 323B0 80056FB0 4487A000 */  mtc1      $a3, $f20
/* 323B4 80056FB4 00041140 */  sll       $v0, $a0, 5
/* 323B8 80056FB8 AFB10014 */  sw        $s1, 0x14($sp)
/* 323BC 80056FBC 97B10042 */  lhu       $s1, 0x42($sp)
/* 323C0 80056FC0 3C038008 */  lui       $v1, %hi(D_80078E54)
/* 323C4 80056FC4 8C638E54 */  lw        $v1, %lo(D_80078E54)($v1)
/* 323C8 80056FC8 00441023 */  subu      $v0, $v0, $a0
/* 323CC 80056FCC AFB20018 */  sw        $s2, 0x18($sp)
/* 323D0 80056FD0 93B20047 */  lbu       $s2, 0x47($sp)
/* 323D4 80056FD4 00021080 */  sll       $v0, $v0, 2
/* 323D8 80056FD8 AFBF0024 */  sw        $ra, 0x24($sp)
/* 323DC 80056FDC AFB40020 */  sw        $s4, 0x20($sp)
/* 323E0 80056FE0 AFB3001C */  sw        $s3, 0x1c($sp)
/* 323E4 80056FE4 AFB00010 */  sw        $s0, 0x10($sp)
/* 323E8 80056FE8 8C63001C */  lw        $v1, 0x1c($v1)
/* 323EC 80056FEC 93B3004B */  lbu       $s3, 0x4b($sp)
/* 323F0 80056FF0 00623821 */  addu      $a3, $v1, $v0
/* 323F4 80056FF4 24E40004 */  addiu     $a0, $a3, 4
/* 323F8 80056FF8 A0E50078 */  sb        $a1, 0x78($a3)
/* 323FC 80056FFC ACE60018 */  sw        $a2, 0x18($a3)
/* 32400 80057000 8C820014 */  lw        $v0, 0x14($a0)
/* 32404 80057004 8C420000 */  lw        $v0, ($v0)
/* 32408 80057008 ACE00028 */  sw        $zero, 0x28($a3)
/* 3240C 8005700C ACE20034 */  sw        $v0, 0x34($a3)
/* 32410 80057010 8C850014 */  lw        $a1, 0x14($a0)
/* 32414 80057014 24F00048 */  addiu     $s0, $a3, 0x48
/* 32418 80057018 90A30024 */  lbu       $v1, 0x24($a1)
/* 3241C 8005701C 10600006 */  beqz      $v1, .L80057038
/* 32420 80057020 24F40038 */   addiu    $s4, $a3, 0x38
/* 32424 80057024 24020001 */  addiu     $v0, $zero, 1
/* 32428 80057028 10620022 */  beq       $v1, $v0, .L800570B4
/* 3242C 8005702C 00000000 */   nop
/* 32430 80057030 08015C3C */  j         .L800570F0
/* 32434 80057034 24050001 */   addiu    $a1, $zero, 1
.L80057038:
/* 32438 80057038 3C0338E3 */  lui       $v1, 0x38e3
/* 3243C 8005703C 8CA20004 */  lw        $v0, 4($a1)
/* 32440 80057040 34638E39 */  ori       $v1, $v1, 0x8e39
/* 32444 80057044 00430019 */  multu     $v0, $v1
/* 32448 80057048 00004010 */  mfhi      $t0
/* 3244C 8005704C 00081842 */  srl       $v1, $t0, 1
/* 32450 80057050 000310C0 */  sll       $v0, $v1, 3
/* 32454 80057054 00431021 */  addu      $v0, $v0, $v1
/* 32458 80057058 ACA20004 */  sw        $v0, 4($a1)
/* 3245C 8005705C 8C820014 */  lw        $v0, 0x14($a0)
/* 32460 80057060 9442001C */  lhu       $v0, 0x1c($v0)
/* 32464 80057064 ACE2001C */  sw        $v0, 0x1c($a3)
/* 32468 80057068 8C830014 */  lw        $v1, 0x14($a0)
/* 3246C 8005706C 8C620010 */  lw        $v0, 0x10($v1)
/* 32470 80057070 5040001C */  beql      $v0, $zero, .L800570E4
/* 32474 80057074 ACE00014 */   sw       $zero, 0x14($a3)
/* 32478 80057078 8C62000C */  lw        $v0, 0xc($v1)
/* 3247C 8005707C ACE2000C */  sw        $v0, 0xc($a3)
/* 32480 80057080 8C820014 */  lw        $v0, 0x14($a0)
/* 32484 80057084 8C420010 */  lw        $v0, 0x10($v0)
/* 32488 80057088 ACE20010 */  sw        $v0, 0x10($a3)
/* 3248C 8005708C 8C820014 */  lw        $v0, 0x14($a0)
/* 32490 80057090 8C420014 */  lw        $v0, 0x14($v0)
/* 32494 80057094 ACE20014 */  sw        $v0, 0x14($a3)
/* 32498 80057098 8C820014 */  lw        $v0, 0x14($a0)
/* 3249C 8005709C 8CE50008 */  lw        $a1, 8($a3)
/* 324A0 800570A0 8C440008 */  lw        $a0, 8($v0)
/* 324A4 800570A4 0C015FF6 */  jal       alCopy
/* 324A8 800570A8 24060020 */   addiu    $a2, $zero, 0x20
/* 324AC 800570AC 08015C3C */  j         .L800570F0
/* 324B0 800570B0 24050001 */   addiu    $a1, $zero, 1
.L800570B4:
/* 324B4 800570B4 8CA20010 */  lw        $v0, 0x10($a1)
/* 324B8 800570B8 5040000A */  beql      $v0, $zero, .L800570E4
/* 324BC 800570BC ACE00014 */   sw       $zero, 0x14($a3)
/* 324C0 800570C0 8CA2000C */  lw        $v0, 0xc($a1)
/* 324C4 800570C4 ACE2000C */  sw        $v0, 0xc($a3)
/* 324C8 800570C8 8C820014 */  lw        $v0, 0x14($a0)
/* 324CC 800570CC 8C420010 */  lw        $v0, 0x10($v0)
/* 324D0 800570D0 ACE20010 */  sw        $v0, 0x10($a3)
/* 324D4 800570D4 8C820014 */  lw        $v0, 0x14($a0)
/* 324D8 800570D8 8C420014 */  lw        $v0, 0x14($v0)
/* 324DC 800570DC 08015C3B */  j         .L800570EC
/* 324E0 800570E0 ACE20014 */   sw       $v0, 0x14($a3)
.L800570E4:
/* 324E4 800570E4 ACE00010 */  sw        $zero, 0x10($a3)
/* 324E8 800570E8 ACE0000C */  sw        $zero, 0xc($a3)
.L800570EC:
/* 324EC 800570EC 24050001 */  addiu     $a1, $zero, 1
.L800570F0:
/* 324F0 800570F0 00111400 */  sll       $v0, $s1, 0x10
/* 324F4 800570F4 00021403 */  sra       $v0, $v0, 0x10
/* 324F8 800570F8 326300FF */  andi      $v1, $s3, 0xff
/* 324FC 800570FC 00420018 */  mult      $v0, $v0
/* 32500 80057100 AE050028 */  sw        $a1, 0x28($s0)
/* 32504 80057104 AE050024 */  sw        $a1, 0x24($s0)
/* 32508 80057108 AE00001C */  sw        $zero, 0x1c($s0)
/* 3250C 8005710C 8FA2004C */  lw        $v0, 0x4c($sp)
/* 32510 80057110 2406007F */  addiu     $a2, $zero, 0x7f
/* 32514 80057114 AE020020 */  sw        $v0, 0x20($s0)
/* 32518 80057118 324200FF */  andi      $v0, $s2, 0xff
/* 3251C 8005711C A6020004 */  sh        $v0, 4($s0)
/* 32520 80057120 00004012 */  mflo      $t0
/* 32524 80057124 000813C3 */  sra       $v0, $t0, 0xf
/* 32528 80057128 A6020006 */  sh        $v0, 6($s0)
/* 3252C 8005712C 00A31004 */  sllv      $v0, $v1, $a1
/* 32530 80057130 00C31823 */  subu      $v1, $a2, $v1
/* 32534 80057134 3C018008 */  lui       $at, %hi(D_80078E60)
/* 32538 80057138 00220821 */  addu      $at, $at, $v0
/* 3253C 8005713C 94228E60 */  lhu       $v0, %lo(D_80078E60)($at)
/* 32540 80057140 00A31804 */  sllv      $v1, $v1, $a1
/* 32544 80057144 A602000C */  sh        $v0, 0xc($s0)
/* 32548 80057148 3C028008 */  lui       $v0, %hi(D_80078E60)
/* 3254C 8005714C 00431021 */  addu      $v0, $v0, $v1
/* 32550 80057150 94428E60 */  lhu       $v0, %lo(D_80078E60)($v0)
/* 32554 80057154 A602000E */  sh        $v0, 0xe($s0)
/* 32558 80057158 8E020020 */  lw        $v0, 0x20($s0)
/* 3255C 8005715C 3C048008 */  lui       $a0, %hi(D_80078E60)
/* 32560 80057160 24848E60 */  addiu     $a0, $a0, %lo(D_80078E60)
/* 32564 80057164 10400004 */  beqz      $v0, .L80057178
/* 32568 80057168 00000000 */   nop
/* 3256C 8005716C A6050008 */  sh        $a1, 8($s0)
/* 32570 80057170 08015C7F */  j         .L800571FC
/* 32574 80057174 A605000A */   sh       $a1, 0xa($s0)
.L80057178:
/* 32578 80057178 3C028008 */  lui       $v0, %hi(D_80078181)
/* 3257C 8005717C 24428181 */  addiu     $v0, $v0, %lo(D_80078181)
/* 32580 80057180 90420000 */  lbu       $v0, ($v0)
/* 32584 80057184 1440000A */  bnez      $v0, .L800571B0
/* 32588 80057188 00000000 */   nop
/* 3258C 8005718C 86030006 */  lh        $v1, 6($s0)
/* 32590 80057190 84820080 */  lh        $v0, 0x80($a0)
/* 32594 80057194 00620018 */  mult      $v1, $v0
/* 32598 80057198 00004012 */  mflo      $t0
/* 3259C 8005719C 000813C3 */  sra       $v0, $t0, 0xf
/* 325A0 800571A0 A6020008 */  sh        $v0, 8($s0)
/* 325A4 800571A4 84820080 */  lh        $v0, 0x80($a0)
/* 325A8 800571A8 08015C7C */  j         .L800571F0
/* 325AC 800571AC 00620018 */   mult     $v1, $v0
.L800571B0:
/* 325B0 800571B0 86020004 */  lh        $v0, 4($s0)
/* 325B4 800571B4 86030006 */  lh        $v1, 6($s0)
/* 325B8 800571B8 00021040 */  sll       $v0, $v0, 1
/* 325BC 800571BC 00441021 */  addu      $v0, $v0, $a0
/* 325C0 800571C0 84420000 */  lh        $v0, ($v0)
/* 325C4 800571C4 00620018 */  mult      $v1, $v0
/* 325C8 800571C8 86020004 */  lh        $v0, 4($s0)
/* 325CC 800571CC 00C21023 */  subu      $v0, $a2, $v0
/* 325D0 800571D0 00021040 */  sll       $v0, $v0, 1
/* 325D4 800571D4 00441021 */  addu      $v0, $v0, $a0
/* 325D8 800571D8 00004012 */  mflo      $t0
/* 325DC 800571DC 00081BC3 */  sra       $v1, $t0, 0xf
/* 325E0 800571E0 A6030008 */  sh        $v1, 8($s0)
/* 325E4 800571E4 86030006 */  lh        $v1, 6($s0)
/* 325E8 800571E8 84420000 */  lh        $v0, ($v0)
/* 325EC 800571EC 00620018 */  mult      $v1, $v0
.L800571F0:
/* 325F0 800571F0 00004012 */  mflo      $t0
/* 325F4 800571F4 000813C3 */  sra       $v0, $t0, 0xf
/* 325F8 800571F8 A602000A */  sh        $v0, 0xa($s0)
.L800571FC:
/* 325FC 800571FC E6940004 */  swc1      $f20, 4($s4)
/* 32600 80057200 8FBF0024 */  lw        $ra, 0x24($sp)
/* 32604 80057204 8FB40020 */  lw        $s4, 0x20($sp)
/* 32608 80057208 8FB3001C */  lw        $s3, 0x1c($sp)
/* 3260C 8005720C 8FB20018 */  lw        $s2, 0x18($sp)
/* 32610 80057210 8FB10014 */  lw        $s1, 0x14($sp)
/* 32614 80057214 8FB00010 */  lw        $s0, 0x10($sp)
/* 32618 80057218 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 3261C 8005721C 03E00008 */  jr        $ra
/* 32620 80057220 27BD0030 */   addiu    $sp, $sp, 0x30
