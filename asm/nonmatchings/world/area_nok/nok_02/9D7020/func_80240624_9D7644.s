.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240624_9D7644
/* 9D7644 80240624 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 9D7648 80240628 AFBF0010 */  sw        $ra, 0x10($sp)
/* 9D764C 8024062C 10A00003 */  beqz      $a1, .L8024063C
/* 9D7650 80240630 8C86000C */   lw       $a2, 0xc($a0)
/* 9D7654 80240634 3C018024 */  lui       $at, %hi(D_80245434_9DC454)
/* 9D7658 80240638 AC205434 */  sw        $zero, %lo(D_80245434_9DC454)($at)
.L8024063C:
/* 9D765C 8024063C 3C038024 */  lui       $v1, %hi(D_80245434_9DC454)
/* 9D7660 80240640 24635434 */  addiu     $v1, $v1, %lo(D_80245434_9DC454)
/* 9D7664 80240644 8C620000 */  lw        $v0, ($v1)
/* 9D7668 80240648 54400003 */  bnel      $v0, $zero, .L80240658
/* 9D766C 8024064C AC600000 */   sw       $zero, ($v1)
/* 9D7670 80240650 0809019B */  j         .L8024066C
/* 9D7674 80240654 0000102D */   daddu    $v0, $zero, $zero
.L80240658:
/* 9D7678 80240658 8CC50000 */  lw        $a1, ($a2)
/* 9D767C 8024065C 3C068024 */  lui       $a2, %hi(func_80245438)
/* 9D7680 80240660 0C0B2026 */  jal       set_variable
/* 9D7684 80240664 8CC65438 */   lw       $a2, %lo(func_80245438)($a2)
/* 9D7688 80240668 24020002 */  addiu     $v0, $zero, 2
.L8024066C:
/* 9D768C 8024066C 8FBF0010 */  lw        $ra, 0x10($sp)
/* 9D7690 80240670 03E00008 */  jr        $ra
/* 9D7694 80240674 27BD0018 */   addiu    $sp, $sp, 0x18
