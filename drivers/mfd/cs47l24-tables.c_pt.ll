; ModuleID = '/llk/IR_all_yes/drivers/mfd/cs47l24-tables.c_pt.bc'
source_filename = "../drivers/mfd/cs47l24-tables.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cs47l24_patch\22, \22a\22\09"
module asm "\09.weak\09__crc_cs47l24_patch\09\09\09\09"
module asm "\09.long\09__crc_cs47l24_patch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cs47l24_patch:\09\09\09\09\09"
module asm "\09.asciz \09\22cs47l24_patch\22\09\09\09\09\09"
module asm "__kstrtabns_cs47l24_patch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cs47l24_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_cs47l24_irq\09\09\09\09"
module asm "\09.long\09__crc_cs47l24_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cs47l24_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22cs47l24_irq\22\09\09\09\09\09"
module asm "__kstrtabns_cs47l24_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cs47l24_spi_regmap\22, \22a\22\09"
module asm "\09.weak\09__crc_cs47l24_spi_regmap\09\09\09\09"
module asm "\09.long\09__crc_cs47l24_spi_regmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cs47l24_spi_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22cs47l24_spi_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_cs47l24_spi_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.reg_sequence = type { i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }

@cs47l24_reva_patch = internal constant { [4 x %struct.reg_sequence], [48 x i8] } { [4 x %struct.reg_sequence] [%struct.reg_sequence { i32 128, i32 3, i32 0 }, %struct.reg_sequence { i32 636, i32 16, i32 0 }, %struct.reg_sequence { i32 545, i32 112, i32 0 }, %struct.reg_sequence { i32 128, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@__kstrtab_cs47l24_patch = external dso_local constant [0 x i8], align 1
@__kstrtabns_cs47l24_patch = external dso_local constant [0 x i8], align 1
@__ksymtab_cs47l24_patch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cs47l24_patch to i32), ptr @__kstrtab_cs47l24_patch, ptr @__kstrtabns_cs47l24_patch }, section "___ksymtab_gpl+cs47l24_patch", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cs47l24 IRQ\00", [20 x i8] zeroinitializer }, align 32
@cs47l24_irqs = internal constant { [75 x %struct.regmap_irq], [692 x i8] } { [75 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 1, i32 512, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1024, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32768, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16384, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 2, i32 2048, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1024, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 512, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 256, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 3, i32 4096, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 2048, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1024, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 512, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 256, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 256, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 4, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 4, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 3, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 32768, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 16384, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 8192, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 5, i32 4096, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 5, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 5, i32 1, %struct.regmap_irq_type zeroinitializer }], [692 x i8] zeroinitializer }, align 32
@cs47l24_irq = dso_local constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str, i32 0, i32 0, ptr null, i32 0, i32 3328, i32 3336, i32 0, i32 3328, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 6, ptr @cs47l24_irqs, i32 75, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_cs47l24_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_cs47l24_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_cs47l24_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cs47l24_irq to i32), ptr @__kstrtab_cs47l24_irq, ptr @__kstrtabns_cs47l24_irq }, section "___ksymtab_gpl+cs47l24_irq", align 4
@cs47l24_reg_default = internal constant { [596 x %struct.reg_default], [1184 x i8] } { [596 x %struct.reg_default] [%struct.reg_default { i32 8, i32 25 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 4096 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 4096 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 256 }, %struct.reg_default { i32 50, i32 256 }, %struct.reg_default { i32 65, i32 0 }, %struct.reg_default { i32 97, i32 511 }, %struct.reg_default { i32 98, i32 511 }, %struct.reg_default { i32 99, i32 511 }, %struct.reg_default { i32 100, i32 511 }, %struct.reg_default { i32 112, i32 0 }, %struct.reg_default { i32 144, i32 0 }, %struct.reg_default { i32 145, i32 32767 }, %struct.reg_default { i32 146, i32 0 }, %struct.reg_default { i32 147, i32 0 }, %struct.reg_default { i32 148, i32 0 }, %struct.reg_default { i32 149, i32 0 }, %struct.reg_default { i32 150, i32 0 }, %struct.reg_default { i32 151, i32 0 }, %struct.reg_default { i32 256, i32 2 }, %struct.reg_default { i32 257, i32 1284 }, %struct.reg_default { i32 258, i32 17 }, %struct.reg_default { i32 259, i32 17 }, %struct.reg_default { i32 260, i32 17 }, %struct.reg_default { i32 274, i32 773 }, %struct.reg_default { i32 275, i32 17 }, %struct.reg_default { i32 276, i32 17 }, %struct.reg_default { i32 329, i32 0 }, %struct.reg_default { i32 330, i32 0 }, %struct.reg_default { i32 338, i32 0 }, %struct.reg_default { i32 339, i32 0 }, %struct.reg_default { i32 340, i32 0 }, %struct.reg_default { i32 341, i32 0 }, %struct.reg_default { i32 342, i32 0 }, %struct.reg_default { i32 369, i32 2 }, %struct.reg_default { i32 370, i32 8 }, %struct.reg_default { i32 371, i32 24 }, %struct.reg_default { i32 372, i32 125 }, %struct.reg_default { i32 373, i32 6 }, %struct.reg_default { i32 374, i32 0 }, %struct.reg_default { i32 377, i32 0 }, %struct.reg_default { i32 385, i32 0 }, %struct.reg_default { i32 386, i32 0 }, %struct.reg_default { i32 387, i32 0 }, %struct.reg_default { i32 388, i32 0 }, %struct.reg_default { i32 389, i32 0 }, %struct.reg_default { i32 390, i32 0 }, %struct.reg_default { i32 391, i32 1 }, %struct.reg_default { i32 393, i32 0 }, %struct.reg_default { i32 394, i32 12 }, %struct.reg_default { i32 401, i32 2 }, %struct.reg_default { i32 402, i32 8 }, %struct.reg_default { i32 403, i32 24 }, %struct.reg_default { i32 404, i32 125 }, %struct.reg_default { i32 405, i32 12 }, %struct.reg_default { i32 406, i32 0 }, %struct.reg_default { i32 409, i32 0 }, %struct.reg_default { i32 417, i32 0 }, %struct.reg_default { i32 418, i32 0 }, %struct.reg_default { i32 419, i32 0 }, %struct.reg_default { i32 420, i32 0 }, %struct.reg_default { i32 421, i32 0 }, %struct.reg_default { i32 422, i32 0 }, %struct.reg_default { i32 423, i32 1 }, %struct.reg_default { i32 425, i32 0 }, %struct.reg_default { i32 426, i32 12 }, %struct.reg_default { i32 536, i32 230 }, %struct.reg_default { i32 537, i32 230 }, %struct.reg_default { i32 768, i32 0 }, %struct.reg_default { i32 776, i32 0 }, %struct.reg_default { i32 777, i32 34 }, %struct.reg_default { i32 780, i32 2 }, %struct.reg_default { i32 784, i32 8192 }, %struct.reg_default { i32 785, i32 384 }, %struct.reg_default { i32 786, i32 0 }, %struct.reg_default { i32 788, i32 0 }, %struct.reg_default { i32 789, i32 384 }, %struct.reg_default { i32 790, i32 0 }, %struct.reg_default { i32 792, i32 8192 }, %struct.reg_default { i32 793, i32 384 }, %struct.reg_default { i32 794, i32 0 }, %struct.reg_default { i32 796, i32 0 }, %struct.reg_default { i32 797, i32 384 }, %struct.reg_default { i32 798, i32 0 }, %struct.reg_default { i32 1024, i32 0 }, %struct.reg_default { i32 1032, i32 0 }, %struct.reg_default { i32 1033, i32 34 }, %struct.reg_default { i32 1040, i32 128 }, %struct.reg_default { i32 1041, i32 384 }, %struct.reg_default { i32 1042, i32 129 }, %struct.reg_default { i32 1043, i32 1 }, %struct.reg_default { i32 1045, i32 384 }, %struct.reg_default { i32 1046, i32 129 }, %struct.reg_default { i32 1047, i32 2 }, %struct.reg_default { i32 1065, i32 384 }, %struct.reg_default { i32 1066, i32 129 }, %struct.reg_default { i32 1067, i32 64 }, %struct.reg_default { i32 1104, i32 0 }, %struct.reg_default { i32 1112, i32 0 }, %struct.reg_default { i32 1184, i32 13440 }, %struct.reg_default { i32 1280, i32 12 }, %struct.reg_default { i32 1281, i32 8 }, %struct.reg_default { i32 1282, i32 0 }, %struct.reg_default { i32 1283, i32 0 }, %struct.reg_default { i32 1284, i32 0 }, %struct.reg_default { i32 1285, i32 64 }, %struct.reg_default { i32 1286, i32 64 }, %struct.reg_default { i32 1287, i32 6168 }, %struct.reg_default { i32 1288, i32 6168 }, %struct.reg_default { i32 1289, i32 0 }, %struct.reg_default { i32 1290, i32 1 }, %struct.reg_default { i32 1291, i32 2 }, %struct.reg_default { i32 1292, i32 3 }, %struct.reg_default { i32 1293, i32 4 }, %struct.reg_default { i32 1294, i32 5 }, %struct.reg_default { i32 1295, i32 6 }, %struct.reg_default { i32 1296, i32 7 }, %struct.reg_default { i32 1297, i32 0 }, %struct.reg_default { i32 1298, i32 1 }, %struct.reg_default { i32 1299, i32 2 }, %struct.reg_default { i32 1300, i32 3 }, %struct.reg_default { i32 1301, i32 4 }, %struct.reg_default { i32 1302, i32 5 }, %struct.reg_default { i32 1303, i32 6 }, %struct.reg_default { i32 1304, i32 7 }, %struct.reg_default { i32 1305, i32 0 }, %struct.reg_default { i32 1306, i32 0 }, %struct.reg_default { i32 1344, i32 12 }, %struct.reg_default { i32 1345, i32 8 }, %struct.reg_default { i32 1346, i32 0 }, %struct.reg_default { i32 1347, i32 0 }, %struct.reg_default { i32 1348, i32 0 }, %struct.reg_default { i32 1349, i32 64 }, %struct.reg_default { i32 1350, i32 64 }, %struct.reg_default { i32 1351, i32 6168 }, %struct.reg_default { i32 1352, i32 6168 }, %struct.reg_default { i32 1353, i32 0 }, %struct.reg_default { i32 1354, i32 1 }, %struct.reg_default { i32 1355, i32 2 }, %struct.reg_default { i32 1356, i32 3 }, %struct.reg_default { i32 1357, i32 4 }, %struct.reg_default { i32 1358, i32 5 }, %struct.reg_default { i32 1361, i32 0 }, %struct.reg_default { i32 1362, i32 1 }, %struct.reg_default { i32 1363, i32 2 }, %struct.reg_default { i32 1364, i32 3 }, %struct.reg_default { i32 1365, i32 4 }, %struct.reg_default { i32 1366, i32 5 }, %struct.reg_default { i32 1369, i32 0 }, %struct.reg_default { i32 1370, i32 0 }, %struct.reg_default { i32 1408, i32 12 }, %struct.reg_default { i32 1409, i32 8 }, %struct.reg_default { i32 1410, i32 0 }, %struct.reg_default { i32 1411, i32 0 }, %struct.reg_default { i32 1412, i32 0 }, %struct.reg_default { i32 1413, i32 64 }, %struct.reg_default { i32 1414, i32 64 }, %struct.reg_default { i32 1415, i32 6168 }, %struct.reg_default { i32 1416, i32 6168 }, %struct.reg_default { i32 1417, i32 0 }, %struct.reg_default { i32 1418, i32 1 }, %struct.reg_default { i32 1425, i32 0 }, %struct.reg_default { i32 1426, i32 1 }, %struct.reg_default { i32 1433, i32 0 }, %struct.reg_default { i32 1434, i32 0 }, %struct.reg_default { i32 1600, i32 0 }, %struct.reg_default { i32 1601, i32 128 }, %struct.reg_default { i32 1602, i32 0 }, %struct.reg_default { i32 1603, i32 128 }, %struct.reg_default { i32 1604, i32 0 }, %struct.reg_default { i32 1605, i32 128 }, %struct.reg_default { i32 1606, i32 0 }, %struct.reg_default { i32 1607, i32 128 }, %struct.reg_default { i32 1608, i32 0 }, %struct.reg_default { i32 1609, i32 128 }, %struct.reg_default { i32 1610, i32 0 }, %struct.reg_default { i32 1611, i32 128 }, %struct.reg_default { i32 1612, i32 0 }, %struct.reg_default { i32 1613, i32 128 }, %struct.reg_default { i32 1614, i32 0 }, %struct.reg_default { i32 1615, i32 128 }, %struct.reg_default { i32 1664, i32 0 }, %struct.reg_default { i32 1665, i32 128 }, %struct.reg_default { i32 1666, i32 0 }, %struct.reg_default { i32 1667, i32 128 }, %struct.reg_default { i32 1668, i32 0 }, %struct.reg_default { i32 1669, i32 128 }, %struct.reg_default { i32 1670, i32 0 }, %struct.reg_default { i32 1671, i32 128 }, %struct.reg_default { i32 1672, i32 0 }, %struct.reg_default { i32 1673, i32 128 }, %struct.reg_default { i32 1674, i32 0 }, %struct.reg_default { i32 1675, i32 128 }, %struct.reg_default { i32 1676, i32 0 }, %struct.reg_default { i32 1677, i32 128 }, %struct.reg_default { i32 1678, i32 0 }, %struct.reg_default { i32 1679, i32 128 }, %struct.reg_default { i32 1712, i32 0 }, %struct.reg_default { i32 1713, i32 128 }, %struct.reg_default { i32 1714, i32 0 }, %struct.reg_default { i32 1715, i32 128 }, %struct.reg_default { i32 1716, i32 0 }, %struct.reg_default { i32 1717, i32 128 }, %struct.reg_default { i32 1718, i32 0 }, %struct.reg_default { i32 1719, i32 128 }, %struct.reg_default { i32 1792, i32 0 }, %struct.reg_default { i32 1793, i32 128 }, %struct.reg_default { i32 1794, i32 0 }, %struct.reg_default { i32 1795, i32 128 }, %struct.reg_default { i32 1796, i32 0 }, %struct.reg_default { i32 1797, i32 128 }, %struct.reg_default { i32 1798, i32 0 }, %struct.reg_default { i32 1799, i32 128 }, %struct.reg_default { i32 1800, i32 0 }, %struct.reg_default { i32 1801, i32 128 }, %struct.reg_default { i32 1802, i32 0 }, %struct.reg_default { i32 1803, i32 128 }, %struct.reg_default { i32 1804, i32 0 }, %struct.reg_default { i32 1805, i32 128 }, %struct.reg_default { i32 1806, i32 0 }, %struct.reg_default { i32 1807, i32 128 }, %struct.reg_default { i32 1808, i32 0 }, %struct.reg_default { i32 1809, i32 128 }, %struct.reg_default { i32 1810, i32 0 }, %struct.reg_default { i32 1811, i32 128 }, %struct.reg_default { i32 1812, i32 0 }, %struct.reg_default { i32 1813, i32 128 }, %struct.reg_default { i32 1814, i32 0 }, %struct.reg_default { i32 1815, i32 128 }, %struct.reg_default { i32 1816, i32 0 }, %struct.reg_default { i32 1817, i32 128 }, %struct.reg_default { i32 1818, i32 0 }, %struct.reg_default { i32 1819, i32 128 }, %struct.reg_default { i32 1820, i32 0 }, %struct.reg_default { i32 1821, i32 128 }, %struct.reg_default { i32 1822, i32 0 }, %struct.reg_default { i32 1823, i32 128 }, %struct.reg_default { i32 1824, i32 0 }, %struct.reg_default { i32 1825, i32 128 }, %struct.reg_default { i32 1826, i32 0 }, %struct.reg_default { i32 1827, i32 128 }, %struct.reg_default { i32 1828, i32 0 }, %struct.reg_default { i32 1829, i32 128 }, %struct.reg_default { i32 1830, i32 0 }, %struct.reg_default { i32 1831, i32 128 }, %struct.reg_default { i32 1832, i32 0 }, %struct.reg_default { i32 1833, i32 128 }, %struct.reg_default { i32 1834, i32 0 }, %struct.reg_default { i32 1835, i32 128 }, %struct.reg_default { i32 1836, i32 0 }, %struct.reg_default { i32 1837, i32 128 }, %struct.reg_default { i32 1838, i32 0 }, %struct.reg_default { i32 1839, i32 128 }, %struct.reg_default { i32 1840, i32 0 }, %struct.reg_default { i32 1841, i32 128 }, %struct.reg_default { i32 1842, i32 0 }, %struct.reg_default { i32 1843, i32 128 }, %struct.reg_default { i32 1844, i32 0 }, %struct.reg_default { i32 1845, i32 128 }, %struct.reg_default { i32 1846, i32 0 }, %struct.reg_default { i32 1847, i32 128 }, %struct.reg_default { i32 1848, i32 0 }, %struct.reg_default { i32 1849, i32 128 }, %struct.reg_default { i32 1850, i32 0 }, %struct.reg_default { i32 1851, i32 128 }, %struct.reg_default { i32 1852, i32 0 }, %struct.reg_default { i32 1853, i32 128 }, %struct.reg_default { i32 1854, i32 0 }, %struct.reg_default { i32 1855, i32 128 }, %struct.reg_default { i32 1856, i32 0 }, %struct.reg_default { i32 1857, i32 128 }, %struct.reg_default { i32 1858, i32 0 }, %struct.reg_default { i32 1859, i32 128 }, %struct.reg_default { i32 1860, i32 0 }, %struct.reg_default { i32 1861, i32 128 }, %struct.reg_default { i32 1862, i32 0 }, %struct.reg_default { i32 1863, i32 128 }, %struct.reg_default { i32 1864, i32 0 }, %struct.reg_default { i32 1865, i32 128 }, %struct.reg_default { i32 1866, i32 0 }, %struct.reg_default { i32 1867, i32 128 }, %struct.reg_default { i32 1868, i32 0 }, %struct.reg_default { i32 1869, i32 128 }, %struct.reg_default { i32 1870, i32 0 }, %struct.reg_default { i32 1871, i32 128 }, %struct.reg_default { i32 1872, i32 0 }, %struct.reg_default { i32 1873, i32 128 }, %struct.reg_default { i32 1874, i32 0 }, %struct.reg_default { i32 1875, i32 128 }, %struct.reg_default { i32 1876, i32 0 }, %struct.reg_default { i32 1877, i32 128 }, %struct.reg_default { i32 1878, i32 0 }, %struct.reg_default { i32 1879, i32 128 }, %struct.reg_default { i32 1880, i32 0 }, %struct.reg_default { i32 1881, i32 128 }, %struct.reg_default { i32 1882, i32 0 }, %struct.reg_default { i32 1883, i32 128 }, %struct.reg_default { i32 1884, i32 0 }, %struct.reg_default { i32 1885, i32 128 }, %struct.reg_default { i32 1886, i32 0 }, %struct.reg_default { i32 1887, i32 128 }, %struct.reg_default { i32 1888, i32 0 }, %struct.reg_default { i32 1889, i32 128 }, %struct.reg_default { i32 1890, i32 0 }, %struct.reg_default { i32 1891, i32 128 }, %struct.reg_default { i32 1892, i32 0 }, %struct.reg_default { i32 1893, i32 128 }, %struct.reg_default { i32 1894, i32 0 }, %struct.reg_default { i32 1895, i32 128 }, %struct.reg_default { i32 1896, i32 0 }, %struct.reg_default { i32 1897, i32 128 }, %struct.reg_default { i32 1898, i32 0 }, %struct.reg_default { i32 1899, i32 128 }, %struct.reg_default { i32 1900, i32 0 }, %struct.reg_default { i32 1901, i32 128 }, %struct.reg_default { i32 1902, i32 0 }, %struct.reg_default { i32 1903, i32 128 }, %struct.reg_default { i32 1920, i32 0 }, %struct.reg_default { i32 1921, i32 128 }, %struct.reg_default { i32 1922, i32 0 }, %struct.reg_default { i32 1923, i32 128 }, %struct.reg_default { i32 1924, i32 0 }, %struct.reg_default { i32 1925, i32 128 }, %struct.reg_default { i32 1926, i32 0 }, %struct.reg_default { i32 1927, i32 128 }, %struct.reg_default { i32 1928, i32 0 }, %struct.reg_default { i32 1929, i32 128 }, %struct.reg_default { i32 1930, i32 0 }, %struct.reg_default { i32 1931, i32 128 }, %struct.reg_default { i32 1932, i32 0 }, %struct.reg_default { i32 1933, i32 128 }, %struct.reg_default { i32 1934, i32 0 }, %struct.reg_default { i32 1935, i32 128 }, %struct.reg_default { i32 2176, i32 0 }, %struct.reg_default { i32 2177, i32 128 }, %struct.reg_default { i32 2178, i32 0 }, %struct.reg_default { i32 2179, i32 128 }, %struct.reg_default { i32 2180, i32 0 }, %struct.reg_default { i32 2181, i32 128 }, %struct.reg_default { i32 2182, i32 0 }, %struct.reg_default { i32 2183, i32 128 }, %struct.reg_default { i32 2184, i32 0 }, %struct.reg_default { i32 2185, i32 128 }, %struct.reg_default { i32 2186, i32 0 }, %struct.reg_default { i32 2187, i32 128 }, %struct.reg_default { i32 2188, i32 0 }, %struct.reg_default { i32 2189, i32 128 }, %struct.reg_default { i32 2190, i32 0 }, %struct.reg_default { i32 2191, i32 128 }, %struct.reg_default { i32 2240, i32 0 }, %struct.reg_default { i32 2241, i32 128 }, %struct.reg_default { i32 2242, i32 0 }, %struct.reg_default { i32 2243, i32 128 }, %struct.reg_default { i32 2244, i32 0 }, %struct.reg_default { i32 2245, i32 128 }, %struct.reg_default { i32 2246, i32 0 }, %struct.reg_default { i32 2247, i32 128 }, %struct.reg_default { i32 2248, i32 0 }, %struct.reg_default { i32 2249, i32 128 }, %struct.reg_default { i32 2250, i32 0 }, %struct.reg_default { i32 2251, i32 128 }, %struct.reg_default { i32 2252, i32 0 }, %struct.reg_default { i32 2253, i32 128 }, %struct.reg_default { i32 2254, i32 0 }, %struct.reg_default { i32 2255, i32 128 }, %struct.reg_default { i32 2256, i32 0 }, %struct.reg_default { i32 2257, i32 128 }, %struct.reg_default { i32 2258, i32 0 }, %struct.reg_default { i32 2259, i32 128 }, %struct.reg_default { i32 2260, i32 0 }, %struct.reg_default { i32 2261, i32 128 }, %struct.reg_default { i32 2262, i32 0 }, %struct.reg_default { i32 2263, i32 128 }, %struct.reg_default { i32 2264, i32 0 }, %struct.reg_default { i32 2265, i32 128 }, %struct.reg_default { i32 2266, i32 0 }, %struct.reg_default { i32 2267, i32 128 }, %struct.reg_default { i32 2268, i32 0 }, %struct.reg_default { i32 2269, i32 128 }, %struct.reg_default { i32 2270, i32 0 }, %struct.reg_default { i32 2271, i32 128 }, %struct.reg_default { i32 2304, i32 0 }, %struct.reg_default { i32 2305, i32 128 }, %struct.reg_default { i32 2306, i32 0 }, %struct.reg_default { i32 2307, i32 128 }, %struct.reg_default { i32 2308, i32 0 }, %struct.reg_default { i32 2309, i32 128 }, %struct.reg_default { i32 2310, i32 0 }, %struct.reg_default { i32 2311, i32 128 }, %struct.reg_default { i32 2312, i32 0 }, %struct.reg_default { i32 2313, i32 128 }, %struct.reg_default { i32 2314, i32 0 }, %struct.reg_default { i32 2315, i32 128 }, %struct.reg_default { i32 2316, i32 0 }, %struct.reg_default { i32 2317, i32 128 }, %struct.reg_default { i32 2318, i32 0 }, %struct.reg_default { i32 2319, i32 128 }, %struct.reg_default { i32 2320, i32 0 }, %struct.reg_default { i32 2321, i32 128 }, %struct.reg_default { i32 2322, i32 0 }, %struct.reg_default { i32 2323, i32 128 }, %struct.reg_default { i32 2324, i32 0 }, %struct.reg_default { i32 2325, i32 128 }, %struct.reg_default { i32 2326, i32 0 }, %struct.reg_default { i32 2327, i32 128 }, %struct.reg_default { i32 2328, i32 0 }, %struct.reg_default { i32 2329, i32 128 }, %struct.reg_default { i32 2330, i32 0 }, %struct.reg_default { i32 2331, i32 128 }, %struct.reg_default { i32 2332, i32 0 }, %struct.reg_default { i32 2333, i32 128 }, %struct.reg_default { i32 2334, i32 0 }, %struct.reg_default { i32 2335, i32 128 }, %struct.reg_default { i32 2432, i32 0 }, %struct.reg_default { i32 2433, i32 128 }, %struct.reg_default { i32 2434, i32 0 }, %struct.reg_default { i32 2435, i32 128 }, %struct.reg_default { i32 2436, i32 0 }, %struct.reg_default { i32 2437, i32 128 }, %struct.reg_default { i32 2438, i32 0 }, %struct.reg_default { i32 2439, i32 128 }, %struct.reg_default { i32 2440, i32 0 }, %struct.reg_default { i32 2441, i32 128 }, %struct.reg_default { i32 2442, i32 0 }, %struct.reg_default { i32 2443, i32 128 }, %struct.reg_default { i32 2444, i32 0 }, %struct.reg_default { i32 2445, i32 128 }, %struct.reg_default { i32 2446, i32 0 }, %struct.reg_default { i32 2447, i32 128 }, %struct.reg_default { i32 2448, i32 0 }, %struct.reg_default { i32 2456, i32 0 }, %struct.reg_default { i32 2464, i32 0 }, %struct.reg_default { i32 2472, i32 0 }, %struct.reg_default { i32 2480, i32 0 }, %struct.reg_default { i32 2488, i32 0 }, %struct.reg_default { i32 2496, i32 0 }, %struct.reg_default { i32 2497, i32 128 }, %struct.reg_default { i32 2498, i32 0 }, %struct.reg_default { i32 2499, i32 128 }, %struct.reg_default { i32 2500, i32 0 }, %struct.reg_default { i32 2501, i32 128 }, %struct.reg_default { i32 2502, i32 0 }, %struct.reg_default { i32 2503, i32 128 }, %struct.reg_default { i32 2504, i32 0 }, %struct.reg_default { i32 2505, i32 128 }, %struct.reg_default { i32 2506, i32 0 }, %struct.reg_default { i32 2507, i32 128 }, %struct.reg_default { i32 2508, i32 0 }, %struct.reg_default { i32 2509, i32 128 }, %struct.reg_default { i32 2510, i32 0 }, %struct.reg_default { i32 2511, i32 128 }, %struct.reg_default { i32 2512, i32 0 }, %struct.reg_default { i32 2520, i32 0 }, %struct.reg_default { i32 2528, i32 0 }, %struct.reg_default { i32 2536, i32 0 }, %struct.reg_default { i32 2544, i32 0 }, %struct.reg_default { i32 2552, i32 0 }, %struct.reg_default { i32 2688, i32 0 }, %struct.reg_default { i32 2696, i32 0 }, %struct.reg_default { i32 2704, i32 0 }, %struct.reg_default { i32 2712, i32 0 }, %struct.reg_default { i32 2816, i32 0 }, %struct.reg_default { i32 2824, i32 0 }, %struct.reg_default { i32 2832, i32 0 }, %struct.reg_default { i32 2840, i32 0 }, %struct.reg_default { i32 2848, i32 0 }, %struct.reg_default { i32 2856, i32 0 }, %struct.reg_default { i32 2864, i32 0 }, %struct.reg_default { i32 2872, i32 0 }, %struct.reg_default { i32 2880, i32 0 }, %struct.reg_default { i32 2888, i32 0 }, %struct.reg_default { i32 2896, i32 0 }, %struct.reg_default { i32 2904, i32 0 }, %struct.reg_default { i32 2912, i32 0 }, %struct.reg_default { i32 2920, i32 0 }, %struct.reg_default { i32 2928, i32 0 }, %struct.reg_default { i32 2936, i32 0 }, %struct.reg_default { i32 2944, i32 0 }, %struct.reg_default { i32 2952, i32 0 }, %struct.reg_default { i32 2960, i32 0 }, %struct.reg_default { i32 2968, i32 0 }, %struct.reg_default { i32 2976, i32 0 }, %struct.reg_default { i32 2984, i32 0 }, %struct.reg_default { i32 2992, i32 0 }, %struct.reg_default { i32 3000, i32 0 }, %struct.reg_default { i32 3072, i32 41217 }, %struct.reg_default { i32 3073, i32 41217 }, %struct.reg_default { i32 3087, i32 1024 }, %struct.reg_default { i32 3088, i32 4096 }, %struct.reg_default { i32 3104, i32 2 }, %struct.reg_default { i32 3105, i32 0 }, %struct.reg_default { i32 3106, i32 0 }, %struct.reg_default { i32 3107, i32 0 }, %struct.reg_default { i32 3108, i32 0 }, %struct.reg_default { i32 3109, i32 0 }, %struct.reg_default { i32 3120, i32 1028 }, %struct.reg_default { i32 3122, i32 1028 }, %struct.reg_default { i32 3123, i32 1028 }, %struct.reg_default { i32 3124, i32 1028 }, %struct.reg_default { i32 3125, i32 1028 }, %struct.reg_default { i32 3126, i32 1024 }, %struct.reg_default { i32 3127, i32 1028 }, %struct.reg_default { i32 3129, i32 1024 }, %struct.reg_default { i32 3336, i32 7 }, %struct.reg_default { i32 3337, i32 1791 }, %struct.reg_default { i32 3338, i32 53231 }, %struct.reg_default { i32 3339, i32 65475 }, %struct.reg_default { i32 3340, i32 11 }, %struct.reg_default { i32 3341, i32 53253 }, %struct.reg_default { i32 3343, i32 0 }, %struct.reg_default { i32 3352, i32 7 }, %struct.reg_default { i32 3353, i32 1791 }, %struct.reg_default { i32 3354, i32 53231 }, %struct.reg_default { i32 3355, i32 65475 }, %struct.reg_default { i32 3356, i32 11 }, %struct.reg_default { i32 3357, i32 53253 }, %struct.reg_default { i32 3359, i32 0 }, %struct.reg_default { i32 3584, i32 0 }, %struct.reg_default { i32 3600, i32 25368 }, %struct.reg_default { i32 3601, i32 25344 }, %struct.reg_default { i32 3602, i32 4040 }, %struct.reg_default { i32 3603, i32 1022 }, %struct.reg_default { i32 3604, i32 224 }, %struct.reg_default { i32 3605, i32 7876 }, %struct.reg_default { i32 3606, i32 61750 }, %struct.reg_default { i32 3607, i32 1033 }, %struct.reg_default { i32 3608, i32 1228 }, %struct.reg_default { i32 3609, i32 7323 }, %struct.reg_default { i32 3610, i32 62263 }, %struct.reg_default { i32 3611, i32 1035 }, %struct.reg_default { i32 3612, i32 3259 }, %struct.reg_default { i32 3613, i32 5880 }, %struct.reg_default { i32 3614, i32 63449 }, %struct.reg_default { i32 3615, i32 1034 }, %struct.reg_default { i32 3616, i32 7956 }, %struct.reg_default { i32 3617, i32 1420 }, %struct.reg_default { i32 3618, i32 1379 }, %struct.reg_default { i32 3619, i32 16384 }, %struct.reg_default { i32 3620, i32 2933 }, %struct.reg_default { i32 3622, i32 25368 }, %struct.reg_default { i32 3623, i32 25344 }, %struct.reg_default { i32 3624, i32 4040 }, %struct.reg_default { i32 3625, i32 1022 }, %struct.reg_default { i32 3626, i32 224 }, %struct.reg_default { i32 3627, i32 7876 }, %struct.reg_default { i32 3628, i32 61750 }, %struct.reg_default { i32 3629, i32 1033 }, %struct.reg_default { i32 3630, i32 1228 }, %struct.reg_default { i32 3631, i32 7323 }, %struct.reg_default { i32 3632, i32 62263 }, %struct.reg_default { i32 3633, i32 1035 }, %struct.reg_default { i32 3634, i32 3259 }, %struct.reg_default { i32 3635, i32 5880 }, %struct.reg_default { i32 3636, i32 63449 }, %struct.reg_default { i32 3637, i32 1034 }, %struct.reg_default { i32 3638, i32 7956 }, %struct.reg_default { i32 3639, i32 1420 }, %struct.reg_default { i32 3640, i32 1379 }, %struct.reg_default { i32 3641, i32 16384 }, %struct.reg_default { i32 3642, i32 2933 }, %struct.reg_default { i32 3712, i32 24 }, %struct.reg_default { i32 3713, i32 2355 }, %struct.reg_default { i32 3714, i32 24 }, %struct.reg_default { i32 3715, i32 0 }, %struct.reg_default { i32 3716, i32 0 }, %struct.reg_default { i32 3721, i32 24 }, %struct.reg_default { i32 3722, i32 2355 }, %struct.reg_default { i32 3723, i32 24 }, %struct.reg_default { i32 3724, i32 0 }, %struct.reg_default { i32 3725, i32 0 }, %struct.reg_default { i32 3776, i32 0 }, %struct.reg_default { i32 3777, i32 0 }, %struct.reg_default { i32 3780, i32 0 }, %struct.reg_default { i32 3781, i32 0 }, %struct.reg_default { i32 3784, i32 0 }, %struct.reg_default { i32 3785, i32 0 }, %struct.reg_default { i32 3788, i32 0 }, %struct.reg_default { i32 3789, i32 0 }, %struct.reg_default { i32 3808, i32 0 }, %struct.reg_default { i32 3810, i32 0 }, %struct.reg_default { i32 3811, i32 16384 }, %struct.reg_default { i32 3824, i32 0 }, %struct.reg_default { i32 3825, i32 0 }, %struct.reg_default { i32 3826, i32 0 }, %struct.reg_default { i32 3827, i32 0 }, %struct.reg_default { i32 3828, i32 0 }, %struct.reg_default { i32 3829, i32 0 }, %struct.reg_default { i32 3830, i32 0 }, %struct.reg_default { i32 3831, i32 0 }, %struct.reg_default { i32 3832, i32 0 }, %struct.reg_default { i32 4608, i32 16 }, %struct.reg_default { i32 4864, i32 16 }], [1184 x i8] zeroinitializer }, align 32
@cs47l24_spi_regmap = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 0, i32 16, i32 16, ptr null, ptr @cs47l24_readable_register, ptr @cs47l24_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 3883007, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cs47l24_reg_default, i32 596, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1, i32 1, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_cs47l24_spi_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cs47l24_spi_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_cs47l24_spi_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cs47l24_spi_regmap to i32), ptr @__kstrtab_cs47l24_spi_regmap, ptr @__kstrtabns_cs47l24_spi_regmap }, section "___ksymtab_gpl+cs47l24_spi_regmap", align 4
@__sancov_gen_cov_switch_values = internal global [695 x i64] [i64 693, i64 32, i64 0, i64 1, i64 8, i64 22, i64 23, i64 24, i64 32, i64 33, i64 34, i64 35, i64 36, i64 48, i64 49, i64 50, i64 65, i64 97, i64 98, i64 99, i64 100, i64 112, i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151, i64 152, i64 256, i64 257, i64 258, i64 259, i64 260, i64 266, i64 267, i64 268, i64 274, i64 275, i64 276, i64 283, i64 284, i64 329, i64 330, i64 338, i64 339, i64 340, i64 341, i64 342, i64 369, i64 370, i64 371, i64 372, i64 373, i64 374, i64 377, i64 385, i64 386, i64 387, i64 388, i64 389, i64 390, i64 391, i64 393, i64 394, i64 401, i64 402, i64 403, i64 404, i64 405, i64 406, i64 409, i64 417, i64 418, i64 419, i64 420, i64 421, i64 422, i64 423, i64 425, i64 426, i64 536, i64 537, i64 549, i64 550, i64 768, i64 769, i64 776, i64 777, i64 780, i64 784, i64 785, i64 786, i64 788, i64 789, i64 790, i64 792, i64 793, i64 794, i64 796, i64 797, i64 798, i64 1024, i64 1025, i64 1030, i64 1032, i64 1033, i64 1040, i64 1041, i64 1042, i64 1043, i64 1045, i64 1046, i64 1047, i64 1065, i64 1066, i64 1067, i64 1104, i64 1112, i64 1184, i64 1280, i64 1281, i64 1282, i64 1283, i64 1284, i64 1285, i64 1286, i64 1287, i64 1288, i64 1289, i64 1290, i64 1291, i64 1292, i64 1293, i64 1294, i64 1295, i64 1296, i64 1297, i64 1298, i64 1299, i64 1300, i64 1301, i64 1302, i64 1303, i64 1304, i64 1305, i64 1306, i64 1344, i64 1345, i64 1346, i64 1347, i64 1348, i64 1349, i64 1350, i64 1351, i64 1352, i64 1353, i64 1354, i64 1355, i64 1356, i64 1357, i64 1358, i64 1361, i64 1362, i64 1363, i64 1364, i64 1365, i64 1366, i64 1369, i64 1370, i64 1408, i64 1409, i64 1410, i64 1411, i64 1412, i64 1413, i64 1414, i64 1415, i64 1416, i64 1417, i64 1418, i64 1425, i64 1426, i64 1433, i64 1434, i64 1600, i64 1601, i64 1602, i64 1603, i64 1604, i64 1605, i64 1606, i64 1607, i64 1608, i64 1609, i64 1610, i64 1611, i64 1612, i64 1613, i64 1614, i64 1615, i64 1664, i64 1665, i64 1666, i64 1667, i64 1668, i64 1669, i64 1670, i64 1671, i64 1672, i64 1673, i64 1674, i64 1675, i64 1676, i64 1677, i64 1678, i64 1679, i64 1712, i64 1713, i64 1714, i64 1715, i64 1716, i64 1717, i64 1718, i64 1719, i64 1792, i64 1793, i64 1794, i64 1795, i64 1796, i64 1797, i64 1798, i64 1799, i64 1800, i64 1801, i64 1802, i64 1803, i64 1804, i64 1805, i64 1806, i64 1807, i64 1808, i64 1809, i64 1810, i64 1811, i64 1812, i64 1813, i64 1814, i64 1815, i64 1816, i64 1817, i64 1818, i64 1819, i64 1820, i64 1821, i64 1822, i64 1823, i64 1824, i64 1825, i64 1826, i64 1827, i64 1828, i64 1829, i64 1830, i64 1831, i64 1832, i64 1833, i64 1834, i64 1835, i64 1836, i64 1837, i64 1838, i64 1839, i64 1840, i64 1841, i64 1842, i64 1843, i64 1844, i64 1845, i64 1846, i64 1847, i64 1848, i64 1849, i64 1850, i64 1851, i64 1852, i64 1853, i64 1854, i64 1855, i64 1856, i64 1857, i64 1858, i64 1859, i64 1860, i64 1861, i64 1862, i64 1863, i64 1864, i64 1865, i64 1866, i64 1867, i64 1868, i64 1869, i64 1870, i64 1871, i64 1872, i64 1873, i64 1874, i64 1875, i64 1876, i64 1877, i64 1878, i64 1879, i64 1880, i64 1881, i64 1882, i64 1883, i64 1884, i64 1885, i64 1886, i64 1887, i64 1888, i64 1889, i64 1890, i64 1891, i64 1892, i64 1893, i64 1894, i64 1895, i64 1896, i64 1897, i64 1898, i64 1899, i64 1900, i64 1901, i64 1902, i64 1903, i64 1920, i64 1921, i64 1922, i64 1923, i64 1924, i64 1925, i64 1926, i64 1927, i64 1928, i64 1929, i64 1930, i64 1931, i64 1932, i64 1933, i64 1934, i64 1935, i64 2176, i64 2177, i64 2178, i64 2179, i64 2180, i64 2181, i64 2182, i64 2183, i64 2184, i64 2185, i64 2186, i64 2187, i64 2188, i64 2189, i64 2190, i64 2191, i64 2240, i64 2241, i64 2242, i64 2243, i64 2244, i64 2245, i64 2246, i64 2247, i64 2248, i64 2249, i64 2250, i64 2251, i64 2252, i64 2253, i64 2254, i64 2255, i64 2256, i64 2257, i64 2258, i64 2259, i64 2260, i64 2261, i64 2262, i64 2263, i64 2264, i64 2265, i64 2266, i64 2267, i64 2268, i64 2269, i64 2270, i64 2271, i64 2304, i64 2305, i64 2306, i64 2307, i64 2308, i64 2309, i64 2310, i64 2311, i64 2312, i64 2313, i64 2314, i64 2315, i64 2316, i64 2317, i64 2318, i64 2319, i64 2320, i64 2321, i64 2322, i64 2323, i64 2324, i64 2325, i64 2326, i64 2327, i64 2328, i64 2329, i64 2330, i64 2331, i64 2332, i64 2333, i64 2334, i64 2335, i64 2432, i64 2433, i64 2434, i64 2435, i64 2436, i64 2437, i64 2438, i64 2439, i64 2440, i64 2441, i64 2442, i64 2443, i64 2444, i64 2445, i64 2446, i64 2447, i64 2448, i64 2456, i64 2464, i64 2472, i64 2480, i64 2488, i64 2496, i64 2497, i64 2498, i64 2499, i64 2500, i64 2501, i64 2502, i64 2503, i64 2504, i64 2505, i64 2506, i64 2507, i64 2508, i64 2509, i64 2510, i64 2511, i64 2512, i64 2520, i64 2528, i64 2536, i64 2544, i64 2552, i64 2688, i64 2696, i64 2704, i64 2712, i64 2816, i64 2824, i64 2832, i64 2840, i64 2848, i64 2856, i64 2864, i64 2872, i64 2880, i64 2888, i64 2896, i64 2904, i64 2912, i64 2920, i64 2928, i64 2936, i64 2944, i64 2952, i64 2960, i64 2968, i64 2976, i64 2984, i64 2992, i64 3000, i64 3072, i64 3073, i64 3087, i64 3088, i64 3104, i64 3105, i64 3106, i64 3107, i64 3108, i64 3109, i64 3120, i64 3122, i64 3123, i64 3124, i64 3125, i64 3126, i64 3127, i64 3129, i64 3328, i64 3329, i64 3330, i64 3331, i64 3332, i64 3333, i64 3336, i64 3337, i64 3338, i64 3339, i64 3340, i64 3341, i64 3343, i64 3344, i64 3345, i64 3346, i64 3347, i64 3348, i64 3349, i64 3352, i64 3353, i64 3354, i64 3355, i64 3356, i64 3357, i64 3359, i64 3360, i64 3361, i64 3362, i64 3363, i64 3364, i64 3365, i64 3366, i64 3368, i64 3392, i64 3584, i64 3585, i64 3600, i64 3601, i64 3602, i64 3603, i64 3604, i64 3605, i64 3606, i64 3607, i64 3608, i64 3609, i64 3610, i64 3611, i64 3612, i64 3613, i64 3614, i64 3615, i64 3616, i64 3617, i64 3618, i64 3619, i64 3620, i64 3622, i64 3623, i64 3624, i64 3625, i64 3626, i64 3627, i64 3628, i64 3629, i64 3630, i64 3631, i64 3632, i64 3633, i64 3634, i64 3635, i64 3636, i64 3637, i64 3638, i64 3639, i64 3640, i64 3641, i64 3642, i64 3712, i64 3713, i64 3714, i64 3715, i64 3716, i64 3721, i64 3722, i64 3723, i64 3724, i64 3725, i64 3776, i64 3777, i64 3780, i64 3781, i64 3784, i64 3785, i64 3788, i64 3789, i64 3808, i64 3809, i64 3810, i64 3811, i64 3824, i64 3825, i64 3826, i64 3827, i64 3828, i64 3829, i64 3830, i64 3831, i64 3832, i64 4608, i64 4609, i64 4612, i64 4613, i64 4614, i64 4615, i64 4624, i64 4625, i64 4626, i64 4627, i64 4628, i64 4629, i64 4630, i64 4631, i64 4640, i64 4641, i64 4642, i64 4643, i64 4644, i64 4645, i64 4656, i64 4657, i64 4658, i64 4660, i64 4661, i64 4664, i64 4672, i64 4673, i64 4674, i64 4675, i64 4864, i64 4865, i64 4868, i64 4869, i64 4870, i64 4871, i64 4880, i64 4881, i64 4882, i64 4883, i64 4884, i64 4885, i64 4886, i64 4887, i64 4896, i64 4897, i64 4898, i64 4899, i64 4900, i64 4901, i64 4912, i64 4913, i64 4914, i64 4916, i64 4917, i64 4920, i64 4928, i64 4929, i64 4930, i64 4931]
@__sancov_gen_cov_switch_values.1 = internal global [99 x i64] [i64 97, i64 32, i64 0, i64 1, i64 22, i64 23, i64 24, i64 152, i64 266, i64 267, i64 268, i64 283, i64 284, i64 549, i64 550, i64 769, i64 1025, i64 1030, i64 3328, i64 3329, i64 3330, i64 3331, i64 3332, i64 3333, i64 3344, i64 3345, i64 3346, i64 3347, i64 3348, i64 3349, i64 3360, i64 3361, i64 3362, i64 3363, i64 3364, i64 3365, i64 3366, i64 3368, i64 3392, i64 3585, i64 3809, i64 4609, i64 4612, i64 4613, i64 4614, i64 4615, i64 4624, i64 4625, i64 4626, i64 4627, i64 4628, i64 4629, i64 4630, i64 4631, i64 4640, i64 4641, i64 4642, i64 4643, i64 4644, i64 4645, i64 4656, i64 4657, i64 4658, i64 4660, i64 4661, i64 4664, i64 4672, i64 4673, i64 4674, i64 4675, i64 4865, i64 4868, i64 4869, i64 4870, i64 4871, i64 4880, i64 4881, i64 4882, i64 4883, i64 4884, i64 4885, i64 4886, i64 4887, i64 4896, i64 4897, i64 4898, i64 4899, i64 4900, i64 4901, i64 4912, i64 4913, i64 4914, i64 4916, i64 4917, i64 4920, i64 4928, i64 4929, i64 4930, i64 4931]
@___asan_gen_.2 = private unnamed_addr constant [19 x i8] c"cs47l24_reva_patch\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 20, i32 34 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 172, i32 10 }
@___asan_gen_.8 = private unnamed_addr constant [13 x i8] c"cs47l24_irqs\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 35, i32 32 }
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"cs47l24_irq\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 171, i32 30 }
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"cs47l24_reg_default\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 182, i32 33 }
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"cs47l24_spi_regmap\00", align 1
@___asan_gen_.18 = private constant [32 x i8] c"../drivers/mfd/cs47l24-tables.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 1608, i32 28 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_cs47l24_irq, ptr @__ksymtab_cs47l24_patch, ptr @__ksymtab_cs47l24_spi_regmap, ptr @cs47l24_reva_patch, ptr @.str, ptr @cs47l24_irqs, ptr @cs47l24_irq, ptr @cs47l24_reg_default, ptr @cs47l24_spi_regmap], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l24_reva_patch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l24_irqs to i32), i32 2700, i32 3392, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l24_irq to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l24_reg_default to i32), i32 4768, i32 5952, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l24_spi_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs47l24_patch(ptr nocapture noundef readonly %arizona) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arizona, align 4
  %call = tail call i32 @regmap_register_patch(ptr noundef %1, ptr noundef nonnull @cs47l24_reva_patch, i32 noundef 4) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs47l24_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge2
    i32 8, label %entry.return_crit_edge3
    i32 22, label %entry.return_crit_edge4
    i32 23, label %entry.return_crit_edge5
    i32 24, label %entry.return_crit_edge6
    i32 32, label %entry.return_crit_edge7
    i32 33, label %entry.return_crit_edge8
    i32 34, label %entry.return_crit_edge9
    i32 35, label %entry.return_crit_edge10
    i32 36, label %entry.return_crit_edge11
    i32 48, label %entry.return_crit_edge12
    i32 49, label %entry.return_crit_edge13
    i32 50, label %entry.return_crit_edge14
    i32 65, label %entry.return_crit_edge15
    i32 97, label %entry.return_crit_edge16
    i32 98, label %entry.return_crit_edge17
    i32 99, label %entry.return_crit_edge18
    i32 100, label %entry.return_crit_edge19
    i32 112, label %entry.return_crit_edge20
    i32 144, label %entry.return_crit_edge21
    i32 145, label %entry.return_crit_edge22
    i32 146, label %entry.return_crit_edge23
    i32 147, label %entry.return_crit_edge24
    i32 148, label %entry.return_crit_edge25
    i32 149, label %entry.return_crit_edge26
    i32 150, label %entry.return_crit_edge27
    i32 151, label %entry.return_crit_edge28
    i32 152, label %entry.return_crit_edge29
    i32 256, label %entry.return_crit_edge30
    i32 257, label %entry.return_crit_edge31
    i32 258, label %entry.return_crit_edge32
    i32 259, label %entry.return_crit_edge33
    i32 260, label %entry.return_crit_edge34
    i32 266, label %entry.return_crit_edge35
    i32 267, label %entry.return_crit_edge36
    i32 268, label %entry.return_crit_edge37
    i32 274, label %entry.return_crit_edge38
    i32 275, label %entry.return_crit_edge39
    i32 283, label %entry.return_crit_edge40
    i32 276, label %entry.return_crit_edge41
    i32 284, label %entry.return_crit_edge42
    i32 329, label %entry.return_crit_edge43
    i32 330, label %entry.return_crit_edge44
    i32 338, label %entry.return_crit_edge45
    i32 339, label %entry.return_crit_edge46
    i32 340, label %entry.return_crit_edge47
    i32 341, label %entry.return_crit_edge48
    i32 342, label %entry.return_crit_edge49
    i32 369, label %entry.return_crit_edge50
    i32 370, label %entry.return_crit_edge51
    i32 371, label %entry.return_crit_edge52
    i32 372, label %entry.return_crit_edge53
    i32 373, label %entry.return_crit_edge54
    i32 374, label %entry.return_crit_edge55
    i32 377, label %entry.return_crit_edge56
    i32 385, label %entry.return_crit_edge57
    i32 386, label %entry.return_crit_edge58
    i32 387, label %entry.return_crit_edge59
    i32 388, label %entry.return_crit_edge60
    i32 389, label %entry.return_crit_edge61
    i32 390, label %entry.return_crit_edge62
    i32 391, label %entry.return_crit_edge63
    i32 393, label %entry.return_crit_edge64
    i32 394, label %entry.return_crit_edge65
    i32 401, label %entry.return_crit_edge66
    i32 402, label %entry.return_crit_edge67
    i32 403, label %entry.return_crit_edge68
    i32 404, label %entry.return_crit_edge69
    i32 405, label %entry.return_crit_edge70
    i32 406, label %entry.return_crit_edge71
    i32 409, label %entry.return_crit_edge72
    i32 417, label %entry.return_crit_edge73
    i32 418, label %entry.return_crit_edge74
    i32 419, label %entry.return_crit_edge75
    i32 420, label %entry.return_crit_edge76
    i32 421, label %entry.return_crit_edge77
    i32 422, label %entry.return_crit_edge78
    i32 423, label %entry.return_crit_edge79
    i32 425, label %entry.return_crit_edge80
    i32 426, label %entry.return_crit_edge81
    i32 536, label %entry.return_crit_edge82
    i32 537, label %entry.return_crit_edge83
    i32 549, label %entry.return_crit_edge84
    i32 550, label %entry.return_crit_edge85
    i32 768, label %entry.return_crit_edge86
    i32 769, label %entry.return_crit_edge87
    i32 776, label %entry.return_crit_edge88
    i32 777, label %entry.return_crit_edge89
    i32 780, label %entry.return_crit_edge90
    i32 784, label %entry.return_crit_edge91
    i32 785, label %entry.return_crit_edge92
    i32 786, label %entry.return_crit_edge93
    i32 788, label %entry.return_crit_edge94
    i32 789, label %entry.return_crit_edge95
    i32 790, label %entry.return_crit_edge96
    i32 792, label %entry.return_crit_edge97
    i32 793, label %entry.return_crit_edge98
    i32 794, label %entry.return_crit_edge99
    i32 796, label %entry.return_crit_edge100
    i32 797, label %entry.return_crit_edge101
    i32 798, label %entry.return_crit_edge102
    i32 1024, label %entry.return_crit_edge103
    i32 1025, label %entry.return_crit_edge104
    i32 1030, label %entry.return_crit_edge105
    i32 1032, label %entry.return_crit_edge106
    i32 1033, label %entry.return_crit_edge107
    i32 1040, label %entry.return_crit_edge108
    i32 1041, label %entry.return_crit_edge109
    i32 1042, label %entry.return_crit_edge110
    i32 1043, label %entry.return_crit_edge111
    i32 1045, label %entry.return_crit_edge112
    i32 1046, label %entry.return_crit_edge113
    i32 1047, label %entry.return_crit_edge114
    i32 1065, label %entry.return_crit_edge115
    i32 1066, label %entry.return_crit_edge116
    i32 1067, label %entry.return_crit_edge117
    i32 1104, label %entry.return_crit_edge118
    i32 1112, label %entry.return_crit_edge119
    i32 1184, label %entry.return_crit_edge120
    i32 1280, label %entry.return_crit_edge121
    i32 1281, label %entry.return_crit_edge122
    i32 1282, label %entry.return_crit_edge123
    i32 1283, label %entry.return_crit_edge124
    i32 1284, label %entry.return_crit_edge125
    i32 1285, label %entry.return_crit_edge126
    i32 1286, label %entry.return_crit_edge127
    i32 1287, label %entry.return_crit_edge128
    i32 1288, label %entry.return_crit_edge129
    i32 1289, label %entry.return_crit_edge130
    i32 1290, label %entry.return_crit_edge131
    i32 1291, label %entry.return_crit_edge132
    i32 1292, label %entry.return_crit_edge133
    i32 1293, label %entry.return_crit_edge134
    i32 1294, label %entry.return_crit_edge135
    i32 1295, label %entry.return_crit_edge136
    i32 1296, label %entry.return_crit_edge137
    i32 1297, label %entry.return_crit_edge138
    i32 1298, label %entry.return_crit_edge139
    i32 1299, label %entry.return_crit_edge140
    i32 1300, label %entry.return_crit_edge141
    i32 1301, label %entry.return_crit_edge142
    i32 1302, label %entry.return_crit_edge143
    i32 1303, label %entry.return_crit_edge144
    i32 1304, label %entry.return_crit_edge145
    i32 1305, label %entry.return_crit_edge146
    i32 1306, label %entry.return_crit_edge147
    i32 1344, label %entry.return_crit_edge148
    i32 1345, label %entry.return_crit_edge149
    i32 1346, label %entry.return_crit_edge150
    i32 1347, label %entry.return_crit_edge151
    i32 1348, label %entry.return_crit_edge152
    i32 1349, label %entry.return_crit_edge153
    i32 1350, label %entry.return_crit_edge154
    i32 1351, label %entry.return_crit_edge155
    i32 1352, label %entry.return_crit_edge156
    i32 1353, label %entry.return_crit_edge157
    i32 1354, label %entry.return_crit_edge158
    i32 1355, label %entry.return_crit_edge159
    i32 1356, label %entry.return_crit_edge160
    i32 1357, label %entry.return_crit_edge161
    i32 1358, label %entry.return_crit_edge162
    i32 1361, label %entry.return_crit_edge163
    i32 1362, label %entry.return_crit_edge164
    i32 1363, label %entry.return_crit_edge165
    i32 1364, label %entry.return_crit_edge166
    i32 1365, label %entry.return_crit_edge167
    i32 1366, label %entry.return_crit_edge168
    i32 1369, label %entry.return_crit_edge169
    i32 1370, label %entry.return_crit_edge170
    i32 1408, label %entry.return_crit_edge171
    i32 1409, label %entry.return_crit_edge172
    i32 1410, label %entry.return_crit_edge173
    i32 1411, label %entry.return_crit_edge174
    i32 1412, label %entry.return_crit_edge175
    i32 1413, label %entry.return_crit_edge176
    i32 1414, label %entry.return_crit_edge177
    i32 1415, label %entry.return_crit_edge178
    i32 1416, label %entry.return_crit_edge179
    i32 1417, label %entry.return_crit_edge180
    i32 1418, label %entry.return_crit_edge181
    i32 1425, label %entry.return_crit_edge182
    i32 1426, label %entry.return_crit_edge183
    i32 1433, label %entry.return_crit_edge184
    i32 1434, label %entry.return_crit_edge185
    i32 1600, label %entry.return_crit_edge186
    i32 1601, label %entry.return_crit_edge187
    i32 1602, label %entry.return_crit_edge188
    i32 1603, label %entry.return_crit_edge189
    i32 1604, label %entry.return_crit_edge190
    i32 1605, label %entry.return_crit_edge191
    i32 1606, label %entry.return_crit_edge192
    i32 1607, label %entry.return_crit_edge193
    i32 1608, label %entry.return_crit_edge194
    i32 1609, label %entry.return_crit_edge195
    i32 1610, label %entry.return_crit_edge196
    i32 1611, label %entry.return_crit_edge197
    i32 1612, label %entry.return_crit_edge198
    i32 1613, label %entry.return_crit_edge199
    i32 1614, label %entry.return_crit_edge200
    i32 1615, label %entry.return_crit_edge201
    i32 1664, label %entry.return_crit_edge202
    i32 1665, label %entry.return_crit_edge203
    i32 1666, label %entry.return_crit_edge204
    i32 1667, label %entry.return_crit_edge205
    i32 1668, label %entry.return_crit_edge206
    i32 1669, label %entry.return_crit_edge207
    i32 1670, label %entry.return_crit_edge208
    i32 1671, label %entry.return_crit_edge209
    i32 1672, label %entry.return_crit_edge210
    i32 1673, label %entry.return_crit_edge211
    i32 1674, label %entry.return_crit_edge212
    i32 1675, label %entry.return_crit_edge213
    i32 1676, label %entry.return_crit_edge214
    i32 1677, label %entry.return_crit_edge215
    i32 1678, label %entry.return_crit_edge216
    i32 1679, label %entry.return_crit_edge217
    i32 1712, label %entry.return_crit_edge218
    i32 1713, label %entry.return_crit_edge219
    i32 1714, label %entry.return_crit_edge220
    i32 1715, label %entry.return_crit_edge221
    i32 1716, label %entry.return_crit_edge222
    i32 1717, label %entry.return_crit_edge223
    i32 1718, label %entry.return_crit_edge224
    i32 1719, label %entry.return_crit_edge225
    i32 1792, label %entry.return_crit_edge226
    i32 1793, label %entry.return_crit_edge227
    i32 1794, label %entry.return_crit_edge228
    i32 1795, label %entry.return_crit_edge229
    i32 1796, label %entry.return_crit_edge230
    i32 1797, label %entry.return_crit_edge231
    i32 1798, label %entry.return_crit_edge232
    i32 1799, label %entry.return_crit_edge233
    i32 1800, label %entry.return_crit_edge234
    i32 1801, label %entry.return_crit_edge235
    i32 1802, label %entry.return_crit_edge236
    i32 1803, label %entry.return_crit_edge237
    i32 1804, label %entry.return_crit_edge238
    i32 1805, label %entry.return_crit_edge239
    i32 1806, label %entry.return_crit_edge240
    i32 1807, label %entry.return_crit_edge241
    i32 1808, label %entry.return_crit_edge242
    i32 1809, label %entry.return_crit_edge243
    i32 1810, label %entry.return_crit_edge244
    i32 1811, label %entry.return_crit_edge245
    i32 1812, label %entry.return_crit_edge246
    i32 1813, label %entry.return_crit_edge247
    i32 1814, label %entry.return_crit_edge248
    i32 1815, label %entry.return_crit_edge249
    i32 1816, label %entry.return_crit_edge250
    i32 1817, label %entry.return_crit_edge251
    i32 1818, label %entry.return_crit_edge252
    i32 1819, label %entry.return_crit_edge253
    i32 1820, label %entry.return_crit_edge254
    i32 1821, label %entry.return_crit_edge255
    i32 1822, label %entry.return_crit_edge256
    i32 1823, label %entry.return_crit_edge257
    i32 1824, label %entry.return_crit_edge258
    i32 1825, label %entry.return_crit_edge259
    i32 1826, label %entry.return_crit_edge260
    i32 1827, label %entry.return_crit_edge261
    i32 1828, label %entry.return_crit_edge262
    i32 1829, label %entry.return_crit_edge263
    i32 1830, label %entry.return_crit_edge264
    i32 1831, label %entry.return_crit_edge265
    i32 1832, label %entry.return_crit_edge266
    i32 1833, label %entry.return_crit_edge267
    i32 1834, label %entry.return_crit_edge268
    i32 1835, label %entry.return_crit_edge269
    i32 1836, label %entry.return_crit_edge270
    i32 1837, label %entry.return_crit_edge271
    i32 1838, label %entry.return_crit_edge272
    i32 1839, label %entry.return_crit_edge273
    i32 1840, label %entry.return_crit_edge274
    i32 1841, label %entry.return_crit_edge275
    i32 1842, label %entry.return_crit_edge276
    i32 1843, label %entry.return_crit_edge277
    i32 1844, label %entry.return_crit_edge278
    i32 1845, label %entry.return_crit_edge279
    i32 1846, label %entry.return_crit_edge280
    i32 1847, label %entry.return_crit_edge281
    i32 1848, label %entry.return_crit_edge282
    i32 1849, label %entry.return_crit_edge283
    i32 1850, label %entry.return_crit_edge284
    i32 1851, label %entry.return_crit_edge285
    i32 1852, label %entry.return_crit_edge286
    i32 1853, label %entry.return_crit_edge287
    i32 1854, label %entry.return_crit_edge288
    i32 1855, label %entry.return_crit_edge289
    i32 1856, label %entry.return_crit_edge290
    i32 1857, label %entry.return_crit_edge291
    i32 1858, label %entry.return_crit_edge292
    i32 1859, label %entry.return_crit_edge293
    i32 1860, label %entry.return_crit_edge294
    i32 1861, label %entry.return_crit_edge295
    i32 1862, label %entry.return_crit_edge296
    i32 1863, label %entry.return_crit_edge297
    i32 1864, label %entry.return_crit_edge298
    i32 1865, label %entry.return_crit_edge299
    i32 1866, label %entry.return_crit_edge300
    i32 1867, label %entry.return_crit_edge301
    i32 1868, label %entry.return_crit_edge302
    i32 1869, label %entry.return_crit_edge303
    i32 1870, label %entry.return_crit_edge304
    i32 1871, label %entry.return_crit_edge305
    i32 1872, label %entry.return_crit_edge306
    i32 1873, label %entry.return_crit_edge307
    i32 1874, label %entry.return_crit_edge308
    i32 1875, label %entry.return_crit_edge309
    i32 1876, label %entry.return_crit_edge310
    i32 1877, label %entry.return_crit_edge311
    i32 1878, label %entry.return_crit_edge312
    i32 1879, label %entry.return_crit_edge313
    i32 1880, label %entry.return_crit_edge314
    i32 1881, label %entry.return_crit_edge315
    i32 1882, label %entry.return_crit_edge316
    i32 1883, label %entry.return_crit_edge317
    i32 1884, label %entry.return_crit_edge318
    i32 1885, label %entry.return_crit_edge319
    i32 1886, label %entry.return_crit_edge320
    i32 1887, label %entry.return_crit_edge321
    i32 1888, label %entry.return_crit_edge322
    i32 1889, label %entry.return_crit_edge323
    i32 1890, label %entry.return_crit_edge324
    i32 1891, label %entry.return_crit_edge325
    i32 1892, label %entry.return_crit_edge326
    i32 1893, label %entry.return_crit_edge327
    i32 1894, label %entry.return_crit_edge328
    i32 1895, label %entry.return_crit_edge329
    i32 1896, label %entry.return_crit_edge330
    i32 1897, label %entry.return_crit_edge331
    i32 1898, label %entry.return_crit_edge332
    i32 1899, label %entry.return_crit_edge333
    i32 1900, label %entry.return_crit_edge334
    i32 1901, label %entry.return_crit_edge335
    i32 1902, label %entry.return_crit_edge336
    i32 1903, label %entry.return_crit_edge337
    i32 1920, label %entry.return_crit_edge338
    i32 1921, label %entry.return_crit_edge339
    i32 1922, label %entry.return_crit_edge340
    i32 1923, label %entry.return_crit_edge341
    i32 1924, label %entry.return_crit_edge342
    i32 1925, label %entry.return_crit_edge343
    i32 1926, label %entry.return_crit_edge344
    i32 1927, label %entry.return_crit_edge345
    i32 1928, label %entry.return_crit_edge346
    i32 1929, label %entry.return_crit_edge347
    i32 1930, label %entry.return_crit_edge348
    i32 1931, label %entry.return_crit_edge349
    i32 1932, label %entry.return_crit_edge350
    i32 1933, label %entry.return_crit_edge351
    i32 1934, label %entry.return_crit_edge352
    i32 1935, label %entry.return_crit_edge353
    i32 2176, label %entry.return_crit_edge354
    i32 2177, label %entry.return_crit_edge355
    i32 2178, label %entry.return_crit_edge356
    i32 2179, label %entry.return_crit_edge357
    i32 2180, label %entry.return_crit_edge358
    i32 2181, label %entry.return_crit_edge359
    i32 2182, label %entry.return_crit_edge360
    i32 2183, label %entry.return_crit_edge361
    i32 2184, label %entry.return_crit_edge362
    i32 2185, label %entry.return_crit_edge363
    i32 2186, label %entry.return_crit_edge364
    i32 2187, label %entry.return_crit_edge365
    i32 2188, label %entry.return_crit_edge366
    i32 2189, label %entry.return_crit_edge367
    i32 2190, label %entry.return_crit_edge368
    i32 2191, label %entry.return_crit_edge369
    i32 2240, label %entry.return_crit_edge370
    i32 2241, label %entry.return_crit_edge371
    i32 2242, label %entry.return_crit_edge372
    i32 2243, label %entry.return_crit_edge373
    i32 2244, label %entry.return_crit_edge374
    i32 2245, label %entry.return_crit_edge375
    i32 2246, label %entry.return_crit_edge376
    i32 2247, label %entry.return_crit_edge377
    i32 2248, label %entry.return_crit_edge378
    i32 2249, label %entry.return_crit_edge379
    i32 2250, label %entry.return_crit_edge380
    i32 2251, label %entry.return_crit_edge381
    i32 2252, label %entry.return_crit_edge382
    i32 2253, label %entry.return_crit_edge383
    i32 2254, label %entry.return_crit_edge384
    i32 2255, label %entry.return_crit_edge385
    i32 2256, label %entry.return_crit_edge386
    i32 2257, label %entry.return_crit_edge387
    i32 2258, label %entry.return_crit_edge388
    i32 2259, label %entry.return_crit_edge389
    i32 2260, label %entry.return_crit_edge390
    i32 2261, label %entry.return_crit_edge391
    i32 2262, label %entry.return_crit_edge392
    i32 2263, label %entry.return_crit_edge393
    i32 2264, label %entry.return_crit_edge394
    i32 2265, label %entry.return_crit_edge395
    i32 2266, label %entry.return_crit_edge396
    i32 2267, label %entry.return_crit_edge397
    i32 2268, label %entry.return_crit_edge398
    i32 2269, label %entry.return_crit_edge399
    i32 2270, label %entry.return_crit_edge400
    i32 2271, label %entry.return_crit_edge401
    i32 2304, label %entry.return_crit_edge402
    i32 2305, label %entry.return_crit_edge403
    i32 2306, label %entry.return_crit_edge404
    i32 2307, label %entry.return_crit_edge405
    i32 2308, label %entry.return_crit_edge406
    i32 2309, label %entry.return_crit_edge407
    i32 2310, label %entry.return_crit_edge408
    i32 2311, label %entry.return_crit_edge409
    i32 2312, label %entry.return_crit_edge410
    i32 2313, label %entry.return_crit_edge411
    i32 2314, label %entry.return_crit_edge412
    i32 2315, label %entry.return_crit_edge413
    i32 2316, label %entry.return_crit_edge414
    i32 2317, label %entry.return_crit_edge415
    i32 2318, label %entry.return_crit_edge416
    i32 2319, label %entry.return_crit_edge417
    i32 2320, label %entry.return_crit_edge418
    i32 2321, label %entry.return_crit_edge419
    i32 2322, label %entry.return_crit_edge420
    i32 2323, label %entry.return_crit_edge421
    i32 2324, label %entry.return_crit_edge422
    i32 2325, label %entry.return_crit_edge423
    i32 2326, label %entry.return_crit_edge424
    i32 2327, label %entry.return_crit_edge425
    i32 2328, label %entry.return_crit_edge426
    i32 2329, label %entry.return_crit_edge427
    i32 2330, label %entry.return_crit_edge428
    i32 2331, label %entry.return_crit_edge429
    i32 2332, label %entry.return_crit_edge430
    i32 2333, label %entry.return_crit_edge431
    i32 2334, label %entry.return_crit_edge432
    i32 2335, label %entry.return_crit_edge433
    i32 2432, label %entry.return_crit_edge434
    i32 2433, label %entry.return_crit_edge435
    i32 2434, label %entry.return_crit_edge436
    i32 2435, label %entry.return_crit_edge437
    i32 2436, label %entry.return_crit_edge438
    i32 2437, label %entry.return_crit_edge439
    i32 2438, label %entry.return_crit_edge440
    i32 2439, label %entry.return_crit_edge441
    i32 2440, label %entry.return_crit_edge442
    i32 2441, label %entry.return_crit_edge443
    i32 2442, label %entry.return_crit_edge444
    i32 2443, label %entry.return_crit_edge445
    i32 2444, label %entry.return_crit_edge446
    i32 2445, label %entry.return_crit_edge447
    i32 2446, label %entry.return_crit_edge448
    i32 2447, label %entry.return_crit_edge449
    i32 2448, label %entry.return_crit_edge450
    i32 2456, label %entry.return_crit_edge451
    i32 2464, label %entry.return_crit_edge452
    i32 2472, label %entry.return_crit_edge453
    i32 2480, label %entry.return_crit_edge454
    i32 2488, label %entry.return_crit_edge455
    i32 2496, label %entry.return_crit_edge456
    i32 2497, label %entry.return_crit_edge457
    i32 2498, label %entry.return_crit_edge458
    i32 2499, label %entry.return_crit_edge459
    i32 2500, label %entry.return_crit_edge460
    i32 2501, label %entry.return_crit_edge461
    i32 2502, label %entry.return_crit_edge462
    i32 2503, label %entry.return_crit_edge463
    i32 2504, label %entry.return_crit_edge464
    i32 2505, label %entry.return_crit_edge465
    i32 2506, label %entry.return_crit_edge466
    i32 2507, label %entry.return_crit_edge467
    i32 2508, label %entry.return_crit_edge468
    i32 2509, label %entry.return_crit_edge469
    i32 2510, label %entry.return_crit_edge470
    i32 2511, label %entry.return_crit_edge471
    i32 2512, label %entry.return_crit_edge472
    i32 2520, label %entry.return_crit_edge473
    i32 2528, label %entry.return_crit_edge474
    i32 2536, label %entry.return_crit_edge475
    i32 2544, label %entry.return_crit_edge476
    i32 2552, label %entry.return_crit_edge477
    i32 2688, label %entry.return_crit_edge478
    i32 2696, label %entry.return_crit_edge479
    i32 2704, label %entry.return_crit_edge480
    i32 2712, label %entry.return_crit_edge481
    i32 2816, label %entry.return_crit_edge482
    i32 2824, label %entry.return_crit_edge483
    i32 2832, label %entry.return_crit_edge484
    i32 2840, label %entry.return_crit_edge485
    i32 2848, label %entry.return_crit_edge486
    i32 2856, label %entry.return_crit_edge487
    i32 2864, label %entry.return_crit_edge488
    i32 2872, label %entry.return_crit_edge489
    i32 2880, label %entry.return_crit_edge490
    i32 2888, label %entry.return_crit_edge491
    i32 2896, label %entry.return_crit_edge492
    i32 2904, label %entry.return_crit_edge493
    i32 2912, label %entry.return_crit_edge494
    i32 2920, label %entry.return_crit_edge495
    i32 2928, label %entry.return_crit_edge496
    i32 2936, label %entry.return_crit_edge497
    i32 2944, label %entry.return_crit_edge498
    i32 2952, label %entry.return_crit_edge499
    i32 2960, label %entry.return_crit_edge500
    i32 2968, label %entry.return_crit_edge501
    i32 2976, label %entry.return_crit_edge502
    i32 2984, label %entry.return_crit_edge503
    i32 2992, label %entry.return_crit_edge504
    i32 3000, label %entry.return_crit_edge505
    i32 3072, label %entry.return_crit_edge506
    i32 3073, label %entry.return_crit_edge507
    i32 3087, label %entry.return_crit_edge508
    i32 3088, label %entry.return_crit_edge509
    i32 3104, label %entry.return_crit_edge510
    i32 3105, label %entry.return_crit_edge511
    i32 3106, label %entry.return_crit_edge512
    i32 3107, label %entry.return_crit_edge513
    i32 3108, label %entry.return_crit_edge514
    i32 3109, label %entry.return_crit_edge515
    i32 3120, label %entry.return_crit_edge516
    i32 3122, label %entry.return_crit_edge517
    i32 3123, label %entry.return_crit_edge518
    i32 3124, label %entry.return_crit_edge519
    i32 3125, label %entry.return_crit_edge520
    i32 3126, label %entry.return_crit_edge521
    i32 3127, label %entry.return_crit_edge522
    i32 3129, label %entry.return_crit_edge523
    i32 3328, label %entry.return_crit_edge524
    i32 3329, label %entry.return_crit_edge525
    i32 3330, label %entry.return_crit_edge526
    i32 3331, label %entry.return_crit_edge527
    i32 3332, label %entry.return_crit_edge528
    i32 3333, label %entry.return_crit_edge529
    i32 3336, label %entry.return_crit_edge530
    i32 3337, label %entry.return_crit_edge531
    i32 3338, label %entry.return_crit_edge532
    i32 3339, label %entry.return_crit_edge533
    i32 3340, label %entry.return_crit_edge534
    i32 3341, label %entry.return_crit_edge535
    i32 3343, label %entry.return_crit_edge536
    i32 3344, label %entry.return_crit_edge537
    i32 3345, label %entry.return_crit_edge538
    i32 3346, label %entry.return_crit_edge539
    i32 3347, label %entry.return_crit_edge540
    i32 3348, label %entry.return_crit_edge541
    i32 3349, label %entry.return_crit_edge542
    i32 3352, label %entry.return_crit_edge543
    i32 3353, label %entry.return_crit_edge544
    i32 3354, label %entry.return_crit_edge545
    i32 3355, label %entry.return_crit_edge546
    i32 3356, label %entry.return_crit_edge547
    i32 3357, label %entry.return_crit_edge548
    i32 3359, label %entry.return_crit_edge549
    i32 3360, label %entry.return_crit_edge550
    i32 3361, label %entry.return_crit_edge551
    i32 3362, label %entry.return_crit_edge552
    i32 3363, label %entry.return_crit_edge553
    i32 3364, label %entry.return_crit_edge554
    i32 3365, label %entry.return_crit_edge555
    i32 3366, label %entry.return_crit_edge556
    i32 3368, label %entry.return_crit_edge557
    i32 3392, label %entry.return_crit_edge558
    i32 3584, label %entry.return_crit_edge559
    i32 3585, label %entry.return_crit_edge560
    i32 3600, label %entry.return_crit_edge561
    i32 3601, label %entry.return_crit_edge562
    i32 3602, label %entry.return_crit_edge563
    i32 3603, label %entry.return_crit_edge564
    i32 3604, label %entry.return_crit_edge565
    i32 3605, label %entry.return_crit_edge566
    i32 3606, label %entry.return_crit_edge567
    i32 3607, label %entry.return_crit_edge568
    i32 3608, label %entry.return_crit_edge569
    i32 3609, label %entry.return_crit_edge570
    i32 3610, label %entry.return_crit_edge571
    i32 3611, label %entry.return_crit_edge572
    i32 3612, label %entry.return_crit_edge573
    i32 3613, label %entry.return_crit_edge574
    i32 3614, label %entry.return_crit_edge575
    i32 3615, label %entry.return_crit_edge576
    i32 3616, label %entry.return_crit_edge577
    i32 3617, label %entry.return_crit_edge578
    i32 3618, label %entry.return_crit_edge579
    i32 3619, label %entry.return_crit_edge580
    i32 3620, label %entry.return_crit_edge581
    i32 3622, label %entry.return_crit_edge582
    i32 3623, label %entry.return_crit_edge583
    i32 3624, label %entry.return_crit_edge584
    i32 3625, label %entry.return_crit_edge585
    i32 3626, label %entry.return_crit_edge586
    i32 3627, label %entry.return_crit_edge587
    i32 3628, label %entry.return_crit_edge588
    i32 3629, label %entry.return_crit_edge589
    i32 3630, label %entry.return_crit_edge590
    i32 3631, label %entry.return_crit_edge591
    i32 3632, label %entry.return_crit_edge592
    i32 3633, label %entry.return_crit_edge593
    i32 3634, label %entry.return_crit_edge594
    i32 3635, label %entry.return_crit_edge595
    i32 3636, label %entry.return_crit_edge596
    i32 3637, label %entry.return_crit_edge597
    i32 3638, label %entry.return_crit_edge598
    i32 3639, label %entry.return_crit_edge599
    i32 3640, label %entry.return_crit_edge600
    i32 3641, label %entry.return_crit_edge601
    i32 3642, label %entry.return_crit_edge602
    i32 3712, label %entry.return_crit_edge603
    i32 3713, label %entry.return_crit_edge604
    i32 3714, label %entry.return_crit_edge605
    i32 3715, label %entry.return_crit_edge606
    i32 3716, label %entry.return_crit_edge607
    i32 3721, label %entry.return_crit_edge608
    i32 3722, label %entry.return_crit_edge609
    i32 3723, label %entry.return_crit_edge610
    i32 3724, label %entry.return_crit_edge611
    i32 3725, label %entry.return_crit_edge612
    i32 3776, label %entry.return_crit_edge613
    i32 3777, label %entry.return_crit_edge614
    i32 3780, label %entry.return_crit_edge615
    i32 3781, label %entry.return_crit_edge616
    i32 3784, label %entry.return_crit_edge617
    i32 3785, label %entry.return_crit_edge618
    i32 3788, label %entry.return_crit_edge619
    i32 3789, label %entry.return_crit_edge620
    i32 3808, label %entry.return_crit_edge621
    i32 3809, label %entry.return_crit_edge622
    i32 3810, label %entry.return_crit_edge623
    i32 3811, label %entry.return_crit_edge624
    i32 3824, label %entry.return_crit_edge625
    i32 3825, label %entry.return_crit_edge626
    i32 3826, label %entry.return_crit_edge627
    i32 3827, label %entry.return_crit_edge628
    i32 3828, label %entry.return_crit_edge629
    i32 3829, label %entry.return_crit_edge630
    i32 3830, label %entry.return_crit_edge631
    i32 3831, label %entry.return_crit_edge632
    i32 3832, label %entry.return_crit_edge633
    i32 4608, label %entry.return_crit_edge634
    i32 4609, label %entry.return_crit_edge635
    i32 4612, label %entry.return_crit_edge636
    i32 4613, label %entry.return_crit_edge637
    i32 4614, label %entry.return_crit_edge638
    i32 4615, label %entry.return_crit_edge639
    i32 4624, label %entry.return_crit_edge640
    i32 4625, label %entry.return_crit_edge641
    i32 4626, label %entry.return_crit_edge642
    i32 4627, label %entry.return_crit_edge643
    i32 4628, label %entry.return_crit_edge644
    i32 4629, label %entry.return_crit_edge645
    i32 4630, label %entry.return_crit_edge646
    i32 4631, label %entry.return_crit_edge647
    i32 4640, label %entry.return_crit_edge648
    i32 4641, label %entry.return_crit_edge649
    i32 4642, label %entry.return_crit_edge650
    i32 4643, label %entry.return_crit_edge651
    i32 4644, label %entry.return_crit_edge652
    i32 4645, label %entry.return_crit_edge653
    i32 4656, label %entry.return_crit_edge654
    i32 4657, label %entry.return_crit_edge655
    i32 4658, label %entry.return_crit_edge656
    i32 4660, label %entry.return_crit_edge657
    i32 4661, label %entry.return_crit_edge658
    i32 4664, label %entry.return_crit_edge659
    i32 4672, label %entry.return_crit_edge660
    i32 4673, label %entry.return_crit_edge661
    i32 4674, label %entry.return_crit_edge662
    i32 4675, label %entry.return_crit_edge663
    i32 4864, label %entry.return_crit_edge664
    i32 4865, label %entry.return_crit_edge665
    i32 4868, label %entry.return_crit_edge666
    i32 4869, label %entry.return_crit_edge667
    i32 4870, label %entry.return_crit_edge668
    i32 4871, label %entry.return_crit_edge669
    i32 4880, label %entry.return_crit_edge670
    i32 4881, label %entry.return_crit_edge671
    i32 4882, label %entry.return_crit_edge672
    i32 4883, label %entry.return_crit_edge673
    i32 4884, label %entry.return_crit_edge674
    i32 4885, label %entry.return_crit_edge675
    i32 4886, label %entry.return_crit_edge676
    i32 4887, label %entry.return_crit_edge677
    i32 4896, label %entry.return_crit_edge678
    i32 4897, label %entry.return_crit_edge679
    i32 4898, label %entry.return_crit_edge680
    i32 4899, label %entry.return_crit_edge681
    i32 4900, label %entry.return_crit_edge682
    i32 4901, label %entry.return_crit_edge683
    i32 4912, label %entry.return_crit_edge684
    i32 4913, label %entry.return_crit_edge685
    i32 4914, label %entry.return_crit_edge686
    i32 4916, label %entry.return_crit_edge687
    i32 4917, label %entry.return_crit_edge688
    i32 4920, label %entry.return_crit_edge689
    i32 4928, label %entry.return_crit_edge690
    i32 4929, label %entry.return_crit_edge691
    i32 4930, label %entry.return_crit_edge692
    i32 4931, label %entry.return_crit_edge693
  ]

entry.return_crit_edge693:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge692:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge691:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge690:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge689:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge688:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge687:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge686:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge685:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge684:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge683:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge682:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge681:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge680:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge679:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge678:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge677:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge676:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge675:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge674:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge673:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge672:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge671:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge670:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge669:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge668:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge667:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge666:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge665:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge664:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge663:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge662:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge661:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge660:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge659:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge658:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge657:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge656:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge655:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge654:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge653:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge652:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge651:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge650:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge649:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge648:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge647:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge646:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge645:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge644:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge643:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge642:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge641:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge640:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge639:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge638:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge637:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge636:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge635:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge634:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge633:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge632:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge631:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge630:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge629:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge628:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge627:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge626:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge625:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge624:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge623:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge622:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge621:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge620:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge619:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge618:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge617:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge616:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge615:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge614:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge613:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge612:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge611:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge610:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge609:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge608:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge607:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge606:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge605:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge604:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge603:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge602:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge601:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge600:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge599:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge598:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge597:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge596:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge595:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge594:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge593:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge592:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge591:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge590:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge589:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge588:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge587:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge586:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge585:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge584:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge583:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge582:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge581:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge580:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge579:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge578:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge577:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge576:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge575:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge574:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge573:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge572:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge571:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge570:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge569:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge568:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge567:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge566:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge565:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge564:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge563:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge562:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge561:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge560:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge559:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge558:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge557:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge556:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge555:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge554:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge553:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge552:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge551:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge550:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge549:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge548:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge547:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge546:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge545:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge544:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge543:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge542:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge541:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge540:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge539:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge538:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge537:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge536:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge535:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge534:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge533:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge532:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge531:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge530:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge529:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge528:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge527:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge526:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge525:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge524:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge523:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge522:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge521:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge520:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge519:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge518:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge517:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge516:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge515:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge514:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge513:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge512:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge511:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge510:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge509:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge508:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge507:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge506:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge505:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge504:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge503:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge502:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge501:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge500:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge499:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge498:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge497:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge496:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge495:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge494:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge493:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge492:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge491:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge490:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge489:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge488:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge487:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge486:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge485:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge484:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge483:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge482:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge481:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge480:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge479:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge478:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge477:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge476:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge475:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge474:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge473:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge472:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge471:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge470:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge469:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge468:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge467:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge466:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge465:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge464:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge463:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge462:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge461:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge460:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge459:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge458:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge457:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge456:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge455:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge454:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge453:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge452:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge451:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge450:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge449:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge448:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge447:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge446:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge445:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge444:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge443:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge442:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge441:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge440:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge439:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge438:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge437:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge436:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge435:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge434:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge433:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge432:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge431:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge430:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge429:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge428:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge427:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge426:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge425:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge424:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge423:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge422:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge421:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge420:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge419:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge418:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge417:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge416:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge415:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge414:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge413:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge412:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge411:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge410:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge409:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge408:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge407:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge406:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge405:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge404:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge403:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge402:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge401:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge400:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge399:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge398:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge397:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge396:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge395:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge394:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge393:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge392:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge391:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge390:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge389:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge388:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge387:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge386:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge385:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge384:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge383:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge382:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge381:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge380:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge379:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge378:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge377:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge376:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge375:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge374:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge373:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge372:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge371:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge370:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge369:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge368:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge367:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge366:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge365:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge364:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge363:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge362:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge361:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge360:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge359:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge358:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge357:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge356:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge355:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge354:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge353:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge352:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge351:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge350:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge349:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge348:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge347:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge346:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge345:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge344:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge343:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge342:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge341:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge340:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge339:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge338:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge337:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge336:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge335:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge334:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge333:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge332:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge331:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge330:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge329:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge328:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge327:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge326:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge325:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge324:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge323:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge322:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge321:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge320:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge319:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge318:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge317:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge316:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge315:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge314:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge313:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge312:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge311:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge310:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge309:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge308:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge307:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge306:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge305:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge304:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge303:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge302:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge301:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge300:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge299:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge298:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge297:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge296:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge295:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge294:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge293:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge292:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge291:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge290:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge289:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge288:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge287:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge286:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge285:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge284:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge283:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge282:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge281:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge280:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge279:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge278:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge277:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge276:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge275:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge274:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge273:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge272:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge271:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge270:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge269:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge268:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge267:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge266:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge265:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge264:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge263:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge262:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge261:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge260:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge259:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge258:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge257:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge256:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge255:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge254:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge253:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge252:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge251:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge250:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge249:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge248:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge247:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge246:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge245:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge244:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge243:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge242:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge241:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge240:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge239:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge238:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge237:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge236:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge235:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge234:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge233:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge232:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge231:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge230:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge229:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge228:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge227:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge226:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge225:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge224:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge223:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge222:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge221:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge220:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge219:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge218:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge217:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge216:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge215:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge214:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge213:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge212:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge211:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge210:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge209:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge208:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge207:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge206:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge205:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge204:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge203:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge202:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge201:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge200:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge199:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge198:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge197:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge196:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge195:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge194:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge193:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge192:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge191:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge190:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge189:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge188:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge187:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge186:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge185:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge184:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge183:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge182:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge181:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge180:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge179:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge178:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge177:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge176:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge175:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge174:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge173:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge172:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge171:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge170:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge169:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge168:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge167:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge166:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge165:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge164:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge163:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge162:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge161:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge160:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge159:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge158:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge157:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge156:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge155:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge154:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge153:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge152:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge151:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge150:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge149:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge148:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge147:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge146:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge145:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge143:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge140:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge139:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge133:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call fastcc zeroext i1 @cs47l24_is_adsp_memory(i32 noundef %reg)
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137, %entry.return_crit_edge138, %entry.return_crit_edge139, %entry.return_crit_edge140, %entry.return_crit_edge141, %entry.return_crit_edge142, %entry.return_crit_edge143, %entry.return_crit_edge144, %entry.return_crit_edge145, %entry.return_crit_edge146, %entry.return_crit_edge147, %entry.return_crit_edge148, %entry.return_crit_edge149, %entry.return_crit_edge150, %entry.return_crit_edge151, %entry.return_crit_edge152, %entry.return_crit_edge153, %entry.return_crit_edge154, %entry.return_crit_edge155, %entry.return_crit_edge156, %entry.return_crit_edge157, %entry.return_crit_edge158, %entry.return_crit_edge159, %entry.return_crit_edge160, %entry.return_crit_edge161, %entry.return_crit_edge162, %entry.return_crit_edge163, %entry.return_crit_edge164, %entry.return_crit_edge165, %entry.return_crit_edge166, %entry.return_crit_edge167, %entry.return_crit_edge168, %entry.return_crit_edge169, %entry.return_crit_edge170, %entry.return_crit_edge171, %entry.return_crit_edge172, %entry.return_crit_edge173, %entry.return_crit_edge174, %entry.return_crit_edge175, %entry.return_crit_edge176, %entry.return_crit_edge177, %entry.return_crit_edge178, %entry.return_crit_edge179, %entry.return_crit_edge180, %entry.return_crit_edge181, %entry.return_crit_edge182, %entry.return_crit_edge183, %entry.return_crit_edge184, %entry.return_crit_edge185, %entry.return_crit_edge186, %entry.return_crit_edge187, %entry.return_crit_edge188, %entry.return_crit_edge189, %entry.return_crit_edge190, %entry.return_crit_edge191, %entry.return_crit_edge192, %entry.return_crit_edge193, %entry.return_crit_edge194, %entry.return_crit_edge195, %entry.return_crit_edge196, %entry.return_crit_edge197, %entry.return_crit_edge198, %entry.return_crit_edge199, %entry.return_crit_edge200, %entry.return_crit_edge201, %entry.return_crit_edge202, %entry.return_crit_edge203, %entry.return_crit_edge204, %entry.return_crit_edge205, %entry.return_crit_edge206, %entry.return_crit_edge207, %entry.return_crit_edge208, %entry.return_crit_edge209, %entry.return_crit_edge210, %entry.return_crit_edge211, %entry.return_crit_edge212, %entry.return_crit_edge213, %entry.return_crit_edge214, %entry.return_crit_edge215, %entry.return_crit_edge216, %entry.return_crit_edge217, %entry.return_crit_edge218, %entry.return_crit_edge219, %entry.return_crit_edge220, %entry.return_crit_edge221, %entry.return_crit_edge222, %entry.return_crit_edge223, %entry.return_crit_edge224, %entry.return_crit_edge225, %entry.return_crit_edge226, %entry.return_crit_edge227, %entry.return_crit_edge228, %entry.return_crit_edge229, %entry.return_crit_edge230, %entry.return_crit_edge231, %entry.return_crit_edge232, %entry.return_crit_edge233, %entry.return_crit_edge234, %entry.return_crit_edge235, %entry.return_crit_edge236, %entry.return_crit_edge237, %entry.return_crit_edge238, %entry.return_crit_edge239, %entry.return_crit_edge240, %entry.return_crit_edge241, %entry.return_crit_edge242, %entry.return_crit_edge243, %entry.return_crit_edge244, %entry.return_crit_edge245, %entry.return_crit_edge246, %entry.return_crit_edge247, %entry.return_crit_edge248, %entry.return_crit_edge249, %entry.return_crit_edge250, %entry.return_crit_edge251, %entry.return_crit_edge252, %entry.return_crit_edge253, %entry.return_crit_edge254, %entry.return_crit_edge255, %entry.return_crit_edge256, %entry.return_crit_edge257, %entry.return_crit_edge258, %entry.return_crit_edge259, %entry.return_crit_edge260, %entry.return_crit_edge261, %entry.return_crit_edge262, %entry.return_crit_edge263, %entry.return_crit_edge264, %entry.return_crit_edge265, %entry.return_crit_edge266, %entry.return_crit_edge267, %entry.return_crit_edge268, %entry.return_crit_edge269, %entry.return_crit_edge270, %entry.return_crit_edge271, %entry.return_crit_edge272, %entry.return_crit_edge273, %entry.return_crit_edge274, %entry.return_crit_edge275, %entry.return_crit_edge276, %entry.return_crit_edge277, %entry.return_crit_edge278, %entry.return_crit_edge279, %entry.return_crit_edge280, %entry.return_crit_edge281, %entry.return_crit_edge282, %entry.return_crit_edge283, %entry.return_crit_edge284, %entry.return_crit_edge285, %entry.return_crit_edge286, %entry.return_crit_edge287, %entry.return_crit_edge288, %entry.return_crit_edge289, %entry.return_crit_edge290, %entry.return_crit_edge291, %entry.return_crit_edge292, %entry.return_crit_edge293, %entry.return_crit_edge294, %entry.return_crit_edge295, %entry.return_crit_edge296, %entry.return_crit_edge297, %entry.return_crit_edge298, %entry.return_crit_edge299, %entry.return_crit_edge300, %entry.return_crit_edge301, %entry.return_crit_edge302, %entry.return_crit_edge303, %entry.return_crit_edge304, %entry.return_crit_edge305, %entry.return_crit_edge306, %entry.return_crit_edge307, %entry.return_crit_edge308, %entry.return_crit_edge309, %entry.return_crit_edge310, %entry.return_crit_edge311, %entry.return_crit_edge312, %entry.return_crit_edge313, %entry.return_crit_edge314, %entry.return_crit_edge315, %entry.return_crit_edge316, %entry.return_crit_edge317, %entry.return_crit_edge318, %entry.return_crit_edge319, %entry.return_crit_edge320, %entry.return_crit_edge321, %entry.return_crit_edge322, %entry.return_crit_edge323, %entry.return_crit_edge324, %entry.return_crit_edge325, %entry.return_crit_edge326, %entry.return_crit_edge327, %entry.return_crit_edge328, %entry.return_crit_edge329, %entry.return_crit_edge330, %entry.return_crit_edge331, %entry.return_crit_edge332, %entry.return_crit_edge333, %entry.return_crit_edge334, %entry.return_crit_edge335, %entry.return_crit_edge336, %entry.return_crit_edge337, %entry.return_crit_edge338, %entry.return_crit_edge339, %entry.return_crit_edge340, %entry.return_crit_edge341, %entry.return_crit_edge342, %entry.return_crit_edge343, %entry.return_crit_edge344, %entry.return_crit_edge345, %entry.return_crit_edge346, %entry.return_crit_edge347, %entry.return_crit_edge348, %entry.return_crit_edge349, %entry.return_crit_edge350, %entry.return_crit_edge351, %entry.return_crit_edge352, %entry.return_crit_edge353, %entry.return_crit_edge354, %entry.return_crit_edge355, %entry.return_crit_edge356, %entry.return_crit_edge357, %entry.return_crit_edge358, %entry.return_crit_edge359, %entry.return_crit_edge360, %entry.return_crit_edge361, %entry.return_crit_edge362, %entry.return_crit_edge363, %entry.return_crit_edge364, %entry.return_crit_edge365, %entry.return_crit_edge366, %entry.return_crit_edge367, %entry.return_crit_edge368, %entry.return_crit_edge369, %entry.return_crit_edge370, %entry.return_crit_edge371, %entry.return_crit_edge372, %entry.return_crit_edge373, %entry.return_crit_edge374, %entry.return_crit_edge375, %entry.return_crit_edge376, %entry.return_crit_edge377, %entry.return_crit_edge378, %entry.return_crit_edge379, %entry.return_crit_edge380, %entry.return_crit_edge381, %entry.return_crit_edge382, %entry.return_crit_edge383, %entry.return_crit_edge384, %entry.return_crit_edge385, %entry.return_crit_edge386, %entry.return_crit_edge387, %entry.return_crit_edge388, %entry.return_crit_edge389, %entry.return_crit_edge390, %entry.return_crit_edge391, %entry.return_crit_edge392, %entry.return_crit_edge393, %entry.return_crit_edge394, %entry.return_crit_edge395, %entry.return_crit_edge396, %entry.return_crit_edge397, %entry.return_crit_edge398, %entry.return_crit_edge399, %entry.return_crit_edge400, %entry.return_crit_edge401, %entry.return_crit_edge402, %entry.return_crit_edge403, %entry.return_crit_edge404, %entry.return_crit_edge405, %entry.return_crit_edge406, %entry.return_crit_edge407, %entry.return_crit_edge408, %entry.return_crit_edge409, %entry.return_crit_edge410, %entry.return_crit_edge411, %entry.return_crit_edge412, %entry.return_crit_edge413, %entry.return_crit_edge414, %entry.return_crit_edge415, %entry.return_crit_edge416, %entry.return_crit_edge417, %entry.return_crit_edge418, %entry.return_crit_edge419, %entry.return_crit_edge420, %entry.return_crit_edge421, %entry.return_crit_edge422, %entry.return_crit_edge423, %entry.return_crit_edge424, %entry.return_crit_edge425, %entry.return_crit_edge426, %entry.return_crit_edge427, %entry.return_crit_edge428, %entry.return_crit_edge429, %entry.return_crit_edge430, %entry.return_crit_edge431, %entry.return_crit_edge432, %entry.return_crit_edge433, %entry.return_crit_edge434, %entry.return_crit_edge435, %entry.return_crit_edge436, %entry.return_crit_edge437, %entry.return_crit_edge438, %entry.return_crit_edge439, %entry.return_crit_edge440, %entry.return_crit_edge441, %entry.return_crit_edge442, %entry.return_crit_edge443, %entry.return_crit_edge444, %entry.return_crit_edge445, %entry.return_crit_edge446, %entry.return_crit_edge447, %entry.return_crit_edge448, %entry.return_crit_edge449, %entry.return_crit_edge450, %entry.return_crit_edge451, %entry.return_crit_edge452, %entry.return_crit_edge453, %entry.return_crit_edge454, %entry.return_crit_edge455, %entry.return_crit_edge456, %entry.return_crit_edge457, %entry.return_crit_edge458, %entry.return_crit_edge459, %entry.return_crit_edge460, %entry.return_crit_edge461, %entry.return_crit_edge462, %entry.return_crit_edge463, %entry.return_crit_edge464, %entry.return_crit_edge465, %entry.return_crit_edge466, %entry.return_crit_edge467, %entry.return_crit_edge468, %entry.return_crit_edge469, %entry.return_crit_edge470, %entry.return_crit_edge471, %entry.return_crit_edge472, %entry.return_crit_edge473, %entry.return_crit_edge474, %entry.return_crit_edge475, %entry.return_crit_edge476, %entry.return_crit_edge477, %entry.return_crit_edge478, %entry.return_crit_edge479, %entry.return_crit_edge480, %entry.return_crit_edge481, %entry.return_crit_edge482, %entry.return_crit_edge483, %entry.return_crit_edge484, %entry.return_crit_edge485, %entry.return_crit_edge486, %entry.return_crit_edge487, %entry.return_crit_edge488, %entry.return_crit_edge489, %entry.return_crit_edge490, %entry.return_crit_edge491, %entry.return_crit_edge492, %entry.return_crit_edge493, %entry.return_crit_edge494, %entry.return_crit_edge495, %entry.return_crit_edge496, %entry.return_crit_edge497, %entry.return_crit_edge498, %entry.return_crit_edge499, %entry.return_crit_edge500, %entry.return_crit_edge501, %entry.return_crit_edge502, %entry.return_crit_edge503, %entry.return_crit_edge504, %entry.return_crit_edge505, %entry.return_crit_edge506, %entry.return_crit_edge507, %entry.return_crit_edge508, %entry.return_crit_edge509, %entry.return_crit_edge510, %entry.return_crit_edge511, %entry.return_crit_edge512, %entry.return_crit_edge513, %entry.return_crit_edge514, %entry.return_crit_edge515, %entry.return_crit_edge516, %entry.return_crit_edge517, %entry.return_crit_edge518, %entry.return_crit_edge519, %entry.return_crit_edge520, %entry.return_crit_edge521, %entry.return_crit_edge522, %entry.return_crit_edge523, %entry.return_crit_edge524, %entry.return_crit_edge525, %entry.return_crit_edge526, %entry.return_crit_edge527, %entry.return_crit_edge528, %entry.return_crit_edge529, %entry.return_crit_edge530, %entry.return_crit_edge531, %entry.return_crit_edge532, %entry.return_crit_edge533, %entry.return_crit_edge534, %entry.return_crit_edge535, %entry.return_crit_edge536, %entry.return_crit_edge537, %entry.return_crit_edge538, %entry.return_crit_edge539, %entry.return_crit_edge540, %entry.return_crit_edge541, %entry.return_crit_edge542, %entry.return_crit_edge543, %entry.return_crit_edge544, %entry.return_crit_edge545, %entry.return_crit_edge546, %entry.return_crit_edge547, %entry.return_crit_edge548, %entry.return_crit_edge549, %entry.return_crit_edge550, %entry.return_crit_edge551, %entry.return_crit_edge552, %entry.return_crit_edge553, %entry.return_crit_edge554, %entry.return_crit_edge555, %entry.return_crit_edge556, %entry.return_crit_edge557, %entry.return_crit_edge558, %entry.return_crit_edge559, %entry.return_crit_edge560, %entry.return_crit_edge561, %entry.return_crit_edge562, %entry.return_crit_edge563, %entry.return_crit_edge564, %entry.return_crit_edge565, %entry.return_crit_edge566, %entry.return_crit_edge567, %entry.return_crit_edge568, %entry.return_crit_edge569, %entry.return_crit_edge570, %entry.return_crit_edge571, %entry.return_crit_edge572, %entry.return_crit_edge573, %entry.return_crit_edge574, %entry.return_crit_edge575, %entry.return_crit_edge576, %entry.return_crit_edge577, %entry.return_crit_edge578, %entry.return_crit_edge579, %entry.return_crit_edge580, %entry.return_crit_edge581, %entry.return_crit_edge582, %entry.return_crit_edge583, %entry.return_crit_edge584, %entry.return_crit_edge585, %entry.return_crit_edge586, %entry.return_crit_edge587, %entry.return_crit_edge588, %entry.return_crit_edge589, %entry.return_crit_edge590, %entry.return_crit_edge591, %entry.return_crit_edge592, %entry.return_crit_edge593, %entry.return_crit_edge594, %entry.return_crit_edge595, %entry.return_crit_edge596, %entry.return_crit_edge597, %entry.return_crit_edge598, %entry.return_crit_edge599, %entry.return_crit_edge600, %entry.return_crit_edge601, %entry.return_crit_edge602, %entry.return_crit_edge603, %entry.return_crit_edge604, %entry.return_crit_edge605, %entry.return_crit_edge606, %entry.return_crit_edge607, %entry.return_crit_edge608, %entry.return_crit_edge609, %entry.return_crit_edge610, %entry.return_crit_edge611, %entry.return_crit_edge612, %entry.return_crit_edge613, %entry.return_crit_edge614, %entry.return_crit_edge615, %entry.return_crit_edge616, %entry.return_crit_edge617, %entry.return_crit_edge618, %entry.return_crit_edge619, %entry.return_crit_edge620, %entry.return_crit_edge621, %entry.return_crit_edge622, %entry.return_crit_edge623, %entry.return_crit_edge624, %entry.return_crit_edge625, %entry.return_crit_edge626, %entry.return_crit_edge627, %entry.return_crit_edge628, %entry.return_crit_edge629, %entry.return_crit_edge630, %entry.return_crit_edge631, %entry.return_crit_edge632, %entry.return_crit_edge633, %entry.return_crit_edge634, %entry.return_crit_edge635, %entry.return_crit_edge636, %entry.return_crit_edge637, %entry.return_crit_edge638, %entry.return_crit_edge639, %entry.return_crit_edge640, %entry.return_crit_edge641, %entry.return_crit_edge642, %entry.return_crit_edge643, %entry.return_crit_edge644, %entry.return_crit_edge645, %entry.return_crit_edge646, %entry.return_crit_edge647, %entry.return_crit_edge648, %entry.return_crit_edge649, %entry.return_crit_edge650, %entry.return_crit_edge651, %entry.return_crit_edge652, %entry.return_crit_edge653, %entry.return_crit_edge654, %entry.return_crit_edge655, %entry.return_crit_edge656, %entry.return_crit_edge657, %entry.return_crit_edge658, %entry.return_crit_edge659, %entry.return_crit_edge660, %entry.return_crit_edge661, %entry.return_crit_edge662, %entry.return_crit_edge663, %entry.return_crit_edge664, %entry.return_crit_edge665, %entry.return_crit_edge666, %entry.return_crit_edge667, %entry.return_crit_edge668, %entry.return_crit_edge669, %entry.return_crit_edge670, %entry.return_crit_edge671, %entry.return_crit_edge672, %entry.return_crit_edge673, %entry.return_crit_edge674, %entry.return_crit_edge675, %entry.return_crit_edge676, %entry.return_crit_edge677, %entry.return_crit_edge678, %entry.return_crit_edge679, %entry.return_crit_edge680, %entry.return_crit_edge681, %entry.return_crit_edge682, %entry.return_crit_edge683, %entry.return_crit_edge684, %entry.return_crit_edge685, %entry.return_crit_edge686, %entry.return_crit_edge687, %entry.return_crit_edge688, %entry.return_crit_edge689, %entry.return_crit_edge690, %entry.return_crit_edge691, %entry.return_crit_edge692, %entry.return_crit_edge693
  %retval.0 = phi i1 [ %call, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ], [ true, %entry.return_crit_edge138 ], [ true, %entry.return_crit_edge139 ], [ true, %entry.return_crit_edge140 ], [ true, %entry.return_crit_edge141 ], [ true, %entry.return_crit_edge142 ], [ true, %entry.return_crit_edge143 ], [ true, %entry.return_crit_edge144 ], [ true, %entry.return_crit_edge145 ], [ true, %entry.return_crit_edge146 ], [ true, %entry.return_crit_edge147 ], [ true, %entry.return_crit_edge148 ], [ true, %entry.return_crit_edge149 ], [ true, %entry.return_crit_edge150 ], [ true, %entry.return_crit_edge151 ], [ true, %entry.return_crit_edge152 ], [ true, %entry.return_crit_edge153 ], [ true, %entry.return_crit_edge154 ], [ true, %entry.return_crit_edge155 ], [ true, %entry.return_crit_edge156 ], [ true, %entry.return_crit_edge157 ], [ true, %entry.return_crit_edge158 ], [ true, %entry.return_crit_edge159 ], [ true, %entry.return_crit_edge160 ], [ true, %entry.return_crit_edge161 ], [ true, %entry.return_crit_edge162 ], [ true, %entry.return_crit_edge163 ], [ true, %entry.return_crit_edge164 ], [ true, %entry.return_crit_edge165 ], [ true, %entry.return_crit_edge166 ], [ true, %entry.return_crit_edge167 ], [ true, %entry.return_crit_edge168 ], [ true, %entry.return_crit_edge169 ], [ true, %entry.return_crit_edge170 ], [ true, %entry.return_crit_edge171 ], [ true, %entry.return_crit_edge172 ], [ true, %entry.return_crit_edge173 ], [ true, %entry.return_crit_edge174 ], [ true, %entry.return_crit_edge175 ], [ true, %entry.return_crit_edge176 ], [ true, %entry.return_crit_edge177 ], [ true, %entry.return_crit_edge178 ], [ true, %entry.return_crit_edge179 ], [ true, %entry.return_crit_edge180 ], [ true, %entry.return_crit_edge181 ], [ true, %entry.return_crit_edge182 ], [ true, %entry.return_crit_edge183 ], [ true, %entry.return_crit_edge184 ], [ true, %entry.return_crit_edge185 ], [ true, %entry.return_crit_edge186 ], [ true, %entry.return_crit_edge187 ], [ true, %entry.return_crit_edge188 ], [ true, %entry.return_crit_edge189 ], [ true, %entry.return_crit_edge190 ], [ true, %entry.return_crit_edge191 ], [ true, %entry.return_crit_edge192 ], [ true, %entry.return_crit_edge193 ], [ true, %entry.return_crit_edge194 ], [ true, %entry.return_crit_edge195 ], [ true, %entry.return_crit_edge196 ], [ true, %entry.return_crit_edge197 ], [ true, %entry.return_crit_edge198 ], [ true, %entry.return_crit_edge199 ], [ true, %entry.return_crit_edge200 ], [ true, %entry.return_crit_edge201 ], [ true, %entry.return_crit_edge202 ], [ true, %entry.return_crit_edge203 ], [ true, %entry.return_crit_edge204 ], [ true, %entry.return_crit_edge205 ], [ true, %entry.return_crit_edge206 ], [ true, %entry.return_crit_edge207 ], [ true, %entry.return_crit_edge208 ], [ true, %entry.return_crit_edge209 ], [ true, %entry.return_crit_edge210 ], [ true, %entry.return_crit_edge211 ], [ true, %entry.return_crit_edge212 ], [ true, %entry.return_crit_edge213 ], [ true, %entry.return_crit_edge214 ], [ true, %entry.return_crit_edge215 ], [ true, %entry.return_crit_edge216 ], [ true, %entry.return_crit_edge217 ], [ true, %entry.return_crit_edge218 ], [ true, %entry.return_crit_edge219 ], [ true, %entry.return_crit_edge220 ], [ true, %entry.return_crit_edge221 ], [ true, %entry.return_crit_edge222 ], [ true, %entry.return_crit_edge223 ], [ true, %entry.return_crit_edge224 ], [ true, %entry.return_crit_edge225 ], [ true, %entry.return_crit_edge226 ], [ true, %entry.return_crit_edge227 ], [ true, %entry.return_crit_edge228 ], [ true, %entry.return_crit_edge229 ], [ true, %entry.return_crit_edge230 ], [ true, %entry.return_crit_edge231 ], [ true, %entry.return_crit_edge232 ], [ true, %entry.return_crit_edge233 ], [ true, %entry.return_crit_edge234 ], [ true, %entry.return_crit_edge235 ], [ true, %entry.return_crit_edge236 ], [ true, %entry.return_crit_edge237 ], [ true, %entry.return_crit_edge238 ], [ true, %entry.return_crit_edge239 ], [ true, %entry.return_crit_edge240 ], [ true, %entry.return_crit_edge241 ], [ true, %entry.return_crit_edge242 ], [ true, %entry.return_crit_edge243 ], [ true, %entry.return_crit_edge244 ], [ true, %entry.return_crit_edge245 ], [ true, %entry.return_crit_edge246 ], [ true, %entry.return_crit_edge247 ], [ true, %entry.return_crit_edge248 ], [ true, %entry.return_crit_edge249 ], [ true, %entry.return_crit_edge250 ], [ true, %entry.return_crit_edge251 ], [ true, %entry.return_crit_edge252 ], [ true, %entry.return_crit_edge253 ], [ true, %entry.return_crit_edge254 ], [ true, %entry.return_crit_edge255 ], [ true, %entry.return_crit_edge256 ], [ true, %entry.return_crit_edge257 ], [ true, %entry.return_crit_edge258 ], [ true, %entry.return_crit_edge259 ], [ true, %entry.return_crit_edge260 ], [ true, %entry.return_crit_edge261 ], [ true, %entry.return_crit_edge262 ], [ true, %entry.return_crit_edge263 ], [ true, %entry.return_crit_edge264 ], [ true, %entry.return_crit_edge265 ], [ true, %entry.return_crit_edge266 ], [ true, %entry.return_crit_edge267 ], [ true, %entry.return_crit_edge268 ], [ true, %entry.return_crit_edge269 ], [ true, %entry.return_crit_edge270 ], [ true, %entry.return_crit_edge271 ], [ true, %entry.return_crit_edge272 ], [ true, %entry.return_crit_edge273 ], [ true, %entry.return_crit_edge274 ], [ true, %entry.return_crit_edge275 ], [ true, %entry.return_crit_edge276 ], [ true, %entry.return_crit_edge277 ], [ true, %entry.return_crit_edge278 ], [ true, %entry.return_crit_edge279 ], [ true, %entry.return_crit_edge280 ], [ true, %entry.return_crit_edge281 ], [ true, %entry.return_crit_edge282 ], [ true, %entry.return_crit_edge283 ], [ true, %entry.return_crit_edge284 ], [ true, %entry.return_crit_edge285 ], [ true, %entry.return_crit_edge286 ], [ true, %entry.return_crit_edge287 ], [ true, %entry.return_crit_edge288 ], [ true, %entry.return_crit_edge289 ], [ true, %entry.return_crit_edge290 ], [ true, %entry.return_crit_edge291 ], [ true, %entry.return_crit_edge292 ], [ true, %entry.return_crit_edge293 ], [ true, %entry.return_crit_edge294 ], [ true, %entry.return_crit_edge295 ], [ true, %entry.return_crit_edge296 ], [ true, %entry.return_crit_edge297 ], [ true, %entry.return_crit_edge298 ], [ true, %entry.return_crit_edge299 ], [ true, %entry.return_crit_edge300 ], [ true, %entry.return_crit_edge301 ], [ true, %entry.return_crit_edge302 ], [ true, %entry.return_crit_edge303 ], [ true, %entry.return_crit_edge304 ], [ true, %entry.return_crit_edge305 ], [ true, %entry.return_crit_edge306 ], [ true, %entry.return_crit_edge307 ], [ true, %entry.return_crit_edge308 ], [ true, %entry.return_crit_edge309 ], [ true, %entry.return_crit_edge310 ], [ true, %entry.return_crit_edge311 ], [ true, %entry.return_crit_edge312 ], [ true, %entry.return_crit_edge313 ], [ true, %entry.return_crit_edge314 ], [ true, %entry.return_crit_edge315 ], [ true, %entry.return_crit_edge316 ], [ true, %entry.return_crit_edge317 ], [ true, %entry.return_crit_edge318 ], [ true, %entry.return_crit_edge319 ], [ true, %entry.return_crit_edge320 ], [ true, %entry.return_crit_edge321 ], [ true, %entry.return_crit_edge322 ], [ true, %entry.return_crit_edge323 ], [ true, %entry.return_crit_edge324 ], [ true, %entry.return_crit_edge325 ], [ true, %entry.return_crit_edge326 ], [ true, %entry.return_crit_edge327 ], [ true, %entry.return_crit_edge328 ], [ true, %entry.return_crit_edge329 ], [ true, %entry.return_crit_edge330 ], [ true, %entry.return_crit_edge331 ], [ true, %entry.return_crit_edge332 ], [ true, %entry.return_crit_edge333 ], [ true, %entry.return_crit_edge334 ], [ true, %entry.return_crit_edge335 ], [ true, %entry.return_crit_edge336 ], [ true, %entry.return_crit_edge337 ], [ true, %entry.return_crit_edge338 ], [ true, %entry.return_crit_edge339 ], [ true, %entry.return_crit_edge340 ], [ true, %entry.return_crit_edge341 ], [ true, %entry.return_crit_edge342 ], [ true, %entry.return_crit_edge343 ], [ true, %entry.return_crit_edge344 ], [ true, %entry.return_crit_edge345 ], [ true, %entry.return_crit_edge346 ], [ true, %entry.return_crit_edge347 ], [ true, %entry.return_crit_edge348 ], [ true, %entry.return_crit_edge349 ], [ true, %entry.return_crit_edge350 ], [ true, %entry.return_crit_edge351 ], [ true, %entry.return_crit_edge352 ], [ true, %entry.return_crit_edge353 ], [ true, %entry.return_crit_edge354 ], [ true, %entry.return_crit_edge355 ], [ true, %entry.return_crit_edge356 ], [ true, %entry.return_crit_edge357 ], [ true, %entry.return_crit_edge358 ], [ true, %entry.return_crit_edge359 ], [ true, %entry.return_crit_edge360 ], [ true, %entry.return_crit_edge361 ], [ true, %entry.return_crit_edge362 ], [ true, %entry.return_crit_edge363 ], [ true, %entry.return_crit_edge364 ], [ true, %entry.return_crit_edge365 ], [ true, %entry.return_crit_edge366 ], [ true, %entry.return_crit_edge367 ], [ true, %entry.return_crit_edge368 ], [ true, %entry.return_crit_edge369 ], [ true, %entry.return_crit_edge370 ], [ true, %entry.return_crit_edge371 ], [ true, %entry.return_crit_edge372 ], [ true, %entry.return_crit_edge373 ], [ true, %entry.return_crit_edge374 ], [ true, %entry.return_crit_edge375 ], [ true, %entry.return_crit_edge376 ], [ true, %entry.return_crit_edge377 ], [ true, %entry.return_crit_edge378 ], [ true, %entry.return_crit_edge379 ], [ true, %entry.return_crit_edge380 ], [ true, %entry.return_crit_edge381 ], [ true, %entry.return_crit_edge382 ], [ true, %entry.return_crit_edge383 ], [ true, %entry.return_crit_edge384 ], [ true, %entry.return_crit_edge385 ], [ true, %entry.return_crit_edge386 ], [ true, %entry.return_crit_edge387 ], [ true, %entry.return_crit_edge388 ], [ true, %entry.return_crit_edge389 ], [ true, %entry.return_crit_edge390 ], [ true, %entry.return_crit_edge391 ], [ true, %entry.return_crit_edge392 ], [ true, %entry.return_crit_edge393 ], [ true, %entry.return_crit_edge394 ], [ true, %entry.return_crit_edge395 ], [ true, %entry.return_crit_edge396 ], [ true, %entry.return_crit_edge397 ], [ true, %entry.return_crit_edge398 ], [ true, %entry.return_crit_edge399 ], [ true, %entry.return_crit_edge400 ], [ true, %entry.return_crit_edge401 ], [ true, %entry.return_crit_edge402 ], [ true, %entry.return_crit_edge403 ], [ true, %entry.return_crit_edge404 ], [ true, %entry.return_crit_edge405 ], [ true, %entry.return_crit_edge406 ], [ true, %entry.return_crit_edge407 ], [ true, %entry.return_crit_edge408 ], [ true, %entry.return_crit_edge409 ], [ true, %entry.return_crit_edge410 ], [ true, %entry.return_crit_edge411 ], [ true, %entry.return_crit_edge412 ], [ true, %entry.return_crit_edge413 ], [ true, %entry.return_crit_edge414 ], [ true, %entry.return_crit_edge415 ], [ true, %entry.return_crit_edge416 ], [ true, %entry.return_crit_edge417 ], [ true, %entry.return_crit_edge418 ], [ true, %entry.return_crit_edge419 ], [ true, %entry.return_crit_edge420 ], [ true, %entry.return_crit_edge421 ], [ true, %entry.return_crit_edge422 ], [ true, %entry.return_crit_edge423 ], [ true, %entry.return_crit_edge424 ], [ true, %entry.return_crit_edge425 ], [ true, %entry.return_crit_edge426 ], [ true, %entry.return_crit_edge427 ], [ true, %entry.return_crit_edge428 ], [ true, %entry.return_crit_edge429 ], [ true, %entry.return_crit_edge430 ], [ true, %entry.return_crit_edge431 ], [ true, %entry.return_crit_edge432 ], [ true, %entry.return_crit_edge433 ], [ true, %entry.return_crit_edge434 ], [ true, %entry.return_crit_edge435 ], [ true, %entry.return_crit_edge436 ], [ true, %entry.return_crit_edge437 ], [ true, %entry.return_crit_edge438 ], [ true, %entry.return_crit_edge439 ], [ true, %entry.return_crit_edge440 ], [ true, %entry.return_crit_edge441 ], [ true, %entry.return_crit_edge442 ], [ true, %entry.return_crit_edge443 ], [ true, %entry.return_crit_edge444 ], [ true, %entry.return_crit_edge445 ], [ true, %entry.return_crit_edge446 ], [ true, %entry.return_crit_edge447 ], [ true, %entry.return_crit_edge448 ], [ true, %entry.return_crit_edge449 ], [ true, %entry.return_crit_edge450 ], [ true, %entry.return_crit_edge451 ], [ true, %entry.return_crit_edge452 ], [ true, %entry.return_crit_edge453 ], [ true, %entry.return_crit_edge454 ], [ true, %entry.return_crit_edge455 ], [ true, %entry.return_crit_edge456 ], [ true, %entry.return_crit_edge457 ], [ true, %entry.return_crit_edge458 ], [ true, %entry.return_crit_edge459 ], [ true, %entry.return_crit_edge460 ], [ true, %entry.return_crit_edge461 ], [ true, %entry.return_crit_edge462 ], [ true, %entry.return_crit_edge463 ], [ true, %entry.return_crit_edge464 ], [ true, %entry.return_crit_edge465 ], [ true, %entry.return_crit_edge466 ], [ true, %entry.return_crit_edge467 ], [ true, %entry.return_crit_edge468 ], [ true, %entry.return_crit_edge469 ], [ true, %entry.return_crit_edge470 ], [ true, %entry.return_crit_edge471 ], [ true, %entry.return_crit_edge472 ], [ true, %entry.return_crit_edge473 ], [ true, %entry.return_crit_edge474 ], [ true, %entry.return_crit_edge475 ], [ true, %entry.return_crit_edge476 ], [ true, %entry.return_crit_edge477 ], [ true, %entry.return_crit_edge478 ], [ true, %entry.return_crit_edge479 ], [ true, %entry.return_crit_edge480 ], [ true, %entry.return_crit_edge481 ], [ true, %entry.return_crit_edge482 ], [ true, %entry.return_crit_edge483 ], [ true, %entry.return_crit_edge484 ], [ true, %entry.return_crit_edge485 ], [ true, %entry.return_crit_edge486 ], [ true, %entry.return_crit_edge487 ], [ true, %entry.return_crit_edge488 ], [ true, %entry.return_crit_edge489 ], [ true, %entry.return_crit_edge490 ], [ true, %entry.return_crit_edge491 ], [ true, %entry.return_crit_edge492 ], [ true, %entry.return_crit_edge493 ], [ true, %entry.return_crit_edge494 ], [ true, %entry.return_crit_edge495 ], [ true, %entry.return_crit_edge496 ], [ true, %entry.return_crit_edge497 ], [ true, %entry.return_crit_edge498 ], [ true, %entry.return_crit_edge499 ], [ true, %entry.return_crit_edge500 ], [ true, %entry.return_crit_edge501 ], [ true, %entry.return_crit_edge502 ], [ true, %entry.return_crit_edge503 ], [ true, %entry.return_crit_edge504 ], [ true, %entry.return_crit_edge505 ], [ true, %entry.return_crit_edge506 ], [ true, %entry.return_crit_edge507 ], [ true, %entry.return_crit_edge508 ], [ true, %entry.return_crit_edge509 ], [ true, %entry.return_crit_edge510 ], [ true, %entry.return_crit_edge511 ], [ true, %entry.return_crit_edge512 ], [ true, %entry.return_crit_edge513 ], [ true, %entry.return_crit_edge514 ], [ true, %entry.return_crit_edge515 ], [ true, %entry.return_crit_edge516 ], [ true, %entry.return_crit_edge517 ], [ true, %entry.return_crit_edge518 ], [ true, %entry.return_crit_edge519 ], [ true, %entry.return_crit_edge520 ], [ true, %entry.return_crit_edge521 ], [ true, %entry.return_crit_edge522 ], [ true, %entry.return_crit_edge523 ], [ true, %entry.return_crit_edge524 ], [ true, %entry.return_crit_edge525 ], [ true, %entry.return_crit_edge526 ], [ true, %entry.return_crit_edge527 ], [ true, %entry.return_crit_edge528 ], [ true, %entry.return_crit_edge529 ], [ true, %entry.return_crit_edge530 ], [ true, %entry.return_crit_edge531 ], [ true, %entry.return_crit_edge532 ], [ true, %entry.return_crit_edge533 ], [ true, %entry.return_crit_edge534 ], [ true, %entry.return_crit_edge535 ], [ true, %entry.return_crit_edge536 ], [ true, %entry.return_crit_edge537 ], [ true, %entry.return_crit_edge538 ], [ true, %entry.return_crit_edge539 ], [ true, %entry.return_crit_edge540 ], [ true, %entry.return_crit_edge541 ], [ true, %entry.return_crit_edge542 ], [ true, %entry.return_crit_edge543 ], [ true, %entry.return_crit_edge544 ], [ true, %entry.return_crit_edge545 ], [ true, %entry.return_crit_edge546 ], [ true, %entry.return_crit_edge547 ], [ true, %entry.return_crit_edge548 ], [ true, %entry.return_crit_edge549 ], [ true, %entry.return_crit_edge550 ], [ true, %entry.return_crit_edge551 ], [ true, %entry.return_crit_edge552 ], [ true, %entry.return_crit_edge553 ], [ true, %entry.return_crit_edge554 ], [ true, %entry.return_crit_edge555 ], [ true, %entry.return_crit_edge556 ], [ true, %entry.return_crit_edge557 ], [ true, %entry.return_crit_edge558 ], [ true, %entry.return_crit_edge559 ], [ true, %entry.return_crit_edge560 ], [ true, %entry.return_crit_edge561 ], [ true, %entry.return_crit_edge562 ], [ true, %entry.return_crit_edge563 ], [ true, %entry.return_crit_edge564 ], [ true, %entry.return_crit_edge565 ], [ true, %entry.return_crit_edge566 ], [ true, %entry.return_crit_edge567 ], [ true, %entry.return_crit_edge568 ], [ true, %entry.return_crit_edge569 ], [ true, %entry.return_crit_edge570 ], [ true, %entry.return_crit_edge571 ], [ true, %entry.return_crit_edge572 ], [ true, %entry.return_crit_edge573 ], [ true, %entry.return_crit_edge574 ], [ true, %entry.return_crit_edge575 ], [ true, %entry.return_crit_edge576 ], [ true, %entry.return_crit_edge577 ], [ true, %entry.return_crit_edge578 ], [ true, %entry.return_crit_edge579 ], [ true, %entry.return_crit_edge580 ], [ true, %entry.return_crit_edge581 ], [ true, %entry.return_crit_edge582 ], [ true, %entry.return_crit_edge583 ], [ true, %entry.return_crit_edge584 ], [ true, %entry.return_crit_edge585 ], [ true, %entry.return_crit_edge586 ], [ true, %entry.return_crit_edge587 ], [ true, %entry.return_crit_edge588 ], [ true, %entry.return_crit_edge589 ], [ true, %entry.return_crit_edge590 ], [ true, %entry.return_crit_edge591 ], [ true, %entry.return_crit_edge592 ], [ true, %entry.return_crit_edge593 ], [ true, %entry.return_crit_edge594 ], [ true, %entry.return_crit_edge595 ], [ true, %entry.return_crit_edge596 ], [ true, %entry.return_crit_edge597 ], [ true, %entry.return_crit_edge598 ], [ true, %entry.return_crit_edge599 ], [ true, %entry.return_crit_edge600 ], [ true, %entry.return_crit_edge601 ], [ true, %entry.return_crit_edge602 ], [ true, %entry.return_crit_edge603 ], [ true, %entry.return_crit_edge604 ], [ true, %entry.return_crit_edge605 ], [ true, %entry.return_crit_edge606 ], [ true, %entry.return_crit_edge607 ], [ true, %entry.return_crit_edge608 ], [ true, %entry.return_crit_edge609 ], [ true, %entry.return_crit_edge610 ], [ true, %entry.return_crit_edge611 ], [ true, %entry.return_crit_edge612 ], [ true, %entry.return_crit_edge613 ], [ true, %entry.return_crit_edge614 ], [ true, %entry.return_crit_edge615 ], [ true, %entry.return_crit_edge616 ], [ true, %entry.return_crit_edge617 ], [ true, %entry.return_crit_edge618 ], [ true, %entry.return_crit_edge619 ], [ true, %entry.return_crit_edge620 ], [ true, %entry.return_crit_edge621 ], [ true, %entry.return_crit_edge622 ], [ true, %entry.return_crit_edge623 ], [ true, %entry.return_crit_edge624 ], [ true, %entry.return_crit_edge625 ], [ true, %entry.return_crit_edge626 ], [ true, %entry.return_crit_edge627 ], [ true, %entry.return_crit_edge628 ], [ true, %entry.return_crit_edge629 ], [ true, %entry.return_crit_edge630 ], [ true, %entry.return_crit_edge631 ], [ true, %entry.return_crit_edge632 ], [ true, %entry.return_crit_edge633 ], [ true, %entry.return_crit_edge634 ], [ true, %entry.return_crit_edge635 ], [ true, %entry.return_crit_edge636 ], [ true, %entry.return_crit_edge637 ], [ true, %entry.return_crit_edge638 ], [ true, %entry.return_crit_edge639 ], [ true, %entry.return_crit_edge640 ], [ true, %entry.return_crit_edge641 ], [ true, %entry.return_crit_edge642 ], [ true, %entry.return_crit_edge643 ], [ true, %entry.return_crit_edge644 ], [ true, %entry.return_crit_edge645 ], [ true, %entry.return_crit_edge646 ], [ true, %entry.return_crit_edge647 ], [ true, %entry.return_crit_edge648 ], [ true, %entry.return_crit_edge649 ], [ true, %entry.return_crit_edge650 ], [ true, %entry.return_crit_edge651 ], [ true, %entry.return_crit_edge652 ], [ true, %entry.return_crit_edge653 ], [ true, %entry.return_crit_edge654 ], [ true, %entry.return_crit_edge655 ], [ true, %entry.return_crit_edge656 ], [ true, %entry.return_crit_edge657 ], [ true, %entry.return_crit_edge658 ], [ true, %entry.return_crit_edge659 ], [ true, %entry.return_crit_edge660 ], [ true, %entry.return_crit_edge661 ], [ true, %entry.return_crit_edge662 ], [ true, %entry.return_crit_edge663 ], [ true, %entry.return_crit_edge664 ], [ true, %entry.return_crit_edge665 ], [ true, %entry.return_crit_edge666 ], [ true, %entry.return_crit_edge667 ], [ true, %entry.return_crit_edge668 ], [ true, %entry.return_crit_edge669 ], [ true, %entry.return_crit_edge670 ], [ true, %entry.return_crit_edge671 ], [ true, %entry.return_crit_edge672 ], [ true, %entry.return_crit_edge673 ], [ true, %entry.return_crit_edge674 ], [ true, %entry.return_crit_edge675 ], [ true, %entry.return_crit_edge676 ], [ true, %entry.return_crit_edge677 ], [ true, %entry.return_crit_edge678 ], [ true, %entry.return_crit_edge679 ], [ true, %entry.return_crit_edge680 ], [ true, %entry.return_crit_edge681 ], [ true, %entry.return_crit_edge682 ], [ true, %entry.return_crit_edge683 ], [ true, %entry.return_crit_edge684 ], [ true, %entry.return_crit_edge685 ], [ true, %entry.return_crit_edge686 ], [ true, %entry.return_crit_edge687 ], [ true, %entry.return_crit_edge688 ], [ true, %entry.return_crit_edge689 ], [ true, %entry.return_crit_edge690 ], [ true, %entry.return_crit_edge691 ], [ true, %entry.return_crit_edge692 ], [ true, %entry.return_crit_edge693 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cs47l24_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge2
    i32 22, label %entry.return_crit_edge3
    i32 23, label %entry.return_crit_edge4
    i32 24, label %entry.return_crit_edge5
    i32 152, label %entry.return_crit_edge6
    i32 266, label %entry.return_crit_edge7
    i32 267, label %entry.return_crit_edge8
    i32 268, label %entry.return_crit_edge9
    i32 283, label %entry.return_crit_edge10
    i32 284, label %entry.return_crit_edge11
    i32 549, label %entry.return_crit_edge12
    i32 550, label %entry.return_crit_edge13
    i32 769, label %entry.return_crit_edge14
    i32 1025, label %entry.return_crit_edge15
    i32 1030, label %entry.return_crit_edge16
    i32 3328, label %entry.return_crit_edge17
    i32 3329, label %entry.return_crit_edge18
    i32 3330, label %entry.return_crit_edge19
    i32 3331, label %entry.return_crit_edge20
    i32 3332, label %entry.return_crit_edge21
    i32 3333, label %entry.return_crit_edge22
    i32 3344, label %entry.return_crit_edge23
    i32 3345, label %entry.return_crit_edge24
    i32 3346, label %entry.return_crit_edge25
    i32 3347, label %entry.return_crit_edge26
    i32 3348, label %entry.return_crit_edge27
    i32 3349, label %entry.return_crit_edge28
    i32 3360, label %entry.return_crit_edge29
    i32 3361, label %entry.return_crit_edge30
    i32 3362, label %entry.return_crit_edge31
    i32 3363, label %entry.return_crit_edge32
    i32 3364, label %entry.return_crit_edge33
    i32 3365, label %entry.return_crit_edge34
    i32 3366, label %entry.return_crit_edge35
    i32 3368, label %entry.return_crit_edge36
    i32 3392, label %entry.return_crit_edge37
    i32 3585, label %entry.return_crit_edge38
    i32 3809, label %entry.return_crit_edge39
    i32 4612, label %entry.return_crit_edge40
    i32 4613, label %entry.return_crit_edge41
    i32 4614, label %entry.return_crit_edge42
    i32 4615, label %entry.return_crit_edge43
    i32 4624, label %entry.return_crit_edge44
    i32 4625, label %entry.return_crit_edge45
    i32 4626, label %entry.return_crit_edge46
    i32 4627, label %entry.return_crit_edge47
    i32 4628, label %entry.return_crit_edge48
    i32 4629, label %entry.return_crit_edge49
    i32 4630, label %entry.return_crit_edge50
    i32 4631, label %entry.return_crit_edge51
    i32 4640, label %entry.return_crit_edge52
    i32 4641, label %entry.return_crit_edge53
    i32 4642, label %entry.return_crit_edge54
    i32 4643, label %entry.return_crit_edge55
    i32 4644, label %entry.return_crit_edge56
    i32 4645, label %entry.return_crit_edge57
    i32 4656, label %entry.return_crit_edge58
    i32 4657, label %entry.return_crit_edge59
    i32 4658, label %entry.return_crit_edge60
    i32 4660, label %entry.return_crit_edge61
    i32 4661, label %entry.return_crit_edge62
    i32 4664, label %entry.return_crit_edge63
    i32 4672, label %entry.return_crit_edge64
    i32 4673, label %entry.return_crit_edge65
    i32 4674, label %entry.return_crit_edge66
    i32 4675, label %entry.return_crit_edge67
    i32 4609, label %entry.return_crit_edge68
    i32 4868, label %entry.return_crit_edge69
    i32 4869, label %entry.return_crit_edge70
    i32 4870, label %entry.return_crit_edge71
    i32 4871, label %entry.return_crit_edge72
    i32 4880, label %entry.return_crit_edge73
    i32 4881, label %entry.return_crit_edge74
    i32 4882, label %entry.return_crit_edge75
    i32 4883, label %entry.return_crit_edge76
    i32 4884, label %entry.return_crit_edge77
    i32 4885, label %entry.return_crit_edge78
    i32 4886, label %entry.return_crit_edge79
    i32 4887, label %entry.return_crit_edge80
    i32 4896, label %entry.return_crit_edge81
    i32 4897, label %entry.return_crit_edge82
    i32 4898, label %entry.return_crit_edge83
    i32 4899, label %entry.return_crit_edge84
    i32 4900, label %entry.return_crit_edge85
    i32 4901, label %entry.return_crit_edge86
    i32 4912, label %entry.return_crit_edge87
    i32 4913, label %entry.return_crit_edge88
    i32 4914, label %entry.return_crit_edge89
    i32 4916, label %entry.return_crit_edge90
    i32 4917, label %entry.return_crit_edge91
    i32 4920, label %entry.return_crit_edge92
    i32 4928, label %entry.return_crit_edge93
    i32 4929, label %entry.return_crit_edge94
    i32 4930, label %entry.return_crit_edge95
    i32 4931, label %entry.return_crit_edge96
    i32 4865, label %entry.return_crit_edge97
  ]

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call fastcc zeroext i1 @cs47l24_is_adsp_memory(i32 noundef %reg)
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97
  %retval.0 = phi i1 [ %call, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @cs47l24_is_adsp_memory(i32 noundef %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 24576, i32 %0)
  %inbounds21 = icmp ult i32 %0, 24576
  %1 = and i32 %reg, -8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 2621440, i32 %1)
  %inbounds19 = icmp eq i32 %1, 2621440
  %or.cond24 = or i1 %inbounds21, %inbounds19
  %2 = add i32 %reg, -2686976
  call void @__sanitizer_cov_trace_const_cmp4(i32 147456, i32 %2)
  %3 = icmp ult i32 %2, 147456
  %or.cond27 = or i1 %3, %or.cond24
  br i1 %or.cond27, label %entry.return_crit_edge, label %sw.caserange12

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.caserange12:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %4 = add i32 %reg, -3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864, i32 %4)
  %inbounds13 = icmp ult i32 %4, 36864
  call void @__sanitizer_cov_trace_const_cmp4(i32 3670016, i32 %1)
  %inbounds11 = icmp eq i32 %1, 3670016
  %or.cond22 = or i1 %inbounds13, %inbounds11
  %5 = add i32 %reg, -3735552
  call void @__sanitizer_cov_trace_const_cmp4(i32 147456, i32 %5)
  %6 = icmp ult i32 %5, 147456
  %or.cond = or i1 %6, %or.cond22
  br label %return

return:                                           ; preds = %sw.caserange12, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ %or.cond, %sw.caserange12 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__ksymtab_cs47l24_patch, !1, !"__ksymtab_cs47l24_patch", i1 false, i1 false}
!1 = !{!"../drivers/mfd/cs47l24-tables.c", i32 33, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mfd/cs47l24-tables.c", i32 172, i32 10}
!4 = !{ptr @cs47l24_irq, !5, !"cs47l24_irq", i1 false, i1 false}
!5 = !{!"../drivers/mfd/cs47l24-tables.c", i32 171, i32 30}
!6 = !{ptr @__ksymtab_cs47l24_irq, !7, !"__ksymtab_cs47l24_irq", i1 false, i1 false}
!7 = !{!"../drivers/mfd/cs47l24-tables.c", i32 180, i32 1}
!8 = !{ptr @cs47l24_spi_regmap, !9, !"cs47l24_spi_regmap", i1 false, i1 false}
!9 = !{!"../drivers/mfd/cs47l24-tables.c", i32 1608, i32 28}
!10 = !{ptr @__ksymtab_cs47l24_spi_regmap, !11, !"__ksymtab_cs47l24_spi_regmap", i1 false, i1 false}
!11 = !{!"../drivers/mfd/cs47l24-tables.c", i32 1623, i32 1}
!12 = !{ptr @cs47l24_reva_patch, !13, !"cs47l24_reva_patch", i1 false, i1 false}
!13 = !{!"../drivers/mfd/cs47l24-tables.c", i32 20, i32 34}
!14 = !{ptr @cs47l24_irqs, !15, !"cs47l24_irqs", i1 false, i1 false}
!15 = !{!"../drivers/mfd/cs47l24-tables.c", i32 35, i32 32}
!16 = !{ptr @cs47l24_reg_default, !17, !"cs47l24_reg_default", i1 false, i1 false}
!17 = !{!"../drivers/mfd/cs47l24-tables.c", i32 182, i32 33}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
