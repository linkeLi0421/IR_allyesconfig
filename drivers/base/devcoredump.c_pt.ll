; ModuleID = '/llk/IR_all_yes/drivers/base/devcoredump.c_pt.bc'
source_filename = "../drivers/base/devcoredump.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dev_coredumpv\22, \22a\22\09"
module asm "\09.weak\09__crc_dev_coredumpv\09\09\09\09"
module asm "\09.long\09__crc_dev_coredumpv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_coredumpv:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_coredumpv\22\09\09\09\09\09"
module asm "__kstrtabns_dev_coredumpv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dev_coredumpm\22, \22a\22\09"
module asm "\09.weak\09__crc_dev_coredumpm\09\09\09\09"
module asm "\09.long\09__crc_dev_coredumpm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_coredumpm:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_coredumpm\22\09\09\09\09\09"
module asm "__kstrtabns_dev_coredumpm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dev_coredumpsg\22, \22a\22\09"
module asm "\09.weak\09__crc_dev_coredumpsg\09\09\09\09"
module asm "\09.long\09__crc_dev_coredumpsg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_coredumpsg:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_coredumpsg\22\09\09\09\09\09"
module asm "__kstrtabns_dev_coredumpsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.class_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.devcd_entry = type { %struct.device, ptr, i32, ptr, ptr, ptr, %struct.delayed_work, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__kstrtab_dev_coredumpv = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_coredumpv = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_coredumpv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_coredumpv to i32), ptr @__kstrtab_dev_coredumpv, ptr @__kstrtabns_dev_coredumpv }, section "___ksymtab_gpl+dev_coredumpv", align 4
@dev_coredumpm.devcd_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@devcd_disabled = internal global { i1, [31 x i8] } zeroinitializer, align 32
@devcd_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.2, ptr null, ptr @devcd_class_groups, ptr @devcd_dev_groups, ptr null, ptr null, ptr null, ptr null, ptr @devcd_dev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devcd%d\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"failing_device\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"devcoredump\00", [20 x i8] zeroinitializer }, align 32
@dev_coredumpm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 300, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"devcoredump create_link failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dev_coredumpm\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/base/devcoredump.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dev_coredumpm._entry_ptr = internal global ptr @dev_coredumpm._entry, section ".printk_index", align 4
@dev_coredumpm.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&devcd->del_wk)->work)\00", [53 x i8] zeroinitializer }, align 32
@dev_coredumpm.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&devcd->del_wk)->timer\00", [39 x i8] zeroinitializer }, align 32
@__kstrtab_dev_coredumpm = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_coredumpm = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_coredumpm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_coredumpm to i32), ptr @__kstrtab_dev_coredumpm, ptr @__kstrtabns_dev_coredumpm }, section "___ksymtab_gpl+dev_coredumpm", align 4
@__kstrtab_dev_coredumpsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_coredumpsg = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_coredumpsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_coredumpsg to i32), ptr @__kstrtab_dev_coredumpsg, ptr @__kstrtabns_dev_coredumpsg }, section "___ksymtab_gpl+dev_coredumpsg", align 4
@__initcall__kmod_devcoredump__228_340_devcoredump_init6 = internal global ptr @devcoredump_init, section ".initcall6.init", align 4
@__exitcall_devcoredump_exit = internal global ptr @devcoredump_exit, section ".exitcall.exit", align 4
@devcd_class_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @devcd_class_group, ptr null], [24 x i8] zeroinitializer }, align 32
@devcd_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @devcd_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@devcd_class_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @devcd_class_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@devcd_class_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @class_attr_disabled, ptr null], [24 x i8] zeroinitializer }, align 32
@class_attr_disabled = internal global { %struct.class_attribute, [36 x i8] } { %struct.class_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @disabled_show, ptr @disabled_store }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@devcd_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr null, ptr @devcd_dev_bin_attrs }, [44 x i8] zeroinitializer }, align 32
@devcd_dev_bin_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @devcd_attr_data, ptr null], [24 x i8] zeroinitializer }, align 32
@devcd_attr_data = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.13, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @devcd_data_read, ptr @devcd_data_write, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@devcoredump_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@___asan_gen_.14 = private unnamed_addr constant [12 x i8] c"devcd_count\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 254, i32 18 }
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"devcd_disabled\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"devcd_class\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 152, i32 21 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 284, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 297, i32 10 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 299, i32 17 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 300, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 302, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [19 x i8] c"devcd_class_groups\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"devcd_dev_groups\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 107, i32 38 }
@___asan_gen_.66 = private unnamed_addr constant [18 x i8] c"devcd_class_group\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 150, i32 1 }
@___asan_gen_.69 = private unnamed_addr constant [18 x i8] c"devcd_class_attrs\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 146, i32 26 }
@___asan_gen_.72 = private unnamed_addr constant [20 x i8] c"class_attr_disabled\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 144, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 122, i32 25 }
@___asan_gen_.81 = private unnamed_addr constant [16 x i8] c"devcd_dev_group\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 103, i32 37 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"devcd_dev_bin_attrs\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 99, i32 30 }
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"devcd_attr_data\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 92, i32 29 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 93, i32 20 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private constant [30 x i8] c"../drivers/base/devcoredump.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 338, i32 9 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__exitcall_devcoredump_exit, ptr @__initcall__kmod_devcoredump__228_340_devcoredump_init6, ptr @__ksymtab_dev_coredumpm, ptr @__ksymtab_dev_coredumpsg, ptr @__ksymtab_dev_coredumpv, ptr @dev_coredumpm._entry, ptr @dev_coredumpm._entry_ptr, ptr @devcoredump_exit, ptr @dev_coredumpm.devcd_count, ptr @devcd_disabled, ptr @devcd_class, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @dev_coredumpm.__key, ptr @.str.8, ptr @dev_coredumpm.__key.9, ptr @.str.10, ptr @devcd_class_groups, ptr @devcd_dev_groups, ptr @devcd_class_group, ptr @devcd_class_attrs, ptr @class_attr_disabled, ptr @.str.11, ptr @.str.12, ptr @devcd_dev_group, ptr @devcd_dev_bin_attrs, ptr @devcd_attr_data, ptr @.str.13, ptr @devcoredump_init.__key], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_coredumpm.devcd_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devcd_disabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devcd_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_coredumpm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_coredumpm.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_coredumpm.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devcd_class_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devcd_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devcd_class_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devcd_class_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_attr_disabled to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devcd_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devcd_dev_bin_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devcd_attr_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devcoredump_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dev_coredumpv(ptr noundef %dev, ptr noundef %data, i32 noundef %datalen, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dev_coredumpm(ptr noundef %dev, ptr noundef null, ptr noundef %data, i32 noundef %datalen, i32 noundef %gfp, ptr noundef nonnull @devcd_readv, ptr noundef nonnull @devcd_freev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dev_coredumpm(ptr noundef %dev, ptr noundef %owner, ptr noundef %data, i32 noundef %datalen, i32 noundef %gfp, ptr noundef %read, ptr noundef %free) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %.b91 = load i1, ptr @devcd_disabled, align 1
  br i1 %.b91, label %entry.free60_crit_edge, label %if.end

entry.free60_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %free60

if.end:                                           ; preds = %entry
  %call = tail call ptr @class_find_device(ptr noundef nonnull @devcd_class, ptr noundef null, ptr noundef %dev, ptr noundef nonnull @devcd_match_failing) #7
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @put_device(ptr noundef nonnull %call) #7
  br label %free60

if.end3:                                          ; preds = %if.end
  %call4 = tail call zeroext i1 @try_module_get(ptr noundef %owner) #7
  br i1 %call4, label %if.end6, label %if.end3.free60_crit_edge

if.end3.free60_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %free60

if.end6:                                          ; preds = %if.end3
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end6.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !66

if.end6.kzalloc.exit_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %if.end6
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %if.end6.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.end6.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 11
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 1056) #10
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %kzalloc.exit.put_module_crit_edge, label %if.end10

kzalloc.exit.put_module_crit_edge:                ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_module

if.end10:                                         ; preds = %kzalloc.exit
  %owner11 = getelementptr inbounds %struct.devcd_entry, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %owner11 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %owner, ptr %owner11, align 8
  %data12 = getelementptr inbounds %struct.devcd_entry, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %data12 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %data, ptr %data12, align 8
  %datalen13 = getelementptr inbounds %struct.devcd_entry, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %datalen13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %datalen, ptr %datalen13, align 4
  %read14 = getelementptr inbounds %struct.devcd_entry, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %read14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %read, ptr %read14, align 4
  %free15 = getelementptr inbounds %struct.devcd_entry, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %free15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %free, ptr %free15, align 8
  %call16 = tail call ptr @get_device(ptr noundef %dev) #7
  %failing_dev = getelementptr inbounds %struct.devcd_entry, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %failing_dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call16, ptr %failing_dev, align 8
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i) #7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @dev_coredumpm.devcd_count, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr nonnull @dev_coredumpm.devcd_count, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @dev_coredumpm.devcd_count, ptr nonnull @dev_coredumpm.devcd_count, i32 1, ptr nonnull elementtype(i32) @dev_coredumpm.devcd_count) #7, !srcloc !68
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !69
  %call19 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str, i32 noundef %asmresult.i.i.i.i) #7
  %class = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 33
  %9 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @devcd_class, ptr %class, align 4
  %call22 = tail call i32 @device_add(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %put_device

if.end25:                                         ; preds = %if.end10
  %call28 = tail call i32 @sysfs_create_link(ptr noundef nonnull %call7.i.i, ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %lor.lhs.false, label %if.end25.do.end_crit_edge

if.end25.do.end_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end25
  %call33 = tail call i32 @sysfs_create_link(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %lor.lhs.false.do.body38_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false.do.body38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body38

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end25.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.3) #11
  br label %do.body38

do.body38:                                        ; preds = %do.end, %lor.lhs.false.do.body38_crit_edge
  %del_wk = getelementptr inbounds %struct.devcd_entry, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %del_wk, i32 noundef 0) #7
  %10 = ptrtoint ptr %del_wk to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %del_wk, align 4
  %lockdep_map = getelementptr inbounds %struct.devcd_entry, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @dev_coredumpm.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry46 = getelementptr inbounds %struct.devcd_entry, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 1
  %11 = ptrtoint ptr %entry46 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry46, ptr %entry46, align 8
  %prev.i = getelementptr inbounds %struct.devcd_entry, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry46, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.devcd_entry, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @devcd_del, ptr %func, align 8
  %timer = getelementptr inbounds %struct.devcd_entry, ptr %call7.i.i, i32 0, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.10, ptr noundef nonnull @dev_coredumpm.__key.9) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i92 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %del_wk, i32 noundef 30000) #7
  br label %cleanup

put_device:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #7
  br label %put_module

put_module:                                       ; preds = %put_device, %kzalloc.exit.put_module_crit_edge
  tail call void @module_put(ptr noundef %owner) #7
  br label %free60

free60:                                           ; preds = %put_module, %if.end3.free60_crit_edge, %if.then2, %entry.free60_crit_edge
  tail call void %free(ptr noundef %data) #7
  br label %cleanup

cleanup:                                          ; preds = %free60, %do.body38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devcd_readv(ptr noundef %buffer, i64 noundef %offset, i32 noundef %count, ptr noundef %data, i32 noundef %datalen) #0 align 64 {
entry:
  %offset.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %offset, ptr %offset.addr, align 8
  %call = call i32 @memory_read_from_buffer(ptr noundef %buffer, i32 noundef %count, ptr noundef nonnull %offset.addr, ptr noundef %data, i32 noundef %datalen) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devcd_freev(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @vfree(ptr noundef %data) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @devcd_match_failing(ptr nocapture noundef readonly %dev, ptr noundef readnone %failing) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %failing_dev = getelementptr inbounds %struct.devcd_entry, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %failing_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %failing_dev, align 8
  %cmp = icmp eq ptr %1, %failing
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devcd_del(ptr noundef %wk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wk, i32 -948
  tail call void @device_del(ptr noundef %add.ptr) #7
  tail call void @put_device(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dev_coredumpsg(ptr noundef %dev, ptr noundef %table, i32 noundef %datalen, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dev_coredumpm(ptr noundef %dev, ptr noundef null, ptr noundef %table, i32 noundef %datalen, i32 noundef %gfp, ptr noundef nonnull @devcd_read_from_sgtable, ptr noundef nonnull @devcd_free_sgtable)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devcd_read_from_sgtable(ptr noundef %buffer, i64 noundef %offset, i32 noundef %buf_len, ptr noundef %data, i32 noundef %data_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %data_len to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %offset)
  %cmp = icmp slt i64 %conv, %offset
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv2 = zext i32 %buf_len to i64
  %add = add i64 %conv2, %offset
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp4 = icmp sgt i64 %add, %conv
  %0 = trunc i64 %offset to i32
  %conv8 = sub i32 %data_len, %0
  %buf_len.addr.0 = select i1 %cmp4, i32 %conv8, i32 %buf_len
  %call = tail call i32 @sg_nents(ptr noundef %data) #7
  %call11 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %data, i32 noundef %call, ptr noundef %buffer, i32 noundef %buf_len.addr.0, i32 noundef %0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devcd_free_sgtable(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call25.i = tail call i32 @sg_nents(ptr noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp sgt i32 %call25.i, 0
  br i1 %cmp26.i, label %entry.for.body.i_crit_edge, label %entry.while.cond.preheader.i_crit_edge

entry.while.cond.preheader.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader.i

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

while.cond.preheader.i:                           ; preds = %for.inc.i.while.cond.preheader.i_crit_edge, %entry.while.cond.preheader.i_crit_edge
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %and.i2129.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2129.i)
  %tobool.i.not30.i = icmp eq i32 %and.i2129.i, 0
  br i1 %tobool.i.not30.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i._devcd_free_sgtable.exit_crit_edge

while.cond.preheader.i._devcd_free_sgtable.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_devcd_free_sgtable.exit

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %iter.028.i = phi ptr [ %call2.i, %for.inc.i.for.body.i_crit_edge ], [ %data, %entry.for.body.i_crit_edge ]
  %i.027.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %iter.028.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iter.028.i, align 4
  %and.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !66

do.body2.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !70
  unreachable

sg_page.exit.i:                                   ; preds = %for.body.i
  %and.i.i = and i32 %3, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %sg_page.exit.i.for.inc.i_crit_edge, label %if.then.i

sg_page.exit.i.for.inc.i_crit_edge:               ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = inttoptr i32 %and.i.i to ptr
  tail call void @__free_pages(ptr noundef nonnull %4, i32 noundef 0) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %sg_page.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %call2.i = tail call ptr @sg_next(ptr noundef %iter.028.i) #7
  %call.i = tail call i32 @sg_nents(ptr noundef %data) #7
  %cmp.i = icmp slt i32 %inc.i, %call.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.while.cond.preheader.i_crit_edge

for.inc.i.while.cond.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %delete_iter.032.i = phi ptr [ %delete_iter.1.i, %if.end7.i.while.body.i_crit_edge ], [ %data, %while.cond.preheader.i.while.body.i_crit_edge ]
  %iter.131.i = phi ptr [ %iter.2.i, %if.end7.i.while.body.i_crit_edge ], [ %data, %while.cond.preheader.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.scatterlist, ptr %iter.131.i, i32 1
  %5 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %incdec.ptr.i, align 4
  %and.i22.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22.i)
  %tobool.i23.not.i = icmp eq i32 %and.i22.i, 0
  br i1 %tobool.i23.not.i, label %while.body.i.if.end7.i_crit_edge, label %if.then5.i

while.body.i.if.end7.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then5.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i24.i = and i32 %6, -4
  %7 = inttoptr i32 %and.i24.i to ptr
  tail call void @kfree(ptr noundef %delete_iter.032.i) #7
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %while.body.i.if.end7.i_crit_edge
  %iter.2.i = phi ptr [ %7, %if.then5.i ], [ %incdec.ptr.i, %while.body.i.if.end7.i_crit_edge ]
  %delete_iter.1.i = phi ptr [ %7, %if.then5.i ], [ %delete_iter.032.i, %while.body.i.if.end7.i_crit_edge ]
  %8 = ptrtoint ptr %iter.2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iter.2.i, align 4
  %and.i21.i = and i32 %9, 2
  %tobool.i.not.i = icmp eq i32 %and.i21.i, 0
  br i1 %tobool.i.not.i, label %if.end7.i.while.body.i_crit_edge, label %if.end7.i._devcd_free_sgtable.exit_crit_edge

if.end7.i._devcd_free_sgtable.exit_crit_edge:     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_devcd_free_sgtable.exit

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

_devcd_free_sgtable.exit:                         ; preds = %if.end7.i._devcd_free_sgtable.exit_crit_edge, %while.cond.preheader.i._devcd_free_sgtable.exit_crit_edge
  %delete_iter.0.lcssa.i = phi ptr [ %data, %while.cond.preheader.i._devcd_free_sgtable.exit_crit_edge ], [ %delete_iter.1.i, %if.end7.i._devcd_free_sgtable.exit_crit_edge ]
  tail call void @kfree(ptr noundef %delete_iter.0.lcssa.i) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @devcoredump_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__class_register(ptr noundef nonnull @devcd_class, ptr noundef nonnull @devcoredump_init.__key) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @devcoredump_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @class_for_each_device(ptr noundef nonnull @devcd_class, ptr noundef null, ptr noundef null, ptr noundef nonnull @devcd_free) #7
  tail call void @class_unregister(ptr noundef nonnull @devcd_class) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_for_each_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devcd_free(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %del_wk = getelementptr inbounds %struct.devcd_entry, ptr %dev, i32 0, i32 6
  %call1 = tail call zeroext i1 @flush_delayed_work(ptr noundef %del_wk) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memory_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devcd_dev_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %free = getelementptr inbounds %struct.devcd_entry, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free, align 8
  %data = getelementptr inbounds %struct.devcd_entry, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  tail call void %1(ptr noundef %3) #7
  %owner = getelementptr inbounds %struct.devcd_entry, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %owner, align 8
  tail call void @module_put(ptr noundef %5) #7
  %failing_dev = getelementptr inbounds %struct.devcd_entry, ptr %dev, i32 0, i32 7
  %6 = ptrtoint ptr %failing_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %failing_dev, align 8
  %sd = getelementptr inbounds %struct.kobject, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sysfs_delete_link(ptr noundef %7, ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %failing_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %failing_dev, align 8
  tail call void @put_device(ptr noundef %11) #7
  tail call void @kfree(ptr noundef %dev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disabled_show(ptr nocapture noundef readnone %class, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1 = load i1, ptr @devcd_disabled, align 1
  %conv = zext i1 %.b1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %conv) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disabled_store(ptr nocapture noundef readnone %class, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtol(ptr noundef %buf, ptr noundef null, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @devcd_disabled, align 1
  %call1 = tail call i32 @class_for_each_device(ptr noundef nonnull @devcd_class, ptr noundef null, ptr noundef null, ptr noundef nonnull @devcd_free) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devcd_data_read(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buffer, i64 noundef %offset, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %read = getelementptr inbounds %struct.devcd_entry, ptr %kobj, i32 0, i32 4
  %0 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read, align 4
  %data = getelementptr inbounds %struct.devcd_entry, ptr %kobj, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %datalen = getelementptr inbounds %struct.devcd_entry, ptr %kobj, i32 0, i32 2
  %4 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %datalen, align 4
  %call2 = tail call i32 %1(ptr noundef %buffer, i64 noundef %offset, i32 noundef %count, ptr noundef %3, i32 noundef %5) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devcd_data_write(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef readnone %buffer, i64 noundef %offset, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %del_wk = getelementptr inbounds %struct.devcd_entry, ptr %kobj, i32 0, i32 6
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %del_wk, i32 noundef 0) #7
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_delete_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !38, !40, !42, !43, !45, !47, !49, !51, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__ksymtab_dev_coredumpv, !1, !"__ksymtab_dev_coredumpv", i1 false, i1 false}
!1 = !{!"../drivers/base/devcoredump.c", i32 186, i32 1}
!2 = !{ptr @dev_coredumpm.devcd_count, !3, !"devcd_count", i1 false, i1 false}
!3 = !{!"../drivers/base/devcoredump.c", i32 254, i32 18}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/base/devcoredump.c", i32 284, i32 34}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/base/devcoredump.c", i32 297, i32 10}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/base/devcoredump.c", i32 299, i32 17}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/base/devcoredump.c", i32 300, i32 3}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @dev_coredumpm._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @dev_coredumpm._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @dev_coredumpm.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/base/devcoredump.c", i32 302, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @dev_coredumpm.__key.9, !19, !"__key", i1 false, i1 false}
!22 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__ksymtab_dev_coredumpm, !24, !"__ksymtab_dev_coredumpm", i1 false, i1 false}
!24 = !{!"../drivers/base/devcoredump.c", i32 313, i32 1}
!25 = !{ptr @__ksymtab_dev_coredumpsg, !26, !"__ksymtab_dev_coredumpsg", i1 false, i1 false}
!26 = !{!"../drivers/base/devcoredump.c", i32 334, i32 1}
!27 = !{ptr @__initcall__kmod_devcoredump__228_340_devcoredump_init6, !28, !"__initcall__kmod_devcoredump__228_340_devcoredump_init6", i1 false, i1 false}
!28 = !{!"../drivers/base/devcoredump.c", i32 340, i32 1}
!29 = !{ptr @__exitcall_devcoredump_exit, !30, !"__exitcall_devcoredump_exit", i1 false, i1 false}
!30 = !{!"../drivers/base/devcoredump.c", i32 347, i32 1}
!31 = distinct !{null, !32, !"devcd_disabled", i1 false, i1 false}
!32 = !{!"../drivers/base/devcoredump.c", i32 19, i32 13}
!33 = !{ptr @devcd_class, !34, !"devcd_class", i1 false, i1 false}
!34 = !{!"../drivers/base/devcoredump.c", i32 152, i32 21}
!35 = !{ptr @devcd_class_groups, !36, !"devcd_class_groups", i1 false, i1 false}
!36 = !{!"../drivers/base/devcoredump.c", i32 150, i32 1}
!37 = !{ptr @devcd_class_group, !36, !"devcd_class_group", i1 false, i1 false}
!38 = !{ptr @devcd_class_attrs, !39, !"devcd_class_attrs", i1 false, i1 false}
!39 = !{!"../drivers/base/devcoredump.c", i32 146, i32 26}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/base/devcoredump.c", i32 144, i32 8}
!42 = !{ptr @class_attr_disabled, !41, !"class_attr_disabled", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/base/devcoredump.c", i32 122, i32 25}
!45 = !{ptr @devcd_dev_groups, !46, !"devcd_dev_groups", i1 false, i1 false}
!46 = !{!"../drivers/base/devcoredump.c", i32 107, i32 38}
!47 = !{ptr @devcd_dev_group, !48, !"devcd_dev_group", i1 false, i1 false}
!48 = !{!"../drivers/base/devcoredump.c", i32 103, i32 37}
!49 = !{ptr @devcd_dev_bin_attrs, !50, !"devcd_dev_bin_attrs", i1 false, i1 false}
!50 = !{!"../drivers/base/devcoredump.c", i32 99, i32 30}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/base/devcoredump.c", i32 93, i32 20}
!53 = !{ptr @devcd_attr_data, !54, !"devcd_attr_data", i1 false, i1 false}
!54 = !{!"../drivers/base/devcoredump.c", i32 92, i32 29}
!55 = !{ptr @devcoredump_init.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/base/devcoredump.c", i32 338, i32 9}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{i64 2148432918}
!68 = !{i64 2148348203, i64 2148348235, i64 2148348264, i64 2148348298, i64 2148348329, i64 2148348352}
!69 = !{i64 2148433147}
!70 = !{i64 2153767203, i64 2153767695, i64 2153767240, i64 2153767296, i64 2153767330, i64 2153767354, i64 2153767395, i64 2153767416, i64 2153767444, i64 2153767478}
