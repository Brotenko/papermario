.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8006847C
/* 4387C 8006847C 24020001 */  addiu     $v0, $zero, 1
/* 43880 80068480 8FAA0014 */  lw        $t2, 0x14($sp)
/* 43884 80068484 93AB0013 */  lbu       $t3, 0x13($sp)
/* 43888 80068488 8FAE0018 */  lw        $t6, 0x18($sp)
/* 4388C 8006848C 15600002 */  bnez      $t3, .L80068498
/* 43890 80068490 00007821 */   addu     $t7, $zero, $zero
/* 43894 80068494 8C820060 */  lw        $v0, 0x60($a0)
.L80068498:
/* 43898 80068498 00402021 */  addu      $a0, $v0, $zero
/* 4389C 8006849C 28820080 */  slti      $v0, $a0, 0x80
/* 438A0 800684A0 1040000A */  beqz      $v0, .L800684CC
/* 438A4 800684A4 00041040 */   sll      $v0, $a0, 1
/* 438A8 800684A8 24080003 */  addiu     $t0, $zero, 3
/* 438AC 800684AC 00451821 */  addu      $v1, $v0, $a1
.L800684B0:
/* 438B0 800684B0 94620000 */  lhu       $v0, ($v1)
/* 438B4 800684B4 10480006 */  beq       $v0, $t0, .L800684D0
/* 438B8 800684B8 24020080 */   addiu    $v0, $zero, 0x80
/* 438BC 800684BC 24840001 */  addiu     $a0, $a0, 1
/* 438C0 800684C0 28820080 */  slti      $v0, $a0, 0x80
/* 438C4 800684C4 1440FFFA */  bnez      $v0, .L800684B0
/* 438C8 800684C8 24630002 */   addiu    $v1, $v1, 2
.L800684CC:
/* 438CC 800684CC 24020080 */  addiu     $v0, $zero, 0x80
.L800684D0:
/* 438D0 800684D0 14820004 */  bne       $a0, $v0, .L800684E4
/* 438D4 800684D4 24030001 */   addiu    $v1, $zero, 1
/* 438D8 800684D8 2402FFFF */  addiu     $v0, $zero, -1
/* 438DC 800684DC 0801A163 */  j         .L8006858C
/* 438E0 800684E0 ACE20000 */   sw       $v0, ($a3)
.L800684E4:
/* 438E4 800684E4 AD430000 */  sw        $v1, ($t2)
/* 438E8 800684E8 00804021 */  addu      $t0, $a0, $zero
/* 438EC 800684EC 25040001 */  addiu     $a0, $t0, 1
/* 438F0 800684F0 0066182A */  slt       $v1, $v1, $a2
/* 438F4 800684F4 28820080 */  slti      $v0, $a0, 0x80
/* 438F8 800684F8 00621824 */  and       $v1, $v1, $v0
/* 438FC 800684FC 10600015 */  beqz      $v1, .L80068554
/* 43900 80068500 01006821 */   addu     $t5, $t0, $zero
/* 43904 80068504 240C0003 */  addiu     $t4, $zero, 3
/* 43908 80068508 00041040 */  sll       $v0, $a0, 1
/* 4390C 8006850C 00454821 */  addu      $t1, $v0, $a1
.L80068510:
/* 43910 80068510 95220000 */  lhu       $v0, ($t1)
/* 43914 80068514 144C0008 */  bne       $v0, $t4, .L80068538
/* 43918 80068518 00081040 */   sll      $v0, $t0, 1
/* 4391C 8006851C 00A21021 */  addu      $v0, $a1, $v0
/* 43920 80068520 A04B0000 */  sb        $t3, ($v0)
/* 43924 80068524 A0440001 */  sb        $a0, 1($v0)
/* 43928 80068528 8D420000 */  lw        $v0, ($t2)
/* 4392C 8006852C 00804021 */  addu      $t0, $a0, $zero
/* 43930 80068530 24420001 */  addiu     $v0, $v0, 1
/* 43934 80068534 AD420000 */  sw        $v0, ($t2)
.L80068538:
/* 43938 80068538 8D430000 */  lw        $v1, ($t2)
/* 4393C 8006853C 24840001 */  addiu     $a0, $a0, 1
/* 43940 80068540 28820080 */  slti      $v0, $a0, 0x80
/* 43944 80068544 0066182A */  slt       $v1, $v1, $a2
/* 43948 80068548 00621824 */  and       $v1, $v1, $v0
/* 4394C 8006854C 1460FFF0 */  bnez      $v1, .L80068510
/* 43950 80068550 25290002 */   addiu    $t1, $t1, 2
.L80068554:
/* 43954 80068554 24020080 */  addiu     $v0, $zero, 0x80
/* 43958 80068558 14820007 */  bne       $a0, $v0, .L80068578
/* 4395C 8006855C ACED0000 */   sw       $t5, ($a3)
/* 43960 80068560 8D420000 */  lw        $v0, ($t2)
/* 43964 80068564 0046102A */  slt       $v0, $v0, $a2
/* 43968 80068568 50400004 */  beql      $v0, $zero, .L8006857C
/* 4396C 8006856C 00081040 */   sll      $v0, $t0, 1
/* 43970 80068570 0801A163 */  j         .L8006858C
/* 43974 80068574 ADC80000 */   sw       $t0, ($t6)
.L80068578:
/* 43978 80068578 00081040 */  sll       $v0, $t0, 1
.L8006857C:
/* 4397C 8006857C 00A21021 */  addu      $v0, $a1, $v0
/* 43980 80068580 24030001 */  addiu     $v1, $zero, 1
/* 43984 80068584 A4430000 */  sh        $v1, ($v0)
/* 43988 80068588 ADC00000 */  sw        $zero, ($t6)
.L8006858C:
/* 4398C 8006858C 03E00008 */  jr        $ra
/* 43990 80068590 01E01021 */   addu     $v0, $t7, $zero
/* 43994 80068594 00000000 */  nop
/* 43998 80068598 00000000 */  nop
/* 4399C 8006859C 00000000 */  nop
