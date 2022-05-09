; ModuleID = '/llk/IR_all_yes/drivers/mfd/syscon.c_pt.bc'
source_filename = "../drivers/mfd/syscon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+device_node_to_regmap\22, \22a\22\09"
module asm "\09.weak\09__crc_device_node_to_regmap\09\09\09\09"
module asm "\09.long\09__crc_device_node_to_regmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_node_to_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22device_node_to_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_device_node_to_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+syscon_node_to_regmap\22, \22a\22\09"
module asm "\09.weak\09__crc_syscon_node_to_regmap\09\09\09\09"
module asm "\09.long\09__crc_syscon_node_to_regmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_syscon_node_to_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22syscon_node_to_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_syscon_node_to_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+syscon_regmap_lookup_by_compatible\22, \22a\22\09"
module asm "\09.weak\09__crc_syscon_regmap_lookup_by_compatible\09\09\09\09"
module asm "\09.long\09__crc_syscon_regmap_lookup_by_compatible\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_syscon_regmap_lookup_by_compatible:\09\09\09\09\09"
module asm "\09.asciz \09\22syscon_regmap_lookup_by_compatible\22\09\09\09\09\09"
module asm "__kstrtabns_syscon_regmap_lookup_by_compatible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+syscon_regmap_lookup_by_phandle\22, \22a\22\09"
module asm "\09.weak\09__crc_syscon_regmap_lookup_by_phandle\09\09\09\09"
module asm "\09.long\09__crc_syscon_regmap_lookup_by_phandle\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_syscon_regmap_lookup_by_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22syscon_regmap_lookup_by_phandle\22\09\09\09\09\09"
module asm "__kstrtabns_syscon_regmap_lookup_by_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+syscon_regmap_lookup_by_phandle_args\22, \22a\22\09"
module asm "\09.weak\09__crc_syscon_regmap_lookup_by_phandle_args\09\09\09\09"
module asm "\09.long\09__crc_syscon_regmap_lookup_by_phandle_args\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_syscon_regmap_lookup_by_phandle_args:\09\09\09\09\09"
module asm "\09.asciz \09\22syscon_regmap_lookup_by_phandle_args\22\09\09\09\09\09"
module asm "__kstrtabns_syscon_regmap_lookup_by_phandle_args:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+syscon_regmap_lookup_by_phandle_optional\22, \22a\22\09"
module asm "\09.weak\09__crc_syscon_regmap_lookup_by_phandle_optional\09\09\09\09"
module asm "\09.long\09__crc_syscon_regmap_lookup_by_phandle_optional\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_syscon_regmap_lookup_by_phandle_optional:\09\09\09\09\09"
module asm "\09.asciz \09\22syscon_regmap_lookup_by_phandle_optional\22\09\09\09\09\09"
module asm "__kstrtabns_syscon_regmap_lookup_by_phandle_optional:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.syscon = type { ptr, ptr, %struct.list_head }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__kstrtab_device_node_to_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_node_to_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_device_node_to_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_node_to_regmap to i32), ptr @__kstrtab_device_node_to_regmap, ptr @__kstrtabns_device_node_to_regmap }, section "___ksymtab_gpl+device_node_to_regmap", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syscon\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_syscon_node_to_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_syscon_node_to_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_syscon_node_to_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @syscon_node_to_regmap to i32), ptr @__kstrtab_syscon_node_to_regmap, ptr @__kstrtabns_syscon_node_to_regmap }, section "___ksymtab_gpl+syscon_node_to_regmap", align 4
@__kstrtab_syscon_regmap_lookup_by_compatible = external dso_local constant [0 x i8], align 1
@__kstrtabns_syscon_regmap_lookup_by_compatible = external dso_local constant [0 x i8], align 1
@__ksymtab_syscon_regmap_lookup_by_compatible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @syscon_regmap_lookup_by_compatible to i32), ptr @__kstrtab_syscon_regmap_lookup_by_compatible, ptr @__kstrtabns_syscon_regmap_lookup_by_compatible }, section "___ksymtab_gpl+syscon_regmap_lookup_by_compatible", align 4
@__kstrtab_syscon_regmap_lookup_by_phandle = external dso_local constant [0 x i8], align 1
@__kstrtabns_syscon_regmap_lookup_by_phandle = external dso_local constant [0 x i8], align 1
@__ksymtab_syscon_regmap_lookup_by_phandle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @syscon_regmap_lookup_by_phandle to i32), ptr @__kstrtab_syscon_regmap_lookup_by_phandle, ptr @__kstrtabns_syscon_regmap_lookup_by_phandle }, section "___ksymtab_gpl+syscon_regmap_lookup_by_phandle", align 4
@__kstrtab_syscon_regmap_lookup_by_phandle_args = external dso_local constant [0 x i8], align 1
@__kstrtabns_syscon_regmap_lookup_by_phandle_args = external dso_local constant [0 x i8], align 1
@__ksymtab_syscon_regmap_lookup_by_phandle_args = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @syscon_regmap_lookup_by_phandle_args to i32), ptr @__kstrtab_syscon_regmap_lookup_by_phandle_args, ptr @__kstrtabns_syscon_regmap_lookup_by_phandle_args }, section "___ksymtab_gpl+syscon_regmap_lookup_by_phandle_args", align 4
@__kstrtab_syscon_regmap_lookup_by_phandle_optional = external dso_local constant [0 x i8], align 1
@__kstrtabns_syscon_regmap_lookup_by_phandle_optional = external dso_local constant [0 x i8], align 1
@__ksymtab_syscon_regmap_lookup_by_phandle_optional = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @syscon_regmap_lookup_by_phandle_optional to i32), ptr @__kstrtab_syscon_regmap_lookup_by_phandle_optional, ptr @__kstrtabns_syscon_regmap_lookup_by_phandle_optional }, section "___ksymtab_gpl+syscon_regmap_lookup_by_phandle_optional", align 4
@__initcall__kmod_syscon__184_330_syscon_init2 = internal global ptr @syscon_init, section ".initcall2.init", align 4
@syscon_list_slock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@syscon_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @syscon_list, ptr @syscon_list }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"syscon_list_slock\00", [46 x i8] zeroinitializer }, align 32
@syscon_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"big-endian\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"little-endian\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"native-endian\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg-io-width\00", [19 x i8] zeroinitializer }, align 32
@of_syscon_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Failed to retrieve valid hwlock: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"of_syscon_register\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/mfd/syscon.c\00", [43 x i8] zeroinitializer }, align 32
@of_syscon_register._entry_ptr = internal global ptr @of_syscon_register._entry, section ".printk_index", align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%pOFn@%llx\00", [21 x i8] zeroinitializer }, align 32
@of_syscon_register._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"syscon:110:(&syscon_config)->lock\00", [62 x i8] zeroinitializer }, align 32
@of_syscon_register._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013regmap init failed\0A\00", [42 x i8] zeroinitializer }, align 32
@of_syscon_register._entry_ptr.13 = internal global ptr @of_syscon_register._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@syscon_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @syscon_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @syscon_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@syscon_ids = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"syscon\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@syscon_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"syscon:300:(&syscon_config)->lock\00", [62 x i8] zeroinitializer }, align 32
@syscon_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.8, i32 302, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regmap init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"syscon_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@syscon_probe._entry_ptr = internal global ptr @syscon_probe._entry, section ".printk_index", align 4
@syscon_probe.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.8, ptr @.str.19, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"regmap %pR registered\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967294]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 185, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"syscon_list_slock\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [12 x i8] c"syscon_list\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 29, i32 8 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 28, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"syscon_regmap_config\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 37, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 70, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 72, i32 37 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 74, i32 37 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 82, i32 33 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 97, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 104, i32 45 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 110, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 113, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"syscon_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 318, i32 31 }
@___asan_gen_.77 = private unnamed_addr constant [11 x i8] c"syscon_ids\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 313, i32 40 }
@___asan_gen_.80 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 300, i32 19 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 302, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [24 x i8] c"../drivers/mfd/syscon.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 308, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__initcall__kmod_syscon__184_330_syscon_init2, ptr @__ksymtab_device_node_to_regmap, ptr @__ksymtab_syscon_node_to_regmap, ptr @__ksymtab_syscon_regmap_lookup_by_compatible, ptr @__ksymtab_syscon_regmap_lookup_by_phandle, ptr @__ksymtab_syscon_regmap_lookup_by_phandle_args, ptr @__ksymtab_syscon_regmap_lookup_by_phandle_optional, ptr @of_syscon_register._entry, ptr @of_syscon_register._entry.11, ptr @of_syscon_register._entry_ptr, ptr @of_syscon_register._entry_ptr.13, ptr @syscon_probe._entry, ptr @syscon_probe._entry_ptr, ptr @.str, ptr @syscon_list_slock, ptr @syscon_list, ptr @.str.1, ptr @syscon_regmap_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @of_syscon_register._key, ptr @.str.10, ptr @.str.12, ptr @syscon_driver, ptr @syscon_ids, ptr @syscon_probe._key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscon_list_slock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscon_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscon_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_syscon_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_syscon_register._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_syscon_register._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscon_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscon_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscon_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscon_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @device_node_to_regmap(ptr noundef %np) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @device_node_get_regmap(ptr noundef %np, i1 noundef zeroext false)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @device_node_get_regmap(ptr noundef %np, i1 noundef zeroext %check_clk) unnamed_addr #0 align 64 {
entry:
  %reg_io_width.i = alloca i32, align 4
  %syscon_config.i = alloca %struct.regmap_config, align 4
  %res.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @syscon_list_slock) #6
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @syscon_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @syscon_list
  br i1 %cmp.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @syscon_list_slock) #6
  br label %if.then8

for.body:                                         ; preds = %for.cond
  %entry1.0 = getelementptr i8, ptr %.pn, i32 -8
  %1 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %entry1.0, align 4
  %cmp3 = icmp eq ptr %2, %np
  br i1 %cmp3, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.end:                                          ; preds = %for.body
  %entry1.0.le = getelementptr i8, ptr %.pn, i32 -8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @syscon_list_slock) #6
  %tobool.not = icmp eq ptr %entry1.0.le, null
  br i1 %tobool.not, label %for.end.if.then8_crit_edge, label %for.end.if.end10_crit_edge

for.end.if.end10_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

for.end.if.then8_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

if.then8:                                         ; preds = %for.end.if.then8_crit_edge, %for.end.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_io_width.i) #6
  %3 = ptrtoint ptr %reg_io_width.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg_io_width.i, align 4, !annotation !72
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %syscon_config.i) #6
  %4 = call ptr @memcpy(ptr %syscon_config.i, ptr @syscon_regmap_config, i32 172)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #6
  %5 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 1
  %6 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then8.of_syscon_register.exit_crit_edge, label %if.end.i

if.then8.of_syscon_register.exit_crit_edge:       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_syscon_register.exit

if.end.i:                                         ; preds = %if.then8
  %call2.i = call i32 @of_address_to_resource(ptr noundef %np, i32 noundef 0, ptr noundef nonnull %res.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.err_map.i_crit_edge

if.end.i.err_map.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_map.i

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #6
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end5.i.err_map.i_crit_edge, label %if.end9.i

if.end5.i.err_map.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_map.i

if.end9.i:                                        ; preds = %if.end5.i
  %call.i.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.2, ptr noundef null) #6
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.else.i, label %if.end9.i.if.end21.sink.split.i_crit_edge

if.end9.i.if.end21.sink.split.i_crit_edge:        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.sink.split.i

if.else.i:                                        ; preds = %if.end9.i
  %call.i112.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.3, ptr noundef null) #6
  %tobool.i113.not.i = icmp eq ptr %call.i112.i, null
  br i1 %tobool.i113.not.i, label %if.else15.i, label %if.else.i.if.end21.sink.split.i_crit_edge

if.else.i.if.end21.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.sink.split.i

if.else15.i:                                      ; preds = %if.else.i
  %call.i114.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.4, ptr noundef null) #6
  %tobool.i115.not.i = icmp eq ptr %call.i114.i, null
  br i1 %tobool.i115.not.i, label %if.else15.i.if.end21.i_crit_edge, label %if.else15.i.if.end21.sink.split.i_crit_edge

if.else15.i.if.end21.sink.split.i_crit_edge:      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.sink.split.i

if.else15.i.if.end21.i_crit_edge:                 ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

if.end21.sink.split.i:                            ; preds = %if.else15.i.if.end21.sink.split.i_crit_edge, %if.else.i.if.end21.sink.split.i_crit_edge, %if.end9.i.if.end21.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1, %if.end9.i.if.end21.sink.split.i_crit_edge ], [ 2, %if.else.i.if.end21.sink.split.i_crit_edge ], [ 3, %if.else15.i.if.end21.sink.split.i_crit_edge ]
  %val_format_endian14.i = getelementptr inbounds %struct.regmap_config, ptr %syscon_config.i, i32 0, i32 39
  %8 = ptrtoint ptr %val_format_endian14.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink.i, ptr %val_format_endian14.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end21.sink.split.i, %if.else15.i.if.end21.i_crit_edge
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.5, ptr noundef nonnull %reg_io_width.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool23.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool23.not.i, label %if.end21.i.if.end25.i_crit_edge, label %if.then24.i

if.end21.i.if.end25.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %reg_io_width.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %reg_io_width.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end25.i_crit_edge
  %call26.i = call i32 @of_hwspin_lock_get_id(ptr noundef %np, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call26.i)
  %10 = icmp sgt i32 %call26.i, -1
  br i1 %10, label %if.then28.i, label %if.then31.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %use_hwlock.i = getelementptr inbounds %struct.regmap_config, ptr %syscon_config.i, i32 0, i32 42
  %11 = ptrtoint ptr %use_hwlock.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %use_hwlock.i, align 4
  %hwlock_id.i = getelementptr inbounds %struct.regmap_config, ptr %syscon_config.i, i32 0, i32 44
  %12 = ptrtoint ptr %hwlock_id.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call26.i, ptr %hwlock_id.i, align 4
  %hwlock_mode.i = getelementptr inbounds %struct.regmap_config, ptr %syscon_config.i, i32 0, i32 45
  %13 = ptrtoint ptr %hwlock_mode.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %hwlock_mode.i, align 4
  br label %if.end34.i

if.then31.i:                                      ; preds = %if.end25.i
  %14 = zext i32 %call26.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call26.i, label %do.end.i [
    i32 -2, label %if.then31.i.if.end34.i_crit_edge
    i32 -517, label %if.then31.i.err_regmap.i_crit_edge
  ]

if.then31.i.err_regmap.i_crit_edge:               ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_regmap.i

if.then31.i.if.end34.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

do.end.i:                                         ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call26.i) #10
  br label %err_regmap.i

if.end34.i:                                       ; preds = %if.then31.i.if.end34.i_crit_edge, %if.then28.i
  %15 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %res.i, align 4
  %conv.i = zext i32 %16 to i64
  %call35.i = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.9, ptr noundef %np, i64 noundef %conv.i) #6
  %17 = ptrtoint ptr %syscon_config.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call35.i, ptr %syscon_config.i, align 4
  %18 = ptrtoint ptr %reg_io_width.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg_io_width.i, align 4
  %reg_stride.i = getelementptr inbounds %struct.regmap_config, ptr %syscon_config.i, i32 0, i32 2
  %20 = ptrtoint ptr %reg_stride.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %reg_stride.i, align 4
  %mul.i = shl i32 %19, 3
  %val_bits.i = getelementptr inbounds %struct.regmap_config, ptr %syscon_config.i, i32 0, i32 4
  %21 = ptrtoint ptr %val_bits.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul.i, ptr %val_bits.i, align 4
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %5, align 4
  %24 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %res.i, align 4
  %26 = add i32 %23, 1
  %27 = add i32 %19, %25
  %sub.i = sub i32 %26, %27
  %max_register.i = getelementptr inbounds %struct.regmap_config, ptr %syscon_config.i, i32 0, i32 19
  %28 = ptrtoint ptr %max_register.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub.i, ptr %max_register.i, align 4
  %call38.i = call ptr @__regmap_init_mmio_clk(ptr noundef null, ptr noundef null, ptr noundef nonnull %call6.i, ptr noundef nonnull %syscon_config.i, ptr noundef nonnull @of_syscon_register._key, ptr noundef nonnull @.str.10) #6
  %29 = ptrtoint ptr %syscon_config.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %syscon_config.i, align 4
  call void @kfree(ptr noundef %30) #6
  %cmp.i.i = icmp ugt ptr %call38.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end44.i, label %if.end48.i

do.end44.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  %call46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  %31 = ptrtoint ptr %call38.i to i32
  br label %err_regmap.i

if.end48.i:                                       ; preds = %if.end34.i
  br i1 %check_clk, label %if.then50.i, label %if.end48.i.if.end65.i_crit_edge

if.end48.i.if.end65.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65.i

if.then50.i:                                      ; preds = %if.end48.i
  %call51.i = call ptr @of_clk_get(ptr noundef %np, i32 noundef 0) #6
  %cmp.i116.i = icmp ugt ptr %call51.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116.i, label %if.then53.i, label %if.else59.i

if.then53.i:                                      ; preds = %if.then50.i
  %32 = ptrtoint ptr %call51.i to i32
  %cmp55.not.i = icmp eq ptr %call51.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp55.not.i, label %if.then53.i.if.end65.i_crit_edge, label %if.then53.i.err_clk.i_crit_edge

if.then53.i.err_clk.i_crit_edge:                  ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk.i

if.then53.i.if.end65.i_crit_edge:                 ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65.i

if.else59.i:                                      ; preds = %if.then50.i
  %call60.i = call i32 @regmap_mmio_attach_clk(ptr noundef %call38.i, ptr noundef %call51.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %if.else59.i.if.end65.i_crit_edge, label %if.then69.i

if.else59.i.if.end65.i_crit_edge:                 ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.else59.i.if.end65.i_crit_edge, %if.then53.i.if.end65.i_crit_edge, %if.end48.i.if.end65.i_crit_edge
  %regmap66.i = getelementptr inbounds %struct.syscon, ptr %call7.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %regmap66.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call38.i, ptr %regmap66.i, align 4
  %34 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %np, ptr %call7.i.i.i, align 8
  call void @_raw_spin_lock(ptr noundef nonnull @syscon_list_slock) #6
  %list.i = getelementptr inbounds %struct.syscon, ptr %call7.i.i.i, i32 0, i32 2
  %35 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @syscon_list, i32 0, i32 1), align 4
  %call.i.i117.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %35, ptr noundef nonnull @syscon_list) #6
  br i1 %call.i.i117.i, label %if.end.i.i.i, label %if.end65.i.list_add_tail.exit.i_crit_edge

if.end65.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %list.i, ptr getelementptr inbounds (%struct.list_head, ptr @syscon_list, i32 0, i32 1), align 4
  %36 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @syscon_list, ptr %list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.syscon, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %prev3.i.i.i, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %list.i, ptr %35, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end65.i.list_add_tail.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @syscon_list_slock) #6
  br label %of_syscon_register.exit

if.then69.i:                                      ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_put(ptr noundef %call51.i) #6
  br label %err_clk.i

err_clk.i:                                        ; preds = %if.then69.i, %if.then53.i.err_clk.i_crit_edge
  %ret.0.i = phi i32 [ %32, %if.then53.i.err_clk.i_crit_edge ], [ %call60.i, %if.then69.i ]
  call void @regmap_exit(ptr noundef %call38.i) #6
  br label %err_regmap.i

err_regmap.i:                                     ; preds = %err_clk.i, %do.end44.i, %do.end.i, %if.then31.i.err_regmap.i_crit_edge
  %ret.1.i = phi i32 [ %31, %do.end44.i ], [ %ret.0.i, %err_clk.i ], [ %call26.i, %do.end.i ], [ %call26.i, %if.then31.i.err_regmap.i_crit_edge ]
  call void @iounmap(ptr noundef nonnull %call6.i) #6
  br label %err_map.i

err_map.i:                                        ; preds = %err_regmap.i, %if.end5.i.err_map.i_crit_edge, %if.end.i.err_map.i_crit_edge
  %ret.2.i = phi i32 [ %ret.1.i, %err_regmap.i ], [ -12, %if.end.i.err_map.i_crit_edge ], [ -12, %if.end5.i.err_map.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  %39 = inttoptr i32 %ret.2.i to ptr
  br label %of_syscon_register.exit

of_syscon_register.exit:                          ; preds = %err_map.i, %list_add_tail.exit.i, %if.then8.of_syscon_register.exit_crit_edge
  %retval.0.i = phi ptr [ %39, %err_map.i ], [ %call7.i.i.i, %list_add_tail.exit.i ], [ inttoptr (i32 -12 to ptr), %if.then8.of_syscon_register.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #6
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %syscon_config.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_io_width.i) #6
  br label %if.end10

if.end10:                                         ; preds = %of_syscon_register.exit, %for.end.if.end10_crit_edge
  %syscon.1 = phi ptr [ %entry1.0.le, %for.end.if.end10_crit_edge ], [ %retval.0.i, %of_syscon_register.exit ]
  %cmp.i = icmp ugt ptr %syscon.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.syscon, ptr %syscon.1, i32 0, i32 1
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end10.cleanup_crit_edge
  %retval.0 = phi ptr [ %41, %if.end14 ], [ %syscon.1, %if.end10.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @syscon_node_to_regmap(ptr noundef %np) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call fastcc ptr @device_node_get_regmap(ptr noundef %np, i1 noundef zeroext true)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end ], [ inttoptr (i32 -22 to ptr), %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef %s) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @of_device_is_compatible(ptr noundef nonnull %call, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.syscon_node_to_regmap.exit_crit_edge, label %if.end.i

if.end.syscon_node_to_regmap.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %syscon_node_to_regmap.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call fastcc ptr @device_node_get_regmap(ptr noundef nonnull %call, i1 noundef zeroext true) #6
  br label %syscon_node_to_regmap.exit

syscon_node_to_regmap.exit:                       ; preds = %if.end.i, %if.end.syscon_node_to_regmap.exit_crit_edge
  %retval.0.i = phi ptr [ %call2.i, %if.end.i ], [ inttoptr (i32 -22 to ptr), %if.end.syscon_node_to_regmap.exit_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %syscon_node_to_regmap.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %syscon_node_to_regmap.exit ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef %np, ptr noundef %property) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %property, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %0 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull %property, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.of_parse_phandle.exit_crit_edge

if.then.of_parse_phandle.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %if.then.of_parse_phandle.exit_crit_edge
  %retval.0.i = phi ptr [ %2, %if.end.i ], [ null, %if.then.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  br label %if.end

if.end:                                           ; preds = %of_parse_phandle.exit, %entry.if.end_crit_edge
  %syscon_np.0 = phi ptr [ %retval.0.i, %of_parse_phandle.exit ], [ %np, %entry.if.end_crit_edge ]
  %tobool1.not = icmp eq ptr %syscon_np.0, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i11 = call i32 @of_device_is_compatible(ptr noundef nonnull %syscon_np.0, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %tobool.not.i12 = icmp eq i32 %call.i11, 0
  br i1 %tobool.not.i12, label %if.end4.syscon_node_to_regmap.exit_crit_edge, label %if.end.i13

if.end4.syscon_node_to_regmap.exit_crit_edge:     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %syscon_node_to_regmap.exit

if.end.i13:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = call fastcc ptr @device_node_get_regmap(ptr noundef nonnull %syscon_np.0, i1 noundef zeroext true) #6
  br label %syscon_node_to_regmap.exit

syscon_node_to_regmap.exit:                       ; preds = %if.end.i13, %if.end4.syscon_node_to_regmap.exit_crit_edge
  %retval.0.i14 = phi ptr [ %call2.i, %if.end.i13 ], [ inttoptr (i32 -22 to ptr), %if.end4.syscon_node_to_regmap.exit_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %syscon_np.0) #6
  br label %cleanup

cleanup:                                          ; preds = %syscon_node_to_regmap.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i14, %syscon_node_to_regmap.exit ], [ inttoptr (i32 -19 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @syscon_regmap_lookup_by_phandle_args(ptr noundef %np, ptr noundef %property, i32 noundef %arg_count, ptr nocapture noundef writeonly %out_args) #0 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #6
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef %property, ptr noundef null, i32 noundef %arg_count, i32 noundef 0, ptr noundef nonnull %args) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = inttoptr i32 %call.i to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %args, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i21 = call i32 @of_device_is_compatible(ptr noundef nonnull %3, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool.not.i = icmp eq i32 %call.i21, 0
  br i1 %tobool.not.i, label %if.end6.syscon_node_to_regmap.exit_crit_edge, label %if.end.i

if.end6.syscon_node_to_regmap.exit_crit_edge:     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %syscon_node_to_regmap.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = call fastcc ptr @device_node_get_regmap(ptr noundef nonnull %3, i1 noundef zeroext true) #6
  br label %syscon_node_to_regmap.exit

syscon_node_to_regmap.exit:                       ; preds = %if.end.i, %if.end6.syscon_node_to_regmap.exit_crit_edge
  %retval.0.i = phi ptr [ %call2.i, %if.end.i ], [ inttoptr (i32 -22 to ptr), %if.end6.syscon_node_to_regmap.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg_count)
  %cmp22.not = icmp eq i32 %arg_count, 0
  br i1 %cmp22.not, label %syscon_node_to_regmap.exit.for.end_crit_edge, label %for.body.preheader

syscon_node_to_regmap.exit.for.end_crit_edge:     ; preds = %syscon_node_to_regmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %syscon_node_to_regmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  %uglygep = getelementptr inbounds i8, ptr %args, i32 8
  %4 = shl nuw i32 %arg_count, 2
  %5 = call ptr @memcpy(ptr %out_args, ptr %uglygep, i32 %4)
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %syscon_node_to_regmap.exit.for.end_crit_edge
  call void @of_node_put(ptr noundef nonnull %3) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %1, %if.then ], [ %retval.0.i, %for.end ], [ inttoptr (i32 -19 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #6
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @syscon_regmap_lookup_by_phandle_optional(ptr noundef %np, ptr noundef %property) #0 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %property, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #6
  %0 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull %property, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.of_parse_phandle.exit.i_crit_edge

if.then.i.of_parse_phandle.exit.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_parse_phandle.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args.i.i, align 4
  br label %of_parse_phandle.exit.i

of_parse_phandle.exit.i:                          ; preds = %if.end.i.i, %if.then.i.of_parse_phandle.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %2, %if.end.i.i ], [ null, %if.then.i.of_parse_phandle.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %of_parse_phandle.exit.i, %entry.if.end.i_crit_edge
  %syscon_np.0.i = phi ptr [ %retval.0.i.i, %of_parse_phandle.exit.i ], [ %np, %entry.if.end.i_crit_edge ]
  %tobool1.not.i = icmp eq ptr %syscon_np.0.i, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call.i11.i = call i32 @of_device_is_compatible(ptr noundef nonnull %syscon_np.0.i, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.thread14, label %syscon_regmap_lookup_by_phandle.exit

land.lhs.true.thread14:                           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef nonnull %syscon_np.0.i) #6
  br label %if.end

syscon_regmap_lookup_by_phandle.exit:             ; preds = %if.end4.i
  %call2.i.i = call fastcc ptr @device_node_get_regmap(ptr noundef nonnull %syscon_np.0.i, i1 noundef zeroext true) #6
  call void @of_node_put(ptr noundef nonnull %syscon_np.0.i) #6
  %cmp = icmp eq ptr %call2.i.i, inttoptr (i32 -19 to ptr)
  br i1 %cmp, label %syscon_regmap_lookup_by_phandle.exit.cleanup_crit_edge, label %syscon_regmap_lookup_by_phandle.exit.if.end_crit_edge

syscon_regmap_lookup_by_phandle.exit.if.end_crit_edge: ; preds = %syscon_regmap_lookup_by_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

syscon_regmap_lookup_by_phandle.exit.cleanup_crit_edge: ; preds = %syscon_regmap_lookup_by_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %syscon_regmap_lookup_by_phandle.exit.if.end_crit_edge, %land.lhs.true.thread14
  %retval.0.i7 = phi ptr [ %call2.i.i, %syscon_regmap_lookup_by_phandle.exit.if.end_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.thread14 ]
  br label %cleanup

cleanup:                                          ; preds = %if.end, %syscon_regmap_lookup_by_phandle.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i7, %if.end ], [ null, %if.end.i.cleanup_crit_edge ], [ null, %syscon_regmap_lookup_by_phandle.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @syscon_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @syscon_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_hwspin_lock_get_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_mmio_attach_clk(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @syscon_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %syscon_config = alloca %struct.regmap_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %syscon_config) #6
  %2 = call ptr @memcpy(ptr %syscon_config, ptr @syscon_regmap_config, i32 172)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call3, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %4
  %add.i = add i32 %sub.i, %6
  %call8 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %4, i32 noundef %add.i) #6
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %7 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end.i, align 4
  %9 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call3, align 4
  %add.i57 = add i32 %8, -3
  %sub = sub i32 %add.i57, %10
  %max_register = getelementptr inbounds %struct.regmap_config, ptr %syscon_config, i32 0, i32 19
  %11 = ptrtoint ptr %max_register to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %max_register, align 4
  %tobool13.not = icmp eq ptr %1, null
  br i1 %tobool13.not, label %if.end11.if.end15_crit_edge, label %if.then14

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %syscon_config to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %syscon_config, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11.if.end15_crit_edge
  %call16 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull %call8, ptr noundef nonnull %syscon_config, ptr noundef nonnull @syscon_probe._key, ptr noundef nonnull @.str.14) #6
  %regmap = getelementptr inbounds %struct.syscon, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call16, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end22

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #10
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @syscon_probe.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@syscon_probe, %if.then29)) #6
          to label %cleanup [label %if.then29], !srcloc !73

if.then29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @syscon_probe.__UNIQUE_ID_ddebug183, ptr noundef %dev1, ptr noundef nonnull @.str.19, ptr noundef nonnull %call3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end22, %do.end, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ 0, %if.then29 ], [ 0, %if.end22 ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %syscon_config) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !37, !39, !40, !42, !43, !44, !46, !48, !50, !51, !53, !54, !55, !56, !57, !58, !60, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__ksymtab_device_node_to_regmap, !1, !"__ksymtab_device_node_to_regmap", i1 false, i1 false}
!1 = !{!"../drivers/mfd/syscon.c", i32 181, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mfd/syscon.c", i32 185, i32 35}
!4 = !{ptr @__ksymtab_syscon_node_to_regmap, !5, !"__ksymtab_syscon_node_to_regmap", i1 false, i1 false}
!5 = !{!"../drivers/mfd/syscon.c", i32 190, i32 1}
!6 = !{ptr @__ksymtab_syscon_regmap_lookup_by_compatible, !7, !"__ksymtab_syscon_regmap_lookup_by_compatible", i1 false, i1 false}
!7 = !{!"../drivers/mfd/syscon.c", i32 206, i32 1}
!8 = !{ptr @__ksymtab_syscon_regmap_lookup_by_phandle, !9, !"__ksymtab_syscon_regmap_lookup_by_phandle", i1 false, i1 false}
!9 = !{!"../drivers/mfd/syscon.c", i32 227, i32 1}
!10 = !{ptr @__ksymtab_syscon_regmap_lookup_by_phandle_args, !11, !"__ksymtab_syscon_regmap_lookup_by_phandle_args", i1 false, i1 false}
!11 = !{!"../drivers/mfd/syscon.c", i32 256, i32 1}
!12 = !{ptr @__ksymtab_syscon_regmap_lookup_by_phandle_optional, !13, !"__ksymtab_syscon_regmap_lookup_by_phandle_optional", i1 false, i1 false}
!13 = !{!"../drivers/mfd/syscon.c", i32 274, i32 1}
!14 = !{ptr @__initcall__kmod_syscon__184_330_syscon_init2, !15, !"__initcall__kmod_syscon__184_330_syscon_init2", i1 false, i1 false}
!15 = !{!"../drivers/mfd/syscon.c", i32 330, i32 1}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mfd/syscon.c", i32 28, i32 8}
!18 = !{ptr @syscon_list_slock, !17, !"syscon_list_slock", i1 false, i1 false}
!19 = !{ptr @syscon_list, !20, !"syscon_list", i1 false, i1 false}
!20 = !{!"../drivers/mfd/syscon.c", i32 29, i32 8}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mfd/syscon.c", i32 70, i32 32}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mfd/syscon.c", i32 72, i32 37}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mfd/syscon.c", i32 74, i32 37}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mfd/syscon.c", i32 82, i32 33}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mfd/syscon.c", i32 97, i32 4}
!31 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @of_syscon_register._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @of_syscon_register._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mfd/syscon.c", i32 104, i32 45}
!37 = !{ptr @of_syscon_register._key, !38, !"_key", i1 false, i1 false}
!38 = !{!"../drivers/mfd/syscon.c", i32 110, i32 11}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mfd/syscon.c", i32 113, i32 3}
!42 = !{ptr @of_syscon_register._entry.11, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @of_syscon_register._entry_ptr.13, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @syscon_regmap_config, !45, !"syscon_regmap_config", i1 false, i1 false}
!45 = !{!"../drivers/mfd/syscon.c", i32 37, i32 35}
!46 = !{ptr @syscon_driver, !47, !"syscon_driver", i1 false, i1 false}
!47 = !{!"../drivers/mfd/syscon.c", i32 318, i32 31}
!48 = !{ptr @syscon_probe._key, !49, !"_key", i1 false, i1 false}
!49 = !{!"../drivers/mfd/syscon.c", i32 300, i32 19}
!50 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mfd/syscon.c", i32 302, i32 3}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @syscon_probe._entry, !52, !"_entry", i1 false, i1 false}
!57 = !{ptr @syscon_probe._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mfd/syscon.c", i32 308, i32 2}
!60 = !{ptr @syscon_probe.__UNIQUE_ID_ddebug183, !59, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!61 = !{ptr @syscon_ids, !62, !"syscon_ids", i1 false, i1 false}
!62 = !{!"../drivers/mfd/syscon.c", i32 313, i32 40}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"auto-init"}
!73 = !{i64 2148727600, i64 2148727605, i64 2148727618, i64 2148727662, i64 2148727696, i64 2148727717}
