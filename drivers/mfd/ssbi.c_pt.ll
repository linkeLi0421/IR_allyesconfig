; ModuleID = '/llk/IR_all_yes/drivers/mfd/ssbi.c_pt.bc'
source_filename = "../drivers/mfd/ssbi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ssbi_read\22, \22a\22\09"
module asm "\09.weak\09__crc_ssbi_read\09\09\09\09"
module asm "\09.long\09__crc_ssbi_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssbi_read:\09\09\09\09\09"
module asm "\09.asciz \09\22ssbi_read\22\09\09\09\09\09"
module asm "__kstrtabns_ssbi_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ssbi_write\22, \22a\22\09"
module asm "\09.weak\09__crc_ssbi_write\09\09\09\09"
module asm "\09.long\09__crc_ssbi_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssbi_write:\09\09\09\09\09"
module asm "\09.asciz \09\22ssbi_write\22\09\09\09\09\09"
module asm "__kstrtabns_ssbi_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.ssbi = type { ptr, ptr, %struct.spinlock, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__kstrtab_ssbi_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssbi_read = external dso_local constant [0 x i8], align 1
@__ksymtab_ssbi_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssbi_read to i32), ptr @__kstrtab_ssbi_read, ptr @__kstrtabns_ssbi_read }, section "___ksymtab_gpl+ssbi_read", align 4
@__kstrtab_ssbi_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssbi_write = external dso_local constant [0 x i8], align 1
@__ksymtab_ssbi_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssbi_write to i32), ptr @__kstrtab_ssbi_write, ptr @__kstrtabns_ssbi_write }, section "___ksymtab_gpl+ssbi_write", align 4
@__initcall__kmod_ssbi__183_323_ssbi_driver_init6 = internal global ptr @ssbi_driver_init, section ".initcall6.init", align 4
@ssbi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ssbi_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ssbi_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ssbi_driver_exit = internal global ptr @ssbi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file184 = internal constant [27 x i8] c"ssbi.file=drivers/mfd/ssbi\00", section ".modinfo", align 1
@__UNIQUE_ID_license185 = internal constant [20 x i8] c"ssbi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version186 = internal constant [17 x i8] c"ssbi.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssbi\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias187 = internal constant [25 x i8] c"ssbi.alias=platform:ssbi\00", section ".modinfo", align 1
@__UNIQUE_ID_author188 = internal constant [42 x i8] c"ssbi.author=Dima Zavin <dima@android.com>\00", section ".modinfo", align 1
@ssbi_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ssbi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom,controller-type\00", [43 x i8] zeroinitializer }, align 32
@ssbi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 282, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Missing qcom,controller-type property\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ssbi_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/mfd/ssbi.c\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ssbi_probe._entry_ptr = internal global ptr @ssbi_probe._entry, section ".printk_index", align 4
@ssbi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 285, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SSBI controller type: '%s'\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ssbi_probe._entry_ptr.12 = internal global ptr @ssbi_probe._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ssbi2\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pmic-arbiter\00", [19 x i8] zeroinitializer }, align 32
@ssbi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 293, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unknown qcom,controller-type\0A\00", [34 x i8] zeroinitializer }, align 32
@ssbi_probe._entry_ptr.17 = internal global ptr @ssbi_probe._entry.15, section ".printk_index", align 4
@ssbi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ssbi->lock\00", [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.19 = private unnamed_addr constant [12 x i8] c"ssbi_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 316, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 326, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"ssbi_match_table\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 310, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 280, i32 29 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 282, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 285, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 288, i32 24 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 290, i32 24 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 293, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [22 x i8] c"../drivers/mfd/ssbi.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 305, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_alias187, ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_file184, ptr @__UNIQUE_ID_license185, ptr @__UNIQUE_ID_version186, ptr @__exitcall_ssbi_driver_exit, ptr @__initcall__kmod_ssbi__183_323_ssbi_driver_init6, ptr @__ksymtab_ssbi_read, ptr @__ksymtab_ssbi_write, ptr @__modver_attr, ptr @ssbi_driver_exit, ptr @ssbi_probe._entry, ptr @ssbi_probe._entry.15, ptr @ssbi_probe._entry.9, ptr @ssbi_probe._entry_ptr, ptr @ssbi_probe._entry_ptr.12, ptr @ssbi_probe._entry_ptr.17, ptr @ssbi_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ssbi_match_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @ssbi_probe.__key, ptr @.str.18], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssbi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssbi_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssbi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssbi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssbi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssbi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssbi_read(ptr nocapture noundef readonly %dev, i16 noundef zeroext %addr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.ssbi, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %read = getelementptr inbounds %struct.ssbi, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  %call6 = tail call i32 %3(ptr noundef %1, i16 noundef zeroext %addr, ptr noundef %buf, i32 noundef %len) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  ret i32 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssbi_write(ptr nocapture noundef readonly %dev, i16 noundef zeroext %addr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.ssbi, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %write = getelementptr inbounds %struct.ssbi, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %call6 = tail call i32 %3(ptr noundef %1, i16 noundef zeroext %addr, ptr noundef %buf, i32 noundef %len) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  ret i32 %call6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ssbi_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ssbi_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ssbi_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ssbi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssbi_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call2) #6
  %base = getelementptr inbounds %struct.ssbi, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call11 = tail call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef null) #6
  %cmp = icmp eq ptr %call11, null
  br i1 %cmp, label %do.end, label %do.end17

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #9
  br label %cleanup

do.end17:                                         ; preds = %if.end10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull %call11) #9
  %call19 = tail call i32 @strcmp(ptr noundef nonnull %call11, ptr noundef nonnull dereferenceable(5) @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %do.end17.if.end38_crit_edge, label %if.else

do.end17.if.end38_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.else:                                          ; preds = %do.end17
  %call22 = tail call i32 @strcmp(ptr noundef nonnull %call11, ptr noundef nonnull dereferenceable(6) @.str.13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.else.if.end38_crit_edge, label %if.else26

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.else26:                                        ; preds = %if.else
  %call27 = tail call i32 @strcmp(ptr noundef nonnull %call11, ptr noundef nonnull dereferenceable(13) @.str.14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.else26.if.end38_crit_edge, label %do.end34

if.else26.if.end38_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

do.end34:                                         ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end38:                                         ; preds = %if.else26.if.end38_crit_edge, %if.else.if.end38_crit_edge, %do.end17.if.end38_crit_edge
  %cmp40 = phi i1 [ true, %if.else26.if.end38_crit_edge ], [ false, %if.else.if.end38_crit_edge ], [ false, %do.end17.if.end38_crit_edge ]
  %.sink = phi i32 [ 2, %if.else26.if.end38_crit_edge ], [ 1, %if.else.if.end38_crit_edge ], [ 0, %do.end17.if.end38_crit_edge ]
  %controller_type25 = getelementptr inbounds %struct.ssbi, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %controller_type25 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %controller_type25, align 4
  %ssbi_read_bytes.sink = select i1 %cmp40, ptr @ssbi_pa_read_bytes, ptr @ssbi_read_bytes
  %ssbi_write_bytes.sink = select i1 %cmp40, ptr @ssbi_pa_write_bytes, ptr @ssbi_write_bytes
  %6 = getelementptr inbounds %struct.ssbi, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ssbi_read_bytes.sink, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ssbi, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ssbi_write_bytes.sink, ptr %8, align 4
  %lock = getelementptr inbounds %struct.ssbi, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @ssbi_probe.__key, i16 noundef signext 3) #6
  %call51 = tail call i32 @devm_of_platform_populate(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end34, %do.end, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then7 ], [ -22, %do.end ], [ %call51, %if.end38 ], [ -22, %do.end34 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssbi_pa_read_bytes(ptr nocapture noundef readonly %ssbi, i16 noundef zeroext %addr, ptr noundef writeonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not9 = icmp eq i32 %len, 0
  br i1 %tobool.not9, label %entry.err_crit_edge, label %while.body.lr.ph

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

while.body.lr.ph:                                 ; preds = %entry
  %0 = and i16 %addr, 32767
  %and = zext i16 %0 to i32
  %shl = shl nuw nsw i32 %and, 8
  %or = or i32 %shl, 16777216
  %1 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %base.i.i = getelementptr inbounds %struct.ssbi, ptr %ssbi, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %len.addr.012 = phi i32 [ %len, %while.body.lr.ph ], [ %dec, %if.end.while.body_crit_edge ]
  %buf.addr.010 = phi ptr [ %buf, %while.body.lr.ph ], [ %incdec.ptr, %if.end.while.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %1) #6, !srcloc !60
  br label %while.body.i

while.body.i:                                     ; preds = %if.end9.i.while.body.i_crit_edge, %while.body
  %dec16.i = phi i32 [ 99, %while.body ], [ %dec.i, %if.end9.i.while.body.i_crit_edge ]
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !61
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %and.i = and i32 %7, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %while.body.i.err_crit_edge

while.body.i.err_crit_edge:                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end.i:                                         ; preds = %while.body.i
  %and2.i = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end9.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %tobool5.not.i = icmp eq ptr %buf.addr.010, null
  br i1 %tobool5.not.i, label %if.then4.i.if.end_crit_edge, label %if.then6.i

if.then4.i.if.end_crit_edge:                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i32 %7 to i8
  %8 = ptrtoint ptr %buf.addr.010 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %buf.addr.010, align 1
  br label %if.end

if.end9.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #6
  %dec.i = add nsw i32 %dec16.i, -1
  %tobool.not.i = icmp eq i32 %dec16.i, 0
  br i1 %tobool.not.i, label %if.end9.i.err_crit_edge, label %if.end9.i.while.body.i_crit_edge

if.end9.i.while.body.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end9.i.err_crit_edge:                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end:                                           ; preds = %if.then6.i, %if.then4.i.if.end_crit_edge
  %incdec.ptr = getelementptr i8, ptr %buf.addr.010, i32 1
  %dec = add i32 %len.addr.012, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end.err_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

err:                                              ; preds = %if.end.err_crit_edge, %if.end9.i.err_crit_edge, %while.body.i.err_crit_edge, %entry.err_crit_edge
  %ret.1 = phi i32 [ 0, %entry.err_crit_edge ], [ -1, %while.body.i.err_crit_edge ], [ -110, %if.end9.i.err_crit_edge ], [ 0, %if.end.err_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssbi_pa_write_bytes(ptr nocapture noundef readonly %ssbi, i16 noundef zeroext %addr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not9 = icmp eq i32 %len, 0
  br i1 %tobool.not9, label %entry.err_crit_edge, label %while.body.lr.ph

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

while.body.lr.ph:                                 ; preds = %entry
  %0 = and i16 %addr, 32767
  %and = zext i16 %0 to i32
  %shl = shl nuw nsw i32 %and, 8
  %base.i.i = getelementptr inbounds %struct.ssbi, ptr %ssbi, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %len.addr.011 = phi i32 [ %len, %while.body.lr.ph ], [ %dec, %if.end.while.body_crit_edge ]
  %buf.addr.010 = phi ptr [ %buf, %while.body.lr.ph ], [ %incdec.ptr, %if.end.while.body_crit_edge ]
  %1 = ptrtoint ptr %buf.addr.010 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %buf.addr.010, align 1
  %conv1 = zext i8 %2 to i32
  %or = or i32 %shl, %conv1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %3 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #6, !srcloc !60
  br label %while.body.i

while.body.i:                                     ; preds = %if.end9.i.while.body.i_crit_edge, %while.body
  %dec16.i = phi i32 [ 99, %while.body ], [ %dec.i, %if.end9.i.while.body.i_crit_edge ]
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !61
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %and.i = and i32 %9, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %while.body.i.err_crit_edge

while.body.i.err_crit_edge:                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end.i:                                         ; preds = %while.body.i
  %and2.i = and i32 %9, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end9.i, label %if.end

if.end9.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #6
  %dec.i = add nsw i32 %dec16.i, -1
  %tobool.not.i = icmp eq i32 %dec16.i, 0
  br i1 %tobool.not.i, label %if.end9.i.err_crit_edge, label %if.end9.i.while.body.i_crit_edge

if.end9.i.while.body.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end9.i.err_crit_edge:                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end:                                           ; preds = %if.end.i
  %incdec.ptr = getelementptr i8, ptr %buf.addr.010, i32 1
  %dec = add i32 %len.addr.011, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end.err_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

err:                                              ; preds = %if.end.err_crit_edge, %if.end9.i.err_crit_edge, %while.body.i.err_crit_edge, %entry.err_crit_edge
  %ret.1 = phi i32 [ 0, %entry.err_crit_edge ], [ -110, %if.end9.i.err_crit_edge ], [ -1, %while.body.i.err_crit_edge ], [ 0, %if.end.err_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssbi_read_bytes(ptr nocapture noundef readonly %ssbi, i16 noundef zeroext %addr, ptr nocapture noundef writeonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %addr to i32
  %and = shl nuw i32 %conv, 16
  %shl = and i32 %and, 16711680
  %or = or i32 %shl, 16777216
  %controller_type = getelementptr inbounds %struct.ssbi, ptr %ssbi, i32 0, i32 3
  %0 = ptrtoint ptr %controller_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %controller_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base.i = getelementptr inbounds %struct.ssbi, ptr %ssbi, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !61
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %and2 = and i32 %5, 15
  %6 = lshr i32 %conv, 4
  %and5 = and i32 %6, 2032
  %or6 = or i32 %and2, %and5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %or6) #6
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %9, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %7) #6, !srcloc !60
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not52 = icmp eq i32 %len, 0
  br i1 %tobool.not52, label %if.end.err_crit_edge, label %while.body.lr.ph

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

while.body.lr.ph:                                 ; preds = %if.end
  %base.i.i = getelementptr inbounds %struct.ssbi, ptr %ssbi, i32 0, i32 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  br label %while.body

while.body:                                       ; preds = %if.end14.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.054 = phi ptr [ %buf, %while.body.lr.ph ], [ %incdec.ptr, %if.end14.while.body_crit_edge ]
  %len.addr.053 = phi i32 [ %len, %while.body.lr.ph ], [ %dec, %if.end14.while.body_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body
  %dec6.i = phi i32 [ 99, %while.body ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 20
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %14 = and i32 %13, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.not = icmp eq i32 %14, 0
  br i1 %cmp.i.not, label %if.end.i, label %if.end10

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #6
  %dec.i = add nsw i32 %dec6.i, -1
  %tobool.not.i = icmp eq i32 %dec6.i, 0
  br i1 %tobool.not.i, label %if.end.i.err_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end.i.err_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end10:                                         ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %10) #6, !srcloc !60
  br label %while.body.i38

while.body.i38:                                   ; preds = %if.end.i41.while.body.i38_crit_edge, %if.end10
  %dec6.i34 = phi i32 [ 99, %if.end10 ], [ %dec.i39, %if.end.i41.while.body.i38_crit_edge ]
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %19, i32 20
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35) #6, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %21 = and i32 %20, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i37.not = icmp eq i32 %21, 0
  br i1 %cmp.i37.not, label %if.end.i41, label %if.end14

if.end.i41:                                       ; preds = %while.body.i38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #6
  %dec.i39 = add nsw i32 %dec6.i34, -1
  %tobool.not.i40 = icmp eq i32 %dec6.i34, 0
  br i1 %tobool.not.i40, label %if.end.i41.err_crit_edge, label %if.end.i41.while.body.i38_crit_edge

if.end.i41.while.body.i38_crit_edge:              ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i38

if.end.i41.err_crit_edge:                         ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end14:                                         ; preds = %while.body.i38
  %23 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %24, i32 16
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #6, !srcloc !61
  %26 = lshr i32 %25, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %conv17 = trunc i32 %26 to i8
  %incdec.ptr = getelementptr i8, ptr %buf.addr.054, i32 1
  %27 = ptrtoint ptr %buf.addr.054 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv17, ptr %buf.addr.054, align 1
  %dec = add i32 %len.addr.053, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end14.err_crit_edge, label %if.end14.while.body_crit_edge

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end14.err_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

err:                                              ; preds = %if.end14.err_crit_edge, %if.end.i41.err_crit_edge, %if.end.i.err_crit_edge, %if.end.err_crit_edge
  %ret.1 = phi i32 [ 0, %if.end.err_crit_edge ], [ -110, %if.end.i41.err_crit_edge ], [ -110, %if.end.i.err_crit_edge ], [ 0, %if.end14.err_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssbi_write_bytes(ptr nocapture noundef readonly %ssbi, i16 noundef zeroext %addr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_type = getelementptr inbounds %struct.ssbi, ptr %ssbi, i32 0, i32 3
  %0 = ptrtoint ptr %controller_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %controller_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base.i = getelementptr inbounds %struct.ssbi, ptr %ssbi, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !61
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %and = and i32 %5, 15
  %6 = lshr i16 %addr, 4
  %7 = and i16 %6, 2032
  %and1 = zext i16 %7 to i32
  %or = or i32 %and, %and1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %10, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %8) #6, !srcloc !60
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not45 = icmp eq i32 %len, 0
  br i1 %tobool.not45, label %if.end.err_crit_edge, label %while.body.lr.ph

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

while.body.lr.ph:                                 ; preds = %if.end
  %base.i.i = getelementptr inbounds %struct.ssbi, ptr %ssbi, i32 0, i32 1
  %11 = and i16 %addr, 255
  %and7 = zext i16 %11 to i32
  %shl8 = shl nuw nsw i32 %and7, 16
  br label %while.body

while.body:                                       ; preds = %if.end14.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.047 = phi ptr [ %buf, %while.body.lr.ph ], [ %incdec.ptr, %if.end14.while.body_crit_edge ]
  %len.addr.046 = phi i32 [ %len, %while.body.lr.ph ], [ %dec, %if.end14.while.body_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body
  %dec6.i = phi i32 [ 99, %while.body ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 20
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %15 = and i32 %14, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.not = icmp eq i32 %15, 0
  br i1 %cmp.i.not, label %if.end.i, label %if.end5

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #6
  %dec.i = add nsw i32 %dec6.i, -1
  %tobool.not.i = icmp eq i32 %dec6.i, 0
  br i1 %tobool.not.i, label %if.end.i.err_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end.i.err_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end5:                                          ; preds = %while.body.i
  %17 = ptrtoint ptr %buf.addr.047 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buf.addr.047, align 1
  %conv9 = zext i8 %18 to i32
  %or10 = or i32 %shl8, %conv9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %or10) #6
  %20 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %19) #6, !srcloc !60
  br label %while.body.i33

while.body.i33:                                   ; preds = %if.end.i36.while.body.i33_crit_edge, %if.end5
  %dec6.i31 = phi i32 [ 99, %if.end5 ], [ %dec.i34, %if.end.i36.while.body.i33_crit_edge ]
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %23, i32 20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i32) #6, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %25 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp2.i = icmp eq i32 %25, 0
  br i1 %cmp2.i, label %if.end14, label %if.end.i36

if.end.i36:                                       ; preds = %while.body.i33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #6
  %dec.i34 = add nsw i32 %dec6.i31, -1
  %tobool.not.i35 = icmp eq i32 %dec6.i31, 0
  br i1 %tobool.not.i35, label %if.end.i36.err_crit_edge, label %if.end.i36.while.body.i33_crit_edge

if.end.i36.while.body.i33_crit_edge:              ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i33

if.end.i36.err_crit_edge:                         ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end14:                                         ; preds = %while.body.i33
  %incdec.ptr = getelementptr i8, ptr %buf.addr.047, i32 1
  %dec = add i32 %len.addr.046, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end14.err_crit_edge, label %if.end14.while.body_crit_edge

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end14.err_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

err:                                              ; preds = %if.end14.err_crit_edge, %if.end.i36.err_crit_edge, %if.end.i.err_crit_edge, %if.end.err_crit_edge
  %ret.1 = phi i32 [ 0, %if.end.err_crit_edge ], [ -110, %if.end.i36.err_crit_edge ], [ -110, %if.end.i.err_crit_edge ], [ 0, %if.end14.err_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !41, !43, !44, !45, !47, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__ksymtab_ssbi_read, !1, !"__ksymtab_ssbi_read", i1 false, i1 false}
!1 = !{!"../drivers/mfd/ssbi.c", i32 246, i32 1}
!2 = !{ptr @__ksymtab_ssbi_write, !3, !"__ksymtab_ssbi_write", i1 false, i1 false}
!3 = !{!"../drivers/mfd/ssbi.c", i32 260, i32 1}
!4 = !{ptr @__initcall__kmod_ssbi__183_323_ssbi_driver_init6, !5, !"__initcall__kmod_ssbi__183_323_ssbi_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/mfd/ssbi.c", i32 323, i32 1}
!6 = !{ptr @__exitcall_ssbi_driver_exit, !5, !"__exitcall_ssbi_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_file184, !8, !"__UNIQUE_ID_file184", i1 false, i1 false}
!8 = !{!"../drivers/mfd/ssbi.c", i32 325, i32 1}
!9 = !{ptr @__UNIQUE_ID_license185, !8, !"__UNIQUE_ID_license185", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version186, !11, !"__UNIQUE_ID_version186", i1 false, i1 false}
!11 = !{!"../drivers/mfd/ssbi.c", i32 326, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias187, !17, !"__UNIQUE_ID_alias187", i1 false, i1 false}
!17 = !{!"../drivers/mfd/ssbi.c", i32 327, i32 1}
!18 = !{ptr @__UNIQUE_ID_author188, !19, !"__UNIQUE_ID_author188", i1 false, i1 false}
!19 = !{!"../drivers/mfd/ssbi.c", i32 328, i32 1}
!20 = !{ptr @ssbi_driver, !21, !"ssbi_driver", i1 false, i1 false}
!21 = !{!"../drivers/mfd/ssbi.c", i32 316, i32 31}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mfd/ssbi.c", i32 280, i32 29}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mfd/ssbi.c", i32 282, i32 3}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ssbi_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @ssbi_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mfd/ssbi.c", i32 285, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ssbi_probe._entry.9, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @ssbi_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mfd/ssbi.c", i32 288, i32 24}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mfd/ssbi.c", i32 290, i32 24}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mfd/ssbi.c", i32 293, i32 3}
!43 = !{ptr @ssbi_probe._entry.15, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ssbi_probe._entry_ptr.17, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @ssbi_probe.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/mfd/ssbi.c", i32 305, i32 2}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ssbi_match_table, !49, !"ssbi_match_table", i1 false, i1 false}
!49 = !{!"../drivers/mfd/ssbi.c", i32 310, i32 34}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 2152902960}
!60 = !{i64 2981572}
!61 = !{i64 2981990}
!62 = !{i64 2152902578}
