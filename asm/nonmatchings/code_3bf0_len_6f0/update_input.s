.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel update_input
/* 3C74 80028874 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 3C78 80028878 AFB20018 */  sw        $s2, 0x18($sp)
/* 3C7C 8002887C 3C128007 */  lui       $s2, %hi(gGameStatusPtr)
/* 3C80 80028880 2652419C */  addiu     $s2, $s2, %lo(gGameStatusPtr)
/* 3C84 80028884 AFBF001C */  sw        $ra, 0x1c($sp)
/* 3C88 80028888 AFB10014 */  sw        $s1, 0x14($sp)
/* 3C8C 8002888C AFB00010 */  sw        $s0, 0x10($sp)
/* 3C90 80028890 8E420000 */  lw        $v0, ($s2)
/* 3C94 80028894 90420073 */  lbu       $v0, 0x73($v0)
/* 3C98 80028898 3C11800A */  lui       $s1, 0x800a
/* 3C9C 8002889C 2631A5B8 */  addiu     $s1, $s1, -0x5a48
/* 3CA0 800288A0 30420001 */  andi      $v0, $v0, 1
/* 3CA4 800288A4 10400005 */  beqz      $v0, .L800288BC
/* 3CA8 800288A8 0000802D */   daddu    $s0, $zero, $zero
/* 3CAC 800288AC 24100001 */  addiu     $s0, $zero, 1
/* 3CB0 800288B0 0220202D */  daddu     $a0, $s1, $zero
/* 3CB4 800288B4 0C017D94 */  jal       nuContDataGet
/* 3CB8 800288B8 0000282D */   daddu    $a1, $zero, $zero
.L800288BC:
/* 3CBC 800288BC 8E430000 */  lw        $v1, ($s2)
/* 3CC0 800288C0 80620071 */  lb        $v0, 0x71($v1)
/* 3CC4 800288C4 10400015 */  beqz      $v0, .L8002891C
/* 3CC8 800288C8 28420002 */   slti     $v0, $v0, 2
/* 3CCC 800288CC 10400008 */  beqz      $v0, .L800288F0
/* 3CD0 800288D0 00000000 */   nop      
/* 3CD4 800288D4 96220000 */  lhu       $v0, ($s1)
/* 3CD8 800288D8 3042F000 */  andi      $v0, $v0, 0xf000
/* 3CDC 800288DC 10400004 */  beqz      $v0, .L800288F0
/* 3CE0 800288E0 0200102D */   daddu    $v0, $s0, $zero
/* 3CE4 800288E4 10400002 */  beqz      $v0, .L800288F0
/* 3CE8 800288E8 24020002 */   addiu    $v0, $zero, 2
/* 3CEC 800288EC A0620071 */  sb        $v0, 0x71($v1)
.L800288F0:
/* 3CF0 800288F0 3C048007 */  lui       $a0, %hi(gGameStatusPtr)
/* 3CF4 800288F4 2484419C */  addiu     $a0, $a0, %lo(gGameStatusPtr)
/* 3CF8 800288F8 8C830000 */  lw        $v1, ($a0)
/* 3CFC 800288FC 94620068 */  lhu       $v0, 0x68($v1)
/* 3D00 80028900 A6220000 */  sh        $v0, ($s1)
/* 3D04 80028904 9062006A */  lbu       $v0, 0x6a($v1)
/* 3D08 80028908 8C830000 */  lw        $v1, ($a0)
/* 3D0C 8002890C A2220002 */  sb        $v0, 2($s1)
/* 3D10 80028910 9062006B */  lbu       $v0, 0x6b($v1)
/* 3D14 80028914 24100001 */  addiu     $s0, $zero, 1
/* 3D18 80028918 A2220003 */  sb        $v0, 3($s1)
.L8002891C:
/* 3D1C 8002891C 0200102D */  daddu     $v0, $s0, $zero
/* 3D20 80028920 10400166 */  beqz      $v0, .L80028EBC
/* 3D24 80028924 00000000 */   nop      
/* 3D28 80028928 92230003 */  lbu       $v1, 3($s1)
/* 3D2C 8002892C 92220002 */  lbu       $v0, 2($s1)
/* 3D30 80028930 00031E00 */  sll       $v1, $v1, 0x18
/* 3D34 80028934 00033E03 */  sra       $a3, $v1, 0x18
/* 3D38 80028938 00021600 */  sll       $v0, $v0, 0x18
/* 3D3C 8002893C 18400007 */  blez      $v0, .L8002895C
/* 3D40 80028940 00022E03 */   sra      $a1, $v0, 0x18
/* 3D44 80028944 24A2FFFC */  addiu     $v0, $a1, -4
/* 3D48 80028948 0040282D */  daddu     $a1, $v0, $zero
/* 3D4C 8002894C 00021400 */  sll       $v0, $v0, 0x10
/* 3D50 80028950 0441000B */  bgez      $v0, .L80028980
/* 3D54 80028954 00071400 */   sll      $v0, $a3, 0x10
/* 3D58 80028958 0000282D */  daddu     $a1, $zero, $zero
.L8002895C:
/* 3D5C 8002895C 00051400 */  sll       $v0, $a1, 0x10
/* 3D60 80028960 04410007 */  bgez      $v0, .L80028980
/* 3D64 80028964 00071400 */   sll      $v0, $a3, 0x10
/* 3D68 80028968 24A20004 */  addiu     $v0, $a1, 4
/* 3D6C 8002896C 0040282D */  daddu     $a1, $v0, $zero
/* 3D70 80028970 00021400 */  sll       $v0, $v0, 0x10
/* 3D74 80028974 5C400001 */  bgtzl     $v0, .L8002897C
/* 3D78 80028978 0000282D */   daddu    $a1, $zero, $zero
.L8002897C:
/* 3D7C 8002897C 00071400 */  sll       $v0, $a3, 0x10
.L80028980:
/* 3D80 80028980 18400006 */  blez      $v0, .L8002899C
/* 3D84 80028984 24E2FFFC */   addiu    $v0, $a3, -4
/* 3D88 80028988 0040382D */  daddu     $a3, $v0, $zero
/* 3D8C 8002898C 00021400 */  sll       $v0, $v0, 0x10
/* 3D90 80028990 04410009 */  bgez      $v0, .L800289B8
/* 3D94 80028994 00000000 */   nop      
/* 3D98 80028998 0000382D */  daddu     $a3, $zero, $zero
.L8002899C:
/* 3D9C 8002899C 00071400 */  sll       $v0, $a3, 0x10
/* 3DA0 800289A0 04410005 */  bgez      $v0, .L800289B8
/* 3DA4 800289A4 24E20004 */   addiu    $v0, $a3, 4
/* 3DA8 800289A8 0040382D */  daddu     $a3, $v0, $zero
/* 3DAC 800289AC 00021400 */  sll       $v0, $v0, 0x10
/* 3DB0 800289B0 5C400001 */  bgtzl     $v0, .L800289B8
/* 3DB4 800289B4 0000382D */   daddu    $a3, $zero, $zero
.L800289B8:
/* 3DB8 800289B8 3C038007 */  lui       $v1, %hi(gGameStatusPtr)
/* 3DBC 800289BC 2463419C */  addiu     $v1, $v1, %lo(gGameStatusPtr)
/* 3DC0 800289C0 8C620000 */  lw        $v0, ($v1)
/* 3DC4 800289C4 A0450040 */  sb        $a1, 0x40($v0)
/* 3DC8 800289C8 8C620000 */  lw        $v0, ($v1)
/* 3DCC 800289CC A0470044 */  sb        $a3, 0x44($v0)
/* 3DD0 800289D0 00051400 */  sll       $v0, $a1, 0x10
/* 3DD4 800289D4 00023403 */  sra       $a2, $v0, 0x10
/* 3DD8 800289D8 28C20021 */  slti      $v0, $a2, 0x21
/* 3DDC 800289DC 96240000 */  lhu       $a0, ($s1)
/* 3DE0 800289E0 1440001B */  bnez      $v0, .L80028A50
/* 3DE4 800289E4 0000402D */   daddu    $t0, $zero, $zero
/* 3DE8 800289E8 24080001 */  addiu     $t0, $zero, 1
/* 3DEC 800289EC 8C620000 */  lw        $v0, ($v1)
/* 3DF0 800289F0 3C030008 */  lui       $v1, 8
/* 3DF4 800289F4 8C420030 */  lw        $v0, 0x30($v0)
/* 3DF8 800289F8 00431024 */  and       $v0, $v0, $v1
/* 3DFC 800289FC 14400005 */  bnez      $v0, .L80028A14
/* 3E00 80028A00 00832025 */   or       $a0, $a0, $v1
/* 3E04 80028A04 3C01800A */  lui       $at, %hi(D_8009A6A0)
/* 3E08 80028A08 A425A6A0 */  sh        $a1, %lo(D_8009A6A0)($at)
/* 3E0C 80028A0C 0800A295 */  j         .L80028A54
/* 3E10 80028A10 00051400 */   sll      $v0, $a1, 0x10
.L80028A14:
/* 3E14 80028A14 3C02800A */  lui       $v0, %hi(D_8009A6A4)
/* 3E18 80028A18 8442A6A4 */  lh        $v0, %lo(D_8009A6A4)($v0)
/* 3E1C 80028A1C 14400006 */  bnez      $v0, .L80028A38
/* 3E20 80028A20 00000000 */   nop      
/* 3E24 80028A24 3C03800A */  lui       $v1, %hi(D_8009A6A0)
/* 3E28 80028A28 2463A6A0 */  addiu     $v1, $v1, %lo(D_8009A6A0)
/* 3E2C 80028A2C 84620000 */  lh        $v0, ($v1)
/* 3E30 80028A30 0800A292 */  j         .L80028A48
/* 3E34 80028A34 0046102A */   slt      $v0, $v0, $a2
.L80028A38:
/* 3E38 80028A38 3C03800A */  lui       $v1, %hi(D_8009A6A0)
/* 3E3C 80028A3C 2463A6A0 */  addiu     $v1, $v1, %lo(D_8009A6A0)
/* 3E40 80028A40 84620000 */  lh        $v0, ($v1)
/* 3E44 80028A44 00C2102A */  slt       $v0, $a2, $v0
.L80028A48:
/* 3E48 80028A48 54400001 */  bnel      $v0, $zero, .L80028A50
/* 3E4C 80028A4C A4650000 */   sh       $a1, ($v1)
.L80028A50:
/* 3E50 80028A50 00051400 */  sll       $v0, $a1, 0x10
.L80028A54:
/* 3E54 80028A54 00023403 */  sra       $a2, $v0, 0x10
/* 3E58 80028A58 28C2FFE0 */  slti      $v0, $a2, -0x20
/* 3E5C 80028A5C 1040001D */  beqz      $v0, .L80028AD4
/* 3E60 80028A60 0100102D */   daddu    $v0, $t0, $zero
/* 3E64 80028A64 24080001 */  addiu     $t0, $zero, 1
/* 3E68 80028A68 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* 3E6C 80028A6C 8C42419C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* 3E70 80028A70 3C030004 */  lui       $v1, 4
/* 3E74 80028A74 8C420030 */  lw        $v0, 0x30($v0)
/* 3E78 80028A78 00431024 */  and       $v0, $v0, $v1
/* 3E7C 80028A7C 14400005 */  bnez      $v0, .L80028A94
/* 3E80 80028A80 00832025 */   or       $a0, $a0, $v1
/* 3E84 80028A84 3C01800A */  lui       $at, %hi(D_8009A6A0)
/* 3E88 80028A88 A425A6A0 */  sh        $a1, %lo(D_8009A6A0)($at)
/* 3E8C 80028A8C 0800A2B5 */  j         .L80028AD4
/* 3E90 80028A90 0100102D */   daddu    $v0, $t0, $zero
.L80028A94:
/* 3E94 80028A94 3C02800A */  lui       $v0, %hi(D_8009A6A4)
/* 3E98 80028A98 8442A6A4 */  lh        $v0, %lo(D_8009A6A4)($v0)
/* 3E9C 80028A9C 14400006 */  bnez      $v0, .L80028AB8
/* 3EA0 80028AA0 00000000 */   nop      
/* 3EA4 80028AA4 3C03800A */  lui       $v1, %hi(D_8009A6A0)
/* 3EA8 80028AA8 2463A6A0 */  addiu     $v1, $v1, %lo(D_8009A6A0)
/* 3EAC 80028AAC 84620000 */  lh        $v0, ($v1)
/* 3EB0 80028AB0 0800A2B2 */  j         .L80028AC8
/* 3EB4 80028AB4 00C2102A */   slt      $v0, $a2, $v0
.L80028AB8:
/* 3EB8 80028AB8 3C03800A */  lui       $v1, %hi(D_8009A6A0)
/* 3EBC 80028ABC 2463A6A0 */  addiu     $v1, $v1, %lo(D_8009A6A0)
/* 3EC0 80028AC0 84620000 */  lh        $v0, ($v1)
/* 3EC4 80028AC4 0046102A */  slt       $v0, $v0, $a2
.L80028AC8:
/* 3EC8 80028AC8 54400001 */  bnel      $v0, $zero, .L80028AD0
/* 3ECC 80028ACC A4650000 */   sh       $a1, ($v1)
.L80028AD0:
/* 3ED0 80028AD0 0100102D */  daddu     $v0, $t0, $zero
.L80028AD4:
/* 3ED4 80028AD4 14400005 */  bnez      $v0, .L80028AEC
/* 3ED8 80028AD8 00071400 */   sll      $v0, $a3, 0x10
/* 3EDC 80028ADC 3C01800A */  lui       $at, %hi(D_8009A6A4)
/* 3EE0 80028AE0 A420A6A4 */  sh        $zero, %lo(D_8009A6A4)($at)
/* 3EE4 80028AE4 3C01800A */  lui       $at, %hi(D_8009A6A0)
/* 3EE8 80028AE8 A425A6A0 */  sh        $a1, %lo(D_8009A6A0)($at)
.L80028AEC:
/* 3EEC 80028AEC 00023403 */  sra       $a2, $v0, 0x10
/* 3EF0 80028AF0 28C20021 */  slti      $v0, $a2, 0x21
/* 3EF4 80028AF4 1440001C */  bnez      $v0, .L80028B68
/* 3EF8 80028AF8 0000402D */   daddu    $t0, $zero, $zero
/* 3EFC 80028AFC 24080001 */  addiu     $t0, $zero, 1
/* 3F00 80028B00 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* 3F04 80028B04 8C42419C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* 3F08 80028B08 3C030001 */  lui       $v1, 1
/* 3F0C 80028B0C 8C420030 */  lw        $v0, 0x30($v0)
/* 3F10 80028B10 00431024 */  and       $v0, $v0, $v1
/* 3F14 80028B14 14400005 */  bnez      $v0, .L80028B2C
/* 3F18 80028B18 00832025 */   or       $a0, $a0, $v1
/* 3F1C 80028B1C 3C01800A */  lui       $at, %hi(D_8009A6A2)
/* 3F20 80028B20 A427A6A2 */  sh        $a3, %lo(D_8009A6A2)($at)
/* 3F24 80028B24 0800A2DB */  j         .L80028B6C
/* 3F28 80028B28 00071400 */   sll      $v0, $a3, 0x10
.L80028B2C:
/* 3F2C 80028B2C 3C02800A */  lui       $v0, %hi(D_8009A6A6)
/* 3F30 80028B30 8442A6A6 */  lh        $v0, %lo(D_8009A6A6)($v0)
/* 3F34 80028B34 14400006 */  bnez      $v0, .L80028B50
/* 3F38 80028B38 00000000 */   nop      
/* 3F3C 80028B3C 3C03800A */  lui       $v1, %hi(D_8009A6A2)
/* 3F40 80028B40 2463A6A2 */  addiu     $v1, $v1, %lo(D_8009A6A2)
/* 3F44 80028B44 84620000 */  lh        $v0, ($v1)
/* 3F48 80028B48 0800A2D8 */  j         .L80028B60
/* 3F4C 80028B4C 0046102A */   slt      $v0, $v0, $a2
.L80028B50:
/* 3F50 80028B50 3C03800A */  lui       $v1, %hi(D_8009A6A2)
/* 3F54 80028B54 2463A6A2 */  addiu     $v1, $v1, %lo(D_8009A6A2)
/* 3F58 80028B58 84620000 */  lh        $v0, ($v1)
/* 3F5C 80028B5C 00C2102A */  slt       $v0, $a2, $v0
.L80028B60:
/* 3F60 80028B60 54400001 */  bnel      $v0, $zero, .L80028B68
/* 3F64 80028B64 A4670000 */   sh       $a3, ($v1)
.L80028B68:
/* 3F68 80028B68 00071400 */  sll       $v0, $a3, 0x10
.L80028B6C:
/* 3F6C 80028B6C 00023403 */  sra       $a2, $v0, 0x10
/* 3F70 80028B70 28C2FFE0 */  slti      $v0, $a2, -0x20
/* 3F74 80028B74 1040002B */  beqz      $v0, .L80028C24
/* 3F78 80028B78 0100102D */   daddu    $v0, $t0, $zero
/* 3F7C 80028B7C 24080001 */  addiu     $t0, $zero, 1
/* 3F80 80028B80 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* 3F84 80028B84 8C42419C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* 3F88 80028B88 3C030002 */  lui       $v1, 2
/* 3F8C 80028B8C 8C420030 */  lw        $v0, 0x30($v0)
/* 3F90 80028B90 00431024 */  and       $v0, $v0, $v1
/* 3F94 80028B94 14400005 */  bnez      $v0, .L80028BAC
/* 3F98 80028B98 00832025 */   or       $a0, $a0, $v1
/* 3F9C 80028B9C 3C01800A */  lui       $at, %hi(D_8009A6A2)
/* 3FA0 80028BA0 A427A6A2 */  sh        $a3, %lo(D_8009A6A2)($at)
/* 3FA4 80028BA4 0800A309 */  j         .L80028C24
/* 3FA8 80028BA8 0100102D */   daddu    $v0, $t0, $zero
.L80028BAC:
/* 3FAC 80028BAC 3C02800A */  lui       $v0, %hi(D_8009A6A6)
/* 3FB0 80028BB0 8442A6A6 */  lh        $v0, %lo(D_8009A6A6)($v0)
/* 3FB4 80028BB4 14400014 */  bnez      $v0, .L80028C08
/* 3FB8 80028BB8 00000000 */   nop      
/* 3FBC 80028BBC 3C03800A */  lui       $v1, %hi(D_8009A6A2)
/* 3FC0 80028BC0 2463A6A2 */  addiu     $v1, $v1, %lo(D_8009A6A2)
/* 3FC4 80028BC4 84620000 */  lh        $v0, ($v1)
/* 3FC8 80028BC8 0800A306 */  j         .L80028C18
/* 3FCC 80028BCC 00C2102A */   slt      $v0, $a2, $v0
.L80028BD0:
/* 3FD0 80028BD0 8CA30000 */  lw        $v1, ($a1)
/* 3FD4 80028BD4 8CA40030 */  lw        $a0, 0x30($a1)
/* 3FD8 80028BD8 2402FFFF */  addiu     $v0, $zero, -1
/* 3FDC 80028BDC A4A20060 */  sh        $v0, 0x60($a1)
/* 3FE0 80028BE0 8CA20000 */  lw        $v0, ($a1)
/* 3FE4 80028BE4 00641826 */  xor       $v1, $v1, $a0
/* 3FE8 80028BE8 94A40048 */  lhu       $a0, 0x48($a1)
/* 3FEC 80028BEC ACA30020 */  sw        $v1, 0x20($a1)
/* 3FF0 80028BF0 00621824 */  and       $v1, $v1, $v0
/* 3FF4 80028BF4 ACA30020 */  sw        $v1, 0x20($a1)
/* 3FF8 80028BF8 0800A3AB */  j         .L80028EAC
/* 3FFC 80028BFC A4A40058 */   sh       $a0, 0x58($a1)
.L80028C00:
/* 4000 80028C00 0800A3AB */  j         .L80028EAC
/* 4004 80028C04 ACA00020 */   sw       $zero, 0x20($a1)
.L80028C08:
/* 4008 80028C08 3C03800A */  lui       $v1, %hi(D_8009A6A2)
/* 400C 80028C0C 2463A6A2 */  addiu     $v1, $v1, %lo(D_8009A6A2)
/* 4010 80028C10 84620000 */  lh        $v0, ($v1)
/* 4014 80028C14 0046102A */  slt       $v0, $v0, $a2
.L80028C18:
/* 4018 80028C18 54400001 */  bnel      $v0, $zero, .L80028C20
/* 401C 80028C1C A4670000 */   sh       $a3, ($v1)
.L80028C20:
/* 4020 80028C20 0100102D */  daddu     $v0, $t0, $zero
.L80028C24:
/* 4024 80028C24 14400005 */  bnez      $v0, .L80028C3C
/* 4028 80028C28 00051400 */   sll      $v0, $a1, 0x10
/* 402C 80028C2C 3C01800A */  lui       $at, %hi(D_8009A6A6)
/* 4030 80028C30 A420A6A6 */  sh        $zero, %lo(D_8009A6A6)($at)
/* 4034 80028C34 3C01800A */  lui       $at, %hi(D_8009A6A2)
/* 4038 80028C38 A427A6A2 */  sh        $a3, %lo(D_8009A6A2)($at)
.L80028C3C:
/* 403C 80028C3C 00023403 */  sra       $a2, $v0, 0x10
/* 4040 80028C40 28C20021 */  slti      $v0, $a2, 0x21
/* 4044 80028C44 1440001C */  bnez      $v0, .L80028CB8
/* 4048 80028C48 00051400 */   sll      $v0, $a1, 0x10
/* 404C 80028C4C 3C08800A */  lui       $t0, %hi(D_8009A6A4)
/* 4050 80028C50 2508A6A4 */  addiu     $t0, $t0, %lo(D_8009A6A4)
/* 4054 80028C54 85030000 */  lh        $v1, ($t0)
/* 4058 80028C58 24020001 */  addiu     $v0, $zero, 1
/* 405C 80028C5C 1462000A */  bne       $v1, $v0, .L80028C88
/* 4060 80028C60 00000000 */   nop      
/* 4064 80028C64 3C02800A */  lui       $v0, %hi(D_8009A6A0)
/* 4068 80028C68 8442A6A0 */  lh        $v0, %lo(D_8009A6A0)($v0)
/* 406C 80028C6C 00C21023 */  subu      $v0, $a2, $v0
/* 4070 80028C70 28420011 */  slti      $v0, $v0, 0x11
/* 4074 80028C74 14400004 */  bnez      $v0, .L80028C88
/* 4078 80028C78 3C02FFF7 */   lui      $v0, 0xfff7
/* 407C 80028C7C 3442FFFF */  ori       $v0, $v0, 0xffff
/* 4080 80028C80 00822024 */  and       $a0, $a0, $v0
/* 4084 80028C84 A5000000 */  sh        $zero, ($t0)
.L80028C88:
/* 4088 80028C88 3C03800A */  lui       $v1, %hi(D_8009A6A0)
/* 408C 80028C8C 8463A6A0 */  lh        $v1, %lo(D_8009A6A0)($v1)
/* 4090 80028C90 00051400 */  sll       $v0, $a1, 0x10
/* 4094 80028C94 00021403 */  sra       $v0, $v0, 0x10
/* 4098 80028C98 00621823 */  subu      $v1, $v1, $v0
/* 409C 80028C9C 28630011 */  slti      $v1, $v1, 0x11
/* 40A0 80028CA0 14600005 */  bnez      $v1, .L80028CB8
/* 40A4 80028CA4 00051400 */   sll      $v0, $a1, 0x10
/* 40A8 80028CA8 24020001 */  addiu     $v0, $zero, 1
/* 40AC 80028CAC 3C01800A */  lui       $at, %hi(D_8009A6A4)
/* 40B0 80028CB0 A422A6A4 */  sh        $v0, %lo(D_8009A6A4)($at)
/* 40B4 80028CB4 00051400 */  sll       $v0, $a1, 0x10
.L80028CB8:
/* 40B8 80028CB8 00023403 */  sra       $a2, $v0, 0x10
/* 40BC 80028CBC 28C2FFE0 */  slti      $v0, $a2, -0x20
/* 40C0 80028CC0 1040001B */  beqz      $v0, .L80028D30
/* 40C4 80028CC4 24020001 */   addiu    $v0, $zero, 1
/* 40C8 80028CC8 3C08800A */  lui       $t0, %hi(D_8009A6A4)
/* 40CC 80028CCC 2508A6A4 */  addiu     $t0, $t0, %lo(D_8009A6A4)
/* 40D0 80028CD0 85030000 */  lh        $v1, ($t0)
/* 40D4 80028CD4 1462000C */  bne       $v1, $v0, .L80028D08
/* 40D8 80028CD8 00051400 */   sll      $v0, $a1, 0x10
/* 40DC 80028CDC 3C02800A */  lui       $v0, %hi(D_8009A6A0)
/* 40E0 80028CE0 8442A6A0 */  lh        $v0, %lo(D_8009A6A0)($v0)
/* 40E4 80028CE4 00461023 */  subu      $v0, $v0, $a2
/* 40E8 80028CE8 28420011 */  slti      $v0, $v0, 0x11
/* 40EC 80028CEC 14400006 */  bnez      $v0, .L80028D08
/* 40F0 80028CF0 00051400 */   sll      $v0, $a1, 0x10
/* 40F4 80028CF4 3C02FFFB */  lui       $v0, 0xfffb
/* 40F8 80028CF8 3442FFFF */  ori       $v0, $v0, 0xffff
/* 40FC 80028CFC 00822024 */  and       $a0, $a0, $v0
/* 4100 80028D00 A5000000 */  sh        $zero, ($t0)
/* 4104 80028D04 00051400 */  sll       $v0, $a1, 0x10
.L80028D08:
/* 4108 80028D08 3C03800A */  lui       $v1, %hi(D_8009A6A0)
/* 410C 80028D0C 8463A6A0 */  lh        $v1, %lo(D_8009A6A0)($v1)
/* 4110 80028D10 00021403 */  sra       $v0, $v0, 0x10
/* 4114 80028D14 00431023 */  subu      $v0, $v0, $v1
/* 4118 80028D18 28420011 */  slti      $v0, $v0, 0x11
/* 411C 80028D1C 14400005 */  bnez      $v0, .L80028D34
/* 4120 80028D20 00071400 */   sll      $v0, $a3, 0x10
/* 4124 80028D24 24020001 */  addiu     $v0, $zero, 1
/* 4128 80028D28 3C01800A */  lui       $at, %hi(D_8009A6A4)
/* 412C 80028D2C A422A6A4 */  sh        $v0, %lo(D_8009A6A4)($at)
.L80028D30:
/* 4130 80028D30 00071400 */  sll       $v0, $a3, 0x10
.L80028D34:
/* 4134 80028D34 00022C03 */  sra       $a1, $v0, 0x10
/* 4138 80028D38 28A20021 */  slti      $v0, $a1, 0x21
/* 413C 80028D3C 1440001C */  bnez      $v0, .L80028DB0
/* 4140 80028D40 00071400 */   sll      $v0, $a3, 0x10
/* 4144 80028D44 3C06800A */  lui       $a2, %hi(D_8009A6A6)
/* 4148 80028D48 24C6A6A6 */  addiu     $a2, $a2, %lo(D_8009A6A6)
/* 414C 80028D4C 84C30000 */  lh        $v1, ($a2)
/* 4150 80028D50 24020001 */  addiu     $v0, $zero, 1
/* 4154 80028D54 1462000A */  bne       $v1, $v0, .L80028D80
/* 4158 80028D58 00000000 */   nop      
/* 415C 80028D5C 3C02800A */  lui       $v0, %hi(D_8009A6A2)
/* 4160 80028D60 8442A6A2 */  lh        $v0, %lo(D_8009A6A2)($v0)
/* 4164 80028D64 00A21023 */  subu      $v0, $a1, $v0
/* 4168 80028D68 28420011 */  slti      $v0, $v0, 0x11
/* 416C 80028D6C 14400004 */  bnez      $v0, .L80028D80
/* 4170 80028D70 3C02FFFE */   lui      $v0, 0xfffe
/* 4174 80028D74 3442FFFF */  ori       $v0, $v0, 0xffff
/* 4178 80028D78 00822024 */  and       $a0, $a0, $v0
/* 417C 80028D7C A4C00000 */  sh        $zero, ($a2)
.L80028D80:
/* 4180 80028D80 3C03800A */  lui       $v1, %hi(D_8009A6A2)
/* 4184 80028D84 8463A6A2 */  lh        $v1, %lo(D_8009A6A2)($v1)
/* 4188 80028D88 00071400 */  sll       $v0, $a3, 0x10
/* 418C 80028D8C 00021403 */  sra       $v0, $v0, 0x10
/* 4190 80028D90 00621823 */  subu      $v1, $v1, $v0
/* 4194 80028D94 28630011 */  slti      $v1, $v1, 0x11
/* 4198 80028D98 14600005 */  bnez      $v1, .L80028DB0
/* 419C 80028D9C 00071400 */   sll      $v0, $a3, 0x10
/* 41A0 80028DA0 24020001 */  addiu     $v0, $zero, 1
/* 41A4 80028DA4 3C01800A */  lui       $at, %hi(D_8009A6A6)
/* 41A8 80028DA8 A422A6A6 */  sh        $v0, %lo(D_8009A6A6)($at)
/* 41AC 80028DAC 00071400 */  sll       $v0, $a3, 0x10
.L80028DB0:
/* 41B0 80028DB0 00022C03 */  sra       $a1, $v0, 0x10
/* 41B4 80028DB4 28A2FFE0 */  slti      $v0, $a1, -0x20
/* 41B8 80028DB8 1040001A */  beqz      $v0, .L80028E24
/* 41BC 80028DBC 24020001 */   addiu    $v0, $zero, 1
/* 41C0 80028DC0 3C06800A */  lui       $a2, %hi(D_8009A6A6)
/* 41C4 80028DC4 24C6A6A6 */  addiu     $a2, $a2, %lo(D_8009A6A6)
/* 41C8 80028DC8 84C30000 */  lh        $v1, ($a2)
/* 41CC 80028DCC 1462000C */  bne       $v1, $v0, .L80028E00
/* 41D0 80028DD0 00071400 */   sll      $v0, $a3, 0x10
/* 41D4 80028DD4 3C02800A */  lui       $v0, %hi(D_8009A6A2)
/* 41D8 80028DD8 8442A6A2 */  lh        $v0, %lo(D_8009A6A2)($v0)
/* 41DC 80028DDC 00451023 */  subu      $v0, $v0, $a1
/* 41E0 80028DE0 28420011 */  slti      $v0, $v0, 0x11
/* 41E4 80028DE4 14400006 */  bnez      $v0, .L80028E00
/* 41E8 80028DE8 00071400 */   sll      $v0, $a3, 0x10
/* 41EC 80028DEC 3C02FFFD */  lui       $v0, 0xfffd
/* 41F0 80028DF0 3442FFFF */  ori       $v0, $v0, 0xffff
/* 41F4 80028DF4 00822024 */  and       $a0, $a0, $v0
/* 41F8 80028DF8 A4C00000 */  sh        $zero, ($a2)
/* 41FC 80028DFC 00071400 */  sll       $v0, $a3, 0x10
.L80028E00:
/* 4200 80028E00 3C03800A */  lui       $v1, %hi(D_8009A6A2)
/* 4204 80028E04 8463A6A2 */  lh        $v1, %lo(D_8009A6A2)($v1)
/* 4208 80028E08 00021403 */  sra       $v0, $v0, 0x10
/* 420C 80028E0C 00431023 */  subu      $v0, $v0, $v1
/* 4210 80028E10 28420011 */  slti      $v0, $v0, 0x11
/* 4214 80028E14 14400003 */  bnez      $v0, .L80028E24
/* 4218 80028E18 24020001 */   addiu    $v0, $zero, 1
/* 421C 80028E1C 3C01800A */  lui       $at, %hi(D_8009A6A6)
/* 4220 80028E20 A422A6A6 */  sh        $v0, %lo(D_8009A6A6)($at)
.L80028E24:
/* 4224 80028E24 3C058007 */  lui       $a1, %hi(gGameStatusPtr)
/* 4228 80028E28 8CA5419C */  lw        $a1, %lo(gGameStatusPtr)($a1)
/* 422C 80028E2C 8CA20030 */  lw        $v0, 0x30($a1)
/* 4230 80028E30 ACA40000 */  sw        $a0, ($a1)
/* 4234 80028E34 0080182D */  daddu     $v1, $a0, $zero
/* 4238 80028E38 00821026 */  xor       $v0, $a0, $v0
/* 423C 80028E3C ACA20010 */  sw        $v0, 0x10($a1)
/* 4240 80028E40 00431024 */  and       $v0, $v0, $v1
/* 4244 80028E44 1060FF6E */  beqz      $v1, .L80028C00
/* 4248 80028E48 ACA20010 */   sw       $v0, 0x10($a1)
/* 424C 80028E4C 8CA20030 */  lw        $v0, 0x30($a1)
/* 4250 80028E50 5443FF5F */  bnel      $v0, $v1, .L80028BD0
/* 4254 80028E54 ACA30020 */   sw       $v1, 0x20($a1)
/* 4258 80028E58 84A20060 */  lh        $v0, 0x60($a1)
/* 425C 80028E5C 94A30060 */  lhu       $v1, 0x60($a1)
/* 4260 80028E60 04400008 */  bltz      $v0, .L80028E84
/* 4264 80028E64 2462FFFF */   addiu    $v0, $v1, -1
/* 4268 80028E68 A4A20060 */  sh        $v0, 0x60($a1)
/* 426C 80028E6C 00021400 */  sll       $v0, $v0, 0x10
/* 4270 80028E70 1440FF63 */  bnez      $v0, .L80028C00
/* 4274 80028E74 0080102D */   daddu    $v0, $a0, $zero
/* 4278 80028E78 94A30050 */  lhu       $v1, 0x50($a1)
/* 427C 80028E7C 0800A3AA */  j         .L80028EA8
/* 4280 80028E80 ACA20020 */   sw       $v0, 0x20($a1)
.L80028E84:
/* 4284 80028E84 94A20058 */  lhu       $v0, 0x58($a1)
/* 4288 80028E88 2442FFFF */  addiu     $v0, $v0, -1
/* 428C 80028E8C A4A20058 */  sh        $v0, 0x58($a1)
/* 4290 80028E90 00021400 */  sll       $v0, $v0, 0x10
/* 4294 80028E94 54400005 */  bnel      $v0, $zero, .L80028EAC
/* 4298 80028E98 ACA00020 */   sw       $zero, 0x20($a1)
/* 429C 80028E9C 8CA20000 */  lw        $v0, ($a1)
/* 42A0 80028EA0 94A30050 */  lhu       $v1, 0x50($a1)
/* 42A4 80028EA4 ACA20020 */  sw        $v0, 0x20($a1)
.L80028EA8:
/* 42A8 80028EA8 A4A30060 */  sh        $v1, 0x60($a1)
.L80028EAC:
/* 42AC 80028EAC 3C038007 */  lui       $v1, %hi(gGameStatusPtr)
/* 42B0 80028EB0 8C63419C */  lw        $v1, %lo(gGameStatusPtr)($v1)
/* 42B4 80028EB4 8C620000 */  lw        $v0, ($v1)
/* 42B8 80028EB8 AC620030 */  sw        $v0, 0x30($v1)
.L80028EBC:
/* 42BC 80028EBC 8FBF001C */  lw        $ra, 0x1c($sp)
/* 42C0 80028EC0 8FB20018 */  lw        $s2, 0x18($sp)
/* 42C4 80028EC4 8FB10014 */  lw        $s1, 0x14($sp)
/* 42C8 80028EC8 8FB00010 */  lw        $s0, 0x10($sp)
/* 42CC 80028ECC 03E00008 */  jr        $ra
/* 42D0 80028ED0 27BD0020 */   addiu    $sp, $sp, 0x20
/* 42D4 80028ED4 00000000 */  nop       
/* 42D8 80028ED8 00000000 */  nop       
/* 42DC 80028EDC 00000000 */  nop       
