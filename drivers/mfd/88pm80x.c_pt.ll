; ModuleID = '/llk/IR_all_yes/drivers/mfd/88pm80x.c_pt.bc'
source_filename = "../drivers/mfd/88pm80x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pm80x_regmap_config\22, \22a\22\09"
module asm "\09.weak\09__crc_pm80x_regmap_config\09\09\09\09"
module asm "\09.long\09__crc_pm80x_regmap_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm80x_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22pm80x_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_pm80x_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pm80x_init\22, \22a\22\09"
module asm "\09.weak\09__crc_pm80x_init\09\09\09\09"
module asm "\09.long\09__crc_pm80x_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm80x_init:\09\09\09\09\09"
module asm "\09.asciz \09\22pm80x_init\22\09\09\09\09\09"
module asm "__kstrtabns_pm80x_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pm80x_deinit\22, \22a\22\09"
module asm "\09.weak\09__crc_pm80x_deinit\09\09\09\09"
module asm "\09.long\09__crc_pm80x_deinit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm80x_deinit:\09\09\09\09\09"
module asm "\09.asciz \09\22pm80x_deinit\22\09\09\09\09\09"
module asm "__kstrtabns_pm80x_deinit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pm80x_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_pm80x_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_pm80x_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm80x_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22pm80x_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_pm80x_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pm80x_chip_mapping = type { i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.pm80x_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.spinlock }

@pm80x_regmap_config = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_pm80x_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm80x_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_pm80x_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm80x_regmap_config to i32), ptr @__kstrtab_pm80x_regmap_config, ptr @__kstrtabns_pm80x_regmap_config }, section "___ksymtab_gpl+pm80x_regmap_config", align 4
@pm80x_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"88pm80x:63:(&pm80x_regmap_config)->lock\00", [56 x i8] zeroinitializer }, align 32
@pm80x_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 67, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pm80x_init\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mfd/88pm80x.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm80x_init._entry_ptr = internal global ptr @pm80x_init._entry, section ".printk_index", align 4
@pm80x_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 82, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read CHIP ID: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@pm80x_init._entry_ptr.8 = internal global ptr @pm80x_init._entry.6, section ".printk_index", align 4
@chip_mapping = internal constant { [3 x %struct.pm80x_chip_mapping], [40 x i8] } { [3 x %struct.pm80x_chip_mapping] [%struct.pm80x_chip_mapping { i32 3, i32 1 }, %struct.pm80x_chip_mapping { i32 0, i32 2 }, %struct.pm80x_chip_mapping { i32 4, i32 3 }], [40 x i8] zeroinitializer }, align 32
@pm80x_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 95, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to detect Marvell 88PM800:ChipID[0x%x]\0A\00", [49 x i8] zeroinitializer }, align 32
@pm80x_init._entry_ptr.11 = internal global ptr @pm80x_init._entry.9, section ".printk_index", align 4
@g_pm80x_chip = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_pm80x_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm80x_init = external dso_local constant [0 x i8], align 1
@__ksymtab_pm80x_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm80x_init to i32), ptr @__kstrtab_pm80x_init, ptr @__kstrtabns_pm80x_init }, section "___ksymtab_gpl+pm80x_init", align 4
@__kstrtab_pm80x_deinit = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm80x_deinit = external dso_local constant [0 x i8], align 1
@__ksymtab_pm80x_deinit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm80x_deinit to i32), ptr @__kstrtab_pm80x_deinit, ptr @__kstrtabns_pm80x_deinit }, section "___ksymtab_gpl+pm80x_deinit", align 4
@pm80x_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm80x_suspend, ptr @pm80x_resume, ptr @pm80x_suspend, ptr @pm80x_resume, ptr @pm80x_suspend, ptr @pm80x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_pm80x_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm80x_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_pm80x_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm80x_pm_ops to i32), ptr @__kstrtab_pm80x_pm_ops, ptr @__kstrtabns_pm80x_pm_ops }, section "___ksymtab_gpl+pm80x_pm_ops", align 4
@__UNIQUE_ID_description288 = internal constant [51 x i8] c"88pm80x.description=I2C Driver for Marvell 88PM80x\00", section ".modinfo", align 1
@__UNIQUE_ID_author289 = internal constant [48 x i8] c"88pm80x.author=Qiao Zhou <zhouqiao@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [33 x i8] c"88pm80x.file=drivers/mfd/88pm80x\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [20 x i8] c"88pm80x.license=GPL\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 4]
@___asan_gen_.12 = private unnamed_addr constant [20 x i8] c"pm80x_regmap_config\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 44, i32 28 }
@___asan_gen_.15 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 63, i32 8 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 66, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 82, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [13 x i8] c"chip_mapping\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 28, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 94, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"g_pm80x_chip\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 42, i32 27 }
@___asan_gen_.57 = private unnamed_addr constant [13 x i8] c"pm80x_pm_ops\00", align 1
@___asan_gen_.58 = private constant [25 x i8] c"../drivers/mfd/88pm80x.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 158, i32 1 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description288, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__ksymtab_pm80x_deinit, ptr @__ksymtab_pm80x_init, ptr @__ksymtab_pm80x_pm_ops, ptr @__ksymtab_pm80x_regmap_config, ptr @pm80x_init._entry, ptr @pm80x_init._entry.6, ptr @pm80x_init._entry.9, ptr @pm80x_init._entry_ptr, ptr @pm80x_init._entry_ptr.11, ptr @pm80x_init._entry_ptr.8, ptr @pm80x_regmap_config, ptr @pm80x_init._key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @chip_mapping, ptr @.str.10, ptr @g_pm80x_chip, ptr @pm80x_pm_ops], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm80x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm80x_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm80x_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm80x_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_mapping to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm80x_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_pm80x_chip to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm80x_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm80x_init(ptr noundef %client) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !51
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 88, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @pm80x_regmap_config, ptr noundef nonnull @pm80x_init._key, ptr noundef nonnull @.str) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %1) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %client7 = getelementptr inbounds %struct.pm80x_chip, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %client7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %client7, align 4
  %regmap = getelementptr inbounds %struct.pm80x_chip, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %regmap, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %irq8 = getelementptr inbounds %struct.pm80x_chip, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %irq8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %irq8, align 4
  %dev10 = getelementptr inbounds %struct.pm80x_chip, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev10, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call14 = call i32 @regmap_read(ptr noundef %call1, i32 noundef 0, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %do.end18, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end6
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %shr = lshr i32 %10, 5
  %and = and i32 %shr, 7
  %11 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.end31 [
    i32 3, label %for.cond.preheader.if.end33_crit_edge
    i32 0, label %if.end33.fold.split
    i32 4, label %if.end33.fold.split81
  ]

for.cond.preheader.if.end33_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

do.end18:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.7, i32 noundef %call14) #8
  br label %cleanup

do.end31:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev10, align 4
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.10, i32 noundef %17) #8
  br label %cleanup

if.end33.fold.split:                              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.end33.fold.split81:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.end33:                                         ; preds = %if.end33.fold.split81, %if.end33.fold.split, %for.cond.preheader.if.end33_crit_edge
  %i.079.lcssa = phi i32 [ 0, %for.cond.preheader.if.end33_crit_edge ], [ 1, %if.end33.fold.split ], [ 2, %if.end33.fold.split81 ]
  %type = getelementptr [3 x %struct.pm80x_chip_mapping], ptr @chip_mapping, i32 0, i32 %i.079.lcssa, i32 1
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  %type25 = getelementptr inbounds %struct.pm80x_chip, ptr %call.i, i32 0, i32 7
  %20 = ptrtoint ptr %type25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %type25, align 4
  %call35 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #5
  %21 = load ptr, ptr @g_pm80x_chip, align 4
  %tobool36.not = icmp eq ptr %21, null
  br i1 %tobool36.not, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %call.i, ptr @g_pm80x_chip, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %client38 = getelementptr inbounds %struct.pm80x_chip, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %client38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client38, align 4
  %companion = getelementptr inbounds %struct.pm80x_chip, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %companion to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %companion, align 4
  %25 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client7, align 4
  %companion40 = getelementptr inbounds %struct.pm80x_chip, ptr %21, i32 0, i32 3
  %27 = ptrtoint ptr %companion40 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %companion40, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then37, %do.end31, %do.end18, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then3 ], [ %call14, %do.end18 ], [ -22, %do.end31 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pm80x_deinit() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @g_pm80x_chip, align 4
  %companion = getelementptr inbounds %struct.pm80x_chip, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %companion to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %companion, align 4
  %tobool.not = icmp eq ptr %2, null
  %g_pm80x_chip.companion = select i1 %tobool.not, ptr @g_pm80x_chip, ptr %companion
  %3 = ptrtoint ptr %g_pm80x_chip.companion to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %g_pm80x_chip.companion, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm80x_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %wu_flag = getelementptr inbounds %struct.pm80x_chip, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %wu_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wu_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end6_crit_edge, label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %dev2 = getelementptr inbounds %struct.pm80x_chip, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then.if.end6_crit_edge, label %device_may_wakeup.exit

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

device_may_wakeup.exit:                           ; preds = %if.then
  %wakeup.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 6
  %7 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %8, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end6_crit_edge, label %if.then4

device_may_wakeup.exit.if.end6_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then4:                                         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.pm80x_chip, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %10, i32 noundef 1) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %device_may_wakeup.exit.if.end6_crit_edge, %if.then.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm80x_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %wu_flag = getelementptr inbounds %struct.pm80x_chip, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %wu_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wu_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end6_crit_edge, label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %dev2 = getelementptr inbounds %struct.pm80x_chip, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then.if.end6_crit_edge, label %device_may_wakeup.exit

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

device_may_wakeup.exit:                           ; preds = %if.then
  %wakeup.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 6
  %7 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %8, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end6_crit_edge, label %if.then4

device_may_wakeup.exit.if.end6_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then4:                                         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.pm80x_chip, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %10, i32 noundef 0) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %device_may_wakeup.exit.if.end6_crit_edge, %if.then.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @pm80x_regmap_config, !1, !"pm80x_regmap_config", i1 false, i1 false}
!1 = !{!"../drivers/mfd/88pm80x.c", i32 44, i32 28}
!2 = !{ptr @__ksymtab_pm80x_regmap_config, !3, !"__ksymtab_pm80x_regmap_config", i1 false, i1 false}
!3 = !{!"../drivers/mfd/88pm80x.c", i32 48, i32 1}
!4 = !{ptr @pm80x_init._key, !5, !"_key", i1 false, i1 false}
!5 = !{!"../drivers/mfd/88pm80x.c", i32 63, i32 8}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/mfd/88pm80x.c", i32 66, i32 3}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @pm80x_init._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @pm80x_init._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mfd/88pm80x.c", i32 82, i32 3}
!17 = !{ptr @pm80x_init._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @pm80x_init._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mfd/88pm80x.c", i32 94, i32 3}
!21 = !{ptr @pm80x_init._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @pm80x_init._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__ksymtab_pm80x_init, !24, !"__ksymtab_pm80x_init", i1 false, i1 false}
!24 = !{!"../drivers/mfd/88pm80x.c", i32 116, i32 1}
!25 = !{ptr @__ksymtab_pm80x_deinit, !26, !"__ksymtab_pm80x_deinit", i1 false, i1 false}
!26 = !{!"../drivers/mfd/88pm80x.c", i32 130, i32 1}
!27 = !{ptr @pm80x_pm_ops, !28, !"pm80x_pm_ops", i1 false, i1 false}
!28 = !{!"../drivers/mfd/88pm80x.c", i32 158, i32 1}
!29 = !{ptr @__ksymtab_pm80x_pm_ops, !30, !"__ksymtab_pm80x_pm_ops", i1 false, i1 false}
!30 = !{!"../drivers/mfd/88pm80x.c", i32 159, i32 1}
!31 = !{ptr @__UNIQUE_ID_description288, !32, !"__UNIQUE_ID_description288", i1 false, i1 false}
!32 = !{!"../drivers/mfd/88pm80x.c", i32 161, i32 1}
!33 = !{ptr @__UNIQUE_ID_author289, !34, !"__UNIQUE_ID_author289", i1 false, i1 false}
!34 = !{!"../drivers/mfd/88pm80x.c", i32 162, i32 1}
!35 = !{ptr @__UNIQUE_ID_file290, !36, !"__UNIQUE_ID_file290", i1 false, i1 false}
!36 = !{!"../drivers/mfd/88pm80x.c", i32 163, i32 1}
!37 = !{ptr @__UNIQUE_ID_license291, !36, !"__UNIQUE_ID_license291", i1 false, i1 false}
!38 = !{ptr @g_pm80x_chip, !39, !"g_pm80x_chip", i1 false, i1 false}
!39 = !{!"../drivers/mfd/88pm80x.c", i32 42, i32 27}
!40 = !{ptr @chip_mapping, !41, !"chip_mapping", i1 false, i1 false}
!41 = !{!"../drivers/mfd/88pm80x.c", i32 28, i32 34}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"auto-init"}
