.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80149734
/* 0DFE34 80149734 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0DFE38 80149738 AFB10024 */  sw    $s1, 0x24($sp)
/* 0DFE3C 8014973C 3C118016 */  lui   $s1, 0x8016
/* 0DFE40 80149740 8E319AD0 */  lw    $s1, -0x6530($s1)
/* 0DFE44 80149744 AFB20028 */  sw    $s2, 0x28($sp)
/* 0DFE48 80149748 0000902D */  daddu $s2, $zero, $zero
/* 0DFE4C 8014974C AFB40030 */  sw    $s4, 0x30($sp)
/* 0DFE50 80149750 27B40018 */  addiu $s4, $sp, 0x18
/* 0DFE54 80149754 AFB3002C */  sw    $s3, 0x2c($sp)
/* 0DFE58 80149758 27B3001A */  addiu $s3, $sp, 0x1a
/* 0DFE5C 8014975C AFBF0034 */  sw    $ra, 0x34($sp)
/* 0DFE60 80149760 AFB00020 */  sw    $s0, 0x20($sp)
/* 0DFE64 80149764 26300004 */  addiu $s0, $s1, 4
.L80149768:
/* 0DFE68 80149768 8E230000 */  lw    $v1, ($s1)
/* 0DFE6C 8014976C 30620001 */  andi  $v0, $v1, 1
/* 0DFE70 80149770 50400016 */  beql  $v0, $zero, .L801497CC
/* 0DFE74 80149774 26520001 */   addiu $s2, $s2, 1
/* 0DFE78 80149778 30620002 */  andi  $v0, $v1, 2
/* 0DFE7C 8014977C 1040000D */  beqz  $v0, .L801497B4
/* 0DFE80 80149780 00000000 */   nop   
/* 0DFE84 80149784 AFB30010 */  sw    $s3, 0x10($sp)
/* 0DFE88 80149788 8E020004 */  lw    $v0, 4($s0)
/* 0DFE8C 8014978C AFA20014 */  sw    $v0, 0x14($sp)
/* 0DFE90 80149790 8E060014 */  lw    $a2, 0x14($s0)
/* 0DFE94 80149794 C60C000C */  lwc1  $f12, 0xc($s0)
/* 0DFE98 80149798 C60E0010 */  lwc1  $f14, 0x10($s0)
/* 0DFE9C 8014979C 0C052781 */  jal   func_80149E04
/* 0DFEA0 801497A0 0280382D */   daddu $a3, $s4, $zero
/* 0DFEA4 801497A4 92820001 */  lbu   $v0, 1($s4)
/* 0DFEA8 801497A8 A2020008 */  sb    $v0, 8($s0)
/* 0DFEAC 801497AC 92620001 */  lbu   $v0, 1($s3)
/* 0DFEB0 801497B0 A2020009 */  sb    $v0, 9($s0)
.L801497B4:
/* 0DFEB4 801497B4 92060009 */  lbu   $a2, 9($s0)
/* 0DFEB8 801497B8 8607000A */  lh    $a3, 0xa($s0)
/* 0DFEBC 801497BC 8E040000 */  lw    $a0, ($s0)
/* 0DFEC0 801497C0 92050008 */  lbu   $a1, 8($s0)
/* 0DFEC4 801497C4 0C0154CC */  jal   func_80055330
/* 0DFEC8 801497C8 26520001 */   addiu $s2, $s2, 1
.L801497CC:
/* 0DFECC 801497CC 2610001C */  addiu $s0, $s0, 0x1c
/* 0DFED0 801497D0 2A42000A */  slti  $v0, $s2, 0xa
/* 0DFED4 801497D4 1440FFE4 */  bnez  $v0, .L80149768
/* 0DFED8 801497D8 2631001C */   addiu $s1, $s1, 0x1c
/* 0DFEDC 801497DC 8FBF0034 */  lw    $ra, 0x34($sp)
/* 0DFEE0 801497E0 8FB40030 */  lw    $s4, 0x30($sp)
/* 0DFEE4 801497E4 8FB3002C */  lw    $s3, 0x2c($sp)
/* 0DFEE8 801497E8 8FB20028 */  lw    $s2, 0x28($sp)
/* 0DFEEC 801497EC 8FB10024 */  lw    $s1, 0x24($sp)
/* 0DFEF0 801497F0 8FB00020 */  lw    $s0, 0x20($sp)
/* 0DFEF4 801497F4 03E00008 */  jr    $ra
/* 0DFEF8 801497F8 27BD0038 */   addiu $sp, $sp, 0x38
