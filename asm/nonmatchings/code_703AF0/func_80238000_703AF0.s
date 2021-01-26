.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80238000_703AF0
/* 703AF0 80238000 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 703AF4 80238004 AFB3002C */  sw        $s3, 0x2c($sp)
/* 703AF8 80238008 3C13800E */  lui       $s3, %hi(gBattleStatus)
/* 703AFC 8023800C 2673C070 */  addiu     $s3, $s3, %lo(gBattleStatus)
/* 703B00 80238010 AFBF0030 */  sw        $ra, 0x30($sp)
/* 703B04 80238014 AFB20028 */  sw        $s2, 0x28($sp)
/* 703B08 80238018 AFB10024 */  sw        $s1, 0x24($sp)
/* 703B0C 8023801C AFB00020 */  sw        $s0, 0x20($sp)
/* 703B10 80238020 F7B80048 */  sdc1      $f24, 0x48($sp)
/* 703B14 80238024 F7B60040 */  sdc1      $f22, 0x40($sp)
/* 703B18 80238028 F7B40038 */  sdc1      $f20, 0x38($sp)
/* 703B1C 8023802C 8E7200DC */  lw        $s2, 0xdc($s3)
/* 703B20 80238030 10A00022 */  beqz      $a1, .L802380BC
/* 703B24 80238034 24110005 */   addiu    $s1, $zero, 5
/* 703B28 80238038 3C013F80 */  lui       $at, 0x3f80
/* 703B2C 8023803C 4481A000 */  mtc1      $at, $f20
/* 703B30 80238040 AFB10014 */  sw        $s1, 0x14($sp)
/* 703B34 80238044 AFA00018 */  sw        $zero, 0x18($sp)
/* 703B38 80238048 E7B40010 */  swc1      $f20, 0x10($sp)
/* 703B3C 8023804C 8E450144 */  lw        $a1, 0x144($s2)
/* 703B40 80238050 8E460148 */  lw        $a2, 0x148($s2)
/* 703B44 80238054 8E47014C */  lw        $a3, 0x14c($s2)
/* 703B48 80238058 24100001 */  addiu     $s0, $zero, 1
/* 703B4C 8023805C 3C018024 */  lui       $at, %hi(D_8023C1BC_707CAC)
/* 703B50 80238060 AC30C1BC */  sw        $s0, %lo(D_8023C1BC_707CAC)($at)
/* 703B54 80238064 3C018024 */  lui       $at, %hi(D_8023C1C0_707CB0)
/* 703B58 80238068 AC20C1C0 */  sw        $zero, %lo(D_8023C1C0_707CB0)($at)
/* 703B5C 8023806C 3C018024 */  lui       $at, %hi(D_8023C1C4_707CB4)
/* 703B60 80238070 AC30C1C4 */  sw        $s0, %lo(D_8023C1C4_707CB4)($at)
/* 703B64 80238074 3C018024 */  lui       $at, %hi(D_8023C1C8_707CB8)
/* 703B68 80238078 AC20C1C8 */  sw        $zero, %lo(D_8023C1C8_707CB8)($at)
/* 703B6C 8023807C 0C01C8EC */  jal       func_800723B0
/* 703B70 80238080 0000202D */   daddu    $a0, $zero, $zero
/* 703B74 80238084 E7B40010 */  swc1      $f20, 0x10($sp)
/* 703B78 80238088 AFB10014 */  sw        $s1, 0x14($sp)
/* 703B7C 8023808C AFA00018 */  sw        $zero, 0x18($sp)
/* 703B80 80238090 8E450144 */  lw        $a1, 0x144($s2)
/* 703B84 80238094 3C06C47A */  lui       $a2, 0xc47a
/* 703B88 80238098 8E47014C */  lw        $a3, 0x14c($s2)
/* 703B8C 8023809C 3C018024 */  lui       $at, %hi(D_8023C1CC_707CBC)
/* 703B90 802380A0 AC22C1CC */  sw        $v0, %lo(D_8023C1CC_707CBC)($at)
/* 703B94 802380A4 0C01C8EC */  jal       func_800723B0
/* 703B98 802380A8 0200202D */   daddu    $a0, $s0, $zero
/* 703B9C 802380AC 3C018024 */  lui       $at, %hi(D_8023C1D0_707CC0)
/* 703BA0 802380B0 AC22C1D0 */  sw        $v0, %lo(D_8023C1D0_707CC0)($at)
/* 703BA4 802380B4 3C018024 */  lui       $at, %hi(D_8023C1B8_707CA8)
/* 703BA8 802380B8 AC30C1B8 */  sw        $s0, %lo(D_8023C1B8_707CA8)($at)
.L802380BC:
/* 703BAC 802380BC 3C028024 */  lui       $v0, %hi(D_8023C1B8_707CA8)
/* 703BB0 802380C0 8C42C1B8 */  lw        $v0, %lo(D_8023C1B8_707CA8)($v0)
/* 703BB4 802380C4 104000A0 */  beqz      $v0, .L80238348
/* 703BB8 802380C8 24020002 */   addiu    $v0, $zero, 2
/* 703BBC 802380CC 3C028024 */  lui       $v0, %hi(D_8023C1BC_707CAC)
/* 703BC0 802380D0 8C42C1BC */  lw        $v0, %lo(D_8023C1BC_707CAC)($v0)
/* 703BC4 802380D4 1040000C */  beqz      $v0, .L80238108
/* 703BC8 802380D8 00000000 */   nop
/* 703BCC 802380DC 3C108024 */  lui       $s0, %hi(D_8023C1C0_707CB0)
/* 703BD0 802380E0 2610C1C0 */  addiu     $s0, $s0, %lo(D_8023C1C0_707CB0)
/* 703BD4 802380E4 8E020000 */  lw        $v0, ($s0)
/* 703BD8 802380E8 2442000F */  addiu     $v0, $v0, 0xf
/* 703BDC 802380EC 44826000 */  mtc1      $v0, $f12
/* 703BE0 802380F0 00000000 */  nop
/* 703BE4 802380F4 46806320 */  cvt.s.w   $f12, $f12
/* 703BE8 802380F8 0C00A6C9 */  jal       clamp_angle
/* 703BEC 802380FC AE020000 */   sw       $v0, ($s0)
/* 703BF0 80238100 4600018D */  trunc.w.s $f6, $f0
/* 703BF4 80238104 E6060000 */  swc1      $f6, ($s0)
.L80238108:
/* 703BF8 80238108 3C0140C9 */  lui       $at, 0x40c9
/* 703BFC 8023810C 34210FD0 */  ori       $at, $at, 0xfd0
/* 703C00 80238110 44810000 */  mtc1      $at, $f0
/* 703C04 80238114 3C018024 */  lui       $at, %hi(D_8023C1C0_707CB0)
/* 703C08 80238118 C42CC1C0 */  lwc1      $f12, %lo(D_8023C1C0_707CB0)($at)
/* 703C0C 8023811C 46806320 */  cvt.s.w   $f12, $f12
/* 703C10 80238120 46006302 */  mul.s     $f12, $f12, $f0
/* 703C14 80238124 00000000 */  nop
/* 703C18 80238128 3C0143B4 */  lui       $at, 0x43b4
/* 703C1C 8023812C 44810000 */  mtc1      $at, $f0
/* 703C20 80238130 0C00A85B */  jal       sin_rad
/* 703C24 80238134 46006303 */   div.s    $f12, $f12, $f0
/* 703C28 80238138 3C014040 */  lui       $at, 0x4040
/* 703C2C 8023813C 44811000 */  mtc1      $at, $f2
/* 703C30 80238140 00000000 */  nop
/* 703C34 80238144 46020002 */  mul.s     $f0, $f0, $f2
/* 703C38 80238148 00000000 */  nop
/* 703C3C 8023814C 86420152 */  lh        $v0, 0x152($s2)
/* 703C40 80238150 3C014140 */  lui       $at, 0x4140
/* 703C44 80238154 44812000 */  mtc1      $at, $f4
/* 703C48 80238158 44821000 */  mtc1      $v0, $f2
/* 703C4C 8023815C 00000000 */  nop
/* 703C50 80238160 468010A0 */  cvt.s.w   $f2, $f2
/* 703C54 80238164 4600018D */  trunc.w.s $f6, $f0
/* 703C58 80238168 44033000 */  mfc1      $v1, $f6
/* 703C5C 8023816C 00000000 */  nop
/* 703C60 80238170 00031600 */  sll       $v0, $v1, 0x18
/* 703C64 80238174 C6400148 */  lwc1      $f0, 0x148($s2)
/* 703C68 80238178 00021603 */  sra       $v0, $v0, 0x18
/* 703C6C 8023817C A243019A */  sb        $v1, 0x19a($s2)
/* 703C70 80238180 46020000 */  add.s     $f0, $f0, $f2
/* 703C74 80238184 44821000 */  mtc1      $v0, $f2
/* 703C78 80238188 00000000 */  nop
/* 703C7C 8023818C 468010A0 */  cvt.s.w   $f2, $f2
/* 703C80 80238190 86420150 */  lh        $v0, 0x150($s2)
/* 703C84 80238194 46020000 */  add.s     $f0, $f0, $f2
/* 703C88 80238198 44821000 */  mtc1      $v0, $f2
/* 703C8C 8023819C 00000000 */  nop
/* 703C90 802381A0 468010A0 */  cvt.s.w   $f2, $f2
/* 703C94 802381A4 8E620004 */  lw        $v0, 4($s3)
/* 703C98 802381A8 86430154 */  lh        $v1, 0x154($s2)
/* 703C9C 802381AC 30420014 */  andi      $v0, $v0, 0x14
/* 703CA0 802381B0 46040580 */  add.s     $f22, $f0, $f4
/* 703CA4 802381B4 C6400144 */  lwc1      $f0, 0x144($s2)
/* 703CA8 802381B8 44832000 */  mtc1      $v1, $f4
/* 703CAC 802381BC 00000000 */  nop
/* 703CB0 802381C0 46802120 */  cvt.s.w   $f4, $f4
/* 703CB4 802381C4 46020500 */  add.s     $f20, $f0, $f2
/* 703CB8 802381C8 C640014C */  lwc1      $f0, 0x14c($s2)
/* 703CBC 802381CC 24030004 */  addiu     $v1, $zero, 4
/* 703CC0 802381D0 14430003 */  bne       $v0, $v1, .L802381E0
/* 703CC4 802381D4 46040600 */   add.s    $f24, $f0, $f4
/* 703CC8 802381D8 3C01C47A */  lui       $at, 0xc47a
/* 703CCC 802381DC 4481B000 */  mtc1      $at, $f22
.L802381E0:
/* 703CD0 802381E0 3C028024 */  lui       $v0, %hi(D_8023C1C4_707CB4)
/* 703CD4 802381E4 8C42C1C4 */  lw        $v0, %lo(D_8023C1C4_707CB4)($v0)
/* 703CD8 802381E8 10400044 */  beqz      $v0, .L802382FC
/* 703CDC 802381EC 00000000 */   nop
/* 703CE0 802381F0 3C038024 */  lui       $v1, %hi(D_8023C1C8_707CB8)
/* 703CE4 802381F4 8C63C1C8 */  lw        $v1, %lo(D_8023C1C8_707CB8)($v1)
/* 703CE8 802381F8 10600005 */  beqz      $v1, .L80238210
/* 703CEC 802381FC 24020001 */   addiu    $v0, $zero, 1
/* 703CF0 80238200 1062001D */  beq       $v1, $v0, .L80238278
/* 703CF4 80238204 0000102D */   daddu    $v0, $zero, $zero
/* 703CF8 80238208 0808E0D2 */  j         .L80238348
/* 703CFC 8023820C 00000000 */   nop
.L80238210:
/* 703D00 80238210 3C108024 */  lui       $s0, %hi(D_8023C1CC_707CBC)
/* 703D04 80238214 2610C1CC */  addiu     $s0, $s0, %lo(D_8023C1CC_707CBC)
/* 703D08 80238218 8E020000 */  lw        $v0, ($s0)
/* 703D0C 8023821C 1440000C */  bnez      $v0, .L80238250
/* 703D10 80238220 0000202D */   daddu    $a0, $zero, $zero
/* 703D14 80238224 4405A000 */  mfc1      $a1, $f20
/* 703D18 80238228 4406B000 */  mfc1      $a2, $f22
/* 703D1C 8023822C 4407C000 */  mfc1      $a3, $f24
/* 703D20 80238230 3C013F80 */  lui       $at, 0x3f80
/* 703D24 80238234 44810000 */  mtc1      $at, $f0
/* 703D28 80238238 24020005 */  addiu     $v0, $zero, 5
/* 703D2C 8023823C AFA20014 */  sw        $v0, 0x14($sp)
/* 703D30 80238240 AFA00018 */  sw        $zero, 0x18($sp)
/* 703D34 80238244 0C01C8EC */  jal       func_800723B0
/* 703D38 80238248 E7A00010 */   swc1     $f0, 0x10($sp)
/* 703D3C 8023824C AE020000 */  sw        $v0, ($s0)
.L80238250:
/* 703D40 80238250 3C048024 */  lui       $a0, %hi(D_8023C1D0_707CC0)
/* 703D44 80238254 2484C1D0 */  addiu     $a0, $a0, %lo(D_8023C1D0_707CC0)
/* 703D48 80238258 8C830000 */  lw        $v1, ($a0)
/* 703D4C 8023825C 1060001F */  beqz      $v1, .L802382DC
/* 703D50 80238260 00000000 */   nop
/* 703D54 80238264 8C620000 */  lw        $v0, ($v1)
/* 703D58 80238268 AC800000 */  sw        $zero, ($a0)
/* 703D5C 8023826C 34420010 */  ori       $v0, $v0, 0x10
/* 703D60 80238270 0808E0B7 */  j         .L802382DC
/* 703D64 80238274 AC620000 */   sw       $v0, ($v1)
.L80238278:
/* 703D68 80238278 3C048024 */  lui       $a0, %hi(D_8023C1CC_707CBC)
/* 703D6C 8023827C 2484C1CC */  addiu     $a0, $a0, %lo(D_8023C1CC_707CBC)
/* 703D70 80238280 8C830000 */  lw        $v1, ($a0)
/* 703D74 80238284 10600005 */  beqz      $v1, .L8023829C
/* 703D78 80238288 00000000 */   nop
/* 703D7C 8023828C 8C620000 */  lw        $v0, ($v1)
/* 703D80 80238290 AC800000 */  sw        $zero, ($a0)
/* 703D84 80238294 34420010 */  ori       $v0, $v0, 0x10
/* 703D88 80238298 AC620000 */  sw        $v0, ($v1)
.L8023829C:
/* 703D8C 8023829C 3C108024 */  lui       $s0, %hi(D_8023C1D0_707CC0)
/* 703D90 802382A0 2610C1D0 */  addiu     $s0, $s0, %lo(D_8023C1D0_707CC0)
/* 703D94 802382A4 8E020000 */  lw        $v0, ($s0)
/* 703D98 802382A8 1440000C */  bnez      $v0, .L802382DC
/* 703D9C 802382AC 24040001 */   addiu    $a0, $zero, 1
/* 703DA0 802382B0 4405A000 */  mfc1      $a1, $f20
/* 703DA4 802382B4 4406B000 */  mfc1      $a2, $f22
/* 703DA8 802382B8 4407C000 */  mfc1      $a3, $f24
/* 703DAC 802382BC 3C013F80 */  lui       $at, 0x3f80
/* 703DB0 802382C0 44810000 */  mtc1      $at, $f0
/* 703DB4 802382C4 24020005 */  addiu     $v0, $zero, 5
/* 703DB8 802382C8 AFA20014 */  sw        $v0, 0x14($sp)
/* 703DBC 802382CC AFA00018 */  sw        $zero, 0x18($sp)
/* 703DC0 802382D0 0C01C8EC */  jal       func_800723B0
/* 703DC4 802382D4 E7A00010 */   swc1     $f0, 0x10($sp)
/* 703DC8 802382D8 AE020000 */  sw        $v0, ($s0)
.L802382DC:
/* 703DCC 802382DC 8E030000 */  lw        $v1, ($s0)
/* 703DD0 802382E0 8C62000C */  lw        $v0, 0xc($v1)
/* 703DD4 802382E4 E4540004 */  swc1      $f20, 4($v0)
/* 703DD8 802382E8 8C62000C */  lw        $v0, 0xc($v1)
/* 703DDC 802382EC E4560008 */  swc1      $f22, 8($v0)
/* 703DE0 802382F0 8C62000C */  lw        $v0, 0xc($v1)
/* 703DE4 802382F4 0808E0D1 */  j         .L80238344
/* 703DE8 802382F8 E458000C */   swc1     $f24, 0xc($v0)
.L802382FC:
/* 703DEC 802382FC 3C048024 */  lui       $a0, %hi(D_8023C1CC_707CBC)
/* 703DF0 80238300 2484C1CC */  addiu     $a0, $a0, %lo(D_8023C1CC_707CBC)
/* 703DF4 80238304 8C830000 */  lw        $v1, ($a0)
/* 703DF8 80238308 10600005 */  beqz      $v1, .L80238320
/* 703DFC 8023830C 00000000 */   nop
/* 703E00 80238310 8C620000 */  lw        $v0, ($v1)
/* 703E04 80238314 AC800000 */  sw        $zero, ($a0)
/* 703E08 80238318 34420010 */  ori       $v0, $v0, 0x10
/* 703E0C 8023831C AC620000 */  sw        $v0, ($v1)
.L80238320:
/* 703E10 80238320 3C048024 */  lui       $a0, %hi(D_8023C1D0_707CC0)
/* 703E14 80238324 2484C1D0 */  addiu     $a0, $a0, %lo(D_8023C1D0_707CC0)
/* 703E18 80238328 8C830000 */  lw        $v1, ($a0)
/* 703E1C 8023832C 10600006 */  beqz      $v1, .L80238348
/* 703E20 80238330 0000102D */   daddu    $v0, $zero, $zero
/* 703E24 80238334 8C620000 */  lw        $v0, ($v1)
/* 703E28 80238338 AC800000 */  sw        $zero, ($a0)
/* 703E2C 8023833C 34420010 */  ori       $v0, $v0, 0x10
/* 703E30 80238340 AC620000 */  sw        $v0, ($v1)
.L80238344:
/* 703E34 80238344 0000102D */  daddu     $v0, $zero, $zero
.L80238348:
/* 703E38 80238348 8FBF0030 */  lw        $ra, 0x30($sp)
/* 703E3C 8023834C 8FB3002C */  lw        $s3, 0x2c($sp)
/* 703E40 80238350 8FB20028 */  lw        $s2, 0x28($sp)
/* 703E44 80238354 8FB10024 */  lw        $s1, 0x24($sp)
/* 703E48 80238358 8FB00020 */  lw        $s0, 0x20($sp)
/* 703E4C 8023835C D7B80048 */  ldc1      $f24, 0x48($sp)
/* 703E50 80238360 D7B60040 */  ldc1      $f22, 0x40($sp)
/* 703E54 80238364 D7B40038 */  ldc1      $f20, 0x38($sp)
/* 703E58 80238368 03E00008 */  jr        $ra
/* 703E5C 8023836C 27BD0050 */   addiu    $sp, $sp, 0x50
