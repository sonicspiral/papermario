.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8004B440
/* 26840 8004B440 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 26844 8004B444 AFB00010 */  sw        $s0, 0x10($sp)
/* 26848 8004B448 0080802D */  daddu     $s0, $a0, $zero
/* 2684C 8004B44C 3C030006 */  lui       $v1, 6
/* 26850 8004B450 3463A25E */  ori       $v1, $v1, 0xa25e
/* 26854 8004B454 3C020004 */  lui       $v0, 4
/* 26858 8004B458 8FA40028 */  lw        $a0, 0x28($sp)
/* 2685C 8004B45C 3442C4B4 */  ori       $v0, $v0, 0xc4b4
/* 26860 8004B460 AFBF0014 */  sw        $ra, 0x14($sp)
/* 26864 8004B464 AE070000 */  sw        $a3, ($s0)
/* 26868 8004B468 AE020034 */  sw        $v0, 0x34($s0)
/* 2686C 8004B46C AE03003C */  sw        $v1, 0x3c($s0)
/* 26870 8004B470 AE030038 */  sw        $v1, 0x38($s0)
/* 26874 8004B474 A20500BC */  sb        $a1, 0xbc($s0)
/* 26878 8004B478 308200FF */  andi      $v0, $a0, 0xff
/* 2687C 8004B47C 2C420011 */  sltiu     $v0, $v0, 0x11
/* 26880 8004B480 14400004 */  bnez      $v0, .L8004B494
/* 26884 8004B484 A20600BE */   sb       $a2, 0xbe($s0)
/* 26888 8004B488 24020010 */  addiu     $v0, $zero, 0x10
/* 2688C 8004B48C 08012D26 */  j         .L8004B498
/* 26890 8004B490 A20200BD */   sb       $v0, 0xbd($s0)
.L8004B494:
/* 26894 8004B494 A20400BD */  sb        $a0, 0xbd($s0)
.L8004B498:
/* 26898 8004B498 0000202D */  daddu     $a0, $zero, $zero
/* 2689C 8004B49C 24060040 */  addiu     $a2, $zero, 0x40
/* 268A0 8004B4A0 240500B0 */  addiu     $a1, $zero, 0xb0
/* 268A4 8004B4A4 2403016C */  addiu     $v1, $zero, 0x16c
/* 268A8 8004B4A8 34028000 */  ori       $v0, $zero, 0x8000
/* 268AC 8004B4AC AE02005C */  sw        $v0, 0x5c($s0)
/* 268B0 8004B4B0 A60200B8 */  sh        $v0, 0xb8($s0)
/* 268B4 8004B4B4 AE000030 */  sw        $zero, 0x30($s0)
/* 268B8 8004B4B8 AE000060 */  sw        $zero, 0x60($s0)
.L8004B4BC:
/* 268BC 8004B4BC 02031021 */  addu      $v0, $s0, $v1
/* 268C0 8004B4C0 24840001 */  addiu     $a0, $a0, 1
/* 268C4 8004B4C4 AC400000 */  sw        $zero, ($v0)
/* 268C8 8004B4C8 A440005C */  sh        $zero, 0x5c($v0)
/* 268CC 8004B4CC A440008E */  sh        $zero, 0x8e($v0)
/* 268D0 8004B4D0 A4400090 */  sh        $zero, 0x90($v0)
/* 268D4 8004B4D4 A4400092 */  sh        $zero, 0x92($v0)
/* 268D8 8004B4D8 A0400094 */  sb        $zero, 0x94($v0)
/* 268DC 8004B4DC A040009B */  sb        $zero, 0x9b($v0)
/* 268E0 8004B4E0 A040009C */  sb        $zero, 0x9c($v0)
/* 268E4 8004B4E4 A040009D */  sb        $zero, 0x9d($v0)
/* 268E8 8004B4E8 A040009E */  sb        $zero, 0x9e($v0)
/* 268EC 8004B4EC A040009F */  sb        $zero, 0x9f($v0)
/* 268F0 8004B4F0 A0400099 */  sb        $zero, 0x99($v0)
/* 268F4 8004B4F4 A0400078 */  sb        $zero, 0x78($v0)
/* 268F8 8004B4F8 A0400079 */  sb        $zero, 0x79($v0)
/* 268FC 8004B4FC A040007A */  sb        $zero, 0x7a($v0)
/* 26900 8004B500 A046007B */  sb        $a2, 0x7b($v0)
/* 26904 8004B504 A040007C */  sb        $zero, 0x7c($v0)
/* 26908 8004B508 A045007D */  sb        $a1, 0x7d($v0)
/* 2690C 8004B50C A040007E */  sb        $zero, 0x7e($v0)
/* 26910 8004B510 A040007F */  sb        $zero, 0x7f($v0)
/* 26914 8004B514 2C820008 */  sltiu     $v0, $a0, 8
/* 26918 8004B518 1440FFE8 */  bnez      $v0, .L8004B4BC
/* 2691C 8004B51C 246300AC */   addiu    $v1, $v1, 0xac
/* 26920 8004B520 0000202D */  daddu     $a0, $zero, $zero
/* 26924 8004B524 0200182D */  daddu     $v1, $s0, $zero
.L8004B528:
/* 26928 8004B528 AC600090 */  sw        $zero, 0x90($v1)
/* 2692C 8004B52C 24840001 */  addiu     $a0, $a0, 1
/* 26930 8004B530 2C820004 */  sltiu     $v0, $a0, 4
/* 26934 8004B534 1440FFFC */  bnez      $v0, .L8004B528
/* 26938 8004B538 24630004 */   addiu    $v1, $v1, 4
/* 2693C 8004B53C 0000202D */  daddu     $a0, $zero, $zero
/* 26940 8004B540 0200182D */  daddu     $v1, $s0, $zero
.L8004B544:
/* 26944 8004B544 A46000A0 */  sh        $zero, 0xa0($v1)
/* 26948 8004B548 24840001 */  addiu     $a0, $a0, 1
/* 2694C 8004B54C 2C820004 */  sltiu     $v0, $a0, 4
/* 26950 8004B550 1440FFFC */  bnez      $v0, .L8004B544
/* 26954 8004B554 24630006 */   addiu    $v1, $v1, 6
/* 26958 8004B558 0200202D */  daddu     $a0, $s0, $zero
/* 2695C 8004B55C 0000282D */  daddu     $a1, $zero, $zero
/* 26960 8004B560 0C012E95 */  jal       func_8004BA54
/* 26964 8004B564 AE000168 */   sw       $zero, 0x168($s0)
/* 26968 8004B568 0C012DA6 */  jal       func_8004B698
/* 2696C 8004B56C 0200202D */   daddu    $a0, $s0, $zero
/* 26970 8004B570 26040040 */  addiu     $a0, $s0, 0x40
/* 26974 8004B574 0000282D */  daddu     $a1, $zero, $zero
/* 26978 8004B578 24067FFF */  addiu     $a2, $zero, 0x7fff
/* 2697C 8004B57C 0C014E5D */  jal       func_80053974
/* 26980 8004B580 00C0382D */   daddu    $a3, $a2, $zero
/* 26984 8004B584 920400BE */  lbu       $a0, 0xbe($s0)
/* 26988 8004B588 96050040 */  lhu       $a1, 0x40($s0)
/* 2698C 8004B58C 0C014EA6 */  jal       func_80053A98
/* 26990 8004B590 8E06005C */   lw       $a2, 0x5c($s0)
/* 26994 8004B594 0200202D */  daddu     $a0, $s0, $zero
/* 26998 8004B598 0000282D */  daddu     $a1, $zero, $zero
/* 2699C 8004B59C 240200FF */  addiu     $v0, $zero, 0xff
/* 269A0 8004B5A0 A082008C */  sb        $v0, 0x8c($a0)
/* 269A4 8004B5A4 3C028008 */  lui       $v0, 0x8008
/* 269A8 8004B5A8 24428290 */  addiu     $v0, $v0, -0x7d70
/* 269AC 8004B5AC AC820064 */  sw        $v0, 0x64($a0)
/* 269B0 8004B5B0 3C028008 */  lui       $v0, 0x8008
/* 269B4 8004B5B4 244282F8 */  addiu     $v0, $v0, -0x7d08
/* 269B8 8004B5B8 AC820068 */  sw        $v0, 0x68($a0)
/* 269BC 8004B5BC 3C028008 */  lui       $v0, 0x8008
/* 269C0 8004B5C0 24428320 */  addiu     $v0, $v0, -0x7ce0
/* 269C4 8004B5C4 AC82006C */  sw        $v0, 0x6c($a0)
/* 269C8 8004B5C8 3C028008 */  lui       $v0, 0x8008
/* 269CC 8004B5CC 24428348 */  addiu     $v0, $v0, -0x7cb8
/* 269D0 8004B5D0 AC820070 */  sw        $v0, 0x70($a0)
/* 269D4 8004B5D4 AC820074 */  sw        $v0, 0x74($a0)
/* 269D8 8004B5D8 AC820078 */  sw        $v0, 0x78($a0)
/* 269DC 8004B5DC AC82007C */  sw        $v0, 0x7c($a0)
/* 269E0 8004B5E0 AC820080 */  sw        $v0, 0x80($a0)
/* 269E4 8004B5E4 24020010 */  addiu     $v0, $zero, 0x10
/* 269E8 8004B5E8 A0820084 */  sb        $v0, 0x84($a0)
/* 269EC 8004B5EC 24020020 */  addiu     $v0, $zero, 0x20
/* 269F0 8004B5F0 A0820085 */  sb        $v0, 0x85($a0)
/* 269F4 8004B5F4 A0820086 */  sb        $v0, 0x86($a0)
/* 269F8 8004B5F8 A0820087 */  sb        $v0, 0x87($a0)
/* 269FC 8004B5FC A0820088 */  sb        $v0, 0x88($a0)
/* 26A00 8004B600 24020030 */  addiu     $v0, $zero, 0x30
/* 26A04 8004B604 A0820089 */  sb        $v0, 0x89($a0)
/* 26A08 8004B608 24020040 */  addiu     $v0, $zero, 0x40
/* 26A0C 8004B60C A082008A */  sb        $v0, 0x8a($a0)
/* 26A10 8004B610 24020050 */  addiu     $v0, $zero, 0x50
/* 26A14 8004B614 0C012E79 */  jal       func_8004B9E4
/* 26A18 8004B618 A082008B */   sb       $v0, 0x8b($a0)
/* 26A1C 8004B61C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 26A20 8004B620 8FB00010 */  lw        $s0, 0x10($sp)
/* 26A24 8004B624 03E00008 */  jr        $ra
/* 26A28 8004B628 27BD0018 */   addiu    $sp, $sp, 0x18
