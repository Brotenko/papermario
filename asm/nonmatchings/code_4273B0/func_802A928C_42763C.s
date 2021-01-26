.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802A928C_42763C
/* 42763C 802A928C 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 427640 802A9290 AFB10014 */  sw        $s1, 0x14($sp)
/* 427644 802A9294 3C11802A */  lui       $s1, %hi(D_8029FBE0_41DF90)
/* 427648 802A9298 2631FBE0 */  addiu     $s1, $s1, %lo(D_8029FBE0_41DF90)
/* 42764C 802A929C AFBF001C */  sw        $ra, 0x1c($sp)
/* 427650 802A92A0 AFB20018 */  sw        $s2, 0x18($sp)
/* 427654 802A92A4 AFB00010 */  sw        $s0, 0x10($sp)
/* 427658 802A92A8 8623004C */  lh        $v1, 0x4c($s1)
/* 42765C 802A92AC 3C12800E */  lui       $s2, %hi(gBattleStatus)
/* 427660 802A92B0 2652C070 */  addiu     $s2, $s2, %lo(gBattleStatus)
/* 427664 802A92B4 2C62000D */  sltiu     $v0, $v1, 0xd
/* 427668 802A92B8 104000A2 */  beqz      $v0, .L802A9544
/* 42766C 802A92BC 00031080 */   sll      $v0, $v1, 2
/* 427670 802A92C0 3C01802B */  lui       $at, %hi(jtbl_802A9680_427A30)
/* 427674 802A92C4 00220821 */  addu      $at, $at, $v0
/* 427678 802A92C8 8C229680 */  lw        $v0, %lo(jtbl_802A9680_427A30)($at)
/* 42767C 802A92CC 00400008 */  jr        $v0
/* 427680 802A92D0 00000000 */   nop
glabel L802A92D4_427684
/* 427684 802A92D4 0C093EB1 */  jal       set_popup_duration
/* 427688 802A92D8 24040063 */   addiu    $a0, $zero, 0x63
/* 42768C 802A92DC 8E300004 */  lw        $s0, 4($s1)
/* 427690 802A92E0 240500FF */  addiu     $a1, $zero, 0xff
/* 427694 802A92E4 0C0513AC */  jal       icon_set_opacity
/* 427698 802A92E8 0200202D */   daddu    $a0, $s0, $zero
/* 42769C 802A92EC 82220061 */  lb        $v0, 0x61($s1)
/* 4276A0 802A92F0 10400003 */  beqz      $v0, .L802A9300
/* 4276A4 802A92F4 0200202D */   daddu    $a0, $s0, $zero
/* 4276A8 802A92F8 0C05128B */  jal       clear_icon_flags
/* 4276AC 802A92FC 24050002 */   addiu    $a1, $zero, 2
.L802A9300:
/* 4276B0 802A9300 8E300008 */  lw        $s0, 8($s1)
/* 4276B4 802A9304 240500FF */  addiu     $a1, $zero, 0xff
/* 4276B8 802A9308 0C0513AC */  jal       icon_set_opacity
/* 4276BC 802A930C 0200202D */   daddu    $a0, $s0, $zero
/* 4276C0 802A9310 82220061 */  lb        $v0, 0x61($s1)
/* 4276C4 802A9314 10400003 */  beqz      $v0, .L802A9324
/* 4276C8 802A9318 0200202D */   daddu    $a0, $s0, $zero
/* 4276CC 802A931C 0C05128B */  jal       clear_icon_flags
/* 4276D0 802A9320 24050002 */   addiu    $a1, $zero, 2
.L802A9324:
/* 4276D4 802A9324 24020001 */  addiu     $v0, $zero, 1
/* 4276D8 802A9328 080AA551 */  j         .L802A9544
/* 4276DC 802A932C A622004C */   sh       $v0, 0x4c($s1)
glabel L802A9330_4276E0
/* 4276E0 802A9330 0C093EB1 */  jal       set_popup_duration
/* 4276E4 802A9334 24040063 */   addiu    $a0, $zero, 0x63
/* 4276E8 802A9338 96220056 */  lhu       $v0, 0x56($s1)
/* 4276EC 802A933C 24420014 */  addiu     $v0, $v0, 0x14
/* 4276F0 802A9340 A6220056 */  sh        $v0, 0x56($s1)
/* 4276F4 802A9344 00021400 */  sll       $v0, $v0, 0x10
/* 4276F8 802A9348 00021403 */  sra       $v0, $v0, 0x10
/* 4276FC 802A934C 28420033 */  slti      $v0, $v0, 0x33
/* 427700 802A9350 14400002 */  bnez      $v0, .L802A935C
/* 427704 802A9354 24020032 */   addiu    $v0, $zero, 0x32
/* 427708 802A9358 A6220056 */  sh        $v0, 0x56($s1)
.L802A935C:
/* 42770C 802A935C 8E240004 */  lw        $a0, 4($s1)
/* 427710 802A9360 86250056 */  lh        $a1, 0x56($s1)
/* 427714 802A9364 0C051261 */  jal       set_icon_render_pos
/* 427718 802A9368 86260058 */   lh       $a2, 0x58($s1)
/* 42771C 802A936C 8E240008 */  lw        $a0, 8($s1)
/* 427720 802A9370 86260058 */  lh        $a2, 0x58($s1)
/* 427724 802A9374 86250056 */  lh        $a1, 0x56($s1)
/* 427728 802A9378 0C051261 */  jal       set_icon_render_pos
/* 42772C 802A937C 24C6001C */   addiu    $a2, $a2, 0x1c
/* 427730 802A9380 080AA551 */  j         .L802A9544
/* 427734 802A9384 00000000 */   nop
glabel L802A9388_427738
/* 427738 802A9388 0C093EB1 */  jal       set_popup_duration
/* 42773C 802A938C 24040063 */   addiu    $a0, $zero, 0x63
/* 427740 802A9390 8622004E */  lh        $v0, 0x4e($s1)
/* 427744 802A9394 9623004E */  lhu       $v1, 0x4e($s1)
/* 427748 802A9398 10400003 */  beqz      $v0, .L802A93A8
/* 42774C 802A939C 2462FFFF */   addiu    $v0, $v1, -1
/* 427750 802A93A0 080AA551 */  j         .L802A9544
/* 427754 802A93A4 A622004E */   sh       $v0, 0x4e($s1)
.L802A93A8:
/* 427758 802A93A8 8E240004 */  lw        $a0, 4($s1)
/* 42775C 802A93AC 3C058011 */  lui       $a1, %hi(D_80108B80_286F30)
/* 427760 802A93B0 24A58B80 */  addiu     $a1, $a1, %lo(D_80108B80_286F30)
/* 427764 802A93B4 0C0511FF */  jal       set_menu_icon_script
/* 427768 802A93B8 00000000 */   nop
/* 42776C 802A93BC 96230052 */  lhu       $v1, 0x52($s1)
/* 427770 802A93C0 2402000B */  addiu     $v0, $zero, 0xb
/* 427774 802A93C4 A6200044 */  sh        $zero, 0x44($s1)
/* 427778 802A93C8 A622004C */  sh        $v0, 0x4c($s1)
/* 42777C 802A93CC A6230054 */  sh        $v1, 0x54($s1)
glabel L802A93D0_427780
/* 427780 802A93D0 0C093EB1 */  jal       set_popup_duration
/* 427784 802A93D4 24040063 */   addiu    $a0, $zero, 0x63
/* 427788 802A93D8 8E420214 */  lw        $v0, 0x214($s2)
/* 42778C 802A93DC 30428000 */  andi      $v0, $v0, 0x8000
/* 427790 802A93E0 1040000B */  beqz      $v0, .L802A9410
/* 427794 802A93E4 00000000 */   nop
/* 427798 802A93E8 86220050 */  lh        $v0, 0x50($s1)
/* 42779C 802A93EC 8E430434 */  lw        $v1, 0x434($s2)
/* 4277A0 802A93F0 00021080 */  sll       $v0, $v0, 2
/* 4277A4 802A93F4 00431021 */  addu      $v0, $v0, $v1
/* 4277A8 802A93F8 8C440000 */  lw        $a0, ($v0)
/* 4277AC 802A93FC 96230044 */  lhu       $v1, 0x44($s1)
/* 4277B0 802A9400 00041100 */  sll       $v0, $a0, 4
/* 4277B4 802A9404 00441023 */  subu      $v0, $v0, $a0
/* 4277B8 802A9408 00621821 */  addu      $v1, $v1, $v0
/* 4277BC 802A940C A6230044 */  sh        $v1, 0x44($s1)
.L802A9410:
/* 4277C0 802A9410 86220044 */  lh        $v0, 0x44($s1)
/* 4277C4 802A9414 28422710 */  slti      $v0, $v0, 0x2710
/* 4277C8 802A9418 14400010 */  bnez      $v0, .L802A945C
/* 4277CC 802A941C 3C0451EB */   lui      $a0, 0x51eb
/* 4277D0 802A9420 8E30000C */  lw        $s0, 0xc($s1)
/* 4277D4 802A9424 86250056 */  lh        $a1, 0x56($s1)
/* 4277D8 802A9428 86260058 */  lh        $a2, 0x58($s1)
/* 4277DC 802A942C 24022710 */  addiu     $v0, $zero, 0x2710
/* 4277E0 802A9430 A6220044 */  sh        $v0, 0x44($s1)
/* 4277E4 802A9434 24020001 */  addiu     $v0, $zero, 1
/* 4277E8 802A9438 A6220068 */  sh        $v0, 0x68($s1)
/* 4277EC 802A943C 0200202D */  daddu     $a0, $s0, $zero
/* 4277F0 802A9440 24A50032 */  addiu     $a1, $a1, 0x32
/* 4277F4 802A9444 0C051261 */  jal       set_icon_render_pos
/* 4277F8 802A9448 24C6001C */   addiu    $a2, $a2, 0x1c
/* 4277FC 802A944C 0200202D */  daddu     $a0, $s0, $zero
/* 427800 802A9450 0C05128B */  jal       clear_icon_flags
/* 427804 802A9454 24050002 */   addiu    $a1, $zero, 2
/* 427808 802A9458 3C0451EB */  lui       $a0, 0x51eb
.L802A945C:
/* 42780C 802A945C 96230044 */  lhu       $v1, 0x44($s1)
/* 427810 802A9460 3484851F */  ori       $a0, $a0, 0x851f
/* 427814 802A9464 00031C00 */  sll       $v1, $v1, 0x10
/* 427818 802A9468 00031403 */  sra       $v0, $v1, 0x10
/* 42781C 802A946C 00440018 */  mult      $v0, $a0
/* 427820 802A9470 00031FC3 */  sra       $v1, $v1, 0x1f
/* 427824 802A9474 00003810 */  mfhi      $a3
/* 427828 802A9478 00071143 */  sra       $v0, $a3, 5
/* 42782C 802A947C 00431023 */  subu      $v0, $v0, $v1
/* 427830 802A9480 A2420084 */  sb        $v0, 0x84($s2)
/* 427834 802A9484 86220054 */  lh        $v0, 0x54($s1)
/* 427838 802A9488 96230054 */  lhu       $v1, 0x54($s1)
/* 42783C 802A948C 14400029 */  bnez      $v0, .L802A9534
/* 427840 802A9490 2462FFFF */   addiu    $v0, $v1, -1
/* 427844 802A9494 96220044 */  lhu       $v0, 0x44($s1)
/* 427848 802A9498 00021C00 */  sll       $v1, $v0, 0x10
/* 42784C 802A949C 00031403 */  sra       $v0, $v1, 0x10
/* 427850 802A94A0 14400003 */  bnez      $v0, .L802A94B0
/* 427854 802A94A4 00440018 */   mult     $v0, $a0
/* 427858 802A94A8 080AA530 */  j         .L802A94C0
/* 42785C 802A94AC 2402FFFF */   addiu    $v0, $zero, -1
.L802A94B0:
/* 427860 802A94B0 00031FC3 */  sra       $v1, $v1, 0x1f
/* 427864 802A94B4 00003810 */  mfhi      $a3
/* 427868 802A94B8 00071143 */  sra       $v0, $a3, 5
/* 42786C 802A94BC 00431023 */  subu      $v0, $v0, $v1
.L802A94C0:
/* 427870 802A94C0 A2420081 */  sb        $v0, 0x81($s2)
/* 427874 802A94C4 82220080 */  lb        $v0, 0x80($s1)
/* 427878 802A94C8 2442FFFF */  addiu     $v0, $v0, -1
/* 42787C 802A94CC 00021040 */  sll       $v0, $v0, 1
/* 427880 802A94D0 02221021 */  addu      $v0, $s1, $v0
/* 427884 802A94D4 84430074 */  lh        $v1, 0x74($v0)
/* 427888 802A94D8 82420081 */  lb        $v0, 0x81($s2)
/* 42788C 802A94DC 0043102A */  slt       $v0, $v0, $v1
/* 427890 802A94E0 14400002 */  bnez      $v0, .L802A94EC
/* 427894 802A94E4 2402FFFE */   addiu    $v0, $zero, -2
/* 427898 802A94E8 24020001 */  addiu     $v0, $zero, 1
.L802A94EC:
/* 42789C 802A94EC A2420086 */  sb        $v0, 0x86($s2)
/* 4278A0 802A94F0 82430081 */  lb        $v1, 0x81($s2)
/* 4278A4 802A94F4 24020064 */  addiu     $v0, $zero, 0x64
/* 4278A8 802A94F8 14620003 */  bne       $v1, $v0, .L802A9508
/* 4278AC 802A94FC 00000000 */   nop
/* 4278B0 802A9500 0C09A458 */  jal       func_80269160
/* 4278B4 802A9504 00000000 */   nop
.L802A9508:
/* 4278B8 802A9508 0C093EB1 */  jal       set_popup_duration
/* 4278BC 802A950C 0000202D */   daddu    $a0, $zero, $zero
/* 4278C0 802A9510 24020005 */  addiu     $v0, $zero, 5
/* 4278C4 802A9514 A6220054 */  sh        $v0, 0x54($s1)
/* 4278C8 802A9518 2402000C */  addiu     $v0, $zero, 0xc
/* 4278CC 802A951C 080AA551 */  j         .L802A9544
/* 4278D0 802A9520 A622004C */   sh       $v0, 0x4c($s1)
glabel L802A9524_4278D4
/* 4278D4 802A9524 86220054 */  lh        $v0, 0x54($s1)
/* 4278D8 802A9528 96230054 */  lhu       $v1, 0x54($s1)
/* 4278DC 802A952C 10400003 */  beqz      $v0, .L802A953C
/* 4278E0 802A9530 2462FFFF */   addiu    $v0, $v1, -1
.L802A9534:
/* 4278E4 802A9534 080AA551 */  j         .L802A9544
/* 4278E8 802A9538 A6220054 */   sh       $v0, 0x54($s1)
.L802A953C:
/* 4278EC 802A953C 0C09A327 */  jal       func_80268C9C
/* 4278F0 802A9540 00000000 */   nop
.L802A9544:
glabel L802A9544_4278F4
/* 4278F4 802A9544 8FBF001C */  lw        $ra, 0x1c($sp)
/* 4278F8 802A9548 8FB20018 */  lw        $s2, 0x18($sp)
/* 4278FC 802A954C 8FB10014 */  lw        $s1, 0x14($sp)
/* 427900 802A9550 8FB00010 */  lw        $s0, 0x10($sp)
/* 427904 802A9554 03E00008 */  jr        $ra
/* 427908 802A9558 27BD0020 */   addiu    $sp, $sp, 0x20
