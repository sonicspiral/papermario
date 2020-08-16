.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel NpcFacePlayer
/* 0F3678 802CECC8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0F367C 802CECCC AFB10014 */  sw    $s1, 0x14($sp)
/* 0F3680 802CECD0 0080882D */  daddu $s1, $a0, $zero
/* 0F3684 802CECD4 AFB40020 */  sw    $s4, 0x20($sp)
/* 0F3688 802CECD8 3C148011 */  lui   $s4, 0x8011
/* 0F368C 802CECDC 2694EFC8 */  addiu $s4, $s4, -0x1038
/* 0F3690 802CECE0 AFB60028 */  sw    $s6, 0x28($sp)
/* 0F3694 802CECE4 26360074 */  addiu $s6, $s1, 0x74
/* 0F3698 802CECE8 AFB50024 */  sw    $s5, 0x24($sp)
/* 0F369C 802CECEC 26350078 */  addiu $s5, $s1, 0x78
/* 0F36A0 802CECF0 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0F36A4 802CECF4 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0F36A8 802CECF8 AFB20018 */  sw    $s2, 0x18($sp)
/* 0F36AC 802CECFC AFB00010 */  sw    $s0, 0x10($sp)
/* 0F36B0 802CED00 8E32000C */  lw    $s2, 0xc($s1)
/* 0F36B4 802CED04 10A00034 */  beqz  $a1, .L802CEDD8
/* 0F36B8 802CED08 2633007C */   addiu $s3, $s1, 0x7c
/* 0F36BC 802CED0C 8E450000 */  lw    $a1, ($s2)
/* 0F36C0 802CED10 0C0B1EAF */  jal   get_variable
/* 0F36C4 802CED14 26520004 */   addiu $s2, $s2, 4
/* 0F36C8 802CED18 0220202D */  daddu $a0, $s1, $zero
/* 0F36CC 802CED1C 0C0B36B0 */  jal   resolve_npc
/* 0F36D0 802CED20 0040282D */   daddu $a1, $v0, $zero
/* 0F36D4 802CED24 0040802D */  daddu $s0, $v0, $zero
/* 0F36D8 802CED28 1200004B */  beqz  $s0, .L802CEE58
/* 0F36DC 802CED2C 24020002 */   addiu $v0, $zero, 2
/* 0F36E0 802CED30 C600000C */  lwc1  $f0, 0xc($s0)
/* 0F36E4 802CED34 E6200074 */  swc1  $f0, 0x74($s1)
/* 0F36E8 802CED38 C60C0038 */  lwc1  $f12, 0x38($s0)
/* 0F36EC 802CED3C C60E0040 */  lwc1  $f14, 0x40($s0)
/* 0F36F0 802CED40 8E860028 */  lw    $a2, 0x28($s4)
/* 0F36F4 802CED44 0C00A720 */  jal   atan2
/* 0F36F8 802CED48 8E870030 */   lw    $a3, 0x30($s4)
/* 0F36FC 802CED4C C6220074 */  lwc1  $f2, 0x74($s1)
/* 0F3700 802CED50 46020001 */  sub.s $f0, $f0, $f2
/* 0F3704 802CED54 AE300070 */  sw    $s0, 0x70($s1)
/* 0F3708 802CED58 E6200078 */  swc1  $f0, 0x78($s1)
/* 0F370C 802CED5C 8E450000 */  lw    $a1, ($s2)
/* 0F3710 802CED60 0C0B1EAF */  jal   get_variable
/* 0F3714 802CED64 0220202D */   daddu $a0, $s1, $zero
/* 0F3718 802CED68 AE22007C */  sw    $v0, 0x7c($s1)
/* 0F371C 802CED6C A600008E */  sh    $zero, 0x8e($s0)
/* 0F3720 802CED70 C6220078 */  lwc1  $f2, 0x78($s1)
/* 0F3724 802CED74 3C01C334 */  lui   $at, 0xc334
/* 0F3728 802CED78 44810000 */  mtc1  $at, $f0
/* 0F372C 802CED7C 00000000 */  nop   
/* 0F3730 802CED80 4600103C */  c.lt.s $f2, $f0
/* 0F3734 802CED84 00000000 */  nop   
/* 0F3738 802CED88 45000007 */  bc1f  .L802CEDA8
/* 0F373C 802CED8C 00000000 */   nop   
/* 0F3740 802CED90 3C0143B4 */  lui   $at, 0x43b4
/* 0F3744 802CED94 44810000 */  mtc1  $at, $f0
/* 0F3748 802CED98 00000000 */  nop   
/* 0F374C 802CED9C 46001000 */  add.s $f0, $f2, $f0
/* 0F3750 802CEDA0 E6200078 */  swc1  $f0, 0x78($s1)
/* 0F3754 802CEDA4 C6220078 */  lwc1  $f2, 0x78($s1)
.L802CEDA8:
/* 0F3758 802CEDA8 3C014334 */  lui   $at, 0x4334
/* 0F375C 802CEDAC 44810000 */  mtc1  $at, $f0
/* 0F3760 802CEDB0 00000000 */  nop   
/* 0F3764 802CEDB4 4602003C */  c.lt.s $f0, $f2
/* 0F3768 802CEDB8 00000000 */  nop   
/* 0F376C 802CEDBC 45000006 */  bc1f  .L802CEDD8
/* 0F3770 802CEDC0 00000000 */   nop   
/* 0F3774 802CEDC4 3C0143B4 */  lui   $at, 0x43b4
/* 0F3778 802CEDC8 44810000 */  mtc1  $at, $f0
/* 0F377C 802CEDCC 00000000 */  nop   
/* 0F3780 802CEDD0 46001001 */  sub.s $f0, $f2, $f0
/* 0F3784 802CEDD4 E6200078 */  swc1  $f0, 0x78($s1)
.L802CEDD8:
/* 0F3788 802CEDD8 8E620000 */  lw    $v0, ($s3)
/* 0F378C 802CEDDC 8E300070 */  lw    $s0, 0x70($s1)
/* 0F3790 802CEDE0 1C400006 */  bgtz  $v0, .L802CEDFC
/* 0F3794 802CEDE4 24020002 */   addiu $v0, $zero, 2
/* 0F3798 802CEDE8 C600000C */  lwc1  $f0, 0xc($s0)
/* 0F379C 802CEDEC C6A20000 */  lwc1  $f2, ($s5)
/* 0F37A0 802CEDF0 46020000 */  add.s $f0, $f0, $f2
/* 0F37A4 802CEDF4 080B3B96 */  j     .L802CEE58
/* 0F37A8 802CEDF8 E600000C */   swc1  $f0, 0xc($s0)

.L802CEDFC:
/* 0F37AC 802CEDFC 9602008E */  lhu   $v0, 0x8e($s0)
/* 0F37B0 802CEE00 24420001 */  addiu $v0, $v0, 1
/* 0F37B4 802CEE04 A602008E */  sh    $v0, 0x8e($s0)
/* 0F37B8 802CEE08 00021400 */  sll   $v0, $v0, 0x10
/* 0F37BC 802CEE0C 00021403 */  sra   $v0, $v0, 0x10
/* 0F37C0 802CEE10 C6A00000 */  lwc1  $f0, ($s5)
/* 0F37C4 802CEE14 44821000 */  mtc1  $v0, $f2
/* 0F37C8 802CEE18 00000000 */  nop   
/* 0F37CC 802CEE1C 468010A0 */  cvt.s.w $f2, $f2
/* 0F37D0 802CEE20 46020002 */  mul.s $f0, $f0, $f2
/* 0F37D4 802CEE24 00000000 */  nop   
/* 0F37D8 802CEE28 C6CC0000 */  lwc1  $f12, ($s6)
/* 0F37DC 802CEE2C C6620000 */  lwc1  $f2, ($s3)
/* 0F37E0 802CEE30 468010A0 */  cvt.s.w $f2, $f2
/* 0F37E4 802CEE34 46020003 */  div.s $f0, $f0, $f2
/* 0F37E8 802CEE38 46006300 */  add.s $f12, $f12, $f0
/* 0F37EC 802CEE3C 0C00A6C9 */  jal   clamp_angle
/* 0F37F0 802CEE40 E60C000C */   swc1  $f12, 0xc($s0)
/* 0F37F4 802CEE44 8602008E */  lh    $v0, 0x8e($s0)
/* 0F37F8 802CEE48 E600000C */  swc1  $f0, 0xc($s0)
/* 0F37FC 802CEE4C 8E630000 */  lw    $v1, ($s3)
/* 0F3800 802CEE50 0043102A */  slt   $v0, $v0, $v1
/* 0F3804 802CEE54 38420001 */  xori  $v0, $v0, 1
.L802CEE58:
/* 0F3808 802CEE58 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0F380C 802CEE5C 8FB60028 */  lw    $s6, 0x28($sp)
/* 0F3810 802CEE60 8FB50024 */  lw    $s5, 0x24($sp)
/* 0F3814 802CEE64 8FB40020 */  lw    $s4, 0x20($sp)
/* 0F3818 802CEE68 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0F381C 802CEE6C 8FB20018 */  lw    $s2, 0x18($sp)
/* 0F3820 802CEE70 8FB10014 */  lw    $s1, 0x14($sp)
/* 0F3824 802CEE74 8FB00010 */  lw    $s0, 0x10($sp)
/* 0F3828 802CEE78 03E00008 */  jr    $ra
/* 0F382C 802CEE7C 27BD0030 */   addiu $sp, $sp, 0x30

