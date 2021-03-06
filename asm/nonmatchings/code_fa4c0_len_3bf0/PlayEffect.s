.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel PlayEffect
/* FCC4C 802D829C 27BDFF38 */  addiu     $sp, $sp, -0xc8
/* FCC50 802D82A0 AFBF0094 */  sw        $ra, 0x94($sp)
/* FCC54 802D82A4 AFBE0090 */  sw        $fp, 0x90($sp)
/* FCC58 802D82A8 AFB7008C */  sw        $s7, 0x8c($sp)
/* FCC5C 802D82AC AFB60088 */  sw        $s6, 0x88($sp)
/* FCC60 802D82B0 AFB50084 */  sw        $s5, 0x84($sp)
/* FCC64 802D82B4 AFB40080 */  sw        $s4, 0x80($sp)
/* FCC68 802D82B8 AFB3007C */  sw        $s3, 0x7c($sp)
/* FCC6C 802D82BC AFB20078 */  sw        $s2, 0x78($sp)
/* FCC70 802D82C0 AFB10074 */  sw        $s1, 0x74($sp)
/* FCC74 802D82C4 AFB00070 */  sw        $s0, 0x70($sp)
/* FCC78 802D82C8 F7BE00C0 */  sdc1      $f30, 0xc0($sp)
/* FCC7C 802D82CC F7BC00B8 */  sdc1      $f28, 0xb8($sp)
/* FCC80 802D82D0 F7BA00B0 */  sdc1      $f26, 0xb0($sp)
/* FCC84 802D82D4 F7B800A8 */  sdc1      $f24, 0xa8($sp)
/* FCC88 802D82D8 F7B600A0 */  sdc1      $f22, 0xa0($sp)
/* FCC8C 802D82DC F7B40098 */  sdc1      $f20, 0x98($sp)
/* FCC90 802D82E0 AFA400C8 */  sw        $a0, 0xc8($sp)
/* FCC94 802D82E4 8C90000C */  lw        $s0, 0xc($a0)
/* FCC98 802D82E8 0000A82D */  daddu     $s5, $zero, $zero
/* FCC9C 802D82EC 0200882D */  daddu     $s1, $s0, $zero
/* FCCA0 802D82F0 8E050000 */  lw        $a1, ($s0)
/* FCCA4 802D82F4 0C0B1EAF */  jal       get_variable
/* FCCA8 802D82F8 0200902D */   daddu    $s2, $s0, $zero
/* FCCAC 802D82FC 8E250000 */  lw        $a1, ($s1)
/* FCCB0 802D8300 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCCB4 802D8304 26100004 */  addiu     $s0, $s0, 4
/* FCCB8 802D8308 0C0B1EAF */  jal       get_variable
/* FCCBC 802D830C AFA20040 */   sw       $v0, 0x40($sp)
/* FCCC0 802D8310 8E450000 */  lw        $a1, ($s2)
/* FCCC4 802D8314 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCCC8 802D8318 0C0B1EAF */  jal       get_variable
/* FCCCC 802D831C 26310004 */   addiu    $s1, $s1, 4
/* FCCD0 802D8320 8E050000 */  lw        $a1, ($s0)
/* FCCD4 802D8324 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCCD8 802D8328 0C0B1EAF */  jal       get_variable
/* FCCDC 802D832C 26100004 */   addiu    $s0, $s0, 4
/* FCCE0 802D8330 8E050000 */  lw        $a1, ($s0)
/* FCCE4 802D8334 26100004 */  addiu     $s0, $s0, 4
/* FCCE8 802D8338 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCCEC 802D833C 0C0B1EAF */  jal       get_variable
/* FCCF0 802D8340 0040982D */   daddu    $s3, $v0, $zero
/* FCCF4 802D8344 8E050000 */  lw        $a1, ($s0)
/* FCCF8 802D8348 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCCFC 802D834C 26100004 */  addiu     $s0, $s0, 4
/* FCD00 802D8350 0C0B1EAF */  jal       get_variable
/* FCD04 802D8354 AFA20044 */   sw       $v0, 0x44($sp)
/* FCD08 802D8358 8E050000 */  lw        $a1, ($s0)
/* FCD0C 802D835C 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCD10 802D8360 26100004 */  addiu     $s0, $s0, 4
/* FCD14 802D8364 0C0B1EAF */  jal       get_variable
/* FCD18 802D8368 AFA20048 */   sw       $v0, 0x48($sp)
/* FCD1C 802D836C 8E050000 */  lw        $a1, ($s0)
/* FCD20 802D8370 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCD24 802D8374 26100004 */  addiu     $s0, $s0, 4
/* FCD28 802D8378 0C0B1EAF */  jal       get_variable
/* FCD2C 802D837C AFA2004C */   sw       $v0, 0x4c($sp)
/* FCD30 802D8380 8E050000 */  lw        $a1, ($s0)
/* FCD34 802D8384 26100004 */  addiu     $s0, $s0, 4
/* FCD38 802D8388 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCD3C 802D838C 0C0B1EAF */  jal       get_variable
/* FCD40 802D8390 0040B02D */   daddu    $s6, $v0, $zero
/* FCD44 802D8394 8E050000 */  lw        $a1, ($s0)
/* FCD48 802D8398 26100004 */  addiu     $s0, $s0, 4
/* FCD4C 802D839C 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCD50 802D83A0 0C0B1EAF */  jal       get_variable
/* FCD54 802D83A4 0040A02D */   daddu    $s4, $v0, $zero
/* FCD58 802D83A8 8E050000 */  lw        $a1, ($s0)
/* FCD5C 802D83AC 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCD60 802D83B0 26100004 */  addiu     $s0, $s0, 4
/* FCD64 802D83B4 0C0B1EAF */  jal       get_variable
/* FCD68 802D83B8 AFA20050 */   sw       $v0, 0x50($sp)
/* FCD6C 802D83BC 8E050000 */  lw        $a1, ($s0)
/* FCD70 802D83C0 26100004 */  addiu     $s0, $s0, 4
/* FCD74 802D83C4 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCD78 802D83C8 0C0B1EAF */  jal       get_variable
/* FCD7C 802D83CC 0040B82D */   daddu    $s7, $v0, $zero
/* FCD80 802D83D0 8E050000 */  lw        $a1, ($s0)
/* FCD84 802D83D4 26100004 */  addiu     $s0, $s0, 4
/* FCD88 802D83D8 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCD8C 802D83DC 0C0B1EAF */  jal       get_variable
/* FCD90 802D83E0 0040F02D */   daddu    $fp, $v0, $zero
/* FCD94 802D83E4 8E050000 */  lw        $a1, ($s0)
/* FCD98 802D83E8 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCD9C 802D83EC 26100004 */  addiu     $s0, $s0, 4
/* FCDA0 802D83F0 0C0B1EAF */  jal       get_variable
/* FCDA4 802D83F4 AFA20054 */   sw       $v0, 0x54($sp)
/* FCDA8 802D83F8 8E050000 */  lw        $a1, ($s0)
/* FCDAC 802D83FC 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCDB0 802D8400 0C0B1EAF */  jal       get_variable
/* FCDB4 802D8404 26100004 */   addiu    $s0, $s0, 4
/* FCDB8 802D8408 8E050000 */  lw        $a1, ($s0)
/* FCDBC 802D840C 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCDC0 802D8410 0C0B1EAF */  jal       get_variable
/* FCDC4 802D8414 26520004 */   addiu    $s2, $s2, 4
/* FCDC8 802D8418 8E250000 */  lw        $a1, ($s1)
/* FCDCC 802D841C 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCDD0 802D8420 0C0B210B */  jal       get_float_variable
/* FCDD4 802D8424 26310004 */   addiu    $s1, $s1, 4
/* FCDD8 802D8428 8E250000 */  lw        $a1, ($s1)
/* FCDDC 802D842C 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCDE0 802D8430 26310004 */  addiu     $s1, $s1, 4
/* FCDE4 802D8434 0C0B210B */  jal       get_float_variable
/* FCDE8 802D8438 E7A00058 */   swc1     $f0, 0x58($sp)
/* FCDEC 802D843C 8E250000 */  lw        $a1, ($s1)
/* FCDF0 802D8440 26310004 */  addiu     $s1, $s1, 4
/* FCDF4 802D8444 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCDF8 802D8448 0C0B210B */  jal       get_float_variable
/* FCDFC 802D844C 46000506 */   mov.s    $f20, $f0
/* FCE00 802D8450 8E250000 */  lw        $a1, ($s1)
/* FCE04 802D8454 26310004 */  addiu     $s1, $s1, 4
/* FCE08 802D8458 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCE0C 802D845C 0C0B210B */  jal       get_float_variable
/* FCE10 802D8460 46000586 */   mov.s    $f22, $f0
/* FCE14 802D8464 8E250000 */  lw        $a1, ($s1)
/* FCE18 802D8468 26310004 */  addiu     $s1, $s1, 4
/* FCE1C 802D846C 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCE20 802D8470 0C0B210B */  jal       get_float_variable
/* FCE24 802D8474 46000606 */   mov.s    $f24, $f0
/* FCE28 802D8478 8E250000 */  lw        $a1, ($s1)
/* FCE2C 802D847C 26310004 */  addiu     $s1, $s1, 4
/* FCE30 802D8480 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCE34 802D8484 0C0B210B */  jal       get_float_variable
/* FCE38 802D8488 46000686 */   mov.s    $f26, $f0
/* FCE3C 802D848C 8E250000 */  lw        $a1, ($s1)
/* FCE40 802D8490 26310004 */  addiu     $s1, $s1, 4
/* FCE44 802D8494 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCE48 802D8498 0C0B210B */  jal       get_float_variable
/* FCE4C 802D849C 46000706 */   mov.s    $f28, $f0
/* FCE50 802D84A0 8E250000 */  lw        $a1, ($s1)
/* FCE54 802D84A4 26310004 */  addiu     $s1, $s1, 4
/* FCE58 802D84A8 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCE5C 802D84AC 0C0B210B */  jal       get_float_variable
/* FCE60 802D84B0 46000786 */   mov.s    $f30, $f0
/* FCE64 802D84B4 8E250000 */  lw        $a1, ($s1)
/* FCE68 802D84B8 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCE6C 802D84BC 26310004 */  addiu     $s1, $s1, 4
/* FCE70 802D84C0 0C0B210B */  jal       get_float_variable
/* FCE74 802D84C4 E7A0005C */   swc1     $f0, 0x5c($sp)
/* FCE78 802D84C8 8E250000 */  lw        $a1, ($s1)
/* FCE7C 802D84CC 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCE80 802D84D0 26310004 */  addiu     $s1, $s1, 4
/* FCE84 802D84D4 0C0B210B */  jal       get_float_variable
/* FCE88 802D84D8 E7A00060 */   swc1     $f0, 0x60($sp)
/* FCE8C 802D84DC 8E250000 */  lw        $a1, ($s1)
/* FCE90 802D84E0 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCE94 802D84E4 26310004 */  addiu     $s1, $s1, 4
/* FCE98 802D84E8 0C0B210B */  jal       get_float_variable
/* FCE9C 802D84EC E7A00064 */   swc1     $f0, 0x64($sp)
/* FCEA0 802D84F0 8E250000 */  lw        $a1, ($s1)
/* FCEA4 802D84F4 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCEA8 802D84F8 26310004 */  addiu     $s1, $s1, 4
/* FCEAC 802D84FC 0C0B210B */  jal       get_float_variable
/* FCEB0 802D8500 E7A00068 */   swc1     $f0, 0x68($sp)
/* FCEB4 802D8504 8E250000 */  lw        $a1, ($s1)
/* FCEB8 802D8508 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FCEBC 802D850C 0C0B210B */  jal       get_float_variable
/* FCEC0 802D8510 26520004 */   addiu    $s2, $s2, 4
/* FCEC4 802D8514 8E450000 */  lw        $a1, ($s2)
/* FCEC8 802D8518 26520010 */  addiu     $s2, $s2, 0x10
/* FCECC 802D851C 8E500000 */  lw        $s0, ($s2)
/* FCED0 802D8520 26520004 */  addiu     $s2, $s2, 4
/* FCED4 802D8524 8E430000 */  lw        $v1, ($s2)
/* FCED8 802D8528 26520004 */  addiu     $s2, $s2, 4
/* FCEDC 802D852C 0260202D */  daddu     $a0, $s3, $zero
/* FCEE0 802D8530 AFA3006C */  sw        $v1, 0x6c($sp)
/* FCEE4 802D8534 8FA30040 */  lw        $v1, 0x40($sp)
/* FCEE8 802D8538 8E530000 */  lw        $s3, ($s2)
/* FCEEC 802D853C 8E510004 */  lw        $s1, 4($s2)
/* FCEF0 802D8540 2C620087 */  sltiu     $v0, $v1, 0x87
/* FCEF4 802D8544 10400450 */  beqz      $v0, .L802D9688
/* FCEF8 802D8548 00031080 */   sll      $v0, $v1, 2
/* FCEFC 802D854C 3C01802E */  lui       $at, 0x802e
/* FCF00 802D8550 00220821 */  addu      $at, $at, $v0
/* FCF04 802D8554 8C22A258 */  lw        $v0, -0x5da8($at)
/* FCF08 802D8558 00400008 */  jr        $v0
/* FCF0C 802D855C 00000000 */   nop      
/* FCF10 802D8560 8FA50058 */  lw        $a1, 0x58($sp)
/* FCF14 802D8564 4406A000 */  mfc1      $a2, $f20
/* FCF18 802D8568 4407B000 */  mfc1      $a3, $f22
/* FCF1C 802D856C 3C014040 */  lui       $at, 0x4040
/* FCF20 802D8570 44810000 */  mtc1      $at, $f0
/* FCF24 802D8574 0000202D */  daddu     $a0, $zero, $zero
/* FCF28 802D8578 AFB60014 */  sw        $s6, 0x14($sp)
/* FCF2C 802D857C 0C01C3F4 */  jal       func_80070FD0
/* FCF30 802D8580 E7A00010 */   swc1     $f0, 0x10($sp)
/* FCF34 802D8584 080B65A4 */  j         .L802D9690
/* FCF38 802D8588 00000000 */   nop      
/* FCF3C 802D858C C7AC0058 */  lwc1      $f12, 0x58($sp)
/* FCF40 802D8590 4406B000 */  mfc1      $a2, $f22
/* FCF44 802D8594 0C01BE3C */  jal       func_8006F8F0
/* FCF48 802D8598 4600A386 */   mov.s    $f14, $f20
/* FCF4C 802D859C 080B65A4 */  j         .L802D9690
/* FCF50 802D85A0 00000000 */   nop      
/* FCF54 802D85A4 4405A000 */  mfc1      $a1, $f20
/* FCF58 802D85A8 4406B000 */  mfc1      $a2, $f22
/* FCF5C 802D85AC 4407C000 */  mfc1      $a3, $f24
/* FCF60 802D85B0 0C01BEB4 */  jal       fx_walk_large
/* FCF64 802D85B4 E7BA0010 */   swc1     $f26, 0x10($sp)
/* FCF68 802D85B8 080B65A4 */  j         .L802D9690
/* FCF6C 802D85BC 00000000 */   nop      
/* FCF70 802D85C0 4405A000 */  mfc1      $a1, $f20
/* FCF74 802D85C4 4406B000 */  mfc1      $a2, $f22
/* FCF78 802D85C8 4407C000 */  mfc1      $a3, $f24
/* FCF7C 802D85CC E7BA0010 */  swc1      $f26, 0x10($sp)
/* FCF80 802D85D0 0C01BECC */  jal       fx_walk_normal
/* FCF84 802D85D4 E7BC0014 */   swc1     $f28, 0x14($sp)
/* FCF88 802D85D8 080B65A4 */  j         .L802D9690
/* FCF8C 802D85DC 00000000 */   nop      
/* FCF90 802D85E0 C7AC0058 */  lwc1      $f12, 0x58($sp)
/* FCF94 802D85E4 4406B000 */  mfc1      $a2, $f22
/* FCF98 802D85E8 4407C000 */  mfc1      $a3, $f24
/* FCF9C 802D85EC 0C01BEE4 */  jal       func_8006FB90
/* FCFA0 802D85F0 4600A386 */   mov.s    $f14, $f20
/* FCFA4 802D85F4 080B65A4 */  j         .L802D9690
/* FCFA8 802D85F8 00000000 */   nop      
/* FCFAC 802D85FC 4405A000 */  mfc1      $a1, $f20
/* FCFB0 802D8600 4406B000 */  mfc1      $a2, $f22
/* FCFB4 802D8604 4407C000 */  mfc1      $a3, $f24
/* FCFB8 802D8608 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FCFBC 802D860C 0C01BEFC */  jal       func_8006FBF0
/* FCFC0 802D8610 E7BC0014 */   swc1     $f28, 0x14($sp)
/* FCFC4 802D8614 080B65A4 */  j         .L802D9690
/* FCFC8 802D8618 00000000 */   nop      
/* FCFCC 802D861C C7AC0058 */  lwc1      $f12, 0x58($sp)
/* FCFD0 802D8620 4406B000 */  mfc1      $a2, $f22
/* FCFD4 802D8624 4407C000 */  mfc1      $a3, $f24
/* FCFD8 802D8628 0C01BF14 */  jal       func_8006FC50
/* FCFDC 802D862C 4600A386 */   mov.s    $f14, $f20
/* FCFE0 802D8630 080B65A4 */  j         .L802D9690
/* FCFE4 802D8634 00000000 */   nop      
/* FCFE8 802D8638 4405A000 */  mfc1      $a1, $f20
/* FCFEC 802D863C 4406B000 */  mfc1      $a2, $f22
/* FCFF0 802D8640 4407C000 */  mfc1      $a3, $f24
/* FCFF4 802D8644 0C01BF2C */  jal       func_8006FCB0
/* FCFF8 802D8648 00000000 */   nop      
/* FCFFC 802D864C 080B65A4 */  j         .L802D9690
/* FD000 802D8650 00000000 */   nop      
/* FD004 802D8654 C7AC0058 */  lwc1      $f12, 0x58($sp)
/* FD008 802D8658 4406B000 */  mfc1      $a2, $f22
/* FD00C 802D865C 4407C000 */  mfc1      $a3, $f24
/* FD010 802D8660 4600A386 */  mov.s     $f14, $f20
/* FD014 802D8664 0C01BF44 */  jal       func_8006FD10
/* FD018 802D8668 E7BA0010 */   swc1     $f26, 0x10($sp)
/* FD01C 802D866C 080B65A4 */  j         .L802D9690
/* FD020 802D8670 00000000 */   nop      
/* FD024 802D8674 8FA50058 */  lw        $a1, 0x58($sp)
/* FD028 802D8678 4406A000 */  mfc1      $a2, $f20
/* FD02C 802D867C 4407B000 */  mfc1      $a3, $f22
/* FD030 802D8680 8FA3004C */  lw        $v1, 0x4c($sp)
/* FD034 802D8684 0000202D */  daddu     $a0, $zero, $zero
/* FD038 802D8688 0C01BF5C */  jal       func_8006FD70
/* FD03C 802D868C AFA30010 */   sw       $v1, 0x10($sp)
/* FD040 802D8690 080B65A4 */  j         .L802D9690
/* FD044 802D8694 00000000 */   nop      
/* FD048 802D8698 C7AC0058 */  lwc1      $f12, 0x58($sp)
/* FD04C 802D869C 4406B000 */  mfc1      $a2, $f22
/* FD050 802D86A0 8FA7004C */  lw        $a3, 0x4c($sp)
/* FD054 802D86A4 0C01BF74 */  jal       func_8006FDD0
/* FD058 802D86A8 4600A386 */   mov.s    $f14, $f20
/* FD05C 802D86AC 080B65A4 */  j         .L802D9690
/* FD060 802D86B0 00000000 */   nop      
/* FD064 802D86B4 4405A000 */  mfc1      $a1, $f20
/* FD068 802D86B8 4406B000 */  mfc1      $a2, $f22
/* FD06C 802D86BC 4407C000 */  mfc1      $a3, $f24
/* FD070 802D86C0 C7A2005C */  lwc1      $f2, 0x5c($sp)
/* FD074 802D86C4 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD078 802D86C8 E7BC0014 */  swc1      $f28, 0x14($sp)
/* FD07C 802D86CC E7BE0018 */  swc1      $f30, 0x18($sp)
/* FD080 802D86D0 0C01BF8C */  jal       func_8006FE30
/* FD084 802D86D4 E7A2001C */   swc1     $f2, 0x1c($sp)
/* FD088 802D86D8 080B65A4 */  j         .L802D9690
/* FD08C 802D86DC 00000000 */   nop      
/* FD090 802D86E0 4406B000 */  mfc1      $a2, $f22
/* FD094 802D86E4 4407C000 */  mfc1      $a3, $f24
/* FD098 802D86E8 27A20030 */  addiu     $v0, $sp, 0x30
/* FD09C 802D86EC E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD0A0 802D86F0 E7BC0014 */  swc1      $f28, 0x14($sp)
/* FD0A4 802D86F4 E7BE0018 */  swc1      $f30, 0x18($sp)
/* FD0A8 802D86F8 AFB7001C */  sw        $s7, 0x1c($sp)
/* FD0AC 802D86FC 0C01BFA4 */  jal       fx_emote
/* FD0B0 802D8700 AFA20020 */   sw       $v0, 0x20($sp)
/* FD0B4 802D8704 080B6234 */  j         .L802D88D0
/* FD0B8 802D8708 00000000 */   nop      
/* FD0BC 802D870C 4405A000 */  mfc1      $a1, $f20
/* FD0C0 802D8710 4406B000 */  mfc1      $a2, $f22
/* FD0C4 802D8714 4407C000 */  mfc1      $a3, $f24
/* FD0C8 802D8718 0C01BFBC */  jal       func_8006FEF0
/* FD0CC 802D871C E7BA0010 */   swc1     $f26, 0x10($sp)
/* FD0D0 802D8720 080B65A4 */  j         .L802D9690
/* FD0D4 802D8724 00000000 */   nop      
/* FD0D8 802D8728 4405A000 */  mfc1      $a1, $f20
/* FD0DC 802D872C 4406B000 */  mfc1      $a2, $f22
/* FD0E0 802D8730 4407C000 */  mfc1      $a3, $f24
/* FD0E4 802D8734 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD0E8 802D8738 E7BC0014 */  swc1      $f28, 0x14($sp)
/* FD0EC 802D873C E7BE0018 */  swc1      $f30, 0x18($sp)
/* FD0F0 802D8740 0C01BFD4 */  jal       func_8006FF50
/* FD0F4 802D8744 AFB7001C */   sw       $s7, 0x1c($sp)
/* FD0F8 802D8748 080B65A4 */  j         .L802D9690
/* FD0FC 802D874C 00000000 */   nop      
/* FD100 802D8750 4405A000 */  mfc1      $a1, $f20
/* FD104 802D8754 4406B000 */  mfc1      $a2, $f22
/* FD108 802D8758 4407C000 */  mfc1      $a3, $f24
/* FD10C 802D875C E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD110 802D8760 0C01BFEC */  jal       func_8006FFB0
/* FD114 802D8764 AFB40014 */   sw       $s4, 0x14($sp)
/* FD118 802D8768 080B65A4 */  j         .L802D9690
/* FD11C 802D876C 00000000 */   nop      
/* FD120 802D8770 4405A000 */  mfc1      $a1, $f20
/* FD124 802D8774 4406B000 */  mfc1      $a2, $f22
/* FD128 802D8778 4407C000 */  mfc1      $a3, $f24
/* FD12C 802D877C 0C01C004 */  jal       func_80070010
/* FD130 802D8780 AFB60010 */   sw       $s6, 0x10($sp)
/* FD134 802D8784 080B65A4 */  j         .L802D9690
/* FD138 802D8788 00000000 */   nop      
/* FD13C 802D878C 4405A000 */  mfc1      $a1, $f20
/* FD140 802D8790 4406B000 */  mfc1      $a2, $f22
/* FD144 802D8794 4407C000 */  mfc1      $a3, $f24
/* FD148 802D8798 0C01C01C */  jal       func_80070070
/* FD14C 802D879C AFB60010 */   sw       $s6, 0x10($sp)
/* FD150 802D87A0 080B65A4 */  j         .L802D9690
/* FD154 802D87A4 00000000 */   nop      
/* FD158 802D87A8 4405A000 */  mfc1      $a1, $f20
/* FD15C 802D87AC 4406B000 */  mfc1      $a2, $f22
/* FD160 802D87B0 4407C000 */  mfc1      $a3, $f24
/* FD164 802D87B4 0C01C034 */  jal       func_800700D0
/* FD168 802D87B8 E7BA0010 */   swc1     $f26, 0x10($sp)
/* FD16C 802D87BC 080B65A4 */  j         .L802D9690
/* FD170 802D87C0 00000000 */   nop      
/* FD174 802D87C4 4405A000 */  mfc1      $a1, $f20
/* FD178 802D87C8 4406B000 */  mfc1      $a2, $f22
/* FD17C 802D87CC 4407C000 */  mfc1      $a3, $f24
/* FD180 802D87D0 0C01C04C */  jal       func_80070130
/* FD184 802D87D4 00000000 */   nop      
/* FD188 802D87D8 080B65A4 */  j         .L802D9690
/* FD18C 802D87DC 00000000 */   nop      
/* FD190 802D87E0 4405A000 */  mfc1      $a1, $f20
/* FD194 802D87E4 4406B000 */  mfc1      $a2, $f22
/* FD198 802D87E8 4407C000 */  mfc1      $a3, $f24
/* FD19C 802D87EC E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD1A0 802D87F0 E7BC0014 */  swc1      $f28, 0x14($sp)
/* FD1A4 802D87F4 E7BE0018 */  swc1      $f30, 0x18($sp)
/* FD1A8 802D87F8 0C01C064 */  jal       func_80070190
/* FD1AC 802D87FC AFB7001C */   sw       $s7, 0x1c($sp)
/* FD1B0 802D8800 080B65A4 */  j         .L802D9690
/* FD1B4 802D8804 00000000 */   nop      
/* FD1B8 802D8808 4405A000 */  mfc1      $a1, $f20
/* FD1BC 802D880C 4406B000 */  mfc1      $a2, $f22
/* FD1C0 802D8810 4407C000 */  mfc1      $a3, $f24
/* FD1C4 802D8814 0C01C07C */  jal       func_800701F0
/* FD1C8 802D8818 00000000 */   nop      
/* FD1CC 802D881C 080B65A4 */  j         .L802D9690
/* FD1D0 802D8820 00000000 */   nop      
/* FD1D4 802D8824 4405A000 */  mfc1      $a1, $f20
/* FD1D8 802D8828 4406B000 */  mfc1      $a2, $f22
/* FD1DC 802D882C 4407C000 */  mfc1      $a3, $f24
/* FD1E0 802D8830 0C01C094 */  jal       func_80070250
/* FD1E4 802D8834 AFB60010 */   sw       $s6, 0x10($sp)
/* FD1E8 802D8838 080B65A4 */  j         .L802D9690
/* FD1EC 802D883C 00000000 */   nop      
/* FD1F0 802D8840 4405A000 */  mfc1      $a1, $f20
/* FD1F4 802D8844 4406B000 */  mfc1      $a2, $f22
/* FD1F8 802D8848 4407C000 */  mfc1      $a3, $f24
/* FD1FC 802D884C 27A20034 */  addiu     $v0, $sp, 0x34
/* FD200 802D8850 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD204 802D8854 0C01C0AC */  jal       func_800702B0
/* FD208 802D8858 AFA20014 */   sw       $v0, 0x14($sp)
/* FD20C 802D885C 080B6337 */  j         .L802D8CDC
/* FD210 802D8860 00000000 */   nop      
/* FD214 802D8864 4405A000 */  mfc1      $a1, $f20
/* FD218 802D8868 4406B000 */  mfc1      $a2, $f22
/* FD21C 802D886C 4407C000 */  mfc1      $a3, $f24
/* FD220 802D8870 0C01C0C4 */  jal       func_80070310
/* FD224 802D8874 AFB60010 */   sw       $s6, 0x10($sp)
/* FD228 802D8878 080B65A4 */  j         .L802D9690
/* FD22C 802D887C 00000000 */   nop      
/* FD230 802D8880 4405A000 */  mfc1      $a1, $f20
/* FD234 802D8884 4406B000 */  mfc1      $a2, $f22
/* FD238 802D8888 4407C000 */  mfc1      $a3, $f24
/* FD23C 802D888C E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD240 802D8890 AFB40014 */  sw        $s4, 0x14($sp)
/* FD244 802D8894 E7BE0018 */  swc1      $f30, 0x18($sp)
/* FD248 802D8898 0C01C0DC */  jal       func_80070370
/* FD24C 802D889C AFB7001C */   sw       $s7, 0x1c($sp)
/* FD250 802D88A0 080B65A4 */  j         .L802D9690
/* FD254 802D88A4 00000000 */   nop      
/* FD258 802D88A8 4405A000 */  mfc1      $a1, $f20
/* FD25C 802D88AC 4406B000 */  mfc1      $a2, $f22
/* FD260 802D88B0 4407C000 */  mfc1      $a3, $f24
/* FD264 802D88B4 8FA30050 */  lw        $v1, 0x50($sp)
/* FD268 802D88B8 27A20030 */  addiu     $v0, $sp, 0x30
/* FD26C 802D88BC E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD270 802D88C0 E7BC0014 */  swc1      $f28, 0x14($sp)
/* FD274 802D88C4 AFA2001C */  sw        $v0, 0x1c($sp)
/* FD278 802D88C8 0C01C0F4 */  jal       func_800703D0
/* FD27C 802D88CC AFA30018 */   sw       $v1, 0x18($sp)
.L802D88D0:
/* FD280 802D88D0 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FD284 802D88D4 8FA60030 */  lw        $a2, 0x30($sp)
/* FD288 802D88D8 0C0B2026 */  jal       set_variable
/* FD28C 802D88DC 0260282D */   daddu    $a1, $s3, $zero
/* FD290 802D88E0 080B65A4 */  j         .L802D9690
/* FD294 802D88E4 00000000 */   nop      
/* FD298 802D88E8 4405A000 */  mfc1      $a1, $f20
/* FD29C 802D88EC 4406B000 */  mfc1      $a2, $f22
/* FD2A0 802D88F0 4407C000 */  mfc1      $a3, $f24
/* FD2A4 802D88F4 C7A2005C */  lwc1      $f2, 0x5c($sp)
/* FD2A8 802D88F8 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD2AC 802D88FC E7BC0014 */  swc1      $f28, 0x14($sp)
/* FD2B0 802D8900 E7BE0018 */  swc1      $f30, 0x18($sp)
/* FD2B4 802D8904 0C01C10C */  jal       func_80070430
/* FD2B8 802D8908 E7A2001C */   swc1     $f2, 0x1c($sp)
/* FD2BC 802D890C 080B65A4 */  j         .L802D9690
/* FD2C0 802D8910 00000000 */   nop      
/* FD2C4 802D8914 4405A000 */  mfc1      $a1, $f20
/* FD2C8 802D8918 4406B000 */  mfc1      $a2, $f22
/* FD2CC 802D891C 4407C000 */  mfc1      $a3, $f24
/* FD2D0 802D8920 8FA30050 */  lw        $v1, 0x50($sp)
/* FD2D4 802D8924 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD2D8 802D8928 E7BC0014 */  swc1      $f28, 0x14($sp)
/* FD2DC 802D892C 0C01C13C */  jal       func_800704F0
/* FD2E0 802D8930 AFA30018 */   sw       $v1, 0x18($sp)
/* FD2E4 802D8934 080B65A4 */  j         .L802D9690
/* FD2E8 802D8938 00000000 */   nop      
/* FD2EC 802D893C 4405A000 */  mfc1      $a1, $f20
/* FD2F0 802D8940 4406B000 */  mfc1      $a2, $f22
/* FD2F4 802D8944 4407C000 */  mfc1      $a3, $f24
/* FD2F8 802D8948 8FA30050 */  lw        $v1, 0x50($sp)
/* FD2FC 802D894C E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD300 802D8950 E7BC0014 */  swc1      $f28, 0x14($sp)
/* FD304 802D8954 AFB7001C */  sw        $s7, 0x1c($sp)
/* FD308 802D8958 0C01C154 */  jal       func_80070550
/* FD30C 802D895C AFA30018 */   sw       $v1, 0x18($sp)
/* FD310 802D8960 080B65A4 */  j         .L802D9690
/* FD314 802D8964 00000000 */   nop      
/* FD318 802D8968 4405A000 */  mfc1      $a1, $f20
/* FD31C 802D896C 4406B000 */  mfc1      $a2, $f22
/* FD320 802D8970 4407C000 */  mfc1      $a3, $f24
/* FD324 802D8974 0C01C16C */  jal       func_800705B0
/* FD328 802D8978 E7BA0010 */   swc1     $f26, 0x10($sp)
/* FD32C 802D897C 080B65A4 */  j         .L802D9690
/* FD330 802D8980 00000000 */   nop      
/* FD334 802D8984 4405A000 */  mfc1      $a1, $f20
/* FD338 802D8988 4406B000 */  mfc1      $a2, $f22
/* FD33C 802D898C 4407C000 */  mfc1      $a3, $f24
/* FD340 802D8990 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD344 802D8994 0C01C184 */  jal       func_80070610
/* FD348 802D8998 AFB40014 */   sw       $s4, 0x14($sp)
/* FD34C 802D899C 080B65A4 */  j         .L802D9690
/* FD350 802D89A0 00000000 */   nop      
/* FD354 802D89A4 4405A000 */  mfc1      $a1, $f20
/* FD358 802D89A8 4406B000 */  mfc1      $a2, $f22
/* FD35C 802D89AC 4407C000 */  mfc1      $a3, $f24
/* FD360 802D89B0 0C01C19C */  jal       func_80070670
/* FD364 802D89B4 00000000 */   nop      
/* FD368 802D89B8 080B65A4 */  j         .L802D9690
/* FD36C 802D89BC 00000000 */   nop      
/* FD370 802D89C0 4405A000 */  mfc1      $a1, $f20
/* FD374 802D89C4 4406B000 */  mfc1      $a2, $f22
/* FD378 802D89C8 4407C000 */  mfc1      $a3, $f24
/* FD37C 802D89CC 0C01C1B4 */  jal       func_800706D0
/* FD380 802D89D0 00000000 */   nop      
/* FD384 802D89D4 080B65A4 */  j         .L802D9690
/* FD388 802D89D8 00000000 */   nop      
/* FD38C 802D89DC 4405A000 */  mfc1      $a1, $f20
/* FD390 802D89E0 4406B000 */  mfc1      $a2, $f22
/* FD394 802D89E4 4407C000 */  mfc1      $a3, $f24
/* FD398 802D89E8 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD39C 802D89EC 0C01C1CC */  jal       func_80070730
/* FD3A0 802D89F0 AFB40014 */   sw       $s4, 0x14($sp)
/* FD3A4 802D89F4 080B65A4 */  j         .L802D9690
/* FD3A8 802D89F8 00000000 */   nop      
/* FD3AC 802D89FC 4405A000 */  mfc1      $a1, $f20
/* FD3B0 802D8A00 4406B000 */  mfc1      $a2, $f22
/* FD3B4 802D8A04 4407C000 */  mfc1      $a3, $f24
/* FD3B8 802D8A08 8FA30050 */  lw        $v1, 0x50($sp)
/* FD3BC 802D8A0C E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD3C0 802D8A10 E7BC0014 */  swc1      $f28, 0x14($sp)
/* FD3C4 802D8A14 0C01C1E4 */  jal       fx_sweat
/* FD3C8 802D8A18 AFA30018 */   sw       $v1, 0x18($sp)
/* FD3CC 802D8A1C 080B65A4 */  j         .L802D9690
/* FD3D0 802D8A20 00000000 */   nop      
/* FD3D4 802D8A24 4405A000 */  mfc1      $a1, $f20
/* FD3D8 802D8A28 4406B000 */  mfc1      $a2, $f22
/* FD3DC 802D8A2C 4407C000 */  mfc1      $a3, $f24
/* FD3E0 802D8A30 27A20038 */  addiu     $v0, $sp, 0x38
/* FD3E4 802D8A34 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD3E8 802D8A38 E7BC0014 */  swc1      $f28, 0x14($sp)
/* FD3EC 802D8A3C 0C01C1FC */  jal       fx_sleep_bubble
/* FD3F0 802D8A40 AFA20018 */   sw       $v0, 0x18($sp)
/* FD3F4 802D8A44 080B62C2 */  j         .L802D8B08
/* FD3F8 802D8A48 00000000 */   nop      
/* FD3FC 802D8A4C 4405A000 */  mfc1      $a1, $f20
/* FD400 802D8A50 4406B000 */  mfc1      $a2, $f22
/* FD404 802D8A54 4407C000 */  mfc1      $a3, $f24
/* FD408 802D8A58 0C01C22C */  jal       func_800708B0
/* FD40C 802D8A5C 00000000 */   nop      
/* FD410 802D8A60 080B65A4 */  j         .L802D9690
/* FD414 802D8A64 00000000 */   nop      
/* FD418 802D8A68 4405A000 */  mfc1      $a1, $f20
/* FD41C 802D8A6C 4406B000 */  mfc1      $a2, $f22
/* FD420 802D8A70 4407C000 */  mfc1      $a3, $f24
/* FD424 802D8A74 27A20034 */  addiu     $v0, $sp, 0x34
/* FD428 802D8A78 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD42C 802D8A7C 0C01C124 */  jal       func_80070490
/* FD430 802D8A80 AFA20014 */   sw       $v0, 0x14($sp)
/* FD434 802D8A84 080B6337 */  j         .L802D8CDC
/* FD438 802D8A88 00000000 */   nop      
/* FD43C 802D8A8C 4405A000 */  mfc1      $a1, $f20
/* FD440 802D8A90 4406B000 */  mfc1      $a2, $f22
/* FD444 802D8A94 4407C000 */  mfc1      $a3, $f24
/* FD448 802D8A98 0C01C244 */  jal       func_80070910
/* FD44C 802D8A9C 00000000 */   nop      
/* FD450 802D8AA0 080B65A4 */  j         .L802D9690
/* FD454 802D8AA4 00000000 */   nop      
/* FD458 802D8AA8 4405A000 */  mfc1      $a1, $f20
/* FD45C 802D8AAC 4406B000 */  mfc1      $a2, $f22
/* FD460 802D8AB0 4407C000 */  mfc1      $a3, $f24
/* FD464 802D8AB4 AFB60010 */  sw        $s6, 0x10($sp)
/* FD468 802D8AB8 0C01C25C */  jal       func_80070970
/* FD46C 802D8ABC AFB40014 */   sw       $s4, 0x14($sp)
/* FD470 802D8AC0 080B65A4 */  j         .L802D9690
/* FD474 802D8AC4 00000000 */   nop      
/* FD478 802D8AC8 4405A000 */  mfc1      $a1, $f20
/* FD47C 802D8ACC 4406B000 */  mfc1      $a2, $f22
/* FD480 802D8AD0 4407C000 */  mfc1      $a3, $f24
/* FD484 802D8AD4 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD488 802D8AD8 0C01C274 */  jal       func_800709D0
/* FD48C 802D8ADC AFB40014 */   sw       $s4, 0x14($sp)
/* FD490 802D8AE0 080B65A4 */  j         .L802D9690
/* FD494 802D8AE4 00000000 */   nop      
/* FD498 802D8AE8 4405A000 */  mfc1      $a1, $f20
/* FD49C 802D8AEC 4406B000 */  mfc1      $a2, $f22
/* FD4A0 802D8AF0 4407C000 */  mfc1      $a3, $f24
/* FD4A4 802D8AF4 27A20038 */  addiu     $v0, $sp, 0x38
/* FD4A8 802D8AF8 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD4AC 802D8AFC AFB40014 */  sw        $s4, 0x14($sp)
/* FD4B0 802D8B00 0C01C28C */  jal       func_80070A30
/* FD4B4 802D8B04 AFA20018 */   sw       $v0, 0x18($sp)
.L802D8B08:
/* FD4B8 802D8B08 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FD4BC 802D8B0C 8FA60038 */  lw        $a2, 0x38($sp)
/* FD4C0 802D8B10 0C0B2026 */  jal       set_variable
/* FD4C4 802D8B14 8FA5006C */   lw       $a1, 0x6c($sp)
/* FD4C8 802D8B18 080B65A4 */  j         .L802D9690
/* FD4CC 802D8B1C 00000000 */   nop      
/* FD4D0 802D8B20 4405A000 */  mfc1      $a1, $f20
/* FD4D4 802D8B24 4406B000 */  mfc1      $a2, $f22
/* FD4D8 802D8B28 4407C000 */  mfc1      $a3, $f24
/* FD4DC 802D8B2C 0C01C2A4 */  jal       func_80070A90
/* FD4E0 802D8B30 00000000 */   nop      
/* FD4E4 802D8B34 080B65A4 */  j         .L802D9690
/* FD4E8 802D8B38 00000000 */   nop      
/* FD4EC 802D8B3C 4405A000 */  mfc1      $a1, $f20
/* FD4F0 802D8B40 4406B000 */  mfc1      $a2, $f22
/* FD4F4 802D8B44 4407C000 */  mfc1      $a3, $f24
/* FD4F8 802D8B48 0C01C2BC */  jal       func_80070AF0
/* FD4FC 802D8B4C 00000000 */   nop      
/* FD500 802D8B50 080B65A4 */  j         .L802D9690
/* FD504 802D8B54 00000000 */   nop      
/* FD508 802D8B58 4405A000 */  mfc1      $a1, $f20
/* FD50C 802D8B5C 4406B000 */  mfc1      $a2, $f22
/* FD510 802D8B60 4407C000 */  mfc1      $a3, $f24
/* FD514 802D8B64 0C01C2D4 */  jal       func_80070B50
/* FD518 802D8B68 E7BA0010 */   swc1     $f26, 0x10($sp)
/* FD51C 802D8B6C 080B65A4 */  j         .L802D9690
/* FD520 802D8B70 00000000 */   nop      
/* FD524 802D8B74 4405A000 */  mfc1      $a1, $f20
/* FD528 802D8B78 4406B000 */  mfc1      $a2, $f22
/* FD52C 802D8B7C 4407C000 */  mfc1      $a3, $f24
/* FD530 802D8B80 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD534 802D8B84 0C01C2EC */  jal       func_80070BB0
/* FD538 802D8B88 AFB40014 */   sw       $s4, 0x14($sp)
/* FD53C 802D8B8C 080B65A4 */  j         .L802D9690
/* FD540 802D8B90 00000000 */   nop      
/* FD544 802D8B94 4405A000 */  mfc1      $a1, $f20
/* FD548 802D8B98 4406B000 */  mfc1      $a2, $f22
/* FD54C 802D8B9C 4407C000 */  mfc1      $a3, $f24
/* FD550 802D8BA0 27A20034 */  addiu     $v0, $sp, 0x34
/* FD554 802D8BA4 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD558 802D8BA8 0C01C304 */  jal       func_80070C10
/* FD55C 802D8BAC AFA20014 */   sw       $v0, 0x14($sp)
/* FD560 802D8BB0 080B6337 */  j         .L802D8CDC
/* FD564 802D8BB4 00000000 */   nop      
/* FD568 802D8BB8 4405A000 */  mfc1      $a1, $f20
/* FD56C 802D8BBC 4406B000 */  mfc1      $a2, $f22
/* FD570 802D8BC0 4407C000 */  mfc1      $a3, $f24
/* FD574 802D8BC4 27A20034 */  addiu     $v0, $sp, 0x34
/* FD578 802D8BC8 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD57C 802D8BCC 0C01C31C */  jal       func_80070C70
/* FD580 802D8BD0 AFA20014 */   sw       $v0, 0x14($sp)
/* FD584 802D8BD4 080B6337 */  j         .L802D8CDC
/* FD588 802D8BD8 00000000 */   nop      
/* FD58C 802D8BDC 4405A000 */  mfc1      $a1, $f20
/* FD590 802D8BE0 4406B000 */  mfc1      $a2, $f22
/* FD594 802D8BE4 4407C000 */  mfc1      $a3, $f24
/* FD598 802D8BE8 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD59C 802D8BEC 0C01C334 */  jal       func_80070CD0
/* FD5A0 802D8BF0 E7BC0014 */   swc1     $f28, 0x14($sp)
/* FD5A4 802D8BF4 080B65A4 */  j         .L802D9690
/* FD5A8 802D8BF8 0040A82D */   daddu    $s5, $v0, $zero
/* FD5AC 802D8BFC 4405A000 */  mfc1      $a1, $f20
/* FD5B0 802D8C00 4406B000 */  mfc1      $a2, $f22
/* FD5B4 802D8C04 4407C000 */  mfc1      $a3, $f24
/* FD5B8 802D8C08 8FA30054 */  lw        $v1, 0x54($sp)
/* FD5BC 802D8C0C E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD5C0 802D8C10 E7BC0014 */  swc1      $f28, 0x14($sp)
/* FD5C4 802D8C14 E7BE0018 */  swc1      $f30, 0x18($sp)
/* FD5C8 802D8C18 AFB7001C */  sw        $s7, 0x1c($sp)
/* FD5CC 802D8C1C AFBE0020 */  sw        $fp, 0x20($sp)
/* FD5D0 802D8C20 0C01C34C */  jal       func_80070D30
/* FD5D4 802D8C24 AFA30024 */   sw       $v1, 0x24($sp)
/* FD5D8 802D8C28 080B65A4 */  j         .L802D9690
/* FD5DC 802D8C2C 0040A82D */   daddu    $s5, $v0, $zero
/* FD5E0 802D8C30 4405A000 */  mfc1      $a1, $f20
/* FD5E4 802D8C34 4406B000 */  mfc1      $a2, $f22
/* FD5E8 802D8C38 4407C000 */  mfc1      $a3, $f24
/* FD5EC 802D8C3C E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD5F0 802D8C40 0C01C364 */  jal       func_80070D90
/* FD5F4 802D8C44 AFB40014 */   sw       $s4, 0x14($sp)
/* FD5F8 802D8C48 080B65A4 */  j         .L802D9690
/* FD5FC 802D8C4C 00000000 */   nop      
/* FD600 802D8C50 4405A000 */  mfc1      $a1, $f20
/* FD604 802D8C54 4406B000 */  mfc1      $a2, $f22
/* FD608 802D8C58 4407C000 */  mfc1      $a3, $f24
/* FD60C 802D8C5C E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD610 802D8C60 0C01C37C */  jal       func_80070DF0
/* FD614 802D8C64 AFB40014 */   sw       $s4, 0x14($sp)
/* FD618 802D8C68 080B65A4 */  j         .L802D9690
/* FD61C 802D8C6C 00000000 */   nop      
/* FD620 802D8C70 4405A000 */  mfc1      $a1, $f20
/* FD624 802D8C74 4406B000 */  mfc1      $a2, $f22
/* FD628 802D8C78 4407C000 */  mfc1      $a3, $f24
/* FD62C 802D8C7C 8FA30050 */  lw        $v1, 0x50($sp)
/* FD630 802D8C80 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD634 802D8C84 E7BC0014 */  swc1      $f28, 0x14($sp)
/* FD638 802D8C88 AFB7001C */  sw        $s7, 0x1c($sp)
/* FD63C 802D8C8C 0C01C394 */  jal       func_80070E50
/* FD640 802D8C90 AFA30018 */   sw       $v1, 0x18($sp)
/* FD644 802D8C94 080B65A4 */  j         .L802D9690
/* FD648 802D8C98 00000000 */   nop      
/* FD64C 802D8C9C 4405A000 */  mfc1      $a1, $f20
/* FD650 802D8CA0 4406B000 */  mfc1      $a2, $f22
/* FD654 802D8CA4 4407C000 */  mfc1      $a3, $f24
/* FD658 802D8CA8 27A20034 */  addiu     $v0, $sp, 0x34
/* FD65C 802D8CAC E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD660 802D8CB0 0C01C3AC */  jal       func_80070EB0
/* FD664 802D8CB4 AFA20014 */   sw       $v0, 0x14($sp)
/* FD668 802D8CB8 080B6337 */  j         .L802D8CDC
/* FD66C 802D8CBC 00000000 */   nop      
/* FD670 802D8CC0 4405A000 */  mfc1      $a1, $f20
/* FD674 802D8CC4 4406B000 */  mfc1      $a2, $f22
/* FD678 802D8CC8 4407C000 */  mfc1      $a3, $f24
/* FD67C 802D8CCC 27A20034 */  addiu     $v0, $sp, 0x34
/* FD680 802D8CD0 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD684 802D8CD4 0C01C3C4 */  jal       func_80070F10
/* FD688 802D8CD8 AFA20014 */   sw       $v0, 0x14($sp)
.L802D8CDC:
/* FD68C 802D8CDC 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FD690 802D8CE0 8FA60034 */  lw        $a2, 0x34($sp)
/* FD694 802D8CE4 0C0B2026 */  jal       set_variable
/* FD698 802D8CE8 0200282D */   daddu    $a1, $s0, $zero
/* FD69C 802D8CEC 080B65A4 */  j         .L802D9690
/* FD6A0 802D8CF0 00000000 */   nop      
/* FD6A4 802D8CF4 4405A000 */  mfc1      $a1, $f20
/* FD6A8 802D8CF8 4406B000 */  mfc1      $a2, $f22
/* FD6AC 802D8CFC 4407C000 */  mfc1      $a3, $f24
/* FD6B0 802D8D00 27A2003C */  addiu     $v0, $sp, 0x3c
/* FD6B4 802D8D04 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD6B8 802D8D08 E7BC0014 */  swc1      $f28, 0x14($sp)
/* FD6BC 802D8D0C E7BE0018 */  swc1      $f30, 0x18($sp)
/* FD6C0 802D8D10 AFB7001C */  sw        $s7, 0x1c($sp)
/* FD6C4 802D8D14 0C01C3DC */  jal       func_80070F70
/* FD6C8 802D8D18 AFA20020 */   sw       $v0, 0x20($sp)
/* FD6CC 802D8D1C 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FD6D0 802D8D20 8FA6003C */  lw        $a2, 0x3c($sp)
/* FD6D4 802D8D24 0C0B2026 */  jal       set_variable
/* FD6D8 802D8D28 0220282D */   daddu    $a1, $s1, $zero
/* FD6DC 802D8D2C 080B65A4 */  j         .L802D9690
/* FD6E0 802D8D30 00000000 */   nop      
/* FD6E4 802D8D34 4405A000 */  mfc1      $a1, $f20
/* FD6E8 802D8D38 4406B000 */  mfc1      $a2, $f22
/* FD6EC 802D8D3C 4407C000 */  mfc1      $a3, $f24
/* FD6F0 802D8D40 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD6F4 802D8D44 0C01C3F4 */  jal       func_80070FD0
/* FD6F8 802D8D48 AFB40014 */   sw       $s4, 0x14($sp)
/* FD6FC 802D8D4C 080B65A4 */  j         .L802D9690
/* FD700 802D8D50 00000000 */   nop      
/* FD704 802D8D54 4405A000 */  mfc1      $a1, $f20
/* FD708 802D8D58 4406B000 */  mfc1      $a2, $f22
/* FD70C 802D8D5C 4407C000 */  mfc1      $a3, $f24
/* FD710 802D8D60 0C01C40C */  jal       func_80071030
/* FD714 802D8D64 AFB60010 */   sw       $s6, 0x10($sp)
/* FD718 802D8D68 080B65A4 */  j         .L802D9690
/* FD71C 802D8D6C 0040A82D */   daddu    $s5, $v0, $zero
/* FD720 802D8D70 4405A000 */  mfc1      $a1, $f20
/* FD724 802D8D74 4406B000 */  mfc1      $a2, $f22
/* FD728 802D8D78 4407C000 */  mfc1      $a3, $f24
/* FD72C 802D8D7C 0C01C424 */  jal       func_80071090
/* FD730 802D8D80 AFB60010 */   sw       $s6, 0x10($sp)
/* FD734 802D8D84 080B65A4 */  j         .L802D9690
/* FD738 802D8D88 0040A82D */   daddu    $s5, $v0, $zero
/* FD73C 802D8D8C 4405A000 */  mfc1      $a1, $f20
/* FD740 802D8D90 4406B000 */  mfc1      $a2, $f22
/* FD744 802D8D94 4407C000 */  mfc1      $a3, $f24
/* FD748 802D8D98 0C01C43C */  jal       func_800710F0
/* FD74C 802D8D9C AFB60010 */   sw       $s6, 0x10($sp)
/* FD750 802D8DA0 080B65A4 */  j         .L802D9690
/* FD754 802D8DA4 0040A82D */   daddu    $s5, $v0, $zero
/* FD758 802D8DA8 8FA50044 */  lw        $a1, 0x44($sp)
/* FD75C 802D8DAC 4407C000 */  mfc1      $a3, $f24
/* FD760 802D8DB0 8FA60048 */  lw        $a2, 0x48($sp)
/* FD764 802D8DB4 AFB60010 */  sw        $s6, 0x10($sp)
/* FD768 802D8DB8 0C01C454 */  jal       func_80071150
/* FD76C 802D8DBC AFB40014 */   sw       $s4, 0x14($sp)
/* FD770 802D8DC0 080B65A4 */  j         .L802D9690
/* FD774 802D8DC4 0040A82D */   daddu    $s5, $v0, $zero
/* FD778 802D8DC8 4405A000 */  mfc1      $a1, $f20
/* FD77C 802D8DCC 4406B000 */  mfc1      $a2, $f22
/* FD780 802D8DD0 4407C000 */  mfc1      $a3, $f24
/* FD784 802D8DD4 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD788 802D8DD8 0C01C46C */  jal       func_800711B0
/* FD78C 802D8DDC AFB40014 */   sw       $s4, 0x14($sp)
/* FD790 802D8DE0 080B65A4 */  j         .L802D9690
/* FD794 802D8DE4 0040A82D */   daddu    $s5, $v0, $zero
/* FD798 802D8DE8 4405A000 */  mfc1      $a1, $f20
/* FD79C 802D8DEC 4406B000 */  mfc1      $a2, $f22
/* FD7A0 802D8DF0 4407C000 */  mfc1      $a3, $f24
/* FD7A4 802D8DF4 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD7A8 802D8DF8 0C01C484 */  jal       func_80071210
/* FD7AC 802D8DFC AFB40014 */   sw       $s4, 0x14($sp)
/* FD7B0 802D8E00 080B65A4 */  j         .L802D9690
/* FD7B4 802D8E04 0040A82D */   daddu    $s5, $v0, $zero
/* FD7B8 802D8E08 8FA50044 */  lw        $a1, 0x44($sp)
/* FD7BC 802D8E0C 0C01C49C */  jal       func_80071270
/* FD7C0 802D8E10 00000000 */   nop      
/* FD7C4 802D8E14 080B65A4 */  j         .L802D9690
/* FD7C8 802D8E18 0040A82D */   daddu    $s5, $v0, $zero
/* FD7CC 802D8E1C 4406B000 */  mfc1      $a2, $f22
/* FD7D0 802D8E20 0C01C4B4 */  jal       func_800712D0
/* FD7D4 802D8E24 8FA7004C */   lw       $a3, 0x4c($sp)
/* FD7D8 802D8E28 080B65A4 */  j         .L802D9690
/* FD7DC 802D8E2C 0040A82D */   daddu    $s5, $v0, $zero
/* FD7E0 802D8E30 4405A000 */  mfc1      $a1, $f20
/* FD7E4 802D8E34 4406B000 */  mfc1      $a2, $f22
/* FD7E8 802D8E38 4407C000 */  mfc1      $a3, $f24
/* FD7EC 802D8E3C E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD7F0 802D8E40 0C01C4CC */  jal       func_80071330
/* FD7F4 802D8E44 AFB40014 */   sw       $s4, 0x14($sp)
/* FD7F8 802D8E48 080B65A4 */  j         .L802D9690
/* FD7FC 802D8E4C 0040A82D */   daddu    $s5, $v0, $zero
/* FD800 802D8E50 4405A000 */  mfc1      $a1, $f20
/* FD804 802D8E54 4406B000 */  mfc1      $a2, $f22
/* FD808 802D8E58 4407C000 */  mfc1      $a3, $f24
/* FD80C 802D8E5C E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD810 802D8E60 0C01C4E4 */  jal       func_80071390
/* FD814 802D8E64 AFB40014 */   sw       $s4, 0x14($sp)
/* FD818 802D8E68 080B65A4 */  j         .L802D9690
/* FD81C 802D8E6C 0040A82D */   daddu    $s5, $v0, $zero
/* FD820 802D8E70 4405A000 */  mfc1      $a1, $f20
/* FD824 802D8E74 4406B000 */  mfc1      $a2, $f22
/* FD828 802D8E78 4407C000 */  mfc1      $a3, $f24
/* FD82C 802D8E7C E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD830 802D8E80 0C01C4FC */  jal       func_800713F0
/* FD834 802D8E84 AFB40014 */   sw       $s4, 0x14($sp)
/* FD838 802D8E88 080B65A4 */  j         .L802D9690
/* FD83C 802D8E8C 0040A82D */   daddu    $s5, $v0, $zero
/* FD840 802D8E90 4405A000 */  mfc1      $a1, $f20
/* FD844 802D8E94 4406B000 */  mfc1      $a2, $f22
/* FD848 802D8E98 4407C000 */  mfc1      $a3, $f24
/* FD84C 802D8E9C E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD850 802D8EA0 0C01C514 */  jal       func_80071450
/* FD854 802D8EA4 E7BC0014 */   swc1     $f28, 0x14($sp)
/* FD858 802D8EA8 080B65A4 */  j         .L802D9690
/* FD85C 802D8EAC 0040A82D */   daddu    $s5, $v0, $zero
/* FD860 802D8EB0 4405A000 */  mfc1      $a1, $f20
/* FD864 802D8EB4 4406B000 */  mfc1      $a2, $f22
/* FD868 802D8EB8 4407C000 */  mfc1      $a3, $f24
/* FD86C 802D8EBC E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD870 802D8EC0 0C01C52C */  jal       func_800714B0
/* FD874 802D8EC4 AFB40014 */   sw       $s4, 0x14($sp)
/* FD878 802D8EC8 080B65A4 */  j         .L802D9690
/* FD87C 802D8ECC 0040A82D */   daddu    $s5, $v0, $zero
/* FD880 802D8ED0 4405A000 */  mfc1      $a1, $f20
/* FD884 802D8ED4 4406B000 */  mfc1      $a2, $f22
/* FD888 802D8ED8 4407C000 */  mfc1      $a3, $f24
/* FD88C 802D8EDC C7A2005C */  lwc1      $f2, 0x5c($sp)
/* FD890 802D8EE0 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD894 802D8EE4 E7BC0014 */  swc1      $f28, 0x14($sp)
/* FD898 802D8EE8 E7BE0018 */  swc1      $f30, 0x18($sp)
/* FD89C 802D8EEC AFBE0020 */  sw        $fp, 0x20($sp)
/* FD8A0 802D8EF0 0C01C544 */  jal       func_80071510
/* FD8A4 802D8EF4 E7A2001C */   swc1     $f2, 0x1c($sp)
/* FD8A8 802D8EF8 080B65A4 */  j         .L802D9690
/* FD8AC 802D8EFC 0040A82D */   daddu    $s5, $v0, $zero
/* FD8B0 802D8F00 4600E08D */  trunc.w.s $f2, $f28
/* FD8B4 802D8F04 E7A20014 */  swc1      $f2, 0x14($sp)
/* FD8B8 802D8F08 C7A2005C */  lwc1      $f2, 0x5c($sp)
/* FD8BC 802D8F0C 4405A000 */  mfc1      $a1, $f20
/* FD8C0 802D8F10 4406B000 */  mfc1      $a2, $f22
/* FD8C4 802D8F14 4407C000 */  mfc1      $a3, $f24
/* FD8C8 802D8F18 4600108D */  trunc.w.s $f2, $f2
/* FD8CC 802D8F1C E7A2001C */  swc1      $f2, 0x1c($sp)
/* FD8D0 802D8F20 C7A20060 */  lwc1      $f2, 0x60($sp)
/* FD8D4 802D8F24 8FA30054 */  lw        $v1, 0x54($sp)
/* FD8D8 802D8F28 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD8DC 802D8F2C E7BE0018 */  swc1      $f30, 0x18($sp)
/* FD8E0 802D8F30 E7A20020 */  swc1      $f2, 0x20($sp)
/* FD8E4 802D8F34 0C01C55C */  jal       func_80071570
/* FD8E8 802D8F38 AFA30024 */   sw       $v1, 0x24($sp)
/* FD8EC 802D8F3C 080B65A4 */  j         .L802D9690
/* FD8F0 802D8F40 0040A82D */   daddu    $s5, $v0, $zero
/* FD8F4 802D8F44 4405A000 */  mfc1      $a1, $f20
/* FD8F8 802D8F48 4406B000 */  mfc1      $a2, $f22
/* FD8FC 802D8F4C 4407C000 */  mfc1      $a3, $f24
/* FD900 802D8F50 0C01C574 */  jal       func_800715D0
/* FD904 802D8F54 00000000 */   nop      
/* FD908 802D8F58 080B65A4 */  j         .L802D9690
/* FD90C 802D8F5C 0040A82D */   daddu    $s5, $v0, $zero
/* FD910 802D8F60 4405A000 */  mfc1      $a1, $f20
/* FD914 802D8F64 4406B000 */  mfc1      $a2, $f22
/* FD918 802D8F68 4407C000 */  mfc1      $a3, $f24
/* FD91C 802D8F6C E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD920 802D8F70 0C01C58C */  jal       func_80071630
/* FD924 802D8F74 AFB40014 */   sw       $s4, 0x14($sp)
/* FD928 802D8F78 080B65A4 */  j         .L802D9690
/* FD92C 802D8F7C 0040A82D */   daddu    $s5, $v0, $zero
/* FD930 802D8F80 4405A000 */  mfc1      $a1, $f20
/* FD934 802D8F84 4406B000 */  mfc1      $a2, $f22
/* FD938 802D8F88 4407C000 */  mfc1      $a3, $f24
/* FD93C 802D8F8C E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD940 802D8F90 0C01C5D4 */  jal       func_80071750
/* FD944 802D8F94 AFB40014 */   sw       $s4, 0x14($sp)
/* FD948 802D8F98 080B65A4 */  j         .L802D9690
/* FD94C 802D8F9C 0040A82D */   daddu    $s5, $v0, $zero
/* FD950 802D8FA0 4405A000 */  mfc1      $a1, $f20
/* FD954 802D8FA4 4406B000 */  mfc1      $a2, $f22
/* FD958 802D8FA8 4407C000 */  mfc1      $a3, $f24
/* FD95C 802D8FAC 0C01C5EC */  jal       func_800717B0
/* FD960 802D8FB0 00000000 */   nop      
/* FD964 802D8FB4 080B65A4 */  j         .L802D9690
/* FD968 802D8FB8 0040A82D */   daddu    $s5, $v0, $zero
/* FD96C 802D8FBC 4405A000 */  mfc1      $a1, $f20
/* FD970 802D8FC0 4406B000 */  mfc1      $a2, $f22
/* FD974 802D8FC4 4407C000 */  mfc1      $a3, $f24
/* FD978 802D8FC8 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD97C 802D8FCC 0C01C5BC */  jal       func_800716F0
/* FD980 802D8FD0 AFB40014 */   sw       $s4, 0x14($sp)
/* FD984 802D8FD4 080B65A4 */  j         .L802D9690
/* FD988 802D8FD8 0040A82D */   daddu    $s5, $v0, $zero
/* FD98C 802D8FDC 4405A000 */  mfc1      $a1, $f20
/* FD990 802D8FE0 4406B000 */  mfc1      $a2, $f22
/* FD994 802D8FE4 4407C000 */  mfc1      $a3, $f24
/* FD998 802D8FE8 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD99C 802D8FEC 0C01C634 */  jal       func_800718D0
/* FD9A0 802D8FF0 AFB40014 */   sw       $s4, 0x14($sp)
/* FD9A4 802D8FF4 080B65A4 */  j         .L802D9690
/* FD9A8 802D8FF8 0040A82D */   daddu    $s5, $v0, $zero
/* FD9AC 802D8FFC 4405A000 */  mfc1      $a1, $f20
/* FD9B0 802D9000 4406B000 */  mfc1      $a2, $f22
/* FD9B4 802D9004 4407C000 */  mfc1      $a3, $f24
/* FD9B8 802D9008 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD9BC 802D900C 0C01C64C */  jal       func_80071930
/* FD9C0 802D9010 AFB40014 */   sw       $s4, 0x14($sp)
/* FD9C4 802D9014 080B65A4 */  j         .L802D9690
/* FD9C8 802D9018 0040A82D */   daddu    $s5, $v0, $zero
/* FD9CC 802D901C 4405A000 */  mfc1      $a1, $f20
/* FD9D0 802D9020 4406B000 */  mfc1      $a2, $f22
/* FD9D4 802D9024 4407C000 */  mfc1      $a3, $f24
/* FD9D8 802D9028 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FD9DC 802D902C 0C01C664 */  jal       func_80071990
/* FD9E0 802D9030 AFB40014 */   sw       $s4, 0x14($sp)
/* FD9E4 802D9034 080B65A4 */  j         .L802D9690
/* FD9E8 802D9038 0040A82D */   daddu    $s5, $v0, $zero
/* FD9EC 802D903C 4405A000 */  mfc1      $a1, $f20
/* FD9F0 802D9040 4406B000 */  mfc1      $a2, $f22
/* FD9F4 802D9044 4407C000 */  mfc1      $a3, $f24
/* FD9F8 802D9048 C7A2005C */  lwc1      $f2, 0x5c($sp)
/* FD9FC 802D904C E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDA00 802D9050 E7BC0014 */  swc1      $f28, 0x14($sp)
/* FDA04 802D9054 E7BE0018 */  swc1      $f30, 0x18($sp)
/* FDA08 802D9058 AFBE0020 */  sw        $fp, 0x20($sp)
/* FDA0C 802D905C 0C01C67C */  jal       func_800719F0
/* FDA10 802D9060 E7A2001C */   swc1     $f2, 0x1c($sp)
/* FDA14 802D9064 080B65A4 */  j         .L802D9690
/* FDA18 802D9068 0040A82D */   daddu    $s5, $v0, $zero
/* FDA1C 802D906C 4405A000 */  mfc1      $a1, $f20
/* FDA20 802D9070 4406B000 */  mfc1      $a2, $f22
/* FDA24 802D9074 4407C000 */  mfc1      $a3, $f24
/* FDA28 802D9078 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDA2C 802D907C 0C01C694 */  jal       func_80071A50
/* FDA30 802D9080 AFB40014 */   sw       $s4, 0x14($sp)
/* FDA34 802D9084 080B65A4 */  j         .L802D9690
/* FDA38 802D9088 0040A82D */   daddu    $s5, $v0, $zero
/* FDA3C 802D908C 4405A000 */  mfc1      $a1, $f20
/* FDA40 802D9090 4406B000 */  mfc1      $a2, $f22
/* FDA44 802D9094 4407C000 */  mfc1      $a3, $f24
/* FDA48 802D9098 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDA4C 802D909C 0C01C6AC */  jal       func_80071AB0
/* FDA50 802D90A0 AFB40014 */   sw       $s4, 0x14($sp)
/* FDA54 802D90A4 080B65A4 */  j         .L802D9690
/* FDA58 802D90A8 0040A82D */   daddu    $s5, $v0, $zero
/* FDA5C 802D90AC 4405A000 */  mfc1      $a1, $f20
/* FDA60 802D90B0 4406B000 */  mfc1      $a2, $f22
/* FDA64 802D90B4 4407C000 */  mfc1      $a3, $f24
/* FDA68 802D90B8 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDA6C 802D90BC 0C01C6C4 */  jal       func_80071B10
/* FDA70 802D90C0 AFB40014 */   sw       $s4, 0x14($sp)
/* FDA74 802D90C4 080B65A4 */  j         .L802D9690
/* FDA78 802D90C8 0040A82D */   daddu    $s5, $v0, $zero
/* FDA7C 802D90CC 4405A000 */  mfc1      $a1, $f20
/* FDA80 802D90D0 4406B000 */  mfc1      $a2, $f22
/* FDA84 802D90D4 4407C000 */  mfc1      $a3, $f24
/* FDA88 802D90D8 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDA8C 802D90DC 0C01C6DC */  jal       func_80071B70
/* FDA90 802D90E0 AFB40014 */   sw       $s4, 0x14($sp)
/* FDA94 802D90E4 080B65A4 */  j         .L802D9690
/* FDA98 802D90E8 0040A82D */   daddu    $s5, $v0, $zero
/* FDA9C 802D90EC 4405A000 */  mfc1      $a1, $f20
/* FDAA0 802D90F0 4406B000 */  mfc1      $a2, $f22
/* FDAA4 802D90F4 4407C000 */  mfc1      $a3, $f24
/* FDAA8 802D90F8 C7A2005C */  lwc1      $f2, 0x5c($sp)
/* FDAAC 802D90FC E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDAB0 802D9100 E7BC0014 */  swc1      $f28, 0x14($sp)
/* FDAB4 802D9104 E7BE0018 */  swc1      $f30, 0x18($sp)
/* FDAB8 802D9108 AFBE0020 */  sw        $fp, 0x20($sp)
/* FDABC 802D910C 0C01C6F4 */  jal       func_80071BD0
/* FDAC0 802D9110 E7A2001C */   swc1     $f2, 0x1c($sp)
/* FDAC4 802D9114 080B65A4 */  j         .L802D9690
/* FDAC8 802D9118 0040A82D */   daddu    $s5, $v0, $zero
/* FDACC 802D911C 4405A000 */  mfc1      $a1, $f20
/* FDAD0 802D9120 4406B000 */  mfc1      $a2, $f22
/* FDAD4 802D9124 4407C000 */  mfc1      $a3, $f24
/* FDAD8 802D9128 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDADC 802D912C 0C01C70C */  jal       func_80071C30
/* FDAE0 802D9130 AFB40014 */   sw       $s4, 0x14($sp)
/* FDAE4 802D9134 080B65A4 */  j         .L802D9690
/* FDAE8 802D9138 0040A82D */   daddu    $s5, $v0, $zero
/* FDAEC 802D913C 4405A000 */  mfc1      $a1, $f20
/* FDAF0 802D9140 4406B000 */  mfc1      $a2, $f22
/* FDAF4 802D9144 4407C000 */  mfc1      $a3, $f24
/* FDAF8 802D9148 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDAFC 802D914C 0C01C724 */  jal       func_80071C90
/* FDB00 802D9150 AFB40014 */   sw       $s4, 0x14($sp)
/* FDB04 802D9154 080B65A4 */  j         .L802D9690
/* FDB08 802D9158 0040A82D */   daddu    $s5, $v0, $zero
/* FDB0C 802D915C 4405A000 */  mfc1      $a1, $f20
/* FDB10 802D9160 4406B000 */  mfc1      $a2, $f22
/* FDB14 802D9164 4407C000 */  mfc1      $a3, $f24
/* FDB18 802D9168 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDB1C 802D916C 0C01C73C */  jal       func_80071CF0
/* FDB20 802D9170 AFB40014 */   sw       $s4, 0x14($sp)
/* FDB24 802D9174 080B65A4 */  j         .L802D9690
/* FDB28 802D9178 0040A82D */   daddu    $s5, $v0, $zero
/* FDB2C 802D917C 4405A000 */  mfc1      $a1, $f20
/* FDB30 802D9180 4406B000 */  mfc1      $a2, $f22
/* FDB34 802D9184 4407C000 */  mfc1      $a3, $f24
/* FDB38 802D9188 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDB3C 802D918C 0C01C754 */  jal       func_80071D50
/* FDB40 802D9190 AFB40014 */   sw       $s4, 0x14($sp)
/* FDB44 802D9194 080B65A4 */  j         .L802D9690
/* FDB48 802D9198 0040A82D */   daddu    $s5, $v0, $zero
/* FDB4C 802D919C 4405A000 */  mfc1      $a1, $f20
/* FDB50 802D91A0 4406B000 */  mfc1      $a2, $f22
/* FDB54 802D91A4 4407C000 */  mfc1      $a3, $f24
/* FDB58 802D91A8 C7A2005C */  lwc1      $f2, 0x5c($sp)
/* FDB5C 802D91AC 8FA30054 */  lw        $v1, 0x54($sp)
/* FDB60 802D91B0 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDB64 802D91B4 E7BC0014 */  swc1      $f28, 0x14($sp)
/* FDB68 802D91B8 E7BE0018 */  swc1      $f30, 0x18($sp)
/* FDB6C 802D91BC AFBE0020 */  sw        $fp, 0x20($sp)
/* FDB70 802D91C0 E7A2001C */  swc1      $f2, 0x1c($sp)
/* FDB74 802D91C4 0C01C76C */  jal       func_80071DB0
/* FDB78 802D91C8 AFA30024 */   sw       $v1, 0x24($sp)
/* FDB7C 802D91CC 080B65A4 */  j         .L802D9690
/* FDB80 802D91D0 0040A82D */   daddu    $s5, $v0, $zero
/* FDB84 802D91D4 4405A000 */  mfc1      $a1, $f20
/* FDB88 802D91D8 4406B000 */  mfc1      $a2, $f22
/* FDB8C 802D91DC 4407C000 */  mfc1      $a3, $f24
/* FDB90 802D91E0 C7A2005C */  lwc1      $f2, 0x5c($sp)
/* FDB94 802D91E4 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDB98 802D91E8 E7BC0014 */  swc1      $f28, 0x14($sp)
/* FDB9C 802D91EC E7BE0018 */  swc1      $f30, 0x18($sp)
/* FDBA0 802D91F0 AFBE0020 */  sw        $fp, 0x20($sp)
/* FDBA4 802D91F4 0C01C784 */  jal       func_80071E10
/* FDBA8 802D91F8 E7A2001C */   swc1     $f2, 0x1c($sp)
/* FDBAC 802D91FC 080B65A4 */  j         .L802D9690
/* FDBB0 802D9200 0040A82D */   daddu    $s5, $v0, $zero
/* FDBB4 802D9204 4405A000 */  mfc1      $a1, $f20
/* FDBB8 802D9208 4406B000 */  mfc1      $a2, $f22
/* FDBBC 802D920C 4407C000 */  mfc1      $a3, $f24
/* FDBC0 802D9210 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDBC4 802D9214 0C01C79C */  jal       func_80071E70
/* FDBC8 802D9218 AFB40014 */   sw       $s4, 0x14($sp)
/* FDBCC 802D921C 080B65A4 */  j         .L802D9690
/* FDBD0 802D9220 0040A82D */   daddu    $s5, $v0, $zero
/* FDBD4 802D9224 4405A000 */  mfc1      $a1, $f20
/* FDBD8 802D9228 4406B000 */  mfc1      $a2, $f22
/* FDBDC 802D922C 4407C000 */  mfc1      $a3, $f24
/* FDBE0 802D9230 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDBE4 802D9234 0C01C7B4 */  jal       func_80071ED0
/* FDBE8 802D9238 AFB40014 */   sw       $s4, 0x14($sp)
/* FDBEC 802D923C 080B65A4 */  j         .L802D9690
/* FDBF0 802D9240 0040A82D */   daddu    $s5, $v0, $zero
/* FDBF4 802D9244 4405A000 */  mfc1      $a1, $f20
/* FDBF8 802D9248 4406B000 */  mfc1      $a2, $f22
/* FDBFC 802D924C 4407C000 */  mfc1      $a3, $f24
/* FDC00 802D9250 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDC04 802D9254 0C01C7CC */  jal       func_80071F30
/* FDC08 802D9258 AFB40014 */   sw       $s4, 0x14($sp)
/* FDC0C 802D925C 080B65A4 */  j         .L802D9690
/* FDC10 802D9260 0040A82D */   daddu    $s5, $v0, $zero
/* FDC14 802D9264 4405A000 */  mfc1      $a1, $f20
/* FDC18 802D9268 4406B000 */  mfc1      $a2, $f22
/* FDC1C 802D926C 4407C000 */  mfc1      $a3, $f24
/* FDC20 802D9270 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDC24 802D9274 0C01C7E4 */  jal       func_80071F90
/* FDC28 802D9278 AFB40014 */   sw       $s4, 0x14($sp)
/* FDC2C 802D927C 080B65A4 */  j         .L802D9690
/* FDC30 802D9280 0040A82D */   daddu    $s5, $v0, $zero
/* FDC34 802D9284 4405A000 */  mfc1      $a1, $f20
/* FDC38 802D9288 4406B000 */  mfc1      $a2, $f22
/* FDC3C 802D928C 4407C000 */  mfc1      $a3, $f24
/* FDC40 802D9290 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDC44 802D9294 0C01C7FC */  jal       func_80071FF0
/* FDC48 802D9298 AFB40014 */   sw       $s4, 0x14($sp)
/* FDC4C 802D929C 080B65A4 */  j         .L802D9690
/* FDC50 802D92A0 0040A82D */   daddu    $s5, $v0, $zero
/* FDC54 802D92A4 4405A000 */  mfc1      $a1, $f20
/* FDC58 802D92A8 4406B000 */  mfc1      $a2, $f22
/* FDC5C 802D92AC 4407C000 */  mfc1      $a3, $f24
/* FDC60 802D92B0 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDC64 802D92B4 0C01C82C */  jal       func_800720B0
/* FDC68 802D92B8 AFB40014 */   sw       $s4, 0x14($sp)
/* FDC6C 802D92BC 080B65A4 */  j         .L802D9690
/* FDC70 802D92C0 0040A82D */   daddu    $s5, $v0, $zero
/* FDC74 802D92C4 4405A000 */  mfc1      $a1, $f20
/* FDC78 802D92C8 4406B000 */  mfc1      $a2, $f22
/* FDC7C 802D92CC 4407C000 */  mfc1      $a3, $f24
/* FDC80 802D92D0 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDC84 802D92D4 0C01C844 */  jal       func_80072110
/* FDC88 802D92D8 AFB40014 */   sw       $s4, 0x14($sp)
/* FDC8C 802D92DC 080B65A4 */  j         .L802D9690
/* FDC90 802D92E0 0040A82D */   daddu    $s5, $v0, $zero
/* FDC94 802D92E4 4405A000 */  mfc1      $a1, $f20
/* FDC98 802D92E8 4406B000 */  mfc1      $a2, $f22
/* FDC9C 802D92EC 4407C000 */  mfc1      $a3, $f24
/* FDCA0 802D92F0 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDCA4 802D92F4 0C01C85C */  jal       func_80072170
/* FDCA8 802D92F8 AFB40014 */   sw       $s4, 0x14($sp)
/* FDCAC 802D92FC 080B65A4 */  j         .L802D9690
/* FDCB0 802D9300 0040A82D */   daddu    $s5, $v0, $zero
/* FDCB4 802D9304 4405A000 */  mfc1      $a1, $f20
/* FDCB8 802D9308 4406B000 */  mfc1      $a2, $f22
/* FDCBC 802D930C 4407C000 */  mfc1      $a3, $f24
/* FDCC0 802D9310 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDCC4 802D9314 E7BC0014 */  swc1      $f28, 0x14($sp)
/* FDCC8 802D9318 E7BE0018 */  swc1      $f30, 0x18($sp)
/* FDCCC 802D931C 0C01C874 */  jal       func_800721D0
/* FDCD0 802D9320 AFB7001C */   sw       $s7, 0x1c($sp)
/* FDCD4 802D9324 080B65A4 */  j         .L802D9690
/* FDCD8 802D9328 0040A82D */   daddu    $s5, $v0, $zero
/* FDCDC 802D932C 4405A000 */  mfc1      $a1, $f20
/* FDCE0 802D9330 4406B000 */  mfc1      $a2, $f22
/* FDCE4 802D9334 4407C000 */  mfc1      $a3, $f24
/* FDCE8 802D9338 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDCEC 802D933C 0C01C88C */  jal       func_80072230
/* FDCF0 802D9340 AFB40014 */   sw       $s4, 0x14($sp)
/* FDCF4 802D9344 080B65A4 */  j         .L802D9690
/* FDCF8 802D9348 0040A82D */   daddu    $s5, $v0, $zero
/* FDCFC 802D934C C7A20064 */  lwc1      $f2, 0x64($sp)
/* FDD00 802D9350 4405A000 */  mfc1      $a1, $f20
/* FDD04 802D9354 4406B000 */  mfc1      $a2, $f22
/* FDD08 802D9358 4407C000 */  mfc1      $a3, $f24
/* FDD0C 802D935C E7A20024 */  swc1      $f2, 0x24($sp)
/* FDD10 802D9360 C7A20068 */  lwc1      $f2, 0x68($sp)
/* FDD14 802D9364 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDD18 802D9368 E7BC0014 */  swc1      $f28, 0x14($sp)
/* FDD1C 802D936C E7BE0018 */  swc1      $f30, 0x18($sp)
/* FDD20 802D9370 AFB7001C */  sw        $s7, 0x1c($sp)
/* FDD24 802D9374 AFBE0020 */  sw        $fp, 0x20($sp)
/* FDD28 802D9378 0C01C8A4 */  jal       func_80072290
/* FDD2C 802D937C E7A20028 */   swc1     $f2, 0x28($sp)
/* FDD30 802D9380 080B65A4 */  j         .L802D9690
/* FDD34 802D9384 0040A82D */   daddu    $s5, $v0, $zero
/* FDD38 802D9388 4405A000 */  mfc1      $a1, $f20
/* FDD3C 802D938C 4406B000 */  mfc1      $a2, $f22
/* FDD40 802D9390 4407C000 */  mfc1      $a3, $f24
/* FDD44 802D9394 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDD48 802D9398 0C01C8BC */  jal       func_800722F0
/* FDD4C 802D939C AFB40014 */   sw       $s4, 0x14($sp)
/* FDD50 802D93A0 080B65A4 */  j         .L802D9690
/* FDD54 802D93A4 0040A82D */   daddu    $s5, $v0, $zero
/* FDD58 802D93A8 4405A000 */  mfc1      $a1, $f20
/* FDD5C 802D93AC 4406B000 */  mfc1      $a2, $f22
/* FDD60 802D93B0 4407C000 */  mfc1      $a3, $f24
/* FDD64 802D93B4 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDD68 802D93B8 E7BC0014 */  swc1      $f28, 0x14($sp)
/* FDD6C 802D93BC E7BE0018 */  swc1      $f30, 0x18($sp)
/* FDD70 802D93C0 AFB7001C */  sw        $s7, 0x1c($sp)
/* FDD74 802D93C4 0C01C8D4 */  jal       func_80072350
/* FDD78 802D93C8 AFBE0020 */   sw       $fp, 0x20($sp)
/* FDD7C 802D93CC 080B65A4 */  j         .L802D9690
/* FDD80 802D93D0 0040A82D */   daddu    $s5, $v0, $zero
/* FDD84 802D93D4 4405A000 */  mfc1      $a1, $f20
/* FDD88 802D93D8 4406B000 */  mfc1      $a2, $f22
/* FDD8C 802D93DC 4407C000 */  mfc1      $a3, $f24
/* FDD90 802D93E0 8FA30050 */  lw        $v1, 0x50($sp)
/* FDD94 802D93E4 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDD98 802D93E8 AFB40014 */  sw        $s4, 0x14($sp)
/* FDD9C 802D93EC 0C01C8EC */  jal       func_800723B0
/* FDDA0 802D93F0 AFA30018 */   sw       $v1, 0x18($sp)
/* FDDA4 802D93F4 080B65A4 */  j         .L802D9690
/* FDDA8 802D93F8 0040A82D */   daddu    $s5, $v0, $zero
/* FDDAC 802D93FC C7A2005C */  lwc1      $f2, 0x5c($sp)
/* FDDB0 802D9400 4405A000 */  mfc1      $a1, $f20
/* FDDB4 802D9404 4406B000 */  mfc1      $a2, $f22
/* FDDB8 802D9408 4407C000 */  mfc1      $a3, $f24
/* FDDBC 802D940C E7A2001C */  swc1      $f2, 0x1c($sp)
/* FDDC0 802D9410 C7A20060 */  lwc1      $f2, 0x60($sp)
/* FDDC4 802D9414 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDDC8 802D9418 E7BC0014 */  swc1      $f28, 0x14($sp)
/* FDDCC 802D941C E7BE0018 */  swc1      $f30, 0x18($sp)
/* FDDD0 802D9420 0C01C904 */  jal       func_80072410
/* FDDD4 802D9424 E7A20020 */   swc1     $f2, 0x20($sp)
/* FDDD8 802D9428 080B65A4 */  j         .L802D9690
/* FDDDC 802D942C 0040A82D */   daddu    $s5, $v0, $zero
/* FDDE0 802D9430 4405A000 */  mfc1      $a1, $f20
/* FDDE4 802D9434 4406B000 */  mfc1      $a2, $f22
/* FDDE8 802D9438 4407C000 */  mfc1      $a3, $f24
/* FDDEC 802D943C E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDDF0 802D9440 0C01C91C */  jal       func_80072470
/* FDDF4 802D9444 AFB40014 */   sw       $s4, 0x14($sp)
/* FDDF8 802D9448 080B65A4 */  j         .L802D9690
/* FDDFC 802D944C 0040A82D */   daddu    $s5, $v0, $zero
/* FDE00 802D9450 4405A000 */  mfc1      $a1, $f20
/* FDE04 802D9454 4406B000 */  mfc1      $a2, $f22
/* FDE08 802D9458 4407C000 */  mfc1      $a3, $f24
/* FDE0C 802D945C C7A2005C */  lwc1      $f2, 0x5c($sp)
/* FDE10 802D9460 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDE14 802D9464 E7BC0014 */  swc1      $f28, 0x14($sp)
/* FDE18 802D9468 E7BE0018 */  swc1      $f30, 0x18($sp)
/* FDE1C 802D946C AFBE0020 */  sw        $fp, 0x20($sp)
/* FDE20 802D9470 0C01C94C */  jal       func_80072530
/* FDE24 802D9474 E7A2001C */   swc1     $f2, 0x1c($sp)
/* FDE28 802D9478 080B65A4 */  j         .L802D9690
/* FDE2C 802D947C 0040A82D */   daddu    $s5, $v0, $zero
/* FDE30 802D9480 4405A000 */  mfc1      $a1, $f20
/* FDE34 802D9484 4406B000 */  mfc1      $a2, $f22
/* FDE38 802D9488 4407C000 */  mfc1      $a3, $f24
/* FDE3C 802D948C E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDE40 802D9490 0C01C964 */  jal       func_80072590
/* FDE44 802D9494 AFB40014 */   sw       $s4, 0x14($sp)
/* FDE48 802D9498 080B65A4 */  j         .L802D9690
/* FDE4C 802D949C 0040A82D */   daddu    $s5, $v0, $zero
/* FDE50 802D94A0 4405A000 */  mfc1      $a1, $f20
/* FDE54 802D94A4 4406B000 */  mfc1      $a2, $f22
/* FDE58 802D94A8 4407C000 */  mfc1      $a3, $f24
/* FDE5C 802D94AC 0C01C61C */  jal       func_80071870
/* FDE60 802D94B0 00000000 */   nop      
/* FDE64 802D94B4 080B65A4 */  j         .L802D9690
/* FDE68 802D94B8 0040A82D */   daddu    $s5, $v0, $zero
/* FDE6C 802D94BC 4405A000 */  mfc1      $a1, $f20
/* FDE70 802D94C0 4406B000 */  mfc1      $a2, $f22
/* FDE74 802D94C4 4407C000 */  mfc1      $a3, $f24
/* FDE78 802D94C8 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDE7C 802D94CC 0C01C97C */  jal       func_800725F0
/* FDE80 802D94D0 AFB40014 */   sw       $s4, 0x14($sp)
/* FDE84 802D94D4 080B65A4 */  j         .L802D9690
/* FDE88 802D94D8 0040A82D */   daddu    $s5, $v0, $zero
/* FDE8C 802D94DC 4405A000 */  mfc1      $a1, $f20
/* FDE90 802D94E0 4406B000 */  mfc1      $a2, $f22
/* FDE94 802D94E4 4407C000 */  mfc1      $a3, $f24
/* FDE98 802D94E8 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDE9C 802D94EC 0C01C994 */  jal       func_80072650
/* FDEA0 802D94F0 AFB40014 */   sw       $s4, 0x14($sp)
/* FDEA4 802D94F4 080B65A4 */  j         .L802D9690
/* FDEA8 802D94F8 0040A82D */   daddu    $s5, $v0, $zero
/* FDEAC 802D94FC 4405A000 */  mfc1      $a1, $f20
/* FDEB0 802D9500 4406B000 */  mfc1      $a2, $f22
/* FDEB4 802D9504 4407C000 */  mfc1      $a3, $f24
/* FDEB8 802D9508 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDEBC 802D950C 0C01C9AC */  jal       func_800726B0
/* FDEC0 802D9510 AFB40014 */   sw       $s4, 0x14($sp)
/* FDEC4 802D9514 080B65A4 */  j         .L802D9690
/* FDEC8 802D9518 0040A82D */   daddu    $s5, $v0, $zero
/* FDECC 802D951C 4405A000 */  mfc1      $a1, $f20
/* FDED0 802D9520 4406B000 */  mfc1      $a2, $f22
/* FDED4 802D9524 4407C000 */  mfc1      $a3, $f24
/* FDED8 802D9528 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDEDC 802D952C 0C01C9C4 */  jal       func_80072710
/* FDEE0 802D9530 AFB40014 */   sw       $s4, 0x14($sp)
/* FDEE4 802D9534 080B65A4 */  j         .L802D9690
/* FDEE8 802D9538 0040A82D */   daddu    $s5, $v0, $zero
/* FDEEC 802D953C 4405A000 */  mfc1      $a1, $f20
/* FDEF0 802D9540 4406B000 */  mfc1      $a2, $f22
/* FDEF4 802D9544 4407C000 */  mfc1      $a3, $f24
/* FDEF8 802D9548 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDEFC 802D954C 0C01C9DC */  jal       func_80072770
/* FDF00 802D9550 AFB40014 */   sw       $s4, 0x14($sp)
/* FDF04 802D9554 080B65A4 */  j         .L802D9690
/* FDF08 802D9558 0040A82D */   daddu    $s5, $v0, $zero
/* FDF0C 802D955C 4405A000 */  mfc1      $a1, $f20
/* FDF10 802D9560 4406B000 */  mfc1      $a2, $f22
/* FDF14 802D9564 4407C000 */  mfc1      $a3, $f24
/* FDF18 802D9568 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDF1C 802D956C 0C01C9F4 */  jal       func_800727D0
/* FDF20 802D9570 AFB40014 */   sw       $s4, 0x14($sp)
/* FDF24 802D9574 080B65A4 */  j         .L802D9690
/* FDF28 802D9578 0040A82D */   daddu    $s5, $v0, $zero
/* FDF2C 802D957C 4405A000 */  mfc1      $a1, $f20
/* FDF30 802D9580 4406B000 */  mfc1      $a2, $f22
/* FDF34 802D9584 4407C000 */  mfc1      $a3, $f24
/* FDF38 802D9588 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDF3C 802D958C 0C01CA0C */  jal       func_80072830
/* FDF40 802D9590 AFB40014 */   sw       $s4, 0x14($sp)
/* FDF44 802D9594 080B65A4 */  j         .L802D9690
/* FDF48 802D9598 0040A82D */   daddu    $s5, $v0, $zero
/* FDF4C 802D959C 4405A000 */  mfc1      $a1, $f20
/* FDF50 802D95A0 4406B000 */  mfc1      $a2, $f22
/* FDF54 802D95A4 4407C000 */  mfc1      $a3, $f24
/* FDF58 802D95A8 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDF5C 802D95AC 0C01CA24 */  jal       func_80072890
/* FDF60 802D95B0 AFB40014 */   sw       $s4, 0x14($sp)
/* FDF64 802D95B4 080B65A4 */  j         .L802D9690
/* FDF68 802D95B8 0040A82D */   daddu    $s5, $v0, $zero
/* FDF6C 802D95BC 4405A000 */  mfc1      $a1, $f20
/* FDF70 802D95C0 4406B000 */  mfc1      $a2, $f22
/* FDF74 802D95C4 4407C000 */  mfc1      $a3, $f24
/* FDF78 802D95C8 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDF7C 802D95CC 0C01CA3C */  jal       func_800728F0
/* FDF80 802D95D0 AFB40014 */   sw       $s4, 0x14($sp)
/* FDF84 802D95D4 080B65A4 */  j         .L802D9690
/* FDF88 802D95D8 0040A82D */   daddu    $s5, $v0, $zero
/* FDF8C 802D95DC 4405A000 */  mfc1      $a1, $f20
/* FDF90 802D95E0 4406B000 */  mfc1      $a2, $f22
/* FDF94 802D95E4 4407C000 */  mfc1      $a3, $f24
/* FDF98 802D95E8 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDF9C 802D95EC 0C01CA54 */  jal       func_80072950
/* FDFA0 802D95F0 AFB40014 */   sw       $s4, 0x14($sp)
/* FDFA4 802D95F4 080B65A4 */  j         .L802D9690
/* FDFA8 802D95F8 0040A82D */   daddu    $s5, $v0, $zero
/* FDFAC 802D95FC 4405A000 */  mfc1      $a1, $f20
/* FDFB0 802D9600 4406B000 */  mfc1      $a2, $f22
/* FDFB4 802D9604 4407C000 */  mfc1      $a3, $f24
/* FDFB8 802D9608 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDFBC 802D960C 0C01CA6C */  jal       func_800729B0
/* FDFC0 802D9610 AFB40014 */   sw       $s4, 0x14($sp)
/* FDFC4 802D9614 080B65A4 */  j         .L802D9690
/* FDFC8 802D9618 0040A82D */   daddu    $s5, $v0, $zero
/* FDFCC 802D961C 4405A000 */  mfc1      $a1, $f20
/* FDFD0 802D9620 4406B000 */  mfc1      $a2, $f22
/* FDFD4 802D9624 4407C000 */  mfc1      $a3, $f24
/* FDFD8 802D9628 44940000 */  mtc1      $s4, $f0
/* FDFDC 802D962C 00000000 */  nop       
/* FDFE0 802D9630 46800020 */  cvt.s.w   $f0, $f0
/* FDFE4 802D9634 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FDFE8 802D9638 0C01CA84 */  jal       func_80072A10
/* FDFEC 802D963C E7A00014 */   swc1     $f0, 0x14($sp)
/* FDFF0 802D9640 080B65A4 */  j         .L802D9690
/* FDFF4 802D9644 0040A82D */   daddu    $s5, $v0, $zero
/* FDFF8 802D9648 4405A000 */  mfc1      $a1, $f20
/* FDFFC 802D964C 4406B000 */  mfc1      $a2, $f22
/* FE000 802D9650 4407C000 */  mfc1      $a3, $f24
/* FE004 802D9654 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FE008 802D9658 0C01CA9C */  jal       func_80072A70
/* FE00C 802D965C AFB40014 */   sw       $s4, 0x14($sp)
/* FE010 802D9660 080B65A4 */  j         .L802D9690
/* FE014 802D9664 0040A82D */   daddu    $s5, $v0, $zero
/* FE018 802D9668 4405A000 */  mfc1      $a1, $f20
/* FE01C 802D966C 4406B000 */  mfc1      $a2, $f22
/* FE020 802D9670 4407C000 */  mfc1      $a3, $f24
/* FE024 802D9674 E7BA0010 */  swc1      $f26, 0x10($sp)
/* FE028 802D9678 0C01CAB4 */  jal       func_80072AD0
/* FE02C 802D967C AFB40014 */   sw       $s4, 0x14($sp)
/* FE030 802D9680 080B65A4 */  j         .L802D9690
/* FE034 802D9684 0040A82D */   daddu    $s5, $v0, $zero
.L802D9688:
/* FE038 802D9688 080B65A2 */  j         .L802D9688
/* FE03C 802D968C 00000000 */   nop      
.L802D9690:
/* FE040 802D9690 12A00005 */  beqz      $s5, .L802D96A8
/* FE044 802D9694 3C05FE36 */   lui      $a1, 0xfe36
/* FE048 802D9698 8FA400C8 */  lw        $a0, 0xc8($sp)
/* FE04C 802D969C 34A53C8F */  ori       $a1, $a1, 0x3c8f
/* FE050 802D96A0 0C0B2026 */  jal       set_variable
/* FE054 802D96A4 02A0302D */   daddu    $a2, $s5, $zero
.L802D96A8:
/* FE058 802D96A8 8FBF0094 */  lw        $ra, 0x94($sp)
/* FE05C 802D96AC 8FBE0090 */  lw        $fp, 0x90($sp)
/* FE060 802D96B0 8FB7008C */  lw        $s7, 0x8c($sp)
/* FE064 802D96B4 8FB60088 */  lw        $s6, 0x88($sp)
/* FE068 802D96B8 8FB50084 */  lw        $s5, 0x84($sp)
/* FE06C 802D96BC 8FB40080 */  lw        $s4, 0x80($sp)
/* FE070 802D96C0 8FB3007C */  lw        $s3, 0x7c($sp)
/* FE074 802D96C4 8FB20078 */  lw        $s2, 0x78($sp)
/* FE078 802D96C8 8FB10074 */  lw        $s1, 0x74($sp)
/* FE07C 802D96CC 8FB00070 */  lw        $s0, 0x70($sp)
/* FE080 802D96D0 D7BE00C0 */  ldc1      $f30, 0xc0($sp)
/* FE084 802D96D4 D7BC00B8 */  ldc1      $f28, 0xb8($sp)
/* FE088 802D96D8 D7BA00B0 */  ldc1      $f26, 0xb0($sp)
/* FE08C 802D96DC D7B800A8 */  ldc1      $f24, 0xa8($sp)
/* FE090 802D96E0 D7B600A0 */  ldc1      $f22, 0xa0($sp)
/* FE094 802D96E4 D7B40098 */  ldc1      $f20, 0x98($sp)
/* FE098 802D96E8 24020002 */  addiu     $v0, $zero, 2
/* FE09C 802D96EC 03E00008 */  jr        $ra
/* FE0A0 802D96F0 27BD00C8 */   addiu    $sp, $sp, 0xc8
/* FE0A4 802D96F4 00000000 */  nop       
/* FE0A8 802D96F8 00000000 */  nop       
/* FE0AC 802D96FC 00000000 */  nop       
