.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80067DE0
/* 431E0 80067DE0 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 431E4 80067DE4 AFB10014 */  sw        $s1, 0x14($sp)
/* 431E8 80067DE8 00808821 */  addu      $s1, $a0, $zero
/* 431EC 80067DEC AFB3001C */  sw        $s3, 0x1c($sp)
/* 431F0 80067DF0 00A09821 */  addu      $s3, $a1, $zero
/* 431F4 80067DF4 AFBF0020 */  sw        $ra, 0x20($sp)
/* 431F8 80067DF8 AFB20018 */  sw        $s2, 0x18($sp)
/* 431FC 80067DFC AFB00010 */  sw        $s0, 0x10($sp)
/* 43200 80067E00 8E220008 */  lw        $v0, 8($s1)
/* 43204 80067E04 8E230000 */  lw        $v1, ($s1)
/* 43208 80067E08 3C04800B */  lui       $a0, %hi(D_800B0B10)
/* 4320C 80067E0C 24840B10 */  addiu     $a0, $a0, %lo(D_800B0B10)
/* 43210 80067E10 00021180 */  sll       $v0, $v0, 6
/* 43214 80067E14 30630008 */  andi      $v1, $v1, 8
/* 43218 80067E18 14600003 */  bnez      $v1, .L80067E28
/* 4321C 80067E1C 00449021 */   addu     $s2, $v0, $a0
/* 43220 80067E20 08019FC2 */  j         .L80067F08
/* 43224 80067E24 24020005 */   addiu    $v0, $zero, 5
.L80067E28:
/* 43228 80067E28 0C019765 */  jal       func_80065D94
/* 4322C 80067E2C 00000000 */   nop
/* 43230 80067E30 8E220008 */  lw        $v0, 8($s1)
/* 43234 80067E34 24030001 */  addiu     $v1, $zero, 1
/* 43238 80067E38 00021180 */  sll       $v0, $v0, 6
/* 4323C 80067E3C 3C01800B */  lui       $at, %hi(D_800B0B4C)
/* 43240 80067E40 00220821 */  addu      $at, $at, $v0
/* 43244 80067E44 AC230B4C */  sw        $v1, %lo(D_800B0B4C)($at)
/* 43248 80067E48 8E220008 */  lw        $v0, 8($s1)
/* 4324C 80067E4C 2403001F */  addiu     $v1, $zero, 0x1f
/* 43250 80067E50 02429021 */  addu      $s2, $s2, $v0
/* 43254 80067E54 2642001F */  addiu     $v0, $s2, 0x1f
.L80067E58:
/* 43258 80067E58 A0530006 */  sb        $s3, 6($v0)
/* 4325C 80067E5C 2463FFFF */  addiu     $v1, $v1, -1
/* 43260 80067E60 0461FFFD */  bgez      $v1, .L80067E58
/* 43264 80067E64 2442FFFF */   addiu    $v0, $v0, -1
/* 43268 80067E68 8E250008 */  lw        $a1, 8($s1)
/* 4326C 80067E6C 24040001 */  addiu     $a0, $zero, 1
/* 43270 80067E70 240200FE */  addiu     $v0, $zero, 0xfe
/* 43274 80067E74 3C10800B */  lui       $s0, %hi(D_800B0B10)
/* 43278 80067E78 26100B10 */  addiu     $s0, $s0, %lo(D_800B0B10)
/* 4327C 80067E7C 3C01800A */  lui       $at, %hi(D_8009A5FC)
/* 43280 80067E80 A022A5FC */  sb        $v0, %lo(D_8009A5FC)($at)
/* 43284 80067E84 00052980 */  sll       $a1, $a1, 6
/* 43288 80067E88 0C019724 */  jal       func_80065C90
/* 4328C 80067E8C 00B02821 */   addu     $a1, $a1, $s0
/* 43290 80067E90 8E240004 */  lw        $a0, 4($s1)
/* 43294 80067E94 00002821 */  addu      $a1, $zero, $zero
/* 43298 80067E98 0C0195B0 */  jal       func_800656C0
/* 4329C 80067E9C 24060001 */   addiu    $a2, $zero, 1
/* 432A0 80067EA0 8E250008 */  lw        $a1, 8($s1)
/* 432A4 80067EA4 00002021 */  addu      $a0, $zero, $zero
/* 432A8 80067EA8 00052980 */  sll       $a1, $a1, 6
/* 432AC 80067EAC 0C019724 */  jal       func_80065C90
/* 432B0 80067EB0 00B02821 */   addu     $a1, $a1, $s0
/* 432B4 80067EB4 8E240004 */  lw        $a0, 4($s1)
/* 432B8 80067EB8 00002821 */  addu      $a1, $zero, $zero
/* 432BC 80067EBC 0C0195B0 */  jal       func_800656C0
/* 432C0 80067EC0 24060001 */   addiu    $a2, $zero, 1
/* 432C4 80067EC4 92420002 */  lbu       $v0, 2($s2)
/* 432C8 80067EC8 305000C0 */  andi      $s0, $v0, 0xc0
/* 432CC 80067ECC 1600000B */  bnez      $s0, .L80067EFC
/* 432D0 80067ED0 00000000 */   nop
/* 432D4 80067ED4 16600006 */  bnez      $s3, .L80067EF0
/* 432D8 80067ED8 240200EB */   addiu    $v0, $zero, 0xeb
/* 432DC 80067EDC 92420026 */  lbu       $v0, 0x26($s2)
/* 432E0 80067EE0 10400006 */  beqz      $v0, .L80067EFC
/* 432E4 80067EE4 00000000 */   nop
/* 432E8 80067EE8 08019FBF */  j         .L80067EFC
/* 432EC 80067EEC 24100004 */   addiu    $s0, $zero, 4
.L80067EF0:
/* 432F0 80067EF0 92430026 */  lbu       $v1, 0x26($s2)
/* 432F4 80067EF4 54620001 */  bnel      $v1, $v0, .L80067EFC
/* 432F8 80067EF8 24100004 */   addiu    $s0, $zero, 4
.L80067EFC:
/* 432FC 80067EFC 0C019780 */  jal       func_80065E00
/* 43300 80067F00 00000000 */   nop
/* 43304 80067F04 02001021 */  addu      $v0, $s0, $zero
.L80067F08:
/* 43308 80067F08 8FBF0020 */  lw        $ra, 0x20($sp)
/* 4330C 80067F0C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 43310 80067F10 8FB20018 */  lw        $s2, 0x18($sp)
/* 43314 80067F14 8FB10014 */  lw        $s1, 0x14($sp)
/* 43318 80067F18 8FB00010 */  lw        $s0, 0x10($sp)
/* 4331C 80067F1C 03E00008 */  jr        $ra
/* 43320 80067F20 27BD0028 */   addiu    $sp, $sp, 0x28
