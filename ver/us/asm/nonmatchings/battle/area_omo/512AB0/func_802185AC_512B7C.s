.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802185AC_512B7C
/* 512B7C 802185AC 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 512B80 802185B0 AFB10014 */  sw        $s1, 0x14($sp)
/* 512B84 802185B4 0080882D */  daddu     $s1, $a0, $zero
/* 512B88 802185B8 AFBF0024 */  sw        $ra, 0x24($sp)
/* 512B8C 802185BC AFB40020 */  sw        $s4, 0x20($sp)
/* 512B90 802185C0 AFB3001C */  sw        $s3, 0x1c($sp)
/* 512B94 802185C4 AFB20018 */  sw        $s2, 0x18($sp)
/* 512B98 802185C8 AFB00010 */  sw        $s0, 0x10($sp)
/* 512B9C 802185CC F7B40028 */  sdc1      $f20, 0x28($sp)
/* 512BA0 802185D0 8E30000C */  lw        $s0, 0xc($s1)
/* 512BA4 802185D4 8E050000 */  lw        $a1, ($s0)
/* 512BA8 802185D8 0C0B1EAF */  jal       get_variable
/* 512BAC 802185DC 26100004 */   addiu    $s0, $s0, 4
/* 512BB0 802185E0 8E140000 */  lw        $s4, ($s0)
/* 512BB4 802185E4 26100004 */  addiu     $s0, $s0, 4
/* 512BB8 802185E8 8E050000 */  lw        $a1, ($s0)
/* 512BBC 802185EC 26100004 */  addiu     $s0, $s0, 4
/* 512BC0 802185F0 0220202D */  daddu     $a0, $s1, $zero
/* 512BC4 802185F4 0C0B1EAF */  jal       get_variable
/* 512BC8 802185F8 0040902D */   daddu    $s2, $v0, $zero
/* 512BCC 802185FC 8E050000 */  lw        $a1, ($s0)
/* 512BD0 80218600 26100004 */  addiu     $s0, $s0, 4
/* 512BD4 80218604 0220202D */  daddu     $a0, $s1, $zero
/* 512BD8 80218608 0C0B1EAF */  jal       get_variable
/* 512BDC 8021860C 0040982D */   daddu    $s3, $v0, $zero
/* 512BE0 80218610 0220202D */  daddu     $a0, $s1, $zero
/* 512BE4 80218614 8E050000 */  lw        $a1, ($s0)
/* 512BE8 80218618 0C0B210B */  jal       get_float_variable
/* 512BEC 8021861C 0040802D */   daddu    $s0, $v0, $zero
/* 512BF0 80218620 3C0140C9 */  lui       $at, 0x40c9
/* 512BF4 80218624 34210FD8 */  ori       $at, $at, 0xfd8
/* 512BF8 80218628 44814000 */  mtc1      $at, $f8
/* 512BFC 8021862C 44922000 */  mtc1      $s2, $f4
/* 512C00 80218630 00000000 */  nop
/* 512C04 80218634 46802120 */  cvt.s.w   $f4, $f4
/* 512C08 80218638 46082202 */  mul.s     $f8, $f4, $f8
/* 512C0C 8021863C 00000000 */  nop
/* 512C10 80218640 44903000 */  mtc1      $s0, $f6
/* 512C14 80218644 00000000 */  nop
/* 512C18 80218648 468031A0 */  cvt.s.w   $f6, $f6
/* 512C1C 8021864C 3C013F80 */  lui       $at, 0x3f80
/* 512C20 80218650 44811000 */  mtc1      $at, $f2
/* 512C24 80218654 46062103 */  div.s     $f4, $f4, $f6
/* 512C28 80218658 46041081 */  sub.s     $f2, $f2, $f4
/* 512C2C 8021865C 46020502 */  mul.s     $f20, $f0, $f2
/* 512C30 80218660 00000000 */  nop
/* 512C34 80218664 44936000 */  mtc1      $s3, $f12
/* 512C38 80218668 00000000 */  nop
/* 512C3C 8021866C 46806320 */  cvt.s.w   $f12, $f12
/* 512C40 80218670 0C00A874 */  jal       cos_rad
/* 512C44 80218674 460C4303 */   div.s    $f12, $f8, $f12
/* 512C48 80218678 4600A502 */  mul.s     $f20, $f20, $f0
/* 512C4C 8021867C 00000000 */  nop
/* 512C50 80218680 0220202D */  daddu     $a0, $s1, $zero
/* 512C54 80218684 4600A28D */  trunc.w.s $f10, $f20
/* 512C58 80218688 44065000 */  mfc1      $a2, $f10
/* 512C5C 8021868C 0C0B2026 */  jal       set_variable
/* 512C60 80218690 0280282D */   daddu    $a1, $s4, $zero
/* 512C64 80218694 8FBF0024 */  lw        $ra, 0x24($sp)
/* 512C68 80218698 8FB40020 */  lw        $s4, 0x20($sp)
/* 512C6C 8021869C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 512C70 802186A0 8FB20018 */  lw        $s2, 0x18($sp)
/* 512C74 802186A4 8FB10014 */  lw        $s1, 0x14($sp)
/* 512C78 802186A8 8FB00010 */  lw        $s0, 0x10($sp)
/* 512C7C 802186AC D7B40028 */  ldc1      $f20, 0x28($sp)
/* 512C80 802186B0 24020002 */  addiu     $v0, $zero, 2
/* 512C84 802186B4 03E00008 */  jr        $ra
/* 512C88 802186B8 27BD0030 */   addiu    $sp, $sp, 0x30
/* 512C8C 802186BC 00000000 */  nop
