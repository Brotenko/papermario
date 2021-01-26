.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241194_9C6574
/* 9C6574 80241194 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 9C6578 80241198 AFB10014 */  sw        $s1, 0x14($sp)
/* 9C657C 8024119C 0080882D */  daddu     $s1, $a0, $zero
/* 9C6580 802411A0 AFBF0024 */  sw        $ra, 0x24($sp)
/* 9C6584 802411A4 AFB40020 */  sw        $s4, 0x20($sp)
/* 9C6588 802411A8 AFB3001C */  sw        $s3, 0x1c($sp)
/* 9C658C 802411AC AFB20018 */  sw        $s2, 0x18($sp)
/* 9C6590 802411B0 10A00033 */  beqz      $a1, .L80241280
/* 9C6594 802411B4 AFB00010 */   sw       $s0, 0x10($sp)
/* 9C6598 802411B8 0C04760B */  jal       func_8011D82C
/* 9C659C 802411BC 24040001 */   addiu    $a0, $zero, 1
/* 9C65A0 802411C0 0000202D */  daddu     $a0, $zero, $zero
/* 9C65A4 802411C4 0080282D */  daddu     $a1, $a0, $zero
/* 9C65A8 802411C8 0080302D */  daddu     $a2, $a0, $zero
/* 9C65AC 802411CC 0080382D */  daddu     $a3, $a0, $zero
/* 9C65B0 802411D0 0080802D */  daddu     $s0, $a0, $zero
/* 9C65B4 802411D4 2414FFFC */  addiu     $s4, $zero, -4
/* 9C65B8 802411D8 2413000F */  addiu     $s3, $zero, 0xf
/* 9C65BC 802411DC 3C120080 */  lui       $s2, 0x80
/* 9C65C0 802411E0 3C038015 */  lui       $v1, %hi(D_801512F0_8D66D0)
/* 9C65C4 802411E4 8C6312F0 */  lw        $v1, %lo(D_801512F0_8D66D0)($v1)
/* 9C65C8 802411E8 24020001 */  addiu     $v0, $zero, 1
/* 9C65CC 802411EC 0C046F97 */  jal       set_background_color_blend
/* 9C65D0 802411F0 A0620000 */   sb       $v0, ($v1)
.L802411F4:
/* 9C65D4 802411F4 0C00E2B7 */  jal       get_npc_by_index
/* 9C65D8 802411F8 0200202D */   daddu    $a0, $s0, $zero
/* 9C65DC 802411FC 0040202D */  daddu     $a0, $v0, $zero
/* 9C65E0 80241200 5080000B */  beql      $a0, $zero, .L80241230
/* 9C65E4 80241204 26100001 */   addiu    $s0, $s0, 1
/* 9C65E8 80241208 8C820000 */  lw        $v0, ($a0)
/* 9C65EC 8024120C 50400008 */  beql      $v0, $zero, .L80241230
/* 9C65F0 80241210 26100001 */   addiu    $s0, $s0, 1
/* 9C65F4 80241214 808300A4 */  lb        $v1, 0xa4($a0)
/* 9C65F8 80241218 10740005 */  beq       $v1, $s4, .L80241230
/* 9C65FC 8024121C 26100001 */   addiu    $s0, $s0, 1
/* 9C6600 80241220 10730003 */  beq       $v1, $s3, .L80241230
/* 9C6604 80241224 00000000 */   nop
/* 9C6608 80241228 00521025 */  or        $v0, $v0, $s2
/* 9C660C 8024122C AC820000 */  sw        $v0, ($a0)
.L80241230:
/* 9C6610 80241230 2A020040 */  slti      $v0, $s0, 0x40
/* 9C6614 80241234 1440FFEF */  bnez      $v0, .L802411F4
/* 9C6618 80241238 00000000 */   nop
/* 9C661C 8024123C 0000802D */  daddu     $s0, $zero, $zero
/* 9C6620 80241240 3C120800 */  lui       $s2, 0x800
.L80241244:
/* 9C6624 80241244 0C04C3D6 */  jal       get_item_entity
/* 9C6628 80241248 0200202D */   daddu    $a0, $s0, $zero
/* 9C662C 8024124C 0040182D */  daddu     $v1, $v0, $zero
/* 9C6630 80241250 10600007 */  beqz      $v1, .L80241270
/* 9C6634 80241254 26100001 */   addiu    $s0, $s0, 1
/* 9C6638 80241258 8C640000 */  lw        $a0, ($v1)
/* 9C663C 8024125C 30820010 */  andi      $v0, $a0, 0x10
/* 9C6640 80241260 10400003 */  beqz      $v0, .L80241270
/* 9C6644 80241264 00000000 */   nop
/* 9C6648 80241268 00921025 */  or        $v0, $a0, $s2
/* 9C664C 8024126C AC620000 */  sw        $v0, ($v1)
.L80241270:
/* 9C6650 80241270 2A020100 */  slti      $v0, $s0, 0x100
/* 9C6654 80241274 1440FFF3 */  bnez      $v0, .L80241244
/* 9C6658 80241278 00000000 */   nop
/* 9C665C 8024127C AE200070 */  sw        $zero, 0x70($s1)
.L80241280:
/* 9C6660 80241280 8E220070 */  lw        $v0, 0x70($s1)
/* 9C6664 80241284 24420008 */  addiu     $v0, $v0, 8
/* 9C6668 80241288 AE220070 */  sw        $v0, 0x70($s1)
/* 9C666C 8024128C 28420100 */  slti      $v0, $v0, 0x100
/* 9C6670 80241290 14400003 */  bnez      $v0, .L802412A0
/* 9C6674 80241294 0000202D */   daddu    $a0, $zero, $zero
/* 9C6678 80241298 240200FF */  addiu     $v0, $zero, 0xff
/* 9C667C 8024129C AE220070 */  sw        $v0, 0x70($s1)
.L802412A0:
/* 9C6680 802412A0 0080282D */  daddu     $a1, $a0, $zero
/* 9C6684 802412A4 92270073 */  lbu       $a3, 0x73($s1)
/* 9C6688 802412A8 0C046F97 */  jal       set_background_color_blend
/* 9C668C 802412AC 0080302D */   daddu    $a2, $a0, $zero
/* 9C6690 802412B0 8E220070 */  lw        $v0, 0x70($s1)
/* 9C6694 802412B4 8FBF0024 */  lw        $ra, 0x24($sp)
/* 9C6698 802412B8 8FB40020 */  lw        $s4, 0x20($sp)
/* 9C669C 802412BC 8FB3001C */  lw        $s3, 0x1c($sp)
/* 9C66A0 802412C0 8FB20018 */  lw        $s2, 0x18($sp)
/* 9C66A4 802412C4 8FB10014 */  lw        $s1, 0x14($sp)
/* 9C66A8 802412C8 8FB00010 */  lw        $s0, 0x10($sp)
/* 9C66AC 802412CC 384200FF */  xori      $v0, $v0, 0xff
/* 9C66B0 802412D0 2C420001 */  sltiu     $v0, $v0, 1
/* 9C66B4 802412D4 00021040 */  sll       $v0, $v0, 1
/* 9C66B8 802412D8 03E00008 */  jr        $ra
/* 9C66BC 802412DC 27BD0028 */   addiu    $sp, $sp, 0x28
