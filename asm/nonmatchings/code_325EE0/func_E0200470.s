.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E0200470
/* 325F40 E0200470 3C01E020 */  lui       $at, 0xe020
/* 325F44 E0200474 8C2106AC */  lw        $at, 0x6ac($at)
/* 325F48 E0200478 00200008 */  jr        $at
/* 325F4C E020047C 00000000 */   nop      
