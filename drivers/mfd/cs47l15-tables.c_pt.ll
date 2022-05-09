; ModuleID = '/llk/IR_all_yes/drivers/mfd/cs47l15-tables.c_pt.bc'
source_filename = "../drivers/mfd/cs47l15-tables.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cs47l15_patch\22, \22a\22\09"
module asm "\09.weak\09__crc_cs47l15_patch\09\09\09\09"
module asm "\09.long\09__crc_cs47l15_patch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cs47l15_patch:\09\09\09\09\09"
module asm "\09.asciz \09\22cs47l15_patch\22\09\09\09\09\09"
module asm "__kstrtabns_cs47l15_patch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cs47l15_16bit_spi_regmap\22, \22a\22\09"
module asm "\09.weak\09__crc_cs47l15_16bit_spi_regmap\09\09\09\09"
module asm "\09.long\09__crc_cs47l15_16bit_spi_regmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cs47l15_16bit_spi_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22cs47l15_16bit_spi_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_cs47l15_16bit_spi_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cs47l15_16bit_i2c_regmap\22, \22a\22\09"
module asm "\09.weak\09__crc_cs47l15_16bit_i2c_regmap\09\09\09\09"
module asm "\09.long\09__crc_cs47l15_16bit_i2c_regmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cs47l15_16bit_i2c_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22cs47l15_16bit_i2c_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_cs47l15_16bit_i2c_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cs47l15_32bit_spi_regmap\22, \22a\22\09"
module asm "\09.weak\09__crc_cs47l15_32bit_spi_regmap\09\09\09\09"
module asm "\09.long\09__crc_cs47l15_32bit_spi_regmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cs47l15_32bit_spi_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22cs47l15_32bit_spi_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_cs47l15_32bit_spi_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cs47l15_32bit_i2c_regmap\22, \22a\22\09"
module asm "\09.weak\09__crc_cs47l15_32bit_i2c_regmap\09\09\09\09"
module asm "\09.long\09__crc_cs47l15_32bit_i2c_regmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cs47l15_32bit_i2c_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22cs47l15_32bit_i2c_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_cs47l15_32bit_i2c_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.reg_sequence = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.reg_default = type { i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.madera = type { ptr, ptr, ptr, i32, i32, ptr, i32, [2 x %struct.regulator_bulk_data], ptr, i8, i8, %struct.madera_pdata, ptr, ptr, i32, [3 x %struct.clk_bulk_data], i32, [4 x i32], ptr, %struct.mutex, i32, [3 x i8], [3 x i8], %struct.blocking_notifier_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.madera_pdata = type { ptr, %struct.arizona_ldo1_pdata, %struct.arizona_micsupp_pdata, i32, i32, ptr, i32, [2 x i32], %struct.madera_codec_pdata }
%struct.arizona_ldo1_pdata = type { ptr }
%struct.arizona_micsupp_pdata = type { ptr }
%struct.madera_codec_pdata = type { [4 x i32], [6 x i32], [6 x [4 x i32]], [6 x i8], [2 x i32], [2 x i32] }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@cs47l15_reva_16_patch = internal constant { [10 x %struct.reg_sequence], [40 x i8] } { [10 x %struct.reg_sequence] [%struct.reg_sequence { i32 140, i32 21845, i32 0 }, %struct.reg_sequence { i32 140, i32 43690, i32 0 }, %struct.reg_sequence { i32 788, i32 128, i32 0 }, %struct.reg_sequence { i32 1192, i32 24611, i32 0 }, %struct.reg_sequence { i32 1193, i32 24611, i32 0 }, %struct.reg_sequence { i32 1236, i32 8, i32 0 }, %struct.reg_sequence { i32 1231, i32 3840, i32 0 }, %struct.reg_sequence { i32 1239, i32 6955, i32 0 }, %struct.reg_sequence { i32 140, i32 52428, i32 0 }, %struct.reg_sequence { i32 140, i32 13107, i32 0 }], [40 x i8] zeroinitializer }, align 32
@cs47l15_patch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 40, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error in applying 16-bit patch: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cs47l15_patch\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mfd/cs47l15-tables.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cs47l15_patch._entry_ptr = internal global ptr @cs47l15_patch._entry, section ".printk_index", align 4
@__kstrtab_cs47l15_patch = external dso_local constant [0 x i8], align 1
@__kstrtabns_cs47l15_patch = external dso_local constant [0 x i8], align 1
@__ksymtab_cs47l15_patch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cs47l15_patch to i32), ptr @__kstrtab_cs47l15_patch, ptr @__kstrtabns_cs47l15_patch }, section "___ksymtab_gpl+cs47l15_patch", align 4
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cs47l15_16bit\00", [18 x i8] zeroinitializer }, align 32
@cs47l15_reg_default = internal constant { [648 x %struct.reg_default], [1280 x i8] } { [648 x %struct.reg_default] [%struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 4096 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 4096 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 256 }, %struct.reg_default { i32 50, i32 256 }, %struct.reg_default { i32 97, i32 511 }, %struct.reg_default { i32 98, i32 511 }, %struct.reg_default { i32 99, i32 511 }, %struct.reg_default { i32 100, i32 511 }, %struct.reg_default { i32 102, i32 511 }, %struct.reg_default { i32 103, i32 511 }, %struct.reg_default { i32 144, i32 0 }, %struct.reg_default { i32 145, i32 32767 }, %struct.reg_default { i32 146, i32 0 }, %struct.reg_default { i32 147, i32 0 }, %struct.reg_default { i32 148, i32 0 }, %struct.reg_default { i32 149, i32 0 }, %struct.reg_default { i32 150, i32 0 }, %struct.reg_default { i32 151, i32 0 }, %struct.reg_default { i32 160, i32 0 }, %struct.reg_default { i32 256, i32 2 }, %struct.reg_default { i32 257, i32 1028 }, %struct.reg_default { i32 258, i32 17 }, %struct.reg_default { i32 259, i32 17 }, %struct.reg_default { i32 260, i32 17 }, %struct.reg_default { i32 288, i32 772 }, %struct.reg_default { i32 290, i32 0 }, %struct.reg_default { i32 329, i32 0 }, %struct.reg_default { i32 338, i32 0 }, %struct.reg_default { i32 339, i32 0 }, %struct.reg_default { i32 340, i32 0 }, %struct.reg_default { i32 341, i32 0 }, %struct.reg_default { i32 342, i32 0 }, %struct.reg_default { i32 369, i32 2 }, %struct.reg_default { i32 370, i32 8 }, %struct.reg_default { i32 371, i32 24 }, %struct.reg_default { i32 372, i32 125 }, %struct.reg_default { i32 373, i32 0 }, %struct.reg_default { i32 374, i32 0 }, %struct.reg_default { i32 377, i32 0 }, %struct.reg_default { i32 378, i32 10502 }, %struct.reg_default { i32 385, i32 0 }, %struct.reg_default { i32 386, i32 0 }, %struct.reg_default { i32 387, i32 0 }, %struct.reg_default { i32 388, i32 0 }, %struct.reg_default { i32 389, i32 0 }, %struct.reg_default { i32 390, i32 0 }, %struct.reg_default { i32 391, i32 1 }, %struct.reg_default { i32 393, i32 0 }, %struct.reg_default { i32 394, i32 4 }, %struct.reg_default { i32 465, i32 4 }, %struct.reg_default { i32 466, i32 4 }, %struct.reg_default { i32 467, i32 0 }, %struct.reg_default { i32 468, i32 0 }, %struct.reg_default { i32 469, i32 1 }, %struct.reg_default { i32 470, i32 32772 }, %struct.reg_default { i32 472, i32 0 }, %struct.reg_default { i32 474, i32 119 }, %struct.reg_default { i32 475, i32 0 }, %struct.reg_default { i32 476, i32 1754 }, %struct.reg_default { i32 477, i32 17 }, %struct.reg_default { i32 536, i32 230 }, %struct.reg_default { i32 540, i32 546 }, %struct.reg_default { i32 659, i32 128 }, %struct.reg_default { i32 665, i32 0 }, %struct.reg_default { i32 667, i32 0 }, %struct.reg_default { i32 674, i32 16 }, %struct.reg_default { i32 675, i32 4354 }, %struct.reg_default { i32 676, i32 159 }, %struct.reg_default { i32 678, i32 15677 }, %struct.reg_default { i32 679, i32 15677 }, %struct.reg_default { i32 680, i32 13117 }, %struct.reg_default { i32 681, i32 8237 }, %struct.reg_default { i32 710, i32 16 }, %struct.reg_default { i32 712, i32 0 }, %struct.reg_default { i32 723, i32 0 }, %struct.reg_default { i32 768, i32 0 }, %struct.reg_default { i32 776, i32 0 }, %struct.reg_default { i32 777, i32 34 }, %struct.reg_default { i32 780, i32 2 }, %struct.reg_default { i32 784, i32 128 }, %struct.reg_default { i32 785, i32 384 }, %struct.reg_default { i32 786, i32 1280 }, %struct.reg_default { i32 787, i32 0 }, %struct.reg_default { i32 788, i32 128 }, %struct.reg_default { i32 789, i32 384 }, %struct.reg_default { i32 790, i32 0 }, %struct.reg_default { i32 791, i32 0 }, %struct.reg_default { i32 792, i32 0 }, %struct.reg_default { i32 793, i32 384 }, %struct.reg_default { i32 794, i32 1280 }, %struct.reg_default { i32 795, i32 0 }, %struct.reg_default { i32 796, i32 2048 }, %struct.reg_default { i32 797, i32 384 }, %struct.reg_default { i32 798, i32 0 }, %struct.reg_default { i32 799, i32 0 }, %struct.reg_default { i32 936, i32 8192 }, %struct.reg_default { i32 964, i32 0 }, %struct.reg_default { i32 1024, i32 0 }, %struct.reg_default { i32 1032, i32 0 }, %struct.reg_default { i32 1033, i32 34 }, %struct.reg_default { i32 1040, i32 128 }, %struct.reg_default { i32 1041, i32 384 }, %struct.reg_default { i32 1042, i32 0 }, %struct.reg_default { i32 1043, i32 1 }, %struct.reg_default { i32 1044, i32 128 }, %struct.reg_default { i32 1045, i32 384 }, %struct.reg_default { i32 1047, i32 2 }, %struct.reg_default { i32 1050, i32 1536 }, %struct.reg_default { i32 1064, i32 0 }, %struct.reg_default { i32 1065, i32 384 }, %struct.reg_default { i32 1067, i32 64 }, %struct.reg_default { i32 1072, i32 0 }, %struct.reg_default { i32 1073, i32 384 }, %struct.reg_default { i32 1075, i32 256 }, %struct.reg_default { i32 1076, i32 0 }, %struct.reg_default { i32 1077, i32 384 }, %struct.reg_default { i32 1079, i32 512 }, %struct.reg_default { i32 1104, i32 0 }, %struct.reg_default { i32 1105, i32 0 }, %struct.reg_default { i32 1112, i32 0 }, %struct.reg_default { i32 1168, i32 105 }, %struct.reg_default { i32 1169, i32 0 }, %struct.reg_default { i32 1184, i32 12416 }, %struct.reg_default { i32 1192, i32 24611 }, %struct.reg_default { i32 1193, i32 24611 }, %struct.reg_default { i32 1280, i32 12 }, %struct.reg_default { i32 1281, i32 0 }, %struct.reg_default { i32 1282, i32 0 }, %struct.reg_default { i32 1283, i32 0 }, %struct.reg_default { i32 1284, i32 0 }, %struct.reg_default { i32 1286, i32 64 }, %struct.reg_default { i32 1287, i32 6168 }, %struct.reg_default { i32 1288, i32 6168 }, %struct.reg_default { i32 1289, i32 0 }, %struct.reg_default { i32 1290, i32 1 }, %struct.reg_default { i32 1291, i32 2 }, %struct.reg_default { i32 1292, i32 3 }, %struct.reg_default { i32 1293, i32 4 }, %struct.reg_default { i32 1294, i32 5 }, %struct.reg_default { i32 1297, i32 0 }, %struct.reg_default { i32 1298, i32 1 }, %struct.reg_default { i32 1299, i32 2 }, %struct.reg_default { i32 1300, i32 3 }, %struct.reg_default { i32 1301, i32 4 }, %struct.reg_default { i32 1302, i32 5 }, %struct.reg_default { i32 1305, i32 0 }, %struct.reg_default { i32 1306, i32 0 }, %struct.reg_default { i32 1344, i32 12 }, %struct.reg_default { i32 1345, i32 0 }, %struct.reg_default { i32 1346, i32 0 }, %struct.reg_default { i32 1347, i32 0 }, %struct.reg_default { i32 1348, i32 0 }, %struct.reg_default { i32 1350, i32 64 }, %struct.reg_default { i32 1351, i32 6168 }, %struct.reg_default { i32 1352, i32 6168 }, %struct.reg_default { i32 1353, i32 0 }, %struct.reg_default { i32 1354, i32 1 }, %struct.reg_default { i32 1355, i32 2 }, %struct.reg_default { i32 1356, i32 3 }, %struct.reg_default { i32 1361, i32 0 }, %struct.reg_default { i32 1362, i32 1 }, %struct.reg_default { i32 1363, i32 2 }, %struct.reg_default { i32 1364, i32 3 }, %struct.reg_default { i32 1369, i32 0 }, %struct.reg_default { i32 1370, i32 0 }, %struct.reg_default { i32 1408, i32 12 }, %struct.reg_default { i32 1409, i32 0 }, %struct.reg_default { i32 1410, i32 0 }, %struct.reg_default { i32 1411, i32 0 }, %struct.reg_default { i32 1412, i32 0 }, %struct.reg_default { i32 1414, i32 64 }, %struct.reg_default { i32 1415, i32 6168 }, %struct.reg_default { i32 1416, i32 6168 }, %struct.reg_default { i32 1417, i32 0 }, %struct.reg_default { i32 1418, i32 1 }, %struct.reg_default { i32 1425, i32 0 }, %struct.reg_default { i32 1426, i32 1 }, %struct.reg_default { i32 1433, i32 0 }, %struct.reg_default { i32 1434, i32 0 }, %struct.reg_default { i32 1474, i32 0 }, %struct.reg_default { i32 1600, i32 0 }, %struct.reg_default { i32 1601, i32 128 }, %struct.reg_default { i32 1602, i32 0 }, %struct.reg_default { i32 1603, i32 128 }, %struct.reg_default { i32 1604, i32 0 }, %struct.reg_default { i32 1605, i32 128 }, %struct.reg_default { i32 1606, i32 0 }, %struct.reg_default { i32 1607, i32 128 }, %struct.reg_default { i32 1608, i32 0 }, %struct.reg_default { i32 1609, i32 128 }, %struct.reg_default { i32 1610, i32 0 }, %struct.reg_default { i32 1611, i32 128 }, %struct.reg_default { i32 1612, i32 0 }, %struct.reg_default { i32 1613, i32 128 }, %struct.reg_default { i32 1614, i32 0 }, %struct.reg_default { i32 1615, i32 128 }, %struct.reg_default { i32 1664, i32 0 }, %struct.reg_default { i32 1665, i32 128 }, %struct.reg_default { i32 1666, i32 0 }, %struct.reg_default { i32 1667, i32 128 }, %struct.reg_default { i32 1668, i32 0 }, %struct.reg_default { i32 1669, i32 128 }, %struct.reg_default { i32 1670, i32 0 }, %struct.reg_default { i32 1671, i32 128 }, %struct.reg_default { i32 1672, i32 0 }, %struct.reg_default { i32 1673, i32 128 }, %struct.reg_default { i32 1674, i32 0 }, %struct.reg_default { i32 1675, i32 128 }, %struct.reg_default { i32 1676, i32 0 }, %struct.reg_default { i32 1677, i32 128 }, %struct.reg_default { i32 1678, i32 0 }, %struct.reg_default { i32 1679, i32 128 }, %struct.reg_default { i32 1712, i32 0 }, %struct.reg_default { i32 1713, i32 128 }, %struct.reg_default { i32 1714, i32 0 }, %struct.reg_default { i32 1715, i32 128 }, %struct.reg_default { i32 1716, i32 0 }, %struct.reg_default { i32 1717, i32 128 }, %struct.reg_default { i32 1718, i32 0 }, %struct.reg_default { i32 1719, i32 128 }, %struct.reg_default { i32 1728, i32 0 }, %struct.reg_default { i32 1729, i32 128 }, %struct.reg_default { i32 1730, i32 0 }, %struct.reg_default { i32 1731, i32 128 }, %struct.reg_default { i32 1732, i32 0 }, %struct.reg_default { i32 1733, i32 128 }, %struct.reg_default { i32 1734, i32 0 }, %struct.reg_default { i32 1735, i32 128 }, %struct.reg_default { i32 1736, i32 0 }, %struct.reg_default { i32 1737, i32 128 }, %struct.reg_default { i32 1738, i32 0 }, %struct.reg_default { i32 1739, i32 128 }, %struct.reg_default { i32 1740, i32 0 }, %struct.reg_default { i32 1741, i32 128 }, %struct.reg_default { i32 1742, i32 0 }, %struct.reg_default { i32 1743, i32 128 }, %struct.reg_default { i32 1792, i32 0 }, %struct.reg_default { i32 1793, i32 128 }, %struct.reg_default { i32 1794, i32 0 }, %struct.reg_default { i32 1795, i32 128 }, %struct.reg_default { i32 1796, i32 0 }, %struct.reg_default { i32 1797, i32 128 }, %struct.reg_default { i32 1798, i32 0 }, %struct.reg_default { i32 1799, i32 128 }, %struct.reg_default { i32 1800, i32 0 }, %struct.reg_default { i32 1801, i32 128 }, %struct.reg_default { i32 1802, i32 0 }, %struct.reg_default { i32 1803, i32 128 }, %struct.reg_default { i32 1804, i32 0 }, %struct.reg_default { i32 1805, i32 128 }, %struct.reg_default { i32 1806, i32 0 }, %struct.reg_default { i32 1807, i32 128 }, %struct.reg_default { i32 1808, i32 0 }, %struct.reg_default { i32 1809, i32 128 }, %struct.reg_default { i32 1810, i32 0 }, %struct.reg_default { i32 1811, i32 128 }, %struct.reg_default { i32 1812, i32 0 }, %struct.reg_default { i32 1813, i32 128 }, %struct.reg_default { i32 1814, i32 0 }, %struct.reg_default { i32 1815, i32 128 }, %struct.reg_default { i32 1816, i32 0 }, %struct.reg_default { i32 1817, i32 128 }, %struct.reg_default { i32 1818, i32 0 }, %struct.reg_default { i32 1819, i32 128 }, %struct.reg_default { i32 1820, i32 0 }, %struct.reg_default { i32 1821, i32 128 }, %struct.reg_default { i32 1822, i32 0 }, %struct.reg_default { i32 1823, i32 128 }, %struct.reg_default { i32 1824, i32 0 }, %struct.reg_default { i32 1825, i32 128 }, %struct.reg_default { i32 1826, i32 0 }, %struct.reg_default { i32 1827, i32 128 }, %struct.reg_default { i32 1828, i32 0 }, %struct.reg_default { i32 1829, i32 128 }, %struct.reg_default { i32 1830, i32 0 }, %struct.reg_default { i32 1831, i32 128 }, %struct.reg_default { i32 1832, i32 0 }, %struct.reg_default { i32 1833, i32 128 }, %struct.reg_default { i32 1834, i32 0 }, %struct.reg_default { i32 1835, i32 128 }, %struct.reg_default { i32 1836, i32 0 }, %struct.reg_default { i32 1837, i32 128 }, %struct.reg_default { i32 1838, i32 0 }, %struct.reg_default { i32 1839, i32 128 }, %struct.reg_default { i32 1856, i32 0 }, %struct.reg_default { i32 1857, i32 128 }, %struct.reg_default { i32 1858, i32 0 }, %struct.reg_default { i32 1859, i32 128 }, %struct.reg_default { i32 1860, i32 0 }, %struct.reg_default { i32 1861, i32 128 }, %struct.reg_default { i32 1862, i32 0 }, %struct.reg_default { i32 1863, i32 128 }, %struct.reg_default { i32 1864, i32 0 }, %struct.reg_default { i32 1865, i32 128 }, %struct.reg_default { i32 1866, i32 0 }, %struct.reg_default { i32 1867, i32 128 }, %struct.reg_default { i32 1868, i32 0 }, %struct.reg_default { i32 1869, i32 128 }, %struct.reg_default { i32 1870, i32 0 }, %struct.reg_default { i32 1871, i32 128 }, %struct.reg_default { i32 1872, i32 0 }, %struct.reg_default { i32 1873, i32 128 }, %struct.reg_default { i32 1874, i32 0 }, %struct.reg_default { i32 1875, i32 128 }, %struct.reg_default { i32 1876, i32 0 }, %struct.reg_default { i32 1877, i32 128 }, %struct.reg_default { i32 1878, i32 0 }, %struct.reg_default { i32 1879, i32 128 }, %struct.reg_default { i32 1880, i32 0 }, %struct.reg_default { i32 1881, i32 128 }, %struct.reg_default { i32 1882, i32 0 }, %struct.reg_default { i32 1883, i32 128 }, %struct.reg_default { i32 1884, i32 0 }, %struct.reg_default { i32 1885, i32 128 }, %struct.reg_default { i32 1886, i32 0 }, %struct.reg_default { i32 1887, i32 128 }, %struct.reg_default { i32 1920, i32 0 }, %struct.reg_default { i32 1921, i32 128 }, %struct.reg_default { i32 1922, i32 0 }, %struct.reg_default { i32 1923, i32 128 }, %struct.reg_default { i32 1924, i32 0 }, %struct.reg_default { i32 1925, i32 128 }, %struct.reg_default { i32 1926, i32 0 }, %struct.reg_default { i32 1927, i32 128 }, %struct.reg_default { i32 1928, i32 0 }, %struct.reg_default { i32 1929, i32 128 }, %struct.reg_default { i32 1930, i32 0 }, %struct.reg_default { i32 1931, i32 128 }, %struct.reg_default { i32 1932, i32 0 }, %struct.reg_default { i32 1933, i32 128 }, %struct.reg_default { i32 1934, i32 0 }, %struct.reg_default { i32 1935, i32 128 }, %struct.reg_default { i32 2048, i32 0 }, %struct.reg_default { i32 2049, i32 128 }, %struct.reg_default { i32 2056, i32 0 }, %struct.reg_default { i32 2057, i32 128 }, %struct.reg_default { i32 2176, i32 0 }, %struct.reg_default { i32 2177, i32 128 }, %struct.reg_default { i32 2178, i32 0 }, %struct.reg_default { i32 2179, i32 128 }, %struct.reg_default { i32 2180, i32 0 }, %struct.reg_default { i32 2181, i32 128 }, %struct.reg_default { i32 2182, i32 0 }, %struct.reg_default { i32 2183, i32 128 }, %struct.reg_default { i32 2184, i32 0 }, %struct.reg_default { i32 2185, i32 128 }, %struct.reg_default { i32 2186, i32 0 }, %struct.reg_default { i32 2187, i32 128 }, %struct.reg_default { i32 2188, i32 0 }, %struct.reg_default { i32 2189, i32 128 }, %struct.reg_default { i32 2190, i32 0 }, %struct.reg_default { i32 2191, i32 128 }, %struct.reg_default { i32 2192, i32 0 }, %struct.reg_default { i32 2193, i32 128 }, %struct.reg_default { i32 2194, i32 0 }, %struct.reg_default { i32 2195, i32 128 }, %struct.reg_default { i32 2196, i32 0 }, %struct.reg_default { i32 2197, i32 128 }, %struct.reg_default { i32 2198, i32 0 }, %struct.reg_default { i32 2199, i32 128 }, %struct.reg_default { i32 2200, i32 0 }, %struct.reg_default { i32 2201, i32 128 }, %struct.reg_default { i32 2202, i32 0 }, %struct.reg_default { i32 2203, i32 128 }, %struct.reg_default { i32 2204, i32 0 }, %struct.reg_default { i32 2205, i32 128 }, %struct.reg_default { i32 2206, i32 0 }, %struct.reg_default { i32 2207, i32 128 }, %struct.reg_default { i32 2240, i32 0 }, %struct.reg_default { i32 2241, i32 128 }, %struct.reg_default { i32 2242, i32 0 }, %struct.reg_default { i32 2243, i32 128 }, %struct.reg_default { i32 2244, i32 0 }, %struct.reg_default { i32 2245, i32 128 }, %struct.reg_default { i32 2246, i32 0 }, %struct.reg_default { i32 2247, i32 128 }, %struct.reg_default { i32 2248, i32 0 }, %struct.reg_default { i32 2249, i32 128 }, %struct.reg_default { i32 2250, i32 0 }, %struct.reg_default { i32 2251, i32 128 }, %struct.reg_default { i32 2252, i32 0 }, %struct.reg_default { i32 2253, i32 128 }, %struct.reg_default { i32 2254, i32 0 }, %struct.reg_default { i32 2255, i32 128 }, %struct.reg_default { i32 2256, i32 0 }, %struct.reg_default { i32 2257, i32 128 }, %struct.reg_default { i32 2258, i32 0 }, %struct.reg_default { i32 2259, i32 128 }, %struct.reg_default { i32 2260, i32 0 }, %struct.reg_default { i32 2261, i32 128 }, %struct.reg_default { i32 2262, i32 0 }, %struct.reg_default { i32 2263, i32 128 }, %struct.reg_default { i32 2264, i32 0 }, %struct.reg_default { i32 2265, i32 128 }, %struct.reg_default { i32 2266, i32 0 }, %struct.reg_default { i32 2267, i32 128 }, %struct.reg_default { i32 2268, i32 0 }, %struct.reg_default { i32 2269, i32 128 }, %struct.reg_default { i32 2270, i32 0 }, %struct.reg_default { i32 2271, i32 128 }, %struct.reg_default { i32 2304, i32 0 }, %struct.reg_default { i32 2305, i32 128 }, %struct.reg_default { i32 2306, i32 0 }, %struct.reg_default { i32 2307, i32 128 }, %struct.reg_default { i32 2308, i32 0 }, %struct.reg_default { i32 2309, i32 128 }, %struct.reg_default { i32 2310, i32 0 }, %struct.reg_default { i32 2311, i32 128 }, %struct.reg_default { i32 2312, i32 0 }, %struct.reg_default { i32 2313, i32 128 }, %struct.reg_default { i32 2314, i32 0 }, %struct.reg_default { i32 2315, i32 128 }, %struct.reg_default { i32 2316, i32 0 }, %struct.reg_default { i32 2317, i32 128 }, %struct.reg_default { i32 2318, i32 0 }, %struct.reg_default { i32 2319, i32 128 }, %struct.reg_default { i32 2320, i32 0 }, %struct.reg_default { i32 2321, i32 128 }, %struct.reg_default { i32 2322, i32 0 }, %struct.reg_default { i32 2323, i32 128 }, %struct.reg_default { i32 2324, i32 0 }, %struct.reg_default { i32 2325, i32 128 }, %struct.reg_default { i32 2326, i32 0 }, %struct.reg_default { i32 2327, i32 128 }, %struct.reg_default { i32 2328, i32 0 }, %struct.reg_default { i32 2329, i32 128 }, %struct.reg_default { i32 2330, i32 0 }, %struct.reg_default { i32 2331, i32 128 }, %struct.reg_default { i32 2332, i32 0 }, %struct.reg_default { i32 2333, i32 128 }, %struct.reg_default { i32 2334, i32 0 }, %struct.reg_default { i32 2335, i32 128 }, %struct.reg_default { i32 2368, i32 0 }, %struct.reg_default { i32 2369, i32 128 }, %struct.reg_default { i32 2370, i32 0 }, %struct.reg_default { i32 2371, i32 128 }, %struct.reg_default { i32 2372, i32 0 }, %struct.reg_default { i32 2373, i32 128 }, %struct.reg_default { i32 2374, i32 0 }, %struct.reg_default { i32 2375, i32 128 }, %struct.reg_default { i32 2376, i32 0 }, %struct.reg_default { i32 2377, i32 128 }, %struct.reg_default { i32 2378, i32 0 }, %struct.reg_default { i32 2379, i32 128 }, %struct.reg_default { i32 2380, i32 0 }, %struct.reg_default { i32 2381, i32 128 }, %struct.reg_default { i32 2382, i32 0 }, %struct.reg_default { i32 2383, i32 128 }, %struct.reg_default { i32 2384, i32 0 }, %struct.reg_default { i32 2392, i32 0 }, %struct.reg_default { i32 2400, i32 0 }, %struct.reg_default { i32 2408, i32 0 }, %struct.reg_default { i32 2416, i32 0 }, %struct.reg_default { i32 2424, i32 0 }, %struct.reg_default { i32 2816, i32 0 }, %struct.reg_default { i32 2824, i32 0 }, %struct.reg_default { i32 2832, i32 0 }, %struct.reg_default { i32 2840, i32 0 }, %struct.reg_default { i32 2848, i32 0 }, %struct.reg_default { i32 2856, i32 0 }, %struct.reg_default { i32 2864, i32 0 }, %struct.reg_default { i32 2872, i32 0 }, %struct.reg_default { i32 2880, i32 0 }, %struct.reg_default { i32 2888, i32 0 }, %struct.reg_default { i32 2896, i32 0 }, %struct.reg_default { i32 2904, i32 0 }, %struct.reg_default { i32 2912, i32 0 }, %struct.reg_default { i32 2920, i32 0 }, %struct.reg_default { i32 2928, i32 0 }, %struct.reg_default { i32 2936, i32 0 }, %struct.reg_default { i32 3584, i32 0 }, %struct.reg_default { i32 3600, i32 25368 }, %struct.reg_default { i32 3601, i32 25344 }, %struct.reg_default { i32 3602, i32 4040 }, %struct.reg_default { i32 3603, i32 1022 }, %struct.reg_default { i32 3604, i32 224 }, %struct.reg_default { i32 3605, i32 7876 }, %struct.reg_default { i32 3606, i32 61750 }, %struct.reg_default { i32 3607, i32 1033 }, %struct.reg_default { i32 3608, i32 1228 }, %struct.reg_default { i32 3609, i32 7323 }, %struct.reg_default { i32 3610, i32 62263 }, %struct.reg_default { i32 3611, i32 1035 }, %struct.reg_default { i32 3612, i32 3259 }, %struct.reg_default { i32 3613, i32 5880 }, %struct.reg_default { i32 3614, i32 63449 }, %struct.reg_default { i32 3615, i32 1034 }, %struct.reg_default { i32 3616, i32 7956 }, %struct.reg_default { i32 3617, i32 1420 }, %struct.reg_default { i32 3618, i32 1379 }, %struct.reg_default { i32 3619, i32 16384 }, %struct.reg_default { i32 3620, i32 2933 }, %struct.reg_default { i32 3622, i32 25368 }, %struct.reg_default { i32 3623, i32 25344 }, %struct.reg_default { i32 3624, i32 4040 }, %struct.reg_default { i32 3625, i32 1022 }, %struct.reg_default { i32 3626, i32 224 }, %struct.reg_default { i32 3627, i32 7876 }, %struct.reg_default { i32 3628, i32 61750 }, %struct.reg_default { i32 3629, i32 1033 }, %struct.reg_default { i32 3630, i32 1228 }, %struct.reg_default { i32 3631, i32 7323 }, %struct.reg_default { i32 3632, i32 62263 }, %struct.reg_default { i32 3633, i32 1035 }, %struct.reg_default { i32 3634, i32 3259 }, %struct.reg_default { i32 3635, i32 5880 }, %struct.reg_default { i32 3636, i32 63449 }, %struct.reg_default { i32 3637, i32 1034 }, %struct.reg_default { i32 3638, i32 7956 }, %struct.reg_default { i32 3639, i32 1420 }, %struct.reg_default { i32 3640, i32 1379 }, %struct.reg_default { i32 3641, i32 16384 }, %struct.reg_default { i32 3642, i32 2933 }, %struct.reg_default { i32 3644, i32 25368 }, %struct.reg_default { i32 3645, i32 25344 }, %struct.reg_default { i32 3646, i32 4040 }, %struct.reg_default { i32 3647, i32 1022 }, %struct.reg_default { i32 3648, i32 224 }, %struct.reg_default { i32 3649, i32 7876 }, %struct.reg_default { i32 3650, i32 61750 }, %struct.reg_default { i32 3651, i32 1033 }, %struct.reg_default { i32 3652, i32 1228 }, %struct.reg_default { i32 3653, i32 7323 }, %struct.reg_default { i32 3654, i32 62263 }, %struct.reg_default { i32 3655, i32 1035 }, %struct.reg_default { i32 3656, i32 3259 }, %struct.reg_default { i32 3657, i32 5880 }, %struct.reg_default { i32 3658, i32 63449 }, %struct.reg_default { i32 3659, i32 1034 }, %struct.reg_default { i32 3660, i32 7956 }, %struct.reg_default { i32 3661, i32 1420 }, %struct.reg_default { i32 3662, i32 1379 }, %struct.reg_default { i32 3663, i32 16384 }, %struct.reg_default { i32 3664, i32 2933 }, %struct.reg_default { i32 3666, i32 25368 }, %struct.reg_default { i32 3667, i32 25344 }, %struct.reg_default { i32 3668, i32 4040 }, %struct.reg_default { i32 3669, i32 1022 }, %struct.reg_default { i32 3670, i32 224 }, %struct.reg_default { i32 3671, i32 7876 }, %struct.reg_default { i32 3672, i32 61750 }, %struct.reg_default { i32 3673, i32 1033 }, %struct.reg_default { i32 3674, i32 1228 }, %struct.reg_default { i32 3675, i32 7323 }, %struct.reg_default { i32 3676, i32 62263 }, %struct.reg_default { i32 3677, i32 1035 }, %struct.reg_default { i32 3678, i32 3259 }, %struct.reg_default { i32 3679, i32 5880 }, %struct.reg_default { i32 3680, i32 63449 }, %struct.reg_default { i32 3681, i32 1034 }, %struct.reg_default { i32 3682, i32 7956 }, %struct.reg_default { i32 3683, i32 1420 }, %struct.reg_default { i32 3684, i32 1379 }, %struct.reg_default { i32 3685, i32 16384 }, %struct.reg_default { i32 3686, i32 2933 }, %struct.reg_default { i32 3712, i32 24 }, %struct.reg_default { i32 3713, i32 2355 }, %struct.reg_default { i32 3714, i32 24 }, %struct.reg_default { i32 3715, i32 0 }, %struct.reg_default { i32 3716, i32 0 }, %struct.reg_default { i32 3720, i32 24 }, %struct.reg_default { i32 3721, i32 2355 }, %struct.reg_default { i32 3722, i32 24 }, %struct.reg_default { i32 3723, i32 0 }, %struct.reg_default { i32 3724, i32 0 }, %struct.reg_default { i32 3776, i32 0 }, %struct.reg_default { i32 3777, i32 0 }, %struct.reg_default { i32 3780, i32 0 }, %struct.reg_default { i32 3781, i32 0 }, %struct.reg_default { i32 3784, i32 0 }, %struct.reg_default { i32 3785, i32 0 }, %struct.reg_default { i32 3788, i32 0 }, %struct.reg_default { i32 3789, i32 0 }, %struct.reg_default { i32 3824, i32 0 }, %struct.reg_default { i32 3825, i32 1 }, %struct.reg_default { i32 3826, i32 0 }, %struct.reg_default { i32 3827, i32 0 }, %struct.reg_default { i32 3828, i32 1 }, %struct.reg_default { i32 3829, i32 0 }, %struct.reg_default { i32 5888, i32 10241 }, %struct.reg_default { i32 5889, i32 59392 }, %struct.reg_default { i32 5890, i32 10241 }, %struct.reg_default { i32 5891, i32 59392 }, %struct.reg_default { i32 5892, i32 10241 }, %struct.reg_default { i32 5893, i32 59392 }, %struct.reg_default { i32 5894, i32 10241 }, %struct.reg_default { i32 5895, i32 59392 }, %struct.reg_default { i32 5896, i32 10241 }, %struct.reg_default { i32 5897, i32 59392 }, %struct.reg_default { i32 5898, i32 10241 }, %struct.reg_default { i32 5899, i32 59392 }, %struct.reg_default { i32 5900, i32 10241 }, %struct.reg_default { i32 5901, i32 59392 }, %struct.reg_default { i32 5902, i32 10241 }, %struct.reg_default { i32 5903, i32 59392 }, %struct.reg_default { i32 5904, i32 10241 }, %struct.reg_default { i32 5905, i32 59392 }, %struct.reg_default { i32 5906, i32 10241 }, %struct.reg_default { i32 5907, i32 59392 }, %struct.reg_default { i32 5908, i32 10241 }, %struct.reg_default { i32 5909, i32 59392 }, %struct.reg_default { i32 5910, i32 10241 }, %struct.reg_default { i32 5911, i32 59392 }, %struct.reg_default { i32 5912, i32 10241 }, %struct.reg_default { i32 5913, i32 59392 }, %struct.reg_default { i32 5914, i32 10241 }, %struct.reg_default { i32 5915, i32 59392 }, %struct.reg_default { i32 5916, i32 10241 }, %struct.reg_default { i32 5917, i32 59392 }, %struct.reg_default { i32 6208, i32 65535 }, %struct.reg_default { i32 6209, i32 65535 }, %struct.reg_default { i32 6210, i32 65535 }, %struct.reg_default { i32 6211, i32 65535 }, %struct.reg_default { i32 6212, i32 65535 }, %struct.reg_default { i32 6213, i32 65535 }, %struct.reg_default { i32 6214, i32 65535 }, %struct.reg_default { i32 6215, i32 65535 }, %struct.reg_default { i32 6216, i32 65535 }, %struct.reg_default { i32 6217, i32 65535 }, %struct.reg_default { i32 6218, i32 65535 }, %struct.reg_default { i32 6219, i32 65535 }, %struct.reg_default { i32 6220, i32 65535 }, %struct.reg_default { i32 6221, i32 65535 }, %struct.reg_default { i32 6222, i32 65535 }, %struct.reg_default { i32 6223, i32 65535 }, %struct.reg_default { i32 6224, i32 65535 }, %struct.reg_default { i32 6225, i32 65535 }, %struct.reg_default { i32 6226, i32 65535 }, %struct.reg_default { i32 6227, i32 65535 }, %struct.reg_default { i32 6228, i32 65535 }, %struct.reg_default { i32 6229, i32 65535 }, %struct.reg_default { i32 6230, i32 65535 }, %struct.reg_default { i32 6231, i32 65535 }, %struct.reg_default { i32 6232, i32 65535 }, %struct.reg_default { i32 6233, i32 65535 }, %struct.reg_default { i32 6234, i32 65535 }, %struct.reg_default { i32 6235, i32 65535 }, %struct.reg_default { i32 6236, i32 65535 }, %struct.reg_default { i32 6237, i32 65535 }, %struct.reg_default { i32 6238, i32 65535 }, %struct.reg_default { i32 6239, i32 65535 }, %struct.reg_default { i32 6240, i32 65535 }, %struct.reg_default { i32 6662, i32 0 }, %struct.reg_default { i32 6784, i32 17408 }], [1280 x i8] zeroinitializer }, align 32
@cs47l15_16bit_spi_regmap = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.5, i32 32, i32 0, i32 16, i32 16, ptr null, ptr @cs47l15_16bit_readable_register, ptr @cs47l15_16bit_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 6816, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs47l15_reg_default, i32 648, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_cs47l15_16bit_spi_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cs47l15_16bit_spi_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_cs47l15_16bit_spi_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cs47l15_16bit_spi_regmap to i32), ptr @__kstrtab_cs47l15_16bit_spi_regmap, ptr @__kstrtabns_cs47l15_16bit_spi_regmap }, section "___ksymtab_gpl+cs47l15_16bit_spi_regmap", align 4
@cs47l15_16bit_i2c_regmap = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.5, i32 32, i32 0, i32 0, i32 16, ptr null, ptr @cs47l15_16bit_readable_register, ptr @cs47l15_16bit_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 6816, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs47l15_reg_default, i32 648, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_cs47l15_16bit_i2c_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cs47l15_16bit_i2c_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_cs47l15_16bit_i2c_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cs47l15_16bit_i2c_regmap to i32), ptr @__kstrtab_cs47l15_16bit_i2c_regmap, ptr @__kstrtabns_cs47l15_16bit_i2c_regmap }, section "___ksymtab_gpl+cs47l15_16bit_i2c_regmap", align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cs47l15_32bit\00", [18 x i8] zeroinitializer }, align 32
@cs47l15_32bit_spi_regmap = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.6, i32 32, i32 2, i32 16, i32 32, ptr null, ptr @cs47l15_32bit_readable_register, ptr @cs47l15_32bit_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1048188, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_cs47l15_32bit_spi_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cs47l15_32bit_spi_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_cs47l15_32bit_spi_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cs47l15_32bit_spi_regmap to i32), ptr @__kstrtab_cs47l15_32bit_spi_regmap, ptr @__kstrtabns_cs47l15_32bit_spi_regmap }, section "___ksymtab_gpl+cs47l15_32bit_spi_regmap", align 4
@cs47l15_32bit_i2c_regmap = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.6, i32 32, i32 2, i32 0, i32 32, ptr null, ptr @cs47l15_32bit_readable_register, ptr @cs47l15_32bit_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1048188, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_cs47l15_32bit_i2c_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cs47l15_32bit_i2c_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_cs47l15_32bit_i2c_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cs47l15_32bit_i2c_regmap to i32), ptr @__kstrtab_cs47l15_32bit_i2c_regmap, ptr @__kstrtabns_cs47l15_32bit_i2c_regmap }, section "___ksymtab_gpl+cs47l15_32bit_i2c_regmap", align 4
@__sancov_gen_cov_switch_values = internal global [739 x i64] [i64 737, i64 32, i64 0, i64 1, i64 22, i64 23, i64 24, i64 32, i64 33, i64 34, i64 35, i64 36, i64 48, i64 49, i64 50, i64 97, i64 98, i64 99, i64 100, i64 102, i64 103, i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151, i64 152, i64 160, i64 256, i64 257, i64 258, i64 259, i64 260, i64 266, i64 267, i64 268, i64 288, i64 290, i64 329, i64 338, i64 339, i64 340, i64 341, i64 342, i64 369, i64 370, i64 371, i64 372, i64 373, i64 374, i64 377, i64 378, i64 385, i64 386, i64 387, i64 388, i64 389, i64 390, i64 391, i64 393, i64 394, i64 465, i64 466, i64 467, i64 468, i64 469, i64 470, i64 472, i64 474, i64 475, i64 476, i64 477, i64 536, i64 540, i64 549, i64 550, i64 659, i64 665, i64 667, i64 668, i64 669, i64 671, i64 674, i64 675, i64 676, i64 677, i64 678, i64 679, i64 680, i64 681, i64 683, i64 710, i64 712, i64 723, i64 768, i64 769, i64 776, i64 777, i64 780, i64 784, i64 785, i64 786, i64 787, i64 788, i64 789, i64 790, i64 791, i64 792, i64 793, i64 794, i64 795, i64 796, i64 797, i64 798, i64 799, i64 936, i64 964, i64 1024, i64 1025, i64 1030, i64 1032, i64 1033, i64 1040, i64 1041, i64 1042, i64 1043, i64 1044, i64 1045, i64 1047, i64 1050, i64 1064, i64 1065, i64 1067, i64 1072, i64 1073, i64 1075, i64 1076, i64 1077, i64 1079, i64 1104, i64 1105, i64 1112, i64 1168, i64 1169, i64 1184, i64 1192, i64 1193, i64 1280, i64 1281, i64 1282, i64 1283, i64 1284, i64 1286, i64 1287, i64 1288, i64 1289, i64 1290, i64 1291, i64 1292, i64 1293, i64 1294, i64 1297, i64 1298, i64 1299, i64 1300, i64 1301, i64 1302, i64 1305, i64 1306, i64 1344, i64 1345, i64 1346, i64 1347, i64 1348, i64 1350, i64 1351, i64 1352, i64 1353, i64 1354, i64 1355, i64 1356, i64 1361, i64 1362, i64 1363, i64 1364, i64 1369, i64 1370, i64 1408, i64 1409, i64 1410, i64 1411, i64 1412, i64 1414, i64 1415, i64 1416, i64 1417, i64 1418, i64 1425, i64 1426, i64 1433, i64 1434, i64 1474, i64 1475, i64 1476, i64 1477, i64 1600, i64 1601, i64 1602, i64 1603, i64 1604, i64 1605, i64 1606, i64 1607, i64 1608, i64 1609, i64 1610, i64 1611, i64 1612, i64 1613, i64 1614, i64 1615, i64 1664, i64 1665, i64 1666, i64 1667, i64 1668, i64 1669, i64 1670, i64 1671, i64 1672, i64 1673, i64 1674, i64 1675, i64 1676, i64 1677, i64 1678, i64 1679, i64 1712, i64 1713, i64 1714, i64 1715, i64 1716, i64 1717, i64 1718, i64 1719, i64 1728, i64 1729, i64 1730, i64 1731, i64 1732, i64 1733, i64 1734, i64 1735, i64 1736, i64 1737, i64 1738, i64 1739, i64 1740, i64 1741, i64 1742, i64 1743, i64 1792, i64 1793, i64 1794, i64 1795, i64 1796, i64 1797, i64 1798, i64 1799, i64 1800, i64 1801, i64 1802, i64 1803, i64 1804, i64 1805, i64 1806, i64 1807, i64 1808, i64 1809, i64 1810, i64 1811, i64 1812, i64 1813, i64 1814, i64 1815, i64 1816, i64 1817, i64 1818, i64 1819, i64 1820, i64 1821, i64 1822, i64 1823, i64 1824, i64 1825, i64 1826, i64 1827, i64 1828, i64 1829, i64 1830, i64 1831, i64 1832, i64 1833, i64 1834, i64 1835, i64 1836, i64 1837, i64 1838, i64 1839, i64 1856, i64 1857, i64 1858, i64 1859, i64 1860, i64 1861, i64 1862, i64 1863, i64 1864, i64 1865, i64 1866, i64 1867, i64 1868, i64 1869, i64 1870, i64 1871, i64 1872, i64 1873, i64 1874, i64 1875, i64 1876, i64 1877, i64 1878, i64 1879, i64 1880, i64 1881, i64 1882, i64 1883, i64 1884, i64 1885, i64 1886, i64 1887, i64 1920, i64 1921, i64 1922, i64 1923, i64 1924, i64 1925, i64 1926, i64 1927, i64 1928, i64 1929, i64 1930, i64 1931, i64 1932, i64 1933, i64 1934, i64 1935, i64 2048, i64 2049, i64 2056, i64 2057, i64 2176, i64 2177, i64 2178, i64 2179, i64 2180, i64 2181, i64 2182, i64 2183, i64 2184, i64 2185, i64 2186, i64 2187, i64 2188, i64 2189, i64 2190, i64 2191, i64 2192, i64 2193, i64 2194, i64 2195, i64 2196, i64 2197, i64 2198, i64 2199, i64 2200, i64 2201, i64 2202, i64 2203, i64 2204, i64 2205, i64 2206, i64 2207, i64 2240, i64 2241, i64 2242, i64 2243, i64 2244, i64 2245, i64 2246, i64 2247, i64 2248, i64 2249, i64 2250, i64 2251, i64 2252, i64 2253, i64 2254, i64 2255, i64 2256, i64 2257, i64 2258, i64 2259, i64 2260, i64 2261, i64 2262, i64 2263, i64 2264, i64 2265, i64 2266, i64 2267, i64 2268, i64 2269, i64 2270, i64 2271, i64 2304, i64 2305, i64 2306, i64 2307, i64 2308, i64 2309, i64 2310, i64 2311, i64 2312, i64 2313, i64 2314, i64 2315, i64 2316, i64 2317, i64 2318, i64 2319, i64 2320, i64 2321, i64 2322, i64 2323, i64 2324, i64 2325, i64 2326, i64 2327, i64 2328, i64 2329, i64 2330, i64 2331, i64 2332, i64 2333, i64 2334, i64 2335, i64 2368, i64 2369, i64 2370, i64 2371, i64 2372, i64 2373, i64 2374, i64 2375, i64 2376, i64 2377, i64 2378, i64 2379, i64 2380, i64 2381, i64 2382, i64 2383, i64 2384, i64 2392, i64 2400, i64 2408, i64 2416, i64 2424, i64 2816, i64 2824, i64 2832, i64 2840, i64 2848, i64 2856, i64 2864, i64 2872, i64 2880, i64 2888, i64 2896, i64 2904, i64 2912, i64 2920, i64 2928, i64 2936, i64 3584, i64 3585, i64 3600, i64 3601, i64 3602, i64 3603, i64 3604, i64 3605, i64 3606, i64 3607, i64 3608, i64 3609, i64 3610, i64 3611, i64 3612, i64 3613, i64 3614, i64 3615, i64 3616, i64 3617, i64 3618, i64 3619, i64 3620, i64 3622, i64 3623, i64 3624, i64 3625, i64 3626, i64 3627, i64 3628, i64 3629, i64 3630, i64 3631, i64 3632, i64 3633, i64 3634, i64 3635, i64 3636, i64 3637, i64 3638, i64 3639, i64 3640, i64 3641, i64 3642, i64 3644, i64 3645, i64 3646, i64 3647, i64 3648, i64 3649, i64 3650, i64 3651, i64 3652, i64 3653, i64 3654, i64 3655, i64 3656, i64 3657, i64 3658, i64 3659, i64 3660, i64 3661, i64 3662, i64 3663, i64 3664, i64 3666, i64 3667, i64 3668, i64 3669, i64 3670, i64 3671, i64 3672, i64 3673, i64 3674, i64 3675, i64 3676, i64 3677, i64 3678, i64 3679, i64 3680, i64 3681, i64 3682, i64 3683, i64 3684, i64 3685, i64 3686, i64 3712, i64 3713, i64 3714, i64 3715, i64 3716, i64 3720, i64 3721, i64 3722, i64 3723, i64 3724, i64 3776, i64 3777, i64 3780, i64 3781, i64 3784, i64 3785, i64 3788, i64 3789, i64 3824, i64 3825, i64 3826, i64 3827, i64 3828, i64 3829, i64 5888, i64 5889, i64 5890, i64 5891, i64 5892, i64 5893, i64 5894, i64 5895, i64 5896, i64 5897, i64 5898, i64 5899, i64 5900, i64 5901, i64 5902, i64 5903, i64 5904, i64 5905, i64 5906, i64 5907, i64 5908, i64 5909, i64 5910, i64 5911, i64 5912, i64 5913, i64 5914, i64 5915, i64 5916, i64 5917, i64 6144, i64 6145, i64 6146, i64 6147, i64 6148, i64 6149, i64 6150, i64 6151, i64 6152, i64 6153, i64 6154, i64 6155, i64 6156, i64 6157, i64 6158, i64 6159, i64 6160, i64 6161, i64 6162, i64 6163, i64 6164, i64 6165, i64 6166, i64 6167, i64 6168, i64 6169, i64 6170, i64 6171, i64 6172, i64 6173, i64 6174, i64 6175, i64 6176, i64 6208, i64 6209, i64 6210, i64 6211, i64 6212, i64 6213, i64 6214, i64 6215, i64 6216, i64 6217, i64 6218, i64 6219, i64 6220, i64 6221, i64 6222, i64 6223, i64 6224, i64 6225, i64 6226, i64 6227, i64 6228, i64 6229, i64 6230, i64 6231, i64 6232, i64 6233, i64 6234, i64 6235, i64 6236, i64 6237, i64 6238, i64 6239, i64 6240, i64 6272, i64 6273, i64 6274, i64 6275, i64 6276, i64 6277, i64 6278, i64 6279, i64 6280, i64 6281, i64 6282, i64 6283, i64 6284, i64 6285, i64 6286, i64 6287, i64 6288, i64 6289, i64 6290, i64 6291, i64 6292, i64 6293, i64 6294, i64 6295, i64 6296, i64 6297, i64 6298, i64 6299, i64 6300, i64 6301, i64 6302, i64 6303, i64 6304, i64 6662, i64 6784]
@__sancov_gen_cov_switch_values.7 = internal global [91 x i64] [i64 89, i64 32, i64 0, i64 1, i64 22, i64 23, i64 24, i64 152, i64 266, i64 267, i64 268, i64 549, i64 550, i64 668, i64 669, i64 671, i64 677, i64 683, i64 769, i64 1025, i64 1030, i64 1475, i64 1476, i64 1477, i64 3585, i64 6144, i64 6145, i64 6146, i64 6147, i64 6148, i64 6149, i64 6150, i64 6151, i64 6152, i64 6153, i64 6154, i64 6155, i64 6156, i64 6157, i64 6158, i64 6159, i64 6160, i64 6161, i64 6162, i64 6163, i64 6164, i64 6165, i64 6166, i64 6167, i64 6168, i64 6169, i64 6170, i64 6171, i64 6172, i64 6173, i64 6174, i64 6175, i64 6176, i64 6272, i64 6273, i64 6274, i64 6275, i64 6276, i64 6277, i64 6278, i64 6279, i64 6280, i64 6281, i64 6282, i64 6283, i64 6284, i64 6285, i64 6286, i64 6287, i64 6288, i64 6289, i64 6290, i64 6291, i64 6292, i64 6293, i64 6294, i64 6295, i64 6296, i64 6297, i64 6298, i64 6299, i64 6300, i64 6301, i64 6302, i64 6303, i64 6304]
@___asan_gen_.8 = private unnamed_addr constant [22 x i8] c"cs47l15_reva_16_patch\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 18, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 39, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1243, i32 10 }
@___asan_gen_.32 = private unnamed_addr constant [20 x i8] c"cs47l15_reg_default\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 48, i32 33 }
@___asan_gen_.35 = private unnamed_addr constant [25 x i8] c"cs47l15_16bit_spi_regmap\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1242, i32 28 }
@___asan_gen_.38 = private unnamed_addr constant [25 x i8] c"cs47l15_16bit_i2c_regmap\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1258, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1274, i32 10 }
@___asan_gen_.44 = private unnamed_addr constant [25 x i8] c"cs47l15_32bit_spi_regmap\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1273, i32 28 }
@___asan_gen_.47 = private unnamed_addr constant [25 x i8] c"cs47l15_32bit_i2c_regmap\00", align 1
@___asan_gen_.48 = private constant [32 x i8] c"../drivers/mfd/cs47l15-tables.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1288, i32 28 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__ksymtab_cs47l15_16bit_i2c_regmap, ptr @__ksymtab_cs47l15_16bit_spi_regmap, ptr @__ksymtab_cs47l15_32bit_i2c_regmap, ptr @__ksymtab_cs47l15_32bit_spi_regmap, ptr @__ksymtab_cs47l15_patch, ptr @cs47l15_patch._entry, ptr @cs47l15_patch._entry_ptr, ptr @cs47l15_reva_16_patch, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cs47l15_reg_default, ptr @cs47l15_16bit_spi_regmap, ptr @cs47l15_16bit_i2c_regmap, ptr @.str.6, ptr @cs47l15_32bit_spi_regmap, ptr @cs47l15_32bit_i2c_regmap], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l15_reva_16_patch to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l15_patch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l15_reg_default to i32), i32 5184, i32 6464, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l15_16bit_spi_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l15_16bit_i2c_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l15_32bit_spi_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l15_32bit_i2c_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs47l15_patch(ptr nocapture noundef readonly %madera) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %madera to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %madera, align 4
  %call = tail call i32 @regmap_register_patch(ptr noundef %1, ptr noundef nonnull @cs47l15_reva_16_patch, i32 noundef 10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.madera, ptr %madera, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs47l15_16bit_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge45
    i32 97, label %entry.return_crit_edge46
    i32 98, label %entry.return_crit_edge47
    i32 99, label %entry.return_crit_edge48
    i32 100, label %entry.return_crit_edge49
    i32 102, label %entry.return_crit_edge50
    i32 103, label %entry.return_crit_edge51
    i32 146, label %entry.return_crit_edge52
    i32 147, label %entry.return_crit_edge53
    i32 148, label %entry.return_crit_edge54
    i32 149, label %entry.return_crit_edge55
    i32 150, label %entry.return_crit_edge56
    i32 151, label %entry.return_crit_edge57
    i32 152, label %entry.return_crit_edge58
    i32 160, label %entry.return_crit_edge59
    i32 256, label %entry.return_crit_edge60
    i32 257, label %entry.return_crit_edge61
    i32 266, label %entry.return_crit_edge62
    i32 267, label %entry.return_crit_edge63
    i32 268, label %entry.return_crit_edge64
    i32 288, label %entry.return_crit_edge65
    i32 290, label %entry.return_crit_edge66
    i32 329, label %entry.return_crit_edge67
    i32 377, label %entry.return_crit_edge68
    i32 378, label %entry.return_crit_edge69
    i32 393, label %entry.return_crit_edge70
    i32 394, label %entry.return_crit_edge71
    i32 465, label %entry.return_crit_edge72
    i32 466, label %entry.return_crit_edge73
    i32 467, label %entry.return_crit_edge74
    i32 468, label %entry.return_crit_edge75
    i32 469, label %entry.return_crit_edge76
    i32 470, label %entry.return_crit_edge77
    i32 472, label %entry.return_crit_edge78
    i32 474, label %entry.return_crit_edge79
    i32 475, label %entry.return_crit_edge80
    i32 476, label %entry.return_crit_edge81
    i32 477, label %entry.return_crit_edge82
    i32 536, label %entry.return_crit_edge83
    i32 540, label %entry.return_crit_edge84
    i32 549, label %entry.return_crit_edge85
    i32 550, label %entry.return_crit_edge86
    i32 659, label %entry.return_crit_edge87
    i32 665, label %entry.return_crit_edge88
    i32 667, label %entry.return_crit_edge89
    i32 668, label %entry.return_crit_edge90
    i32 669, label %entry.return_crit_edge91
    i32 671, label %entry.return_crit_edge92
    i32 710, label %entry.return_crit_edge93
    i32 674, label %entry.return_crit_edge94
    i32 675, label %entry.return_crit_edge95
    i32 676, label %entry.return_crit_edge96
    i32 677, label %entry.return_crit_edge97
    i32 683, label %entry.return_crit_edge98
    i32 712, label %entry.return_crit_edge99
    i32 723, label %entry.return_crit_edge100
    i32 768, label %entry.return_crit_edge101
    i32 769, label %entry.return_crit_edge102
    i32 776, label %entry.return_crit_edge103
    i32 777, label %entry.return_crit_edge104
    i32 780, label %entry.return_crit_edge105
    i32 784, label %entry.return_crit_edge106
    i32 785, label %entry.return_crit_edge107
    i32 786, label %entry.return_crit_edge108
    i32 787, label %entry.return_crit_edge109
    i32 788, label %entry.return_crit_edge110
    i32 789, label %entry.return_crit_edge111
    i32 790, label %entry.return_crit_edge112
    i32 791, label %entry.return_crit_edge113
    i32 792, label %entry.return_crit_edge114
    i32 793, label %entry.return_crit_edge115
    i32 794, label %entry.return_crit_edge116
    i32 795, label %entry.return_crit_edge117
    i32 796, label %entry.return_crit_edge118
    i32 797, label %entry.return_crit_edge119
    i32 798, label %entry.return_crit_edge120
    i32 799, label %entry.return_crit_edge121
    i32 936, label %entry.return_crit_edge122
    i32 964, label %entry.return_crit_edge123
    i32 1024, label %entry.return_crit_edge124
    i32 1025, label %entry.return_crit_edge125
    i32 1030, label %entry.return_crit_edge126
    i32 1032, label %entry.return_crit_edge127
    i32 1033, label %entry.return_crit_edge128
    i32 1040, label %entry.return_crit_edge129
    i32 1041, label %entry.return_crit_edge130
    i32 1042, label %entry.return_crit_edge131
    i32 1043, label %entry.return_crit_edge132
    i32 1044, label %entry.return_crit_edge133
    i32 1045, label %entry.return_crit_edge134
    i32 1047, label %entry.return_crit_edge135
    i32 1050, label %entry.return_crit_edge136
    i32 1064, label %entry.return_crit_edge137
    i32 1065, label %entry.return_crit_edge138
    i32 1067, label %entry.return_crit_edge139
    i32 1072, label %entry.return_crit_edge140
    i32 1073, label %entry.return_crit_edge141
    i32 1075, label %entry.return_crit_edge142
    i32 1076, label %entry.return_crit_edge143
    i32 1077, label %entry.return_crit_edge144
    i32 1079, label %entry.return_crit_edge145
    i32 1104, label %entry.return_crit_edge146
    i32 1105, label %entry.return_crit_edge147
    i32 1112, label %entry.return_crit_edge148
    i32 1184, label %entry.return_crit_edge149
    i32 1192, label %entry.return_crit_edge150
    i32 1193, label %entry.return_crit_edge151
    i32 1280, label %entry.return_crit_edge152
    i32 1281, label %entry.return_crit_edge153
    i32 1282, label %entry.return_crit_edge154
    i32 1283, label %entry.return_crit_edge155
    i32 1284, label %entry.return_crit_edge156
    i32 1286, label %entry.return_crit_edge157
    i32 1305, label %entry.return_crit_edge158
    i32 1306, label %entry.return_crit_edge159
    i32 1344, label %entry.return_crit_edge160
    i32 1345, label %entry.return_crit_edge161
    i32 1346, label %entry.return_crit_edge162
    i32 1347, label %entry.return_crit_edge163
    i32 1348, label %entry.return_crit_edge164
    i32 1350, label %entry.return_crit_edge165
    i32 1369, label %entry.return_crit_edge166
    i32 1370, label %entry.return_crit_edge167
    i32 1408, label %entry.return_crit_edge168
    i32 1409, label %entry.return_crit_edge169
    i32 1410, label %entry.return_crit_edge170
    i32 1411, label %entry.return_crit_edge171
    i32 1412, label %entry.return_crit_edge172
    i32 1414, label %entry.return_crit_edge173
    i32 1433, label %entry.return_crit_edge174
    i32 1434, label %entry.return_crit_edge175
    i32 1474, label %entry.return_crit_edge176
    i32 1475, label %entry.return_crit_edge177
    i32 1476, label %entry.return_crit_edge178
    i32 1477, label %entry.return_crit_edge179
    i32 1600, label %entry.return_crit_edge180
    i32 1601, label %entry.return_crit_edge181
    i32 1602, label %entry.return_crit_edge182
    i32 1603, label %entry.return_crit_edge183
    i32 1604, label %entry.return_crit_edge184
    i32 1605, label %entry.return_crit_edge185
    i32 1606, label %entry.return_crit_edge186
    i32 1607, label %entry.return_crit_edge187
    i32 1608, label %entry.return_crit_edge188
    i32 1609, label %entry.return_crit_edge189
    i32 1610, label %entry.return_crit_edge190
    i32 1611, label %entry.return_crit_edge191
    i32 1612, label %entry.return_crit_edge192
    i32 1613, label %entry.return_crit_edge193
    i32 1614, label %entry.return_crit_edge194
    i32 1615, label %entry.return_crit_edge195
    i32 1664, label %entry.return_crit_edge196
    i32 1665, label %entry.return_crit_edge197
    i32 1666, label %entry.return_crit_edge198
    i32 1667, label %entry.return_crit_edge199
    i32 1668, label %entry.return_crit_edge200
    i32 1669, label %entry.return_crit_edge201
    i32 1670, label %entry.return_crit_edge202
    i32 1671, label %entry.return_crit_edge203
    i32 1672, label %entry.return_crit_edge204
    i32 1673, label %entry.return_crit_edge205
    i32 1674, label %entry.return_crit_edge206
    i32 1675, label %entry.return_crit_edge207
    i32 1676, label %entry.return_crit_edge208
    i32 1677, label %entry.return_crit_edge209
    i32 1678, label %entry.return_crit_edge210
    i32 1679, label %entry.return_crit_edge211
    i32 1712, label %entry.return_crit_edge212
    i32 1713, label %entry.return_crit_edge213
    i32 1714, label %entry.return_crit_edge214
    i32 1715, label %entry.return_crit_edge215
    i32 1716, label %entry.return_crit_edge216
    i32 1717, label %entry.return_crit_edge217
    i32 1718, label %entry.return_crit_edge218
    i32 1719, label %entry.return_crit_edge219
    i32 1728, label %entry.return_crit_edge220
    i32 1729, label %entry.return_crit_edge221
    i32 1730, label %entry.return_crit_edge222
    i32 1731, label %entry.return_crit_edge223
    i32 1732, label %entry.return_crit_edge224
    i32 1733, label %entry.return_crit_edge225
    i32 1734, label %entry.return_crit_edge226
    i32 1735, label %entry.return_crit_edge227
    i32 1736, label %entry.return_crit_edge228
    i32 1737, label %entry.return_crit_edge229
    i32 1738, label %entry.return_crit_edge230
    i32 1739, label %entry.return_crit_edge231
    i32 1740, label %entry.return_crit_edge232
    i32 1741, label %entry.return_crit_edge233
    i32 1742, label %entry.return_crit_edge234
    i32 1743, label %entry.return_crit_edge235
    i32 1792, label %entry.return_crit_edge236
    i32 1793, label %entry.return_crit_edge237
    i32 1794, label %entry.return_crit_edge238
    i32 1795, label %entry.return_crit_edge239
    i32 1796, label %entry.return_crit_edge240
    i32 1797, label %entry.return_crit_edge241
    i32 1798, label %entry.return_crit_edge242
    i32 1799, label %entry.return_crit_edge243
    i32 1800, label %entry.return_crit_edge244
    i32 1801, label %entry.return_crit_edge245
    i32 1802, label %entry.return_crit_edge246
    i32 1803, label %entry.return_crit_edge247
    i32 1804, label %entry.return_crit_edge248
    i32 1805, label %entry.return_crit_edge249
    i32 1806, label %entry.return_crit_edge250
    i32 1807, label %entry.return_crit_edge251
    i32 1808, label %entry.return_crit_edge252
    i32 1809, label %entry.return_crit_edge253
    i32 1810, label %entry.return_crit_edge254
    i32 1811, label %entry.return_crit_edge255
    i32 1812, label %entry.return_crit_edge256
    i32 1813, label %entry.return_crit_edge257
    i32 1814, label %entry.return_crit_edge258
    i32 1815, label %entry.return_crit_edge259
    i32 1816, label %entry.return_crit_edge260
    i32 1817, label %entry.return_crit_edge261
    i32 1818, label %entry.return_crit_edge262
    i32 1819, label %entry.return_crit_edge263
    i32 1820, label %entry.return_crit_edge264
    i32 1821, label %entry.return_crit_edge265
    i32 1822, label %entry.return_crit_edge266
    i32 1823, label %entry.return_crit_edge267
    i32 1824, label %entry.return_crit_edge268
    i32 1825, label %entry.return_crit_edge269
    i32 1826, label %entry.return_crit_edge270
    i32 1827, label %entry.return_crit_edge271
    i32 1828, label %entry.return_crit_edge272
    i32 1829, label %entry.return_crit_edge273
    i32 1830, label %entry.return_crit_edge274
    i32 1831, label %entry.return_crit_edge275
    i32 1832, label %entry.return_crit_edge276
    i32 1833, label %entry.return_crit_edge277
    i32 1834, label %entry.return_crit_edge278
    i32 1835, label %entry.return_crit_edge279
    i32 1836, label %entry.return_crit_edge280
    i32 1837, label %entry.return_crit_edge281
    i32 1838, label %entry.return_crit_edge282
    i32 1839, label %entry.return_crit_edge283
    i32 1856, label %entry.return_crit_edge284
    i32 1857, label %entry.return_crit_edge285
    i32 1858, label %entry.return_crit_edge286
    i32 1859, label %entry.return_crit_edge287
    i32 1860, label %entry.return_crit_edge288
    i32 1861, label %entry.return_crit_edge289
    i32 1862, label %entry.return_crit_edge290
    i32 1863, label %entry.return_crit_edge291
    i32 1864, label %entry.return_crit_edge292
    i32 1865, label %entry.return_crit_edge293
    i32 1866, label %entry.return_crit_edge294
    i32 1867, label %entry.return_crit_edge295
    i32 1868, label %entry.return_crit_edge296
    i32 1869, label %entry.return_crit_edge297
    i32 1870, label %entry.return_crit_edge298
    i32 1871, label %entry.return_crit_edge299
    i32 1872, label %entry.return_crit_edge300
    i32 1873, label %entry.return_crit_edge301
    i32 1874, label %entry.return_crit_edge302
    i32 1875, label %entry.return_crit_edge303
    i32 1876, label %entry.return_crit_edge304
    i32 1877, label %entry.return_crit_edge305
    i32 1878, label %entry.return_crit_edge306
    i32 1879, label %entry.return_crit_edge307
    i32 1880, label %entry.return_crit_edge308
    i32 1881, label %entry.return_crit_edge309
    i32 1882, label %entry.return_crit_edge310
    i32 1883, label %entry.return_crit_edge311
    i32 1884, label %entry.return_crit_edge312
    i32 1885, label %entry.return_crit_edge313
    i32 1886, label %entry.return_crit_edge314
    i32 1887, label %entry.return_crit_edge315
    i32 1920, label %entry.return_crit_edge316
    i32 1921, label %entry.return_crit_edge317
    i32 1922, label %entry.return_crit_edge318
    i32 1923, label %entry.return_crit_edge319
    i32 1924, label %entry.return_crit_edge320
    i32 1925, label %entry.return_crit_edge321
    i32 1926, label %entry.return_crit_edge322
    i32 1927, label %entry.return_crit_edge323
    i32 1928, label %entry.return_crit_edge324
    i32 1929, label %entry.return_crit_edge325
    i32 1930, label %entry.return_crit_edge326
    i32 1931, label %entry.return_crit_edge327
    i32 1932, label %entry.return_crit_edge328
    i32 1933, label %entry.return_crit_edge329
    i32 1934, label %entry.return_crit_edge330
    i32 1935, label %entry.return_crit_edge331
    i32 2048, label %entry.return_crit_edge332
    i32 2049, label %entry.return_crit_edge333
    i32 2056, label %entry.return_crit_edge334
    i32 2057, label %entry.return_crit_edge335
    i32 2176, label %entry.return_crit_edge336
    i32 2177, label %entry.return_crit_edge337
    i32 2178, label %entry.return_crit_edge338
    i32 2179, label %entry.return_crit_edge339
    i32 2180, label %entry.return_crit_edge340
    i32 2181, label %entry.return_crit_edge341
    i32 2182, label %entry.return_crit_edge342
    i32 2183, label %entry.return_crit_edge343
    i32 2184, label %entry.return_crit_edge344
    i32 2185, label %entry.return_crit_edge345
    i32 2186, label %entry.return_crit_edge346
    i32 2187, label %entry.return_crit_edge347
    i32 2188, label %entry.return_crit_edge348
    i32 2189, label %entry.return_crit_edge349
    i32 2190, label %entry.return_crit_edge350
    i32 2191, label %entry.return_crit_edge351
    i32 2192, label %entry.return_crit_edge352
    i32 2193, label %entry.return_crit_edge353
    i32 2194, label %entry.return_crit_edge354
    i32 2195, label %entry.return_crit_edge355
    i32 2196, label %entry.return_crit_edge356
    i32 2197, label %entry.return_crit_edge357
    i32 2198, label %entry.return_crit_edge358
    i32 2199, label %entry.return_crit_edge359
    i32 2200, label %entry.return_crit_edge360
    i32 2201, label %entry.return_crit_edge361
    i32 2202, label %entry.return_crit_edge362
    i32 2203, label %entry.return_crit_edge363
    i32 2204, label %entry.return_crit_edge364
    i32 2205, label %entry.return_crit_edge365
    i32 2206, label %entry.return_crit_edge366
    i32 2207, label %entry.return_crit_edge367
    i32 2240, label %entry.return_crit_edge368
    i32 2241, label %entry.return_crit_edge369
    i32 2242, label %entry.return_crit_edge370
    i32 2243, label %entry.return_crit_edge371
    i32 2244, label %entry.return_crit_edge372
    i32 2245, label %entry.return_crit_edge373
    i32 2246, label %entry.return_crit_edge374
    i32 2247, label %entry.return_crit_edge375
    i32 2248, label %entry.return_crit_edge376
    i32 2249, label %entry.return_crit_edge377
    i32 2250, label %entry.return_crit_edge378
    i32 2251, label %entry.return_crit_edge379
    i32 2252, label %entry.return_crit_edge380
    i32 2253, label %entry.return_crit_edge381
    i32 2254, label %entry.return_crit_edge382
    i32 2255, label %entry.return_crit_edge383
    i32 2256, label %entry.return_crit_edge384
    i32 2257, label %entry.return_crit_edge385
    i32 2258, label %entry.return_crit_edge386
    i32 2259, label %entry.return_crit_edge387
    i32 2260, label %entry.return_crit_edge388
    i32 2261, label %entry.return_crit_edge389
    i32 2262, label %entry.return_crit_edge390
    i32 2263, label %entry.return_crit_edge391
    i32 2264, label %entry.return_crit_edge392
    i32 2265, label %entry.return_crit_edge393
    i32 2266, label %entry.return_crit_edge394
    i32 2267, label %entry.return_crit_edge395
    i32 2268, label %entry.return_crit_edge396
    i32 2269, label %entry.return_crit_edge397
    i32 2270, label %entry.return_crit_edge398
    i32 2271, label %entry.return_crit_edge399
    i32 2304, label %entry.return_crit_edge400
    i32 2305, label %entry.return_crit_edge401
    i32 2306, label %entry.return_crit_edge402
    i32 2307, label %entry.return_crit_edge403
    i32 2308, label %entry.return_crit_edge404
    i32 2309, label %entry.return_crit_edge405
    i32 2310, label %entry.return_crit_edge406
    i32 2311, label %entry.return_crit_edge407
    i32 2312, label %entry.return_crit_edge408
    i32 2313, label %entry.return_crit_edge409
    i32 2314, label %entry.return_crit_edge410
    i32 2315, label %entry.return_crit_edge411
    i32 2316, label %entry.return_crit_edge412
    i32 2317, label %entry.return_crit_edge413
    i32 2318, label %entry.return_crit_edge414
    i32 2319, label %entry.return_crit_edge415
    i32 2320, label %entry.return_crit_edge416
    i32 2321, label %entry.return_crit_edge417
    i32 2322, label %entry.return_crit_edge418
    i32 2323, label %entry.return_crit_edge419
    i32 2324, label %entry.return_crit_edge420
    i32 2325, label %entry.return_crit_edge421
    i32 2326, label %entry.return_crit_edge422
    i32 2327, label %entry.return_crit_edge423
    i32 2328, label %entry.return_crit_edge424
    i32 2329, label %entry.return_crit_edge425
    i32 2330, label %entry.return_crit_edge426
    i32 2331, label %entry.return_crit_edge427
    i32 2332, label %entry.return_crit_edge428
    i32 2333, label %entry.return_crit_edge429
    i32 2334, label %entry.return_crit_edge430
    i32 2335, label %entry.return_crit_edge431
    i32 2368, label %entry.return_crit_edge432
    i32 2369, label %entry.return_crit_edge433
    i32 2370, label %entry.return_crit_edge434
    i32 2371, label %entry.return_crit_edge435
    i32 2372, label %entry.return_crit_edge436
    i32 2373, label %entry.return_crit_edge437
    i32 2374, label %entry.return_crit_edge438
    i32 2375, label %entry.return_crit_edge439
    i32 2376, label %entry.return_crit_edge440
    i32 2377, label %entry.return_crit_edge441
    i32 2378, label %entry.return_crit_edge442
    i32 2379, label %entry.return_crit_edge443
    i32 2380, label %entry.return_crit_edge444
    i32 2381, label %entry.return_crit_edge445
    i32 2382, label %entry.return_crit_edge446
    i32 2383, label %entry.return_crit_edge447
    i32 2384, label %entry.return_crit_edge448
    i32 2392, label %entry.return_crit_edge449
    i32 2400, label %entry.return_crit_edge450
    i32 2408, label %entry.return_crit_edge451
    i32 2416, label %entry.return_crit_edge452
    i32 2424, label %entry.return_crit_edge453
    i32 2816, label %entry.return_crit_edge454
    i32 2824, label %entry.return_crit_edge455
    i32 2832, label %entry.return_crit_edge456
    i32 2840, label %entry.return_crit_edge457
    i32 2848, label %entry.return_crit_edge458
    i32 2856, label %entry.return_crit_edge459
    i32 2864, label %entry.return_crit_edge460
    i32 2872, label %entry.return_crit_edge461
    i32 2880, label %entry.return_crit_edge462
    i32 2888, label %entry.return_crit_edge463
    i32 2896, label %entry.return_crit_edge464
    i32 2904, label %entry.return_crit_edge465
    i32 2912, label %entry.return_crit_edge466
    i32 2920, label %entry.return_crit_edge467
    i32 2928, label %entry.return_crit_edge468
    i32 2936, label %entry.return_crit_edge469
    i32 6662, label %entry.return_crit_edge470
    i32 6784, label %entry.return_crit_edge471
    i32 6272, label %entry.return_crit_edge472
    i32 6273, label %entry.return_crit_edge473
    i32 6274, label %entry.return_crit_edge474
    i32 6275, label %entry.return_crit_edge475
    i32 6276, label %entry.return_crit_edge476
    i32 6277, label %entry.return_crit_edge477
    i32 6278, label %entry.return_crit_edge478
    i32 6279, label %entry.return_crit_edge479
    i32 6280, label %entry.return_crit_edge480
    i32 6281, label %entry.return_crit_edge481
    i32 6282, label %entry.return_crit_edge482
    i32 6283, label %entry.return_crit_edge483
    i32 6284, label %entry.return_crit_edge484
    i32 6285, label %entry.return_crit_edge485
    i32 6286, label %entry.return_crit_edge486
    i32 6287, label %entry.return_crit_edge487
    i32 6288, label %entry.return_crit_edge488
    i32 6289, label %entry.return_crit_edge489
    i32 6290, label %entry.return_crit_edge490
    i32 6291, label %entry.return_crit_edge491
    i32 6292, label %entry.return_crit_edge492
    i32 6293, label %entry.return_crit_edge493
    i32 6294, label %entry.return_crit_edge494
    i32 6295, label %entry.return_crit_edge495
    i32 6296, label %entry.return_crit_edge496
    i32 6297, label %entry.return_crit_edge497
    i32 6298, label %entry.return_crit_edge498
    i32 6299, label %entry.return_crit_edge499
    i32 6300, label %entry.return_crit_edge500
    i32 6301, label %entry.return_crit_edge501
    i32 6302, label %entry.return_crit_edge502
    i32 6303, label %entry.return_crit_edge503
    i32 6304, label %entry.return_crit_edge504
    i32 6208, label %entry.return_crit_edge505
    i32 6209, label %entry.return_crit_edge506
    i32 6210, label %entry.return_crit_edge507
    i32 6211, label %entry.return_crit_edge508
    i32 6212, label %entry.return_crit_edge509
    i32 6213, label %entry.return_crit_edge510
    i32 6214, label %entry.return_crit_edge511
    i32 6215, label %entry.return_crit_edge512
    i32 6216, label %entry.return_crit_edge513
    i32 6217, label %entry.return_crit_edge514
    i32 6218, label %entry.return_crit_edge515
    i32 6219, label %entry.return_crit_edge516
    i32 6220, label %entry.return_crit_edge517
    i32 6221, label %entry.return_crit_edge518
    i32 6222, label %entry.return_crit_edge519
    i32 6223, label %entry.return_crit_edge520
    i32 6224, label %entry.return_crit_edge521
    i32 6225, label %entry.return_crit_edge522
    i32 6226, label %entry.return_crit_edge523
    i32 6227, label %entry.return_crit_edge524
    i32 6228, label %entry.return_crit_edge525
    i32 6229, label %entry.return_crit_edge526
    i32 6230, label %entry.return_crit_edge527
    i32 6231, label %entry.return_crit_edge528
    i32 6232, label %entry.return_crit_edge529
    i32 6233, label %entry.return_crit_edge530
    i32 6234, label %entry.return_crit_edge531
    i32 6235, label %entry.return_crit_edge532
    i32 6236, label %entry.return_crit_edge533
    i32 6237, label %entry.return_crit_edge534
    i32 6238, label %entry.return_crit_edge535
    i32 6239, label %entry.return_crit_edge536
    i32 6240, label %entry.return_crit_edge537
    i32 6144, label %entry.return_crit_edge538
    i32 6145, label %entry.return_crit_edge539
    i32 6146, label %entry.return_crit_edge540
    i32 6147, label %entry.return_crit_edge541
    i32 6148, label %entry.return_crit_edge542
    i32 6149, label %entry.return_crit_edge543
    i32 6150, label %entry.return_crit_edge544
    i32 6151, label %entry.return_crit_edge545
    i32 6152, label %entry.return_crit_edge546
    i32 6153, label %entry.return_crit_edge547
    i32 6154, label %entry.return_crit_edge548
    i32 6155, label %entry.return_crit_edge549
    i32 6156, label %entry.return_crit_edge550
    i32 6157, label %entry.return_crit_edge551
    i32 6158, label %entry.return_crit_edge552
    i32 6159, label %entry.return_crit_edge553
    i32 6160, label %entry.return_crit_edge554
    i32 6161, label %entry.return_crit_edge555
    i32 6162, label %entry.return_crit_edge556
    i32 6163, label %entry.return_crit_edge557
    i32 6164, label %entry.return_crit_edge558
    i32 6165, label %entry.return_crit_edge559
    i32 6166, label %entry.return_crit_edge560
    i32 6167, label %entry.return_crit_edge561
    i32 6168, label %entry.return_crit_edge562
    i32 6169, label %entry.return_crit_edge563
    i32 6170, label %entry.return_crit_edge564
    i32 6171, label %entry.return_crit_edge565
    i32 6172, label %entry.return_crit_edge566
    i32 6173, label %entry.return_crit_edge567
    i32 6174, label %entry.return_crit_edge568
    i32 6175, label %entry.return_crit_edge569
    i32 6176, label %entry.return_crit_edge570
    i32 5888, label %entry.return_crit_edge571
    i32 5889, label %entry.return_crit_edge572
    i32 5890, label %entry.return_crit_edge573
    i32 5891, label %entry.return_crit_edge574
    i32 5892, label %entry.return_crit_edge575
    i32 5893, label %entry.return_crit_edge576
    i32 5894, label %entry.return_crit_edge577
    i32 5895, label %entry.return_crit_edge578
    i32 5896, label %entry.return_crit_edge579
    i32 5897, label %entry.return_crit_edge580
    i32 5898, label %entry.return_crit_edge581
    i32 5899, label %entry.return_crit_edge582
    i32 5900, label %entry.return_crit_edge583
    i32 5901, label %entry.return_crit_edge584
    i32 5902, label %entry.return_crit_edge585
    i32 5903, label %entry.return_crit_edge586
    i32 5904, label %entry.return_crit_edge587
    i32 5905, label %entry.return_crit_edge588
    i32 5906, label %entry.return_crit_edge589
    i32 5907, label %entry.return_crit_edge590
    i32 5908, label %entry.return_crit_edge591
    i32 5909, label %entry.return_crit_edge592
    i32 5910, label %entry.return_crit_edge593
    i32 5911, label %entry.return_crit_edge594
    i32 5912, label %entry.return_crit_edge595
    i32 5913, label %entry.return_crit_edge596
    i32 5914, label %entry.return_crit_edge597
    i32 5915, label %entry.return_crit_edge598
    i32 5916, label %entry.return_crit_edge599
    i32 5917, label %entry.return_crit_edge600
    i32 3827, label %entry.return_crit_edge601
    i32 3828, label %entry.return_crit_edge602
    i32 3829, label %entry.return_crit_edge603
    i32 3824, label %entry.return_crit_edge604
    i32 3825, label %entry.return_crit_edge605
    i32 3826, label %entry.return_crit_edge606
    i32 3788, label %entry.return_crit_edge607
    i32 3789, label %entry.return_crit_edge608
    i32 3784, label %entry.return_crit_edge609
    i32 3785, label %entry.return_crit_edge610
    i32 3780, label %entry.return_crit_edge611
    i32 3781, label %entry.return_crit_edge612
    i32 3776, label %entry.return_crit_edge613
    i32 3777, label %entry.return_crit_edge614
    i32 3720, label %entry.return_crit_edge615
    i32 3721, label %entry.return_crit_edge616
    i32 3722, label %entry.return_crit_edge617
    i32 3723, label %entry.return_crit_edge618
    i32 3724, label %entry.return_crit_edge619
    i32 3712, label %entry.return_crit_edge620
    i32 3713, label %entry.return_crit_edge621
    i32 3714, label %entry.return_crit_edge622
    i32 3715, label %entry.return_crit_edge623
    i32 3716, label %entry.return_crit_edge624
    i32 3666, label %entry.return_crit_edge625
    i32 3667, label %entry.return_crit_edge626
    i32 3668, label %entry.return_crit_edge627
    i32 3669, label %entry.return_crit_edge628
    i32 3670, label %entry.return_crit_edge629
    i32 3671, label %entry.return_crit_edge630
    i32 3672, label %entry.return_crit_edge631
    i32 3673, label %entry.return_crit_edge632
    i32 3674, label %entry.return_crit_edge633
    i32 3675, label %entry.return_crit_edge634
    i32 3676, label %entry.return_crit_edge635
    i32 3677, label %entry.return_crit_edge636
    i32 3678, label %entry.return_crit_edge637
    i32 3679, label %entry.return_crit_edge638
    i32 3680, label %entry.return_crit_edge639
    i32 3681, label %entry.return_crit_edge640
    i32 3682, label %entry.return_crit_edge641
    i32 3683, label %entry.return_crit_edge642
    i32 3684, label %entry.return_crit_edge643
    i32 3685, label %entry.return_crit_edge644
    i32 3686, label %entry.return_crit_edge645
    i32 3644, label %entry.return_crit_edge646
    i32 3645, label %entry.return_crit_edge647
    i32 3646, label %entry.return_crit_edge648
    i32 3647, label %entry.return_crit_edge649
    i32 3648, label %entry.return_crit_edge650
    i32 3649, label %entry.return_crit_edge651
    i32 3650, label %entry.return_crit_edge652
    i32 3651, label %entry.return_crit_edge653
    i32 3652, label %entry.return_crit_edge654
    i32 3653, label %entry.return_crit_edge655
    i32 3654, label %entry.return_crit_edge656
    i32 3655, label %entry.return_crit_edge657
    i32 3656, label %entry.return_crit_edge658
    i32 3657, label %entry.return_crit_edge659
    i32 3658, label %entry.return_crit_edge660
    i32 3659, label %entry.return_crit_edge661
    i32 3660, label %entry.return_crit_edge662
    i32 3661, label %entry.return_crit_edge663
    i32 3662, label %entry.return_crit_edge664
    i32 3663, label %entry.return_crit_edge665
    i32 3664, label %entry.return_crit_edge666
    i32 3622, label %entry.return_crit_edge667
    i32 3623, label %entry.return_crit_edge668
    i32 3624, label %entry.return_crit_edge669
    i32 3625, label %entry.return_crit_edge670
    i32 3626, label %entry.return_crit_edge671
    i32 3627, label %entry.return_crit_edge672
    i32 3628, label %entry.return_crit_edge673
    i32 3629, label %entry.return_crit_edge674
    i32 3630, label %entry.return_crit_edge675
    i32 3631, label %entry.return_crit_edge676
    i32 3632, label %entry.return_crit_edge677
    i32 3633, label %entry.return_crit_edge678
    i32 3634, label %entry.return_crit_edge679
    i32 3635, label %entry.return_crit_edge680
    i32 3636, label %entry.return_crit_edge681
    i32 3637, label %entry.return_crit_edge682
    i32 3638, label %entry.return_crit_edge683
    i32 3639, label %entry.return_crit_edge684
    i32 3640, label %entry.return_crit_edge685
    i32 3641, label %entry.return_crit_edge686
    i32 3642, label %entry.return_crit_edge687
    i32 3600, label %entry.return_crit_edge688
    i32 3601, label %entry.return_crit_edge689
    i32 3602, label %entry.return_crit_edge690
    i32 3603, label %entry.return_crit_edge691
    i32 3604, label %entry.return_crit_edge692
    i32 3605, label %entry.return_crit_edge693
    i32 3606, label %entry.return_crit_edge694
    i32 3607, label %entry.return_crit_edge695
    i32 3608, label %entry.return_crit_edge696
    i32 3609, label %entry.return_crit_edge697
    i32 3610, label %entry.return_crit_edge698
    i32 3611, label %entry.return_crit_edge699
    i32 3612, label %entry.return_crit_edge700
    i32 3613, label %entry.return_crit_edge701
    i32 3614, label %entry.return_crit_edge702
    i32 3615, label %entry.return_crit_edge703
    i32 3616, label %entry.return_crit_edge704
    i32 3617, label %entry.return_crit_edge705
    i32 3618, label %entry.return_crit_edge706
    i32 3619, label %entry.return_crit_edge707
    i32 3620, label %entry.return_crit_edge708
    i32 3584, label %entry.return_crit_edge709
    i32 3585, label %entry.return_crit_edge710
    i32 1425, label %entry.return_crit_edge711
    i32 1426, label %entry.return_crit_edge712
    i32 1415, label %entry.return_crit_edge713
    i32 1416, label %entry.return_crit_edge714
    i32 1417, label %entry.return_crit_edge715
    i32 1418, label %entry.return_crit_edge716
    i32 1361, label %entry.return_crit_edge717
    i32 1362, label %entry.return_crit_edge718
    i32 1363, label %entry.return_crit_edge719
    i32 1364, label %entry.return_crit_edge720
    i32 1351, label %entry.return_crit_edge721
    i32 1352, label %entry.return_crit_edge722
    i32 1353, label %entry.return_crit_edge723
    i32 1354, label %entry.return_crit_edge724
    i32 1355, label %entry.return_crit_edge725
    i32 1356, label %entry.return_crit_edge726
    i32 1297, label %entry.return_crit_edge727
    i32 1298, label %entry.return_crit_edge728
    i32 1299, label %entry.return_crit_edge729
    i32 1300, label %entry.return_crit_edge730
    i32 1301, label %entry.return_crit_edge731
    i32 1302, label %entry.return_crit_edge732
    i32 1287, label %entry.return_crit_edge733
    i32 1288, label %entry.return_crit_edge734
    i32 1289, label %entry.return_crit_edge735
    i32 1290, label %entry.return_crit_edge736
    i32 1291, label %entry.return_crit_edge737
    i32 1292, label %entry.return_crit_edge738
    i32 1293, label %entry.return_crit_edge739
    i32 1294, label %entry.return_crit_edge740
    i32 1168, label %entry.return_crit_edge741
    i32 1169, label %entry.return_crit_edge742
    i32 678, label %entry.return_crit_edge743
    i32 679, label %entry.return_crit_edge744
    i32 680, label %entry.return_crit_edge745
    i32 681, label %entry.return_crit_edge746
    i32 385, label %entry.return_crit_edge747
    i32 386, label %entry.return_crit_edge748
    i32 387, label %entry.return_crit_edge749
    i32 388, label %entry.return_crit_edge750
    i32 389, label %entry.return_crit_edge751
    i32 390, label %entry.return_crit_edge752
    i32 391, label %entry.return_crit_edge753
    i32 369, label %entry.return_crit_edge754
    i32 370, label %entry.return_crit_edge755
    i32 371, label %entry.return_crit_edge756
    i32 372, label %entry.return_crit_edge757
    i32 373, label %entry.return_crit_edge758
    i32 374, label %entry.return_crit_edge759
    i32 338, label %entry.return_crit_edge760
    i32 339, label %entry.return_crit_edge761
    i32 340, label %entry.return_crit_edge762
    i32 341, label %entry.return_crit_edge763
    i32 342, label %entry.return_crit_edge764
    i32 258, label %entry.return_crit_edge765
    i32 259, label %entry.return_crit_edge766
    i32 260, label %entry.return_crit_edge767
    i32 144, label %entry.return_crit_edge768
    i32 145, label %entry.return_crit_edge769
    i32 48, label %entry.return_crit_edge770
    i32 49, label %entry.return_crit_edge771
    i32 50, label %entry.return_crit_edge772
    i32 32, label %entry.return_crit_edge773
    i32 33, label %entry.return_crit_edge774
    i32 34, label %entry.return_crit_edge775
    i32 35, label %entry.return_crit_edge776
    i32 36, label %entry.return_crit_edge777
    i32 22, label %entry.return_crit_edge778
    i32 23, label %entry.return_crit_edge779
    i32 24, label %entry.return_crit_edge780
  ]

entry.return_crit_edge780:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge779:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge778:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge777:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge776:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge775:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge774:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge773:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge772:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge771:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge770:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge769:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge768:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge767:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge766:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge765:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge764:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge763:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge762:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge761:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge760:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge759:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge758:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge757:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge756:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge755:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge754:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge753:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge752:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge751:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge750:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge749:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge748:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge747:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge746:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge745:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge744:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge743:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge742:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge741:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge740:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge739:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge738:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge737:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge736:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge735:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge734:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge733:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge732:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge731:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge730:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge729:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge728:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge727:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge726:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge725:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge724:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge723:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge722:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge721:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge720:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge719:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge718:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge717:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge716:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge715:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge714:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge713:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge712:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge711:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge710:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge709:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge708:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge707:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge706:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge705:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge704:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge703:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge702:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge701:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge700:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge699:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge698:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge697:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge696:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge695:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge694:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge693:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge692:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge691:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge690:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge689:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge688:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge687:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge686:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge685:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge684:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge683:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge682:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge681:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge680:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge679:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge678:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge677:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge676:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge675:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge674:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge673:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge672:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge671:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge670:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge669:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge668:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge667:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge666:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge665:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge664:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge663:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge662:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge661:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge660:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge659:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge658:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge657:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge656:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge655:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge654:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge653:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge652:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge651:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge650:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge649:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge648:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge647:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge646:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge645:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge644:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge643:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge642:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge641:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge640:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge639:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge638:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge637:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge636:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge635:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge634:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge633:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge632:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge631:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge630:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge629:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge628:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge627:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge626:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge625:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge624:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge623:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge622:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge621:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge620:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge619:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge618:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge617:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge616:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge615:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge614:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge613:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge612:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge611:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge610:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge609:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge608:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge607:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge606:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge605:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge604:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge603:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge602:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge601:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge600:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge599:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge598:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge597:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge596:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge595:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge594:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge593:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge592:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge591:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge590:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge589:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge588:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge587:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge586:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge585:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge584:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge583:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge582:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge581:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge580:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge579:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge578:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge577:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge576:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge575:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge574:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge573:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge572:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge571:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge570:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge569:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge568:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge567:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge566:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge565:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge564:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge563:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge562:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge561:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge560:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge559:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge558:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge557:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge556:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge555:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge554:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge553:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge552:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge551:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge550:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge549:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge548:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge547:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge546:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge545:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge544:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge543:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge542:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge541:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge540:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge539:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge538:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge537:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge536:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge535:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge534:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge533:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge532:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge531:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge530:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge529:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge528:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge527:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge526:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge525:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge524:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge523:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge522:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge521:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge520:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge519:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge518:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge517:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge516:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge515:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge514:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge513:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge512:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge511:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge510:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge509:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge508:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge507:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge506:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge505:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge504:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge503:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge502:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge501:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge500:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge499:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge498:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge497:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge496:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge495:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge494:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge493:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge492:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge491:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge490:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge489:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge488:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge487:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge486:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge485:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge484:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge483:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge482:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge481:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge480:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge479:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge478:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge477:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge476:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge475:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge474:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge473:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge472:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge471:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge470:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge469:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge468:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge467:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge466:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge465:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge464:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge463:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge462:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge461:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge460:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge459:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge458:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge457:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge456:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge455:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge454:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge453:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge452:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge451:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge450:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge449:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge448:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge447:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge446:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge445:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge444:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge443:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge442:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge441:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge440:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge439:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge438:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge437:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge436:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge435:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge434:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge433:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge432:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge431:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge430:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge429:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge428:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge427:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge426:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge425:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge424:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge423:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge422:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge421:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge420:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge419:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge418:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge417:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge416:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge415:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge414:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge413:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge412:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge411:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge410:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge409:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge408:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge407:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge406:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge405:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge404:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge403:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge402:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge401:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge400:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge399:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge398:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge397:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge396:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge395:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge394:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge393:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge392:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge391:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge390:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge389:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge388:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge387:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge386:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge385:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge384:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge383:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge382:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge381:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge380:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge379:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge378:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge377:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge376:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge375:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge374:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge373:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge372:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge371:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge370:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge369:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge368:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge367:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge366:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge365:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge364:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge363:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge362:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge361:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge360:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge359:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge358:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge357:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge356:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge355:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge354:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge353:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge352:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge351:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge350:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge349:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge348:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge347:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge346:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge345:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge344:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge343:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge342:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge341:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge340:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge339:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge338:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge337:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge336:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge335:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge334:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge333:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge332:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge331:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge330:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge329:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge328:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge327:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge326:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge325:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge324:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge323:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge322:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge321:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge320:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge319:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge318:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge317:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge316:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge315:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge314:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge313:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge312:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge311:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge310:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge309:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge308:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge307:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge306:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge305:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge304:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge303:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge302:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge301:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge300:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge299:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge298:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge297:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge296:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge295:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge294:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge293:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge292:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge291:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge290:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge289:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge288:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge287:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge286:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge285:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge284:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge283:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge282:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge281:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge280:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge279:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge278:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge277:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge276:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge275:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge274:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge273:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge272:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge271:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge270:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge269:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge268:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge267:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge266:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge265:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge264:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge263:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge262:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge261:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge260:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge259:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge258:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge257:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge256:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge255:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge254:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge253:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge252:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge251:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge250:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge249:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge248:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge247:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge246:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge245:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge244:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge243:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge242:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge241:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge240:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge239:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge238:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge237:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge236:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge235:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge234:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge233:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge232:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge231:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge230:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge229:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge228:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge227:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge226:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge225:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge224:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge223:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge222:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge221:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge220:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge219:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge218:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge217:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge216:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge215:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge214:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge213:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge212:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge211:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge210:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge209:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge208:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge207:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge206:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge205:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge204:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge203:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge202:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge201:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge200:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge199:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge198:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge197:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge196:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge195:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge194:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge193:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge192:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge191:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge190:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge189:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge188:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge187:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge186:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge185:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge184:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge183:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge182:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge181:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge180:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge179:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge178:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge177:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge176:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge175:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge174:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge173:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge172:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge171:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge170:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge169:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge168:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge167:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge166:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge165:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge164:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge163:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge162:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge161:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge160:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge159:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge158:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge157:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge156:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge155:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge154:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge153:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge152:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge151:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge150:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge149:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge148:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge147:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge146:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge145:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge143:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge140:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge139:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge133:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137, %entry.return_crit_edge138, %entry.return_crit_edge139, %entry.return_crit_edge140, %entry.return_crit_edge141, %entry.return_crit_edge142, %entry.return_crit_edge143, %entry.return_crit_edge144, %entry.return_crit_edge145, %entry.return_crit_edge146, %entry.return_crit_edge147, %entry.return_crit_edge148, %entry.return_crit_edge149, %entry.return_crit_edge150, %entry.return_crit_edge151, %entry.return_crit_edge152, %entry.return_crit_edge153, %entry.return_crit_edge154, %entry.return_crit_edge155, %entry.return_crit_edge156, %entry.return_crit_edge157, %entry.return_crit_edge158, %entry.return_crit_edge159, %entry.return_crit_edge160, %entry.return_crit_edge161, %entry.return_crit_edge162, %entry.return_crit_edge163, %entry.return_crit_edge164, %entry.return_crit_edge165, %entry.return_crit_edge166, %entry.return_crit_edge167, %entry.return_crit_edge168, %entry.return_crit_edge169, %entry.return_crit_edge170, %entry.return_crit_edge171, %entry.return_crit_edge172, %entry.return_crit_edge173, %entry.return_crit_edge174, %entry.return_crit_edge175, %entry.return_crit_edge176, %entry.return_crit_edge177, %entry.return_crit_edge178, %entry.return_crit_edge179, %entry.return_crit_edge180, %entry.return_crit_edge181, %entry.return_crit_edge182, %entry.return_crit_edge183, %entry.return_crit_edge184, %entry.return_crit_edge185, %entry.return_crit_edge186, %entry.return_crit_edge187, %entry.return_crit_edge188, %entry.return_crit_edge189, %entry.return_crit_edge190, %entry.return_crit_edge191, %entry.return_crit_edge192, %entry.return_crit_edge193, %entry.return_crit_edge194, %entry.return_crit_edge195, %entry.return_crit_edge196, %entry.return_crit_edge197, %entry.return_crit_edge198, %entry.return_crit_edge199, %entry.return_crit_edge200, %entry.return_crit_edge201, %entry.return_crit_edge202, %entry.return_crit_edge203, %entry.return_crit_edge204, %entry.return_crit_edge205, %entry.return_crit_edge206, %entry.return_crit_edge207, %entry.return_crit_edge208, %entry.return_crit_edge209, %entry.return_crit_edge210, %entry.return_crit_edge211, %entry.return_crit_edge212, %entry.return_crit_edge213, %entry.return_crit_edge214, %entry.return_crit_edge215, %entry.return_crit_edge216, %entry.return_crit_edge217, %entry.return_crit_edge218, %entry.return_crit_edge219, %entry.return_crit_edge220, %entry.return_crit_edge221, %entry.return_crit_edge222, %entry.return_crit_edge223, %entry.return_crit_edge224, %entry.return_crit_edge225, %entry.return_crit_edge226, %entry.return_crit_edge227, %entry.return_crit_edge228, %entry.return_crit_edge229, %entry.return_crit_edge230, %entry.return_crit_edge231, %entry.return_crit_edge232, %entry.return_crit_edge233, %entry.return_crit_edge234, %entry.return_crit_edge235, %entry.return_crit_edge236, %entry.return_crit_edge237, %entry.return_crit_edge238, %entry.return_crit_edge239, %entry.return_crit_edge240, %entry.return_crit_edge241, %entry.return_crit_edge242, %entry.return_crit_edge243, %entry.return_crit_edge244, %entry.return_crit_edge245, %entry.return_crit_edge246, %entry.return_crit_edge247, %entry.return_crit_edge248, %entry.return_crit_edge249, %entry.return_crit_edge250, %entry.return_crit_edge251, %entry.return_crit_edge252, %entry.return_crit_edge253, %entry.return_crit_edge254, %entry.return_crit_edge255, %entry.return_crit_edge256, %entry.return_crit_edge257, %entry.return_crit_edge258, %entry.return_crit_edge259, %entry.return_crit_edge260, %entry.return_crit_edge261, %entry.return_crit_edge262, %entry.return_crit_edge263, %entry.return_crit_edge264, %entry.return_crit_edge265, %entry.return_crit_edge266, %entry.return_crit_edge267, %entry.return_crit_edge268, %entry.return_crit_edge269, %entry.return_crit_edge270, %entry.return_crit_edge271, %entry.return_crit_edge272, %entry.return_crit_edge273, %entry.return_crit_edge274, %entry.return_crit_edge275, %entry.return_crit_edge276, %entry.return_crit_edge277, %entry.return_crit_edge278, %entry.return_crit_edge279, %entry.return_crit_edge280, %entry.return_crit_edge281, %entry.return_crit_edge282, %entry.return_crit_edge283, %entry.return_crit_edge284, %entry.return_crit_edge285, %entry.return_crit_edge286, %entry.return_crit_edge287, %entry.return_crit_edge288, %entry.return_crit_edge289, %entry.return_crit_edge290, %entry.return_crit_edge291, %entry.return_crit_edge292, %entry.return_crit_edge293, %entry.return_crit_edge294, %entry.return_crit_edge295, %entry.return_crit_edge296, %entry.return_crit_edge297, %entry.return_crit_edge298, %entry.return_crit_edge299, %entry.return_crit_edge300, %entry.return_crit_edge301, %entry.return_crit_edge302, %entry.return_crit_edge303, %entry.return_crit_edge304, %entry.return_crit_edge305, %entry.return_crit_edge306, %entry.return_crit_edge307, %entry.return_crit_edge308, %entry.return_crit_edge309, %entry.return_crit_edge310, %entry.return_crit_edge311, %entry.return_crit_edge312, %entry.return_crit_edge313, %entry.return_crit_edge314, %entry.return_crit_edge315, %entry.return_crit_edge316, %entry.return_crit_edge317, %entry.return_crit_edge318, %entry.return_crit_edge319, %entry.return_crit_edge320, %entry.return_crit_edge321, %entry.return_crit_edge322, %entry.return_crit_edge323, %entry.return_crit_edge324, %entry.return_crit_edge325, %entry.return_crit_edge326, %entry.return_crit_edge327, %entry.return_crit_edge328, %entry.return_crit_edge329, %entry.return_crit_edge330, %entry.return_crit_edge331, %entry.return_crit_edge332, %entry.return_crit_edge333, %entry.return_crit_edge334, %entry.return_crit_edge335, %entry.return_crit_edge336, %entry.return_crit_edge337, %entry.return_crit_edge338, %entry.return_crit_edge339, %entry.return_crit_edge340, %entry.return_crit_edge341, %entry.return_crit_edge342, %entry.return_crit_edge343, %entry.return_crit_edge344, %entry.return_crit_edge345, %entry.return_crit_edge346, %entry.return_crit_edge347, %entry.return_crit_edge348, %entry.return_crit_edge349, %entry.return_crit_edge350, %entry.return_crit_edge351, %entry.return_crit_edge352, %entry.return_crit_edge353, %entry.return_crit_edge354, %entry.return_crit_edge355, %entry.return_crit_edge356, %entry.return_crit_edge357, %entry.return_crit_edge358, %entry.return_crit_edge359, %entry.return_crit_edge360, %entry.return_crit_edge361, %entry.return_crit_edge362, %entry.return_crit_edge363, %entry.return_crit_edge364, %entry.return_crit_edge365, %entry.return_crit_edge366, %entry.return_crit_edge367, %entry.return_crit_edge368, %entry.return_crit_edge369, %entry.return_crit_edge370, %entry.return_crit_edge371, %entry.return_crit_edge372, %entry.return_crit_edge373, %entry.return_crit_edge374, %entry.return_crit_edge375, %entry.return_crit_edge376, %entry.return_crit_edge377, %entry.return_crit_edge378, %entry.return_crit_edge379, %entry.return_crit_edge380, %entry.return_crit_edge381, %entry.return_crit_edge382, %entry.return_crit_edge383, %entry.return_crit_edge384, %entry.return_crit_edge385, %entry.return_crit_edge386, %entry.return_crit_edge387, %entry.return_crit_edge388, %entry.return_crit_edge389, %entry.return_crit_edge390, %entry.return_crit_edge391, %entry.return_crit_edge392, %entry.return_crit_edge393, %entry.return_crit_edge394, %entry.return_crit_edge395, %entry.return_crit_edge396, %entry.return_crit_edge397, %entry.return_crit_edge398, %entry.return_crit_edge399, %entry.return_crit_edge400, %entry.return_crit_edge401, %entry.return_crit_edge402, %entry.return_crit_edge403, %entry.return_crit_edge404, %entry.return_crit_edge405, %entry.return_crit_edge406, %entry.return_crit_edge407, %entry.return_crit_edge408, %entry.return_crit_edge409, %entry.return_crit_edge410, %entry.return_crit_edge411, %entry.return_crit_edge412, %entry.return_crit_edge413, %entry.return_crit_edge414, %entry.return_crit_edge415, %entry.return_crit_edge416, %entry.return_crit_edge417, %entry.return_crit_edge418, %entry.return_crit_edge419, %entry.return_crit_edge420, %entry.return_crit_edge421, %entry.return_crit_edge422, %entry.return_crit_edge423, %entry.return_crit_edge424, %entry.return_crit_edge425, %entry.return_crit_edge426, %entry.return_crit_edge427, %entry.return_crit_edge428, %entry.return_crit_edge429, %entry.return_crit_edge430, %entry.return_crit_edge431, %entry.return_crit_edge432, %entry.return_crit_edge433, %entry.return_crit_edge434, %entry.return_crit_edge435, %entry.return_crit_edge436, %entry.return_crit_edge437, %entry.return_crit_edge438, %entry.return_crit_edge439, %entry.return_crit_edge440, %entry.return_crit_edge441, %entry.return_crit_edge442, %entry.return_crit_edge443, %entry.return_crit_edge444, %entry.return_crit_edge445, %entry.return_crit_edge446, %entry.return_crit_edge447, %entry.return_crit_edge448, %entry.return_crit_edge449, %entry.return_crit_edge450, %entry.return_crit_edge451, %entry.return_crit_edge452, %entry.return_crit_edge453, %entry.return_crit_edge454, %entry.return_crit_edge455, %entry.return_crit_edge456, %entry.return_crit_edge457, %entry.return_crit_edge458, %entry.return_crit_edge459, %entry.return_crit_edge460, %entry.return_crit_edge461, %entry.return_crit_edge462, %entry.return_crit_edge463, %entry.return_crit_edge464, %entry.return_crit_edge465, %entry.return_crit_edge466, %entry.return_crit_edge467, %entry.return_crit_edge468, %entry.return_crit_edge469, %entry.return_crit_edge470, %entry.return_crit_edge471, %entry.return_crit_edge472, %entry.return_crit_edge473, %entry.return_crit_edge474, %entry.return_crit_edge475, %entry.return_crit_edge476, %entry.return_crit_edge477, %entry.return_crit_edge478, %entry.return_crit_edge479, %entry.return_crit_edge480, %entry.return_crit_edge481, %entry.return_crit_edge482, %entry.return_crit_edge483, %entry.return_crit_edge484, %entry.return_crit_edge485, %entry.return_crit_edge486, %entry.return_crit_edge487, %entry.return_crit_edge488, %entry.return_crit_edge489, %entry.return_crit_edge490, %entry.return_crit_edge491, %entry.return_crit_edge492, %entry.return_crit_edge493, %entry.return_crit_edge494, %entry.return_crit_edge495, %entry.return_crit_edge496, %entry.return_crit_edge497, %entry.return_crit_edge498, %entry.return_crit_edge499, %entry.return_crit_edge500, %entry.return_crit_edge501, %entry.return_crit_edge502, %entry.return_crit_edge503, %entry.return_crit_edge504, %entry.return_crit_edge505, %entry.return_crit_edge506, %entry.return_crit_edge507, %entry.return_crit_edge508, %entry.return_crit_edge509, %entry.return_crit_edge510, %entry.return_crit_edge511, %entry.return_crit_edge512, %entry.return_crit_edge513, %entry.return_crit_edge514, %entry.return_crit_edge515, %entry.return_crit_edge516, %entry.return_crit_edge517, %entry.return_crit_edge518, %entry.return_crit_edge519, %entry.return_crit_edge520, %entry.return_crit_edge521, %entry.return_crit_edge522, %entry.return_crit_edge523, %entry.return_crit_edge524, %entry.return_crit_edge525, %entry.return_crit_edge526, %entry.return_crit_edge527, %entry.return_crit_edge528, %entry.return_crit_edge529, %entry.return_crit_edge530, %entry.return_crit_edge531, %entry.return_crit_edge532, %entry.return_crit_edge533, %entry.return_crit_edge534, %entry.return_crit_edge535, %entry.return_crit_edge536, %entry.return_crit_edge537, %entry.return_crit_edge538, %entry.return_crit_edge539, %entry.return_crit_edge540, %entry.return_crit_edge541, %entry.return_crit_edge542, %entry.return_crit_edge543, %entry.return_crit_edge544, %entry.return_crit_edge545, %entry.return_crit_edge546, %entry.return_crit_edge547, %entry.return_crit_edge548, %entry.return_crit_edge549, %entry.return_crit_edge550, %entry.return_crit_edge551, %entry.return_crit_edge552, %entry.return_crit_edge553, %entry.return_crit_edge554, %entry.return_crit_edge555, %entry.return_crit_edge556, %entry.return_crit_edge557, %entry.return_crit_edge558, %entry.return_crit_edge559, %entry.return_crit_edge560, %entry.return_crit_edge561, %entry.return_crit_edge562, %entry.return_crit_edge563, %entry.return_crit_edge564, %entry.return_crit_edge565, %entry.return_crit_edge566, %entry.return_crit_edge567, %entry.return_crit_edge568, %entry.return_crit_edge569, %entry.return_crit_edge570, %entry.return_crit_edge571, %entry.return_crit_edge572, %entry.return_crit_edge573, %entry.return_crit_edge574, %entry.return_crit_edge575, %entry.return_crit_edge576, %entry.return_crit_edge577, %entry.return_crit_edge578, %entry.return_crit_edge579, %entry.return_crit_edge580, %entry.return_crit_edge581, %entry.return_crit_edge582, %entry.return_crit_edge583, %entry.return_crit_edge584, %entry.return_crit_edge585, %entry.return_crit_edge586, %entry.return_crit_edge587, %entry.return_crit_edge588, %entry.return_crit_edge589, %entry.return_crit_edge590, %entry.return_crit_edge591, %entry.return_crit_edge592, %entry.return_crit_edge593, %entry.return_crit_edge594, %entry.return_crit_edge595, %entry.return_crit_edge596, %entry.return_crit_edge597, %entry.return_crit_edge598, %entry.return_crit_edge599, %entry.return_crit_edge600, %entry.return_crit_edge601, %entry.return_crit_edge602, %entry.return_crit_edge603, %entry.return_crit_edge604, %entry.return_crit_edge605, %entry.return_crit_edge606, %entry.return_crit_edge607, %entry.return_crit_edge608, %entry.return_crit_edge609, %entry.return_crit_edge610, %entry.return_crit_edge611, %entry.return_crit_edge612, %entry.return_crit_edge613, %entry.return_crit_edge614, %entry.return_crit_edge615, %entry.return_crit_edge616, %entry.return_crit_edge617, %entry.return_crit_edge618, %entry.return_crit_edge619, %entry.return_crit_edge620, %entry.return_crit_edge621, %entry.return_crit_edge622, %entry.return_crit_edge623, %entry.return_crit_edge624, %entry.return_crit_edge625, %entry.return_crit_edge626, %entry.return_crit_edge627, %entry.return_crit_edge628, %entry.return_crit_edge629, %entry.return_crit_edge630, %entry.return_crit_edge631, %entry.return_crit_edge632, %entry.return_crit_edge633, %entry.return_crit_edge634, %entry.return_crit_edge635, %entry.return_crit_edge636, %entry.return_crit_edge637, %entry.return_crit_edge638, %entry.return_crit_edge639, %entry.return_crit_edge640, %entry.return_crit_edge641, %entry.return_crit_edge642, %entry.return_crit_edge643, %entry.return_crit_edge644, %entry.return_crit_edge645, %entry.return_crit_edge646, %entry.return_crit_edge647, %entry.return_crit_edge648, %entry.return_crit_edge649, %entry.return_crit_edge650, %entry.return_crit_edge651, %entry.return_crit_edge652, %entry.return_crit_edge653, %entry.return_crit_edge654, %entry.return_crit_edge655, %entry.return_crit_edge656, %entry.return_crit_edge657, %entry.return_crit_edge658, %entry.return_crit_edge659, %entry.return_crit_edge660, %entry.return_crit_edge661, %entry.return_crit_edge662, %entry.return_crit_edge663, %entry.return_crit_edge664, %entry.return_crit_edge665, %entry.return_crit_edge666, %entry.return_crit_edge667, %entry.return_crit_edge668, %entry.return_crit_edge669, %entry.return_crit_edge670, %entry.return_crit_edge671, %entry.return_crit_edge672, %entry.return_crit_edge673, %entry.return_crit_edge674, %entry.return_crit_edge675, %entry.return_crit_edge676, %entry.return_crit_edge677, %entry.return_crit_edge678, %entry.return_crit_edge679, %entry.return_crit_edge680, %entry.return_crit_edge681, %entry.return_crit_edge682, %entry.return_crit_edge683, %entry.return_crit_edge684, %entry.return_crit_edge685, %entry.return_crit_edge686, %entry.return_crit_edge687, %entry.return_crit_edge688, %entry.return_crit_edge689, %entry.return_crit_edge690, %entry.return_crit_edge691, %entry.return_crit_edge692, %entry.return_crit_edge693, %entry.return_crit_edge694, %entry.return_crit_edge695, %entry.return_crit_edge696, %entry.return_crit_edge697, %entry.return_crit_edge698, %entry.return_crit_edge699, %entry.return_crit_edge700, %entry.return_crit_edge701, %entry.return_crit_edge702, %entry.return_crit_edge703, %entry.return_crit_edge704, %entry.return_crit_edge705, %entry.return_crit_edge706, %entry.return_crit_edge707, %entry.return_crit_edge708, %entry.return_crit_edge709, %entry.return_crit_edge710, %entry.return_crit_edge711, %entry.return_crit_edge712, %entry.return_crit_edge713, %entry.return_crit_edge714, %entry.return_crit_edge715, %entry.return_crit_edge716, %entry.return_crit_edge717, %entry.return_crit_edge718, %entry.return_crit_edge719, %entry.return_crit_edge720, %entry.return_crit_edge721, %entry.return_crit_edge722, %entry.return_crit_edge723, %entry.return_crit_edge724, %entry.return_crit_edge725, %entry.return_crit_edge726, %entry.return_crit_edge727, %entry.return_crit_edge728, %entry.return_crit_edge729, %entry.return_crit_edge730, %entry.return_crit_edge731, %entry.return_crit_edge732, %entry.return_crit_edge733, %entry.return_crit_edge734, %entry.return_crit_edge735, %entry.return_crit_edge736, %entry.return_crit_edge737, %entry.return_crit_edge738, %entry.return_crit_edge739, %entry.return_crit_edge740, %entry.return_crit_edge741, %entry.return_crit_edge742, %entry.return_crit_edge743, %entry.return_crit_edge744, %entry.return_crit_edge745, %entry.return_crit_edge746, %entry.return_crit_edge747, %entry.return_crit_edge748, %entry.return_crit_edge749, %entry.return_crit_edge750, %entry.return_crit_edge751, %entry.return_crit_edge752, %entry.return_crit_edge753, %entry.return_crit_edge754, %entry.return_crit_edge755, %entry.return_crit_edge756, %entry.return_crit_edge757, %entry.return_crit_edge758, %entry.return_crit_edge759, %entry.return_crit_edge760, %entry.return_crit_edge761, %entry.return_crit_edge762, %entry.return_crit_edge763, %entry.return_crit_edge764, %entry.return_crit_edge765, %entry.return_crit_edge766, %entry.return_crit_edge767, %entry.return_crit_edge768, %entry.return_crit_edge769, %entry.return_crit_edge770, %entry.return_crit_edge771, %entry.return_crit_edge772, %entry.return_crit_edge773, %entry.return_crit_edge774, %entry.return_crit_edge775, %entry.return_crit_edge776, %entry.return_crit_edge777, %entry.return_crit_edge778, %entry.return_crit_edge779, %entry.return_crit_edge780
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ], [ true, %entry.return_crit_edge138 ], [ true, %entry.return_crit_edge139 ], [ true, %entry.return_crit_edge140 ], [ true, %entry.return_crit_edge141 ], [ true, %entry.return_crit_edge142 ], [ true, %entry.return_crit_edge143 ], [ true, %entry.return_crit_edge144 ], [ true, %entry.return_crit_edge145 ], [ true, %entry.return_crit_edge146 ], [ true, %entry.return_crit_edge147 ], [ true, %entry.return_crit_edge148 ], [ true, %entry.return_crit_edge149 ], [ true, %entry.return_crit_edge150 ], [ true, %entry.return_crit_edge151 ], [ true, %entry.return_crit_edge152 ], [ true, %entry.return_crit_edge153 ], [ true, %entry.return_crit_edge154 ], [ true, %entry.return_crit_edge155 ], [ true, %entry.return_crit_edge156 ], [ true, %entry.return_crit_edge157 ], [ true, %entry.return_crit_edge158 ], [ true, %entry.return_crit_edge159 ], [ true, %entry.return_crit_edge160 ], [ true, %entry.return_crit_edge161 ], [ true, %entry.return_crit_edge162 ], [ true, %entry.return_crit_edge163 ], [ true, %entry.return_crit_edge164 ], [ true, %entry.return_crit_edge165 ], [ true, %entry.return_crit_edge166 ], [ true, %entry.return_crit_edge167 ], [ true, %entry.return_crit_edge168 ], [ true, %entry.return_crit_edge169 ], [ true, %entry.return_crit_edge170 ], [ true, %entry.return_crit_edge171 ], [ true, %entry.return_crit_edge172 ], [ true, %entry.return_crit_edge173 ], [ true, %entry.return_crit_edge174 ], [ true, %entry.return_crit_edge175 ], [ true, %entry.return_crit_edge176 ], [ true, %entry.return_crit_edge177 ], [ true, %entry.return_crit_edge178 ], [ true, %entry.return_crit_edge179 ], [ true, %entry.return_crit_edge180 ], [ true, %entry.return_crit_edge181 ], [ true, %entry.return_crit_edge182 ], [ true, %entry.return_crit_edge183 ], [ true, %entry.return_crit_edge184 ], [ true, %entry.return_crit_edge185 ], [ true, %entry.return_crit_edge186 ], [ true, %entry.return_crit_edge187 ], [ true, %entry.return_crit_edge188 ], [ true, %entry.return_crit_edge189 ], [ true, %entry.return_crit_edge190 ], [ true, %entry.return_crit_edge191 ], [ true, %entry.return_crit_edge192 ], [ true, %entry.return_crit_edge193 ], [ true, %entry.return_crit_edge194 ], [ true, %entry.return_crit_edge195 ], [ true, %entry.return_crit_edge196 ], [ true, %entry.return_crit_edge197 ], [ true, %entry.return_crit_edge198 ], [ true, %entry.return_crit_edge199 ], [ true, %entry.return_crit_edge200 ], [ true, %entry.return_crit_edge201 ], [ true, %entry.return_crit_edge202 ], [ true, %entry.return_crit_edge203 ], [ true, %entry.return_crit_edge204 ], [ true, %entry.return_crit_edge205 ], [ true, %entry.return_crit_edge206 ], [ true, %entry.return_crit_edge207 ], [ true, %entry.return_crit_edge208 ], [ true, %entry.return_crit_edge209 ], [ true, %entry.return_crit_edge210 ], [ true, %entry.return_crit_edge211 ], [ true, %entry.return_crit_edge212 ], [ true, %entry.return_crit_edge213 ], [ true, %entry.return_crit_edge214 ], [ true, %entry.return_crit_edge215 ], [ true, %entry.return_crit_edge216 ], [ true, %entry.return_crit_edge217 ], [ true, %entry.return_crit_edge218 ], [ true, %entry.return_crit_edge219 ], [ true, %entry.return_crit_edge220 ], [ true, %entry.return_crit_edge221 ], [ true, %entry.return_crit_edge222 ], [ true, %entry.return_crit_edge223 ], [ true, %entry.return_crit_edge224 ], [ true, %entry.return_crit_edge225 ], [ true, %entry.return_crit_edge226 ], [ true, %entry.return_crit_edge227 ], [ true, %entry.return_crit_edge228 ], [ true, %entry.return_crit_edge229 ], [ true, %entry.return_crit_edge230 ], [ true, %entry.return_crit_edge231 ], [ true, %entry.return_crit_edge232 ], [ true, %entry.return_crit_edge233 ], [ true, %entry.return_crit_edge234 ], [ true, %entry.return_crit_edge235 ], [ true, %entry.return_crit_edge236 ], [ true, %entry.return_crit_edge237 ], [ true, %entry.return_crit_edge238 ], [ true, %entry.return_crit_edge239 ], [ true, %entry.return_crit_edge240 ], [ true, %entry.return_crit_edge241 ], [ true, %entry.return_crit_edge242 ], [ true, %entry.return_crit_edge243 ], [ true, %entry.return_crit_edge244 ], [ true, %entry.return_crit_edge245 ], [ true, %entry.return_crit_edge246 ], [ true, %entry.return_crit_edge247 ], [ true, %entry.return_crit_edge248 ], [ true, %entry.return_crit_edge249 ], [ true, %entry.return_crit_edge250 ], [ true, %entry.return_crit_edge251 ], [ true, %entry.return_crit_edge252 ], [ true, %entry.return_crit_edge253 ], [ true, %entry.return_crit_edge254 ], [ true, %entry.return_crit_edge255 ], [ true, %entry.return_crit_edge256 ], [ true, %entry.return_crit_edge257 ], [ true, %entry.return_crit_edge258 ], [ true, %entry.return_crit_edge259 ], [ true, %entry.return_crit_edge260 ], [ true, %entry.return_crit_edge261 ], [ true, %entry.return_crit_edge262 ], [ true, %entry.return_crit_edge263 ], [ true, %entry.return_crit_edge264 ], [ true, %entry.return_crit_edge265 ], [ true, %entry.return_crit_edge266 ], [ true, %entry.return_crit_edge267 ], [ true, %entry.return_crit_edge268 ], [ true, %entry.return_crit_edge269 ], [ true, %entry.return_crit_edge270 ], [ true, %entry.return_crit_edge271 ], [ true, %entry.return_crit_edge272 ], [ true, %entry.return_crit_edge273 ], [ true, %entry.return_crit_edge274 ], [ true, %entry.return_crit_edge275 ], [ true, %entry.return_crit_edge276 ], [ true, %entry.return_crit_edge277 ], [ true, %entry.return_crit_edge278 ], [ true, %entry.return_crit_edge279 ], [ true, %entry.return_crit_edge280 ], [ true, %entry.return_crit_edge281 ], [ true, %entry.return_crit_edge282 ], [ true, %entry.return_crit_edge283 ], [ true, %entry.return_crit_edge284 ], [ true, %entry.return_crit_edge285 ], [ true, %entry.return_crit_edge286 ], [ true, %entry.return_crit_edge287 ], [ true, %entry.return_crit_edge288 ], [ true, %entry.return_crit_edge289 ], [ true, %entry.return_crit_edge290 ], [ true, %entry.return_crit_edge291 ], [ true, %entry.return_crit_edge292 ], [ true, %entry.return_crit_edge293 ], [ true, %entry.return_crit_edge294 ], [ true, %entry.return_crit_edge295 ], [ true, %entry.return_crit_edge296 ], [ true, %entry.return_crit_edge297 ], [ true, %entry.return_crit_edge298 ], [ true, %entry.return_crit_edge299 ], [ true, %entry.return_crit_edge300 ], [ true, %entry.return_crit_edge301 ], [ true, %entry.return_crit_edge302 ], [ true, %entry.return_crit_edge303 ], [ true, %entry.return_crit_edge304 ], [ true, %entry.return_crit_edge305 ], [ true, %entry.return_crit_edge306 ], [ true, %entry.return_crit_edge307 ], [ true, %entry.return_crit_edge308 ], [ true, %entry.return_crit_edge309 ], [ true, %entry.return_crit_edge310 ], [ true, %entry.return_crit_edge311 ], [ true, %entry.return_crit_edge312 ], [ true, %entry.return_crit_edge313 ], [ true, %entry.return_crit_edge314 ], [ true, %entry.return_crit_edge315 ], [ true, %entry.return_crit_edge316 ], [ true, %entry.return_crit_edge317 ], [ true, %entry.return_crit_edge318 ], [ true, %entry.return_crit_edge319 ], [ true, %entry.return_crit_edge320 ], [ true, %entry.return_crit_edge321 ], [ true, %entry.return_crit_edge322 ], [ true, %entry.return_crit_edge323 ], [ true, %entry.return_crit_edge324 ], [ true, %entry.return_crit_edge325 ], [ true, %entry.return_crit_edge326 ], [ true, %entry.return_crit_edge327 ], [ true, %entry.return_crit_edge328 ], [ true, %entry.return_crit_edge329 ], [ true, %entry.return_crit_edge330 ], [ true, %entry.return_crit_edge331 ], [ true, %entry.return_crit_edge332 ], [ true, %entry.return_crit_edge333 ], [ true, %entry.return_crit_edge334 ], [ true, %entry.return_crit_edge335 ], [ true, %entry.return_crit_edge336 ], [ true, %entry.return_crit_edge337 ], [ true, %entry.return_crit_edge338 ], [ true, %entry.return_crit_edge339 ], [ true, %entry.return_crit_edge340 ], [ true, %entry.return_crit_edge341 ], [ true, %entry.return_crit_edge342 ], [ true, %entry.return_crit_edge343 ], [ true, %entry.return_crit_edge344 ], [ true, %entry.return_crit_edge345 ], [ true, %entry.return_crit_edge346 ], [ true, %entry.return_crit_edge347 ], [ true, %entry.return_crit_edge348 ], [ true, %entry.return_crit_edge349 ], [ true, %entry.return_crit_edge350 ], [ true, %entry.return_crit_edge351 ], [ true, %entry.return_crit_edge352 ], [ true, %entry.return_crit_edge353 ], [ true, %entry.return_crit_edge354 ], [ true, %entry.return_crit_edge355 ], [ true, %entry.return_crit_edge356 ], [ true, %entry.return_crit_edge357 ], [ true, %entry.return_crit_edge358 ], [ true, %entry.return_crit_edge359 ], [ true, %entry.return_crit_edge360 ], [ true, %entry.return_crit_edge361 ], [ true, %entry.return_crit_edge362 ], [ true, %entry.return_crit_edge363 ], [ true, %entry.return_crit_edge364 ], [ true, %entry.return_crit_edge365 ], [ true, %entry.return_crit_edge366 ], [ true, %entry.return_crit_edge367 ], [ true, %entry.return_crit_edge368 ], [ true, %entry.return_crit_edge369 ], [ true, %entry.return_crit_edge370 ], [ true, %entry.return_crit_edge371 ], [ true, %entry.return_crit_edge372 ], [ true, %entry.return_crit_edge373 ], [ true, %entry.return_crit_edge374 ], [ true, %entry.return_crit_edge375 ], [ true, %entry.return_crit_edge376 ], [ true, %entry.return_crit_edge377 ], [ true, %entry.return_crit_edge378 ], [ true, %entry.return_crit_edge379 ], [ true, %entry.return_crit_edge380 ], [ true, %entry.return_crit_edge381 ], [ true, %entry.return_crit_edge382 ], [ true, %entry.return_crit_edge383 ], [ true, %entry.return_crit_edge384 ], [ true, %entry.return_crit_edge385 ], [ true, %entry.return_crit_edge386 ], [ true, %entry.return_crit_edge387 ], [ true, %entry.return_crit_edge388 ], [ true, %entry.return_crit_edge389 ], [ true, %entry.return_crit_edge390 ], [ true, %entry.return_crit_edge391 ], [ true, %entry.return_crit_edge392 ], [ true, %entry.return_crit_edge393 ], [ true, %entry.return_crit_edge394 ], [ true, %entry.return_crit_edge395 ], [ true, %entry.return_crit_edge396 ], [ true, %entry.return_crit_edge397 ], [ true, %entry.return_crit_edge398 ], [ true, %entry.return_crit_edge399 ], [ true, %entry.return_crit_edge400 ], [ true, %entry.return_crit_edge401 ], [ true, %entry.return_crit_edge402 ], [ true, %entry.return_crit_edge403 ], [ true, %entry.return_crit_edge404 ], [ true, %entry.return_crit_edge405 ], [ true, %entry.return_crit_edge406 ], [ true, %entry.return_crit_edge407 ], [ true, %entry.return_crit_edge408 ], [ true, %entry.return_crit_edge409 ], [ true, %entry.return_crit_edge410 ], [ true, %entry.return_crit_edge411 ], [ true, %entry.return_crit_edge412 ], [ true, %entry.return_crit_edge413 ], [ true, %entry.return_crit_edge414 ], [ true, %entry.return_crit_edge415 ], [ true, %entry.return_crit_edge416 ], [ true, %entry.return_crit_edge417 ], [ true, %entry.return_crit_edge418 ], [ true, %entry.return_crit_edge419 ], [ true, %entry.return_crit_edge420 ], [ true, %entry.return_crit_edge421 ], [ true, %entry.return_crit_edge422 ], [ true, %entry.return_crit_edge423 ], [ true, %entry.return_crit_edge424 ], [ true, %entry.return_crit_edge425 ], [ true, %entry.return_crit_edge426 ], [ true, %entry.return_crit_edge427 ], [ true, %entry.return_crit_edge428 ], [ true, %entry.return_crit_edge429 ], [ true, %entry.return_crit_edge430 ], [ true, %entry.return_crit_edge431 ], [ true, %entry.return_crit_edge432 ], [ true, %entry.return_crit_edge433 ], [ true, %entry.return_crit_edge434 ], [ true, %entry.return_crit_edge435 ], [ true, %entry.return_crit_edge436 ], [ true, %entry.return_crit_edge437 ], [ true, %entry.return_crit_edge438 ], [ true, %entry.return_crit_edge439 ], [ true, %entry.return_crit_edge440 ], [ true, %entry.return_crit_edge441 ], [ true, %entry.return_crit_edge442 ], [ true, %entry.return_crit_edge443 ], [ true, %entry.return_crit_edge444 ], [ true, %entry.return_crit_edge445 ], [ true, %entry.return_crit_edge446 ], [ true, %entry.return_crit_edge447 ], [ true, %entry.return_crit_edge448 ], [ true, %entry.return_crit_edge449 ], [ true, %entry.return_crit_edge450 ], [ true, %entry.return_crit_edge451 ], [ true, %entry.return_crit_edge452 ], [ true, %entry.return_crit_edge453 ], [ true, %entry.return_crit_edge454 ], [ true, %entry.return_crit_edge455 ], [ true, %entry.return_crit_edge456 ], [ true, %entry.return_crit_edge457 ], [ true, %entry.return_crit_edge458 ], [ true, %entry.return_crit_edge459 ], [ true, %entry.return_crit_edge460 ], [ true, %entry.return_crit_edge461 ], [ true, %entry.return_crit_edge462 ], [ true, %entry.return_crit_edge463 ], [ true, %entry.return_crit_edge464 ], [ true, %entry.return_crit_edge465 ], [ true, %entry.return_crit_edge466 ], [ true, %entry.return_crit_edge467 ], [ true, %entry.return_crit_edge468 ], [ true, %entry.return_crit_edge469 ], [ true, %entry.return_crit_edge470 ], [ true, %entry.return_crit_edge471 ], [ true, %entry.return_crit_edge472 ], [ true, %entry.return_crit_edge473 ], [ true, %entry.return_crit_edge474 ], [ true, %entry.return_crit_edge475 ], [ true, %entry.return_crit_edge476 ], [ true, %entry.return_crit_edge477 ], [ true, %entry.return_crit_edge478 ], [ true, %entry.return_crit_edge479 ], [ true, %entry.return_crit_edge480 ], [ true, %entry.return_crit_edge481 ], [ true, %entry.return_crit_edge482 ], [ true, %entry.return_crit_edge483 ], [ true, %entry.return_crit_edge484 ], [ true, %entry.return_crit_edge485 ], [ true, %entry.return_crit_edge486 ], [ true, %entry.return_crit_edge487 ], [ true, %entry.return_crit_edge488 ], [ true, %entry.return_crit_edge489 ], [ true, %entry.return_crit_edge490 ], [ true, %entry.return_crit_edge491 ], [ true, %entry.return_crit_edge492 ], [ true, %entry.return_crit_edge493 ], [ true, %entry.return_crit_edge494 ], [ true, %entry.return_crit_edge495 ], [ true, %entry.return_crit_edge496 ], [ true, %entry.return_crit_edge497 ], [ true, %entry.return_crit_edge498 ], [ true, %entry.return_crit_edge499 ], [ true, %entry.return_crit_edge500 ], [ true, %entry.return_crit_edge501 ], [ true, %entry.return_crit_edge502 ], [ true, %entry.return_crit_edge503 ], [ true, %entry.return_crit_edge504 ], [ true, %entry.return_crit_edge505 ], [ true, %entry.return_crit_edge506 ], [ true, %entry.return_crit_edge507 ], [ true, %entry.return_crit_edge508 ], [ true, %entry.return_crit_edge509 ], [ true, %entry.return_crit_edge510 ], [ true, %entry.return_crit_edge511 ], [ true, %entry.return_crit_edge512 ], [ true, %entry.return_crit_edge513 ], [ true, %entry.return_crit_edge514 ], [ true, %entry.return_crit_edge515 ], [ true, %entry.return_crit_edge516 ], [ true, %entry.return_crit_edge517 ], [ true, %entry.return_crit_edge518 ], [ true, %entry.return_crit_edge519 ], [ true, %entry.return_crit_edge520 ], [ true, %entry.return_crit_edge521 ], [ true, %entry.return_crit_edge522 ], [ true, %entry.return_crit_edge523 ], [ true, %entry.return_crit_edge524 ], [ true, %entry.return_crit_edge525 ], [ true, %entry.return_crit_edge526 ], [ true, %entry.return_crit_edge527 ], [ true, %entry.return_crit_edge528 ], [ true, %entry.return_crit_edge529 ], [ true, %entry.return_crit_edge530 ], [ true, %entry.return_crit_edge531 ], [ true, %entry.return_crit_edge532 ], [ true, %entry.return_crit_edge533 ], [ true, %entry.return_crit_edge534 ], [ true, %entry.return_crit_edge535 ], [ true, %entry.return_crit_edge536 ], [ true, %entry.return_crit_edge537 ], [ true, %entry.return_crit_edge538 ], [ true, %entry.return_crit_edge539 ], [ true, %entry.return_crit_edge540 ], [ true, %entry.return_crit_edge541 ], [ true, %entry.return_crit_edge542 ], [ true, %entry.return_crit_edge543 ], [ true, %entry.return_crit_edge544 ], [ true, %entry.return_crit_edge545 ], [ true, %entry.return_crit_edge546 ], [ true, %entry.return_crit_edge547 ], [ true, %entry.return_crit_edge548 ], [ true, %entry.return_crit_edge549 ], [ true, %entry.return_crit_edge550 ], [ true, %entry.return_crit_edge551 ], [ true, %entry.return_crit_edge552 ], [ true, %entry.return_crit_edge553 ], [ true, %entry.return_crit_edge554 ], [ true, %entry.return_crit_edge555 ], [ true, %entry.return_crit_edge556 ], [ true, %entry.return_crit_edge557 ], [ true, %entry.return_crit_edge558 ], [ true, %entry.return_crit_edge559 ], [ true, %entry.return_crit_edge560 ], [ true, %entry.return_crit_edge561 ], [ true, %entry.return_crit_edge562 ], [ true, %entry.return_crit_edge563 ], [ true, %entry.return_crit_edge564 ], [ true, %entry.return_crit_edge565 ], [ true, %entry.return_crit_edge566 ], [ true, %entry.return_crit_edge567 ], [ true, %entry.return_crit_edge568 ], [ true, %entry.return_crit_edge569 ], [ true, %entry.return_crit_edge570 ], [ true, %entry.return_crit_edge571 ], [ true, %entry.return_crit_edge572 ], [ true, %entry.return_crit_edge573 ], [ true, %entry.return_crit_edge574 ], [ true, %entry.return_crit_edge575 ], [ true, %entry.return_crit_edge576 ], [ true, %entry.return_crit_edge577 ], [ true, %entry.return_crit_edge578 ], [ true, %entry.return_crit_edge579 ], [ true, %entry.return_crit_edge580 ], [ true, %entry.return_crit_edge581 ], [ true, %entry.return_crit_edge582 ], [ true, %entry.return_crit_edge583 ], [ true, %entry.return_crit_edge584 ], [ true, %entry.return_crit_edge585 ], [ true, %entry.return_crit_edge586 ], [ true, %entry.return_crit_edge587 ], [ true, %entry.return_crit_edge588 ], [ true, %entry.return_crit_edge589 ], [ true, %entry.return_crit_edge590 ], [ true, %entry.return_crit_edge591 ], [ true, %entry.return_crit_edge592 ], [ true, %entry.return_crit_edge593 ], [ true, %entry.return_crit_edge594 ], [ true, %entry.return_crit_edge595 ], [ true, %entry.return_crit_edge596 ], [ true, %entry.return_crit_edge597 ], [ true, %entry.return_crit_edge598 ], [ true, %entry.return_crit_edge599 ], [ true, %entry.return_crit_edge600 ], [ true, %entry.return_crit_edge601 ], [ true, %entry.return_crit_edge602 ], [ true, %entry.return_crit_edge603 ], [ true, %entry.return_crit_edge604 ], [ true, %entry.return_crit_edge605 ], [ true, %entry.return_crit_edge606 ], [ true, %entry.return_crit_edge607 ], [ true, %entry.return_crit_edge608 ], [ true, %entry.return_crit_edge609 ], [ true, %entry.return_crit_edge610 ], [ true, %entry.return_crit_edge611 ], [ true, %entry.return_crit_edge612 ], [ true, %entry.return_crit_edge613 ], [ true, %entry.return_crit_edge614 ], [ true, %entry.return_crit_edge615 ], [ true, %entry.return_crit_edge616 ], [ true, %entry.return_crit_edge617 ], [ true, %entry.return_crit_edge618 ], [ true, %entry.return_crit_edge619 ], [ true, %entry.return_crit_edge620 ], [ true, %entry.return_crit_edge621 ], [ true, %entry.return_crit_edge622 ], [ true, %entry.return_crit_edge623 ], [ true, %entry.return_crit_edge624 ], [ true, %entry.return_crit_edge625 ], [ true, %entry.return_crit_edge626 ], [ true, %entry.return_crit_edge627 ], [ true, %entry.return_crit_edge628 ], [ true, %entry.return_crit_edge629 ], [ true, %entry.return_crit_edge630 ], [ true, %entry.return_crit_edge631 ], [ true, %entry.return_crit_edge632 ], [ true, %entry.return_crit_edge633 ], [ true, %entry.return_crit_edge634 ], [ true, %entry.return_crit_edge635 ], [ true, %entry.return_crit_edge636 ], [ true, %entry.return_crit_edge637 ], [ true, %entry.return_crit_edge638 ], [ true, %entry.return_crit_edge639 ], [ true, %entry.return_crit_edge640 ], [ true, %entry.return_crit_edge641 ], [ true, %entry.return_crit_edge642 ], [ true, %entry.return_crit_edge643 ], [ true, %entry.return_crit_edge644 ], [ true, %entry.return_crit_edge645 ], [ true, %entry.return_crit_edge646 ], [ true, %entry.return_crit_edge647 ], [ true, %entry.return_crit_edge648 ], [ true, %entry.return_crit_edge649 ], [ true, %entry.return_crit_edge650 ], [ true, %entry.return_crit_edge651 ], [ true, %entry.return_crit_edge652 ], [ true, %entry.return_crit_edge653 ], [ true, %entry.return_crit_edge654 ], [ true, %entry.return_crit_edge655 ], [ true, %entry.return_crit_edge656 ], [ true, %entry.return_crit_edge657 ], [ true, %entry.return_crit_edge658 ], [ true, %entry.return_crit_edge659 ], [ true, %entry.return_crit_edge660 ], [ true, %entry.return_crit_edge661 ], [ true, %entry.return_crit_edge662 ], [ true, %entry.return_crit_edge663 ], [ true, %entry.return_crit_edge664 ], [ true, %entry.return_crit_edge665 ], [ true, %entry.return_crit_edge666 ], [ true, %entry.return_crit_edge667 ], [ true, %entry.return_crit_edge668 ], [ true, %entry.return_crit_edge669 ], [ true, %entry.return_crit_edge670 ], [ true, %entry.return_crit_edge671 ], [ true, %entry.return_crit_edge672 ], [ true, %entry.return_crit_edge673 ], [ true, %entry.return_crit_edge674 ], [ true, %entry.return_crit_edge675 ], [ true, %entry.return_crit_edge676 ], [ true, %entry.return_crit_edge677 ], [ true, %entry.return_crit_edge678 ], [ true, %entry.return_crit_edge679 ], [ true, %entry.return_crit_edge680 ], [ true, %entry.return_crit_edge681 ], [ true, %entry.return_crit_edge682 ], [ true, %entry.return_crit_edge683 ], [ true, %entry.return_crit_edge684 ], [ true, %entry.return_crit_edge685 ], [ true, %entry.return_crit_edge686 ], [ true, %entry.return_crit_edge687 ], [ true, %entry.return_crit_edge688 ], [ true, %entry.return_crit_edge689 ], [ true, %entry.return_crit_edge690 ], [ true, %entry.return_crit_edge691 ], [ true, %entry.return_crit_edge692 ], [ true, %entry.return_crit_edge693 ], [ true, %entry.return_crit_edge694 ], [ true, %entry.return_crit_edge695 ], [ true, %entry.return_crit_edge696 ], [ true, %entry.return_crit_edge697 ], [ true, %entry.return_crit_edge698 ], [ true, %entry.return_crit_edge699 ], [ true, %entry.return_crit_edge700 ], [ true, %entry.return_crit_edge701 ], [ true, %entry.return_crit_edge702 ], [ true, %entry.return_crit_edge703 ], [ true, %entry.return_crit_edge704 ], [ true, %entry.return_crit_edge705 ], [ true, %entry.return_crit_edge706 ], [ true, %entry.return_crit_edge707 ], [ true, %entry.return_crit_edge708 ], [ true, %entry.return_crit_edge709 ], [ true, %entry.return_crit_edge710 ], [ true, %entry.return_crit_edge711 ], [ true, %entry.return_crit_edge712 ], [ true, %entry.return_crit_edge713 ], [ true, %entry.return_crit_edge714 ], [ true, %entry.return_crit_edge715 ], [ true, %entry.return_crit_edge716 ], [ true, %entry.return_crit_edge717 ], [ true, %entry.return_crit_edge718 ], [ true, %entry.return_crit_edge719 ], [ true, %entry.return_crit_edge720 ], [ true, %entry.return_crit_edge721 ], [ true, %entry.return_crit_edge722 ], [ true, %entry.return_crit_edge723 ], [ true, %entry.return_crit_edge724 ], [ true, %entry.return_crit_edge725 ], [ true, %entry.return_crit_edge726 ], [ true, %entry.return_crit_edge727 ], [ true, %entry.return_crit_edge728 ], [ true, %entry.return_crit_edge729 ], [ true, %entry.return_crit_edge730 ], [ true, %entry.return_crit_edge731 ], [ true, %entry.return_crit_edge732 ], [ true, %entry.return_crit_edge733 ], [ true, %entry.return_crit_edge734 ], [ true, %entry.return_crit_edge735 ], [ true, %entry.return_crit_edge736 ], [ true, %entry.return_crit_edge737 ], [ true, %entry.return_crit_edge738 ], [ true, %entry.return_crit_edge739 ], [ true, %entry.return_crit_edge740 ], [ true, %entry.return_crit_edge741 ], [ true, %entry.return_crit_edge742 ], [ true, %entry.return_crit_edge743 ], [ true, %entry.return_crit_edge744 ], [ true, %entry.return_crit_edge745 ], [ true, %entry.return_crit_edge746 ], [ true, %entry.return_crit_edge747 ], [ true, %entry.return_crit_edge748 ], [ true, %entry.return_crit_edge749 ], [ true, %entry.return_crit_edge750 ], [ true, %entry.return_crit_edge751 ], [ true, %entry.return_crit_edge752 ], [ true, %entry.return_crit_edge753 ], [ true, %entry.return_crit_edge754 ], [ true, %entry.return_crit_edge755 ], [ true, %entry.return_crit_edge756 ], [ true, %entry.return_crit_edge757 ], [ true, %entry.return_crit_edge758 ], [ true, %entry.return_crit_edge759 ], [ true, %entry.return_crit_edge760 ], [ true, %entry.return_crit_edge761 ], [ true, %entry.return_crit_edge762 ], [ true, %entry.return_crit_edge763 ], [ true, %entry.return_crit_edge764 ], [ true, %entry.return_crit_edge765 ], [ true, %entry.return_crit_edge766 ], [ true, %entry.return_crit_edge767 ], [ true, %entry.return_crit_edge768 ], [ true, %entry.return_crit_edge769 ], [ true, %entry.return_crit_edge770 ], [ true, %entry.return_crit_edge771 ], [ true, %entry.return_crit_edge772 ], [ true, %entry.return_crit_edge773 ], [ true, %entry.return_crit_edge774 ], [ true, %entry.return_crit_edge775 ], [ true, %entry.return_crit_edge776 ], [ true, %entry.return_crit_edge777 ], [ true, %entry.return_crit_edge778 ], [ true, %entry.return_crit_edge779 ], [ true, %entry.return_crit_edge780 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs47l15_16bit_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge5
    i32 152, label %entry.return_crit_edge6
    i32 266, label %entry.return_crit_edge7
    i32 267, label %entry.return_crit_edge8
    i32 268, label %entry.return_crit_edge9
    i32 549, label %entry.return_crit_edge10
    i32 550, label %entry.return_crit_edge11
    i32 677, label %entry.return_crit_edge12
    i32 683, label %entry.return_crit_edge13
    i32 668, label %entry.return_crit_edge14
    i32 669, label %entry.return_crit_edge15
    i32 671, label %entry.return_crit_edge16
    i32 769, label %entry.return_crit_edge17
    i32 1025, label %entry.return_crit_edge18
    i32 1030, label %entry.return_crit_edge19
    i32 1475, label %entry.return_crit_edge20
    i32 1476, label %entry.return_crit_edge21
    i32 1477, label %entry.return_crit_edge22
    i32 3585, label %entry.return_crit_edge23
    i32 6272, label %entry.return_crit_edge24
    i32 6273, label %entry.return_crit_edge25
    i32 6274, label %entry.return_crit_edge26
    i32 6275, label %entry.return_crit_edge27
    i32 6276, label %entry.return_crit_edge28
    i32 6277, label %entry.return_crit_edge29
    i32 6278, label %entry.return_crit_edge30
    i32 6279, label %entry.return_crit_edge31
    i32 6280, label %entry.return_crit_edge32
    i32 6281, label %entry.return_crit_edge33
    i32 6282, label %entry.return_crit_edge34
    i32 6283, label %entry.return_crit_edge35
    i32 6284, label %entry.return_crit_edge36
    i32 6285, label %entry.return_crit_edge37
    i32 6286, label %entry.return_crit_edge38
    i32 6287, label %entry.return_crit_edge39
    i32 6288, label %entry.return_crit_edge40
    i32 6289, label %entry.return_crit_edge41
    i32 6290, label %entry.return_crit_edge42
    i32 6291, label %entry.return_crit_edge43
    i32 6292, label %entry.return_crit_edge44
    i32 6293, label %entry.return_crit_edge45
    i32 6294, label %entry.return_crit_edge46
    i32 6295, label %entry.return_crit_edge47
    i32 6296, label %entry.return_crit_edge48
    i32 6297, label %entry.return_crit_edge49
    i32 6298, label %entry.return_crit_edge50
    i32 6299, label %entry.return_crit_edge51
    i32 6300, label %entry.return_crit_edge52
    i32 6301, label %entry.return_crit_edge53
    i32 6302, label %entry.return_crit_edge54
    i32 6303, label %entry.return_crit_edge55
    i32 6304, label %entry.return_crit_edge56
    i32 6144, label %entry.return_crit_edge57
    i32 6145, label %entry.return_crit_edge58
    i32 6146, label %entry.return_crit_edge59
    i32 6147, label %entry.return_crit_edge60
    i32 6148, label %entry.return_crit_edge61
    i32 6149, label %entry.return_crit_edge62
    i32 6150, label %entry.return_crit_edge63
    i32 6151, label %entry.return_crit_edge64
    i32 6152, label %entry.return_crit_edge65
    i32 6153, label %entry.return_crit_edge66
    i32 6154, label %entry.return_crit_edge67
    i32 6155, label %entry.return_crit_edge68
    i32 6156, label %entry.return_crit_edge69
    i32 6157, label %entry.return_crit_edge70
    i32 6158, label %entry.return_crit_edge71
    i32 6159, label %entry.return_crit_edge72
    i32 6160, label %entry.return_crit_edge73
    i32 6161, label %entry.return_crit_edge74
    i32 6162, label %entry.return_crit_edge75
    i32 6163, label %entry.return_crit_edge76
    i32 6164, label %entry.return_crit_edge77
    i32 6165, label %entry.return_crit_edge78
    i32 6166, label %entry.return_crit_edge79
    i32 6167, label %entry.return_crit_edge80
    i32 6168, label %entry.return_crit_edge81
    i32 6169, label %entry.return_crit_edge82
    i32 6170, label %entry.return_crit_edge83
    i32 6171, label %entry.return_crit_edge84
    i32 6172, label %entry.return_crit_edge85
    i32 6173, label %entry.return_crit_edge86
    i32 6174, label %entry.return_crit_edge87
    i32 6175, label %entry.return_crit_edge88
    i32 6176, label %entry.return_crit_edge89
    i32 22, label %entry.return_crit_edge90
    i32 23, label %entry.return_crit_edge91
    i32 24, label %entry.return_crit_edge92
  ]

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs47l15_32bit_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.off = add i32 %reg, -131076
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %reg.off)
  %switch = icmp ult i32 %reg.off, 3
  br i1 %switch, label %entry.return_crit_edge, label %sw.caserange3

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.caserange3:                                    ; preds = %entry
  %0 = add i32 %reg, -12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 449, i32 %0)
  %inbounds4 = icmp ult i32 %0, 449
  %1 = add i32 %reg, -1048064
  call void @__sanitizer_cov_trace_const_cmp4(i32 125, i32 %1)
  %inbounds = icmp ult i32 %1, 125
  %or.cond = or i1 %inbounds4, %inbounds
  br i1 %or.cond, label %sw.caserange3.return_crit_edge, label %sw.default

sw.caserange3.return_crit_edge:                   ; preds = %sw.caserange3
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.default:                                       ; preds = %sw.caserange3
  %2 = add i32 %reg, -524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 36863, i32 %2)
  %inbounds9.i = icmp ult i32 %2, 36863
  %3 = add i32 %reg, -655360
  call void @__sanitizer_cov_trace_const_cmp4(i32 40959, i32 %3)
  %inbounds7.i = icmp ult i32 %3, 40959
  %or.cond10.i = or i1 %inbounds9.i, %inbounds7.i
  br i1 %or.cond10.i, label %sw.default.return_crit_edge, label %sw.caserange4.i

sw.default.return_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.caserange4.i:                                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  %4 = and i32 %reg, -131073
  %5 = add i32 %4, -786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %5)
  %6 = icmp ult i32 %5, 8191
  br label %return

return:                                           ; preds = %sw.caserange4.i, %sw.default.return_crit_edge, %sw.caserange3.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ true, %sw.caserange3.return_crit_edge ], [ true, %sw.default.return_crit_edge ], [ %6, %sw.caserange4.i ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs47l15_32bit_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.off = add i32 %reg, -131076
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %reg.off)
  %switch = icmp ult i32 %reg.off, 3
  br i1 %switch, label %entry.return_crit_edge, label %sw.caserange3

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.caserange3:                                    ; preds = %entry
  %0 = add i32 %reg, -12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 449, i32 %0)
  %inbounds4 = icmp ult i32 %0, 449
  %1 = add i32 %reg, -1048064
  call void @__sanitizer_cov_trace_const_cmp4(i32 125, i32 %1)
  %inbounds = icmp ult i32 %1, 125
  %or.cond = or i1 %inbounds4, %inbounds
  br i1 %or.cond, label %sw.caserange3.return_crit_edge, label %sw.default

sw.caserange3.return_crit_edge:                   ; preds = %sw.caserange3
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.default:                                       ; preds = %sw.caserange3
  %2 = add i32 %reg, -524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 36863, i32 %2)
  %inbounds9.i = icmp ult i32 %2, 36863
  %3 = add i32 %reg, -655360
  call void @__sanitizer_cov_trace_const_cmp4(i32 40959, i32 %3)
  %inbounds7.i = icmp ult i32 %3, 40959
  %or.cond10.i = or i1 %inbounds9.i, %inbounds7.i
  br i1 %or.cond10.i, label %sw.default.return_crit_edge, label %sw.caserange4.i

sw.default.return_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.caserange4.i:                                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  %4 = and i32 %reg, -131073
  %5 = add i32 %4, -786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %5)
  %6 = icmp ult i32 %5, 8191
  br label %return

return:                                           ; preds = %sw.caserange4.i, %sw.default.return_crit_edge, %sw.caserange3.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ true, %sw.caserange3.return_crit_edge ], [ true, %sw.default.return_crit_edge ], [ %6, %sw.caserange4.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/cs47l15-tables.c", i32 39, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cs47l15_patch._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @cs47l15_patch._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_cs47l15_patch, !9, !"__ksymtab_cs47l15_patch", i1 false, i1 false}
!9 = !{!"../drivers/mfd/cs47l15-tables.c", i32 46, i32 1}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mfd/cs47l15-tables.c", i32 1243, i32 10}
!12 = !{ptr @cs47l15_16bit_spi_regmap, !13, !"cs47l15_16bit_spi_regmap", i1 false, i1 false}
!13 = !{!"../drivers/mfd/cs47l15-tables.c", i32 1242, i32 28}
!14 = !{ptr @__ksymtab_cs47l15_16bit_spi_regmap, !15, !"__ksymtab_cs47l15_16bit_spi_regmap", i1 false, i1 false}
!15 = !{!"../drivers/mfd/cs47l15-tables.c", i32 1256, i32 1}
!16 = !{ptr @cs47l15_16bit_i2c_regmap, !17, !"cs47l15_16bit_i2c_regmap", i1 false, i1 false}
!17 = !{!"../drivers/mfd/cs47l15-tables.c", i32 1258, i32 28}
!18 = !{ptr @__ksymtab_cs47l15_16bit_i2c_regmap, !19, !"__ksymtab_cs47l15_16bit_i2c_regmap", i1 false, i1 false}
!19 = !{!"../drivers/mfd/cs47l15-tables.c", i32 1271, i32 1}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mfd/cs47l15-tables.c", i32 1274, i32 10}
!22 = !{ptr @cs47l15_32bit_spi_regmap, !23, !"cs47l15_32bit_spi_regmap", i1 false, i1 false}
!23 = !{!"../drivers/mfd/cs47l15-tables.c", i32 1273, i32 28}
!24 = !{ptr @__ksymtab_cs47l15_32bit_spi_regmap, !25, !"__ksymtab_cs47l15_32bit_spi_regmap", i1 false, i1 false}
!25 = !{!"../drivers/mfd/cs47l15-tables.c", i32 1286, i32 1}
!26 = !{ptr @cs47l15_32bit_i2c_regmap, !27, !"cs47l15_32bit_i2c_regmap", i1 false, i1 false}
!27 = !{!"../drivers/mfd/cs47l15-tables.c", i32 1288, i32 28}
!28 = !{ptr @__ksymtab_cs47l15_32bit_i2c_regmap, !29, !"__ksymtab_cs47l15_32bit_i2c_regmap", i1 false, i1 false}
!29 = !{!"../drivers/mfd/cs47l15-tables.c", i32 1300, i32 1}
!30 = !{ptr @cs47l15_reva_16_patch, !31, !"cs47l15_reva_16_patch", i1 false, i1 false}
!31 = !{!"../drivers/mfd/cs47l15-tables.c", i32 18, i32 34}
!32 = !{ptr @cs47l15_reg_default, !33, !"cs47l15_reg_default", i1 false, i1 false}
!33 = !{!"../drivers/mfd/cs47l15-tables.c", i32 48, i32 33}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
