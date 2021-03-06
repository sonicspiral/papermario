.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel load_tattle_flags
/* 182758 80253E78 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 18275C 80253E7C AFB20018 */  sw        $s2, 0x18($sp)
/* 182760 80253E80 0080902D */  daddu     $s2, $a0, $zero
/* 182764 80253E84 AFB50024 */  sw        $s5, 0x24($sp)
/* 182768 80253E88 3C15800E */  lui       $s5, %hi(gBattleStatus)
/* 18276C 80253E8C 26B5C070 */  addiu     $s5, $s5, %lo(gBattleStatus)
/* 182770 80253E90 240600FF */  addiu     $a2, $zero, 0xff
/* 182774 80253E94 AFB40020 */  sw        $s4, 0x20($sp)
/* 182778 80253E98 24140001 */  addiu     $s4, $zero, 1
/* 18277C 80253E9C 3C058028 */  lui       $a1, 0x8028
/* 182780 80253EA0 24A54044 */  addiu     $a1, $a1, 0x4044
/* 182784 80253EA4 AFBF0028 */  sw        $ra, 0x28($sp)
/* 182788 80253EA8 AFB3001C */  sw        $s3, 0x1c($sp)
/* 18278C 80253EAC AFB10014 */  sw        $s1, 0x14($sp)
/* 182790 80253EB0 AFB00010 */  sw        $s0, 0x10($sp)
.L80253EB4:
/* 182794 80253EB4 8CA40000 */  lw        $a0, ($a1)
/* 182798 80253EB8 10800025 */  beqz      $a0, .L80253F50
/* 18279C 80253EBC 00000000 */   nop      
/* 1827A0 80253EC0 90820000 */  lbu       $v0, ($a0)
/* 1827A4 80253EC4 10460020 */  beq       $v0, $a2, .L80253F48
/* 1827A8 80253EC8 0080182D */   daddu    $v1, $a0, $zero
.L80253ECC:
/* 1827AC 80253ECC 90620000 */  lbu       $v0, ($v1)
/* 1827B0 80253ED0 5642001A */  bnel      $s2, $v0, .L80253F3C
/* 1827B4 80253ED4 24630001 */   addiu    $v1, $v1, 1
/* 1827B8 80253ED8 90820000 */  lbu       $v0, ($a0)
/* 1827BC 80253EDC 1046002B */  beq       $v0, $a2, .L80253F8C
/* 1827C0 80253EE0 241300FF */   addiu    $s3, $zero, 0xff
/* 1827C4 80253EE4 0080882D */  daddu     $s1, $a0, $zero
.L80253EE8:
/* 1827C8 80253EE8 92320000 */  lbu       $s2, ($s1)
/* 1827CC 80253EEC 06410002 */  bgez      $s2, .L80253EF8
/* 1827D0 80253EF0 0240802D */   daddu    $s0, $s2, $zero
/* 1827D4 80253EF4 26500007 */  addiu     $s0, $s2, 7
.L80253EF8:
/* 1827D8 80253EF8 001080C3 */  sra       $s0, $s0, 3
/* 1827DC 80253EFC 0C05154E */  jal       get_global_byte
/* 1827E0 80253F00 2604016D */   addiu    $a0, $s0, 0x16d
/* 1827E4 80253F04 001018C0 */  sll       $v1, $s0, 3
/* 1827E8 80253F08 02431823 */  subu      $v1, $s2, $v1
/* 1827EC 80253F0C 00741804 */  sllv      $v1, $s4, $v1
/* 1827F0 80253F10 00432025 */  or        $a0, $v0, $v1
/* 1827F4 80253F14 02B08021 */  addu      $s0, $s5, $s0
/* 1827F8 80253F18 92020440 */  lbu       $v0, 0x440($s0)
/* 1827FC 80253F1C 26310001 */  addiu     $s1, $s1, 1
/* 182800 80253F20 00441025 */  or        $v0, $v0, $a0
/* 182804 80253F24 A2020440 */  sb        $v0, 0x440($s0)
/* 182808 80253F28 92220000 */  lbu       $v0, ($s1)
/* 18280C 80253F2C 10530017 */  beq       $v0, $s3, .L80253F8C
/* 182810 80253F30 00000000 */   nop      
/* 182814 80253F34 08094FBA */  j         .L80253EE8
/* 182818 80253F38 00000000 */   nop      
.L80253F3C:
/* 18281C 80253F3C 90620000 */  lbu       $v0, ($v1)
/* 182820 80253F40 1446FFE2 */  bne       $v0, $a2, .L80253ECC
/* 182824 80253F44 00000000 */   nop      
.L80253F48:
/* 182828 80253F48 08094FAD */  j         .L80253EB4
/* 18282C 80253F4C 24A50004 */   addiu    $a1, $a1, 4
.L80253F50:
/* 182830 80253F50 06410002 */  bgez      $s2, .L80253F5C
/* 182834 80253F54 0240202D */   daddu    $a0, $s2, $zero
/* 182838 80253F58 26440007 */  addiu     $a0, $s2, 7
.L80253F5C:
/* 18283C 80253F5C 000480C3 */  sra       $s0, $a0, 3
/* 182840 80253F60 0C05154E */  jal       get_global_byte
/* 182844 80253F64 2604016D */   addiu    $a0, $s0, 0x16d
/* 182848 80253F68 001020C0 */  sll       $a0, $s0, 3
/* 18284C 80253F6C 02442023 */  subu      $a0, $s2, $a0
/* 182850 80253F70 24030001 */  addiu     $v1, $zero, 1
/* 182854 80253F74 00831804 */  sllv      $v1, $v1, $a0
/* 182858 80253F78 00432025 */  or        $a0, $v0, $v1
/* 18285C 80253F7C 02B01821 */  addu      $v1, $s5, $s0
/* 182860 80253F80 90620440 */  lbu       $v0, 0x440($v1)
/* 182864 80253F84 00441025 */  or        $v0, $v0, $a0
/* 182868 80253F88 A0620440 */  sb        $v0, 0x440($v1)
.L80253F8C:
/* 18286C 80253F8C 8FBF0028 */  lw        $ra, 0x28($sp)
/* 182870 80253F90 8FB50024 */  lw        $s5, 0x24($sp)
/* 182874 80253F94 8FB40020 */  lw        $s4, 0x20($sp)
/* 182878 80253F98 8FB3001C */  lw        $s3, 0x1c($sp)
/* 18287C 80253F9C 8FB20018 */  lw        $s2, 0x18($sp)
/* 182880 80253FA0 8FB10014 */  lw        $s1, 0x14($sp)
/* 182884 80253FA4 8FB00010 */  lw        $s0, 0x10($sp)
/* 182888 80253FA8 03E00008 */  jr        $ra
/* 18288C 80253FAC 27BD0030 */   addiu    $sp, $sp, 0x30
