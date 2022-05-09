; ModuleID = '/llk/IR_all_yes/drivers/mfd/wm8994-regmap.c_pt.bc'
source_filename = "../drivers/mfd/wm8994-regmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+wm1811_regmap_config\22, \22a\22\09"
module asm "\09.weak\09__crc_wm1811_regmap_config\09\09\09\09"
module asm "\09.long\09__crc_wm1811_regmap_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm1811_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22wm1811_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_wm1811_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wm8994_regmap_config\22, \22a\22\09"
module asm "\09.weak\09__crc_wm8994_regmap_config\09\09\09\09"
module asm "\09.long\09__crc_wm8994_regmap_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8994_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8994_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_wm8994_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wm8958_regmap_config\22, \22a\22\09"
module asm "\09.weak\09__crc_wm8958_regmap_config\09\09\09\09"
module asm "\09.long\09__crc_wm8958_regmap_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8958_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8958_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_wm8958_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wm8994_base_regmap_config\22, \22a\22\09"
module asm "\09.weak\09__crc_wm8994_base_regmap_config\09\09\09\09"
module asm "\09.long\09__crc_wm8994_base_regmap_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8994_base_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8994_base_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_wm8994_base_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.reg_default = type { i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.wm8994 = type { %struct.wm8994_pdata, i32, i32, i32, ptr, ptr, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr }
%struct.wm8994_pdata = type { i32, [11 x i32], [2 x %struct.wm8994_ldo_pdata], i32, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i8, i32, i32, i32, i8, [2 x i32], i16, i8, i8, i8, [3 x i32], i32 }
%struct.wm8994_ldo_pdata = type { ptr }

@wm1811_defaults = internal constant { [229 x %struct.reg_default], [472 x i8] } { [229 x %struct.reg_default] [%struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 24576 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 24, i32 139 }, %struct.reg_default { i32 25, i32 139 }, %struct.reg_default { i32 26, i32 139 }, %struct.reg_default { i32 27, i32 139 }, %struct.reg_default { i32 28, i32 109 }, %struct.reg_default { i32 29, i32 109 }, %struct.reg_default { i32 30, i32 102 }, %struct.reg_default { i32 31, i32 32 }, %struct.reg_default { i32 32, i32 121 }, %struct.reg_default { i32 33, i32 121 }, %struct.reg_default { i32 34, i32 3 }, %struct.reg_default { i32 35, i32 3 }, %struct.reg_default { i32 36, i32 17 }, %struct.reg_default { i32 37, i32 320 }, %struct.reg_default { i32 38, i32 121 }, %struct.reg_default { i32 39, i32 121 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 55, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 57, i32 0 }, %struct.reg_default { i32 59, i32 13 }, %struct.reg_default { i32 60, i32 3 }, %struct.reg_default { i32 61, i32 57 }, %struct.reg_default { i32 62, i32 57 }, %struct.reg_default { i32 76, i32 7973 }, %struct.reg_default { i32 77, i32 43801 }, %struct.reg_default { i32 81, i32 4 }, %struct.reg_default { i32 85, i32 1354 }, %struct.reg_default { i32 89, i32 0 }, %struct.reg_default { i32 96, i32 0 }, %struct.reg_default { i32 197, i32 0 }, %struct.reg_default { i32 208, i32 30208 }, %struct.reg_default { i32 209, i32 127 }, %struct.reg_default { i32 257, i32 32772 }, %struct.reg_default { i32 512, i32 0 }, %struct.reg_default { i32 513, i32 0 }, %struct.reg_default { i32 516, i32 0 }, %struct.reg_default { i32 517, i32 0 }, %struct.reg_default { i32 520, i32 0 }, %struct.reg_default { i32 521, i32 0 }, %struct.reg_default { i32 528, i32 131 }, %struct.reg_default { i32 529, i32 131 }, %struct.reg_default { i32 544, i32 0 }, %struct.reg_default { i32 545, i32 0 }, %struct.reg_default { i32 546, i32 0 }, %struct.reg_default { i32 547, i32 0 }, %struct.reg_default { i32 548, i32 3200 }, %struct.reg_default { i32 550, i32 0 }, %struct.reg_default { i32 551, i32 6 }, %struct.reg_default { i32 576, i32 0 }, %struct.reg_default { i32 577, i32 0 }, %struct.reg_default { i32 578, i32 0 }, %struct.reg_default { i32 579, i32 0 }, %struct.reg_default { i32 580, i32 3200 }, %struct.reg_default { i32 582, i32 0 }, %struct.reg_default { i32 583, i32 6 }, %struct.reg_default { i32 768, i32 16464 }, %struct.reg_default { i32 769, i32 16384 }, %struct.reg_default { i32 770, i32 0 }, %struct.reg_default { i32 771, i32 64 }, %struct.reg_default { i32 772, i32 64 }, %struct.reg_default { i32 773, i32 64 }, %struct.reg_default { i32 774, i32 4 }, %struct.reg_default { i32 775, i32 256 }, %struct.reg_default { i32 784, i32 16464 }, %struct.reg_default { i32 785, i32 16384 }, %struct.reg_default { i32 786, i32 0 }, %struct.reg_default { i32 787, i32 64 }, %struct.reg_default { i32 788, i32 64 }, %struct.reg_default { i32 789, i32 64 }, %struct.reg_default { i32 790, i32 0 }, %struct.reg_default { i32 791, i32 0 }, %struct.reg_default { i32 792, i32 3 }, %struct.reg_default { i32 800, i32 64 }, %struct.reg_default { i32 801, i32 0 }, %struct.reg_default { i32 802, i32 0 }, %struct.reg_default { i32 803, i32 0 }, %struct.reg_default { i32 1024, i32 192 }, %struct.reg_default { i32 1025, i32 192 }, %struct.reg_default { i32 1026, i32 192 }, %struct.reg_default { i32 1027, i32 192 }, %struct.reg_default { i32 1040, i32 0 }, %struct.reg_default { i32 1041, i32 0 }, %struct.reg_default { i32 1056, i32 512 }, %struct.reg_default { i32 1057, i32 16 }, %struct.reg_default { i32 1058, i32 512 }, %struct.reg_default { i32 1059, i32 16 }, %struct.reg_default { i32 1072, i32 104 }, %struct.reg_default { i32 1073, i32 104 }, %struct.reg_default { i32 1088, i32 152 }, %struct.reg_default { i32 1089, i32 2117 }, %struct.reg_default { i32 1090, i32 0 }, %struct.reg_default { i32 1091, i32 0 }, %struct.reg_default { i32 1092, i32 0 }, %struct.reg_default { i32 1104, i32 152 }, %struct.reg_default { i32 1105, i32 2117 }, %struct.reg_default { i32 1106, i32 0 }, %struct.reg_default { i32 1107, i32 0 }, %struct.reg_default { i32 1108, i32 0 }, %struct.reg_default { i32 1152, i32 25368 }, %struct.reg_default { i32 1153, i32 25344 }, %struct.reg_default { i32 1154, i32 4042 }, %struct.reg_default { i32 1155, i32 1024 }, %struct.reg_default { i32 1156, i32 216 }, %struct.reg_default { i32 1157, i32 7861 }, %struct.reg_default { i32 1158, i32 61765 }, %struct.reg_default { i32 1159, i32 2933 }, %struct.reg_default { i32 1160, i32 453 }, %struct.reg_default { i32 1161, i32 7256 }, %struct.reg_default { i32 1162, i32 62323 }, %struct.reg_default { i32 1163, i32 2644 }, %struct.reg_default { i32 1164, i32 1368 }, %struct.reg_default { i32 1165, i32 5774 }, %struct.reg_default { i32 1166, i32 63529 }, %struct.reg_default { i32 1167, i32 1965 }, %struct.reg_default { i32 1168, i32 4355 }, %struct.reg_default { i32 1169, i32 1380 }, %struct.reg_default { i32 1170, i32 1369 }, %struct.reg_default { i32 1171, i32 16384 }, %struct.reg_default { i32 1172, i32 0 }, %struct.reg_default { i32 1184, i32 25368 }, %struct.reg_default { i32 1185, i32 25344 }, %struct.reg_default { i32 1186, i32 4042 }, %struct.reg_default { i32 1187, i32 1024 }, %struct.reg_default { i32 1188, i32 216 }, %struct.reg_default { i32 1189, i32 7861 }, %struct.reg_default { i32 1190, i32 61765 }, %struct.reg_default { i32 1191, i32 2933 }, %struct.reg_default { i32 1192, i32 453 }, %struct.reg_default { i32 1193, i32 7256 }, %struct.reg_default { i32 1194, i32 62323 }, %struct.reg_default { i32 1195, i32 2644 }, %struct.reg_default { i32 1196, i32 1368 }, %struct.reg_default { i32 1197, i32 5774 }, %struct.reg_default { i32 1198, i32 63529 }, %struct.reg_default { i32 1199, i32 1965 }, %struct.reg_default { i32 1200, i32 4355 }, %struct.reg_default { i32 1201, i32 1380 }, %struct.reg_default { i32 1202, i32 1369 }, %struct.reg_default { i32 1203, i32 16384 }, %struct.reg_default { i32 1204, i32 0 }, %struct.reg_default { i32 1280, i32 192 }, %struct.reg_default { i32 1281, i32 192 }, %struct.reg_default { i32 1282, i32 192 }, %struct.reg_default { i32 1283, i32 192 }, %struct.reg_default { i32 1296, i32 0 }, %struct.reg_default { i32 1312, i32 512 }, %struct.reg_default { i32 1313, i32 16 }, %struct.reg_default { i32 1328, i32 104 }, %struct.reg_default { i32 1344, i32 152 }, %struct.reg_default { i32 1345, i32 2117 }, %struct.reg_default { i32 1346, i32 0 }, %struct.reg_default { i32 1347, i32 0 }, %struct.reg_default { i32 1348, i32 0 }, %struct.reg_default { i32 1408, i32 25368 }, %struct.reg_default { i32 1409, i32 25344 }, %struct.reg_default { i32 1410, i32 4042 }, %struct.reg_default { i32 1411, i32 1024 }, %struct.reg_default { i32 1412, i32 216 }, %struct.reg_default { i32 1413, i32 7861 }, %struct.reg_default { i32 1414, i32 61765 }, %struct.reg_default { i32 1415, i32 2933 }, %struct.reg_default { i32 1416, i32 453 }, %struct.reg_default { i32 1417, i32 7256 }, %struct.reg_default { i32 1418, i32 62323 }, %struct.reg_default { i32 1419, i32 2644 }, %struct.reg_default { i32 1420, i32 1368 }, %struct.reg_default { i32 1421, i32 5774 }, %struct.reg_default { i32 1422, i32 63529 }, %struct.reg_default { i32 1423, i32 1965 }, %struct.reg_default { i32 1424, i32 4355 }, %struct.reg_default { i32 1425, i32 1380 }, %struct.reg_default { i32 1426, i32 1369 }, %struct.reg_default { i32 1427, i32 16384 }, %struct.reg_default { i32 1428, i32 0 }, %struct.reg_default { i32 1536, i32 0 }, %struct.reg_default { i32 1537, i32 0 }, %struct.reg_default { i32 1538, i32 0 }, %struct.reg_default { i32 1539, i32 0 }, %struct.reg_default { i32 1540, i32 0 }, %struct.reg_default { i32 1541, i32 0 }, %struct.reg_default { i32 1542, i32 0 }, %struct.reg_default { i32 1543, i32 0 }, %struct.reg_default { i32 1544, i32 0 }, %struct.reg_default { i32 1545, i32 0 }, %struct.reg_default { i32 1552, i32 704 }, %struct.reg_default { i32 1553, i32 704 }, %struct.reg_default { i32 1554, i32 704 }, %struct.reg_default { i32 1555, i32 704 }, %struct.reg_default { i32 1556, i32 0 }, %struct.reg_default { i32 1568, i32 2 }, %struct.reg_default { i32 1569, i32 0 }, %struct.reg_default { i32 1792, i32 33024 }, %struct.reg_default { i32 1793, i32 41217 }, %struct.reg_default { i32 1794, i32 41217 }, %struct.reg_default { i32 1795, i32 41217 }, %struct.reg_default { i32 1796, i32 41217 }, %struct.reg_default { i32 1799, i32 41217 }, %struct.reg_default { i32 1800, i32 41217 }, %struct.reg_default { i32 1801, i32 41217 }, %struct.reg_default { i32 1802, i32 41217 }, %struct.reg_default { i32 1824, i32 0 }, %struct.reg_default { i32 1825, i32 342 }, %struct.reg_default { i32 1842, i32 0 }, %struct.reg_default { i32 1848, i32 2047 }, %struct.reg_default { i32 1849, i32 57327 }, %struct.reg_default { i32 1856, i32 0 }, %struct.reg_default { i32 1864, i32 63 }], [472 x i8] zeroinitializer }, align 32
@wm1811_regmap_config = dso_local global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr @wm1811_readable_register, ptr @wm1811_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 12799, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm1811_defaults, i32 229, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_wm1811_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm1811_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_wm1811_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm1811_regmap_config to i32), ptr @__kstrtab_wm1811_regmap_config, ptr @__kstrtabns_wm1811_regmap_config }, section "___ksymtab+wm1811_regmap_config", align 4
@wm8994_defaults = internal constant { [216 x %struct.reg_default], [416 x i8] } { [216 x %struct.reg_default] [%struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 24576 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 24, i32 139 }, %struct.reg_default { i32 25, i32 139 }, %struct.reg_default { i32 26, i32 139 }, %struct.reg_default { i32 27, i32 139 }, %struct.reg_default { i32 28, i32 109 }, %struct.reg_default { i32 29, i32 109 }, %struct.reg_default { i32 30, i32 102 }, %struct.reg_default { i32 31, i32 32 }, %struct.reg_default { i32 32, i32 121 }, %struct.reg_default { i32 33, i32 121 }, %struct.reg_default { i32 34, i32 3 }, %struct.reg_default { i32 35, i32 3 }, %struct.reg_default { i32 36, i32 17 }, %struct.reg_default { i32 37, i32 320 }, %struct.reg_default { i32 38, i32 121 }, %struct.reg_default { i32 39, i32 121 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 55, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 57, i32 0 }, %struct.reg_default { i32 58, i32 0 }, %struct.reg_default { i32 59, i32 13 }, %struct.reg_default { i32 60, i32 3 }, %struct.reg_default { i32 76, i32 7973 }, %struct.reg_default { i32 81, i32 4 }, %struct.reg_default { i32 85, i32 1354 }, %struct.reg_default { i32 87, i32 0 }, %struct.reg_default { i32 96, i32 0 }, %struct.reg_default { i32 257, i32 32772 }, %struct.reg_default { i32 272, i32 0 }, %struct.reg_default { i32 273, i32 0 }, %struct.reg_default { i32 512, i32 0 }, %struct.reg_default { i32 513, i32 0 }, %struct.reg_default { i32 516, i32 0 }, %struct.reg_default { i32 517, i32 0 }, %struct.reg_default { i32 520, i32 0 }, %struct.reg_default { i32 521, i32 0 }, %struct.reg_default { i32 528, i32 131 }, %struct.reg_default { i32 529, i32 131 }, %struct.reg_default { i32 544, i32 0 }, %struct.reg_default { i32 545, i32 0 }, %struct.reg_default { i32 546, i32 0 }, %struct.reg_default { i32 547, i32 0 }, %struct.reg_default { i32 548, i32 3200 }, %struct.reg_default { i32 576, i32 0 }, %struct.reg_default { i32 577, i32 0 }, %struct.reg_default { i32 578, i32 0 }, %struct.reg_default { i32 579, i32 0 }, %struct.reg_default { i32 580, i32 3200 }, %struct.reg_default { i32 768, i32 16464 }, %struct.reg_default { i32 769, i32 16384 }, %struct.reg_default { i32 770, i32 0 }, %struct.reg_default { i32 771, i32 64 }, %struct.reg_default { i32 772, i32 64 }, %struct.reg_default { i32 773, i32 64 }, %struct.reg_default { i32 774, i32 4 }, %struct.reg_default { i32 775, i32 256 }, %struct.reg_default { i32 784, i32 16464 }, %struct.reg_default { i32 785, i32 16384 }, %struct.reg_default { i32 786, i32 0 }, %struct.reg_default { i32 787, i32 64 }, %struct.reg_default { i32 788, i32 64 }, %struct.reg_default { i32 789, i32 64 }, %struct.reg_default { i32 790, i32 0 }, %struct.reg_default { i32 791, i32 0 }, %struct.reg_default { i32 1024, i32 192 }, %struct.reg_default { i32 1025, i32 192 }, %struct.reg_default { i32 1026, i32 192 }, %struct.reg_default { i32 1027, i32 192 }, %struct.reg_default { i32 1028, i32 192 }, %struct.reg_default { i32 1029, i32 192 }, %struct.reg_default { i32 1030, i32 192 }, %struct.reg_default { i32 1031, i32 192 }, %struct.reg_default { i32 1040, i32 0 }, %struct.reg_default { i32 1041, i32 0 }, %struct.reg_default { i32 1056, i32 512 }, %struct.reg_default { i32 1057, i32 16 }, %struct.reg_default { i32 1058, i32 512 }, %struct.reg_default { i32 1059, i32 16 }, %struct.reg_default { i32 1088, i32 152 }, %struct.reg_default { i32 1089, i32 2117 }, %struct.reg_default { i32 1090, i32 0 }, %struct.reg_default { i32 1091, i32 0 }, %struct.reg_default { i32 1092, i32 0 }, %struct.reg_default { i32 1104, i32 152 }, %struct.reg_default { i32 1105, i32 2117 }, %struct.reg_default { i32 1106, i32 0 }, %struct.reg_default { i32 1107, i32 0 }, %struct.reg_default { i32 1108, i32 0 }, %struct.reg_default { i32 1152, i32 25368 }, %struct.reg_default { i32 1153, i32 25344 }, %struct.reg_default { i32 1154, i32 4042 }, %struct.reg_default { i32 1155, i32 1024 }, %struct.reg_default { i32 1156, i32 216 }, %struct.reg_default { i32 1157, i32 7861 }, %struct.reg_default { i32 1158, i32 61765 }, %struct.reg_default { i32 1159, i32 2933 }, %struct.reg_default { i32 1160, i32 453 }, %struct.reg_default { i32 1161, i32 7256 }, %struct.reg_default { i32 1162, i32 62323 }, %struct.reg_default { i32 1163, i32 2644 }, %struct.reg_default { i32 1164, i32 1368 }, %struct.reg_default { i32 1165, i32 5774 }, %struct.reg_default { i32 1166, i32 63529 }, %struct.reg_default { i32 1167, i32 1965 }, %struct.reg_default { i32 1168, i32 4355 }, %struct.reg_default { i32 1169, i32 1380 }, %struct.reg_default { i32 1170, i32 1369 }, %struct.reg_default { i32 1171, i32 16384 }, %struct.reg_default { i32 1184, i32 25368 }, %struct.reg_default { i32 1185, i32 25344 }, %struct.reg_default { i32 1186, i32 4042 }, %struct.reg_default { i32 1187, i32 1024 }, %struct.reg_default { i32 1188, i32 216 }, %struct.reg_default { i32 1189, i32 7861 }, %struct.reg_default { i32 1190, i32 61765 }, %struct.reg_default { i32 1191, i32 2933 }, %struct.reg_default { i32 1192, i32 453 }, %struct.reg_default { i32 1193, i32 7256 }, %struct.reg_default { i32 1194, i32 62323 }, %struct.reg_default { i32 1195, i32 2644 }, %struct.reg_default { i32 1196, i32 1368 }, %struct.reg_default { i32 1197, i32 5774 }, %struct.reg_default { i32 1198, i32 63529 }, %struct.reg_default { i32 1199, i32 1965 }, %struct.reg_default { i32 1200, i32 4355 }, %struct.reg_default { i32 1201, i32 1380 }, %struct.reg_default { i32 1202, i32 1369 }, %struct.reg_default { i32 1203, i32 16384 }, %struct.reg_default { i32 1280, i32 192 }, %struct.reg_default { i32 1281, i32 192 }, %struct.reg_default { i32 1282, i32 192 }, %struct.reg_default { i32 1283, i32 192 }, %struct.reg_default { i32 1296, i32 0 }, %struct.reg_default { i32 1312, i32 512 }, %struct.reg_default { i32 1313, i32 16 }, %struct.reg_default { i32 1344, i32 152 }, %struct.reg_default { i32 1345, i32 2117 }, %struct.reg_default { i32 1346, i32 0 }, %struct.reg_default { i32 1347, i32 0 }, %struct.reg_default { i32 1348, i32 0 }, %struct.reg_default { i32 1408, i32 25368 }, %struct.reg_default { i32 1409, i32 25344 }, %struct.reg_default { i32 1410, i32 4042 }, %struct.reg_default { i32 1411, i32 1024 }, %struct.reg_default { i32 1412, i32 216 }, %struct.reg_default { i32 1413, i32 7861 }, %struct.reg_default { i32 1414, i32 61765 }, %struct.reg_default { i32 1415, i32 2933 }, %struct.reg_default { i32 1416, i32 453 }, %struct.reg_default { i32 1417, i32 7256 }, %struct.reg_default { i32 1418, i32 62323 }, %struct.reg_default { i32 1419, i32 2644 }, %struct.reg_default { i32 1420, i32 1368 }, %struct.reg_default { i32 1421, i32 5774 }, %struct.reg_default { i32 1422, i32 63529 }, %struct.reg_default { i32 1423, i32 1965 }, %struct.reg_default { i32 1424, i32 4355 }, %struct.reg_default { i32 1425, i32 1380 }, %struct.reg_default { i32 1426, i32 1369 }, %struct.reg_default { i32 1427, i32 16384 }, %struct.reg_default { i32 1536, i32 0 }, %struct.reg_default { i32 1537, i32 0 }, %struct.reg_default { i32 1538, i32 0 }, %struct.reg_default { i32 1539, i32 0 }, %struct.reg_default { i32 1540, i32 0 }, %struct.reg_default { i32 1541, i32 0 }, %struct.reg_default { i32 1542, i32 0 }, %struct.reg_default { i32 1543, i32 0 }, %struct.reg_default { i32 1544, i32 0 }, %struct.reg_default { i32 1545, i32 0 }, %struct.reg_default { i32 1552, i32 704 }, %struct.reg_default { i32 1553, i32 704 }, %struct.reg_default { i32 1554, i32 704 }, %struct.reg_default { i32 1555, i32 704 }, %struct.reg_default { i32 1556, i32 0 }, %struct.reg_default { i32 1568, i32 2 }, %struct.reg_default { i32 1569, i32 0 }, %struct.reg_default { i32 1792, i32 33024 }, %struct.reg_default { i32 1793, i32 41217 }, %struct.reg_default { i32 1794, i32 41217 }, %struct.reg_default { i32 1795, i32 41217 }, %struct.reg_default { i32 1796, i32 41217 }, %struct.reg_default { i32 1797, i32 41217 }, %struct.reg_default { i32 1798, i32 41217 }, %struct.reg_default { i32 1799, i32 41217 }, %struct.reg_default { i32 1800, i32 41217 }, %struct.reg_default { i32 1801, i32 41217 }, %struct.reg_default { i32 1802, i32 41217 }, %struct.reg_default { i32 1824, i32 0 }, %struct.reg_default { i32 1825, i32 342 }, %struct.reg_default { i32 1848, i32 2047 }, %struct.reg_default { i32 1849, i32 65535 }, %struct.reg_default { i32 1856, i32 0 }, %struct.reg_default { i32 1864, i32 63 }], [416 x i8] zeroinitializer }, align 32
@wm8994_regmap_config = dso_local global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr @wm8994_readable_register, ptr @wm8994_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 12799, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8994_defaults, i32 216, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_wm8994_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8994_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8994_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8994_regmap_config to i32), ptr @__kstrtab_wm8994_regmap_config, ptr @__kstrtabns_wm8994_regmap_config }, section "___ksymtab+wm8994_regmap_config", align 4
@wm8958_defaults = internal constant { [293 x %struct.reg_default], [600 x i8] } { [293 x %struct.reg_default] [%struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 24576 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 24, i32 139 }, %struct.reg_default { i32 25, i32 139 }, %struct.reg_default { i32 26, i32 139 }, %struct.reg_default { i32 27, i32 139 }, %struct.reg_default { i32 28, i32 109 }, %struct.reg_default { i32 29, i32 109 }, %struct.reg_default { i32 30, i32 102 }, %struct.reg_default { i32 31, i32 32 }, %struct.reg_default { i32 32, i32 121 }, %struct.reg_default { i32 33, i32 121 }, %struct.reg_default { i32 34, i32 3 }, %struct.reg_default { i32 35, i32 3 }, %struct.reg_default { i32 36, i32 17 }, %struct.reg_default { i32 37, i32 320 }, %struct.reg_default { i32 38, i32 121 }, %struct.reg_default { i32 39, i32 121 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 55, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 57, i32 384 }, %struct.reg_default { i32 59, i32 13 }, %struct.reg_default { i32 60, i32 5 }, %struct.reg_default { i32 61, i32 57 }, %struct.reg_default { i32 62, i32 57 }, %struct.reg_default { i32 76, i32 7973 }, %struct.reg_default { i32 77, i32 43801 }, %struct.reg_default { i32 81, i32 4 }, %struct.reg_default { i32 85, i32 1354 }, %struct.reg_default { i32 87, i32 0 }, %struct.reg_default { i32 96, i32 0 }, %struct.reg_default { i32 197, i32 0 }, %struct.reg_default { i32 208, i32 22016 }, %struct.reg_default { i32 209, i32 127 }, %struct.reg_default { i32 257, i32 32772 }, %struct.reg_default { i32 272, i32 0 }, %struct.reg_default { i32 273, i32 0 }, %struct.reg_default { i32 512, i32 0 }, %struct.reg_default { i32 513, i32 0 }, %struct.reg_default { i32 516, i32 0 }, %struct.reg_default { i32 517, i32 0 }, %struct.reg_default { i32 520, i32 0 }, %struct.reg_default { i32 521, i32 0 }, %struct.reg_default { i32 528, i32 131 }, %struct.reg_default { i32 529, i32 131 }, %struct.reg_default { i32 544, i32 0 }, %struct.reg_default { i32 545, i32 0 }, %struct.reg_default { i32 546, i32 0 }, %struct.reg_default { i32 547, i32 0 }, %struct.reg_default { i32 548, i32 3200 }, %struct.reg_default { i32 550, i32 0 }, %struct.reg_default { i32 551, i32 6 }, %struct.reg_default { i32 576, i32 0 }, %struct.reg_default { i32 577, i32 0 }, %struct.reg_default { i32 578, i32 0 }, %struct.reg_default { i32 579, i32 0 }, %struct.reg_default { i32 580, i32 3200 }, %struct.reg_default { i32 582, i32 0 }, %struct.reg_default { i32 583, i32 6 }, %struct.reg_default { i32 768, i32 16464 }, %struct.reg_default { i32 769, i32 16384 }, %struct.reg_default { i32 770, i32 0 }, %struct.reg_default { i32 771, i32 64 }, %struct.reg_default { i32 772, i32 64 }, %struct.reg_default { i32 773, i32 64 }, %struct.reg_default { i32 774, i32 4 }, %struct.reg_default { i32 775, i32 256 }, %struct.reg_default { i32 784, i32 16467 }, %struct.reg_default { i32 785, i32 16384 }, %struct.reg_default { i32 786, i32 0 }, %struct.reg_default { i32 787, i32 64 }, %struct.reg_default { i32 788, i32 64 }, %struct.reg_default { i32 789, i32 64 }, %struct.reg_default { i32 790, i32 0 }, %struct.reg_default { i32 791, i32 0 }, %struct.reg_default { i32 800, i32 64 }, %struct.reg_default { i32 801, i32 0 }, %struct.reg_default { i32 802, i32 0 }, %struct.reg_default { i32 803, i32 0 }, %struct.reg_default { i32 1024, i32 192 }, %struct.reg_default { i32 1025, i32 192 }, %struct.reg_default { i32 1026, i32 192 }, %struct.reg_default { i32 1027, i32 192 }, %struct.reg_default { i32 1028, i32 192 }, %struct.reg_default { i32 1029, i32 192 }, %struct.reg_default { i32 1030, i32 192 }, %struct.reg_default { i32 1031, i32 192 }, %struct.reg_default { i32 1040, i32 0 }, %struct.reg_default { i32 1041, i32 0 }, %struct.reg_default { i32 1056, i32 512 }, %struct.reg_default { i32 1057, i32 16 }, %struct.reg_default { i32 1058, i32 512 }, %struct.reg_default { i32 1059, i32 16 }, %struct.reg_default { i32 1072, i32 104 }, %struct.reg_default { i32 1073, i32 104 }, %struct.reg_default { i32 1088, i32 152 }, %struct.reg_default { i32 1089, i32 2117 }, %struct.reg_default { i32 1090, i32 0 }, %struct.reg_default { i32 1091, i32 0 }, %struct.reg_default { i32 1092, i32 0 }, %struct.reg_default { i32 1104, i32 152 }, %struct.reg_default { i32 1105, i32 2117 }, %struct.reg_default { i32 1106, i32 0 }, %struct.reg_default { i32 1107, i32 0 }, %struct.reg_default { i32 1108, i32 0 }, %struct.reg_default { i32 1152, i32 25368 }, %struct.reg_default { i32 1153, i32 25344 }, %struct.reg_default { i32 1154, i32 4042 }, %struct.reg_default { i32 1155, i32 1024 }, %struct.reg_default { i32 1156, i32 216 }, %struct.reg_default { i32 1157, i32 7861 }, %struct.reg_default { i32 1158, i32 61765 }, %struct.reg_default { i32 1159, i32 2933 }, %struct.reg_default { i32 1160, i32 453 }, %struct.reg_default { i32 1161, i32 7256 }, %struct.reg_default { i32 1162, i32 62323 }, %struct.reg_default { i32 1163, i32 2644 }, %struct.reg_default { i32 1164, i32 1368 }, %struct.reg_default { i32 1165, i32 5774 }, %struct.reg_default { i32 1166, i32 63529 }, %struct.reg_default { i32 1167, i32 1965 }, %struct.reg_default { i32 1168, i32 4355 }, %struct.reg_default { i32 1169, i32 1380 }, %struct.reg_default { i32 1170, i32 1369 }, %struct.reg_default { i32 1171, i32 16384 }, %struct.reg_default { i32 1172, i32 0 }, %struct.reg_default { i32 1184, i32 25368 }, %struct.reg_default { i32 1185, i32 25344 }, %struct.reg_default { i32 1186, i32 4042 }, %struct.reg_default { i32 1187, i32 1024 }, %struct.reg_default { i32 1188, i32 216 }, %struct.reg_default { i32 1189, i32 7861 }, %struct.reg_default { i32 1190, i32 61765 }, %struct.reg_default { i32 1191, i32 2933 }, %struct.reg_default { i32 1192, i32 453 }, %struct.reg_default { i32 1193, i32 7256 }, %struct.reg_default { i32 1194, i32 62323 }, %struct.reg_default { i32 1195, i32 2644 }, %struct.reg_default { i32 1196, i32 1368 }, %struct.reg_default { i32 1197, i32 5774 }, %struct.reg_default { i32 1198, i32 63529 }, %struct.reg_default { i32 1199, i32 1965 }, %struct.reg_default { i32 1200, i32 4355 }, %struct.reg_default { i32 1201, i32 1380 }, %struct.reg_default { i32 1202, i32 1369 }, %struct.reg_default { i32 1203, i32 16384 }, %struct.reg_default { i32 1204, i32 0 }, %struct.reg_default { i32 1280, i32 192 }, %struct.reg_default { i32 1281, i32 192 }, %struct.reg_default { i32 1282, i32 192 }, %struct.reg_default { i32 1283, i32 192 }, %struct.reg_default { i32 1296, i32 0 }, %struct.reg_default { i32 1312, i32 512 }, %struct.reg_default { i32 1313, i32 16 }, %struct.reg_default { i32 1328, i32 104 }, %struct.reg_default { i32 1344, i32 152 }, %struct.reg_default { i32 1345, i32 2117 }, %struct.reg_default { i32 1346, i32 0 }, %struct.reg_default { i32 1347, i32 0 }, %struct.reg_default { i32 1348, i32 0 }, %struct.reg_default { i32 1408, i32 25368 }, %struct.reg_default { i32 1409, i32 25344 }, %struct.reg_default { i32 1410, i32 4042 }, %struct.reg_default { i32 1411, i32 1024 }, %struct.reg_default { i32 1412, i32 216 }, %struct.reg_default { i32 1413, i32 7861 }, %struct.reg_default { i32 1414, i32 61765 }, %struct.reg_default { i32 1415, i32 2933 }, %struct.reg_default { i32 1416, i32 453 }, %struct.reg_default { i32 1417, i32 7256 }, %struct.reg_default { i32 1418, i32 62323 }, %struct.reg_default { i32 1419, i32 2644 }, %struct.reg_default { i32 1420, i32 1368 }, %struct.reg_default { i32 1421, i32 5774 }, %struct.reg_default { i32 1422, i32 63529 }, %struct.reg_default { i32 1423, i32 1965 }, %struct.reg_default { i32 1424, i32 4355 }, %struct.reg_default { i32 1425, i32 1380 }, %struct.reg_default { i32 1426, i32 1369 }, %struct.reg_default { i32 1427, i32 16384 }, %struct.reg_default { i32 1428, i32 0 }, %struct.reg_default { i32 1536, i32 0 }, %struct.reg_default { i32 1537, i32 0 }, %struct.reg_default { i32 1538, i32 0 }, %struct.reg_default { i32 1539, i32 0 }, %struct.reg_default { i32 1540, i32 0 }, %struct.reg_default { i32 1541, i32 0 }, %struct.reg_default { i32 1542, i32 0 }, %struct.reg_default { i32 1543, i32 0 }, %struct.reg_default { i32 1544, i32 0 }, %struct.reg_default { i32 1545, i32 0 }, %struct.reg_default { i32 1552, i32 704 }, %struct.reg_default { i32 1553, i32 704 }, %struct.reg_default { i32 1554, i32 704 }, %struct.reg_default { i32 1555, i32 704 }, %struct.reg_default { i32 1556, i32 0 }, %struct.reg_default { i32 1568, i32 2 }, %struct.reg_default { i32 1569, i32 0 }, %struct.reg_default { i32 1792, i32 33024 }, %struct.reg_default { i32 1793, i32 41217 }, %struct.reg_default { i32 1794, i32 41217 }, %struct.reg_default { i32 1795, i32 41217 }, %struct.reg_default { i32 1796, i32 41217 }, %struct.reg_default { i32 1797, i32 41217 }, %struct.reg_default { i32 1799, i32 41217 }, %struct.reg_default { i32 1800, i32 41217 }, %struct.reg_default { i32 1801, i32 41217 }, %struct.reg_default { i32 1802, i32 41217 }, %struct.reg_default { i32 1824, i32 0 }, %struct.reg_default { i32 1825, i32 342 }, %struct.reg_default { i32 1848, i32 2047 }, %struct.reg_default { i32 1849, i32 65519 }, %struct.reg_default { i32 1856, i32 0 }, %struct.reg_default { i32 1864, i32 63 }, %struct.reg_default { i32 2304, i32 7168 }, %struct.reg_default { i32 2305, i32 0 }, %struct.reg_default { i32 2573, i32 0 }, %struct.reg_default { i32 9216, i32 63 }, %struct.reg_default { i32 9217, i32 35800 }, %struct.reg_default { i32 9218, i32 50 }, %struct.reg_default { i32 9219, i32 62765 }, %struct.reg_default { i32 9220, i32 101 }, %struct.reg_default { i32 9221, i32 44172 }, %struct.reg_default { i32 9222, i32 107 }, %struct.reg_default { i32 9223, i32 57479 }, %struct.reg_default { i32 9224, i32 114 }, %struct.reg_default { i32 9225, i32 5251 }, %struct.reg_default { i32 9226, i32 114 }, %struct.reg_default { i32 9227, i32 5251 }, %struct.reg_default { i32 9228, i32 67 }, %struct.reg_default { i32 9229, i32 13605 }, %struct.reg_default { i32 9230, i32 6 }, %struct.reg_default { i32 9231, i32 27210 }, %struct.reg_default { i32 9232, i32 67 }, %struct.reg_default { i32 9233, i32 24697 }, %struct.reg_default { i32 9234, i32 12 }, %struct.reg_default { i32 9235, i32 52429 }, %struct.reg_default { i32 9236, i32 0 }, %struct.reg_default { i32 9237, i32 2048 }, %struct.reg_default { i32 9238, i32 63 }, %struct.reg_default { i32 9239, i32 35800 }, %struct.reg_default { i32 9240, i32 50 }, %struct.reg_default { i32 9241, i32 62765 }, %struct.reg_default { i32 9242, i32 101 }, %struct.reg_default { i32 9243, i32 44172 }, %struct.reg_default { i32 9244, i32 107 }, %struct.reg_default { i32 9245, i32 57479 }, %struct.reg_default { i32 9246, i32 114 }, %struct.reg_default { i32 9247, i32 5251 }, %struct.reg_default { i32 9248, i32 114 }, %struct.reg_default { i32 9249, i32 5251 }, %struct.reg_default { i32 9250, i32 67 }, %struct.reg_default { i32 9251, i32 13605 }, %struct.reg_default { i32 9252, i32 6 }, %struct.reg_default { i32 9253, i32 27210 }, %struct.reg_default { i32 9254, i32 67 }, %struct.reg_default { i32 9255, i32 24697 }, %struct.reg_default { i32 9256, i32 12 }, %struct.reg_default { i32 9257, i32 52429 }, %struct.reg_default { i32 9258, i32 0 }, %struct.reg_default { i32 9259, i32 2048 }, %struct.reg_default { i32 9260, i32 90 }, %struct.reg_default { i32 9261, i32 32506 }, %struct.reg_default { i32 9262, i32 90 }, %struct.reg_default { i32 9263, i32 32506 }, %struct.reg_default { i32 9728, i32 167 }, %struct.reg_default { i32 9729, i32 3356 }, %struct.reg_default { i32 9730, i32 131 }, %struct.reg_default { i32 9731, i32 39085 }, %struct.reg_default { i32 9734, i32 8 }, %struct.reg_default { i32 9735, i32 59298 }, %struct.reg_default { i32 9738, i32 85 }, %struct.reg_default { i32 9739, i32 35915 }], [600 x i8] zeroinitializer }, align 32
@wm8958_regmap_config = dso_local global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr @wm8958_readable_register, ptr @wm8958_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 12799, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8958_defaults, i32 293, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_wm8958_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8958_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8958_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8958_regmap_config to i32), ptr @__kstrtab_wm8958_regmap_config, ptr @__kstrtabns_wm8958_regmap_config }, section "___ksymtab+wm8958_regmap_config", align 4
@wm8994_base_regmap_config = dso_local global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_wm8994_base_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8994_base_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8994_base_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8994_base_regmap_config to i32), ptr @__kstrtab_wm8994_base_regmap_config, ptr @__kstrtabns_wm8994_base_regmap_config }, section "___ksymtab+wm8994_base_regmap_config", align 4
@__sancov_gen_cov_switch_values = internal global [240 x i64] [i64 238, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 21, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 59, i64 60, i64 61, i64 62, i64 76, i64 77, i64 81, i64 84, i64 85, i64 87, i64 88, i64 89, i64 96, i64 208, i64 209, i64 210, i64 256, i64 257, i64 512, i64 513, i64 516, i64 517, i64 520, i64 521, i64 528, i64 529, i64 530, i64 544, i64 545, i64 546, i64 547, i64 548, i64 550, i64 551, i64 576, i64 577, i64 578, i64 579, i64 580, i64 582, i64 583, i64 768, i64 769, i64 770, i64 771, i64 772, i64 773, i64 774, i64 775, i64 784, i64 785, i64 786, i64 787, i64 788, i64 789, i64 790, i64 791, i64 792, i64 800, i64 801, i64 802, i64 803, i64 1024, i64 1025, i64 1026, i64 1027, i64 1040, i64 1041, i64 1056, i64 1057, i64 1058, i64 1059, i64 1072, i64 1073, i64 1088, i64 1089, i64 1090, i64 1091, i64 1092, i64 1104, i64 1105, i64 1106, i64 1107, i64 1108, i64 1152, i64 1153, i64 1154, i64 1155, i64 1156, i64 1157, i64 1158, i64 1159, i64 1160, i64 1161, i64 1162, i64 1163, i64 1164, i64 1165, i64 1166, i64 1167, i64 1168, i64 1169, i64 1170, i64 1171, i64 1172, i64 1184, i64 1185, i64 1186, i64 1187, i64 1188, i64 1189, i64 1190, i64 1191, i64 1192, i64 1193, i64 1194, i64 1195, i64 1196, i64 1197, i64 1198, i64 1199, i64 1200, i64 1201, i64 1202, i64 1203, i64 1204, i64 1280, i64 1281, i64 1282, i64 1283, i64 1296, i64 1312, i64 1313, i64 1328, i64 1344, i64 1345, i64 1346, i64 1347, i64 1348, i64 1408, i64 1409, i64 1410, i64 1411, i64 1412, i64 1413, i64 1414, i64 1415, i64 1416, i64 1417, i64 1418, i64 1419, i64 1420, i64 1421, i64 1422, i64 1423, i64 1424, i64 1425, i64 1426, i64 1427, i64 1428, i64 1536, i64 1537, i64 1538, i64 1539, i64 1540, i64 1541, i64 1542, i64 1543, i64 1544, i64 1545, i64 1552, i64 1553, i64 1554, i64 1555, i64 1556, i64 1568, i64 1569, i64 1792, i64 1793, i64 1794, i64 1795, i64 1796, i64 1797, i64 1799, i64 1800, i64 1801, i64 1802, i64 1824, i64 1825, i64 1840, i64 1841, i64 1842, i64 1848, i64 1849, i64 1856, i64 1864]
@__sancov_gen_cov_switch_values.1 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 84, i64 88, i64 89, i64 210, i64 530, i64 1797, i64 1840, i64 1841]
@__sancov_gen_cov_switch_values.2 = internal global [47 x i64] [i64 45, i64 32, i64 58, i64 88, i64 272, i64 273, i64 1028, i64 1029, i64 1030, i64 1031, i64 1041, i64 1058, i64 1059, i64 1073, i64 1104, i64 1105, i64 1106, i64 1107, i64 1108, i64 1184, i64 1185, i64 1186, i64 1187, i64 1188, i64 1189, i64 1190, i64 1191, i64 1192, i64 1193, i64 1194, i64 1195, i64 1196, i64 1197, i64 1198, i64 1199, i64 1200, i64 1201, i64 1202, i64 1203, i64 1204, i64 1539, i64 1540, i64 1541, i64 1544, i64 1545, i64 1554, i64 1555]
@__sancov_gen_cov_switch_values.3 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 84, i64 88, i64 89, i64 210, i64 530, i64 1840, i64 1841]
@__sancov_gen_cov_switch_values.4 = internal global [103 x i64] [i64 101, i64 32, i64 2304, i64 2305, i64 2560, i64 2561, i64 2562, i64 2563, i64 2564, i64 2565, i64 2566, i64 2567, i64 2568, i64 2569, i64 2570, i64 2571, i64 2572, i64 2573, i64 2574, i64 2575, i64 2576, i64 2577, i64 2578, i64 2579, i64 2580, i64 2581, i64 2582, i64 2583, i64 2584, i64 2585, i64 2586, i64 2587, i64 2588, i64 2589, i64 2590, i64 2591, i64 2592, i64 8192, i64 8193, i64 8194, i64 8195, i64 8196, i64 8197, i64 8198, i64 8199, i64 8200, i64 8201, i64 9216, i64 9217, i64 9218, i64 9219, i64 9220, i64 9221, i64 9222, i64 9223, i64 9224, i64 9225, i64 9226, i64 9227, i64 9228, i64 9229, i64 9230, i64 9231, i64 9232, i64 9233, i64 9234, i64 9235, i64 9236, i64 9237, i64 9238, i64 9239, i64 9240, i64 9241, i64 9242, i64 9243, i64 9244, i64 9245, i64 9246, i64 9247, i64 9248, i64 9249, i64 9250, i64 9251, i64 9252, i64 9253, i64 9254, i64 9255, i64 9256, i64 9257, i64 9258, i64 9259, i64 9260, i64 9261, i64 9262, i64 9263, i64 9728, i64 9729, i64 9730, i64 9731, i64 9734, i64 9735, i64 9738, i64 9739]
@__sancov_gen_cov_switch_values.5 = internal global [31 x i64] [i64 29, i64 32, i64 0, i64 84, i64 88, i64 89, i64 210, i64 530, i64 1840, i64 1841, i64 2560, i64 2561, i64 2562, i64 2563, i64 2564, i64 2565, i64 2573, i64 2589, i64 2590, i64 2591, i64 2592, i64 8192, i64 8193, i64 8194, i64 8195, i64 8196, i64 8197, i64 8198, i64 8199, i64 8200, i64 8201]
@___asan_gen_.6 = private unnamed_addr constant [16 x i8] c"wm1811_defaults\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 17, i32 33 }
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"wm1811_regmap_config\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 1237, i32 22 }
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"wm8994_defaults\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 249, i32 33 }
@___asan_gen_.15 = private unnamed_addr constant [21 x i8] c"wm8994_regmap_config\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 1252, i32 22 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"wm8958_defaults\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 468, i32 33 }
@___asan_gen_.21 = private unnamed_addr constant [21 x i8] c"wm8958_regmap_config\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 1267, i32 22 }
@___asan_gen_.24 = private unnamed_addr constant [26 x i8] c"wm8994_base_regmap_config\00", align 1
@___asan_gen_.25 = private constant [31 x i8] c"../drivers/mfd/wm8994-regmap.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 1282, i32 22 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_wm1811_regmap_config, ptr @__ksymtab_wm8958_regmap_config, ptr @__ksymtab_wm8994_base_regmap_config, ptr @__ksymtab_wm8994_regmap_config, ptr @wm1811_defaults, ptr @wm1811_regmap_config, ptr @wm8994_defaults, ptr @wm8994_regmap_config, ptr @wm8958_defaults, ptr @wm8958_regmap_config, ptr @wm8994_base_regmap_config], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1811_defaults to i32), i32 1832, i32 2304, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1811_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_defaults to i32), i32 1728, i32 2144, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8958_defaults to i32), i32 2344, i32 2944, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8958_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_base_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm1811_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge1
    i32 2, label %entry.return_crit_edge2
    i32 3, label %entry.return_crit_edge3
    i32 4, label %entry.return_crit_edge4
    i32 5, label %entry.return_crit_edge5
    i32 6, label %entry.return_crit_edge6
    i32 21, label %entry.return_crit_edge7
    i32 24, label %entry.return_crit_edge8
    i32 25, label %entry.return_crit_edge9
    i32 26, label %entry.return_crit_edge10
    i32 27, label %entry.return_crit_edge11
    i32 28, label %entry.return_crit_edge12
    i32 29, label %entry.return_crit_edge13
    i32 30, label %entry.return_crit_edge14
    i32 31, label %entry.return_crit_edge15
    i32 32, label %entry.return_crit_edge16
    i32 33, label %entry.return_crit_edge17
    i32 34, label %entry.return_crit_edge18
    i32 35, label %entry.return_crit_edge19
    i32 36, label %entry.return_crit_edge20
    i32 37, label %entry.return_crit_edge21
    i32 38, label %entry.return_crit_edge22
    i32 39, label %entry.return_crit_edge23
    i32 40, label %entry.return_crit_edge24
    i32 41, label %entry.return_crit_edge25
    i32 42, label %entry.return_crit_edge26
    i32 43, label %entry.return_crit_edge27
    i32 44, label %entry.return_crit_edge28
    i32 45, label %entry.return_crit_edge29
    i32 46, label %entry.return_crit_edge30
    i32 47, label %entry.return_crit_edge31
    i32 48, label %entry.return_crit_edge32
    i32 49, label %entry.return_crit_edge33
    i32 50, label %entry.return_crit_edge34
    i32 51, label %entry.return_crit_edge35
    i32 52, label %entry.return_crit_edge36
    i32 53, label %entry.return_crit_edge37
    i32 54, label %entry.return_crit_edge38
    i32 55, label %entry.return_crit_edge39
    i32 56, label %entry.return_crit_edge40
    i32 57, label %entry.return_crit_edge41
    i32 59, label %entry.return_crit_edge42
    i32 60, label %entry.return_crit_edge43
    i32 61, label %entry.return_crit_edge44
    i32 62, label %entry.return_crit_edge45
    i32 76, label %entry.return_crit_edge46
    i32 77, label %entry.return_crit_edge47
    i32 81, label %entry.return_crit_edge48
    i32 84, label %entry.return_crit_edge49
    i32 85, label %entry.return_crit_edge50
    i32 88, label %entry.return_crit_edge51
    i32 87, label %entry.return_crit_edge52
    i32 89, label %entry.return_crit_edge53
    i32 96, label %entry.return_crit_edge54
    i32 208, label %entry.return_crit_edge55
    i32 209, label %entry.return_crit_edge56
    i32 210, label %entry.return_crit_edge57
    i32 256, label %entry.return_crit_edge58
    i32 257, label %entry.return_crit_edge59
    i32 512, label %entry.return_crit_edge60
    i32 513, label %entry.return_crit_edge61
    i32 516, label %entry.return_crit_edge62
    i32 517, label %entry.return_crit_edge63
    i32 520, label %entry.return_crit_edge64
    i32 521, label %entry.return_crit_edge65
    i32 528, label %entry.return_crit_edge66
    i32 529, label %entry.return_crit_edge67
    i32 530, label %entry.return_crit_edge68
    i32 544, label %entry.return_crit_edge69
    i32 545, label %entry.return_crit_edge70
    i32 546, label %entry.return_crit_edge71
    i32 547, label %entry.return_crit_edge72
    i32 548, label %entry.return_crit_edge73
    i32 550, label %entry.return_crit_edge74
    i32 551, label %entry.return_crit_edge75
    i32 576, label %entry.return_crit_edge76
    i32 577, label %entry.return_crit_edge77
    i32 578, label %entry.return_crit_edge78
    i32 579, label %entry.return_crit_edge79
    i32 580, label %entry.return_crit_edge80
    i32 582, label %entry.return_crit_edge81
    i32 583, label %entry.return_crit_edge82
    i32 768, label %entry.return_crit_edge83
    i32 769, label %entry.return_crit_edge84
    i32 770, label %entry.return_crit_edge85
    i32 771, label %entry.return_crit_edge86
    i32 772, label %entry.return_crit_edge87
    i32 773, label %entry.return_crit_edge88
    i32 774, label %entry.return_crit_edge89
    i32 775, label %entry.return_crit_edge90
    i32 784, label %entry.return_crit_edge91
    i32 785, label %entry.return_crit_edge92
    i32 786, label %entry.return_crit_edge93
    i32 787, label %entry.return_crit_edge94
    i32 788, label %entry.return_crit_edge95
    i32 789, label %entry.return_crit_edge96
    i32 790, label %entry.return_crit_edge97
    i32 791, label %entry.return_crit_edge98
    i32 792, label %entry.return_crit_edge99
    i32 800, label %entry.return_crit_edge100
    i32 801, label %entry.return_crit_edge101
    i32 802, label %entry.return_crit_edge102
    i32 803, label %entry.return_crit_edge103
    i32 1024, label %entry.return_crit_edge104
    i32 1025, label %entry.return_crit_edge105
    i32 1026, label %entry.return_crit_edge106
    i32 1027, label %entry.return_crit_edge107
    i32 1040, label %entry.return_crit_edge108
    i32 1041, label %entry.return_crit_edge109
    i32 1056, label %entry.return_crit_edge110
    i32 1057, label %entry.return_crit_edge111
    i32 1058, label %entry.return_crit_edge112
    i32 1059, label %entry.return_crit_edge113
    i32 1072, label %entry.return_crit_edge114
    i32 1073, label %entry.return_crit_edge115
    i32 1088, label %entry.return_crit_edge116
    i32 1089, label %entry.return_crit_edge117
    i32 1090, label %entry.return_crit_edge118
    i32 1091, label %entry.return_crit_edge119
    i32 1092, label %entry.return_crit_edge120
    i32 1104, label %entry.return_crit_edge121
    i32 1105, label %entry.return_crit_edge122
    i32 1106, label %entry.return_crit_edge123
    i32 1107, label %entry.return_crit_edge124
    i32 1108, label %entry.return_crit_edge125
    i32 1152, label %entry.return_crit_edge126
    i32 1153, label %entry.return_crit_edge127
    i32 1154, label %entry.return_crit_edge128
    i32 1155, label %entry.return_crit_edge129
    i32 1156, label %entry.return_crit_edge130
    i32 1157, label %entry.return_crit_edge131
    i32 1158, label %entry.return_crit_edge132
    i32 1159, label %entry.return_crit_edge133
    i32 1160, label %entry.return_crit_edge134
    i32 1161, label %entry.return_crit_edge135
    i32 1162, label %entry.return_crit_edge136
    i32 1163, label %entry.return_crit_edge137
    i32 1164, label %entry.return_crit_edge138
    i32 1165, label %entry.return_crit_edge139
    i32 1166, label %entry.return_crit_edge140
    i32 1167, label %entry.return_crit_edge141
    i32 1168, label %entry.return_crit_edge142
    i32 1169, label %entry.return_crit_edge143
    i32 1170, label %entry.return_crit_edge144
    i32 1171, label %entry.return_crit_edge145
    i32 1172, label %entry.return_crit_edge146
    i32 1184, label %entry.return_crit_edge147
    i32 1185, label %entry.return_crit_edge148
    i32 1186, label %entry.return_crit_edge149
    i32 1187, label %entry.return_crit_edge150
    i32 1188, label %entry.return_crit_edge151
    i32 1189, label %entry.return_crit_edge152
    i32 1190, label %entry.return_crit_edge153
    i32 1191, label %entry.return_crit_edge154
    i32 1192, label %entry.return_crit_edge155
    i32 1193, label %entry.return_crit_edge156
    i32 1194, label %entry.return_crit_edge157
    i32 1195, label %entry.return_crit_edge158
    i32 1196, label %entry.return_crit_edge159
    i32 1197, label %entry.return_crit_edge160
    i32 1198, label %entry.return_crit_edge161
    i32 1199, label %entry.return_crit_edge162
    i32 1200, label %entry.return_crit_edge163
    i32 1201, label %entry.return_crit_edge164
    i32 1202, label %entry.return_crit_edge165
    i32 1203, label %entry.return_crit_edge166
    i32 1204, label %entry.return_crit_edge167
    i32 1280, label %entry.return_crit_edge168
    i32 1281, label %entry.return_crit_edge169
    i32 1282, label %entry.return_crit_edge170
    i32 1283, label %entry.return_crit_edge171
    i32 1296, label %entry.return_crit_edge172
    i32 1312, label %entry.return_crit_edge173
    i32 1313, label %entry.return_crit_edge174
    i32 1328, label %entry.return_crit_edge175
    i32 1344, label %entry.return_crit_edge176
    i32 1345, label %entry.return_crit_edge177
    i32 1346, label %entry.return_crit_edge178
    i32 1347, label %entry.return_crit_edge179
    i32 1348, label %entry.return_crit_edge180
    i32 1408, label %entry.return_crit_edge181
    i32 1409, label %entry.return_crit_edge182
    i32 1410, label %entry.return_crit_edge183
    i32 1411, label %entry.return_crit_edge184
    i32 1412, label %entry.return_crit_edge185
    i32 1413, label %entry.return_crit_edge186
    i32 1414, label %entry.return_crit_edge187
    i32 1415, label %entry.return_crit_edge188
    i32 1416, label %entry.return_crit_edge189
    i32 1417, label %entry.return_crit_edge190
    i32 1418, label %entry.return_crit_edge191
    i32 1419, label %entry.return_crit_edge192
    i32 1420, label %entry.return_crit_edge193
    i32 1421, label %entry.return_crit_edge194
    i32 1422, label %entry.return_crit_edge195
    i32 1423, label %entry.return_crit_edge196
    i32 1424, label %entry.return_crit_edge197
    i32 1425, label %entry.return_crit_edge198
    i32 1426, label %entry.return_crit_edge199
    i32 1427, label %entry.return_crit_edge200
    i32 1428, label %entry.return_crit_edge201
    i32 1536, label %entry.return_crit_edge202
    i32 1537, label %entry.return_crit_edge203
    i32 1538, label %entry.return_crit_edge204
    i32 1539, label %entry.return_crit_edge205
    i32 1540, label %entry.return_crit_edge206
    i32 1541, label %entry.return_crit_edge207
    i32 1542, label %entry.return_crit_edge208
    i32 1543, label %entry.return_crit_edge209
    i32 1544, label %entry.return_crit_edge210
    i32 1545, label %entry.return_crit_edge211
    i32 1552, label %entry.return_crit_edge212
    i32 1553, label %entry.return_crit_edge213
    i32 1554, label %entry.return_crit_edge214
    i32 1555, label %entry.return_crit_edge215
    i32 1556, label %entry.return_crit_edge216
    i32 1568, label %entry.return_crit_edge217
    i32 1569, label %entry.return_crit_edge218
    i32 1792, label %entry.return_crit_edge219
    i32 1793, label %entry.return_crit_edge220
    i32 1794, label %entry.return_crit_edge221
    i32 1795, label %entry.return_crit_edge222
    i32 1796, label %entry.return_crit_edge223
    i32 1797, label %entry.return_crit_edge224
    i32 1799, label %entry.return_crit_edge225
    i32 1800, label %entry.return_crit_edge226
    i32 1801, label %entry.return_crit_edge227
    i32 1802, label %entry.return_crit_edge228
    i32 1824, label %entry.return_crit_edge229
    i32 1825, label %entry.return_crit_edge230
    i32 1840, label %entry.return_crit_edge231
    i32 1841, label %entry.return_crit_edge232
    i32 1842, label %entry.return_crit_edge233
    i32 1848, label %entry.return_crit_edge234
    i32 1849, label %entry.return_crit_edge235
    i32 1856, label %entry.return_crit_edge236
    i32 1864, label %entry.return_crit_edge237
  ]

entry.return_crit_edge237:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge236:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge235:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge234:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge233:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge232:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge231:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge230:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge229:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge228:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge227:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge226:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge225:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge224:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge223:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge222:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge221:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge220:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge219:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge218:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge217:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge216:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge215:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge214:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge213:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge212:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge211:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge210:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge209:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge208:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge207:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge206:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge205:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge204:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge203:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge202:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge201:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge200:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge199:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge198:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge197:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge196:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge195:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge194:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge193:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge192:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge191:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge190:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge189:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge188:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge187:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge186:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge185:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge184:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge183:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge182:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge181:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge180:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge179:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge178:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge177:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge176:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge175:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge174:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge173:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge172:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge171:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge170:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge169:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge168:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge167:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge166:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge165:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge164:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge163:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge162:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge161:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge160:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge159:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge158:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge157:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge156:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge155:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge154:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge153:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge152:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge151:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge150:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge149:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge148:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge147:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge146:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge145:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge143:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge140:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge139:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge133:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137, %entry.return_crit_edge138, %entry.return_crit_edge139, %entry.return_crit_edge140, %entry.return_crit_edge141, %entry.return_crit_edge142, %entry.return_crit_edge143, %entry.return_crit_edge144, %entry.return_crit_edge145, %entry.return_crit_edge146, %entry.return_crit_edge147, %entry.return_crit_edge148, %entry.return_crit_edge149, %entry.return_crit_edge150, %entry.return_crit_edge151, %entry.return_crit_edge152, %entry.return_crit_edge153, %entry.return_crit_edge154, %entry.return_crit_edge155, %entry.return_crit_edge156, %entry.return_crit_edge157, %entry.return_crit_edge158, %entry.return_crit_edge159, %entry.return_crit_edge160, %entry.return_crit_edge161, %entry.return_crit_edge162, %entry.return_crit_edge163, %entry.return_crit_edge164, %entry.return_crit_edge165, %entry.return_crit_edge166, %entry.return_crit_edge167, %entry.return_crit_edge168, %entry.return_crit_edge169, %entry.return_crit_edge170, %entry.return_crit_edge171, %entry.return_crit_edge172, %entry.return_crit_edge173, %entry.return_crit_edge174, %entry.return_crit_edge175, %entry.return_crit_edge176, %entry.return_crit_edge177, %entry.return_crit_edge178, %entry.return_crit_edge179, %entry.return_crit_edge180, %entry.return_crit_edge181, %entry.return_crit_edge182, %entry.return_crit_edge183, %entry.return_crit_edge184, %entry.return_crit_edge185, %entry.return_crit_edge186, %entry.return_crit_edge187, %entry.return_crit_edge188, %entry.return_crit_edge189, %entry.return_crit_edge190, %entry.return_crit_edge191, %entry.return_crit_edge192, %entry.return_crit_edge193, %entry.return_crit_edge194, %entry.return_crit_edge195, %entry.return_crit_edge196, %entry.return_crit_edge197, %entry.return_crit_edge198, %entry.return_crit_edge199, %entry.return_crit_edge200, %entry.return_crit_edge201, %entry.return_crit_edge202, %entry.return_crit_edge203, %entry.return_crit_edge204, %entry.return_crit_edge205, %entry.return_crit_edge206, %entry.return_crit_edge207, %entry.return_crit_edge208, %entry.return_crit_edge209, %entry.return_crit_edge210, %entry.return_crit_edge211, %entry.return_crit_edge212, %entry.return_crit_edge213, %entry.return_crit_edge214, %entry.return_crit_edge215, %entry.return_crit_edge216, %entry.return_crit_edge217, %entry.return_crit_edge218, %entry.return_crit_edge219, %entry.return_crit_edge220, %entry.return_crit_edge221, %entry.return_crit_edge222, %entry.return_crit_edge223, %entry.return_crit_edge224, %entry.return_crit_edge225, %entry.return_crit_edge226, %entry.return_crit_edge227, %entry.return_crit_edge228, %entry.return_crit_edge229, %entry.return_crit_edge230, %entry.return_crit_edge231, %entry.return_crit_edge232, %entry.return_crit_edge233, %entry.return_crit_edge234, %entry.return_crit_edge235, %entry.return_crit_edge236, %entry.return_crit_edge237
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ], [ true, %entry.return_crit_edge138 ], [ true, %entry.return_crit_edge139 ], [ true, %entry.return_crit_edge140 ], [ true, %entry.return_crit_edge141 ], [ true, %entry.return_crit_edge142 ], [ true, %entry.return_crit_edge143 ], [ true, %entry.return_crit_edge144 ], [ true, %entry.return_crit_edge145 ], [ true, %entry.return_crit_edge146 ], [ true, %entry.return_crit_edge147 ], [ true, %entry.return_crit_edge148 ], [ true, %entry.return_crit_edge149 ], [ true, %entry.return_crit_edge150 ], [ true, %entry.return_crit_edge151 ], [ true, %entry.return_crit_edge152 ], [ true, %entry.return_crit_edge153 ], [ true, %entry.return_crit_edge154 ], [ true, %entry.return_crit_edge155 ], [ true, %entry.return_crit_edge156 ], [ true, %entry.return_crit_edge157 ], [ true, %entry.return_crit_edge158 ], [ true, %entry.return_crit_edge159 ], [ true, %entry.return_crit_edge160 ], [ true, %entry.return_crit_edge161 ], [ true, %entry.return_crit_edge162 ], [ true, %entry.return_crit_edge163 ], [ true, %entry.return_crit_edge164 ], [ true, %entry.return_crit_edge165 ], [ true, %entry.return_crit_edge166 ], [ true, %entry.return_crit_edge167 ], [ true, %entry.return_crit_edge168 ], [ true, %entry.return_crit_edge169 ], [ true, %entry.return_crit_edge170 ], [ true, %entry.return_crit_edge171 ], [ true, %entry.return_crit_edge172 ], [ true, %entry.return_crit_edge173 ], [ true, %entry.return_crit_edge174 ], [ true, %entry.return_crit_edge175 ], [ true, %entry.return_crit_edge176 ], [ true, %entry.return_crit_edge177 ], [ true, %entry.return_crit_edge178 ], [ true, %entry.return_crit_edge179 ], [ true, %entry.return_crit_edge180 ], [ true, %entry.return_crit_edge181 ], [ true, %entry.return_crit_edge182 ], [ true, %entry.return_crit_edge183 ], [ true, %entry.return_crit_edge184 ], [ true, %entry.return_crit_edge185 ], [ true, %entry.return_crit_edge186 ], [ true, %entry.return_crit_edge187 ], [ true, %entry.return_crit_edge188 ], [ true, %entry.return_crit_edge189 ], [ true, %entry.return_crit_edge190 ], [ true, %entry.return_crit_edge191 ], [ true, %entry.return_crit_edge192 ], [ true, %entry.return_crit_edge193 ], [ true, %entry.return_crit_edge194 ], [ true, %entry.return_crit_edge195 ], [ true, %entry.return_crit_edge196 ], [ true, %entry.return_crit_edge197 ], [ true, %entry.return_crit_edge198 ], [ true, %entry.return_crit_edge199 ], [ true, %entry.return_crit_edge200 ], [ true, %entry.return_crit_edge201 ], [ true, %entry.return_crit_edge202 ], [ true, %entry.return_crit_edge203 ], [ true, %entry.return_crit_edge204 ], [ true, %entry.return_crit_edge205 ], [ true, %entry.return_crit_edge206 ], [ true, %entry.return_crit_edge207 ], [ true, %entry.return_crit_edge208 ], [ true, %entry.return_crit_edge209 ], [ true, %entry.return_crit_edge210 ], [ true, %entry.return_crit_edge211 ], [ true, %entry.return_crit_edge212 ], [ true, %entry.return_crit_edge213 ], [ true, %entry.return_crit_edge214 ], [ true, %entry.return_crit_edge215 ], [ true, %entry.return_crit_edge216 ], [ true, %entry.return_crit_edge217 ], [ true, %entry.return_crit_edge218 ], [ true, %entry.return_crit_edge219 ], [ true, %entry.return_crit_edge220 ], [ true, %entry.return_crit_edge221 ], [ true, %entry.return_crit_edge222 ], [ true, %entry.return_crit_edge223 ], [ true, %entry.return_crit_edge224 ], [ true, %entry.return_crit_edge225 ], [ true, %entry.return_crit_edge226 ], [ true, %entry.return_crit_edge227 ], [ true, %entry.return_crit_edge228 ], [ true, %entry.return_crit_edge229 ], [ true, %entry.return_crit_edge230 ], [ true, %entry.return_crit_edge231 ], [ true, %entry.return_crit_edge232 ], [ true, %entry.return_crit_edge233 ], [ true, %entry.return_crit_edge234 ], [ true, %entry.return_crit_edge235 ], [ true, %entry.return_crit_edge236 ], [ true, %entry.return_crit_edge237 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm1811_volatile_register(ptr nocapture noundef readonly %dev, i32 noundef %reg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %reg, label %sw.default.i [
    i32 1797, label %sw.bb
    i32 0, label %entry.cleanup_crit_edge
    i32 84, label %entry.cleanup_crit_edge6
    i32 88, label %entry.cleanup_crit_edge7
    i32 530, label %entry.cleanup_crit_edge8
    i32 210, label %entry.cleanup_crit_edge9
    i32 89, label %entry.cleanup_crit_edge10
    i32 1840, label %entry.cleanup_crit_edge11
    i32 1841, label %entry.cleanup_crit_edge12
  ]

entry.cleanup_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

entry.cleanup_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

entry.cleanup_crit_edge10:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

entry.cleanup_crit_edge9:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

entry.cleanup_crit_edge8:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

entry.cleanup_crit_edge7:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

entry.cleanup_crit_edge6:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %cust_id = getelementptr inbounds %struct.wm8994, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %cust_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cust_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  %revision = getelementptr inbounds %struct.wm8994, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp1 = icmp sgt i32 %6, 1
  br label %cleanup

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup:                                          ; preds = %sw.default.i, %lor.lhs.false, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge6, %entry.cleanup_crit_edge7, %entry.cleanup_crit_edge8, %entry.cleanup_crit_edge9, %entry.cleanup_crit_edge10, %entry.cleanup_crit_edge11, %entry.cleanup_crit_edge12
  %retval.0 = phi i1 [ true, %sw.bb.cleanup_crit_edge ], [ %cmp1, %lor.lhs.false ], [ false, %sw.default.i ], [ true, %entry.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge6 ], [ true, %entry.cleanup_crit_edge7 ], [ true, %entry.cleanup_crit_edge8 ], [ true, %entry.cleanup_crit_edge9 ], [ true, %entry.cleanup_crit_edge10 ], [ true, %entry.cleanup_crit_edge11 ], [ true, %entry.cleanup_crit_edge12 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8994_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %reg, label %sw.default [
    i32 88, label %entry.return_crit_edge
    i32 58, label %entry.return_crit_edge2
    i32 272, label %entry.return_crit_edge3
    i32 273, label %entry.return_crit_edge4
    i32 1028, label %entry.return_crit_edge5
    i32 1029, label %entry.return_crit_edge6
    i32 1030, label %entry.return_crit_edge7
    i32 1031, label %entry.return_crit_edge8
    i32 1041, label %entry.return_crit_edge9
    i32 1058, label %entry.return_crit_edge10
    i32 1059, label %entry.return_crit_edge11
    i32 1073, label %entry.return_crit_edge12
    i32 1104, label %entry.return_crit_edge13
    i32 1105, label %entry.return_crit_edge14
    i32 1106, label %entry.return_crit_edge15
    i32 1107, label %entry.return_crit_edge16
    i32 1108, label %entry.return_crit_edge17
    i32 1184, label %entry.return_crit_edge18
    i32 1185, label %entry.return_crit_edge19
    i32 1186, label %entry.return_crit_edge20
    i32 1187, label %entry.return_crit_edge21
    i32 1188, label %entry.return_crit_edge22
    i32 1189, label %entry.return_crit_edge23
    i32 1190, label %entry.return_crit_edge24
    i32 1191, label %entry.return_crit_edge25
    i32 1192, label %entry.return_crit_edge26
    i32 1193, label %entry.return_crit_edge27
    i32 1194, label %entry.return_crit_edge28
    i32 1195, label %entry.return_crit_edge29
    i32 1196, label %entry.return_crit_edge30
    i32 1197, label %entry.return_crit_edge31
    i32 1198, label %entry.return_crit_edge32
    i32 1199, label %entry.return_crit_edge33
    i32 1200, label %entry.return_crit_edge34
    i32 1201, label %entry.return_crit_edge35
    i32 1202, label %entry.return_crit_edge36
    i32 1203, label %entry.return_crit_edge37
    i32 1204, label %entry.return_crit_edge38
    i32 1539, label %entry.return_crit_edge39
    i32 1540, label %entry.return_crit_edge40
    i32 1541, label %entry.return_crit_edge41
    i32 1544, label %entry.return_crit_edge42
    i32 1545, label %entry.return_crit_edge43
    i32 1554, label %entry.return_crit_edge44
    i32 1555, label %entry.return_crit_edge45
  ]

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call zeroext i1 @wm1811_readable_register(ptr noundef %dev, i32 noundef %reg)
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45
  %retval.0 = phi i1 [ %call, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8994_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 84, label %entry.return_crit_edge1
    i32 88, label %entry.return_crit_edge2
    i32 530, label %entry.return_crit_edge3
    i32 210, label %entry.return_crit_edge4
    i32 89, label %entry.return_crit_edge5
    i32 1840, label %entry.return_crit_edge6
    i32 1841, label %entry.return_crit_edge7
  ]

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8958_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %reg, label %sw.default [
    i32 2304, label %entry.return_crit_edge
    i32 2305, label %entry.return_crit_edge2
    i32 2560, label %entry.return_crit_edge3
    i32 2561, label %entry.return_crit_edge4
    i32 2562, label %entry.return_crit_edge5
    i32 2563, label %entry.return_crit_edge6
    i32 2564, label %entry.return_crit_edge7
    i32 2565, label %entry.return_crit_edge8
    i32 2566, label %entry.return_crit_edge9
    i32 2567, label %entry.return_crit_edge10
    i32 2568, label %entry.return_crit_edge11
    i32 2569, label %entry.return_crit_edge12
    i32 2570, label %entry.return_crit_edge13
    i32 2571, label %entry.return_crit_edge14
    i32 2572, label %entry.return_crit_edge15
    i32 2573, label %entry.return_crit_edge16
    i32 2574, label %entry.return_crit_edge17
    i32 2575, label %entry.return_crit_edge18
    i32 2576, label %entry.return_crit_edge19
    i32 2577, label %entry.return_crit_edge20
    i32 2578, label %entry.return_crit_edge21
    i32 2579, label %entry.return_crit_edge22
    i32 2580, label %entry.return_crit_edge23
    i32 2581, label %entry.return_crit_edge24
    i32 2582, label %entry.return_crit_edge25
    i32 2583, label %entry.return_crit_edge26
    i32 2584, label %entry.return_crit_edge27
    i32 2585, label %entry.return_crit_edge28
    i32 2586, label %entry.return_crit_edge29
    i32 2587, label %entry.return_crit_edge30
    i32 2588, label %entry.return_crit_edge31
    i32 2589, label %entry.return_crit_edge32
    i32 2590, label %entry.return_crit_edge33
    i32 2591, label %entry.return_crit_edge34
    i32 2592, label %entry.return_crit_edge35
    i32 8192, label %entry.return_crit_edge36
    i32 8193, label %entry.return_crit_edge37
    i32 8194, label %entry.return_crit_edge38
    i32 8195, label %entry.return_crit_edge39
    i32 8196, label %entry.return_crit_edge40
    i32 8197, label %entry.return_crit_edge41
    i32 8198, label %entry.return_crit_edge42
    i32 8199, label %entry.return_crit_edge43
    i32 8200, label %entry.return_crit_edge44
    i32 8201, label %entry.return_crit_edge45
    i32 9216, label %entry.return_crit_edge46
    i32 9217, label %entry.return_crit_edge47
    i32 9218, label %entry.return_crit_edge48
    i32 9219, label %entry.return_crit_edge49
    i32 9220, label %entry.return_crit_edge50
    i32 9221, label %entry.return_crit_edge51
    i32 9222, label %entry.return_crit_edge52
    i32 9223, label %entry.return_crit_edge53
    i32 9224, label %entry.return_crit_edge54
    i32 9225, label %entry.return_crit_edge55
    i32 9226, label %entry.return_crit_edge56
    i32 9227, label %entry.return_crit_edge57
    i32 9228, label %entry.return_crit_edge58
    i32 9229, label %entry.return_crit_edge59
    i32 9230, label %entry.return_crit_edge60
    i32 9231, label %entry.return_crit_edge61
    i32 9232, label %entry.return_crit_edge62
    i32 9233, label %entry.return_crit_edge63
    i32 9234, label %entry.return_crit_edge64
    i32 9235, label %entry.return_crit_edge65
    i32 9236, label %entry.return_crit_edge66
    i32 9237, label %entry.return_crit_edge67
    i32 9238, label %entry.return_crit_edge68
    i32 9239, label %entry.return_crit_edge69
    i32 9240, label %entry.return_crit_edge70
    i32 9241, label %entry.return_crit_edge71
    i32 9242, label %entry.return_crit_edge72
    i32 9243, label %entry.return_crit_edge73
    i32 9244, label %entry.return_crit_edge74
    i32 9245, label %entry.return_crit_edge75
    i32 9246, label %entry.return_crit_edge76
    i32 9247, label %entry.return_crit_edge77
    i32 9248, label %entry.return_crit_edge78
    i32 9249, label %entry.return_crit_edge79
    i32 9250, label %entry.return_crit_edge80
    i32 9251, label %entry.return_crit_edge81
    i32 9252, label %entry.return_crit_edge82
    i32 9253, label %entry.return_crit_edge83
    i32 9254, label %entry.return_crit_edge84
    i32 9255, label %entry.return_crit_edge85
    i32 9256, label %entry.return_crit_edge86
    i32 9257, label %entry.return_crit_edge87
    i32 9258, label %entry.return_crit_edge88
    i32 9259, label %entry.return_crit_edge89
    i32 9260, label %entry.return_crit_edge90
    i32 9261, label %entry.return_crit_edge91
    i32 9262, label %entry.return_crit_edge92
    i32 9263, label %entry.return_crit_edge93
    i32 9728, label %entry.return_crit_edge94
    i32 9729, label %entry.return_crit_edge95
    i32 9730, label %entry.return_crit_edge96
    i32 9731, label %entry.return_crit_edge97
    i32 9734, label %entry.return_crit_edge98
    i32 9735, label %entry.return_crit_edge99
    i32 9738, label %entry.return_crit_edge100
    i32 9739, label %entry.return_crit_edge101
  ]

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call zeroext i1 @wm8994_readable_register(ptr noundef %dev, i32 noundef %reg)
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101
  %retval.0 = phi i1 [ %call, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8958_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %reg, label %sw.default.i [
    i32 2560, label %entry.return_crit_edge
    i32 2561, label %entry.return_crit_edge2
    i32 2562, label %entry.return_crit_edge3
    i32 2563, label %entry.return_crit_edge4
    i32 2564, label %entry.return_crit_edge5
    i32 2565, label %entry.return_crit_edge6
    i32 2573, label %entry.return_crit_edge7
    i32 2589, label %entry.return_crit_edge8
    i32 2590, label %entry.return_crit_edge9
    i32 2591, label %entry.return_crit_edge10
    i32 2592, label %entry.return_crit_edge11
    i32 8192, label %entry.return_crit_edge12
    i32 8193, label %entry.return_crit_edge13
    i32 8194, label %entry.return_crit_edge14
    i32 8195, label %entry.return_crit_edge15
    i32 8196, label %entry.return_crit_edge16
    i32 8197, label %entry.return_crit_edge17
    i32 8198, label %entry.return_crit_edge18
    i32 8199, label %entry.return_crit_edge19
    i32 8200, label %entry.return_crit_edge20
    i32 8201, label %entry.return_crit_edge21
    i32 0, label %entry.return_crit_edge22
    i32 84, label %entry.return_crit_edge23
    i32 88, label %entry.return_crit_edge24
    i32 530, label %entry.return_crit_edge25
    i32 210, label %entry.return_crit_edge26
    i32 89, label %entry.return_crit_edge27
    i32 1840, label %entry.return_crit_edge28
    i32 1841, label %entry.return_crit_edge29
  ]

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

return:                                           ; preds = %sw.default.i, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ false, %sw.default.i ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @wm1811_regmap_config, !1, !"wm1811_regmap_config", i1 false, i1 false}
!1 = !{!"../drivers/mfd/wm8994-regmap.c", i32 1237, i32 22}
!2 = !{ptr @__ksymtab_wm1811_regmap_config, !3, !"__ksymtab_wm1811_regmap_config", i1 false, i1 false}
!3 = !{!"../drivers/mfd/wm8994-regmap.c", i32 1250, i32 1}
!4 = !{ptr @wm8994_regmap_config, !5, !"wm8994_regmap_config", i1 false, i1 false}
!5 = !{!"../drivers/mfd/wm8994-regmap.c", i32 1252, i32 22}
!6 = !{ptr @__ksymtab_wm8994_regmap_config, !7, !"__ksymtab_wm8994_regmap_config", i1 false, i1 false}
!7 = !{!"../drivers/mfd/wm8994-regmap.c", i32 1265, i32 1}
!8 = !{ptr @wm8958_regmap_config, !9, !"wm8958_regmap_config", i1 false, i1 false}
!9 = !{!"../drivers/mfd/wm8994-regmap.c", i32 1267, i32 22}
!10 = !{ptr @__ksymtab_wm8958_regmap_config, !11, !"__ksymtab_wm8958_regmap_config", i1 false, i1 false}
!11 = !{!"../drivers/mfd/wm8994-regmap.c", i32 1280, i32 1}
!12 = !{ptr @wm8994_base_regmap_config, !13, !"wm8994_base_regmap_config", i1 false, i1 false}
!13 = !{!"../drivers/mfd/wm8994-regmap.c", i32 1282, i32 22}
!14 = !{ptr @__ksymtab_wm8994_base_regmap_config, !15, !"__ksymtab_wm8994_base_regmap_config", i1 false, i1 false}
!15 = !{!"../drivers/mfd/wm8994-regmap.c", i32 1286, i32 1}
!16 = !{ptr @wm1811_defaults, !17, !"wm1811_defaults", i1 false, i1 false}
!17 = !{!"../drivers/mfd/wm8994-regmap.c", i32 17, i32 33}
!18 = !{ptr @wm8994_defaults, !19, !"wm8994_defaults", i1 false, i1 false}
!19 = !{!"../drivers/mfd/wm8994-regmap.c", i32 249, i32 33}
!20 = !{ptr @wm8958_defaults, !21, !"wm8958_defaults", i1 false, i1 false}
!21 = !{!"../drivers/mfd/wm8994-regmap.c", i32 468, i32 33}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
