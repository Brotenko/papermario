.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8003DC60
/* 19060 8003DC60 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 19064 8003DC64 AFB1001C */  sw        $s1, 0x1c($sp)
/* 19068 8003DC68 0080882D */  daddu     $s1, $a0, $zero
/* 1906C 8003DC6C 3C048007 */  lui       $a0, %hi(D_80077C00)
/* 19070 8003DC70 24847C00 */  addiu     $a0, $a0, %lo(D_80077C00)
/* 19074 8003DC74 AFBF0020 */  sw        $ra, 0x20($sp)
/* 19078 8003DC78 AFB00018 */  sw        $s0, 0x18($sp)
/* 1907C 8003DC7C F7B40028 */  sdc1      $f20, 0x28($sp)
/* 19080 8003DC80 94820000 */  lhu       $v0, ($a0)
/* 19084 8003DC84 24430001 */  addiu     $v1, $v0, 1
/* 19088 8003DC88 00021400 */  sll       $v0, $v0, 0x10
/* 1908C 8003DC8C 00021403 */  sra       $v0, $v0, 0x10
/* 19090 8003DC90 28420004 */  slti      $v0, $v0, 4
/* 19094 8003DC94 14400039 */  bnez      $v0, .L8003DD7C
/* 19098 8003DC98 A4830000 */   sh       $v1, ($a0)
/* 1909C 8003DC9C C62C000C */  lwc1      $f12, 0xc($s1)
/* 190A0 8003DCA0 A4800000 */  sh        $zero, ($a0)
/* 190A4 8003DCA4 0C00A6B9 */  jal       func_80029AE4
/* 190A8 8003DCA8 46006307 */   neg.s    $f12, $f12
/* 190AC 8003DCAC 3C0140C9 */  lui       $at, 0x40c9
/* 190B0 8003DCB0 34210FD0 */  ori       $at, $at, 0xfd0
/* 190B4 8003DCB4 44811000 */  mtc1      $at, $f2
/* 190B8 8003DCB8 00000000 */  nop
/* 190BC 8003DCBC 46020502 */  mul.s     $f20, $f0, $f2
/* 190C0 8003DCC0 00000000 */  nop
/* 190C4 8003DCC4 3C0143B4 */  lui       $at, 0x43b4
/* 190C8 8003DCC8 44810000 */  mtc1      $at, $f0
/* 190CC 8003DCCC 00000000 */  nop
/* 190D0 8003DCD0 4600A503 */  div.s     $f20, $f20, $f0
/* 190D4 8003DCD4 0C00A84B */  jal       func_8002A12C
/* 190D8 8003DCD8 4600A306 */   mov.s    $f12, $f20
/* 190DC 8003DCDC 4600A306 */  mov.s     $f12, $f20
/* 190E0 8003DCE0 0C00A864 */  jal       func_8002A190
/* 190E4 8003DCE4 46000506 */   mov.s    $f20, $f0
/* 190E8 8003DCE8 862200A6 */  lh        $v0, 0xa6($s1)
/* 190EC 8003DCEC 44821000 */  mtc1      $v0, $f2
/* 190F0 8003DCF0 00000000 */  nop
/* 190F4 8003DCF4 468010A0 */  cvt.s.w   $f2, $f2
/* 190F8 8003DCF8 46141502 */  mul.s     $f20, $f2, $f20
/* 190FC 8003DCFC 00000000 */  nop
/* 19100 8003DD00 46001082 */  mul.s     $f2, $f2, $f0
/* 19104 8003DD04 00000000 */  nop
/* 19108 8003DD08 3C013E4C */  lui       $at, 0x3e4c
/* 1910C 8003DD0C 3421CCCD */  ori       $at, $at, 0xcccd
/* 19110 8003DD10 44810000 */  mtc1      $at, $f0
/* 19114 8003DD14 00000000 */  nop
/* 19118 8003DD18 4600A502 */  mul.s     $f20, $f20, $f0
/* 1911C 8003DD1C 00000000 */  nop
/* 19120 8003DD20 46001082 */  mul.s     $f2, $f2, $f0
/* 19124 8003DD24 00000000 */  nop
/* 19128 8003DD28 3C013FC0 */  lui       $at, 0x3fc0
/* 1912C 8003DD2C 44817000 */  mtc1      $at, $f14
/* 19130 8003DD30 C620003C */  lwc1      $f0, 0x3c($s1)
/* 19134 8003DD34 460E0380 */  add.s     $f14, $f0, $f14
/* 19138 8003DD38 C6200040 */  lwc1      $f0, 0x40($s1)
/* 1913C 8003DD3C 3C108007 */  lui       $s0, %hi(D_80077C04)
/* 19140 8003DD40 26107C04 */  addiu     $s0, $s0, %lo(D_80077C04)
/* 19144 8003DD44 46020000 */  add.s     $f0, $f0, $f2
/* 19148 8003DD48 C624000C */  lwc1      $f4, 0xc($s1)
/* 1914C 8003DD4C C62C0038 */  lwc1      $f12, 0x38($s1)
/* 19150 8003DD50 46002107 */  neg.s     $f4, $f4
/* 19154 8003DD54 44072000 */  mfc1      $a3, $f4
/* 19158 8003DD58 46146300 */  add.s     $f12, $f12, $f20
/* 1915C 8003DD5C 44060000 */  mfc1      $a2, $f0
/* 19160 8003DD60 C6000000 */  lwc1      $f0, ($s0)
/* 19164 8003DD64 46800020 */  cvt.s.w   $f0, $f0
/* 19168 8003DD68 0C01BF3C */  jal       func_8006FCF0
/* 1916C 8003DD6C E7A00010 */   swc1     $f0, 0x10($sp)
/* 19170 8003DD70 8E020000 */  lw        $v0, ($s0)
/* 19174 8003DD74 2C420001 */  sltiu     $v0, $v0, 1
/* 19178 8003DD78 AE020000 */  sw        $v0, ($s0)
.L8003DD7C:
/* 1917C 8003DD7C 8FBF0020 */  lw        $ra, 0x20($sp)
/* 19180 8003DD80 8FB1001C */  lw        $s1, 0x1c($sp)
/* 19184 8003DD84 8FB00018 */  lw        $s0, 0x18($sp)
/* 19188 8003DD88 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 1918C 8003DD8C 03E00008 */  jr        $ra
/* 19190 8003DD90 27BD0030 */   addiu    $sp, $sp, 0x30
