.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E02005A0
/* 326070 E02005A0 3C01E020 */  lui       $at, 0xe020
/* 326074 E02005A4 8C2106F8 */  lw        $at, 0x6f8($at)
/* 326078 E02005A8 00200008 */  jr        $at
/* 32607C E02005AC 00000000 */   nop      
