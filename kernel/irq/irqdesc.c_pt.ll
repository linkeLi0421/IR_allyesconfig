; ModuleID = '/llk/IR_all_yes/kernel/irq/irqdesc.c_pt.bc'
source_filename = "../kernel/irq/irqdesc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nr_irqs\22, \22a\22\09"
module asm "\09.weak\09__crc_nr_irqs\09\09\09\09"
module asm "\09.long\09__crc_nr_irqs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nr_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22nr_irqs\22\09\09\09\09\09"
module asm "__kstrtabns_nr_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+generic_handle_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_handle_irq\09\09\09\09"
module asm "\09.long\09__crc_generic_handle_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_handle_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_handle_irq\22\09\09\09\09\09"
module asm "__kstrtabns_generic_handle_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+generic_handle_domain_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_handle_domain_irq\09\09\09\09"
module asm "\09.long\09__crc_generic_handle_domain_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_handle_domain_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_handle_domain_irq\22\09\09\09\09\09"
module asm "__kstrtabns_generic_handle_domain_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_free_descs\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_free_descs\09\09\09\09"
module asm "\09.long\09__crc_irq_free_descs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_free_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_free_descs\22\09\09\09\09\09"
module asm "__kstrtabns_irq_free_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__irq_alloc_descs\22, \22a\22\09"
module asm "\09.weak\09__crc___irq_alloc_descs\09\09\09\09"
module asm "\09.long\09__crc___irq_alloc_descs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___irq_alloc_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22__irq_alloc_descs\22\09\09\09\09\09"
module asm "__kstrtabns___irq_alloc_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_get_percpu_devid_partition\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_get_percpu_devid_partition\09\09\09\09"
module asm "\09.long\09__crc_irq_get_percpu_devid_partition\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_get_percpu_devid_partition:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_get_percpu_devid_partition\22\09\09\09\09\09"
module asm "__kstrtabns_irq_get_percpu_devid_partition:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__irq_set_lockdep_class\22, \22a\22\09"
module asm "\09.weak\09__crc___irq_set_lockdep_class\09\09\09\09"
module asm "\09.long\09__crc___irq_set_lockdep_class\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___irq_set_lockdep_class:\09\09\09\09\09"
module asm "\09.asciz \09\22__irq_set_lockdep_class\22\09\09\09\09\09"
module asm "__kstrtabns___irq_set_lockdep_class:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.kernel_stat = type { i32, [10 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%struct.irqaction = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, [76 x i8] }

@__setup_str_irq_affinity_setup = internal constant [13 x i8] c"irqaffinity=\00", section ".init.rodata", align 1
@__setup_irq_affinity_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_irq_affinity_setup, ptr @irq_affinity_setup, i32 0 }, section ".init.setup", align 4
@nr_irqs = dso_local global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__kstrtab_nr_irqs = external dso_local constant [0 x i8], align 1
@__kstrtabns_nr_irqs = external dso_local constant [0 x i8], align 1
@__ksymtab_nr_irqs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nr_irqs to i32), ptr @__kstrtab_nr_irqs, ptr @__kstrtabns_nr_irqs }, section "___ksymtab_gpl+nr_irqs", align 4
@__initcall__kmod_irqdesc__228_331_irq_sysfs_init2 = internal global ptr @irq_sysfs_init, section ".initcall2.init", align 4
@irq_desc_tree = internal global { %struct.xarray, [44 x i8] } { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 3264, ptr null }, [44 x i8] zeroinitializer }, align 32
@sparse_irq_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sparse_irq_lock, i64 52), ptr getelementptr (i8, ptr @sparse_irq_lock, i64 52) }, ptr @sparse_irq_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@early_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016NR_IRQS: %d, nr_irqs: %d, preallocated irqs: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"early_irq_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/irq/irqdesc.c\00", [43 x i8] zeroinitializer }, align 32
@early_irq_init._entry_ptr = internal global ptr @early_irq_init._entry, section ".printk_index", align 4
@allocated_irqs = internal global { [257 x i32], [284 x i8] } zeroinitializer, align 32
@__kstrtab_generic_handle_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_handle_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_handle_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_handle_irq to i32), ptr @__kstrtab_generic_handle_irq, ptr @__kstrtabns_generic_handle_irq }, section "___ksymtab_gpl+generic_handle_irq", align 4
@generic_handle_domain_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_generic_handle_domain_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_handle_domain_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_handle_domain_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_handle_domain_irq to i32), ptr @__kstrtab_generic_handle_domain_irq, ptr @__kstrtabns_generic_handle_domain_irq }, section "___ksymtab_gpl+generic_handle_domain_irq", align 4
@generic_handle_domain_nmi.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_irq_free_descs = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_free_descs = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_free_descs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_free_descs to i32), ptr @__kstrtab_irq_free_descs, ptr @__kstrtabns_irq_free_descs }, section "___ksymtab_gpl+irq_free_descs", align 4
@__kstrtab___irq_alloc_descs = external dso_local constant [0 x i8], align 1
@__kstrtabns___irq_alloc_descs = external dso_local constant [0 x i8], align 1
@__ksymtab___irq_alloc_descs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__irq_alloc_descs to i32), ptr @__kstrtab___irq_alloc_descs, ptr @__kstrtabns___irq_alloc_descs }, section "___ksymtab_gpl+__irq_alloc_descs", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_irq_get_percpu_devid_partition = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_get_percpu_devid_partition = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_get_percpu_devid_partition = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_get_percpu_devid_partition to i32), ptr @__kstrtab_irq_get_percpu_devid_partition, ptr @__kstrtabns_irq_get_percpu_devid_partition }, section "___ksymtab_gpl+irq_get_percpu_devid_partition", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lock_class\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"request_class\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab___irq_set_lockdep_class = external dso_local constant [0 x i8], align 1
@__kstrtabns___irq_set_lockdep_class = external dso_local constant [0 x i8], align 1
@__ksymtab___irq_set_lockdep_class = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__irq_set_lockdep_class to i32), ptr @__kstrtab___irq_set_lockdep_class, ptr @__kstrtabns___irq_set_lockdep_class }, section "___ksymtab_gpl+__irq_set_lockdep_class", align 4
@irq_default_affinity = external dso_local global ptr, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@irq_kobj_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@irq_sysfs_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014Failed to add kobject for irq %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"irq_sysfs_add\00", [18 x i8] zeroinitializer }, align 32
@irq_sysfs_add._entry_ptr = internal global ptr @irq_sysfs_add._entry, section ".printk_index", align 4
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"irq_desc_tree.xa_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sparse_irq_lock.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sparse_irq_lock\00", [16 x i8] zeroinitializer }, align 32
@alloc_desc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&desc->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&irq_desc_lock_class\00", [43 x i8] zeroinitializer }, align 32
@irq_desc_lock_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@alloc_desc.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&desc->request_mutex\00", [43 x i8] zeroinitializer }, align 32
@irq_kobj_type = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @irq_kobj_release, ptr @kobj_sysfs_ops, ptr null, ptr @irq_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@no_irq_chip = external dso_local global %struct.irq_chip, align 4
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 4
@irq_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @irq_group, ptr null], [24 x i8] zeroinitializer }, align 32
@irq_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @irq_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@irq_attrs = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @per_cpu_count_attr, ptr @chip_name_attr, ptr @hwirq_attr, ptr @type_attr, ptr @wakeup_attr, ptr @name_attr, ptr @actions_attr, ptr null], [32 x i8] zeroinitializer }, align 32
@per_cpu_count_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @per_cpu_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@chip_name_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @chip_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@hwirq_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hwirq_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@type_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@wakeup_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wakeup_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@name_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@actions_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @actions_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"per_cpu_count\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%u\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"chip_name\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hwirq\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"level\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"edge\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wakeup\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"actions\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@kstat = external dso_local global %struct.kernel_stat, section ".data..percpu", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant [8 x i8] c"nr_irqs\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 130, i32 5 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"irq_desc_tree\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"sparse_irq_lock\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 530, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [15 x i8] c"allocated_irqs\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 134, i32 8 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 939, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 940, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 108, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 318, i32 41 }
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"irq_kobj_base\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 141, i32 24 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 293, i32 47 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 294, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 344, i32 8 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 133, i32 8 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 406, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 407, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [20 x i8] c"irq_desc_lock_class\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 25, i32 30 }
@___asan_gen_.111 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 408, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [14 x i8] c"irq_kobj_type\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 280, i32 25 }
@___asan_gen_.120 = private unnamed_addr constant [11 x i8] c"irq_groups\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [10 x i8] c"irq_group\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 278, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant [10 x i8] c"irq_attrs\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 268, i32 26 }
@___asan_gen_.129 = private unnamed_addr constant [19 x i8] c"per_cpu_count_attr\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [15 x i8] c"chip_name_attr\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [11 x i8] c"hwirq_attr\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [10 x i8] c"type_attr\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [12 x i8] c"wakeup_attr\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [10 x i8] c"name_attr\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [13 x i8] c"actions_attr\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 164, i32 1 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 151, i32 12 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 157, i32 48 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 158, i32 7 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 161, i32 47 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 181, i32 1 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 174, i32 35 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 196, i32 1 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 191, i32 22 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 212, i32 1 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 206, i32 47 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 206, i32 57 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 228, i32 1 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 222, i32 47 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 222, i32 59 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 243, i32 1 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 266, i32 1 }
@___asan_gen_.202 = private constant [24 x i8] c"../kernel/irq/irqdesc.c\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 255, i32 48 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 695, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 723, i32 2 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__initcall__kmod_irqdesc__228_331_irq_sysfs_init2, ptr @__ksymtab___irq_alloc_descs, ptr @__ksymtab___irq_set_lockdep_class, ptr @__ksymtab_generic_handle_domain_irq, ptr @__ksymtab_generic_handle_irq, ptr @__ksymtab_irq_free_descs, ptr @__ksymtab_irq_get_percpu_devid_partition, ptr @__ksymtab_nr_irqs, ptr @__setup_irq_affinity_setup, ptr @early_irq_init._entry, ptr @early_irq_init._entry_ptr, ptr @irq_sysfs_add._entry, ptr @irq_sysfs_add._entry_ptr, ptr @nr_irqs, ptr @irq_desc_tree, ptr @sparse_irq_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @allocated_irqs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @irq_kobj_base, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @alloc_desc.__key, ptr @.str.13, ptr @.str.14, ptr @irq_desc_lock_class, ptr @alloc_desc.__key.15, ptr @.str.16, ptr @irq_kobj_type, ptr @irq_groups, ptr @irq_group, ptr @irq_attrs, ptr @per_cpu_count_attr, ptr @chip_name_attr, ptr @hwirq_attr, ptr @type_attr, ptr @wakeup_attr, ptr @name_attr, ptr @actions_attr, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_irqs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_desc_tree to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparse_irq_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocated_irqs to i32), i32 1028, i32 1312, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_kobj_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_sysfs_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_desc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_desc_lock_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_desc.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_kobj_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_attrs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @per_cpu_count_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_name_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwirq_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @type_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeup_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @name_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @actions_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_affinity_setup(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @alloc_bootmem_cpumask_var(ptr noundef nonnull @irq_default_affinity) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @irq_default_affinity to i32))
  %0 = load ptr, ptr @irq_default_affinity, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @bitmap_parselist(ptr noundef %str, ptr noundef %0, i32 noundef %1) #12
  %2 = tail call i32 @llvm.read_register.i32(metadata !129) #12
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @irq_default_affinity to i32))
  %6 = load ptr, ptr @irq_default_affinity, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp.not.i.i.i = icmp ugt i32 %7, %5
  br i1 %cmp.not.i.i.i, label %entry.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_set_cpu.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !139

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %entry.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %5, ptr noundef %6) #12
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_sysfs_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @sparse_irq_lock, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kernel_kobj to i32))
  %0 = load ptr, ptr @kernel_kobj, align 4
  %call = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.6, ptr noundef %0) #12
  store ptr %call, ptr @irq_kobj_base, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef 0) #12
  %1 = load i32, ptr @nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp14 = icmp sgt i32 %1, 0
  br i1 %cmp14, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %irq.016 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %desc.015 = phi ptr [ %call.i13, %for.inc.for.body_crit_edge ], [ %call.i, %if.end.for.body_crit_edge ]
  %tobool2.not = icmp eq ptr %desc.015, null
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else:                                          ; preds = %for.body
  %2 = load ptr, ptr @irq_kobj_base, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.else.for.inc_crit_edge, label %if.then.i

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then.i:                                        ; preds = %if.else
  %kobj.i = getelementptr inbounds %struct.irq_desc, ptr %desc.015, i32 0, i32 31
  %call.i12 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %kobj.i, ptr noundef nonnull %2, ptr noundef nonnull @.str.7, i32 noundef %irq.016) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool1.not.i = icmp eq i32 %call.i12, 0
  br i1 %tobool1.not.i, label %if.then.i.for.inc_crit_edge, label %do.end.i

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %irq.016) #15
  br label %for.inc

for.inc:                                          ; preds = %do.end.i, %if.then.i.for.inc_crit_edge, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %irq.016, 1
  %call.i13 = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %inc) #12
  %3 = load i32, ptr @nr_irqs, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @sparse_irq_lock) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @irq_to_desc(i32 noundef %irq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %irq) #12
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_lock_sparse() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @sparse_irq_lock, i32 noundef 0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_unlock_sparse() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef nonnull @sparse_irq_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @early_irq_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @init_irq_default_affinity() #16
  %call = tail call i32 @arch_probe_nr_irqs() #12
  %0 = load i32, ptr @nr_irqs, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 16, i32 noundef %0, i32 noundef %call) #15
  %1 = load i32, ptr @nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8212, i32 %1)
  %cmp = icmp sgt i32 %1, 8212
  br i1 %cmp, label %do.end11, label %entry.if.end26_crit_edge, !prof !140

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 533, i32 noundef 9, ptr noundef null) #12
  store i32 8212, ptr @nr_irqs, align 4
  br label %if.end26

if.end26:                                         ; preds = %do.end11, %entry.if.end26_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8212, i32 %call)
  %cmp28 = icmp sgt i32 %call, 8212
  br i1 %cmp28, label %do.end44, label %if.end26.if.end50_crit_edge, !prof !140

if.end26.if.end50_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.end44:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 536, i32 noundef 9, ptr noundef null) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end26.if.end50_crit_edge
  %2 = tail call i32 @llvm.smin.i32(i32 %call, i32 8212)
  %3 = load i32, ptr @nr_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %3)
  %cmp61 = icmp sgt i32 %2, %3
  br i1 %cmp61, label %if.then62, label %if.end50.if.end63_crit_edge

if.end50.if.end63_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then62:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  store i32 %2, ptr @nr_irqs, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end50.if.end63_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6477 = icmp sgt i32 %call, 0
  br i1 %cmp6477, label %for.body.preheader, label %if.end63.for.end_crit_edge

if.end63.for.end_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.preheader:                               ; preds = %if.end63
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.078 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call65 = tail call fastcc ptr @alloc_desc(i32 noundef %i.078, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null)
  tail call void @_set_bit(i32 noundef %i.078, ptr noundef nonnull @allocated_irqs) #12
  %call.i = tail call i32 @radix_tree_insert(ptr noundef nonnull @irq_desc_tree, i32 noundef %i.078, ptr noundef %call65) #12
  %inc = add nuw nsw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end63.for.end_crit_edge
  %call66 = tail call i32 @arch_early_irq_init() #12
  ret i32 %call66
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_irq_default_affinity() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @irq_default_affinity to i32))
  %0 = load ptr, ptr @irq_default_affinity, align 4
  %cmp.i.not = icmp eq ptr %0, null
  br i1 %cmp.i.not, label %if.then, label %entry.cpumask_empty.exit_crit_edge

entry.cpumask_empty.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_empty.exit

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull @irq_default_affinity, i32 noundef 2048) #12
  br label %cpumask_empty.exit

cpumask_empty.exit:                               ; preds = %if.then, %entry.cpumask_empty.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @irq_default_affinity to i32))
  %2 = load ptr, ptr @irq_default_affinity, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %2, i32 noundef %1) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %1)
  %cmp4.i.i = icmp eq i32 %call.i.i, %1
  br i1 %cmp4.i.i, label %if.then3, label %cpumask_empty.exit.if.end4_crit_edge

cpumask_empty.exit.if.end4_crit_edge:             ; preds = %cpumask_empty.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %cpumask_empty.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @irq_default_affinity to i32))
  %3 = load ptr, ptr @irq_default_affinity, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i5 = add i32 %4, 31
  %5 = lshr i32 %sub.i.i5, 3
  %mul.i.i = and i32 %5, 536870908
  %6 = call ptr @memset(ptr %3, i32 255, i32 %mul.i.i)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %cpumask_empty.exit.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_probe_nr_irqs() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_desc(i32 noundef %irq, i32 noundef %node, i32 noundef %flags, ptr noundef readonly %affinity, ptr noundef %owner) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 512) #17
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #18
  %kstat_irqs = getelementptr inbounds %struct.irq_desc, ptr %call.i.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %kstat_irqs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %kstat_irqs, align 8
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.end.err_desc_crit_edge, label %if.end5

if.end.err_desc_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_desc

if.end5:                                          ; preds = %if.end
  %affinity.i = getelementptr inbounds %struct.irq_common_data, ptr %call.i.i.i, i32 0, i32 3
  %call.i = tail call zeroext i1 @zalloc_cpumask_var_node(ptr noundef %affinity.i, i32 noundef 3264, i32 noundef %node) #12
  br i1 %call.i, label %if.end.i, label %if.end5.err_kstat_crit_edge

if.end5.err_kstat_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_kstat

if.end.i:                                         ; preds = %if.end5
  %effective_affinity.i = getelementptr inbounds %struct.irq_common_data, ptr %call.i.i.i, i32 0, i32 4
  %call2.i = tail call zeroext i1 @zalloc_cpumask_var_node(ptr noundef %effective_affinity.i, i32 noundef 3264, i32 noundef %node) #12
  br i1 %call2.i, label %do.body, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %affinity.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %affinity.i, align 4
  tail call void @free_cpumask_var(ptr noundef %3) #12
  br label %err_kstat

do.body:                                          ; preds = %if.end.i
  %lock = getelementptr inbounds %struct.irq_desc, ptr %call.i.i.i, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @alloc_desc.__key, i16 noundef signext 2) #12
  %dep_map = getelementptr inbounds %struct.irq_desc, ptr %call.i.i.i, i32 0, i32 15, i32 4
  %wait_type_inner = getelementptr inbounds %struct.irq_desc, ptr %call.i.i.i, i32 0, i32 15, i32 4, i32 4
  %4 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @irq_desc_lock_class, i32 noundef 0, i8 noundef zeroext %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %request_mutex = getelementptr inbounds %struct.irq_desc, ptr %call.i.i.i, i32 0, i32 32
  tail call void @__mutex_init(ptr noundef %request_mutex, ptr noundef nonnull @.str.16, ptr noundef nonnull @alloc_desc.__key.15) #12
  %rcu = getelementptr inbounds %struct.irq_desc, ptr %call.i.i.i, i32 0, i32 30
  tail call void @init_rcu_head(ptr noundef %rcu) #12
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %call.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %handler_data.i, align 4
  %msi_desc.i = getelementptr inbounds %struct.irq_common_data, ptr %call.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %msi_desc.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %msi_desc.i, align 8
  %common.i = getelementptr inbounds %struct.irq_desc, ptr %call.i.i.i, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %common.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i.i, ptr %common.i, align 4
  %irq4.i = getelementptr inbounds %struct.irq_desc, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %irq4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %irq, ptr %irq4.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %call.i.i.i, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @no_irq_chip, ptr %chip.i, align 8
  %chip_data.i = getelementptr inbounds %struct.irq_desc, ptr %call.i.i.i, i32 0, i32 1, i32 7
  %11 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %chip_data.i, align 4
  %status_use_accessors.i.i = getelementptr inbounds %struct.irq_desc, ptr %call.i.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %status_use_accessors.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status_use_accessors.i.i, align 4
  %and1.i.i = and i32 %13, -2096912
  %or.i.i = or i32 %and1.i.i, 3072
  store i32 %or.i.i, ptr %status_use_accessors.i.i, align 4
  %14 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i.i.i, align 8
  %or.i3.i = or i32 %15, 196608
  store i32 %or.i3.i, ptr %call.i.i.i, align 8
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %call.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @handle_bad_irq, ptr %handle_irq.i, align 4
  %depth.i = getelementptr inbounds %struct.irq_desc, ptr %call.i.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %depth.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %depth.i, align 4
  %irq_count.i = getelementptr inbounds %struct.irq_desc, ptr %call.i.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %irq_count.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %irq_count.i, align 8
  %irqs_unhandled.i = getelementptr inbounds %struct.irq_desc, ptr %call.i.i.i, i32 0, i32 12
  %19 = ptrtoint ptr %irqs_unhandled.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %irqs_unhandled.i, align 32
  %tot_count.i = getelementptr inbounds %struct.irq_desc, ptr %call.i.i.i, i32 0, i32 9
  %20 = ptrtoint ptr %tot_count.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %tot_count.i, align 4
  %name.i = getelementptr inbounds %struct.irq_desc, ptr %call.i.i.i, i32 0, i32 35
  %21 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %name.i, align 4
  %owner9.i = getelementptr inbounds %struct.irq_desc, ptr %call.i.i.i, i32 0, i32 34
  %22 = ptrtoint ptr %owner9.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %owner, ptr %owner9.i, align 16
  %call4.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i, i32 %23)
  %cmp5.i = icmp ult i32 %call4.i, %23
  br i1 %cmp5.i, label %do.body.do.body.i_crit_edge, label %do.body.for.end.i_crit_edge

do.body.for.end.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

do.body.do.body.i_crit_edge:                      ; preds = %do.body
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.do.body.i_crit_edge
  %call6.i = phi i32 [ %call.i36, %do.body.i.do.body.i_crit_edge ], [ %call4.i, %do.body.do.body.i_crit_edge ]
  %24 = ptrtoint ptr %kstat_irqs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %kstat_irqs, align 8
  %26 = ptrtoint ptr %25 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call6.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %28, %26
  %29 = inttoptr i32 %add.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %29, align 4
  %call.i36 = tail call i32 @cpumask_next(i32 noundef %call6.i, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %31 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i36, %31
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.for.end.i_crit_edge

do.body.i.for.end.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

for.end.i:                                        ; preds = %do.body.i.for.end.i_crit_edge, %do.body.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ %23, %do.body.for.end.i_crit_edge ], [ %31, %do.body.i.for.end.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %affinity, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.end.i.desc_set_defaults.exit_crit_edge

for.end.i.desc_set_defaults.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %desc_set_defaults.exit

if.then.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @irq_default_affinity to i32))
  %32 = load ptr, ptr @irq_default_affinity, align 4
  br label %desc_set_defaults.exit

desc_set_defaults.exit:                           ; preds = %if.then.i.i, %for.end.i.desc_set_defaults.exit_crit_edge
  %affinity.addr.0.i.i = phi ptr [ %affinity, %for.end.i.desc_set_defaults.exit_crit_edge ], [ %32, %if.then.i.i ]
  %33 = ptrtoint ptr %affinity.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %affinity.i, align 4
  %sub.i.i.i.i = add i32 %.lcssa.i, 31
  %35 = lshr i32 %sub.i.i.i.i, 3
  %mul.i.i.i.i = and i32 %35, 536870908
  %36 = call ptr @memcpy(ptr %34, ptr %affinity.addr.0.i.i, i32 %mul.i.i.i.i)
  %37 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %common.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %or.i = or i32 %40, %flags
  store i32 %or.i, ptr %38, align 4
  %kobj = getelementptr inbounds %struct.irq_desc, ptr %call.i.i.i, i32 0, i32 31
  tail call void @kobject_init(ptr noundef %kobj, ptr noundef nonnull @irq_kobj_type) #12
  br label %cleanup

err_kstat:                                        ; preds = %if.then3.i, %if.end5.err_kstat_crit_edge
  %41 = ptrtoint ptr %kstat_irqs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %kstat_irqs, align 8
  tail call void @free_percpu(ptr noundef %42) #12
  br label %err_desc

err_desc:                                         ; preds = %err_kstat, %if.end.err_desc_crit_edge
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %err_desc, %desc_set_defaults.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %err_desc ], [ %call.i.i.i, %desc_set_defaults.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_early_irq_init() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @handle_irq_desc(ptr noundef %desc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %desc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !129) #12
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 3
  %4 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle_irq.i, align 4
  tail call void %5(ptr noundef nonnull %desc) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_handle_irq(i32 noundef %irq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %irq) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.handle_irq_desc.exit_crit_edge, label %if.end.i

entry.handle_irq_desc.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_irq_desc.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !129) #12
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %handle_irq.i.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %handle_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle_irq.i.i, align 4
  tail call void %5(ptr noundef nonnull %call.i) #12
  br label %handle_irq_desc.exit

handle_irq_desc.exit:                             ; preds = %if.end.i, %entry.handle_irq_desc.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %entry.handle_irq_desc.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_handle_domain_irq(ptr noundef %domain, i32 noundef %hwirq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !129) #12
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b41 = load i1, ptr @generic_handle_domain_irq.__already_done, align 1
  br i1 %.b41, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !139

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @generic_handle_domain_irq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 679, i32 noundef 9, ptr noundef null) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call.i = tail call ptr @__irq_resolve_mapping(ptr noundef %domain, i32 noundef %hwirq, ptr noundef null) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end29.handle_irq_desc.exit_crit_edge, label %if.end.i

if.end29.handle_irq_desc.exit_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_irq_desc.exit

if.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %4 = tail call i32 @llvm.read_register.i32(metadata !129) #12
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i, align 4
  %handle_irq.i.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %handle_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handle_irq.i.i, align 4
  tail call void %9(ptr noundef nonnull %call.i) #12
  br label %handle_irq_desc.exit

handle_irq_desc.exit:                             ; preds = %if.end.i, %if.end29.handle_irq_desc.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %if.end29.handle_irq_desc.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_handle_domain_nmi(ptr noundef %domain, i32 noundef %hwirq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !129) #12
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b41 = load i1, ptr @generic_handle_domain_nmi.__already_done, align 1
  br i1 %.b41, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !139

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @generic_handle_domain_nmi.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 697, i32 noundef 9, ptr noundef null) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call.i = tail call ptr @__irq_resolve_mapping(ptr noundef %domain, i32 noundef %hwirq, ptr noundef null) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end29.handle_irq_desc.exit_crit_edge, label %if.end.i

if.end29.handle_irq_desc.exit_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_irq_desc.exit

if.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %4 = tail call i32 @llvm.read_register.i32(metadata !129) #12
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i, align 4
  %handle_irq.i.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %handle_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handle_irq.i.i, align 4
  tail call void %9(ptr noundef nonnull %call.i) #12
  br label %handle_irq_desc.exit

handle_irq_desc.exit:                             ; preds = %if.end.i, %if.end29.handle_irq_desc.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %if.end29.handle_irq_desc.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_free_descs(i32 noundef %from, i32 noundef %cnt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nr_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %from)
  %cmp.not = icmp ule i32 %0, %from
  %add = add i32 %cnt, %from
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %0)
  %cmp1 = icmp ugt i32 %add, %0
  %or.cond = or i1 %cmp.not, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @sparse_irq_lock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %cmp211.not = icmp eq i32 %cnt, 0
  br i1 %cmp211.not, label %if.end.if.else11.i_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.else11.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else11.i

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %add3 = add i32 %i.012, %from
  tail call fastcc void @free_desc(i32 noundef %add3)
  %inc = add nuw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %cnt
  br i1 %exitcond.not, label %for.body.if.else11.i_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.else11.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else11.i

if.else11.i:                                      ; preds = %for.body.if.else11.i_crit_edge, %if.end.if.else11.i_crit_edge
  tail call void @__bitmap_clear(ptr noundef nonnull @allocated_irqs, i32 noundef %from, i32 noundef %cnt) #12
  tail call void @mutex_unlock(ptr noundef nonnull @sparse_irq_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else11.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_desc(i32 noundef %irq) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %irq) #12
  %debugfs_file.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 28
  %0 = ptrtoint ptr %debugfs_file.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_file.i, align 8
  tail call void @debugfs_remove(ptr noundef %1) #12
  %dev_name.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 29
  %2 = ptrtoint ptr %dev_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_name.i, align 4
  tail call void @kfree(ptr noundef %3) #12
  tail call void @unregister_irq_proc(i32 noundef %irq, ptr noundef %call.i) #12
  %4 = load ptr, ptr @irq_kobj_base, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.irq_sysfs_del.exit_crit_edge, label %if.then.i

entry.irq_sysfs_del.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %irq_sysfs_del.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %kobj.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 31
  tail call void @kobject_del(ptr noundef %kobj.i) #12
  br label %irq_sysfs_del.exit

irq_sysfs_del.exit:                               ; preds = %if.then.i, %entry.irq_sysfs_del.exit_crit_edge
  %call.i6 = tail call ptr @radix_tree_delete(ptr noundef nonnull @irq_desc_tree, i32 noundef %irq) #12
  %rcu = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 30
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @delayed_free_desc) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__irq_alloc_descs(i32 noundef %irq, i32 noundef %from, i32 noundef %cnt, i32 noundef %node, ptr noundef %owner, ptr noundef %affinity) #4 section ".ref.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %tobool.not = icmp eq i32 %cnt, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %irq)
  %cmp = icmp sgt i32 %irq, -1
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %from, i32 %irq)
  %cmp2 = icmp ugt i32 %from, %irq
  br i1 %cmp2, label %if.then1.cleanup_crit_edge, label %if.then1.if.end5_crit_edge

if.then1.if.end5_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @arch_dynirq_lower_bound(i32 noundef %from) #12
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then1.if.end5_crit_edge
  %from.addr.0 = phi i32 [ %call, %if.else ], [ %irq, %if.then1.if.end5_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @sparse_irq_lock, i32 noundef 0) #12
  %call.i = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef nonnull @allocated_irqs, i32 noundef 8212, i32 noundef %from.addr.0, i32 noundef %cnt, i32 noundef 0, i32 noundef 0) #12
  %cmp.not = xor i1 %cmp, true
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %irq)
  %cmp8.not = icmp eq i32 %call.i, %irq
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp8.not
  br i1 %or.cond, label %if.end10, label %if.end5.unlock_crit_edge

if.end5.unlock_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end10:                                         ; preds = %if.end5
  %add = add i32 %call.i, %cnt
  %0 = load i32, ptr @nr_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %0)
  %cmp11 = icmp ugt i32 %add, %0
  br i1 %cmp11, label %if.then12, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8212, i32 %add)
  %cmp.i = icmp ugt i32 %add, 8212
  br i1 %cmp.i, label %if.then12.unlock_crit_edge, label %irq_expand_nr_irqs.exit.thread

if.then12.unlock_crit_edge:                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

irq_expand_nr_irqs.exit.thread:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  store i32 %add, ptr @nr_irqs, align 4
  br label %if.end18

if.end18:                                         ; preds = %irq_expand_nr_irqs.exit.thread, %if.end10.if.end18_crit_edge
  %tobool.not.i.not = icmp eq ptr %affinity, null
  br i1 %tobool.not.i.not, label %if.end18.for.body5.i.preheader_crit_edge, label %if.end18.cpumask_empty.exit.i_crit_edge

if.end18.cpumask_empty.exit.i_crit_edge:          ; preds = %if.end18
  br label %cpumask_empty.exit.i

if.end18.for.body5.i.preheader_crit_edge:         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body5.i.preheader

cpumask_empty.exit.i:                             ; preds = %for.inc.i.cpumask_empty.exit.i_crit_edge, %if.end18.cpumask_empty.exit.i_crit_edge
  %i.073.i = phi i32 [ %inc.i, %for.inc.i.cpumask_empty.exit.i_crit_edge ], [ 0, %if.end18.cpumask_empty.exit.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %arrayidx.i = getelementptr %struct.irq_affinity_desc, ptr %affinity, i32 %i.073.i
  %call.i.i.i = tail call i32 @_find_first_bit_be(ptr noundef %arrayidx.i, i32 noundef %1) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %1)
  %cmp4.i.i.i = icmp eq i32 %call.i.i.i, %1
  br i1 %cmp4.i.i.i, label %cpumask_empty.exit.i.unlock_crit_edge, label %for.inc.i

cpumask_empty.exit.i.unlock_crit_edge:            ; preds = %cpumask_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

for.inc.i:                                        ; preds = %cpumask_empty.exit.i
  %inc.i = add nuw i32 %i.073.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %cnt
  br i1 %exitcond.not.i, label %for.inc.i.for.body5.i.preheader_crit_edge, label %for.inc.i.cpumask_empty.exit.i_crit_edge

for.inc.i.cpumask_empty.exit.i_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_empty.exit.i

for.inc.i.for.body5.i.preheader_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body5.i.preheader

for.body5.i.preheader:                            ; preds = %for.inc.i.for.body5.i.preheader_crit_edge, %if.end18.for.body5.i.preheader_crit_edge
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.inc23.i.for.body5.i_crit_edge, %for.body5.i.preheader
  %i.177.i = phi i32 [ %inc24.i, %for.inc23.i.for.body5.i_crit_edge ], [ 0, %for.body5.i.preheader ]
  %affinity.addr.076.i = phi ptr [ %affinity.addr.1.i, %for.inc23.i.for.body5.i_crit_edge ], [ %affinity, %for.body5.i.preheader ]
  %node.addr.075.i = phi i32 [ %node.addr.1.i, %for.inc23.i.for.body5.i_crit_edge ], [ %node, %for.body5.i.preheader ]
  %tobool7.not.i = icmp eq ptr %affinity.addr.076.i, null
  br i1 %tobool7.not.i, label %for.body5.i.if.end14.i_crit_edge, label %if.then8.i

for.body5.i.if.end14.i_crit_edge:                 ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.then8.i:                                       ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  %is_managed.i = getelementptr inbounds %struct.irq_affinity_desc, ptr %affinity.addr.076.i, i32 0, i32 1
  %2 = ptrtoint ptr %is_managed.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %is_managed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool9.not.i = icmp sgt i8 %bf.load.i, -1
  %spec.select.i = select i1 %tobool9.not.i, i32 0, i32 10485760
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull %affinity.addr.076.i, i32 noundef %3) #12
  %incdec.ptr.i = getelementptr %struct.irq_affinity_desc, ptr %affinity.addr.076.i, i32 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then8.i, %for.body5.i.if.end14.i_crit_edge
  %node.addr.1.i = phi i32 [ 0, %if.then8.i ], [ %node.addr.075.i, %for.body5.i.if.end14.i_crit_edge ]
  %affinity.addr.1.i = phi ptr [ %incdec.ptr.i, %if.then8.i ], [ null, %for.body5.i.if.end14.i_crit_edge ]
  %flags.1.i = phi i32 [ %spec.select.i, %if.then8.i ], [ 0, %for.body5.i.if.end14.i_crit_edge ]
  %add.i = add i32 %i.177.i, %call.i
  %call15.i = tail call fastcc ptr @alloc_desc(i32 noundef %add.i, i32 noundef %node.addr.1.i, i32 noundef %flags.1.i, ptr noundef %affinity.addr.076.i, ptr noundef %owner) #12
  %tobool16.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not.i, label %for.cond26.preheader.i, label %if.end18.i

for.cond26.preheader.i:                           ; preds = %if.end14.i
  %i.278.i = add i32 %i.177.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.278.i)
  %cmp2779.i = icmp sgt i32 %i.278.i, -1
  br i1 %cmp2779.i, label %for.cond26.preheader.i.for.body28.i_crit_edge, label %for.cond26.preheader.i.unlock_crit_edge

for.cond26.preheader.i.unlock_crit_edge:          ; preds = %for.cond26.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

for.cond26.preheader.i.for.body28.i_crit_edge:    ; preds = %for.cond26.preheader.i
  br label %for.body28.i

if.end18.i:                                       ; preds = %if.end14.i
  %call.i65.i = tail call i32 @radix_tree_insert(ptr noundef nonnull @irq_desc_tree, i32 noundef %add.i, ptr noundef nonnull %call15.i) #12
  %4 = load ptr, ptr @irq_kobj_base, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end18.i.for.inc23.i_crit_edge, label %if.then.i67.i

if.end18.i.for.inc23.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc23.i

if.then.i67.i:                                    ; preds = %if.end18.i
  %kobj.i.i = getelementptr inbounds %struct.irq_desc, ptr %call15.i, i32 0, i32 31
  %call.i66.i = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %kobj.i.i, ptr noundef nonnull %4, ptr noundef nonnull @.str.7, i32 noundef %add.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i)
  %tobool1.not.i.i = icmp eq i32 %call.i66.i, 0
  br i1 %tobool1.not.i.i, label %if.then.i67.i.for.inc23.i_crit_edge, label %do.end.i.i

if.then.i67.i.for.inc23.i_crit_edge:              ; preds = %if.then.i67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc23.i

do.end.i.i:                                       ; preds = %if.then.i67.i
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %add.i) #15
  br label %for.inc23.i

for.inc23.i:                                      ; preds = %do.end.i.i, %if.then.i67.i.for.inc23.i_crit_edge, %if.end18.i.for.inc23.i_crit_edge
  tail call void @irq_add_debugfs_entry(i32 noundef %add.i, ptr noundef nonnull %call15.i) #12
  %inc24.i = add nuw i32 %i.177.i, 1
  %exitcond83.not.i = icmp eq i32 %inc24.i, %cnt
  br i1 %exitcond83.not.i, label %if.else11.i.i, label %for.inc23.i.for.body5.i_crit_edge

for.inc23.i.for.body5.i_crit_edge:                ; preds = %for.inc23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body5.i

if.else11.i.i:                                    ; preds = %for.inc23.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__bitmap_set(ptr noundef nonnull @allocated_irqs, i32 noundef %call.i, i32 noundef %cnt) #12
  br label %unlock

for.body28.i:                                     ; preds = %for.body28.i.for.body28.i_crit_edge, %for.cond26.preheader.i.for.body28.i_crit_edge
  %i.280.i = phi i32 [ %i.2.i, %for.body28.i.for.body28.i_crit_edge ], [ %i.278.i, %for.cond26.preheader.i.for.body28.i_crit_edge ]
  %add29.i = add i32 %i.280.i, %call.i
  tail call fastcc void @free_desc(i32 noundef %add29.i) #12
  %i.2.i = add nsw i32 %i.280.i, -1
  %cmp27.i.not = icmp eq i32 %i.280.i, 0
  br i1 %cmp27.i.not, label %for.body28.i.unlock_crit_edge, label %for.body28.i.for.body28.i_crit_edge

for.body28.i.for.body28.i_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body28.i

for.body28.i.unlock_crit_edge:                    ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

unlock:                                           ; preds = %for.body28.i.unlock_crit_edge, %if.else11.i.i, %for.cond26.preheader.i.unlock_crit_edge, %cpumask_empty.exit.i.unlock_crit_edge, %if.then12.unlock_crit_edge, %if.end5.unlock_crit_edge
  %ret.0 = phi i32 [ -17, %if.end5.unlock_crit_edge ], [ -12, %if.then12.unlock_crit_edge ], [ %call.i, %if.else11.i.i ], [ -12, %for.cond26.preheader.i.unlock_crit_edge ], [ -12, %for.body28.i.unlock_crit_edge ], [ -22, %cpumask_empty.exit.i.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @sparse_irq_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_dynirq_lower_bound(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_get_next_irq(i32 noundef %offset) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nr_irqs, align 4
  %call = tail call i32 @_find_next_bit_be(ptr noundef nonnull @allocated_irqs, i32 noundef %0, i32 noundef %offset) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__irq_get_desc_lock(i32 noundef %irq, ptr nocapture noundef writeonly %flags, i1 noundef zeroext %bus, i32 noundef %check) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %irq) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  %and = and i32 %check, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.if.end13_crit_edge, label %if.then2

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then2:                                         ; preds = %if.then
  %and3 = and i32 %check, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %status_use_accessors.i26 = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %status_use_accessors.i26 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status_use_accessors.i26, align 4
  %and.i27 = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27)
  %tobool.i28.not = icmp eq i32 %and.i27, 0
  br i1 %tobool4.not, label %land.lhs.true9.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then2
  br i1 %tobool.i28.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true9.critedge:                          ; preds = %if.then2
  br i1 %tobool.i28.not, label %land.lhs.true9.critedge.if.end13_crit_edge, label %land.lhs.true9.critedge.cleanup_crit_edge

land.lhs.true9.critedge.cleanup_crit_edge:        ; preds = %land.lhs.true9.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true9.critedge.if.end13_crit_edge:       ; preds = %land.lhs.true9.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true9.critedge.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %if.then.if.end13_crit_edge
  br i1 %bus, label %if.then15, label %if.end13.do.body_crit_edge

if.end13.do.body_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then15:                                        ; preds = %if.end13
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  %irq_bus_lock.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %irq_bus_lock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_bus_lock.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then15.do.body_crit_edge, label %if.then.i, !prof !139

if.then15.do.body_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 1
  tail call void %5(ptr noundef %irq_data.i) #12
  br label %do.body

do.body:                                          ; preds = %if.then.i, %if.then15.do.body_crit_edge, %if.end13.do.body_crit_edge
  %lock = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 15
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call17, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %land.lhs.true9.critedge.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %land.lhs.true.cleanup_crit_edge ], [ null, %land.lhs.true9.critedge.cleanup_crit_edge ], [ %call.i, %do.body ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__irq_put_desc_unlock(ptr noundef %desc, i32 noundef %flags, i1 noundef zeroext %bus) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags) #12
  br i1 %bus, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  %irq_bus_sync_unlock.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %irq_bus_sync_unlock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_bus_sync_unlock.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i, !prof !139

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %3(ptr noundef %irq_data.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_set_percpu_devid_partition(i32 noundef %irq, ptr noundef %affinity) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %irq) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %percpu_enabled = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 16
  %0 = ptrtoint ptr %percpu_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %percpu_enabled, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4) #17
  %3 = ptrtoint ptr %percpu_enabled to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %percpu_enabled, align 8
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end3.cleanup_crit_edge, label %if.end9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %tobool10.not = icmp eq ptr %affinity, null
  %spec.select = select i1 %tobool10.not, ptr @__cpu_possible_mask, ptr %affinity
  %4 = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 17
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select, ptr %4, align 4
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 202240) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_set_percpu_devid(i32 noundef %irq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %irq) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.irq_set_percpu_devid_partition.exit_crit_edge, label %if.end.i

entry.irq_set_percpu_devid_partition.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %irq_set_percpu_devid_partition.exit

if.end.i:                                         ; preds = %entry
  %percpu_enabled.i = getelementptr inbounds %struct.irq_desc, ptr %call.i.i, i32 0, i32 16
  %0 = ptrtoint ptr %percpu_enabled.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %percpu_enabled.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.irq_set_percpu_devid_partition.exit_crit_edge

if.end.i.irq_set_percpu_devid_partition.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %irq_set_percpu_devid_partition.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4) #17
  %3 = ptrtoint ptr %percpu_enabled.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i, ptr %percpu_enabled.i, align 8
  %tobool7.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not.i, label %if.end3.i.irq_set_percpu_devid_partition.exit_crit_edge, label %if.end9.i

if.end3.i.irq_set_percpu_devid_partition.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %irq_set_percpu_devid_partition.exit

if.end9.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = getelementptr inbounds %struct.irq_desc, ptr %call.i.i, i32 0, i32 17
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @__cpu_possible_mask, ptr %4, align 4
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 202240) #12
  br label %irq_set_percpu_devid_partition.exit

irq_set_percpu_devid_partition.exit:              ; preds = %if.end9.i, %if.end3.i.irq_set_percpu_devid_partition.exit_crit_edge, %if.end.i.irq_set_percpu_devid_partition.exit_crit_edge, %entry.irq_set_percpu_devid_partition.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end9.i ], [ -22, %entry.irq_set_percpu_devid_partition.exit_crit_edge ], [ -22, %if.end.i.irq_set_percpu_devid_partition.exit_crit_edge ], [ -12, %if.end3.i.irq_set_percpu_devid_partition.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_get_percpu_devid_partition(i32 noundef %irq, ptr noundef writeonly %affinity) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %irq) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %percpu_enabled = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 16
  %0 = ptrtoint ptr %percpu_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %percpu_enabled, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool2.not = icmp eq ptr %affinity, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %percpu_affinity = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 17
  %2 = ptrtoint ptr %percpu_affinity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %percpu_affinity, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %4, 31
  %5 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %5, 536870908
  %6 = call ptr @memcpy(ptr %affinity, ptr %3, i32 %mul.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kstat_incr_irq_this_cpu(i32 noundef %irq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %irq) #12
  %kstat_irqs.i.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %kstat_irqs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kstat_irqs.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !129) #12
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %8, %2
  %9 = inttoptr i32 %add.i.i to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add7.i.i = add i32 %11, 1
  store i32 %add7.i.i, ptr %9, align 4
  %12 = load i32, ptr %cpu.i.i, align 4
  %arrayidx23.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx23.i.i, align 4
  %add24.i.i = add i32 %14, ptrtoint (ptr @kstat to i32)
  %15 = inttoptr i32 %add24.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add25.i.i = add i32 %17, 1
  store i32 %add25.i.i, ptr %15, align 4
  %tot_count.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 9
  %18 = ptrtoint ptr %tot_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tot_count.i, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %tot_count.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kstat_irqs_cpu(i32 noundef %irq, i32 noundef %cpu) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %irq) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %land.lhs.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

land.lhs.true:                                    ; preds = %entry
  %kstat_irqs = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %kstat_irqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kstat_irqs, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.cond.end_crit_edge, label %do.body

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %1 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %4, %2
  %5 = inttoptr i32 %add to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  br label %cond.end

cond.end:                                         ; preds = %do.body, %land.lhs.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi i32 [ %7, %do.body ], [ 0, %land.lhs.true.cond.end_crit_edge ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kstat_irqs_usr(i32 noundef %irq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !129) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 696, ptr noundef nonnull @.str.37) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call.i.i = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %irq) #12
  %tobool.not.i1 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i1, label %rcu_read_lock.exit.kstat_irqs.exit_crit_edge, label %lor.lhs.false.i

rcu_read_lock.exit.kstat_irqs.exit_crit_edge:     ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %kstat_irqs.exit

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit
  %kstat_irqs.i = getelementptr inbounds %struct.irq_desc, ptr %call.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %kstat_irqs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kstat_irqs.i, align 8
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.kstat_irqs.exit_crit_edge, label %if.end.i

lor.lhs.false.i.kstat_irqs.exit_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kstat_irqs.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %status_use_accessors.i.i = getelementptr inbounds %struct.irq_desc, ptr %call.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %status_use_accessors.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status_use_accessors.i.i, align 4
  %8 = and i32 %7, 131584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %.not.i = icmp eq i32 %8, 0
  br i1 %.not.i, label %land.lhs.true4.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

land.lhs.true4.i:                                 ; preds = %if.end.i
  %core_internal_state__do_not_mess_with_it.i.i = getelementptr inbounds %struct.irq_desc, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %core_internal_state__do_not_mess_with_it.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %core_internal_state__do_not_mess_with_it.i.i, align 8
  %and.i31.i = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.i32.not.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.i32.not.i, label %if.then6.i, label %land.lhs.true4.i.if.end8.i_crit_edge

land.lhs.true4.i.if.end8.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  %tot_count.i = getelementptr inbounds %struct.irq_desc, ptr %call.i.i, i32 0, i32 9
  %11 = ptrtoint ptr %tot_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tot_count.i, align 4
  br label %kstat_irqs.exit

if.end8.i:                                        ; preds = %land.lhs.true4.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %call933.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call933.i, i32 %13)
  %cmp34.i = icmp ult i32 %call933.i, %13
  br i1 %cmp34.i, label %for.body.lr.ph.i, label %if.end8.i.kstat_irqs.exit_crit_edge

if.end8.i.kstat_irqs.exit_crit_edge:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kstat_irqs.exit

for.body.lr.ph.i:                                 ; preds = %if.end8.i
  %14 = ptrtoint ptr %5 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call936.i = phi i32 [ %call933.i, %for.body.lr.ph.i ], [ %call9.i, %for.body.i.for.body.i_crit_edge ]
  %sum.035.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add16.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call936.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %16, %14
  %17 = inttoptr i32 %add.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add16.i = add i32 %19, %sum.035.i
  %call9.i = tail call i32 @cpumask_next(i32 noundef %call936.i, ptr noundef nonnull @__cpu_possible_mask) #19
  %cmp.i = icmp ult i32 %call9.i, %13
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.kstat_irqs.exit_crit_edge

for.body.i.kstat_irqs.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kstat_irqs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

kstat_irqs.exit:                                  ; preds = %for.body.i.kstat_irqs.exit_crit_edge, %if.end8.i.kstat_irqs.exit_crit_edge, %if.then6.i, %lor.lhs.false.i.kstat_irqs.exit_crit_edge, %rcu_read_lock.exit.kstat_irqs.exit_crit_edge
  %retval.0.i = phi i32 [ %12, %if.then6.i ], [ 0, %lor.lhs.false.i.kstat_irqs.exit_crit_edge ], [ 0, %rcu_read_lock.exit.kstat_irqs.exit_crit_edge ], [ 0, %if.end8.i.kstat_irqs.exit_crit_edge ], [ %add16.i, %for.body.i.kstat_irqs.exit_crit_edge ]
  %call.i2 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i2, label %kstat_irqs.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

kstat_irqs.exit.rcu_read_unlock.exit_crit_edge:   ; preds = %kstat_irqs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %kstat_irqs.exit
  %call1.i3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 724, ptr noundef nonnull @.str.38) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %kstat_irqs.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !142
  %20 = tail call i32 @llvm.read_register.i32(metadata !129) #12
  %and.i.i.i.i.i9 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__irq_set_lockdep_class(i32 noundef %irq, ptr noundef %lock_class, ptr noundef %request_class) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef nonnull @irq_desc_tree, i32 noundef %irq) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dep_map = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 15, i32 4
  %wait_type_inner = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 15, i32 4, i32 4
  %0 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.3, ptr noundef %lock_class, i32 noundef 0, i8 noundef zeroext %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %dep_map5 = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 32, i32 5
  %wait_type_inner8 = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 32, i32 5, i32 4
  %2 = ptrtoint ptr %wait_type_inner8 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wait_type_inner8, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map5, ptr noundef nonnull @.str.4, ptr noundef %request_class, i32 noundef 0, i8 noundef zeroext %3, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @alloc_bootmem_cpumask_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parselist(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_rcu_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irq_kobj_release(ptr noundef %kobj) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -264
  %affinity.i = getelementptr i8, ptr %kobj, i32 -252
  %0 = ptrtoint ptr %affinity.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %affinity.i, align 4
  tail call void @free_cpumask_var(ptr noundef %1) #12
  %effective_affinity.i = getelementptr i8, ptr %kobj, i32 -248
  %2 = ptrtoint ptr %effective_affinity.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %effective_affinity.i, align 16
  tail call void @free_cpumask_var(ptr noundef %3) #12
  %kstat_irqs = getelementptr i8, ptr %kobj, i32 -208
  %4 = ptrtoint ptr %kstat_irqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kstat_irqs, align 8
  tail call void @free_percpu(ptr noundef %5) #12
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @per_cpu_count_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call17 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call17, i32 %0)
  %cmp18 = icmp ult i32 %call17, %0
  br i1 %cmp18, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %kstat_irqs.i = getelementptr i8, ptr %kobj, i32 -208
  %1 = ptrtoint ptr %kstat_irqs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %kstat_irqs.i, align 8
  %tobool.not.i.peel = icmp eq ptr %2, null
  br i1 %tobool.not.i.peel, label %for.body.lr.ph.irq_desc_kstat_cpu.exit.peel_crit_edge, label %do.body.i.peel

for.body.lr.ph.irq_desc_kstat_cpu.exit.peel_crit_edge: ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %irq_desc_kstat_cpu.exit.peel

do.body.i.peel:                                   ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %2 to i32
  %arrayidx.i.peel = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call17
  %4 = ptrtoint ptr %arrayidx.i.peel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.peel, align 4
  %add.i.peel = add i32 %5, %3
  %6 = inttoptr i32 %add.i.peel to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  br label %irq_desc_kstat_cpu.exit.peel

irq_desc_kstat_cpu.exit.peel:                     ; preds = %do.body.i.peel, %for.body.lr.ph.irq_desc_kstat_cpu.exit.peel_crit_edge
  %cond.i.peel = phi i32 [ %8, %do.body.i.peel ], [ 0, %for.body.lr.ph.irq_desc_kstat_cpu.exit.peel_crit_edge ]
  %call3.peel = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef %cond.i.peel) #12
  %call.peel = tail call i32 @cpumask_next(i32 noundef %call17, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.peel, i32 %9)
  %cmp.peel = icmp ult i32 %call.peel, %9
  br i1 %cmp.peel, label %irq_desc_kstat_cpu.exit.peel.for.body_crit_edge, label %irq_desc_kstat_cpu.exit.peel.for.end_crit_edge

irq_desc_kstat_cpu.exit.peel.for.end_crit_edge:   ; preds = %irq_desc_kstat_cpu.exit.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

irq_desc_kstat_cpu.exit.peel.for.body_crit_edge:  ; preds = %irq_desc_kstat_cpu.exit.peel
  br label %for.body

for.body:                                         ; preds = %irq_desc_kstat_cpu.exit.for.body_crit_edge, %irq_desc_kstat_cpu.exit.peel.for.body_crit_edge
  %call21 = phi i32 [ %call, %irq_desc_kstat_cpu.exit.for.body_crit_edge ], [ %call.peel, %irq_desc_kstat_cpu.exit.peel.for.body_crit_edge ]
  %ret.019 = phi i32 [ %add, %irq_desc_kstat_cpu.exit.for.body_crit_edge ], [ %call3.peel, %irq_desc_kstat_cpu.exit.peel.for.body_crit_edge ]
  %10 = ptrtoint ptr %kstat_irqs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kstat_irqs.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %for.body.irq_desc_kstat_cpu.exit_crit_edge, label %do.body.i

for.body.irq_desc_kstat_cpu.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %irq_desc_kstat_cpu.exit

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %11 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call21
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %14, %12
  %15 = inttoptr i32 %add.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  br label %irq_desc_kstat_cpu.exit

irq_desc_kstat_cpu.exit:                          ; preds = %do.body.i, %for.body.irq_desc_kstat_cpu.exit_crit_edge
  %cond.i = phi i32 [ %17, %do.body.i ], [ 0, %for.body.irq_desc_kstat_cpu.exit_crit_edge ]
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %ret.019
  %sub = sub i32 4096, %ret.019
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %cond.i) #12
  %add = add i32 %call3, %ret.019
  %call = tail call i32 @cpumask_next(i32 noundef %call21, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %18
  br i1 %cmp, label %irq_desc_kstat_cpu.exit.for.body_crit_edge, label %irq_desc_kstat_cpu.exit.for.end_crit_edge, !llvm.loop !143

irq_desc_kstat_cpu.exit.for.end_crit_edge:        ; preds = %irq_desc_kstat_cpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

irq_desc_kstat_cpu.exit.for.body_crit_edge:       ; preds = %irq_desc_kstat_cpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %irq_desc_kstat_cpu.exit.for.end_crit_edge, %irq_desc_kstat_cpu.exit.peel.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call3.peel, %irq_desc_kstat_cpu.exit.peel.for.end_crit_edge ], [ %add, %irq_desc_kstat_cpu.exit.for.end_crit_edge ]
  %add.ptr4 = getelementptr i8, ptr %buf, i32 %ret.0.lcssa
  %sub5 = sub i32 4096, %ret.0.lcssa
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr4, i32 noundef %sub5, ptr noundef nonnull @.str.21) #12
  %add7 = add i32 %call6, %ret.0.lcssa
  ret i32 %add7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chip_name_show(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %kobj, i32 -156
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %chip = getelementptr i8, ptr %kobj, i32 -224
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.23, ptr noundef nonnull %3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwirq_show(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %kobj, i32 -156
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %domain = getelementptr i8, ptr %kobj, i32 -220
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %hwirq = getelementptr i8, ptr %kobj, i32 -232
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @type_show(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %kobj, i32 -156
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %common.i = getelementptr i8, ptr %kobj, i32 -228
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %cond = select i1 %tobool.i.not, ptr @.str.28, ptr @.str.27
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wakeup_show(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %kobj, i32 -156
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %common.i = getelementptr i8, ptr %kobj, i32 -228
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %cond = select i1 %tobool.i.not, ptr @.str.31, ptr @.str.30
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %kobj, i32 -156
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %name = getelementptr i8, ptr %kobj, i32 236
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.23, ptr noundef nonnull %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @actions_show(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %kobj, i32 -156
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %action1 = getelementptr i8, ptr %kobj, i32 -200
  %0 = ptrtoint ptr %action1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %action.020 = load ptr, ptr %action1, align 4
  %cmp.not21 = icmp eq ptr %action.020, null
  br i1 %cmp.not21, label %for.end.thread, label %for.body.preheader

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br label %if.end

for.body.preheader:                               ; preds = %entry
  %name.peel = getelementptr inbounds %struct.irqaction, ptr %action.020, i32 0, i32 11
  %1 = ptrtoint ptr %name.peel to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name.peel, align 4
  %call.peel = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.18, ptr noundef %2) #12
  %next.peel = getelementptr inbounds %struct.irqaction, ptr %action.020, i32 0, i32 3
  %3 = ptrtoint ptr %next.peel to i32
  call void @__asan_load4_noabort(i32 %3)
  %action.0.peel = load ptr, ptr %next.peel, align 4
  %cmp.not.peel = icmp eq ptr %action.0.peel, null
  br i1 %cmp.not.peel, label %for.body.preheader.for.end_crit_edge, label %for.body.preheader.for.body_crit_edge

for.body.preheader.for.body_crit_edge:            ; preds = %for.body.preheader
  br label %for.body

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader.for.body_crit_edge
  %action.024 = phi ptr [ %action.0, %for.body.for.body_crit_edge ], [ %action.0.peel, %for.body.preheader.for.body_crit_edge ]
  %ret.022 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ %call.peel, %for.body.preheader.for.body_crit_edge ]
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %ret.022
  %sub = sub i32 4096, %ret.022
  %name = getelementptr inbounds %struct.irqaction, ptr %action.024, i32 0, i32 11
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.20, ptr noundef %5) #12
  %add = add i32 %call, %ret.022
  %next = getelementptr inbounds %struct.irqaction, ptr %action.024, i32 0, i32 3
  %6 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %6)
  %action.0 = load ptr, ptr %next, align 4
  %cmp.not = icmp eq ptr %action.0, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge, !llvm.loop !145

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ %call.peel, %for.body.preheader.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa)
  %tobool.not = icmp eq i32 %ret.0.lcssa, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr4 = getelementptr i8, ptr %buf, i32 %ret.0.lcssa
  %sub5 = sub i32 4096, %ret.0.lcssa
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr4, i32 noundef %sub5, ptr noundef nonnull @.str.21) #12
  %add7 = add i32 %call6, %ret.0.lcssa
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge, %for.end.thread
  %ret.1 = phi i32 [ %add7, %if.then ], [ 0, %for.end.if.end_crit_edge ], [ 0, %for.end.thread ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_irq_proc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delayed_free_desc(ptr noundef %rhp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %kobj = getelementptr i8, ptr %rhp, i32 8
  tail call void @kobject_put(ptr noundef %kobj) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_add_debugfs_entry(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { cold }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !41, !42, !44, !46, !48, !50, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !65, !67, !68, !70, !72, !74, !75, !77, !79, !80, !82, !84, !86, !88, !90, !91, !93, !95, !96, !98, !100, !101, !103, !105, !107, !108, !110, !112, !114, !115, !117, !118, !120, !122, !124, !125, !126, !128}
!llvm.named.register.sp = !{!129}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @__setup_irq_affinity_setup, !1, !"__setup_irq_affinity_setup", i1 false, i1 false}
!1 = !{!"../kernel/irq/irqdesc.c", i32 39, i32 1}
!2 = !{ptr @nr_irqs, !3, !"nr_irqs", i1 false, i1 false}
!3 = !{!"../kernel/irq/irqdesc.c", i32 130, i32 5}
!4 = !{ptr @__ksymtab_nr_irqs, !5, !"__ksymtab_nr_irqs", i1 false, i1 false}
!5 = !{!"../kernel/irq/irqdesc.c", i32 131, i32 1}
!6 = !{ptr @__initcall__kmod_irqdesc__228_331_irq_sysfs_init2, !7, !"__initcall__kmod_irqdesc__228_331_irq_sysfs_init2", i1 false, i1 false}
!7 = !{!"../kernel/irq/irqdesc.c", i32 331, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/irq/irqdesc.c", i32 530, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @early_irq_init._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @early_irq_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../kernel/irq/irqdesc.c", i32 643, i32 6}
!16 = !{ptr @__ksymtab_generic_handle_irq, !17, !"__ksymtab_generic_handle_irq", i1 false, i1 false}
!17 = !{!"../kernel/irq/irqdesc.c", i32 663, i32 1}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../kernel/irq/irqdesc.c", i32 679, i32 2}
!20 = !{ptr @__ksymtab_generic_handle_domain_irq, !21, !"__ksymtab_generic_handle_domain_irq", i1 false, i1 false}
!21 = !{!"../kernel/irq/irqdesc.c", i32 682, i32 1}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../kernel/irq/irqdesc.c", i32 697, i32 2}
!24 = !{ptr @__ksymtab_irq_free_descs, !25, !"__ksymtab_irq_free_descs", i1 false, i1 false}
!25 = !{!"../kernel/irq/irqdesc.c", i32 723, i32 1}
!26 = !{ptr @__ksymtab___irq_alloc_descs, !27, !"__ksymtab___irq_alloc_descs", i1 false, i1 false}
!27 = !{!"../kernel/irq/irqdesc.c", i32 778, i32 1}
!28 = !{ptr @__ksymtab_irq_get_percpu_devid_partition, !29, !"__ksymtab_irq_get_percpu_devid_partition", i1 false, i1 false}
!29 = !{!"../kernel/irq/irqdesc.c", i32 865, i32 1}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/irq/irqdesc.c", i32 939, i32 3}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/irq/irqdesc.c", i32 940, i32 3}
!34 = !{ptr @__ksymtab___irq_set_lockdep_class, !35, !"__ksymtab___irq_set_lockdep_class", i1 false, i1 false}
!35 = !{!"../kernel/irq/irqdesc.c", i32 943, i32 1}
!36 = !{ptr @allocated_irqs, !37, !"allocated_irqs", i1 false, i1 false}
!37 = !{!"../kernel/irq/irqdesc.c", i32 134, i32 8}
!38 = !{ptr @__setup_str_irq_affinity_setup, !1, !"__setup_str_irq_affinity_setup", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!41 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../kernel/irq/irqdesc.c", i32 318, i32 41}
!44 = !{ptr @irq_kobj_base, !45, !"irq_kobj_base", i1 false, i1 false}
!45 = !{!"../kernel/irq/irqdesc.c", i32 141, i32 24}
!46 = !{ptr @.str.7, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../kernel/irq/irqdesc.c", i32 293, i32 47}
!48 = !{ptr @.str.8, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../kernel/irq/irqdesc.c", i32 294, i32 4}
!50 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @irq_sysfs_add._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @irq_sysfs_add._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.10, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../kernel/irq/irqdesc.c", i32 344, i32 8}
!55 = !{ptr @irq_desc_tree, !54, !"irq_desc_tree", i1 false, i1 false}
!56 = !{ptr @.str.11, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../kernel/irq/irqdesc.c", i32 133, i32 8}
!58 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @sparse_irq_lock, !57, !"sparse_irq_lock", i1 false, i1 false}
!60 = !{ptr @alloc_desc.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../kernel/irq/irqdesc.c", i32 406, i32 2}
!62 = !{ptr @.str.13, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.14, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../kernel/irq/irqdesc.c", i32 407, i32 2}
!65 = !{ptr @alloc_desc.__key.15, !66, !"__key", i1 false, i1 false}
!66 = !{!"../kernel/irq/irqdesc.c", i32 408, i32 2}
!67 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @irq_desc_lock_class, !69, !"irq_desc_lock_class", i1 false, i1 false}
!69 = !{!"../kernel/irq/irqdesc.c", i32 25, i32 30}
!70 = !{ptr @irq_kobj_type, !71, !"irq_kobj_type", i1 false, i1 false}
!71 = !{!"../kernel/irq/irqdesc.c", i32 280, i32 25}
!72 = !{ptr @irq_groups, !73, !"irq_groups", i1 false, i1 false}
!73 = !{!"../kernel/irq/irqdesc.c", i32 278, i32 1}
!74 = !{ptr @irq_group, !73, !"irq_group", i1 false, i1 false}
!75 = !{ptr @irq_attrs, !76, !"irq_attrs", i1 false, i1 false}
!76 = !{!"../kernel/irq/irqdesc.c", i32 268, i32 26}
!77 = !{ptr @.str.17, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../kernel/irq/irqdesc.c", i32 164, i32 1}
!79 = !{ptr @per_cpu_count_attr, !78, !"per_cpu_count_attr", i1 false, i1 false}
!80 = !{ptr @.str.18, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../kernel/irq/irqdesc.c", i32 151, i32 12}
!82 = !{ptr @.str.19, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../kernel/irq/irqdesc.c", i32 157, i32 48}
!84 = !{ptr @.str.20, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../kernel/irq/irqdesc.c", i32 158, i32 7}
!86 = !{ptr @.str.21, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../kernel/irq/irqdesc.c", i32 161, i32 47}
!88 = !{ptr @.str.22, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../kernel/irq/irqdesc.c", i32 181, i32 1}
!90 = !{ptr @chip_name_attr, !89, !"chip_name_attr", i1 false, i1 false}
!91 = !{ptr @.str.23, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../kernel/irq/irqdesc.c", i32 174, i32 35}
!93 = !{ptr @.str.24, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../kernel/irq/irqdesc.c", i32 196, i32 1}
!95 = !{ptr @hwirq_attr, !94, !"hwirq_attr", i1 false, i1 false}
!96 = !{ptr @.str.25, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../kernel/irq/irqdesc.c", i32 191, i32 22}
!98 = !{ptr @.str.26, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../kernel/irq/irqdesc.c", i32 212, i32 1}
!100 = !{ptr @type_attr, !99, !"type_attr", i1 false, i1 false}
!101 = !{ptr @.str.27, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../kernel/irq/irqdesc.c", i32 206, i32 47}
!103 = !{ptr @.str.28, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../kernel/irq/irqdesc.c", i32 206, i32 57}
!105 = !{ptr @.str.29, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../kernel/irq/irqdesc.c", i32 228, i32 1}
!107 = !{ptr @wakeup_attr, !106, !"wakeup_attr", i1 false, i1 false}
!108 = !{ptr @.str.30, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../kernel/irq/irqdesc.c", i32 222, i32 47}
!110 = !{ptr @.str.31, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../kernel/irq/irqdesc.c", i32 222, i32 59}
!112 = !{ptr @.str.32, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../kernel/irq/irqdesc.c", i32 243, i32 1}
!114 = !{ptr @name_attr, !113, !"name_attr", i1 false, i1 false}
!115 = !{ptr @.str.33, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../kernel/irq/irqdesc.c", i32 266, i32 1}
!117 = !{ptr @actions_attr, !116, !"actions_attr", i1 false, i1 false}
!118 = !{ptr @.str.34, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../kernel/irq/irqdesc.c", i32 255, i32 48}
!120 = distinct !{null, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../kernel/irq/internals.h", i32 252, i32 2}
!122 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!123 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!124 = !{ptr @.str.36, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.37, !123, !"<string literal>", i1 false, i1 false}
!126 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!127 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!128 = !{ptr @.str.38, !127, !"<string literal>", i1 false, i1 false}
!129 = !{!"sp"}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{!"branch_weights", i32 2000, i32 1}
!140 = !{!"branch_weights", i32 1, i32 2000}
!141 = !{i64 2149950670}
!142 = !{i64 2149950936}
!143 = distinct !{!143, !144}
!144 = !{!"llvm.loop.peeled.count", i32 1}
!145 = distinct !{!145, !144}
