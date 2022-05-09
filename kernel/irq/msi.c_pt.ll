; ModuleID = '/llk/IR_all_yes/kernel/irq/msi.c_pt.bc'
source_filename = "../kernel/irq/msi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+get_cached_msi_msg\22, \22a\22\09"
module asm "\09.weak\09__crc_get_cached_msi_msg\09\09\09\09"
module asm "\09.long\09__crc_get_cached_msi_msg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_cached_msi_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22get_cached_msi_msg\22\09\09\09\09\09"
module asm "__kstrtabns_get_cached_msi_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+msi_lock_descs\22, \22a\22\09"
module asm "\09.weak\09__crc_msi_lock_descs\09\09\09\09"
module asm "\09.long\09__crc_msi_lock_descs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msi_lock_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22msi_lock_descs\22\09\09\09\09\09"
module asm "__kstrtabns_msi_lock_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+msi_unlock_descs\22, \22a\22\09"
module asm "\09.weak\09__crc_msi_unlock_descs\09\09\09\09"
module asm "\09.long\09__crc_msi_unlock_descs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msi_unlock_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22msi_unlock_descs\22\09\09\09\09\09"
module asm "__kstrtabns_msi_unlock_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+msi_first_desc\22, \22a\22\09"
module asm "\09.weak\09__crc_msi_first_desc\09\09\09\09"
module asm "\09.long\09__crc_msi_first_desc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msi_first_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22msi_first_desc\22\09\09\09\09\09"
module asm "__kstrtabns_msi_first_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+msi_next_desc\22, \22a\22\09"
module asm "\09.weak\09__crc_msi_next_desc\09\09\09\09"
module asm "\09.long\09__crc_msi_next_desc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msi_next_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22msi_next_desc\22\09\09\09\09\09"
module asm "__kstrtabns_msi_next_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+msi_get_virq\22, \22a\22\09"
module asm "\09.weak\09__crc_msi_get_virq\09\09\09\09"
module asm "\09.long\09__crc_msi_get_virq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msi_get_virq:\09\09\09\09\09"
module asm "\09.asciz \09\22msi_get_virq\22\09\09\09\09\09"
module asm "__kstrtabns_msi_get_virq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.msi_device_data = type { i32, ptr, %struct.mutex, %struct.xarray, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msi_desc = type { i32, i32, ptr, %struct.msi_msg, ptr, ptr, ptr, ptr, i16, %struct.pci_msi_desc }
%struct.msi_msg = type { %union.anon.67, %union.anon.68, %union.anon.69 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { i32 }
%union.anon.69 = type { i32 }
%struct.pci_msi_desc = type { %union.anon.70, %struct.anon.71, %union.anon.72 }
%union.anon.70 = type { i32 }
%struct.anon.71 = type { i16, i32 }
%union.anon.72 = type { ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_alloc_info = type { ptr, i32, i32, [2 x %union.anon.78] }
%union.anon.78 = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kernel/irq/msi.c\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_get_cached_msi_msg = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_cached_msi_msg = external dso_local constant [0 x i8], align 1
@__ksymtab_get_cached_msi_msg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_cached_msi_msg to i32), ptr @__kstrtab_get_cached_msi_msg, ptr @__kstrtabns_get_cached_msi_msg }, section "___ksymtab_gpl+get_cached_msi_msg", align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"msi_device_data_release\00", [40 x i8] zeroinitializer }, align 32
@msi_setup_device_data.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&md->mutex\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_msi_lock_descs = external dso_local constant [0 x i8], align 1
@__kstrtabns_msi_lock_descs = external dso_local constant [0 x i8], align 1
@__ksymtab_msi_lock_descs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msi_lock_descs to i32), ptr @__kstrtab_msi_lock_descs, ptr @__kstrtabns_msi_lock_descs }, section "___ksymtab_gpl+msi_lock_descs", align 4
@__kstrtab_msi_unlock_descs = external dso_local constant [0 x i8], align 1
@__kstrtabns_msi_unlock_descs = external dso_local constant [0 x i8], align 1
@__ksymtab_msi_unlock_descs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msi_unlock_descs to i32), ptr @__kstrtab_msi_unlock_descs, ptr @__kstrtabns_msi_unlock_descs }, section "___ksymtab_gpl+msi_unlock_descs", align 4
@msi_first_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_msi_first_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_msi_first_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_msi_first_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msi_first_desc to i32), ptr @__kstrtab_msi_first_desc, ptr @__kstrtabns_msi_first_desc }, section "___ksymtab_gpl+msi_first_desc", align 4
@msi_next_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_msi_next_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_msi_next_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_msi_next_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msi_next_desc to i32), ptr @__kstrtab_msi_next_desc, ptr @__kstrtabns_msi_next_desc }, section "___ksymtab_gpl+msi_next_desc", align 4
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@__kstrtab_msi_get_virq = external dso_local constant [0 x i8], align 1
@__kstrtabns_msi_get_virq = external dso_local constant [0 x i8], align 1
@__ksymtab_msi_get_virq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msi_get_virq to i32), ptr @__kstrtab_msi_get_virq, ptr @__kstrtabns_msi_get_virq }, section "___ksymtab_gpl+msi_get_virq", align 4
@msi_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msi_domain_alloc, ptr @msi_domain_free, ptr @msi_domain_activate, ptr @msi_domain_deactivate, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@msi_desc_match.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@msi_device_data_release.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@msi_irqs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.4, ptr null, ptr null, ptr @msi_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"msi_irqs\00", [23 x i8] zeroinitializer }, align 32
@msi_dev_attrs = internal global { [1 x ptr], [28 x i8] } zeroinitializer, align 32
@msi_domain_ops_default = internal global { %struct.msi_domain_ops, [32 x i8] } { %struct.msi_domain_ops { ptr @msi_domain_ops_get_hwirq, ptr @msi_domain_ops_init, ptr null, ptr @msi_domain_ops_check, ptr @msi_domain_ops_prepare, ptr @msi_domain_ops_set_desc, ptr @__msi_domain_alloc_irqs, ptr @__msi_domain_free_irqs }, [32 x i8] zeroinitializer }, align 32
@pci_msi_ignore_mask = external dso_local local_unnamed_addr global i32, align 4
@msi_sysfs_populate_desc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"msix\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msi\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 10]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 10]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 83, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 205, i32 7 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 216, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"msi_domain_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 575, i32 36 }
@___asan_gen_.32 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 378, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"msi_irqs_group\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 353, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 354, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"msi_dev_attrs\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 349, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant [23 x i8] c"msi_domain_ops_default\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 623, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 400, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 401, i32 46 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 369, i32 25 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 369, i32 43 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [20 x i8] c"../kernel/irq/msi.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 369, i32 52 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab_get_cached_msi_msg, ptr @__ksymtab_msi_first_desc, ptr @__ksymtab_msi_get_virq, ptr @__ksymtab_msi_lock_descs, ptr @__ksymtab_msi_next_desc, ptr @__ksymtab_msi_unlock_descs, ptr @.str, ptr @.str.1, ptr @msi_setup_device_data.__key, ptr @.str.2, ptr @msi_domain_ops, ptr @xa_init_flags.__key, ptr @.str.3, ptr @msi_irqs_group, ptr @.str.4, ptr @msi_dev_attrs, ptr @msi_domain_ops_default, ptr @msi_sysfs_populate_desc.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_setup_device_data.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_irqs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_dev_attrs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_domain_ops_default to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_sysfs_populate_desc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msi_add_msi_desc(ptr noundef %dev, ptr nocapture noundef readonly %init_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %dep_map = getelementptr inbounds %struct.msi_device_data, ptr %2, i32 0, i32 2, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !59

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 83, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %nvec_used = getelementptr inbounds %struct.msi_desc, ptr %init_desc, i32 0, i32 1
  %3 = ptrtoint ptr %nvec_used to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nvec_used, align 4
  %affinity = getelementptr inbounds %struct.msi_desc, ptr %init_desc, i32 0, i32 4
  %5 = ptrtoint ptr %affinity to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %affinity, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 60) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %dev1.i = getelementptr inbounds %struct.msi_desc, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %dev1.i, align 8
  %nvec_used.i = getelementptr inbounds %struct.msi_desc, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %nvec_used.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %4, ptr %nvec_used.i, align 4
  %tobool2.not.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i, label %if.end.i.if.end27_crit_edge, label %if.then3.i

if.end.i.if.end27_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then3.i:                                       ; preds = %if.end.i
  %mul.i = shl i32 %4, 3
  %call4.i = tail call ptr @kmemdup(ptr noundef nonnull %6, i32 noundef %mul.i, i32 noundef 3264) #11
  %affinity5.i = getelementptr inbounds %struct.msi_desc, ptr %call7.i.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %affinity5.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call4.i, ptr %affinity5.i, align 8
  %tobool7.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool7.not.i, label %if.then3.i.cleanup.sink.split_crit_edge, label %if.then3.i.if.end27_crit_edge

if.then3.i.if.end27_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then3.i.cleanup.sink.split_crit_edge:          ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end27:                                         ; preds = %if.then3.i.if.end27_crit_edge, %if.end.i.if.end27_crit_edge
  %pci = getelementptr inbounds %struct.msi_desc, ptr %call7.i.i.i, i32 0, i32 9
  %pci28 = getelementptr inbounds %struct.msi_desc, ptr %init_desc, i32 0, i32 9
  %11 = call ptr @memcpy(ptr %pci, ptr %pci28, i32 16)
  %data30 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16, i32 1
  %12 = ptrtoint ptr %data30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data30, align 4
  %msi_index = getelementptr inbounds %struct.msi_desc, ptr %init_desc, i32 0, i32 8
  %14 = ptrtoint ptr %msi_index to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %msi_index, align 4
  %conv = zext i16 %15 to i32
  %msi_index.i = getelementptr inbounds %struct.msi_desc, ptr %call7.i.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %msi_index.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %msi_index.i, align 8
  %__store.i = getelementptr inbounds %struct.msi_device_data, ptr %13, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %__store.i) #11
  %call.i.i = tail call i32 @__xa_insert(ptr noundef %__store.i, i32 noundef %conv, ptr noundef nonnull %call7.i.i.i, i32 noundef 3264) #11
  tail call void @_raw_spin_unlock(ptr noundef %__store.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i40 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i40, label %if.end27.cleanup_crit_edge, label %if.then.i

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %affinity.i.i = getelementptr inbounds %struct.msi_desc, ptr %call7.i.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %affinity.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %affinity.i.i, align 8
  tail call void @kfree(ptr noundef %18) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then.i, %if.then3.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i.i, %if.then.i ], [ -12, %if.then3.i.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end27.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msi_free_msi_descs_range(ptr nocapture noundef readonly %dev, i32 noundef %filter, i32 noundef %first_index, i32 noundef %last_index) local_unnamed_addr #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %__store = getelementptr inbounds %struct.msi_device_data, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.msi_device_data, ptr %1, i32 0, i32 2, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !59

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 155, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %first_index, ptr %idx, align 4
  %call26 = call ptr @xa_find(ptr noundef %__store, ptr noundef nonnull %idx, i32 noundef %last_index, i32 noundef 8) #11
  %tobool27.not43 = icmp eq ptr %call26, null
  br i1 %tobool27.not43, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %desc.044 = phi ptr [ %call32, %for.inc.for.body_crit_edge ], [ %call26, %if.end.for.body_crit_edge ]
  %4 = zext i32 %filter to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %filter, label %land.end.i [
    i32 0, label %for.body.if.then29_crit_edge
    i32 1, label %msi_desc_match.exit
    i32 2, label %sw.bb2.i
  ]

for.body.if.then29_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

sw.bb2.i:                                         ; preds = %for.body
  %5 = ptrtoint ptr %desc.044 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %desc.044, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.i.not = icmp eq i32 %6, 0
  br i1 %tobool4.i.not, label %sw.bb2.i.for.inc_crit_edge, label %sw.bb2.i.if.then29_crit_edge

sw.bb2.i.if.then29_crit_edge:                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

sw.bb2.i.for.inc_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.end.i:                                       ; preds = %for.body
  %.b44.i = load i1, ptr @msi_desc_match.__already_done, align 1
  br i1 %.b44.i, label %land.end.i.for.inc_crit_edge, label %if.then.i, !prof !60

land.end.i.for.inc_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @msi_desc_match.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 137, i32 noundef 9, ptr noundef null) #11
  br label %for.inc

msi_desc_match.exit:                              ; preds = %for.body
  %7 = ptrtoint ptr %desc.044 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %desc.044, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %msi_desc_match.exit.if.then29_crit_edge, label %msi_desc_match.exit.for.inc_crit_edge

msi_desc_match.exit.for.inc_crit_edge:            ; preds = %msi_desc_match.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

msi_desc_match.exit.if.then29_crit_edge:          ; preds = %msi_desc_match.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

if.then29:                                        ; preds = %msi_desc_match.exit.if.then29_crit_edge, %sw.bb2.i.if.then29_crit_edge, %for.body.if.then29_crit_edge
  %9 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idx, align 4
  %call30 = call ptr @xa_erase(ptr noundef %__store, i32 noundef %10) #11
  %affinity.i = getelementptr inbounds %struct.msi_desc, ptr %desc.044, i32 0, i32 4
  %11 = ptrtoint ptr %affinity.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %affinity.i, align 4
  call void @kfree(ptr noundef %12) #11
  call void @kfree(ptr noundef nonnull %desc.044) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %msi_desc_match.exit.for.inc_crit_edge, %if.then.i, %land.end.i.for.inc_crit_edge, %sw.bb2.i.for.inc_crit_edge
  %call32 = call ptr @xa_find_after(ptr noundef %__store, ptr noundef nonnull %idx, i32 noundef %last_index, i32 noundef 8) #11
  %tobool27.not = icmp eq ptr %call32, null
  br i1 %tobool27.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__get_cached_msi_msg(ptr nocapture noundef readonly %entry1, ptr nocapture noundef writeonly %msg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %msg2 = getelementptr inbounds %struct.msi_desc, ptr %entry1, i32 0, i32 3
  %0 = call ptr @memcpy(ptr %msg, ptr %msg2, i32 12)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @get_cached_msi_msg(i32 noundef %irq, ptr nocapture noundef writeonly %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %irq) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_get_msi_desc.exit_crit_edge, label %cond.true.i

entry.irq_get_msi_desc.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %irq_get_msi_desc.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %msi_desc.i = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %msi_desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msi_desc.i, align 4
  br label %irq_get_msi_desc.exit

irq_get_msi_desc.exit:                            ; preds = %cond.true.i, %entry.irq_get_msi_desc.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.irq_get_msi_desc.exit_crit_edge ]
  %msg2.i = getelementptr inbounds %struct.msi_desc, ptr %cond.i, i32 0, i32 3
  %4 = call ptr @memcpy(ptr %msg, ptr %msg2.i, i32 12)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msi_setup_device_data(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @msi_device_data_release, i32 noundef 156, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #11
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i = tail call i32 @devm_device_add_group(ptr noundef %dev, ptr noundef nonnull @msi_irqs_group) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @devres_free(ptr noundef nonnull %call) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %__store = getelementptr inbounds %struct.msi_device_data, ptr %call, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %__store, ptr noundef nonnull @.str.3, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #11
  %xa_flags.i.i = getelementptr inbounds %struct.msi_device_data, ptr %call, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.msi_device_data, ptr %call, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %xa_head.i.i, align 4
  %mutex = getelementptr inbounds %struct.msi_device_data, ptr %call, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @msi_setup_device_data.__key) #11
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %data, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then6 ], [ 0, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msi_device_data_release(ptr nocapture noundef writeonly %dev, ptr noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xa_head.i = getelementptr inbounds %struct.msi_device_data, ptr %res, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xa_head.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b40 = load i1, ptr @msi_device_data_release.__already_done, align 1
  br i1 %.b40, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !60

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @msi_device_data_release.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 182, i32 noundef 9, ptr noundef null) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  %__store = getelementptr inbounds %struct.msi_device_data, ptr %res, i32 0, i32 3
  tail call void @xa_destroy(ptr noundef %__store) #11
  %data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %data, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msi_lock_descs(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %mutex = getelementptr inbounds %struct.msi_device_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msi_unlock_descs(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %__iter_idx = getelementptr inbounds %struct.msi_device_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %__iter_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 65535, ptr %__iter_idx, align 4
  %3 = load ptr, ptr %data, align 4
  %mutex = getelementptr inbounds %struct.msi_device_data, ptr %3, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msi_first_desc(ptr nocapture noundef readonly %dev, i32 noundef %filter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %do.body40

land.rhs:                                         ; preds = %entry
  %.b85 = load i1, ptr @msi_first_desc.__already_done, align 1
  br i1 %.b85, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !60

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @msi_first_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

do.body40:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool42.not = icmp eq i32 %2, 0
  br i1 %tobool42.not, label %do.body40.if.end68_crit_edge, label %land.rhs43

do.body40.if.end68_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

land.rhs43:                                       ; preds = %do.body40
  %dep_map = getelementptr inbounds %struct.msi_device_data, ptr %1, i32 0, i32 2, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end62, label %land.rhs43.if.end68_crit_edge, !prof !59

land.rhs43.if.end68_crit_edge:                    ; preds = %land.rhs43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

do.end62:                                         ; preds = %land.rhs43
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 274, i32 noundef 9, ptr noundef null) #11
  br label %if.end68

if.end68:                                         ; preds = %do.end62, %land.rhs43.if.end68_crit_edge, %do.body40.if.end68_crit_edge
  %__iter_idx = getelementptr inbounds %struct.msi_device_data, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %__iter_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %__iter_idx, align 4
  %__store.i = getelementptr inbounds %struct.msi_device_data, ptr %1, i32 0, i32 3
  %call.i87 = tail call ptr @xa_find(ptr noundef %__store.i, ptr noundef %__iter_idx, i32 noundef -1, i32 noundef 8) #11
  %tobool.not21.i = icmp eq ptr %call.i87, null
  br i1 %tobool.not21.i, label %if.end68.for.end.i_crit_edge, label %for.body.i.preheader

if.end68.for.end.i_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.preheader:                             ; preds = %if.end68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %filter)
  %cond = icmp eq i32 %filter, 0
  br i1 %cond, label %for.body.i.preheader.cleanup_crit_edge, label %for.body.i.preheader.for.body.i_crit_edge

for.body.i.preheader.for.body.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.body.i

for.body.i.preheader.cleanup_crit_edge:           ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader.for.body.i_crit_edge
  %desc.022.i = phi ptr [ %call6.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i87, %for.body.i.preheader.for.body.i_crit_edge ]
  %4 = zext i32 %filter to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %filter, label %land.end.i.i [
    i32 2, label %sw.bb2.i.i
    i32 1, label %msi_desc_match.exit.i
  ]

sw.bb2.i.i:                                       ; preds = %for.body.i
  %5 = ptrtoint ptr %desc.022.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %desc.022.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool4.i.not.i, label %sw.bb2.i.i.for.inc.i_crit_edge, label %sw.bb2.i.i.cleanup_crit_edge

sw.bb2.i.i.cleanup_crit_edge:                     ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb2.i.i.for.inc.i_crit_edge:                   ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.end.i.i:                                     ; preds = %for.body.i
  %.b44.i.i = load i1, ptr @msi_desc_match.__already_done, align 1
  br i1 %.b44.i.i, label %land.end.i.i.for.inc.i_crit_edge, label %if.then.i.i, !prof !60

land.end.i.i.for.inc.i_crit_edge:                 ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i.i:                                      ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @msi_desc_match.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 137, i32 noundef 9, ptr noundef null) #11
  br label %for.inc.i

msi_desc_match.exit.i:                            ; preds = %for.body.i
  %7 = ptrtoint ptr %desc.022.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %desc.022.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %msi_desc_match.exit.i.cleanup_crit_edge, label %msi_desc_match.exit.i.for.inc.i_crit_edge

msi_desc_match.exit.i.for.inc.i_crit_edge:        ; preds = %msi_desc_match.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

msi_desc_match.exit.i.cleanup_crit_edge:          ; preds = %msi_desc_match.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.i:                                        ; preds = %msi_desc_match.exit.i.for.inc.i_crit_edge, %if.then.i.i, %land.end.i.i.for.inc.i_crit_edge, %sw.bb2.i.i.for.inc.i_crit_edge
  %call6.i = tail call ptr @xa_find_after(ptr noundef %__store.i, ptr noundef %__iter_idx, i32 noundef -1, i32 noundef 8) #11
  %tobool.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end68.for.end.i_crit_edge
  %9 = ptrtoint ptr %__iter_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 65535, ptr %__iter_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %msi_desc_match.exit.i.cleanup_crit_edge, %sw.bb2.i.i.cleanup_crit_edge, %for.body.i.preheader.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then ], [ null, %land.rhs.cleanup_crit_edge ], [ null, %for.end.i ], [ %call.i87, %for.body.i.preheader.cleanup_crit_edge ], [ %desc.022.i, %msi_desc_match.exit.i.cleanup_crit_edge ], [ %desc.022.i, %sw.bb2.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msi_next_desc(ptr nocapture noundef readonly %dev, i32 noundef %filter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %do.body40

land.rhs:                                         ; preds = %entry
  %.b90 = load i1, ptr @msi_next_desc.__already_done, align 1
  br i1 %.b90, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !60

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @msi_next_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 297, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

do.body40:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool42.not = icmp eq i32 %2, 0
  br i1 %tobool42.not, label %do.body40.if.end68_crit_edge, label %land.rhs43

do.body40.if.end68_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

land.rhs43:                                       ; preds = %do.body40
  %dep_map = getelementptr inbounds %struct.msi_device_data, ptr %1, i32 0, i32 2, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end62, label %land.rhs43.if.end68_crit_edge, !prof !59

land.rhs43.if.end68_crit_edge:                    ; preds = %land.rhs43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

do.end62:                                         ; preds = %land.rhs43
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 300, i32 noundef 9, ptr noundef null) #11
  br label %if.end68

if.end68:                                         ; preds = %do.end62, %land.rhs43.if.end68_crit_edge, %do.body40.if.end68_crit_edge
  %__iter_idx = getelementptr inbounds %struct.msi_device_data, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %__iter_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %__iter_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %4)
  %cmp78 = icmp ugt i32 %4, 65534
  br i1 %cmp78, label %if.end68.cleanup_crit_edge, label %if.end80

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end80:                                         ; preds = %if.end68
  %inc = add nuw nsw i32 %4, 1
  %5 = ptrtoint ptr %__iter_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc, ptr %__iter_idx, align 4
  %__store.i = getelementptr inbounds %struct.msi_device_data, ptr %1, i32 0, i32 3
  %call.i92 = tail call ptr @xa_find(ptr noundef %__store.i, ptr noundef %__iter_idx, i32 noundef -1, i32 noundef 8) #11
  %tobool.not21.i = icmp eq ptr %call.i92, null
  br i1 %tobool.not21.i, label %if.end80.for.end.i_crit_edge, label %for.body.i.preheader

if.end80.for.end.i_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.preheader:                             ; preds = %if.end80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %filter)
  %cond = icmp eq i32 %filter, 0
  br i1 %cond, label %for.body.i.preheader.cleanup_crit_edge, label %for.body.i.preheader.for.body.i_crit_edge

for.body.i.preheader.for.body.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.body.i

for.body.i.preheader.cleanup_crit_edge:           ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader.for.body.i_crit_edge
  %desc.022.i = phi ptr [ %call6.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i92, %for.body.i.preheader.for.body.i_crit_edge ]
  %6 = zext i32 %filter to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %filter, label %land.end.i.i [
    i32 2, label %sw.bb2.i.i
    i32 1, label %msi_desc_match.exit.i
  ]

sw.bb2.i.i:                                       ; preds = %for.body.i
  %7 = ptrtoint ptr %desc.022.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %desc.022.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.i.not.i = icmp eq i32 %8, 0
  br i1 %tobool4.i.not.i, label %sw.bb2.i.i.for.inc.i_crit_edge, label %sw.bb2.i.i.cleanup_crit_edge

sw.bb2.i.i.cleanup_crit_edge:                     ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb2.i.i.for.inc.i_crit_edge:                   ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.end.i.i:                                     ; preds = %for.body.i
  %.b44.i.i = load i1, ptr @msi_desc_match.__already_done, align 1
  br i1 %.b44.i.i, label %land.end.i.i.for.inc.i_crit_edge, label %if.then.i.i, !prof !60

land.end.i.i.for.inc.i_crit_edge:                 ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i.i:                                      ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @msi_desc_match.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 137, i32 noundef 9, ptr noundef null) #11
  br label %for.inc.i

msi_desc_match.exit.i:                            ; preds = %for.body.i
  %9 = ptrtoint ptr %desc.022.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %desc.022.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %msi_desc_match.exit.i.cleanup_crit_edge, label %msi_desc_match.exit.i.for.inc.i_crit_edge

msi_desc_match.exit.i.for.inc.i_crit_edge:        ; preds = %msi_desc_match.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

msi_desc_match.exit.i.cleanup_crit_edge:          ; preds = %msi_desc_match.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.i:                                        ; preds = %msi_desc_match.exit.i.for.inc.i_crit_edge, %if.then.i.i, %land.end.i.i.for.inc.i_crit_edge, %sw.bb2.i.i.for.inc.i_crit_edge
  %call6.i = tail call ptr @xa_find_after(ptr noundef %__store.i, ptr noundef %__iter_idx, i32 noundef -1, i32 noundef 8) #11
  %tobool.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end80.for.end.i_crit_edge
  %11 = ptrtoint ptr %__iter_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 65535, ptr %__iter_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %msi_desc_match.exit.i.cleanup_crit_edge, %sw.bb2.i.i.cleanup_crit_edge, %for.body.i.preheader.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then ], [ null, %if.end68.cleanup_crit_edge ], [ null, %land.rhs.cleanup_crit_edge ], [ null, %for.end.i ], [ %call.i92, %for.body.i.preheader.cleanup_crit_edge ], [ %desc.022.i, %msi_desc_match.exit.i.cleanup_crit_edge ], [ %desc.022.i, %sw.bb2.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msi_get_virq(ptr nocapture noundef readonly %dev, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 8
  %cmp = icmp eq ptr %3, @pci_bus_type
  br i1 %cmp, label %cond.true, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %msi_enabled = getelementptr i8, ptr %dev, i32 1481
  %4 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_loadN_noabort(i32 %4, i32 5)
  %bf.load = load i40, ptr %msi_enabled, align 1
  %5 = and i40 %bf.load, 134217728
  %phi.cmp = icmp eq i40 %5, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i1 [ %phi.cmp, %cond.true ], [ true, %if.end.cond.end_crit_edge ]
  %mutex.i = getelementptr inbounds %struct.msi_device_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %__store = getelementptr inbounds %struct.msi_device_data, ptr %7, i32 0, i32 3
  %spec.select = select i1 %cond, i32 %index, i32 0
  %call = tail call ptr @xa_load(ptr noundef %__store, i32 noundef %spec.select) #11
  %tobool9.not = icmp eq ptr %call, null
  br i1 %tobool9.not, label %cond.end.if.end20_crit_edge, label %land.lhs.true

cond.end.if.end20_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true:                                    ; preds = %cond.end
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  %brmerge = select i1 %tobool10.not, i1 true, i1 %cond
  br i1 %brmerge, label %land.lhs.true.if.end20_crit_edge, label %if.then13

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %nvec_used = getelementptr inbounds %struct.msi_desc, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %nvec_used to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nvec_used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %index)
  %cmp14 = icmp ugt i32 %11, %index
  %add = add i32 %9, %index
  %spec.select35 = select i1 %cmp14, i32 %add, i32 0
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %land.lhs.true.if.end20_crit_edge, %cond.end.if.end20_crit_edge
  %ret.0 = phi i32 [ %9, %land.lhs.true.if.end20_crit_edge ], [ 0, %cond.end.if.end20_crit_edge ], [ %spec.select35, %if.then13 ]
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %__iter_idx.i = getelementptr inbounds %struct.msi_device_data, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %__iter_idx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 65535, ptr %__iter_idx.i, align 4
  %15 = load ptr, ptr %data, align 4
  %mutex.i37 = getelementptr inbounds %struct.msi_device_data, ptr %15, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %mutex.i37) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end20 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msi_domain_set_affinity(ptr noundef %irq_data, ptr noundef %mask, i1 noundef zeroext %force) #0 align 64 {
entry:
  %msg = alloca [2 x %struct.msi_msg], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 6
  %0 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent_data, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #11
  %2 = call ptr @memset(ptr %msg, i32 0, i32 24)
  %chip = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 4
  %irq_set_affinity = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %irq_set_affinity to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq_set_affinity, align 4
  %call = tail call i32 %6(ptr noundef %1, ptr noundef %mask, i1 noundef zeroext %force) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp1.not = icmp eq i32 %call, 2
  %or.cond = or i1 %cmp, %cmp1.not
  br i1 %or.cond, label %entry.if.end15_crit_edge, label %do.body

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

do.body:                                          ; preds = %entry
  %call2 = call i32 @irq_chip_compose_msi_msg(ptr noundef %irq_data, ptr noundef nonnull %msg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end12, label %do.body7, !prof !60

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/irq/msi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 502, 0\0A.popsection", ""() #11, !srcloc !61
  unreachable

do.end12:                                         ; preds = %do.body
  %domain = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 5
  %7 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %domain, align 4
  %host_data.i = getelementptr inbounds %struct.irq_domain, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %host_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host_data.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %and.i = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end12.land.rhs.i_crit_edge, label %land.lhs.true.i

do.end12.land.rhs.i_crit_edge:                    ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

land.lhs.true.i:                                  ; preds = %do.end12
  %chip.i = getelementptr inbounds %struct.msi_domain_info, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip.i, align 4
  %flags1.i = getelementptr inbounds %struct.irq_chip, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags1.i, align 4
  %and2.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.land.rhs.i_crit_edge, label %land.lhs.true.i.msi_check_level.exit_crit_edge

land.lhs.true.i.msi_check_level.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %msi_check_level.exit

land.lhs.true.i.land.rhs.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %land.lhs.true.i.land.rhs.i_crit_edge, %do.end12.land.rhs.i_crit_edge
  %arrayidx.i = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 1
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool4.not.i = icmp eq i32 %18, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i, label %land.rhs.i.do.end.i_crit_edge

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %19 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 1, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool6.not.i = icmp eq i32 %21, 0
  br i1 %tobool6.not.i, label %lor.rhs.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %22 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 1, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool8.not.i = icmp eq i32 %24, 0
  br i1 %tobool8.not.i, label %lor.rhs.i.msi_check_level.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !60

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

lor.rhs.i.msi_check_level.exit_crit_edge:         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %msi_check_level.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %land.rhs.i.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 479, i32 noundef 9, ptr noundef null) #11
  br label %msi_check_level.exit

msi_check_level.exit:                             ; preds = %do.end.i, %lor.rhs.i.msi_check_level.exit_crit_edge, %land.lhs.true.i.msi_check_level.exit_crit_edge
  %chip.i22 = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 4
  %25 = ptrtoint ptr %chip.i22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip.i22, align 4
  %irq_write_msi_msg.i = getelementptr inbounds %struct.irq_chip, ptr %26, i32 0, i32 25
  %27 = ptrtoint ptr %irq_write_msi_msg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %irq_write_msi_msg.i, align 4
  call void %28(ptr noundef %irq_data, ptr noundef nonnull %msg) #11
  br label %if.end15

if.end15:                                         ; preds = %msi_check_level.exit, %entry.if.end15_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_compose_msi_msg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msi_create_irq_domain(ptr noundef %fwnode, ptr noundef %info, ptr noundef %parent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ops1.i = getelementptr inbounds %struct.msi_domain_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %ops1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops1.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %ops1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @msi_domain_ops_default, ptr %ops1.i, align 4
  br label %msi_domain_update_dom_ops.exit

if.end.i:                                         ; preds = %entry
  %domain_alloc_irqs.i = getelementptr inbounds %struct.msi_domain_ops, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %domain_alloc_irqs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %domain_alloc_irqs.i, align 4
  %cmp3.i = icmp eq ptr %4, null
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = load ptr, ptr getelementptr inbounds (%struct.msi_domain_ops, ptr @msi_domain_ops_default, i32 0, i32 6), align 4
  %6 = ptrtoint ptr %domain_alloc_irqs.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %domain_alloc_irqs.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %domain_free_irqs.i = getelementptr inbounds %struct.msi_domain_ops, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %domain_free_irqs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %domain_free_irqs.i, align 4
  %cmp7.i = icmp eq ptr %8, null
  br i1 %cmp7.i, label %if.then8.i, label %if.end6.i.if.end10.i_crit_edge

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = load ptr, ptr getelementptr inbounds (%struct.msi_domain_ops, ptr @msi_domain_ops_default, i32 0, i32 7), align 4
  %10 = ptrtoint ptr %domain_free_irqs.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %domain_free_irqs.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end6.i.if.end10.i_crit_edge
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %info, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end10.i.msi_domain_update_dom_ops.exit_crit_edge, label %if.end12.i

if.end10.i.msi_domain_update_dom_ops.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %msi_domain_update_dom_ops.exit

if.end12.i:                                       ; preds = %if.end10.i
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %cmp13.i = icmp eq ptr %14, null
  br i1 %cmp13.i, label %if.then14.i, label %if.end12.i.if.end16.i_crit_edge

if.end12.i.if.end16.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = load ptr, ptr @msi_domain_ops_default, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %1, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end12.i.if.end16.i_crit_edge
  %msi_init.i = getelementptr inbounds %struct.msi_domain_ops, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %msi_init.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %msi_init.i, align 4
  %cmp17.i = icmp eq ptr %18, null
  br i1 %cmp17.i, label %if.then18.i, label %if.end16.i.if.end20.i_crit_edge

if.end16.i.if.end20.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = load ptr, ptr getelementptr inbounds (%struct.msi_domain_ops, ptr @msi_domain_ops_default, i32 0, i32 1), align 4
  %20 = ptrtoint ptr %msi_init.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %msi_init.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %if.end16.i.if.end20.i_crit_edge
  %msi_check.i = getelementptr inbounds %struct.msi_domain_ops, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %msi_check.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %msi_check.i, align 4
  %cmp21.i = icmp eq ptr %22, null
  br i1 %cmp21.i, label %if.then22.i, label %if.end20.i.if.end24.i_crit_edge

if.end20.i.if.end24.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.then22.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  %23 = load ptr, ptr getelementptr inbounds (%struct.msi_domain_ops, ptr @msi_domain_ops_default, i32 0, i32 3), align 4
  %24 = ptrtoint ptr %msi_check.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %msi_check.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %if.end20.i.if.end24.i_crit_edge
  %msi_prepare.i = getelementptr inbounds %struct.msi_domain_ops, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %msi_prepare.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %msi_prepare.i, align 4
  %cmp25.i = icmp eq ptr %26, null
  br i1 %cmp25.i, label %if.then26.i, label %if.end24.i.if.end28.i_crit_edge

if.end24.i.if.end28.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = load ptr, ptr getelementptr inbounds (%struct.msi_domain_ops, ptr @msi_domain_ops_default, i32 0, i32 4), align 4
  %28 = ptrtoint ptr %msi_prepare.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %msi_prepare.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then26.i, %if.end24.i.if.end28.i_crit_edge
  %set_desc.i = getelementptr inbounds %struct.msi_domain_ops, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %set_desc.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_desc.i, align 4
  %cmp29.i = icmp eq ptr %30, null
  br i1 %cmp29.i, label %if.then30.i, label %if.end28.i.msi_domain_update_dom_ops.exit_crit_edge

if.end28.i.msi_domain_update_dom_ops.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %msi_domain_update_dom_ops.exit

if.then30.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = load ptr, ptr getelementptr inbounds (%struct.msi_domain_ops, ptr @msi_domain_ops_default, i32 0, i32 5), align 4
  %32 = ptrtoint ptr %set_desc.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %set_desc.i, align 4
  br label %msi_domain_update_dom_ops.exit

msi_domain_update_dom_ops.exit:                   ; preds = %if.then30.i, %if.end28.i.msi_domain_update_dom_ops.exit_crit_edge, %if.end10.i.msi_domain_update_dom_ops.exit_crit_edge, %if.then.i
  %33 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %info, align 4
  %and = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %msi_domain_update_dom_ops.exit.if.end_crit_edge, label %if.then

msi_domain_update_dom_ops.exit.if.end_crit_edge:  ; preds = %msi_domain_update_dom_ops.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %msi_domain_update_dom_ops.exit
  %chip1.i = getelementptr inbounds %struct.msi_domain_info, ptr %info, i32 0, i32 2
  %35 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip1.i, align 4
  %tobool.not.i18 = icmp eq ptr %36, null
  br i1 %tobool.not.i18, label %if.then.do.body7.i_crit_edge, label %lor.lhs.false.i, !prof !59

if.then.do.body7.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body7.i

lor.lhs.false.i:                                  ; preds = %if.then
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %irq_mask.i, align 4
  %tobool2.not.i = icmp eq ptr %38, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.do.body7.i_crit_edge, label %lor.rhs.i, !prof !59

lor.lhs.false.i.do.body7.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body7.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %36, i32 0, i32 9
  %39 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %irq_unmask.i, align 4
  %tobool3.not.i = icmp eq ptr %40, null
  br i1 %tobool3.not.i, label %lor.rhs.i.do.body7.i_crit_edge, label %do.end12.i, !prof !59

lor.rhs.i.do.body7.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body7.i

do.body7.i:                                       ; preds = %lor.rhs.i.do.body7.i_crit_edge, %lor.lhs.false.i.do.body7.i_crit_edge, %if.then.do.body7.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/irq/msi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 666, 0\0A.popsection", ""() #11, !srcloc !62
  unreachable

do.end12.i:                                       ; preds = %lor.rhs.i
  %irq_set_affinity.i = getelementptr inbounds %struct.irq_chip, ptr %36, i32 0, i32 11
  %41 = ptrtoint ptr %irq_set_affinity.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %irq_set_affinity.i, align 4
  %tobool13.not.i = icmp eq ptr %42, null
  br i1 %tobool13.not.i, label %if.then14.i19, label %do.end12.i.if.end_crit_edge

do.end12.i.if.end_crit_edge:                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then14.i19:                                    ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %irq_set_affinity.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @msi_domain_set_affinity, ptr %irq_set_affinity.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then14.i19, %do.end12.i.if.end_crit_edge, %msi_domain_update_dom_ops.exit.if.end_crit_edge
  %call = tail call ptr @irq_domain_create_hierarchy(ptr noundef %parent, i32 noundef 16, i32 noundef 0, ptr noundef %fwnode, ptr noundef nonnull @msi_domain_ops, ptr noundef %info) #11
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %name = getelementptr inbounds %struct.irq_domain, ptr %call, i32 0, i32 1
  %44 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name, align 4
  %tobool2.not = icmp eq ptr %45, null
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true3:                                   ; preds = %land.lhs.true
  %chip = getelementptr inbounds %struct.msi_domain_info, ptr %info, i32 0, i32 2
  %46 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chip, align 4
  %tobool4.not = icmp eq ptr %47, null
  br i1 %tobool4.not, label %land.lhs.true3.if.end9_crit_edge, label %if.then5

land.lhs.true3.if.end9_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then5:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  %name7 = getelementptr inbounds %struct.irq_chip, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name7, align 4
  %50 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %name, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %land.lhs.true3.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msi_domain_prepare_irqs(ptr noundef %domain, ptr noundef %dev, i32 noundef %nvec, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %ops1 = getelementptr inbounds %struct.msi_domain_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 4
  %msi_check = getelementptr inbounds %struct.msi_domain_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %msi_check to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msi_check, align 4
  %call = tail call i32 %5(ptr noundef %domain, ptr noundef %1, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %msi_prepare = getelementptr inbounds %struct.msi_domain_ops, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %msi_prepare to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msi_prepare, align 4
  %call2 = tail call i32 %7(ptr noundef %domain, ptr noundef %dev, i32 noundef %nvec, ptr noundef %arg) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then ], [ %call, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msi_domain_populate_irqs(ptr noundef %domain, ptr noundef %dev, i32 noundef %virq_base, i32 noundef %nvec, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %ops1 = getelementptr inbounds %struct.msi_domain_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 4
  %data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %mutex.i = getelementptr inbounds %struct.msi_device_data, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %call = tail call fastcc i32 @msi_add_simple_msi_descs(ptr noundef %dev, i32 noundef %virq_base, i32 noundef %nvec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %add = add i32 %nvec, %virq_base
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %virq_base)
  %cmp54 = icmp sgt i32 %add, %virq_base
  br i1 %cmp54, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %set_desc = getelementptr inbounds %struct.msi_domain_ops, ptr %3, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %for.body.lr.ph
  %virq.055 = phi i32 [ %virq_base, %for.body.lr.ph ], [ %inc, %if.end6.for.body_crit_edge ]
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %__store = getelementptr inbounds %struct.msi_device_data, ptr %7, i32 0, i32 3
  %call2 = tail call ptr @xa_load(ptr noundef %__store, i32 noundef %virq.055) #11
  %8 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %virq.055, ptr %call2, align 4
  %9 = ptrtoint ptr %set_desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_desc, align 4
  tail call void %10(ptr noundef %arg, ptr noundef %call2) #11
  %call3 = tail call i32 @irq_domain_alloc_irqs_hierarchy(ptr noundef %domain, i32 noundef %virq.055, i32 noundef 1, ptr noundef %arg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.body
  %virq.156 = add i32 %virq.055, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %virq.156, i32 %virq_base)
  %cmp9.not57 = icmp slt i32 %virq.156, %virq_base
  br i1 %cmp9.not57, label %for.cond8.preheader.for.end13_crit_edge, label %for.cond8.preheader.for.body10_crit_edge

for.cond8.preheader.for.body10_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body10

for.cond8.preheader.for.end13_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end13

if.end6:                                          ; preds = %for.body
  %call7 = tail call i32 @irq_set_msi_desc(i32 noundef %virq.055, ptr noundef %call2) #11
  %inc = add i32 %virq.055, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %if.end6.cleanup_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.cond8.preheader.for.body10_crit_edge
  %virq.158 = phi i32 [ %virq.1, %for.body10.for.body10_crit_edge ], [ %virq.156, %for.cond8.preheader.for.body10_crit_edge ]
  tail call void @irq_domain_free_irqs_common(ptr noundef %domain, i32 noundef %virq.158, i32 noundef 1) #11
  %virq.1 = add i32 %virq.158, -1
  %cmp9.not = icmp slt i32 %virq.1, %virq_base
  br i1 %cmp9.not, label %for.body10.for.end13_crit_edge, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body10

for.body10.for.end13_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end13

for.end13:                                        ; preds = %for.body10.for.end13_crit_edge, %for.cond8.preheader.for.end13_crit_edge
  %sub = add i32 %add, -1
  tail call void @msi_free_msi_descs_range(ptr noundef %dev, i32 noundef 0, i32 noundef %virq_base, i32 noundef %sub)
  br label %cleanup

cleanup:                                          ; preds = %for.end13, %if.end6.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %for.end13 ], [ 0, %if.end6.cleanup_crit_edge ]
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %__iter_idx.i50 = getelementptr inbounds %struct.msi_device_data, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %__iter_idx.i50 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65535, ptr %__iter_idx.i50, align 4
  %14 = load ptr, ptr %data.i, align 4
  %mutex.i51 = getelementptr inbounds %struct.msi_device_data, ptr %14, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %mutex.i51) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msi_add_simple_msi_descs(ptr noundef %dev, i32 noundef %index, i32 noundef %ndesc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %index, -1
  %sub = add i32 %add, %ndesc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %dep_map = getelementptr inbounds %struct.msi_device_data, ptr %2, i32 0, i32 2, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !59

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %index)
  %cmp24.not54 = icmp ult i32 %sub, %index
  br i1 %cmp24.not54, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %data30 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16, i32 1
  br label %for.body

for.cond:                                         ; preds = %if.end28
  %inc = add i32 %idx.055, 1
  %cmp24.not = icmp ugt i32 %inc, %sub
  br i1 %cmp24.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %idx.055 = phi i32 [ %index, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 60) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.fail_crit_edge, label %if.end28

for.body.fail_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end28:                                         ; preds = %for.body
  %dev1.i = getelementptr inbounds %struct.msi_desc, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %dev1.i, align 8
  %nvec_used.i = getelementptr inbounds %struct.msi_desc, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %nvec_used.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %nvec_used.i, align 4
  %6 = ptrtoint ptr %data30 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data30, align 4
  %conv.i = trunc i32 %idx.055 to i16
  %msi_index.i = getelementptr inbounds %struct.msi_desc, ptr %call7.i.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %msi_index.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %msi_index.i, align 8
  %__store.i = getelementptr inbounds %struct.msi_device_data, ptr %7, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %__store.i) #11
  %call.i.i = tail call i32 @__xa_insert(ptr noundef %__store.i, i32 noundef %idx.055, ptr noundef nonnull %call7.i.i.i, i32 noundef 3264) #11
  tail call void @_raw_spin_unlock(ptr noundef %__store.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i49 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i49, label %for.cond, label %msi_insert_desc.exit

msi_insert_desc.exit:                             ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %affinity.i.i = getelementptr inbounds %struct.msi_desc, ptr %call7.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %affinity.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %affinity.i.i, align 8
  tail call void @kfree(ptr noundef %10) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %fail

fail:                                             ; preds = %msi_insert_desc.exit, %for.body.fail_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %msi_insert_desc.exit ], [ -12, %for.body.fail_crit_edge ]
  tail call void @msi_free_msi_descs_range(ptr noundef %dev, i32 noundef 1, i32 noundef %index, i32 noundef %sub)
  br label %cleanup

cleanup:                                          ; preds = %fail, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_msi_desc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__msi_domain_alloc_irqs(ptr noundef %domain, ptr noundef %dev, i32 noundef %nvec) #0 align 64 {
entry:
  %arg = alloca %struct.msi_alloc_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %ops1 = getelementptr inbounds %struct.msi_domain_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %arg) #11
  %4 = call ptr @memset(ptr %arg, i32 0, i32 20)
  %5 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops1, align 4
  %msi_check.i = getelementptr inbounds %struct.msi_domain_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %msi_check.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %msi_check.i, align 4
  %call.i = tail call i32 %8(ptr noundef %domain, ptr noundef %1, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %msi_domain_prepare_irqs.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

msi_domain_prepare_irqs.exit:                     ; preds = %entry
  %msi_prepare.i = getelementptr inbounds %struct.msi_domain_ops, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %msi_prepare.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msi_prepare.i, align 4
  %call2.i = call i32 %10(ptr noundef %domain, ptr noundef %dev, i32 noundef %nvec, ptr noundef nonnull %arg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %msi_domain_prepare_irqs.exit.cleanup_crit_edge

msi_domain_prepare_irqs.exit.cleanup_crit_edge:   ; preds = %msi_domain_prepare_irqs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %msi_domain_prepare_irqs.exit
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %and = lshr i32 %12, 3
  %13 = and i32 %and, 2
  %bus_token.i = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 7
  %14 = ptrtoint ptr %bus_token.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bus_token.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %15, label %if.end.if.end14_crit_edge [
    i32 3, label %if.end.sw.epilog.i_crit_edge
    i32 10, label %if.end.sw.epilog.i_crit_edge235
  ]

if.end.sw.epilog.i_crit_edge235:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end.sw.epilog.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

sw.epilog.i:                                      ; preds = %if.end.sw.epilog.i_crit_edge, %if.end.sw.epilog.i_crit_edge235
  %and.i = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.epilog.i.if.end14_crit_edge, label %if.end.i

sw.epilog.i.if.end14_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end.i:                                         ; preds = %sw.epilog.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pci_msi_ignore_mask to i32))
  %17 = load i32, ptr @pci_msi_ignore_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool1.not.i = icmp eq i32 %17, 0
  br i1 %tobool1.not.i, label %msi_check_reservation_mode.exit, label %if.end.i.if.end14_crit_edge

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

msi_check_reservation_mode.exit:                  ; preds = %if.end.i
  %call.i92 = call ptr @msi_first_desc(ptr noundef %dev, i32 noundef 0) #11
  %msi_attrib.i = getelementptr inbounds %struct.msi_desc, ptr %call.i92, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %msi_attrib.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i = load i16, ptr %msi_attrib.i, align 4
  %19 = and i16 %bf.load.i, -32512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %.not = icmp eq i16 %19, 0
  br i1 %.not, label %msi_check_reservation_mode.exit.if.end14_crit_edge, label %if.then6

msi_check_reservation_mode.exit.if.end14_crit_edge: ; preds = %msi_check_reservation_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then6:                                         ; preds = %msi_check_reservation_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  %flags8 = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 4
  %20 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags8, align 4
  %and9 = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %spec.select91.v = select i1 %tobool10.not, i32 1, i32 5
  %spec.select91 = or i32 %spec.select91.v, %13
  br label %if.end14

if.end14:                                         ; preds = %if.then6, %msi_check_reservation_mode.exit.if.end14_crit_edge, %if.end.i.if.end14_crit_edge, %sw.epilog.i.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %vflags.1 = phi i32 [ %13, %msi_check_reservation_mode.exit.if.end14_crit_edge ], [ %spec.select91, %if.then6 ], [ %13, %if.end.if.end14_crit_edge ], [ %13, %sw.epilog.i.if.end14_crit_edge ], [ %13, %if.end.i.if.end14_crit_edge ]
  %call15 = call ptr @msi_first_desc(ptr noundef %dev, i32 noundef 1)
  %tobool16.not141 = icmp eq ptr %call15, null
  br i1 %tobool16.not141, label %if.end14.cleanup_crit_edge, label %for.body.lr.ph

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end14
  %set_desc = getelementptr inbounds %struct.msi_domain_ops, ptr %3, i32 0, i32 5
  %and.i100 = and i32 %vflags.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i100)
  %tobool.i = icmp ne i32 %and.i100, 0
  %and1.i = and i32 %vflags.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not.i = icmp eq i32 %13, 0
  br label %for.body

for.body:                                         ; preds = %if.end40.for.body_crit_edge, %for.body.lr.ph
  %allocated.0143 = phi i32 [ 0, %for.body.lr.ph ], [ %inc41, %if.end40.for.body_crit_edge ]
  %desc.0142 = phi ptr [ %call15, %for.body.lr.ph ], [ %call43, %if.end40.for.body_crit_edge ]
  %22 = ptrtoint ptr %set_desc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_desc, align 4
  call void %23(ptr noundef nonnull %arg, ptr noundef nonnull %desc.0142) #11
  %nvec_used = getelementptr inbounds %struct.msi_desc, ptr %desc.0142, i32 0, i32 1
  %24 = ptrtoint ptr %nvec_used to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nvec_used, align 4
  %affinity = getelementptr inbounds %struct.msi_desc, ptr %desc.0142, i32 0, i32 4
  %26 = ptrtoint ptr %affinity to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %affinity, align 4
  %call18 = call i32 @__irq_domain_alloc_irqs(ptr noundef %domain, i32 noundef -1, i32 noundef %25, i32 noundef -1, ptr noundef nonnull %arg, i1 noundef zeroext false, ptr noundef %27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %if.then19, label %for.cond22.preheader

for.cond22.preheader:                             ; preds = %for.body
  %28 = ptrtoint ptr %nvec_used to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nvec_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp24137.not = icmp eq i32 %29, 0
  br i1 %cmp24137.not, label %for.cond22.preheader.for.end_crit_edge, label %for.cond22.preheader.for.body25_crit_edge

for.cond22.preheader.for.body25_crit_edge:        ; preds = %for.cond22.preheader
  br label %for.body25

for.cond22.preheader.for.end_crit_edge:           ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then19:                                        ; preds = %for.body
  %30 = ptrtoint ptr %bus_token.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bus_token.i, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %31, label %if.then19.cleanup_crit_edge [
    i32 3, label %if.then19.sw.epilog.i95_crit_edge
    i32 10, label %if.then19.sw.epilog.i95_crit_edge236
  ]

if.then19.sw.epilog.i95_crit_edge236:             ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i95

if.then19.sw.epilog.i95_crit_edge:                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i95

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog.i95:                                    ; preds = %if.then19.sw.epilog.i95_crit_edge, %if.then19.sw.epilog.i95_crit_edge236
  %33 = ptrtoint ptr %nvec_used to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nvec_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.i94 = icmp ugt i32 %34, 1
  br i1 %cmp.i94, label %sw.epilog.i95.cleanup_crit_edge, label %if.end.i97

sw.epilog.i95.cleanup_crit_edge:                  ; preds = %sw.epilog.i95
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i97:                                       ; preds = %sw.epilog.i95
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %allocated.0143)
  %tobool.not.i96 = icmp eq i32 %allocated.0143, 0
  %spec.select.i = select i1 %tobool.not.i96, i32 -28, i32 %allocated.0143
  br label %cleanup

for.body25:                                       ; preds = %for.inc.for.body25_crit_edge, %for.cond22.preheader.for.body25_crit_edge
  %i.0138 = phi i32 [ %inc, %for.inc.for.body25_crit_edge ], [ 0, %for.cond22.preheader.for.body25_crit_edge ]
  %call26 = call i32 @irq_set_msi_desc_off(i32 noundef %call18, i32 noundef %i.0138, ptr noundef nonnull %desc.0142) #11
  %add = add i32 %i.0138, %call18
  call void @irq_debugfs_copy_devname(i32 noundef %add, ptr noundef %dev) #11
  %call.i99 = call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %add) #11
  br i1 %tobool.i, label %for.body25.if.end4.i_crit_edge, label %if.then.i101

for.body25.if.end4.i_crit_edge:                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then.i101:                                     ; preds = %for.body25
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i99, i32 0, i32 3
  %35 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %common.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %and.i.i = and i32 %38, -67108865
  store i32 %and.i.i, ptr %36, align 4
  br i1 %tobool2.not.i, label %if.then.i101.if.end4.i_crit_edge, label %if.then3.i

if.then.i101.if.end4.i_crit_edge:                 ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %common.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %or.i.i = or i32 %42, 134217728
  store i32 %or.i.i, ptr %40, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.then.i101.if.end4.i_crit_edge, %for.body25.if.end4.i_crit_edge
  br i1 %tobool6.not.i, label %if.end4.i.for.inc_crit_edge, label %if.end8.i

if.end4.i.for.inc_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end8.i:                                        ; preds = %if.end4.i
  %call11.i = call i32 @irq_domain_activate_irq(ptr noundef %call.i99, i1 noundef zeroext %tobool.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  %43 = and i1 %tobool.i, %tobool12.not.i
  br i1 %43, label %if.then17.i, label %msi_init_virq.exit

if.then17.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %common.i29.i = getelementptr inbounds %struct.irq_data, ptr %call.i99, i32 0, i32 3
  %44 = ptrtoint ptr %common.i29.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %common.i29.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %and.i30.i = and i32 %47, -513
  store i32 %and.i30.i, ptr %45, align 4
  br label %for.inc

msi_init_virq.exit:                               ; preds = %if.end8.i
  br i1 %tobool12.not.i, label %msi_init_virq.exit.for.inc_crit_edge, label %msi_init_virq.exit.cleanup_crit_edge

msi_init_virq.exit.cleanup_crit_edge:             ; preds = %msi_init_virq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

msi_init_virq.exit.for.inc_crit_edge:             ; preds = %msi_init_virq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %msi_init_virq.exit.for.inc_crit_edge, %if.then17.i, %if.end4.i.for.inc_crit_edge
  %inc = add nuw i32 %i.0138, 1
  %48 = ptrtoint ptr %nvec_used to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nvec_used, align 4
  %cmp24 = icmp ult i32 %inc, %49
  br i1 %cmp24, label %for.inc.for.body25_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body25_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body25

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond22.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond22.preheader.for.end_crit_edge ], [ %49, %for.inc.for.end_crit_edge ]
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %1, align 4
  %and33 = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %for.end.if.end40_crit_edge, label %if.then35

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then35:                                        ; preds = %for.end
  %52 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.lcssa, i32 28) #11
  %53 = extractvalue { i32, i1 } %52, 1
  br i1 %53, label %if.then35.cleanup_crit_edge, label %if.end7.i.i.i, !prof !59

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %if.then35
  %54 = extractvalue { i32, i1 } %52, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %54, i32 noundef 3520) #15
  %tobool.not.i104 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i104, label %if.end7.i.i.i.cleanup_crit_edge, label %if.end.i105

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i105:                                      ; preds = %if.end7.i.i.i
  %sysfs_attrs.i = getelementptr inbounds %struct.msi_desc, ptr %desc.0142, i32 0, i32 5
  %55 = ptrtoint ptr %sysfs_attrs.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call8.i.i.i, ptr %sysfs_attrs.i, align 4
  %56 = ptrtoint ptr %nvec_used to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nvec_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp53.not.i = icmp eq i32 %57, 0
  br i1 %cmp53.not.i, label %if.end.i105.if.end40_crit_edge, label %if.end.i105.do.body.i_crit_edge

if.end.i105.do.body.i_crit_edge:                  ; preds = %if.end.i105
  br label %do.body.i

if.end.i105.if.end40_crit_edge:                   ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

for.cond.i:                                       ; preds = %if.end10.i
  %inc.i = add nuw i32 %i.054.i, 1
  %58 = ptrtoint ptr %nvec_used to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nvec_used, align 4
  %cmp.i106 = icmp ult i32 %inc.i, %59
  br i1 %cmp.i106, label %for.cond.i.do.body.i_crit_edge, label %for.cond.i.if.end40_crit_edge

for.cond.i.if.end40_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

for.cond.i.do.body.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.body.i:                                        ; preds = %for.cond.i.do.body.i_crit_edge, %if.end.i105.do.body.i_crit_edge
  %i.054.i = phi i32 [ %inc.i, %for.cond.i.do.body.i_crit_edge ], [ 0, %if.end.i105.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.device_attribute, ptr %call8.i.i.i, i32 %i.054.i
  %key.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i, i32 0, i32 3
  %60 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @msi_sysfs_populate_desc.__key, ptr %key.i, align 4
  %61 = ptrtoint ptr %desc.0142 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %desc.0142, align 4
  %add.i = add i32 %62, %i.054.i
  %call2.i107 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.5, i32 noundef %add.i) #11
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call2.i107, ptr %arrayidx.i, align 4
  %tobool8.not.i = icmp eq ptr %call2.i107, null
  br i1 %tobool8.not.i, label %do.body.i.fail.i_crit_edge, label %if.end10.i

do.body.i.fail.i_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail.i

if.end10.i:                                       ; preds = %do.body.i
  %mode.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i, i32 0, i32 1
  %64 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 292, ptr %mode.i, align 4
  %show.i = getelementptr %struct.device_attribute, ptr %call8.i.i.i, i32 %i.054.i, i32 1
  %65 = ptrtoint ptr %show.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @msi_mode_show, ptr %show.i, align 4
  %call16.i = call i32 @sysfs_add_file_to_group(ptr noundef %dev, ptr noundef %arrayidx.i, ptr noundef nonnull @.str.4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %for.cond.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %show.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %show.i, align 4
  br label %fail.i

fail.i:                                           ; preds = %if.then18.i, %do.body.i.fail.i_crit_edge
  %ret.0.i108 = phi i32 [ %call16.i, %if.then18.i ], [ -12, %do.body.i.fail.i_crit_edge ]
  %sysfs_attrs.i170 = getelementptr inbounds %struct.msi_desc, ptr %desc.0142, i32 0, i32 5
  %67 = ptrtoint ptr %sysfs_attrs.i170 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sysfs_attrs.i170, align 4
  %tobool.not.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i, label %fail.i.cleanup_crit_edge, label %if.end.i.i

fail.i.cleanup_crit_edge:                         ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %fail.i
  %69 = ptrtoint ptr %sysfs_attrs.i170 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %sysfs_attrs.i170, align 4
  %70 = ptrtoint ptr %nvec_used to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nvec_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp19.not.i.i = icmp eq i32 %71, 0
  br i1 %cmp19.not.i.i, label %msi_sysfs_populate_desc.exit.thread121, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

msi_sysfs_populate_desc.exit.thread121:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %68) #11
  br label %cleanup

for.body.i.i:                                     ; preds = %if.end5.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %i.020.i.i = phi i32 [ %inc.i.i, %if.end5.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.device_attribute, ptr %68, i32 %i.020.i.i
  %show.i.i = getelementptr %struct.device_attribute, ptr %68, i32 %i.020.i.i, i32 1
  %72 = ptrtoint ptr %show.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %show.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %73, null
  br i1 %tobool2.not.i.i, label %for.body.i.i.if.end5.i.i_crit_edge, label %if.then3.i.i

for.body.i.i.if.end5.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @sysfs_remove_file_from_group(ptr noundef %dev, ptr noundef %arrayidx.i.i, ptr noundef nonnull @.str.4) #11
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %for.body.i.i.if.end5.i.i_crit_edge
  %74 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i.i, align 4
  call void @kfree(ptr noundef %75) #11
  %inc.i.i = add nuw i32 %i.020.i.i, 1
  %76 = ptrtoint ptr %nvec_used to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nvec_used, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %77
  br i1 %cmp.i.i, label %if.end5.i.i.for.body.i.i_crit_edge, label %msi_sysfs_populate_desc.exit

if.end5.i.i.for.body.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

msi_sysfs_populate_desc.exit:                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %68) #11
  br label %cleanup

if.end40:                                         ; preds = %for.cond.i.if.end40_crit_edge, %if.end.i105.if.end40_crit_edge, %for.end.if.end40_crit_edge
  %inc41 = add i32 %allocated.0143, 1
  %call43 = call ptr @msi_next_desc(ptr noundef %dev, i32 noundef 1)
  %tobool16.not = icmp eq ptr %call43, null
  br i1 %tobool16.not, label %if.end40.cleanup_crit_edge, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end40.cleanup_crit_edge, %msi_sysfs_populate_desc.exit, %msi_sysfs_populate_desc.exit.thread121, %fail.i.cleanup_crit_edge, %if.end7.i.i.i.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %msi_init_virq.exit.cleanup_crit_edge, %if.end.i97, %sw.epilog.i95.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %msi_domain_prepare_irqs.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %msi_domain_prepare_irqs.exit.cleanup_crit_edge ], [ %ret.0.i108, %msi_sysfs_populate_desc.exit ], [ %spec.select.i, %if.end.i97 ], [ -28, %if.then19.cleanup_crit_edge ], [ 1, %sw.epilog.i95.cleanup_crit_edge ], [ %ret.0.i108, %msi_sysfs_populate_desc.exit.thread121 ], [ %call.i, %entry.cleanup_crit_edge ], [ %ret.0.i108, %fail.i.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ %call11.i, %msi_init_virq.exit.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ], [ -12, %if.end7.i.i.i.cleanup_crit_edge ], [ -12, %if.then35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %arg) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_domain_alloc_irqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_msi_desc_off(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_debugfs_copy_devname(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msi_domain_alloc_irqs_descs_locked(ptr noundef %domain, ptr noundef %dev, i32 noundef %nvec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %ops1 = getelementptr inbounds %struct.msi_domain_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %dep_map = getelementptr inbounds %struct.msi_device_data, ptr %6, i32 0, i32 2, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !59

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 931, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %and.i = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end28_crit_edge, label %msi_domain_add_simple_msi_descs.exit

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

msi_domain_add_simple_msi_descs.exit:             ; preds = %if.end
  %call.i46 = tail call fastcc i32 @msi_add_simple_msi_descs(ptr noundef %dev, i32 noundef 0, i32 noundef %nvec) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool26.not = icmp eq i32 %call.i46, 0
  br i1 %tobool26.not, label %msi_domain_add_simple_msi_descs.exit.if.end28_crit_edge, label %msi_domain_add_simple_msi_descs.exit.cleanup_crit_edge

msi_domain_add_simple_msi_descs.exit.cleanup_crit_edge: ; preds = %msi_domain_add_simple_msi_descs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

msi_domain_add_simple_msi_descs.exit.if.end28_crit_edge: ; preds = %msi_domain_add_simple_msi_descs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.end28:                                         ; preds = %msi_domain_add_simple_msi_descs.exit.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %domain_alloc_irqs = getelementptr inbounds %struct.msi_domain_ops, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %domain_alloc_irqs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %domain_alloc_irqs, align 4
  %call29 = tail call i32 %10(ptr noundef %domain, ptr noundef %dev, i32 noundef %nvec) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %if.then31

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then31:                                        ; preds = %if.end28
  %11 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host_data, align 4
  %ops1.i = getelementptr inbounds %struct.msi_domain_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ops1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %15 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i47 = icmp eq i32 %15, 0
  br i1 %tobool.not.i47, label %if.then31.if.end.i48_crit_edge, label %land.rhs.i

if.then31.if.end.i48_crit_edge:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i48

land.rhs.i:                                       ; preds = %if.then31
  %data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %dep_map.i = getelementptr inbounds %struct.msi_device_data, ptr %17, i32 0, i32 2, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i48_crit_edge, !prof !59

land.rhs.i.if.end.i48_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i48

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1007, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i48

if.end.i48:                                       ; preds = %do.end.i, %land.rhs.i.if.end.i48_crit_edge, %if.then31.if.end.i48_crit_edge
  %domain_free_irqs.i = getelementptr inbounds %struct.msi_domain_ops, ptr %14, i32 0, i32 7
  %18 = ptrtoint ptr %domain_free_irqs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %domain_free_irqs.i, align 4
  tail call void %19(ptr noundef %domain, ptr noundef %dev) #11
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %12, align 4
  %and.i.i = and i32 %21, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i48.cleanup_crit_edge, label %if.then.i.i

if.end.i48.cleanup_crit_edge:                     ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @msi_free_msi_descs_range(ptr noundef %dev, i32 noundef 0, i32 noundef 0, i32 noundef 65535) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.end.i48.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %msi_domain_add_simple_msi_descs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i46, %msi_domain_add_simple_msi_descs.exit.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ], [ %call29, %if.end.i48.cleanup_crit_edge ], [ %call29, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msi_domain_free_irqs_descs_locked(ptr noundef %domain, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %ops1 = getelementptr inbounds %struct.msi_domain_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %dep_map = getelementptr inbounds %struct.msi_device_data, ptr %6, i32 0, i32 2, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !59

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1007, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %domain_free_irqs = getelementptr inbounds %struct.msi_domain_ops, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %domain_free_irqs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %domain_free_irqs, align 4
  tail call void %8(ptr noundef %domain, ptr noundef %dev) #11
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %and.i = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.msi_domain_free_msi_descs.exit_crit_edge, label %if.then.i

if.end.msi_domain_free_msi_descs.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %msi_domain_free_msi_descs.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @msi_free_msi_descs_range(ptr noundef %dev, i32 noundef 0, i32 noundef 0, i32 noundef 65535) #11
  br label %msi_domain_free_msi_descs.exit

msi_domain_free_msi_descs.exit:                   ; preds = %if.then.i, %if.end.msi_domain_free_msi_descs.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msi_domain_alloc_irqs(ptr noundef %domain, ptr noundef %dev, i32 noundef %nvec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %mutex.i = getelementptr inbounds %struct.msi_device_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %call = tail call i32 @msi_domain_alloc_irqs_descs_locked(ptr noundef %domain, ptr noundef %dev, i32 noundef %nvec)
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %__iter_idx.i = getelementptr inbounds %struct.msi_device_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %__iter_idx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65535, ptr %__iter_idx.i, align 4
  %5 = load ptr, ptr %data.i, align 4
  %mutex.i4 = getelementptr inbounds %struct.msi_device_data, ptr %5, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %mutex.i4) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__msi_domain_free_irqs(ptr noundef %domain, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call ptr @msi_first_desc(ptr noundef %dev, i32 noundef 2)
  %tobool.not30 = icmp eq ptr %call, null
  br i1 %tobool.not30, label %entry.for.end14_crit_edge, label %entry.for.cond1.preheader_crit_edge

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  br label %for.cond1.preheader

entry.for.end14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end14

for.cond1.preheader:                              ; preds = %if.end10.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %desc.031 = phi ptr [ %call13, %if.end10.for.cond1.preheader_crit_edge ], [ %call, %entry.for.cond1.preheader_crit_edge ]
  %nvec_used = getelementptr inbounds %struct.msi_desc, ptr %desc.031, i32 0, i32 1
  %2 = ptrtoint ptr %nvec_used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nvec_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp28.not = icmp eq i32 %3, 0
  br i1 %cmp28.not, label %for.cond1.preheader.for.end_crit_edge, label %for.cond1.preheader.for.body2_crit_edge

for.cond1.preheader.for.body2_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body2

for.cond1.preheader.for.end_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body2:                                        ; preds = %for.inc.for.body2_crit_edge, %for.cond1.preheader.for.body2_crit_edge
  %i.029 = phi i32 [ %inc, %for.inc.for.body2_crit_edge ], [ 0, %for.cond1.preheader.for.body2_crit_edge ]
  %4 = ptrtoint ptr %desc.031 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %desc.031, align 4
  %add = add i32 %5, %i.029
  %call3 = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %add) #11
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %for.body2.for.inc_crit_edge, label %land.lhs.true

for.body2.for.inc_crit_edge:                      ; preds = %for.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body2
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call3, i32 0, i32 3
  %6 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %common.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and.i = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @irq_domain_deactivate_irq(ptr noundef nonnull %call3) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body2.for.inc_crit_edge
  %inc = add nuw i32 %i.029, 1
  %10 = ptrtoint ptr %nvec_used to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nvec_used, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body2_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body2_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body2

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond1.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond1.preheader.for.end_crit_edge ], [ %11, %for.inc.for.end_crit_edge ]
  %12 = ptrtoint ptr %desc.031 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %desc.031, align 4
  tail call void @irq_domain_free_irqs(i32 noundef %13, i32 noundef %.lcssa) #11
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %and = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %for.end.if.end10_crit_edge, label %if.then9

for.end.if.end10_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then9:                                         ; preds = %for.end
  %sysfs_attrs.i = getelementptr inbounds %struct.msi_desc, ptr %desc.031, i32 0, i32 5
  %16 = ptrtoint ptr %sysfs_attrs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sysfs_attrs.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then9.if.end10_crit_edge, label %if.end.i

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end.i:                                         ; preds = %if.then9
  %18 = ptrtoint ptr %sysfs_attrs.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %sysfs_attrs.i, align 4
  %19 = ptrtoint ptr %nvec_used to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nvec_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp19.not.i = icmp eq i32 %20, 0
  br i1 %cmp19.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %if.end5.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.020.i = phi i32 [ %inc.i, %if.end5.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.device_attribute, ptr %17, i32 %i.020.i
  %show.i = getelementptr %struct.device_attribute, ptr %17, i32 %i.020.i, i32 1
  %21 = ptrtoint ptr %show.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %show.i, align 4
  %tobool2.not.i = icmp eq ptr %22, null
  br i1 %tobool2.not.i, label %for.body.i.if.end5.i_crit_edge, label %if.then3.i

for.body.i.if.end5.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sysfs_remove_file_from_group(ptr noundef %dev, ptr noundef %arrayidx.i, ptr noundef nonnull @.str.4) #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %for.body.i.if.end5.i_crit_edge
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %24) #11
  %inc.i = add nuw i32 %i.020.i, 1
  %25 = ptrtoint ptr %nvec_used to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nvec_used, align 4
  %cmp.i = icmp ult i32 %inc.i, %26
  br i1 %cmp.i, label %if.end5.i.for.body.i_crit_edge, label %if.end5.i.for.end.i_crit_edge

if.end5.i.for.end.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %if.end5.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %17) #11
  br label %if.end10

if.end10:                                         ; preds = %for.end.i, %if.then9.if.end10_crit_edge, %for.end.if.end10_crit_edge
  %27 = ptrtoint ptr %desc.031 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %desc.031, align 4
  %call13 = tail call ptr @msi_next_desc(ptr noundef %dev, i32 noundef 2)
  %tobool.not = icmp eq ptr %call13, null
  br i1 %tobool.not, label %if.end10.for.end14_crit_edge, label %if.end10.for.cond1.preheader_crit_edge

if.end10.for.cond1.preheader_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader

if.end10.for.end14_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end14

for.end14:                                        ; preds = %if.end10.for.end14_crit_edge, %entry.for.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_deactivate_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msi_domain_free_irqs(ptr noundef %domain, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %mutex.i = getelementptr inbounds %struct.msi_device_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %host_data.i = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %2 = ptrtoint ptr %host_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data.i, align 4
  %ops1.i = getelementptr inbounds %struct.msi_domain_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %dep_map.i = getelementptr inbounds %struct.msi_device_data, ptr %8, i32 0, i32 2, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !59

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1007, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %domain_free_irqs.i = getelementptr inbounds %struct.msi_domain_ops, ptr %5, i32 0, i32 7
  %9 = ptrtoint ptr %domain_free_irqs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %domain_free_irqs.i, align 4
  tail call void %10(ptr noundef %domain, ptr noundef %dev) #11
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  %and.i.i = and i32 %12, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.msi_domain_free_irqs_descs_locked.exit_crit_edge, label %if.then.i.i

if.end.i.msi_domain_free_irqs_descs_locked.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %msi_domain_free_irqs_descs_locked.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @msi_free_msi_descs_range(ptr noundef %dev, i32 noundef 0, i32 noundef 0, i32 noundef 65535) #11
  br label %msi_domain_free_irqs_descs_locked.exit

msi_domain_free_irqs_descs_locked.exit:           ; preds = %if.then.i.i, %if.end.i.msi_domain_free_irqs_descs_locked.exit_crit_edge
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %__iter_idx.i = getelementptr inbounds %struct.msi_device_data, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %__iter_idx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 65535, ptr %__iter_idx.i, align 4
  %16 = load ptr, ptr %data.i, align 4
  %mutex.i5 = getelementptr inbounds %struct.msi_device_data, ptr %16, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %mutex.i5) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @msi_get_domain_info(ptr nocapture noundef readonly %domain) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @msi_domain_ops_get_hwirq(ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.msi_alloc_info, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi_domain_ops_init(ptr noundef %domain, ptr nocapture noundef readonly %info, i32 noundef %virq, i32 noundef %hwirq, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.msi_domain_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %chip_data = getelementptr inbounds %struct.msi_domain_info, ptr %info, i32 0, i32 3
  %2 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data, align 4
  %call = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %virq, i32 noundef %hwirq, ptr noundef %1, ptr noundef %3) #11
  %handler = getelementptr inbounds %struct.msi_domain_info, ptr %info, i32 0, i32 4
  %4 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handler, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %land.lhs.true

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %handler_name = getelementptr inbounds %struct.msi_domain_info, ptr %info, i32 0, i32 6
  %6 = ptrtoint ptr %handler_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handler_name, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %land.lhs.true.if.end8_crit_edge, label %if.then

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %land.lhs.true
  tail call void @__irq_set_handler(i32 noundef %virq, ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %7) #11
  %handler_data = getelementptr inbounds %struct.msi_domain_info, ptr %info, i32 0, i32 5
  %8 = ptrtoint ptr %handler_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handler_data, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.then.if.end8_crit_edge, label %if.then5

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @irq_set_handler_data(i32 noundef %virq, ptr noundef nonnull %9) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @msi_domain_ops_check(ptr nocapture noundef readnone %domain, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @msi_domain_ops_prepare(ptr nocapture noundef readnone %domain, ptr nocapture noundef readnone %dev, i32 noundef %nvec, ptr nocapture noundef writeonly %arg) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %arg, i32 0, i32 20)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @msi_domain_ops_set_desc(ptr nocapture noundef writeonly %arg, ptr noundef %desc) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %desc, ptr %arg, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_handler_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr noundef %arg) #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %ops1 = getelementptr inbounds %struct.msi_domain_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 %5(ptr noundef %1, ptr noundef %arg) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #11
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %irq.i, align 4, !annotation !63
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %domain, i32 noundef %call, ptr noundef nonnull %irq.i) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %irq_find_mapping.exit.thread, label %irq_find_mapping.exit

irq_find_mapping.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #11
  br label %if.end

irq_find_mapping.exit:                            ; preds = %entry
  %7 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %irq_find_mapping.exit.if.end_crit_edge, label %irq_find_mapping.exit.cleanup_crit_edge

irq_find_mapping.exit.cleanup_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

irq_find_mapping.exit.if.end_crit_edge:           ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %irq_find_mapping.exit.if.end_crit_edge, %irq_find_mapping.exit.thread
  %parent = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr noundef %arg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then3.cleanup_crit_edge, label %if.then3.if.end8_crit_edge

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp963.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp963.not, label %if.end8.cleanup_crit_edge, label %for.body.lr.ph

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end8
  %msi_init = getelementptr inbounds %struct.msi_domain_ops, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc24.for.body_crit_edge, %for.body.lr.ph
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc24.for.body_crit_edge ]
  %11 = ptrtoint ptr %msi_init to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %msi_init, align 4
  %add = add i32 %i.064, %virq
  %add10 = add i32 %i.064, %call
  %call11 = call i32 %12(ptr noundef %domain, ptr noundef %1, i32 noundef %add, i32 noundef %add10, ptr noundef %arg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %for.inc24

if.then13:                                        ; preds = %for.body
  %msi_free = getelementptr inbounds %struct.msi_domain_ops, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %msi_free to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %msi_free, align 4
  %tobool14.not = icmp ne ptr %14, null
  %i.165 = add i32 %i.064, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.165)
  %cmp1766 = icmp sgt i32 %i.165, 0
  %or.cond = select i1 %tobool14.not, i1 %cmp1766, i1 false
  br i1 %or.cond, label %if.then13.for.body18_crit_edge, label %if.then13.if.end22_crit_edge

if.then13.if.end22_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then13.for.body18_crit_edge:                   ; preds = %if.then13
  br label %for.body18

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %if.then13.for.body18_crit_edge
  %i.167 = phi i32 [ %i.1, %for.body18.for.body18_crit_edge ], [ %i.165, %if.then13.for.body18_crit_edge ]
  %15 = ptrtoint ptr %msi_free to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %msi_free, align 4
  %add20 = add i32 %i.167, %virq
  call void %16(ptr noundef %domain, ptr noundef %1, i32 noundef %add20) #11
  %i.1 = add nsw i32 %i.167, -1
  %cmp17.not = icmp eq i32 %i.1, 0
  br i1 %cmp17.not, label %for.body18.if.end22_crit_edge, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body18

for.body18.if.end22_crit_edge:                    ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end22:                                         ; preds = %for.body18.if.end22_crit_edge, %if.then13.if.end22_crit_edge
  call void @irq_domain_free_irqs_top(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #11
  br label %cleanup

for.inc24:                                        ; preds = %for.body
  %inc = add nuw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.inc24.cleanup_crit_edge, label %for.inc24.for.body_crit_edge

for.inc24.for.body_crit_edge:                     ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc24.cleanup_crit_edge:                      ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc24.cleanup_crit_edge, %if.end22, %if.end8.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %irq_find_mapping.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end22 ], [ -17, %irq_find_mapping.exit.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %for.inc24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msi_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %ops = getelementptr inbounds %struct.msi_domain_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %msi_free = getelementptr inbounds %struct.msi_domain_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %msi_free to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msi_free, align 4
  %tobool.not = icmp ne ptr %5, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp11 = icmp ne i32 %nr_irqs, 0
  %or.cond = and i1 %tobool.not, %cmp11
  br i1 %or.cond, label %entry.for.body_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %msi_free2 = getelementptr inbounds %struct.msi_domain_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %msi_free2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %msi_free2, align 4
  %add = add i32 %i.012, %virq
  tail call void %9(ptr noundef %domain, ptr noundef %1, i32 noundef %add) #11
  %inc = add nuw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @irq_domain_free_irqs_top(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi_domain_activate(ptr nocapture noundef readnone %domain, ptr noundef %irq_data, i1 noundef zeroext %early) #0 align 64 {
entry:
  %msg = alloca [2 x %struct.msi_msg], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #11
  %0 = call ptr @memset(ptr %msg, i32 0, i32 24)
  %call = call i32 @irq_chip_compose_msi_msg(ptr noundef %irq_data, ptr noundef nonnull %msg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !60

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/irq/msi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 515, 0\0A.popsection", ""() #11, !srcloc !64
  unreachable

do.end8:                                          ; preds = %entry
  %domain9 = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 5
  %1 = ptrtoint ptr %domain9 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %domain9, align 4
  %host_data.i = getelementptr inbounds %struct.irq_domain, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %host_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host_data.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %and.i = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end8.land.rhs.i_crit_edge, label %land.lhs.true.i

do.end8.land.rhs.i_crit_edge:                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

land.lhs.true.i:                                  ; preds = %do.end8
  %chip.i = getelementptr inbounds %struct.msi_domain_info, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip.i, align 4
  %flags1.i = getelementptr inbounds %struct.irq_chip, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags1.i, align 4
  %and2.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.land.rhs.i_crit_edge, label %land.lhs.true.i.msi_check_level.exit_crit_edge

land.lhs.true.i.msi_check_level.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %msi_check_level.exit

land.lhs.true.i.land.rhs.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %land.lhs.true.i.land.rhs.i_crit_edge, %do.end8.land.rhs.i_crit_edge
  %arrayidx.i = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 1
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not.i = icmp eq i32 %12, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i, label %land.rhs.i.do.end.i_crit_edge

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %13 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 1, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool6.not.i = icmp eq i32 %15, 0
  br i1 %tobool6.not.i, label %lor.rhs.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %16 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 1, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool8.not.i = icmp eq i32 %18, 0
  br i1 %tobool8.not.i, label %lor.rhs.i.msi_check_level.exit_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !60

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

lor.rhs.i.msi_check_level.exit_crit_edge:         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %msi_check_level.exit

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %land.rhs.i.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 479, i32 noundef 9, ptr noundef null) #11
  br label %msi_check_level.exit

msi_check_level.exit:                             ; preds = %do.end.i, %lor.rhs.i.msi_check_level.exit_crit_edge, %land.lhs.true.i.msi_check_level.exit_crit_edge
  %chip.i14 = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 4
  %19 = ptrtoint ptr %chip.i14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip.i14, align 4
  %irq_write_msi_msg.i = getelementptr inbounds %struct.irq_chip, ptr %20, i32 0, i32 25
  %21 = ptrtoint ptr %irq_write_msi_msg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_write_msi_msg.i, align 4
  call void %22(ptr noundef %irq_data, ptr noundef nonnull %msg) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msi_domain_deactivate(ptr nocapture noundef readnone %domain, ptr noundef %irq_data) #0 align 64 {
entry:
  %msg = alloca [2 x %struct.msi_msg], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #11
  %0 = call ptr @memset(ptr %msg, i32 0, i32 24)
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 4
  %1 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip.i, align 4
  %irq_write_msi_msg.i = getelementptr inbounds %struct.irq_chip, ptr %2, i32 0, i32 25
  %3 = ptrtoint ptr %irq_write_msi_msg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %irq_write_msi_msg.i, align 4
  call void %4(ptr noundef %irq_data, ptr noundef nonnull %msg) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_top(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_activate_irq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %cmp = icmp eq ptr %1, @pci_bus_type
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %msix_enabled = getelementptr i8, ptr %dev, i32 1481
  %2 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load = load i40, ptr %msix_enabled, align 1
  %3 = and i40 %bf.load, 67108864
  %phi.cmp = icmp eq i40 %3, 0
  %phi.sel = select i1 %phi.cmp, ptr @.str.8, ptr @.str.7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %phi.sel, %cond.true ], [ @.str.8, %entry.cond.end_crit_edge ]
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_add_file_to_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_from_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/irq/msi.c", i32 83, i32 2}
!2 = !{ptr @__ksymtab_get_cached_msi_msg, !3, !"__ksymtab_get_cached_msi_msg", i1 false, i1 false}
!3 = !{!"../kernel/irq/msi.c", i32 176, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/irq/msi.c", i32 205, i32 7}
!6 = !{ptr @msi_setup_device_data.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../kernel/irq/msi.c", i32 216, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__ksymtab_msi_lock_descs, !10, !"__ksymtab_msi_lock_descs", i1 false, i1 false}
!10 = !{!"../kernel/irq/msi.c", i32 230, i32 1}
!11 = !{ptr @__ksymtab_msi_unlock_descs, !12, !"__ksymtab_msi_unlock_descs", i1 false, i1 false}
!12 = !{!"../kernel/irq/msi.c", i32 242, i32 1}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../kernel/irq/msi.c", i32 271, i32 6}
!15 = !{ptr @__ksymtab_msi_first_desc, !16, !"__ksymtab_msi_first_desc", i1 false, i1 false}
!16 = !{!"../kernel/irq/msi.c", i32 279, i32 1}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../kernel/irq/msi.c", i32 297, i32 6}
!19 = !{ptr @__ksymtab_msi_next_desc, !20, !"__ksymtab_msi_next_desc", i1 false, i1 false}
!20 = !{!"../kernel/irq/msi.c", i32 308, i32 1}
!21 = !{ptr @__ksymtab_msi_get_virq, !22, !"__ksymtab_msi_get_virq", i1 false, i1 false}
!22 = !{!"../kernel/irq/msi.c", i32 346, i32 1}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../kernel/irq/msi.c", i32 137, i32 2}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../kernel/irq/msi.c", i32 182, i32 2}
!27 = !{ptr @xa_init_flags.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!29 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/irq/msi.c", i32 354, i32 10}
!32 = !{ptr @msi_irqs_group, !33, !"msi_irqs_group", i1 false, i1 false}
!33 = !{!"../kernel/irq/msi.c", i32 353, i32 37}
!34 = !{ptr @msi_dev_attrs, !35, !"msi_dev_attrs", i1 false, i1 false}
!35 = !{!"../kernel/irq/msi.c", i32 349, i32 26}
!36 = !{ptr @msi_domain_ops_default, !37, !"msi_domain_ops_default", i1 false, i1 false}
!37 = !{!"../kernel/irq/msi.c", i32 623, i32 30}
!38 = !{ptr @msi_domain_ops, !39, !"msi_domain_ops", i1 false, i1 false}
!39 = !{!"../kernel/irq/msi.c", i32 575, i32 36}
!40 = !{ptr @msi_sysfs_populate_desc.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../kernel/irq/msi.c", i32 400, i32 3}
!42 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../kernel/irq/msi.c", i32 401, i32 46}
!44 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../kernel/irq/msi.c", i32 369, i32 25}
!46 = !{ptr @.str.7, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../kernel/irq/msi.c", i32 369, i32 43}
!48 = !{ptr @.str.8, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../kernel/irq/msi.c", i32 369, i32 52}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{i64 2154732630, i64 2154733111, i64 2154732667, i64 2154732723, i64 2154732757, i64 2154732781, i64 2154732822, i64 2154732843, i64 2154732871, i64 2154732905}
!62 = !{i64 2154735991, i64 2154736472, i64 2154736028, i64 2154736084, i64 2154736118, i64 2154736142, i64 2154736183, i64 2154736204, i64 2154736232, i64 2154736266}
!63 = !{!"auto-init"}
!64 = !{i64 2154734255, i64 2154734736, i64 2154734292, i64 2154734348, i64 2154734382, i64 2154734406, i64 2154734447, i64 2154734468, i64 2154734496, i64 2154734530}
