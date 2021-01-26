.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802A9294_426C64
/* 426C64 802A9294 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 426C68 802A9298 AFB10014 */  sw        $s1, 0x14($sp)
/* 426C6C 802A929C 3C11802A */  lui       $s1, %hi(D_8029FBE0_41D5B0)
/* 426C70 802A92A0 2631FBE0 */  addiu     $s1, $s1, %lo(D_8029FBE0_41D5B0)
/* 426C74 802A92A4 AFB20018 */  sw        $s2, 0x18($sp)
/* 426C78 802A92A8 3C12800E */  lui       $s2, %hi(gBattleStatus)
/* 426C7C 802A92AC 2652C070 */  addiu     $s2, $s2, %lo(gBattleStatus)
/* 426C80 802A92B0 AFBF0020 */  sw        $ra, 0x20($sp)
/* 426C84 802A92B4 AFB3001C */  sw        $s3, 0x1c($sp)
/* 426C88 802A92B8 AFB00010 */  sw        $s0, 0x10($sp)
/* 426C8C 802A92BC 8623004C */  lh        $v1, 0x4c($s1)
/* 426C90 802A92C0 8E5300DC */  lw        $s3, 0xdc($s2)
/* 426C94 802A92C4 2C62000D */  sltiu     $v0, $v1, 0xd
/* 426C98 802A92C8 10400153 */  beqz      $v0, .L802A9818
/* 426C9C 802A92CC 00031080 */   sll      $v0, $v1, 2
/* 426CA0 802A92D0 3C01802B */  lui       $at, %hi(jtbl_802A99A0_427370)
/* 426CA4 802A92D4 00220821 */  addu      $at, $at, $v0
/* 426CA8 802A92D8 8C2299A0 */  lw        $v0, %lo(jtbl_802A99A0_427370)($at)
/* 426CAC 802A92DC 00400008 */  jr        $v0
/* 426CB0 802A92E0 00000000 */   nop
glabel L802A92E4_426CB4
/* 426CB4 802A92E4 0C093EB1 */  jal       set_popup_duration
/* 426CB8 802A92E8 24040063 */   addiu    $a0, $zero, 0x63
/* 426CBC 802A92EC 8E300004 */  lw        $s0, 4($s1)
/* 426CC0 802A92F0 240500FF */  addiu     $a1, $zero, 0xff
/* 426CC4 802A92F4 0C0513AC */  jal       icon_set_opacity
/* 426CC8 802A92F8 0200202D */   daddu    $a0, $s0, $zero
/* 426CCC 802A92FC 82220061 */  lb        $v0, 0x61($s1)
/* 426CD0 802A9300 10400003 */  beqz      $v0, .L802A9310
/* 426CD4 802A9304 0200202D */   daddu    $a0, $s0, $zero
/* 426CD8 802A9308 0C05128B */  jal       clear_icon_flags
/* 426CDC 802A930C 24050002 */   addiu    $a1, $zero, 2
.L802A9310:
/* 426CE0 802A9310 8E300008 */  lw        $s0, 8($s1)
/* 426CE4 802A9314 240500FF */  addiu     $a1, $zero, 0xff
/* 426CE8 802A9318 0C0513AC */  jal       icon_set_opacity
/* 426CEC 802A931C 0200202D */   daddu    $a0, $s0, $zero
/* 426CF0 802A9320 82220061 */  lb        $v0, 0x61($s1)
/* 426CF4 802A9324 10400003 */  beqz      $v0, .L802A9334
/* 426CF8 802A9328 0200202D */   daddu    $a0, $s0, $zero
/* 426CFC 802A932C 0C05128B */  jal       clear_icon_flags
/* 426D00 802A9330 24050002 */   addiu    $a1, $zero, 2
.L802A9334:
/* 426D04 802A9334 24020001 */  addiu     $v0, $zero, 1
/* 426D08 802A9338 080AA606 */  j         .L802A9818
/* 426D0C 802A933C A622004C */   sh       $v0, 0x4c($s1)
glabel L802A9340_426D10
/* 426D10 802A9340 0C093EB1 */  jal       set_popup_duration
/* 426D14 802A9344 24040063 */   addiu    $a0, $zero, 0x63
/* 426D18 802A9348 96220056 */  lhu       $v0, 0x56($s1)
/* 426D1C 802A934C 24420014 */  addiu     $v0, $v0, 0x14
/* 426D20 802A9350 A6220056 */  sh        $v0, 0x56($s1)
/* 426D24 802A9354 00021400 */  sll       $v0, $v0, 0x10
/* 426D28 802A9358 00021403 */  sra       $v0, $v0, 0x10
/* 426D2C 802A935C 28420033 */  slti      $v0, $v0, 0x33
/* 426D30 802A9360 14400002 */  bnez      $v0, .L802A936C
/* 426D34 802A9364 24020032 */   addiu    $v0, $zero, 0x32
/* 426D38 802A9368 A6220056 */  sh        $v0, 0x56($s1)
.L802A936C:
/* 426D3C 802A936C 8E240004 */  lw        $a0, 4($s1)
/* 426D40 802A9370 86250056 */  lh        $a1, 0x56($s1)
/* 426D44 802A9374 0C051261 */  jal       set_icon_render_pos
/* 426D48 802A9378 86260058 */   lh       $a2, 0x58($s1)
/* 426D4C 802A937C 8E240008 */  lw        $a0, 8($s1)
/* 426D50 802A9380 86260058 */  lh        $a2, 0x58($s1)
/* 426D54 802A9384 86250056 */  lh        $a1, 0x56($s1)
/* 426D58 802A9388 0C051261 */  jal       set_icon_render_pos
/* 426D5C 802A938C 24C6001C */   addiu    $a2, $a2, 0x1c
/* 426D60 802A9390 080AA606 */  j         .L802A9818
/* 426D64 802A9394 00000000 */   nop
glabel L802A9398_426D68
/* 426D68 802A9398 0C093EB1 */  jal       set_popup_duration
/* 426D6C 802A939C 24040063 */   addiu    $a0, $zero, 0x63
/* 426D70 802A93A0 8622004E */  lh        $v0, 0x4e($s1)
/* 426D74 802A93A4 9623004E */  lhu       $v1, 0x4e($s1)
/* 426D78 802A93A8 10400003 */  beqz      $v0, .L802A93B8
/* 426D7C 802A93AC 2462FFFF */   addiu    $v0, $v1, -1
/* 426D80 802A93B0 080AA606 */  j         .L802A9818
/* 426D84 802A93B4 A622004E */   sh       $v0, 0x4e($s1)
.L802A93B8:
/* 426D88 802A93B8 8E240004 */  lw        $a0, 4($s1)
/* 426D8C 802A93BC 3C058011 */  lui       $a1, %hi(D_80108F30_286900)
/* 426D90 802A93C0 24A58F30 */  addiu     $a1, $a1, %lo(D_80108F30_286900)
/* 426D94 802A93C4 0C0511FF */  jal       set_menu_icon_script
/* 426D98 802A93C8 00000000 */   nop
/* 426D9C 802A93CC 3C048000 */  lui       $a0, 0x8000
/* 426DA0 802A93D0 34840041 */  ori       $a0, $a0, 0x41
/* 426DA4 802A93D4 0000282D */  daddu     $a1, $zero, $zero
/* 426DA8 802A93D8 00A0302D */  daddu     $a2, $a1, $zero
/* 426DAC 802A93DC 96220052 */  lhu       $v0, 0x52($s1)
/* 426DB0 802A93E0 00A0382D */  daddu     $a3, $a1, $zero
/* 426DB4 802A93E4 A6200044 */  sh        $zero, 0x44($s1)
/* 426DB8 802A93E8 A2400085 */  sb        $zero, 0x85($s2)
/* 426DBC 802A93EC A220005C */  sb        $zero, 0x5c($s1)
/* 426DC0 802A93F0 0C0526AE */  jal       _play_sound
/* 426DC4 802A93F4 A6220054 */   sh       $v0, 0x54($s1)
/* 426DC8 802A93F8 2402000B */  addiu     $v0, $zero, 0xb
/* 426DCC 802A93FC A622004C */  sh        $v0, 0x4c($s1)
glabel L802A9400_426DD0
/* 426DD0 802A9400 0C093EB1 */  jal       set_popup_duration
/* 426DD4 802A9404 24040063 */   addiu    $a0, $zero, 0x63
/* 426DD8 802A9408 86220068 */  lh        $v0, 0x68($s1)
/* 426DDC 802A940C 1440005F */  bnez      $v0, .L802A958C
/* 426DE0 802A9410 00000000 */   nop
/* 426DE4 802A9414 82220080 */  lb        $v0, 0x80($s1)
/* 426DE8 802A9418 00021040 */  sll       $v0, $v0, 1
/* 426DEC 802A941C 02221021 */  addu      $v0, $s1, $v0
/* 426DF0 802A9420 84430074 */  lh        $v1, 0x74($v0)
/* 426DF4 802A9424 86220044 */  lh        $v0, 0x44($s1)
/* 426DF8 802A9428 14600002 */  bnez      $v1, .L802A9434
/* 426DFC 802A942C 0043001A */   div      $zero, $v0, $v1
/* 426E00 802A9430 0007000D */  break     7
.L802A9434:
/* 426E04 802A9434 2401FFFF */   addiu    $at, $zero, -1
/* 426E08 802A9438 14610004 */  bne       $v1, $at, .L802A944C
/* 426E0C 802A943C 3C018000 */   lui      $at, 0x8000
/* 426E10 802A9440 14410002 */  bne       $v0, $at, .L802A944C
/* 426E14 802A9444 00000000 */   nop
/* 426E18 802A9448 0006000D */  break     6
.L802A944C:
/* 426E1C 802A944C 00001012 */   mflo     $v0
/* 426E20 802A9450 3C036666 */  lui       $v1, 0x6666
/* 426E24 802A9454 34636667 */  ori       $v1, $v1, 0x6667
/* 426E28 802A9458 00430018 */  mult      $v0, $v1
/* 426E2C 802A945C 000217C3 */  sra       $v0, $v0, 0x1f
/* 426E30 802A9460 00001810 */  mfhi      $v1
/* 426E34 802A9464 000318C3 */  sra       $v1, $v1, 3
/* 426E38 802A9468 00621823 */  subu      $v1, $v1, $v0
/* 426E3C 802A946C 00031880 */  sll       $v1, $v1, 2
/* 426E40 802A9470 96220044 */  lhu       $v0, 0x44($s1)
/* 426E44 802A9474 3C01802B */  lui       $at, %hi(D_802A9952_427322)
/* 426E48 802A9478 00230821 */  addu      $at, $at, $v1
/* 426E4C 802A947C 94239952 */  lhu       $v1, %lo(D_802A9952_427322)($at)
/* 426E50 802A9480 00431023 */  subu      $v0, $v0, $v1
/* 426E54 802A9484 A6220044 */  sh        $v0, 0x44($s1)
/* 426E58 802A9488 00021400 */  sll       $v0, $v0, 0x10
/* 426E5C 802A948C 04420001 */  bltzl     $v0, .L802A9494
/* 426E60 802A9490 A6200044 */   sh       $zero, 0x44($s1)
.L802A9494:
/* 426E64 802A9494 86220068 */  lh        $v0, 0x68($s1)
/* 426E68 802A9498 1440003C */  bnez      $v0, .L802A958C
/* 426E6C 802A949C 3C040004 */   lui      $a0, 4
/* 426E70 802A94A0 8E420210 */  lw        $v0, 0x210($s2)
/* 426E74 802A94A4 00441024 */  and       $v0, $v0, $a0
/* 426E78 802A94A8 10400005 */  beqz      $v0, .L802A94C0
/* 426E7C 802A94AC 24030001 */   addiu    $v1, $zero, 1
/* 426E80 802A94B0 8E420210 */  lw        $v0, 0x210($s2)
/* 426E84 802A94B4 00441024 */  and       $v0, $v0, $a0
/* 426E88 802A94B8 1440001A */  bnez      $v0, .L802A9524
/* 426E8C 802A94BC A223005C */   sb       $v1, 0x5c($s1)
.L802A94C0:
/* 426E90 802A94C0 8222005C */  lb        $v0, 0x5c($s1)
/* 426E94 802A94C4 10400017 */  beqz      $v0, .L802A9524
/* 426E98 802A94C8 3C0451EB */   lui      $a0, 0x51eb
/* 426E9C 802A94CC 86220050 */  lh        $v0, 0x50($s1)
/* 426EA0 802A94D0 8E430434 */  lw        $v1, 0x434($s2)
/* 426EA4 802A94D4 00021080 */  sll       $v0, $v0, 2
/* 426EA8 802A94D8 00431021 */  addu      $v0, $v0, $v1
/* 426EAC 802A94DC 8C430000 */  lw        $v1, ($v0)
/* 426EB0 802A94E0 3484851F */  ori       $a0, $a0, 0x851f
/* 426EB4 802A94E4 00031100 */  sll       $v0, $v1, 4
/* 426EB8 802A94E8 00431023 */  subu      $v0, $v0, $v1
/* 426EBC 802A94EC 000210C0 */  sll       $v0, $v0, 3
/* 426EC0 802A94F0 00431023 */  subu      $v0, $v0, $v1
/* 426EC4 802A94F4 00021080 */  sll       $v0, $v0, 2
/* 426EC8 802A94F8 00431023 */  subu      $v0, $v0, $v1
/* 426ECC 802A94FC 00021040 */  sll       $v0, $v0, 1
/* 426ED0 802A9500 00440018 */  mult      $v0, $a0
/* 426ED4 802A9504 A220005C */  sb        $zero, 0x5c($s1)
/* 426ED8 802A9508 000217C3 */  sra       $v0, $v0, 0x1f
/* 426EDC 802A950C 96230044 */  lhu       $v1, 0x44($s1)
/* 426EE0 802A9510 00004810 */  mfhi      $t1
/* 426EE4 802A9514 00092143 */  sra       $a0, $t1, 5
/* 426EE8 802A9518 00822023 */  subu      $a0, $a0, $v0
/* 426EEC 802A951C 00641821 */  addu      $v1, $v1, $a0
/* 426EF0 802A9520 A6230044 */  sh        $v1, 0x44($s1)
.L802A9524:
/* 426EF4 802A9524 8E420214 */  lw        $v0, 0x214($s2)
/* 426EF8 802A9528 3C030008 */  lui       $v1, 8
/* 426EFC 802A952C 00431024 */  and       $v0, $v0, $v1
/* 426F00 802A9530 10400016 */  beqz      $v0, .L802A958C
/* 426F04 802A9534 3C0451EB */   lui      $a0, 0x51eb
/* 426F08 802A9538 86220050 */  lh        $v0, 0x50($s1)
/* 426F0C 802A953C 8E430434 */  lw        $v1, 0x434($s2)
/* 426F10 802A9540 00021080 */  sll       $v0, $v0, 2
/* 426F14 802A9544 00431021 */  addu      $v0, $v0, $v1
/* 426F18 802A9548 8C430000 */  lw        $v1, ($v0)
/* 426F1C 802A954C 3484851F */  ori       $a0, $a0, 0x851f
/* 426F20 802A9550 00031100 */  sll       $v0, $v1, 4
/* 426F24 802A9554 00431023 */  subu      $v0, $v0, $v1
/* 426F28 802A9558 000210C0 */  sll       $v0, $v0, 3
/* 426F2C 802A955C 00431023 */  subu      $v0, $v0, $v1
/* 426F30 802A9560 00021080 */  sll       $v0, $v0, 2
/* 426F34 802A9564 00431023 */  subu      $v0, $v0, $v1
/* 426F38 802A9568 00021040 */  sll       $v0, $v0, 1
/* 426F3C 802A956C 00440018 */  mult      $v0, $a0
/* 426F40 802A9570 000217C3 */  sra       $v0, $v0, 0x1f
/* 426F44 802A9574 96230044 */  lhu       $v1, 0x44($s1)
/* 426F48 802A9578 00004810 */  mfhi      $t1
/* 426F4C 802A957C 00092143 */  sra       $a0, $t1, 5
/* 426F50 802A9580 00822023 */  subu      $a0, $a0, $v0
/* 426F54 802A9584 00641823 */  subu      $v1, $v1, $a0
/* 426F58 802A9588 A6230044 */  sh        $v1, 0x44($s1)
.L802A958C:
/* 426F5C 802A958C 86220044 */  lh        $v0, 0x44($s1)
/* 426F60 802A9590 04420001 */  bltzl     $v0, .L802A9598
/* 426F64 802A9594 A6200044 */   sh       $zero, 0x44($s1)
.L802A9598:
/* 426F68 802A9598 86220044 */  lh        $v0, 0x44($s1)
/* 426F6C 802A959C 28422711 */  slti      $v0, $v0, 0x2711
/* 426F70 802A95A0 14400010 */  bnez      $v0, .L802A95E4
/* 426F74 802A95A4 3C0451EB */   lui      $a0, 0x51eb
/* 426F78 802A95A8 8E30000C */  lw        $s0, 0xc($s1)
/* 426F7C 802A95AC 86250056 */  lh        $a1, 0x56($s1)
/* 426F80 802A95B0 86260058 */  lh        $a2, 0x58($s1)
/* 426F84 802A95B4 24022710 */  addiu     $v0, $zero, 0x2710
/* 426F88 802A95B8 A6220044 */  sh        $v0, 0x44($s1)
/* 426F8C 802A95BC 24020001 */  addiu     $v0, $zero, 1
/* 426F90 802A95C0 A6220068 */  sh        $v0, 0x68($s1)
/* 426F94 802A95C4 0200202D */  daddu     $a0, $s0, $zero
/* 426F98 802A95C8 24A50032 */  addiu     $a1, $a1, 0x32
/* 426F9C 802A95CC 0C051261 */  jal       set_icon_render_pos
/* 426FA0 802A95D0 24C6001C */   addiu    $a2, $a2, 0x1c
/* 426FA4 802A95D4 0200202D */  daddu     $a0, $s0, $zero
/* 426FA8 802A95D8 0C05128B */  jal       clear_icon_flags
/* 426FAC 802A95DC 24050002 */   addiu    $a1, $zero, 2
/* 426FB0 802A95E0 3C0451EB */  lui       $a0, 0x51eb
.L802A95E4:
/* 426FB4 802A95E4 3484851F */  ori       $a0, $a0, 0x851f
/* 426FB8 802A95E8 96230044 */  lhu       $v1, 0x44($s1)
/* 426FBC 802A95EC 0000282D */  daddu     $a1, $zero, $zero
/* 426FC0 802A95F0 00031C00 */  sll       $v1, $v1, 0x10
/* 426FC4 802A95F4 00031403 */  sra       $v0, $v1, 0x10
/* 426FC8 802A95F8 00440018 */  mult      $v0, $a0
/* 426FCC 802A95FC 00A0302D */  daddu     $a2, $a1, $zero
/* 426FD0 802A9600 3C048000 */  lui       $a0, 0x8000
/* 426FD4 802A9604 34840041 */  ori       $a0, $a0, 0x41
/* 426FD8 802A9608 00031FC3 */  sra       $v1, $v1, 0x1f
/* 426FDC 802A960C 00004810 */  mfhi      $t1
/* 426FE0 802A9610 00094143 */  sra       $t0, $t1, 5
/* 426FE4 802A9614 01034023 */  subu      $t0, $t0, $v1
/* 426FE8 802A9618 00081600 */  sll       $v0, $t0, 0x18
/* 426FEC 802A961C 00021603 */  sra       $v0, $v0, 0x18
/* 426FF0 802A9620 00023840 */  sll       $a3, $v0, 1
/* 426FF4 802A9624 00E23821 */  addu      $a3, $a3, $v0
/* 426FF8 802A9628 00073880 */  sll       $a3, $a3, 2
/* 426FFC 802A962C 0C0526F9 */  jal       func_80149BE4
/* 427000 802A9630 A2480084 */   sb       $t0, 0x84($s2)
/* 427004 802A9634 8E620008 */  lw        $v0, 8($s3)
/* 427008 802A9638 90430006 */  lbu       $v1, 6($v0)
/* 42700C 802A963C 24020001 */  addiu     $v0, $zero, 1
/* 427010 802A9640 10620019 */  beq       $v1, $v0, .L802A96A8
/* 427014 802A9644 28620002 */   slti     $v0, $v1, 2
/* 427018 802A9648 10400005 */  beqz      $v0, .L802A9660
/* 42701C 802A964C 24020002 */   addiu    $v0, $zero, 2
/* 427020 802A9650 10600007 */  beqz      $v1, .L802A9670
/* 427024 802A9654 00000000 */   nop
/* 427028 802A9658 080AA5D1 */  j         .L802A9744
/* 42702C 802A965C 00000000 */   nop
.L802A9660:
/* 427030 802A9660 1062001F */  beq       $v1, $v0, .L802A96E0
/* 427034 802A9664 00000000 */   nop
/* 427038 802A9668 080AA5D1 */  j         .L802A9744
/* 42703C 802A966C 00000000 */   nop
.L802A9670:
/* 427040 802A9670 82420085 */  lb        $v0, 0x85($s2)
/* 427044 802A9674 82430084 */  lb        $v1, 0x84($s2)
/* 427048 802A9678 00021080 */  sll       $v0, $v0, 2
/* 42704C 802A967C 3C01802B */  lui       $at, %hi(D_802A9964_427334)
/* 427050 802A9680 00220821 */  addu      $at, $at, $v0
/* 427054 802A9684 8C229964 */  lw        $v0, %lo(D_802A9964_427334)($at)
/* 427058 802A9688 3C05802B */  lui       $a1, %hi(D_802A9964_427334)
/* 42705C 802A968C 24A59964 */  addiu     $a1, $a1, %lo(D_802A9964_427334)
/* 427060 802A9690 0062182A */  slt       $v1, $v1, $v0
/* 427064 802A9694 92420085 */  lbu       $v0, 0x85($s2)
/* 427068 802A9698 1460001E */  bnez      $v1, .L802A9714
/* 42706C 802A969C 24420001 */   addiu    $v0, $v0, 1
/* 427070 802A96A0 080AA5C5 */  j         .L802A9714
/* 427074 802A96A4 A2420085 */   sb       $v0, 0x85($s2)
.L802A96A8:
/* 427078 802A96A8 82420085 */  lb        $v0, 0x85($s2)
/* 42707C 802A96AC 82430084 */  lb        $v1, 0x84($s2)
/* 427080 802A96B0 00021080 */  sll       $v0, $v0, 2
/* 427084 802A96B4 3C01802B */  lui       $at, %hi(D_802A9974_427344)
/* 427088 802A96B8 00220821 */  addu      $at, $at, $v0
/* 42708C 802A96BC 8C229974 */  lw        $v0, %lo(D_802A9974_427344)($at)
/* 427090 802A96C0 3C05802B */  lui       $a1, %hi(D_802A9974_427344)
/* 427094 802A96C4 24A59974 */  addiu     $a1, $a1, %lo(D_802A9974_427344)
/* 427098 802A96C8 0062182A */  slt       $v1, $v1, $v0
/* 42709C 802A96CC 92420085 */  lbu       $v0, 0x85($s2)
/* 4270A0 802A96D0 14600010 */  bnez      $v1, .L802A9714
/* 4270A4 802A96D4 24420001 */   addiu    $v0, $v0, 1
/* 4270A8 802A96D8 080AA5C5 */  j         .L802A9714
/* 4270AC 802A96DC A2420085 */   sb       $v0, 0x85($s2)
.L802A96E0:
/* 4270B0 802A96E0 82420085 */  lb        $v0, 0x85($s2)
/* 4270B4 802A96E4 82430084 */  lb        $v1, 0x84($s2)
/* 4270B8 802A96E8 00021080 */  sll       $v0, $v0, 2
/* 4270BC 802A96EC 3C01802B */  lui       $at, %hi(D_802A9988_427358)
/* 4270C0 802A96F0 00220821 */  addu      $at, $at, $v0
/* 4270C4 802A96F4 8C229988 */  lw        $v0, %lo(D_802A9988_427358)($at)
/* 4270C8 802A96F8 3C05802B */  lui       $a1, %hi(D_802A9988_427358)
/* 4270CC 802A96FC 24A59988 */  addiu     $a1, $a1, %lo(D_802A9988_427358)
/* 4270D0 802A9700 0062182A */  slt       $v1, $v1, $v0
/* 4270D4 802A9704 92420085 */  lbu       $v0, 0x85($s2)
/* 4270D8 802A9708 14600002 */  bnez      $v1, .L802A9714
/* 4270DC 802A970C 24420001 */   addiu    $v0, $v0, 1
/* 4270E0 802A9710 A2420085 */  sb        $v0, 0x85($s2)
.L802A9714:
/* 4270E4 802A9714 82420085 */  lb        $v0, 0x85($s2)
/* 4270E8 802A9718 92440085 */  lbu       $a0, 0x85($s2)
/* 4270EC 802A971C 18400009 */  blez      $v0, .L802A9744
/* 4270F0 802A9720 2442FFFF */   addiu    $v0, $v0, -1
/* 4270F4 802A9724 00021080 */  sll       $v0, $v0, 2
/* 4270F8 802A9728 00451021 */  addu      $v0, $v0, $a1
/* 4270FC 802A972C 82430084 */  lb        $v1, 0x84($s2)
/* 427100 802A9730 8C420000 */  lw        $v0, ($v0)
/* 427104 802A9734 0062182A */  slt       $v1, $v1, $v0
/* 427108 802A9738 10600002 */  beqz      $v1, .L802A9744
/* 42710C 802A973C 2482FFFF */   addiu    $v0, $a0, -1
/* 427110 802A9740 A2420085 */  sb        $v0, 0x85($s2)
.L802A9744:
/* 427114 802A9744 86220054 */  lh        $v0, 0x54($s1)
/* 427118 802A9748 96230054 */  lhu       $v1, 0x54($s1)
/* 42711C 802A974C 1440002E */  bnez      $v0, .L802A9808
/* 427120 802A9750 2462FFFF */   addiu    $v0, $v1, -1
/* 427124 802A9754 96220044 */  lhu       $v0, 0x44($s1)
/* 427128 802A9758 00021C00 */  sll       $v1, $v0, 0x10
/* 42712C 802A975C 00032403 */  sra       $a0, $v1, 0x10
/* 427130 802A9760 14800003 */  bnez      $a0, .L802A9770
/* 427134 802A9764 3C0251EB */   lui      $v0, 0x51eb
/* 427138 802A9768 080AA5E2 */  j         .L802A9788
/* 42713C 802A976C 2402FFFF */   addiu    $v0, $zero, -1
.L802A9770:
/* 427140 802A9770 3442851F */  ori       $v0, $v0, 0x851f
/* 427144 802A9774 00820018 */  mult      $a0, $v0
/* 427148 802A9778 00031FC3 */  sra       $v1, $v1, 0x1f
/* 42714C 802A977C 00004810 */  mfhi      $t1
/* 427150 802A9780 00091143 */  sra       $v0, $t1, 5
/* 427154 802A9784 00431023 */  subu      $v0, $v0, $v1
.L802A9788:
/* 427158 802A9788 A2420081 */  sb        $v0, 0x81($s2)
/* 42715C 802A978C 82220080 */  lb        $v0, 0x80($s1)
/* 427160 802A9790 2442FFFF */  addiu     $v0, $v0, -1
/* 427164 802A9794 00021040 */  sll       $v0, $v0, 1
/* 427168 802A9798 02221021 */  addu      $v0, $s1, $v0
/* 42716C 802A979C 84430074 */  lh        $v1, 0x74($v0)
/* 427170 802A97A0 82420081 */  lb        $v0, 0x81($s2)
/* 427174 802A97A4 0062102A */  slt       $v0, $v1, $v0
/* 427178 802A97A8 14400002 */  bnez      $v0, .L802A97B4
/* 42717C 802A97AC 24020001 */   addiu    $v0, $zero, 1
/* 427180 802A97B0 2402FFFE */  addiu     $v0, $zero, -2
.L802A97B4:
/* 427184 802A97B4 A2420086 */  sb        $v0, 0x86($s2)
/* 427188 802A97B8 82430081 */  lb        $v1, 0x81($s2)
/* 42718C 802A97BC 24020064 */  addiu     $v0, $zero, 0x64
/* 427190 802A97C0 14620004 */  bne       $v1, $v0, .L802A97D4
/* 427194 802A97C4 3C048000 */   lui      $a0, 0x8000
/* 427198 802A97C8 0C09A458 */  jal       func_80269160
/* 42719C 802A97CC 00000000 */   nop
/* 4271A0 802A97D0 3C048000 */  lui       $a0, 0x8000
.L802A97D4:
/* 4271A4 802A97D4 0C05271B */  jal       stop_sound
/* 4271A8 802A97D8 34840041 */   ori      $a0, $a0, 0x41
/* 4271AC 802A97DC 0C093EB1 */  jal       set_popup_duration
/* 4271B0 802A97E0 0000202D */   daddu    $a0, $zero, $zero
/* 4271B4 802A97E4 24020005 */  addiu     $v0, $zero, 5
/* 4271B8 802A97E8 A6220054 */  sh        $v0, 0x54($s1)
/* 4271BC 802A97EC 2402000C */  addiu     $v0, $zero, 0xc
/* 4271C0 802A97F0 080AA606 */  j         .L802A9818
/* 4271C4 802A97F4 A622004C */   sh       $v0, 0x4c($s1)
glabel L802A97F8_4271C8
/* 4271C8 802A97F8 86220054 */  lh        $v0, 0x54($s1)
/* 4271CC 802A97FC 96230054 */  lhu       $v1, 0x54($s1)
/* 4271D0 802A9800 10400003 */  beqz      $v0, .L802A9810
/* 4271D4 802A9804 2462FFFF */   addiu    $v0, $v1, -1
.L802A9808:
/* 4271D8 802A9808 080AA606 */  j         .L802A9818
/* 4271DC 802A980C A6220054 */   sh       $v0, 0x54($s1)
.L802A9810:
/* 4271E0 802A9810 0C09A327 */  jal       func_80268C9C
/* 4271E4 802A9814 00000000 */   nop
.L802A9818:
glabel L802A9818_4271E8
/* 4271E8 802A9818 8FBF0020 */  lw        $ra, 0x20($sp)
/* 4271EC 802A981C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 4271F0 802A9820 8FB20018 */  lw        $s2, 0x18($sp)
/* 4271F4 802A9824 8FB10014 */  lw        $s1, 0x14($sp)
/* 4271F8 802A9828 8FB00010 */  lw        $s0, 0x10($sp)
/* 4271FC 802A982C 03E00008 */  jr        $ra
/* 427200 802A9830 27BD0028 */   addiu    $sp, $sp, 0x28
