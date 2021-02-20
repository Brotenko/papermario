.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802406BC_D935FC
/* D935FC 802406BC 3C03800A */  lui       $v1, %hi(D_8009A634)
/* D93600 802406C0 8463A634 */  lh        $v1, %lo(D_8009A634)($v1)
/* D93604 802406C4 3C07BF80 */  lui       $a3, 0xbf80
/* D93608 802406C8 27BDFEC0 */  addiu     $sp, $sp, -0x140
/* D9360C 802406CC F7B40128 */  sdc1      $f20, 0x128($sp)
/* D93610 802406D0 4480A000 */  mtc1      $zero, $f20
/* D93614 802406D4 AFB1011C */  sw        $s1, 0x11c($sp)
/* D93618 802406D8 0080882D */  daddu     $s1, $a0, $zero
/* D9361C 802406DC AFB00118 */  sw        $s0, 0x118($sp)
/* D93620 802406E0 27B00098 */  addiu     $s0, $sp, 0x98
/* D93624 802406E4 AFBF0120 */  sw        $ra, 0x120($sp)
/* D93628 802406E8 F7B80138 */  sdc1      $f24, 0x138($sp)
/* D9362C 802406EC F7B60130 */  sdc1      $f22, 0x130($sp)
/* D93630 802406F0 00031080 */  sll       $v0, $v1, 2
/* D93634 802406F4 00431021 */  addu      $v0, $v0, $v1
/* D93638 802406F8 00021080 */  sll       $v0, $v0, 2
/* D9363C 802406FC 00431023 */  subu      $v0, $v0, $v1
/* D93640 80240700 000218C0 */  sll       $v1, $v0, 3
/* D93644 80240704 00431021 */  addu      $v0, $v0, $v1
/* D93648 80240708 000210C0 */  sll       $v0, $v0, 3
/* D9364C 8024070C 3C01800B */  lui       $at, %hi(gCameras+0x6C)
/* D93650 80240710 00220821 */  addu      $at, $at, $v0
/* D93654 80240714 C4361DEC */  lwc1      $f22, %lo(gCameras+0x6C)($at)
/* D93658 80240718 4406A000 */  mfc1      $a2, $f20
/* D9365C 8024071C 4600B587 */  neg.s     $f22, $f22
/* D93660 80240720 4405B000 */  mfc1      $a1, $f22
/* D93664 80240724 0200202D */  daddu     $a0, $s0, $zero
/* D93668 80240728 0C019EC8 */  jal       guRotateF
/* D9366C 8024072C E7B40010 */   swc1     $f20, 0x10($sp)
/* D93670 80240730 C62C008C */  lwc1      $f12, 0x8c($s1)
/* D93674 80240734 0C00A6C9 */  jal       clamp_angle
/* D93678 80240738 00000000 */   nop
/* D9367C 8024073C 44050000 */  mfc1      $a1, $f0
/* D93680 80240740 4406A000 */  mfc1      $a2, $f20
/* D93684 80240744 4407A000 */  mfc1      $a3, $f20
/* D93688 80240748 3C013F80 */  lui       $at, 0x3f80
/* D9368C 8024074C 4481C000 */  mtc1      $at, $f24
/* D93690 80240750 27A40018 */  addiu     $a0, $sp, 0x18
/* D93694 80240754 0C019EC8 */  jal       guRotateF
/* D93698 80240758 E7B80010 */   swc1     $f24, 0x10($sp)
/* D9369C 8024075C 0200202D */  daddu     $a0, $s0, $zero
/* D936A0 80240760 27A50018 */  addiu     $a1, $sp, 0x18
/* D936A4 80240764 0C019D80 */  jal       guMtxCatF
/* D936A8 80240768 00A0302D */   daddu    $a2, $a1, $zero
/* D936AC 8024076C 4405B000 */  mfc1      $a1, $f22
/* D936B0 80240770 4406A000 */  mfc1      $a2, $f20
/* D936B4 80240774 4407C000 */  mfc1      $a3, $f24
/* D936B8 80240778 0200202D */  daddu     $a0, $s0, $zero
/* D936BC 8024077C 0C019EC8 */  jal       guRotateF
/* D936C0 80240780 E7B40010 */   swc1     $f20, 0x10($sp)
/* D936C4 80240784 27A40018 */  addiu     $a0, $sp, 0x18
/* D936C8 80240788 0200282D */  daddu     $a1, $s0, $zero
/* D936CC 8024078C 0C019D80 */  jal       guMtxCatF
/* D936D0 80240790 0080302D */   daddu    $a2, $a0, $zero
/* D936D4 80240794 E7B40010 */  swc1      $f20, 0x10($sp)
/* D936D8 80240798 8E2500A8 */  lw        $a1, 0xa8($s1)
/* D936DC 8024079C 4406A000 */  mfc1      $a2, $f20
/* D936E0 802407A0 4407C000 */  mfc1      $a3, $f24
/* D936E4 802407A4 0C019EC8 */  jal       guRotateF
/* D936E8 802407A8 0200202D */   daddu    $a0, $s0, $zero
/* D936EC 802407AC 27A40018 */  addiu     $a0, $sp, 0x18
/* D936F0 802407B0 0200282D */  daddu     $a1, $s0, $zero
/* D936F4 802407B4 0C019D80 */  jal       guMtxCatF
/* D936F8 802407B8 0080302D */   daddu    $a2, $a0, $zero
/* D936FC 802407BC 27B000D8 */  addiu     $s0, $sp, 0xd8
/* D93700 802407C0 3C013F36 */  lui       $at, 0x3f36
/* D93704 802407C4 3421DB6E */  ori       $at, $at, 0xdb6e
/* D93708 802407C8 44810000 */  mtc1      $at, $f0
/* D9370C 802407CC 0200202D */  daddu     $a0, $s0, $zero
/* D93710 802407D0 44050000 */  mfc1      $a1, $f0
/* D93714 802407D4 3C06BF36 */  lui       $a2, 0xbf36
/* D93718 802407D8 34C6DB6E */  ori       $a2, $a2, 0xdb6e
/* D9371C 802407DC 0C019DF0 */  jal       guScaleF
/* D93720 802407E0 00A0382D */   daddu    $a3, $a1, $zero
/* D93724 802407E4 27A40018 */  addiu     $a0, $sp, 0x18
/* D93728 802407E8 0200282D */  daddu     $a1, $s0, $zero
/* D9372C 802407EC 0C019D80 */  jal       guMtxCatF
/* D93730 802407F0 0080302D */   daddu    $a2, $a0, $zero
/* D93734 802407F4 27B00058 */  addiu     $s0, $sp, 0x58
/* D93738 802407F8 8E250028 */  lw        $a1, 0x28($s1)
/* D9373C 802407FC C620002C */  lwc1      $f0, 0x2c($s1)
/* D93740 80240800 8E270030 */  lw        $a3, 0x30($s1)
/* D93744 80240804 46000007 */  neg.s     $f0, $f0
/* D93748 80240808 44060000 */  mfc1      $a2, $f0
/* D9374C 8024080C 0C019E40 */  jal       guTranslateF
/* D93750 80240810 0200202D */   daddu    $a0, $s0, $zero
/* D93754 80240814 27A40018 */  addiu     $a0, $sp, 0x18
/* D93758 80240818 0200282D */  daddu     $a1, $s0, $zero
/* D9375C 8024081C 0C019D80 */  jal       guMtxCatF
/* D93760 80240820 0080302D */   daddu    $a2, $a0, $zero
/* D93764 80240824 C62200A8 */  lwc1      $f2, 0xa8($s1)
/* D93768 80240828 3C0142B4 */  lui       $at, 0x42b4
/* D9376C 8024082C 44810000 */  mtc1      $at, $f0
/* D93770 80240830 00000000 */  nop
/* D93774 80240834 4602003E */  c.le.s    $f0, $f2
/* D93778 80240838 00000000 */  nop
/* D9377C 8024083C 4500000A */  bc1f      .L80240868
/* D93780 80240840 24040001 */   addiu    $a0, $zero, 1
/* D93784 80240844 3C014387 */  lui       $at, 0x4387
/* D93788 80240848 44810000 */  mtc1      $at, $f0
/* D9378C 8024084C 00000000 */  nop
/* D93790 80240850 4600103C */  c.lt.s    $f2, $f0
/* D93794 80240854 00000000 */  nop
/* D93798 80240858 45000004 */  bc1f      .L8024086C
/* D9379C 8024085C 27A20018 */   addiu    $v0, $sp, 0x18
/* D937A0 80240860 3C041000 */  lui       $a0, 0x1000
/* D937A4 80240864 34840001 */  ori       $a0, $a0, 1
.L80240868:
/* D937A8 80240868 27A20018 */  addiu     $v0, $sp, 0x18
.L8024086C:
/* D937AC 8024086C 0000282D */  daddu     $a1, $zero, $zero
/* D937B0 80240870 00A0302D */  daddu     $a2, $a1, $zero
/* D937B4 80240874 00A0382D */  daddu     $a3, $a1, $zero
/* D937B8 80240878 0C0B7710 */  jal       render_sprite
/* D937BC 8024087C AFA20010 */   sw       $v0, 0x10($sp)
/* D937C0 80240880 8FBF0120 */  lw        $ra, 0x120($sp)
/* D937C4 80240884 8FB1011C */  lw        $s1, 0x11c($sp)
/* D937C8 80240888 8FB00118 */  lw        $s0, 0x118($sp)
/* D937CC 8024088C D7B80138 */  ldc1      $f24, 0x138($sp)
/* D937D0 80240890 D7B60130 */  ldc1      $f22, 0x130($sp)
/* D937D4 80240894 D7B40128 */  ldc1      $f20, 0x128($sp)
/* D937D8 80240898 03E00008 */  jr        $ra
/* D937DC 8024089C 27BD0140 */   addiu    $sp, $sp, 0x140
