.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel btl_state_update_partner_striking_first
/* 176A70 80248190 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 176A74 80248194 AFB50024 */  sw        $s5, 0x24($sp)
/* 176A78 80248198 3C15800E */  lui       $s5, %hi(gBattleStatus)
/* 176A7C 8024819C 26B5C070 */  addiu     $s5, $s5, %lo(gBattleStatus)
/* 176A80 802481A0 AFB20018 */  sw        $s2, 0x18($sp)
/* 176A84 802481A4 3C12800E */  lui       $s2, %hi(gBattleState2)
/* 176A88 802481A8 2652C4DC */  addiu     $s2, $s2, %lo(gBattleState2)
/* 176A8C 802481AC AFB10014 */  sw        $s1, 0x14($sp)
/* 176A90 802481B0 24110001 */  addiu     $s1, $zero, 1
/* 176A94 802481B4 AFBF0028 */  sw        $ra, 0x28($sp)
/* 176A98 802481B8 AFB40020 */  sw        $s4, 0x20($sp)
/* 176A9C 802481BC AFB3001C */  sw        $s3, 0x1c($sp)
/* 176AA0 802481C0 AFB00010 */  sw        $s0, 0x10($sp)
/* 176AA4 802481C4 8EB000D8 */  lw        $s0, 0xd8($s5)
/* 176AA8 802481C8 8E430000 */  lw        $v1, ($s2)
/* 176AAC 802481CC 8EB400DC */  lw        $s4, 0xdc($s5)
/* 176AB0 802481D0 1071003E */  beq       $v1, $s1, .L802482CC
/* 176AB4 802481D4 28620002 */   slti     $v0, $v1, 2
/* 176AB8 802481D8 50400005 */  beql      $v0, $zero, .L802481F0
/* 176ABC 802481DC 24020002 */   addiu    $v0, $zero, 2
/* 176AC0 802481E0 10600009 */  beqz      $v1, .L80248208
/* 176AC4 802481E4 24040002 */   addiu    $a0, $zero, 2
/* 176AC8 802481E8 08092176 */  j         .L802485D8
/* 176ACC 802481EC 00000000 */   nop
.L802481F0:
/* 176AD0 802481F0 10620068 */  beq       $v1, $v0, .L80248394
/* 176AD4 802481F4 24020003 */   addiu    $v0, $zero, 3
/* 176AD8 802481F8 106200E1 */  beq       $v1, $v0, .L80248580
/* 176ADC 802481FC 0000982D */   daddu    $s3, $zero, $zero
/* 176AE0 80248200 08092176 */  j         .L802485D8
/* 176AE4 80248204 00000000 */   nop
.L80248208:
/* 176AE8 80248208 8E830008 */  lw        $v1, 8($s4)
/* 176AEC 8024820C 3C028011 */  lui       $v0, %hi(gPlayerData)
/* 176AF0 80248210 2442F290 */  addiu     $v0, $v0, %lo(gPlayerData)
/* 176AF4 80248214 3C01802A */  lui       $at, %hi(D_8029F254)
/* 176AF8 80248218 AC20F254 */  sw        $zero, %lo(D_8029F254)($at)
/* 176AFC 8024821C 80450012 */  lb        $a1, 0x12($v0)
/* 176B00 80248220 90630006 */  lbu       $v1, 6($v1)
/* 176B04 80248224 10A40005 */  beq       $a1, $a0, .L8024823C
/* 176B08 80248228 24020003 */   addiu    $v0, $zero, 3
/* 176B0C 8024822C 10A20006 */  beq       $a1, $v0, .L80248248
/* 176B10 80248230 24020005 */   addiu    $v0, $zero, 5
/* 176B14 80248234 0809209D */  j         .L80248274
/* 176B18 80248238 00000000 */   nop
.L8024823C:
/* 176B1C 8024823C 24020005 */  addiu     $v0, $zero, 5
/* 176B20 80248240 08092093 */  j         .L8024824C
/* 176B24 80248244 24630089 */   addiu    $v1, $v1, 0x89
.L80248248:
/* 176B28 80248248 2463008F */  addiu     $v1, $v1, 0x8f
.L8024824C:
/* 176B2C 8024824C A2A20178 */  sb        $v0, 0x178($s5)
/* 176B30 80248250 00031080 */  sll       $v0, $v1, 2
/* 176B34 80248254 00431021 */  addu      $v0, $v0, $v1
/* 176B38 80248258 00021080 */  sll       $v0, $v0, 2
/* 176B3C 8024825C A6A0017A */  sh        $zero, 0x17a($s5)
/* 176B40 80248260 A6A3017C */  sh        $v1, 0x17c($s5)
/* 176B44 80248264 3C018009 */  lui       $at, %hi(D_8008F064)
/* 176B48 80248268 00220821 */  addu      $at, $at, $v0
/* 176B4C 8024826C 8C22F064 */  lw        $v0, %lo(D_8008F064)($at)
/* 176B50 80248270 AEA20184 */  sw        $v0, 0x184($s5)
.L80248274:
/* 176B54 80248274 0C09A75B */  jal       get_actor
/* 176B58 80248278 24040200 */   addiu    $a0, $zero, 0x200
/* 176B5C 8024827C 0040802D */  daddu     $s0, $v0, $zero
/* 176B60 80248280 8E0201C8 */  lw        $v0, 0x1c8($s0)
/* 176B64 80248284 1040000C */  beqz      $v0, .L802482B8
/* 176B68 80248288 2405000A */   addiu    $a1, $zero, 0xa
/* 176B6C 8024828C 24060020 */  addiu     $a2, $zero, 0x20
/* 176B70 80248290 0040202D */  daddu     $a0, $v0, $zero
/* 176B74 80248294 24020038 */  addiu     $v0, $zero, 0x38
/* 176B78 80248298 0C0B0CF8 */  jal       start_script
/* 176B7C 8024829C A20201F0 */   sb       $v0, 0x1f0($s0)
/* 176B80 802482A0 0040202D */  daddu     $a0, $v0, $zero
/* 176B84 802482A4 AE0401D8 */  sw        $a0, 0x1d8($s0)
/* 176B88 802482A8 8C820144 */  lw        $v0, 0x144($a0)
/* 176B8C 802482AC 86030192 */  lh        $v1, 0x192($s0)
/* 176B90 802482B0 AE0201E8 */  sw        $v0, 0x1e8($s0)
/* 176B94 802482B4 AC830148 */  sw        $v1, 0x148($a0)
.L802482B8:
/* 176B98 802482B8 24020001 */  addiu     $v0, $zero, 1
/* 176B9C 802482BC 3C01800E */  lui       $at, %hi(gBattleState2)
/* 176BA0 802482C0 AC22C4DC */  sw        $v0, %lo(gBattleState2)($at)
/* 176BA4 802482C4 08092176 */  j         .L802485D8
/* 176BA8 802482C8 00000000 */   nop
.L802482CC:
/* 176BAC 802482CC 0C098C0B */  jal       player_create_target_list
/* 176BB0 802482D0 0280202D */   daddu    $a0, $s4, $zero
/* 176BB4 802482D4 8283040D */  lb        $v1, 0x40d($s4)
/* 176BB8 802482D8 00031080 */  sll       $v0, $v1, 2
/* 176BBC 802482DC 00431021 */  addu      $v0, $v0, $v1
/* 176BC0 802482E0 00021080 */  sll       $v0, $v0, 2
/* 176BC4 802482E4 2442022C */  addiu     $v0, $v0, 0x22c
/* 176BC8 802482E8 02821021 */  addu      $v0, $s4, $v0
/* 176BCC 802482EC 94430000 */  lhu       $v1, ($v0)
/* 176BD0 802482F0 A6830428 */  sh        $v1, 0x428($s4)
/* 176BD4 802482F4 90420003 */  lbu       $v0, 3($v0)
/* 176BD8 802482F8 A2820426 */  sb        $v0, 0x426($s4)
/* 176BDC 802482FC 8EA40000 */  lw        $a0, ($s5)
/* 176BE0 80248300 2402FFFD */  addiu     $v0, $zero, -3
/* 176BE4 80248304 00822024 */  and       $a0, $a0, $v0
/* 176BE8 80248308 8EA20004 */  lw        $v0, 4($s5)
/* 176BEC 8024830C 3C030100 */  lui       $v1, 0x100
/* 176BF0 80248310 A2A0008C */  sb        $zero, 0x8c($s5)
/* 176BF4 80248314 A6A00180 */  sh        $zero, 0x180($s5)
/* 176BF8 80248318 A2A0019A */  sb        $zero, 0x19a($s5)
/* 176BFC 8024831C AEA40000 */  sw        $a0, ($s5)
/* 176C00 80248320 00431025 */  or        $v0, $v0, $v1
/* 176C04 80248324 AEA20004 */  sw        $v0, 4($s5)
/* 176C08 80248328 3C020008 */  lui       $v0, 8
/* 176C0C 8024832C 00822025 */  or        $a0, $a0, $v0
/* 176C10 80248330 0C03A6D5 */  jal       increment_status_menu_disabled
/* 176C14 80248334 AEA40000 */   sw       $a0, ($s5)
/* 176C18 80248338 0C093903 */  jal       func_8024E40C
/* 176C1C 8024833C 2404000A */   addiu    $a0, $zero, 0xa
/* 176C20 80248340 0C09390F */  jal       btl_cam_target_actor
/* 176C24 80248344 24040100 */   addiu    $a0, $zero, 0x100
/* 176C28 80248348 0C098F18 */  jal       reset_actor_turn_info
/* 176C2C 8024834C 00000000 */   nop
/* 176C30 80248350 2405000A */  addiu     $a1, $zero, 0xa
/* 176C34 80248354 A2B101A7 */  sb        $s1, 0x1a7($s5)
/* 176C38 80248358 8E8401C4 */  lw        $a0, 0x1c4($s4)
/* 176C3C 8024835C 0C0B0CF8 */  jal       start_script
/* 176C40 80248360 0000302D */   daddu    $a2, $zero, $zero
/* 176C44 80248364 0040202D */  daddu     $a0, $v0, $zero
/* 176C48 80248368 AE8401D4 */  sw        $a0, 0x1d4($s4)
/* 176C4C 8024836C 8C830144 */  lw        $v1, 0x144($a0)
/* 176C50 80248370 24020003 */  addiu     $v0, $zero, 3
/* 176C54 80248374 3C01802A */  lui       $at, %hi(D_8029F248)
/* 176C58 80248378 AC22F248 */  sw        $v0, %lo(D_8029F248)($at)
/* 176C5C 8024837C 24020002 */  addiu     $v0, $zero, 2
/* 176C60 80248380 AE420000 */  sw        $v0, ($s2)
/* 176C64 80248384 24020100 */  addiu     $v0, $zero, 0x100
/* 176C68 80248388 AE8301E4 */  sw        $v1, 0x1e4($s4)
/* 176C6C 8024838C 08092176 */  j         .L802485D8
/* 176C70 80248390 AC820148 */   sw       $v0, 0x148($a0)
.L80248394:
/* 176C74 80248394 3C03802A */  lui       $v1, %hi(D_8029F248)
/* 176C78 80248398 2463F248 */  addiu     $v1, $v1, %lo(D_8029F248)
/* 176C7C 8024839C 8C620000 */  lw        $v0, ($v1)
/* 176C80 802483A0 10400003 */  beqz      $v0, .L802483B0
/* 176C84 802483A4 2442FFFF */   addiu    $v0, $v0, -1
/* 176C88 802483A8 080920EE */  j         .L802483B8
/* 176C8C 802483AC AC620000 */   sw       $v0, ($v1)
.L802483B0:
/* 176C90 802483B0 3C01802A */  lui       $at, %hi(D_8029F254)
/* 176C94 802483B4 AC31F254 */  sw        $s1, %lo(D_8029F254)($at)
.L802483B8:
/* 176C98 802483B8 8E8201D4 */  lw        $v0, 0x1d4($s4)
/* 176C9C 802483BC 10400005 */  beqz      $v0, .L802483D4
/* 176CA0 802483C0 00000000 */   nop
/* 176CA4 802483C4 0C0B1059 */  jal       does_script_exist
/* 176CA8 802483C8 8E8401E4 */   lw       $a0, 0x1e4($s4)
/* 176CAC 802483CC 14400082 */  bnez      $v0, .L802485D8
/* 176CB0 802483D0 00000000 */   nop
.L802483D4:
/* 176CB4 802483D4 8E8201D8 */  lw        $v0, 0x1d8($s4)
/* 176CB8 802483D8 10400006 */  beqz      $v0, .L802483F4
/* 176CBC 802483DC AE8001D4 */   sw       $zero, 0x1d4($s4)
/* 176CC0 802483E0 8E8401E8 */  lw        $a0, 0x1e8($s4)
/* 176CC4 802483E4 0C0B1059 */  jal       does_script_exist
/* 176CC8 802483E8 00000000 */   nop
/* 176CCC 802483EC 1440007A */  bnez      $v0, .L802485D8
/* 176CD0 802483F0 00000000 */   nop
.L802483F4:
/* 176CD4 802483F4 AE8001D8 */  sw        $zero, 0x1d8($s4)
/* 176CD8 802483F8 8E0201D8 */  lw        $v0, 0x1d8($s0)
/* 176CDC 802483FC 50400007 */  beql      $v0, $zero, .L8024841C
/* 176CE0 80248400 AE0001D8 */   sw       $zero, 0x1d8($s0)
/* 176CE4 80248404 8E0401E8 */  lw        $a0, 0x1e8($s0)
/* 176CE8 80248408 0C0B1059 */  jal       does_script_exist
/* 176CEC 8024840C 00000000 */   nop
/* 176CF0 80248410 14400071 */  bnez      $v0, .L802485D8
/* 176CF4 80248414 00000000 */   nop
/* 176CF8 80248418 AE0001D8 */  sw        $zero, 0x1d8($s0)
.L8024841C:
/* 176CFC 8024841C 0000982D */  daddu     $s3, $zero, $zero
/* 176D00 80248420 0260882D */  daddu     $s1, $s3, $zero
/* 176D04 80248424 02A0902D */  daddu     $s2, $s5, $zero
.L80248428:
/* 176D08 80248428 8E5000E0 */  lw        $s0, 0xe0($s2)
/* 176D0C 8024842C 5200000B */  beql      $s0, $zero, .L8024845C
/* 176D10 80248430 26310001 */   addiu    $s1, $s1, 1
/* 176D14 80248434 8E0201D4 */  lw        $v0, 0x1d4($s0)
/* 176D18 80248438 50400008 */  beql      $v0, $zero, .L8024845C
/* 176D1C 8024843C 26310001 */   addiu    $s1, $s1, 1
/* 176D20 80248440 8E0401E4 */  lw        $a0, 0x1e4($s0)
/* 176D24 80248444 0C0B1059 */  jal       does_script_exist
/* 176D28 80248448 00000000 */   nop
/* 176D2C 8024844C 50400002 */  beql      $v0, $zero, .L80248458
/* 176D30 80248450 AE0001D4 */   sw       $zero, 0x1d4($s0)
/* 176D34 80248454 24130001 */  addiu     $s3, $zero, 1
.L80248458:
/* 176D38 80248458 26310001 */  addiu     $s1, $s1, 1
.L8024845C:
/* 176D3C 8024845C 2A220018 */  slti      $v0, $s1, 0x18
/* 176D40 80248460 1440FFF1 */  bnez      $v0, .L80248428
/* 176D44 80248464 26520004 */   addiu    $s2, $s2, 4
/* 176D48 80248468 1660005B */  bnez      $s3, .L802485D8
/* 176D4C 8024846C 0000882D */   daddu    $s1, $zero, $zero
/* 176D50 80248470 02A0902D */  daddu     $s2, $s5, $zero
.L80248474:
/* 176D54 80248474 8E5000E0 */  lw        $s0, 0xe0($s2)
/* 176D58 80248478 5200000B */  beql      $s0, $zero, .L802484A8
/* 176D5C 8024847C 26310001 */   addiu    $s1, $s1, 1
/* 176D60 80248480 8E0201D8 */  lw        $v0, 0x1d8($s0)
/* 176D64 80248484 50400008 */  beql      $v0, $zero, .L802484A8
/* 176D68 80248488 26310001 */   addiu    $s1, $s1, 1
/* 176D6C 8024848C 8E0401E8 */  lw        $a0, 0x1e8($s0)
/* 176D70 80248490 0C0B1059 */  jal       does_script_exist
/* 176D74 80248494 00000000 */   nop
/* 176D78 80248498 50400002 */  beql      $v0, $zero, .L802484A4
/* 176D7C 8024849C AE0001D8 */   sw       $zero, 0x1d8($s0)
/* 176D80 802484A0 24130001 */  addiu     $s3, $zero, 1
.L802484A4:
/* 176D84 802484A4 26310001 */  addiu     $s1, $s1, 1
.L802484A8:
/* 176D88 802484A8 2A220018 */  slti      $v0, $s1, 0x18
/* 176D8C 802484AC 1440FFF1 */  bnez      $v0, .L80248474
/* 176D90 802484B0 26520004 */   addiu    $s2, $s2, 4
/* 176D94 802484B4 16600048 */  bnez      $s3, .L802485D8
/* 176D98 802484B8 0000882D */   daddu    $s1, $zero, $zero
/* 176D9C 802484BC 3C04FFF7 */  lui       $a0, 0xfff7
/* 176DA0 802484C0 3484FFFF */  ori       $a0, $a0, 0xffff
/* 176DA4 802484C4 02A0182D */  daddu     $v1, $s5, $zero
.L802484C8:
/* 176DA8 802484C8 8C7000E0 */  lw        $s0, 0xe0($v1)
/* 176DAC 802484CC 12000004 */  beqz      $s0, .L802484E0
/* 176DB0 802484D0 26310001 */   addiu    $s1, $s1, 1
/* 176DB4 802484D4 8E020000 */  lw        $v0, ($s0)
/* 176DB8 802484D8 00441024 */  and       $v0, $v0, $a0
/* 176DBC 802484DC AE020000 */  sw        $v0, ($s0)
.L802484E0:
/* 176DC0 802484E0 2A220018 */  slti      $v0, $s1, 0x18
/* 176DC4 802484E4 1440FFF8 */  bnez      $v0, .L802484C8
/* 176DC8 802484E8 24630004 */   addiu    $v1, $v1, 4
/* 176DCC 802484EC 82A2008C */  lb        $v0, 0x8c($s5)
/* 176DD0 802484F0 14400039 */  bnez      $v0, .L802485D8
/* 176DD4 802484F4 00000000 */   nop
/* 176DD8 802484F8 0C03A6CC */  jal       decrement_status_menu_disabled
/* 176DDC 802484FC 00000000 */   nop
/* 176DE0 80248500 0C098D19 */  jal       btl_check_player_defeated
/* 176DE4 80248504 00000000 */   nop
/* 176DE8 80248508 14400033 */  bnez      $v0, .L802485D8
/* 176DEC 8024850C 00000000 */   nop
/* 176DF0 80248510 0C098D0D */  jal       btl_check_enemies_defeated
/* 176DF4 80248514 00000000 */   nop
/* 176DF8 80248518 1440002F */  bnez      $v0, .L802485D8
/* 176DFC 8024851C 00000000 */   nop
/* 176E00 80248520 0C09A75B */  jal       get_actor
/* 176E04 80248524 86840428 */   lh       $a0, 0x428($s4)
/* 176E08 80248528 0040802D */  daddu     $s0, $v0, $zero
/* 176E0C 8024852C 12000010 */  beqz      $s0, .L80248570
/* 176E10 80248530 24020003 */   addiu    $v0, $zero, 3
/* 176E14 80248534 8E0201C8 */  lw        $v0, 0x1c8($s0)
/* 176E18 80248538 1040000C */  beqz      $v0, .L8024856C
/* 176E1C 8024853C 2405000A */   addiu    $a1, $zero, 0xa
/* 176E20 80248540 24060020 */  addiu     $a2, $zero, 0x20
/* 176E24 80248544 0040202D */  daddu     $a0, $v0, $zero
/* 176E28 80248548 24020035 */  addiu     $v0, $zero, 0x35
/* 176E2C 8024854C 0C0B0CF8 */  jal       start_script
/* 176E30 80248550 A20201F0 */   sb       $v0, 0x1f0($s0)
/* 176E34 80248554 0040202D */  daddu     $a0, $v0, $zero
/* 176E38 80248558 AE0401D8 */  sw        $a0, 0x1d8($s0)
/* 176E3C 8024855C 8C820144 */  lw        $v0, 0x144($a0)
/* 176E40 80248560 86030192 */  lh        $v1, 0x192($s0)
/* 176E44 80248564 AE0201E8 */  sw        $v0, 0x1e8($s0)
/* 176E48 80248568 AC830148 */  sw        $v1, 0x148($a0)
.L8024856C:
/* 176E4C 8024856C 24020003 */  addiu     $v0, $zero, 3
.L80248570:
/* 176E50 80248570 3C01800E */  lui       $at, %hi(gBattleState2)
/* 176E54 80248574 AC22C4DC */  sw        $v0, %lo(gBattleState2)($at)
/* 176E58 80248578 08092176 */  j         .L802485D8
/* 176E5C 8024857C 00000000 */   nop
.L80248580:
/* 176E60 80248580 0260882D */  daddu     $s1, $s3, $zero
/* 176E64 80248584 02A0902D */  daddu     $s2, $s5, $zero
.L80248588:
/* 176E68 80248588 8E5000E0 */  lw        $s0, 0xe0($s2)
/* 176E6C 8024858C 5200000B */  beql      $s0, $zero, .L802485BC
/* 176E70 80248590 26310001 */   addiu    $s1, $s1, 1
/* 176E74 80248594 8E0201D8 */  lw        $v0, 0x1d8($s0)
/* 176E78 80248598 50400008 */  beql      $v0, $zero, .L802485BC
/* 176E7C 8024859C 26310001 */   addiu    $s1, $s1, 1
/* 176E80 802485A0 8E0401E8 */  lw        $a0, 0x1e8($s0)
/* 176E84 802485A4 0C0B1059 */  jal       does_script_exist
/* 176E88 802485A8 00000000 */   nop
/* 176E8C 802485AC 50400002 */  beql      $v0, $zero, .L802485B8
/* 176E90 802485B0 AE0001D8 */   sw       $zero, 0x1d8($s0)
/* 176E94 802485B4 24130001 */  addiu     $s3, $zero, 1
.L802485B8:
/* 176E98 802485B8 26310001 */  addiu     $s1, $s1, 1
.L802485BC:
/* 176E9C 802485BC 2A220018 */  slti      $v0, $s1, 0x18
/* 176EA0 802485C0 1440FFF1 */  bnez      $v0, .L80248588
/* 176EA4 802485C4 26520004 */   addiu    $s2, $s2, 4
/* 176EA8 802485C8 16600003 */  bnez      $s3, .L802485D8
/* 176EAC 802485CC 00000000 */   nop
/* 176EB0 802485D0 0C090464 */  jal       btl_set_state
/* 176EB4 802485D4 24040005 */   addiu    $a0, $zero, 5
.L802485D8:
/* 176EB8 802485D8 8FBF0028 */  lw        $ra, 0x28($sp)
/* 176EBC 802485DC 8FB50024 */  lw        $s5, 0x24($sp)
/* 176EC0 802485E0 8FB40020 */  lw        $s4, 0x20($sp)
/* 176EC4 802485E4 8FB3001C */  lw        $s3, 0x1c($sp)
/* 176EC8 802485E8 8FB20018 */  lw        $s2, 0x18($sp)
/* 176ECC 802485EC 8FB10014 */  lw        $s1, 0x14($sp)
/* 176ED0 802485F0 8FB00010 */  lw        $s0, 0x10($sp)
/* 176ED4 802485F4 03E00008 */  jr        $ra
/* 176ED8 802485F8 27BD0030 */   addiu    $sp, $sp, 0x30
