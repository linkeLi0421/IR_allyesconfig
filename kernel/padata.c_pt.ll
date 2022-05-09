; ModuleID = '/llk/IR_all_yes/kernel/padata.c_pt.bc'
source_filename = "../kernel/padata.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+padata_do_parallel\22, \22a\22\09"
module asm "\09.weak\09__crc_padata_do_parallel\09\09\09\09"
module asm "\09.long\09__crc_padata_do_parallel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_padata_do_parallel:\09\09\09\09\09"
module asm "\09.asciz \09\22padata_do_parallel\22\09\09\09\09\09"
module asm "__kstrtabns_padata_do_parallel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+padata_do_serial\22, \22a\22\09"
module asm "\09.weak\09__crc_padata_do_serial\09\09\09\09"
module asm "\09.long\09__crc_padata_do_serial\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_padata_do_serial:\09\09\09\09\09"
module asm "\09.asciz \09\22padata_do_serial\22\09\09\09\09\09"
module asm "__kstrtabns_padata_do_serial:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+padata_set_cpumask\22, \22a\22\09"
module asm "\09.weak\09__crc_padata_set_cpumask\09\09\09\09"
module asm "\09.long\09__crc_padata_set_cpumask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_padata_set_cpumask:\09\09\09\09\09"
module asm "\09.asciz \09\22padata_set_cpumask\22\09\09\09\09\09"
module asm "__kstrtabns_padata_set_cpumask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+padata_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_padata_alloc\09\09\09\09"
module asm "\09.long\09__crc_padata_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_padata_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22padata_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_padata_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+padata_free\22, \22a\22\09"
module asm "\09.weak\09__crc_padata_free\09\09\09\09"
module asm "\09.long\09__crc_padata_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_padata_free:\09\09\09\09\09"
module asm "\09.asciz \09\22padata_free\22\09\09\09\09\09"
module asm "__kstrtabns_padata_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+padata_alloc_shell\22, \22a\22\09"
module asm "\09.weak\09__crc_padata_alloc_shell\09\09\09\09"
module asm "\09.long\09__crc_padata_alloc_shell\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_padata_alloc_shell:\09\09\09\09\09"
module asm "\09.asciz \09\22padata_alloc_shell\22\09\09\09\09\09"
module asm "__kstrtabns_padata_alloc_shell:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+padata_free_shell\22, \22a\22\09"
module asm "\09.weak\09__crc_padata_free_shell\09\09\09\09"
module asm "\09.long\09__crc_padata_free_shell\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_padata_free_shell:\09\09\09\09\09"
module asm "\09.asciz \09\22padata_free_shell\22\09\09\09\09\09"
module asm "__kstrtabns_padata_free_shell:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.padata_sysfs_entry = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.padata_shell = type { ptr, ptr, ptr, %struct.list_head }
%struct.padata_instance = type { %struct.hlist_node, %struct.hlist_node, ptr, ptr, %struct.list_head, %struct.padata_cpumask, %struct.kobject, %struct.mutex, i8 }
%struct.padata_cpumask = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.parallel_data = type { ptr, ptr, ptr, %struct.refcount_struct, i32, i32, i32, %struct.padata_cpumask, %struct.work_struct, [48 x i8], %struct.spinlock, [84 x i8] }
%struct.padata_priv = type { %struct.list_head, ptr, i32, i32, i32, ptr, ptr }
%struct.padata_work = type { %struct.work_struct, %struct.list_head, ptr }
%struct.padata_list = type { %struct.list_head, %struct.spinlock }
%struct.padata_serial_queue = type { %struct.padata_list, %struct.work_struct, ptr }
%struct.padata_mt_job_state = type { %struct.spinlock, %struct.completion, ptr, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.padata_mt_job = type { ptr, ptr, i32, i32, i32, i32, i32 }
%struct.workqueue_attrs = type { i32, ptr, i8 }

@padata_do_parallel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kernel/padata.c\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@padata_works_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_padata_do_parallel = external dso_local constant [0 x i8], align 1
@__kstrtabns_padata_do_parallel = external dso_local constant [0 x i8], align 1
@__ksymtab_padata_do_parallel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @padata_do_parallel to i32), ptr @__kstrtab_padata_do_parallel, ptr @__kstrtabns_padata_do_parallel }, section "___ksymtab+padata_do_parallel", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_padata_do_serial = external dso_local constant [0 x i8], align 1
@__kstrtabns_padata_do_serial = external dso_local constant [0 x i8], align 1
@__ksymtab_padata_do_serial = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @padata_do_serial to i32), ptr @__kstrtab_padata_do_serial, ptr @__kstrtabns_padata_do_serial }, section "___ksymtab+padata_do_serial", align 4
@padata_do_multithreaded.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&ps.lock\00", [23 x i8] zeroinitializer }, align 32
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_padata_set_cpumask = external dso_local constant [0 x i8], align 1
@__kstrtabns_padata_set_cpumask = external dso_local constant [0 x i8], align 1
@__ksymtab_padata_set_cpumask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @padata_set_cpumask to i32), ptr @__kstrtab_padata_set_cpumask, ptr @__kstrtabns_padata_set_cpumask }, section "___ksymtab+padata_set_cpumask", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s_parallel\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s_serial\00", [22 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@padata_attr_type = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @padata_sysfs_release, ptr @padata_sysfs_ops, ptr null, ptr @padata_default_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@padata_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&pinst->lock\00", [19 x i8] zeroinitializer }, align 32
@hp_online = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_padata_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_padata_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_padata_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @padata_alloc to i32), ptr @__kstrtab_padata_alloc, ptr @__kstrtabns_padata_alloc }, section "___ksymtab+padata_alloc", align 4
@__kstrtab_padata_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_padata_free = external dso_local constant [0 x i8], align 1
@__ksymtab_padata_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @padata_free to i32), ptr @__kstrtab_padata_free, ptr @__kstrtabns_padata_free }, section "___ksymtab+padata_free", align 4
@__kstrtab_padata_alloc_shell = external dso_local constant [0 x i8], align 1
@__kstrtabns_padata_alloc_shell = external dso_local constant [0 x i8], align 1
@__ksymtab_padata_alloc_shell = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @padata_alloc_shell to i32), ptr @__kstrtab_padata_alloc_shell, ptr @__kstrtabns_padata_alloc_shell }, section "___ksymtab+padata_alloc_shell", align 4
@__kstrtab_padata_free_shell = external dso_local constant [0 x i8], align 1
@__kstrtabns_padata_free_shell = external dso_local constant [0 x i8], align 1
@__ksymtab_padata_free_shell = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @padata_free_shell to i32), ptr @__kstrtab_padata_free_shell, ptr @__kstrtabns_padata_free_shell }, section "___ksymtab+padata_free_shell", align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"padata:online\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"padata:dead\00", [20 x i8] zeroinitializer }, align 32
@padata_works = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@padata_free_works = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @padata_free_works, ptr @padata_free_works }, [24 x i8] zeroinitializer }, align 32
@padata_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 1140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014padata: initialization failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"padata_init\00", [20 x i8] zeroinitializer }, align 32
@padata_init._entry_ptr = internal global ptr @padata_init._entry, section ".printk_index", align 4
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"padata_works_lock\00", [46 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@padata_work_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&pw->pw_work)\00", [32 x i8] zeroinitializer }, align 32
@padata_work_init.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@padata_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @padata_sysfs_show, ptr @padata_sysfs_store }, [24 x i8] zeroinitializer }, align 32
@padata_default_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @padata_default_group, ptr null], [24 x i8] zeroinitializer }, align 32
@padata_default_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @padata_default_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@padata_default_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @serial_cpumask_attr, ptr @parallel_cpumask_attr, ptr null], [20 x i8] zeroinitializer }, align 32
@serial_cpumask_attr = internal global { %struct.padata_sysfs_entry, [36 x i8] } { %struct.padata_sysfs_entry { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_cpumask, ptr @store_cpumask }, [36 x i8] zeroinitializer }, align 32
@parallel_cpumask_attr = internal global { %struct.padata_sysfs_entry, [36 x i8] } { %struct.padata_sysfs_entry { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_cpumask, ptr @store_cpumask }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"serial_cpumask\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*pb\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"parallel_cpumask\00", [47 x i8] zeroinitializer }, align 32
@padata_alloc_pd.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&pd->lock\00", [22 x i8] zeroinitializer }, align 32
@padata_alloc_pd.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&pd->reorder_work)\00", [59 x i8] zeroinitializer }, align 32
@__padata_list_init.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&pd_list->lock\00", [17 x i8] zeroinitializer }, align 32
@padata_init_squeues.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&squeue->work)\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 177, i32 7 }
@___asan_gen_.32 = private unnamed_addr constant [18 x i8] c"padata_works_lock\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 490, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 977, i32 39 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 984, i32 37 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"padata_attr_type\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 957, i32 25 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1007, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [10 x i8] c"hp_online\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 817, i32 25 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1110, i32 53 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1116, i32 51 }
@___asan_gen_.65 = private unnamed_addr constant [13 x i8] c"padata_works\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 35, i32 28 }
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"padata_free_works\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 36, i32 8 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1140, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 749, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 108, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 34, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 760, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 90, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 92, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 87, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"padata_sysfs_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 952, i32 31 }
@___asan_gen_.113 = private unnamed_addr constant [22 x i8] c"padata_default_groups\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [21 x i8] c"padata_default_group\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 920, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant [21 x i8] c"padata_default_attrs\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 915, i32 26 }
@___asan_gen_.122 = private unnamed_addr constant [20 x i8] c"serial_cpumask_attr\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [22 x i8] c"parallel_cpumask_attr\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 907, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 867, i32 33 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 908, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 584, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 586, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 523, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private constant [19 x i8] c"../kernel/padata.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 536, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__ksymtab_padata_alloc, ptr @__ksymtab_padata_alloc_shell, ptr @__ksymtab_padata_do_parallel, ptr @__ksymtab_padata_do_serial, ptr @__ksymtab_padata_free, ptr @__ksymtab_padata_free_shell, ptr @__ksymtab_padata_set_cpumask, ptr @padata_init._entry, ptr @padata_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @padata_works_lock, ptr @padata_do_multithreaded.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @padata_attr_type, ptr @padata_alloc.__key, ptr @.str.5, ptr @hp_online, ptr @.str.6, ptr @.str.7, ptr @padata_works, ptr @padata_free_works, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @padata_work_init.__key, ptr @.str.15, ptr @padata_work_init.__key.16, ptr @init_completion.__key, ptr @.str.17, ptr @padata_sysfs_ops, ptr @padata_default_groups, ptr @padata_default_group, ptr @padata_default_attrs, ptr @serial_cpumask_attr, ptr @parallel_cpumask_attr, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @padata_alloc_pd.__key, ptr @.str.21, ptr @padata_alloc_pd.__key.22, ptr @.str.23, ptr @.str.24, ptr @padata_init_squeues.__key, ptr @.str.25], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @padata_works_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @padata_do_multithreaded.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @padata_attr_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @padata_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_online to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @padata_works to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @padata_free_works to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @padata_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @padata_work_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @padata_work_init.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @padata_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @padata_default_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @padata_default_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @padata_default_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_cpumask_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parallel_cpumask_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @padata_alloc_pd.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @padata_alloc_pd.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @padata_init_squeues.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @padata_do_parallel(ptr noundef %ps, ptr noundef %padata, ptr nocapture noundef %cb_cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps, align 4
  tail call fastcc void @local_bh_disable() #13
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 750, ptr noundef nonnull @.str.11) #13
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %pd2 = getelementptr inbounds %struct.padata_shell, ptr %ps, i32 0, i32 1
  %2 = ptrtoint ptr %pd2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pd2, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end9_crit_edge

rcu_read_lock_bh.exit.do.end9_crit_edge:          ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b82 = load i1, ptr @padata_do_parallel.__warned, align 1
  br i1 %.b82, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @padata_do_parallel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 177, ptr noundef nonnull @.str.1) #13
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock_bh.exit.do.end9_crit_edge
  %flags = getelementptr inbounds %struct.padata_instance, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags, align 4
  %6 = and i8 %5, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %if.end17, label %do.end9.out_crit_edge

do.end9.out_crit_edge:                            ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end17:                                         ; preds = %do.end9
  %8 = ptrtoint ptr %cb_cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cb_cpu, align 4
  %cbcpu = getelementptr inbounds %struct.parallel_data, ptr %3, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %cbcpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cbcpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %9)
  %cmp.not.i.i.i = icmp ugt i32 %12, %9
  br i1 %cmp.not.i.i.i, label %if.end17.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.end17.cpumask_test_cpu.exit_crit_edge:         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.end17
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !108

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %if.end17.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %9, 5
  %arrayidx.i.i = getelementptr i32, ptr %11, i32 %div3.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %9, 31
  %15 = shl nuw i32 1, %and.i.i
  %16 = and i32 %14, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool19.not = icmp eq i32 %16, 0
  br i1 %tobool19.not, label %if.end.i.i, label %cpumask_test_cpu.exit.if.end37_crit_edge

cpumask_test_cpu.exit.if.end37_crit_edge:         ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.end.i.i:                                       ; preds = %cpumask_test_cpu.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %18 = ptrtoint ptr %cbcpu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cbcpu, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef %19, i32 noundef %17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool24.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool24.not, label %if.end.i.i.out_crit_edge, label %if.end26

if.end.i.i.out_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end26:                                         ; preds = %if.end.i.i
  %20 = ptrtoint ptr %cb_cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cb_cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %23 = ptrtoint ptr %cbcpu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cbcpu, align 4
  %call4.i.i183 = tail call i32 @__bitmap_weight(ptr noundef %24, i32 noundef %22) #13
  %rem = urem i32 %21, %call4.i.i183
  %25 = ptrtoint ptr %cbcpu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cbcpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %call.i187 = tail call i32 @_find_first_bit_be(ptr noundef %26, i32 noundef %27) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp209 = icmp sgt i32 %rem, 0
  br i1 %cmp209, label %for.body.lr.ph, label %if.end26.for.end_crit_edge

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end26
  %28 = ptrtoint ptr %cbcpu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cbcpu, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %cpu.0211 = phi i32 [ %call.i187, %for.body.lr.ph ], [ %call36, %for.body.for.body_crit_edge ]
  %i.0210 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %call36 = tail call i32 @cpumask_next(i32 noundef %cpu.0211, ptr noundef %29) #16
  %inc = add nuw nsw i32 %i.0210, 1
  %cmp = icmp slt i32 %inc, %rem
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end26.for.end_crit_edge
  %cpu.0.lcssa = phi i32 [ %call.i187, %if.end26.for.end_crit_edge ], [ %call36, %for.body.for.end_crit_edge ]
  %30 = ptrtoint ptr %cb_cpu to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cpu.0.lcssa, ptr %cb_cpu, align 4
  br label %if.end37

if.end37:                                         ; preds = %for.end, %cpumask_test_cpu.exit.if.end37_crit_edge
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %flags, align 4
  %33 = and i8 %32, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool41.not = icmp eq i8 %33, 0
  br i1 %tobool41.not, label %if.end43, label %if.end37.out_crit_edge

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end43:                                         ; preds = %if.end37
  %refcnt = getelementptr inbounds %struct.parallel_data, ptr %3, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #13, !srcloc !109
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end43.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !110

if.end43.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end43
  %add.i.i.i188 = add i32 %asmresult.i.i.i.i.i, 1
  %35 = or i32 %add.i.i.i188, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %.not.i.i.i = icmp sgt i32 %35, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !108

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end43.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end43.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #13
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %pd44 = getelementptr inbounds %struct.padata_priv, ptr %padata, i32 0, i32 1
  %36 = ptrtoint ptr %pd44 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %3, ptr %pd44, align 4
  %37 = ptrtoint ptr %cb_cpu to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cb_cpu, align 4
  %cb_cpu45 = getelementptr inbounds %struct.padata_priv, ptr %padata, i32 0, i32 2
  %39 = ptrtoint ptr %cb_cpu45 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %cb_cpu45, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @padata_works_lock) #13
  %seq_nr = getelementptr inbounds %struct.parallel_data, ptr %3, i32 0, i32 4
  %40 = ptrtoint ptr %seq_nr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %seq_nr, align 16
  %inc46 = add i32 %41, 1
  store i32 %inc46, ptr %seq_nr, align 16
  %seq_nr47 = getelementptr inbounds %struct.padata_priv, ptr %padata, i32 0, i32 3
  %42 = ptrtoint ptr %seq_nr47 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %inc46, ptr %seq_nr47, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %43 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i189 = icmp eq i32 %43, 0
  br i1 %tobool.not.i189, label %refcount_inc.exit.if.end.i_crit_edge, label %land.rhs.i

refcount_inc.exit.if.end.i_crit_edge:             ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.rhs.i:                                       ; preds = %refcount_inc.exit
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @padata_works_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !110

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %refcount_inc.exit.if.end.i_crit_edge
  %44 = load volatile ptr, ptr @padata_free_works, align 4
  %cmp.i.not.i = icmp eq ptr %44, @padata_free_works
  br i1 %cmp.i.not.i, label %if.end.i.padata_work_alloc.exit_crit_edge, label %if.end27.i

if.end.i.padata_work_alloc.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %padata_work_alloc.exit

if.end27.i:                                       ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %44, i32 -44
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %44) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end27.i.list_del.exit.i_crit_edge

if.end27.i.list_del.exit.i_crit_edge:             ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i.i, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end27.i.list_del.exit.i_crit_edge
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 256 to ptr), ptr %44, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %padata_work_alloc.exit

padata_work_alloc.exit:                           ; preds = %list_del.exit.i, %if.end.i.padata_work_alloc.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %list_del.exit.i ], [ null, %if.end.i.padata_work_alloc.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @padata_works_lock) #13
  %call.i190 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i190, label %padata_work_alloc.exit.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i193

padata_work_alloc.exit.rcu_read_unlock_bh.exit_crit_edge: ; preds = %padata_work_alloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i193:                               ; preds = %padata_work_alloc.exit
  %call1.i191 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i191)
  %tobool.not.i192 = icmp eq i32 %call1.i191, 0
  br i1 %tobool.not.i192, label %land.lhs.true.i193.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i195

land.lhs.true.i193.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i193
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i195:                              ; preds = %land.lhs.true.i193
  %.b4.i194 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i194, label %land.lhs.true2.i195.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i196

land.lhs.true2.i195.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i195
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit

if.then.i196:                                     ; preds = %land.lhs.true2.i195
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 761, ptr noundef nonnull @.str.14) #13
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i196, %land.lhs.true2.i195.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i193.rcu_read_unlock_bh.exit_crit_edge, %padata_work_alloc.exit.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #13
  tail call fastcc void @local_bh_enable() #13
  %tobool49.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool49.not, label %if.else, label %if.then50

if.then50:                                        ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__init_work(ptr noundef nonnull %retval.0.i, i32 noundef 0) #13
  %53 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -64, ptr %retval.0.i, align 4
  %lockdep_map14.i = getelementptr inbounds %struct.work_struct, ptr %retval.0.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map14.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @padata_work_init.__key.16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry16.i = getelementptr inbounds %struct.work_struct, ptr %retval.0.i, i32 0, i32 1
  %54 = ptrtoint ptr %entry16.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %entry16.i, ptr %entry16.i, align 4
  %55 = getelementptr inbounds %struct.work_struct, ptr %retval.0.i, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %entry16.i, ptr %55, align 4
  %57 = getelementptr inbounds %struct.work_struct, ptr %retval.0.i, i32 0, i32 2
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @padata_parallel_worker, ptr %57, align 4
  %pw_data.i = getelementptr inbounds %struct.padata_work, ptr %retval.0.i, i32 0, i32 2
  %59 = ptrtoint ptr %pw_data.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %padata, ptr %pw_data.i, align 4
  %parallel_wq = getelementptr inbounds %struct.padata_instance, ptr %1, i32 0, i32 2
  %60 = ptrtoint ptr %parallel_wq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %parallel_wq, align 4
  %call.i199 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %61, ptr noundef nonnull %retval.0.i) #13
  br label %cleanup

if.else:                                          ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #15
  %parallel = getelementptr inbounds %struct.padata_priv, ptr %padata, i32 0, i32 5
  %62 = ptrtoint ptr %parallel to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %parallel, align 4
  tail call void %63(ptr noundef %padata) #13
  br label %cleanup

out:                                              ; preds = %if.end37.out_crit_edge, %if.end.i.i.out_crit_edge, %do.end9.out_crit_edge
  %err.0 = phi i32 [ -16, %if.end37.out_crit_edge ], [ -22, %if.end.i.i.out_crit_edge ], [ -22, %do.end9.out_crit_edge ]
  %call.i200 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i200, label %out.rcu_read_unlock_bh.exit208_crit_edge, label %land.lhs.true.i203

out.rcu_read_unlock_bh.exit208_crit_edge:         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit208

land.lhs.true.i203:                               ; preds = %out
  %call1.i201 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i201)
  %tobool.not.i202 = icmp eq i32 %call1.i201, 0
  br i1 %tobool.not.i202, label %land.lhs.true.i203.rcu_read_unlock_bh.exit208_crit_edge, label %land.lhs.true2.i205

land.lhs.true.i203.rcu_read_unlock_bh.exit208_crit_edge: ; preds = %land.lhs.true.i203
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit208

land.lhs.true2.i205:                              ; preds = %land.lhs.true.i203
  %.b4.i204 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i204, label %land.lhs.true2.i205.rcu_read_unlock_bh.exit208_crit_edge, label %if.then.i206

land.lhs.true2.i205.rcu_read_unlock_bh.exit208_crit_edge: ; preds = %land.lhs.true2.i205
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock_bh.exit208

if.then.i206:                                     ; preds = %land.lhs.true2.i205
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 761, ptr noundef nonnull @.str.14) #13
  br label %rcu_read_unlock_bh.exit208

rcu_read_unlock_bh.exit208:                       ; preds = %if.then.i206, %land.lhs.true2.i205.rcu_read_unlock_bh.exit208_crit_edge, %land.lhs.true.i203.rcu_read_unlock_bh.exit208_crit_edge, %out.rcu_read_unlock_bh.exit208_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #13
  tail call fastcc void @local_bh_enable() #13
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock_bh.exit208, %if.else, %if.then50
  %retval.0 = phi i32 [ %err.0, %rcu_read_unlock_bh.exit208 ], [ 0, %if.else ], [ 0, %if.then50 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @padata_work_init(ptr noundef %pw, ptr noundef %work_fn, ptr noundef %data, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__init_work(ptr noundef %pw, i32 noundef 1) #13
  %0 = ptrtoint ptr %pw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %pw, align 4
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %pw, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.15, ptr noundef nonnull @padata_work_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry5 = getelementptr inbounds %struct.work_struct, ptr %pw, i32 0, i32 1
  %1 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry5, ptr %entry5, align 4
  br label %if.end

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__init_work(ptr noundef %pw, i32 noundef 0) #13
  %2 = ptrtoint ptr %pw to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %pw, align 4
  %lockdep_map14 = getelementptr inbounds %struct.work_struct, ptr %pw, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map14, ptr noundef nonnull @.str.15, ptr noundef nonnull @padata_work_init.__key.16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry16 = getelementptr inbounds %struct.work_struct, ptr %pw, i32 0, i32 1
  %3 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry16, ptr %entry16, align 4
  br label %if.end

if.end:                                           ; preds = %do.body7, %do.body
  %entry5.sink = phi ptr [ %entry16, %do.body7 ], [ %entry5, %do.body ]
  %4 = getelementptr inbounds %struct.work_struct, ptr %pw, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry5.sink, ptr %4, align 4
  %6 = getelementptr inbounds %struct.work_struct, ptr %pw, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %work_fn, ptr %6, align 4
  %pw_data = getelementptr inbounds %struct.padata_work, ptr %pw, i32 0, i32 2
  %8 = ptrtoint ptr %pw_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data, ptr %pw_data, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @padata_parallel_worker(ptr noundef %parallel_work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pw_data = getelementptr inbounds %struct.padata_work, ptr %parallel_work, i32 0, i32 2
  %0 = ptrtoint ptr %pw_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pw_data, align 4
  tail call fastcc void @local_bh_disable()
  %parallel = getelementptr inbounds %struct.padata_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %parallel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parallel, align 4
  tail call void %3(ptr noundef %1) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @padata_works_lock) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @padata_works_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !110

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %pw_list.i = getelementptr inbounds %struct.padata_work, ptr %parallel_work, i32 0, i32 1
  %5 = load ptr, ptr @padata_free_works, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pw_list.i, ptr noundef nonnull @padata_free_works, ptr noundef %5) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.padata_work_free.exit_crit_edge

if.end.i.padata_work_free.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %padata_work_free.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pw_list.i, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %pw_list.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %pw_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.padata_work, ptr %parallel_work, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @padata_free_works, ptr %prev3.i.i.i, align 4
  store volatile ptr %pw_list.i, ptr @padata_free_works, align 4
  br label %padata_work_free.exit

padata_work_free.exit:                            ; preds = %if.end.i.i.i, %if.end.i.padata_work_free.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @padata_works_lock) #13
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @padata_do_serial(ptr noundef %padata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pd1 = getelementptr inbounds %struct.padata_priv, ptr %padata, i32 0, i32 1
  %0 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd1, align 4
  %seq_nr = getelementptr inbounds %struct.padata_priv, ptr %padata, i32 0, i32 3
  %2 = ptrtoint ptr %seq_nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seq_nr, align 4
  %cpumask.i = getelementptr inbounds %struct.parallel_data, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = ptrtoint ptr %cpumask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cpumask.i, align 4
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef %6, i32 noundef %4) #13
  %rem.i = urem i32 %3, %call4.i.i.i
  %7 = ptrtoint ptr %cpumask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpumask.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i = tail call i32 @_find_first_bit_be(ptr noundef %8, i32 noundef %9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp7.i.i = icmp sgt i32 %rem.i, 0
  br i1 %cmp7.i.i, label %for.body.lr.ph.i.i, label %entry.padata_cpu_hash.exit_crit_edge

entry.padata_cpu_hash.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %padata_cpu_hash.exit

for.body.lr.ph.i.i:                               ; preds = %entry
  %10 = ptrtoint ptr %cpumask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cpumask.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %target_cpu.09.i.i = phi i32 [ %call.i.i.i, %for.body.lr.ph.i.i ], [ %call3.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %cpu.08.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %call3.i.i = tail call i32 @cpumask_next(i32 noundef %target_cpu.09.i.i, ptr noundef %11) #16
  %inc.i.i = add nuw nsw i32 %cpu.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %rem.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.padata_cpu_hash.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i.padata_cpu_hash.exit_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %padata_cpu_hash.exit

padata_cpu_hash.exit:                             ; preds = %for.body.i.i.padata_cpu_hash.exit_crit_edge, %entry.padata_cpu_hash.exit_crit_edge
  %target_cpu.0.lcssa.i.i = phi i32 [ %call.i.i.i, %entry.padata_cpu_hash.exit_crit_edge ], [ %call3.i.i, %for.body.i.i.padata_cpu_hash.exit_crit_edge ]
  %reorder_list = getelementptr inbounds %struct.parallel_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %reorder_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reorder_list, align 4
  %14 = ptrtoint ptr %13 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %target_cpu.0.lcssa.i.i
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %14
  %17 = inttoptr i32 %add to ptr
  %lock = getelementptr inbounds %struct.padata_list, ptr %17, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %padata_cpu_hash.exit
  %.pn = phi ptr [ %17, %padata_cpu_hash.exit ], [ %cur.0, %for.body.for.cond_crit_edge ]
  %cur.0.in = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %18 = ptrtoint ptr %cur.0.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %cur.0 = load ptr, ptr %cur.0.in, align 4
  %cmp.not = icmp eq ptr %cur.0, %17
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %seq_nr6 = getelementptr inbounds %struct.padata_priv, ptr %cur.0, i32 0, i32 3
  %19 = ptrtoint ptr %seq_nr6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %seq_nr6, align 4
  %21 = ptrtoint ptr %seq_nr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %seq_nr, align 4
  %cmp8 = icmp ult i32 %20, %22
  br i1 %cmp8, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %cur.0.lcssa = phi ptr [ %cur.0, %for.body.for.end_crit_edge ], [ %17, %for.cond.for.end_crit_edge ]
  %23 = ptrtoint ptr %cur.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur.0.lcssa, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %padata, ptr noundef %cur.0.lcssa, ptr noundef %24) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add.exit_crit_edge

for.end.list_add.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %padata, ptr %prev1.i.i, align 4
  %26 = ptrtoint ptr %padata to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %padata, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %padata, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %cur.0.lcssa, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %cur.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %padata, ptr %cur.0.lcssa, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.end.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !111
  tail call fastcc void @padata_reorder(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @padata_reorder(ptr noundef %pd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %lock = getelementptr inbounds %struct.parallel_data, ptr %pd, i32 0, i32 10
  %call.i = tail call i32 @_raw_spin_trylock_bh(ptr noundef %lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %call262 = tail call fastcc ptr @padata_find_next(ptr noundef %pd, i1 noundef zeroext true)
  %tobool3.not63 = icmp eq ptr %call262, null
  br i1 %tobool3.not63, label %while.cond.preheader.while.end_crit_edge, label %if.end5.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end5.lr.ph:                                    ; preds = %while.cond.preheader
  %squeue7 = getelementptr inbounds %struct.parallel_data, ptr %pd, i32 0, i32 2
  %serial_wq = getelementptr inbounds %struct.padata_instance, ptr %3, i32 0, i32 3
  br label %if.end5

if.end5:                                          ; preds = %list_add_tail.exit.if.end5_crit_edge, %if.end5.lr.ph
  %call264 = phi ptr [ %call262, %if.end5.lr.ph ], [ %call2, %list_add_tail.exit.if.end5_crit_edge ]
  %cb_cpu6 = getelementptr inbounds %struct.padata_priv, ptr %call264, i32 0, i32 2
  %4 = ptrtoint ptr %cb_cpu6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cb_cpu6, align 4
  %6 = ptrtoint ptr %squeue7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %squeue7, align 8
  %8 = ptrtoint ptr %7 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %8
  %11 = inttoptr i32 %add to ptr
  %lock9 = getelementptr inbounds %struct.padata_list, ptr %11, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock9) #13
  %prev.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call264, ptr noundef %13, ptr noundef %11) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_add_tail.exit_crit_edge

if.end5.list_add_tail.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call264, ptr %prev.i, align 4
  %15 = ptrtoint ptr %call264 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %11, ptr %call264, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call264, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call264, ptr %13, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end5.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock9) #13
  %18 = ptrtoint ptr %serial_wq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %serial_wq, align 4
  %work = getelementptr inbounds %struct.padata_serial_queue, ptr %11, i32 0, i32 1
  %call14 = tail call zeroext i1 @queue_work_on(i32 noundef %5, ptr noundef %19, ptr noundef %work) #13
  %call2 = tail call fastcc ptr @padata_find_next(ptr noundef %pd, i1 noundef zeroext true)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %list_add_tail.exit.while.end_crit_edge, label %list_add_tail.exit.if.end5_crit_edge

list_add_tail.exit.if.end5_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

list_add_tail.exit.while.end_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %list_add_tail.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !112
  %reorder_list = getelementptr inbounds %struct.parallel_data, ptr %pd, i32 0, i32 1
  %20 = ptrtoint ptr %reorder_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reorder_list, align 4
  %22 = ptrtoint ptr %21 to i32
  %cpu = getelementptr inbounds %struct.parallel_data, ptr %pd, i32 0, i32 6
  %23 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu, align 8
  %arrayidx29 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx29, align 4
  %add30 = add i32 %26, %22
  %27 = inttoptr i32 %add30 to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %27, align 4
  %cmp.i.not = icmp eq ptr %29, %27
  br i1 %cmp.i.not, label %while.end.cleanup_crit_edge, label %land.lhs.true

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %while.end
  %lock.i = getelementptr inbounds %struct.padata_list, ptr %27, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #13
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %27, align 4
  %cmp.i.not.i = icmp eq ptr %31, %27
  br i1 %cmp.i.not.i, label %land.lhs.true.padata_find_next.exit.thread_crit_edge, label %if.end.i

land.lhs.true.padata_find_next.exit.thread_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %padata_find_next.exit.thread

if.end.i:                                         ; preds = %land.lhs.true
  %seq_nr.i = getelementptr inbounds %struct.padata_priv, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %seq_nr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %seq_nr.i, align 4
  %processed.i = getelementptr inbounds %struct.parallel_data, ptr %pd, i32 0, i32 5
  %34 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %processed.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp.not.i.not = icmp eq i32 %33, %35
  br i1 %cmp.not.i.not, label %padata_find_next.exit, label %if.end.i.padata_find_next.exit.thread_crit_edge

if.end.i.padata_find_next.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %padata_find_next.exit.thread

padata_find_next.exit.thread:                     ; preds = %if.end.i.padata_find_next.exit.thread_crit_edge, %land.lhs.true.padata_find_next.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  br label %cleanup

padata_find_next.exit:                            ; preds = %if.end.i
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  %tobool35.not = icmp eq ptr %31, null
  br i1 %tobool35.not, label %padata_find_next.exit.cleanup_crit_edge, label %if.then36

padata_find_next.exit.cleanup_crit_edge:          ; preds = %padata_find_next.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then36:                                        ; preds = %padata_find_next.exit
  call void @__sanitizer_cov_trace_pc() #15
  %serial_wq37 = getelementptr inbounds %struct.padata_instance, ptr %3, i32 0, i32 3
  %36 = ptrtoint ptr %serial_wq37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %serial_wq37, align 4
  %reorder_work = getelementptr inbounds %struct.parallel_data, ptr %pd, i32 0, i32 8
  %call.i59 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %37, ptr noundef %reorder_work) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %padata_find_next.exit.cleanup_crit_edge, %padata_find_next.exit.thread, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @padata_do_multithreaded(ptr noundef %job) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  %my_work = alloca %struct.padata_work, align 4
  %ps = alloca %struct.padata_mt_job_state, align 4
  %works = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %my_work) #13
  %0 = call ptr @memset(ptr %my_work, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 116, ptr nonnull %ps) #13
  %1 = call ptr @memset(ptr %ps, i32 255, i32 116)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %works) #13
  %2 = getelementptr inbounds %struct.list_head, ptr %works, i32 0, i32 1
  %3 = ptrtoint ptr %works to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %works, ptr %works, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %works, ptr %2, align 4
  %size = getelementptr inbounds %struct.padata_mt_job, ptr %job, i32 0, i32 3
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %min_chunk = getelementptr inbounds %struct.padata_mt_job, ptr %job, i32 0, i32 5
  %7 = ptrtoint ptr %min_chunk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %min_chunk, align 4
  %div = udiv i32 %6, %8
  %9 = call i32 @llvm.umax.i32(i32 %div, i32 1)
  %max_threads = getelementptr inbounds %struct.padata_mt_job, ptr %job, i32 0, i32 6
  %10 = ptrtoint ptr %max_threads to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_threads, align 4
  %12 = call i32 @llvm.smin.i32(i32 %9, i32 %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp9 = icmp eq i32 %12, 1
  br i1 %cmp9, label %if.then10, label %do.body

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %job, align 4
  %start = getelementptr inbounds %struct.padata_mt_job, ptr %job, i32 0, i32 2
  %15 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %start, align 4
  %add = add i32 %16, %6
  %fn_arg = getelementptr inbounds %struct.padata_mt_job, ptr %job, i32 0, i32 1
  %17 = ptrtoint ptr %fn_arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fn_arg, align 4
  call void %14(i32 noundef %16, i32 noundef %add, ptr noundef %18) #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__raw_spin_lock_init(ptr noundef nonnull %ps, ptr noundef nonnull @.str.2, ptr noundef nonnull @padata_do_multithreaded.__key, i16 noundef signext 3) #13
  %completion = getelementptr inbounds %struct.padata_mt_job_state, ptr %ps, i32 0, i32 1
  %19 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.padata_mt_job_state, ptr %ps, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #13
  %job14 = getelementptr inbounds %struct.padata_mt_job_state, ptr %ps, i32 0, i32 2
  %20 = ptrtoint ptr %job14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %job, ptr %job14, align 4
  %call15 = call fastcc i32 @padata_work_alloc_mt(i32 noundef %12, ptr noundef nonnull %ps, ptr noundef nonnull %works) #17
  %nworks16 = getelementptr inbounds %struct.padata_mt_job_state, ptr %ps, i32 0, i32 3
  %21 = ptrtoint ptr %nworks16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call15, ptr %nworks16, align 4
  %nworks_fini = getelementptr inbounds %struct.padata_mt_job_state, ptr %ps, i32 0, i32 4
  %22 = ptrtoint ptr %nworks_fini to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %nworks_fini, align 4
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  %mul = shl i32 %call15, 2
  %div19 = udiv i32 %24, %mul
  %chunk_size = getelementptr inbounds %struct.padata_mt_job_state, ptr %ps, i32 0, i32 5
  %25 = ptrtoint ptr %min_chunk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %min_chunk, align 4
  %27 = call i32 @llvm.umax.i32(i32 %div19, i32 %26)
  %align = getelementptr inbounds %struct.padata_mt_job, ptr %job, i32 0, i32 4
  %28 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %align, align 4
  %sub = add i32 %27, -1
  %add31 = add i32 %sub, %29
  %30 = urem i32 %add31, %29
  %mul33 = sub i32 %add31, %30
  %31 = ptrtoint ptr %chunk_size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul33, ptr %chunk_size, align 4
  %32 = ptrtoint ptr %works to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn77 = load ptr, ptr %works, align 4
  %cmp37.not78 = icmp eq ptr %.pn77, %works
  br i1 %cmp37.not78, label %do.body.for.end_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body.for.body_crit_edge
  %.pn79 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn77, %do.body.for.body_crit_edge ]
  %pw.0 = getelementptr i8, ptr %.pn79, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %33 = load ptr, ptr @system_unbound_wq, align 4
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %pw.0) #13
  %34 = ptrtoint ptr %.pn79 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn = load ptr, ptr %.pn79, align 4
  %cmp37.not = icmp eq ptr %.pn, %works
  br i1 %cmp37.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body.for.end_crit_edge
  call fastcc void @padata_work_init(ptr noundef nonnull %my_work, ptr noundef nonnull @padata_mt_helper, ptr noundef nonnull %ps, i32 noundef 1)
  call void @padata_mt_helper(ptr noundef nonnull %my_work) #17
  call void @wait_for_completion(ptr noundef %completion) #13
  call void @destroy_work_on_stack(ptr noundef nonnull %my_work) #13
  call fastcc void @padata_works_free(ptr noundef nonnull %works) #17
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then10, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %works) #13
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %ps) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %my_work) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @padata_work_alloc_mt(i32 noundef %nworks, ptr noundef %data, ptr noundef %head) unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @padata_works_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nworks)
  %cmp11 = icmp sgt i32 %nworks, 1
  br i1 %cmp11, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %land.rhs.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.rhs.i:                                       ; preds = %for.body
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @padata_works_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !110

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %for.body.if.end.i_crit_edge
  %1 = load volatile ptr, ptr @padata_free_works, align 4
  %cmp.i.not.i = icmp eq ptr %1, @padata_free_works
  br i1 %cmp.i.not.i, label %if.end.i.for.end_crit_edge, label %if.end27.i

if.end.i.for.end_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end27.i:                                       ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -44
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end27.i.padata_work_alloc.exit_crit_edge

if.end27.i.padata_work_alloc.exit_crit_edge:      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %padata_work_alloc.exit

if.end.i.i.i:                                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %padata_work_alloc.exit

padata_work_alloc.exit:                           ; preds = %if.end.i.i.i, %if.end27.i.padata_work_alloc.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %padata_work_alloc.exit.for.end_crit_edge, label %if.end

padata_work_alloc.exit.for.end_crit_edge:         ; preds = %padata_work_alloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end:                                           ; preds = %padata_work_alloc.exit
  tail call fastcc void @padata_work_init(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull @padata_mt_helper, ptr noundef %data, i32 noundef 0)
  %10 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head, align 4
  %call.i.i6 = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %head, ptr noundef %11) #13
  br i1 %call.i.i6, label %if.end.i.i, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %prev1.i.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %1, align 4
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %head, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %1, ptr %head, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %nworks
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %padata_work_alloc.exit.for.end_crit_edge, %if.end.i.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %i.012, %if.end.i.for.end_crit_edge ], [ %i.012, %padata_work_alloc.exit.for.end_crit_edge ], [ %nworks, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @padata_works_lock) #13
  ret i32 %i.0.lcssa
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @padata_mt_helper(ptr nocapture noundef readonly %w) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pw_data = getelementptr inbounds %struct.padata_work, ptr %w, i32 0, i32 2
  %0 = ptrtoint ptr %pw_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pw_data, align 4
  %job1 = getelementptr inbounds %struct.padata_mt_job_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %job1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %job1, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #13
  %size = getelementptr inbounds %struct.padata_mt_job, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not46 = icmp eq i32 %5, 0
  br i1 %cmp.not46, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %start3 = getelementptr inbounds %struct.padata_mt_job, ptr %3, i32 0, i32 2
  %chunk_size = getelementptr inbounds %struct.padata_mt_job_state, ptr %1, i32 0, i32 5
  %fn_arg = getelementptr inbounds %struct.padata_mt_job, ptr %3, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %6 = phi i32 [ %5, %while.body.lr.ph ], [ %21, %while.body.while.body_crit_edge ]
  %7 = ptrtoint ptr %start3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %start3, align 4
  %9 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chunk_size, align 4
  %add5 = add i32 %10, %8
  %11 = urem i32 %add5, %10
  %12 = add i32 %11, %8
  %sub6 = sub i32 %add5, %12
  %13 = tail call i32 @llvm.umin.i32(i32 %sub6, i32 %6)
  %add10 = add i32 %13, %8
  %14 = ptrtoint ptr %start3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add10, ptr %start3, align 4
  %sub13 = sub i32 %6, %13
  %15 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub13, ptr %size, align 4
  tail call void @_raw_spin_unlock(ptr noundef %1) #13
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %18 = ptrtoint ptr %fn_arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fn_arg, align 4
  tail call void %17(i32 noundef %8, i32 noundef %add10, ptr noundef %19) #13
  tail call void @_raw_spin_lock(ptr noundef %1) #13
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  %cmp.not = icmp eq i32 %21, 0
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %nworks_fini = getelementptr inbounds %struct.padata_mt_job_state, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %nworks_fini to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nworks_fini, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %nworks_fini, align 4
  %nworks = getelementptr inbounds %struct.padata_mt_job_state, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %nworks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nworks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %25)
  %cmp17 = icmp eq i32 %inc, %25
  tail call void @_raw_spin_unlock(ptr noundef %1) #13
  br i1 %cmp17, label %if.then, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %completion = getelementptr inbounds %struct.padata_mt_job_state, ptr %1, i32 0, i32 1
  tail call void @complete(ptr noundef %completion) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_work_on_stack(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @padata_works_free(ptr noundef %works) unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %works to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %works, align 4
  %cmp.i.not = icmp eq ptr %1, %works
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @padata_works_lock) #13
  %2 = ptrtoint ptr %works to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %works, align 4
  %cmp.not23 = icmp eq ptr %3, %works
  br i1 %cmp.not23, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %padata_work_free.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in24 = phi ptr [ %.pn, %padata_work_free.exit.for.body_crit_edge ], [ %3, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in24, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in24) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in24, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in24, align 4
  %prev.i = getelementptr %struct.list_head, ptr %.pn.in24, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %list_del.exit.if.end.i_crit_edge, label %land.rhs.i

list_del.exit.if.end.i_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.rhs.i:                                       ; preds = %list_del.exit
  %call.i.i21 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @padata_works_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21)
  %cmp.not.i = icmp eq i32 %call.i.i21, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !110

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %list_del.exit.if.end.i_crit_edge
  %14 = load ptr, ptr @padata_free_works, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in24, ptr noundef nonnull @padata_free_works, ptr noundef %14) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.padata_work_free.exit_crit_edge

if.end.i.padata_work_free.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %padata_work_free.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i22 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %.pn.in24, ptr %prev1.i.i.i22, align 4
  %16 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %.pn.in24, align 4
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @padata_free_works, ptr %prev.i, align 4
  store volatile ptr %.pn.in24, ptr @padata_free_works, align 4
  br label %padata_work_free.exit

padata_work_free.exit:                            ; preds = %if.end.i.i.i, %if.end.i.padata_work_free.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, %works
  br i1 %cmp.not, label %padata_work_free.exit.for.end_crit_edge, label %padata_work_free.exit.for.body_crit_edge

padata_work_free.exit.for.body_crit_edge:         ; preds = %padata_work_free.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

padata_work_free.exit.for.end_crit_edge:          ; preds = %padata_work_free.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %padata_work_free.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @padata_works_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @padata_set_cpumask(ptr noundef %pinst, i32 noundef %cpumask_type, ptr noundef %cpumask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cpus_read_lock() #13
  %lock = getelementptr inbounds %struct.padata_instance, ptr %pinst, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %0 = zext i32 %cpumask_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cpumask_type, label %entry.out_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cbcpu = getelementptr inbounds %struct.padata_instance, ptr %pinst, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %cbcpu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cbcpu, align 4
  br label %if.else.i.i.i.i

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cpumask3 = getelementptr inbounds %struct.padata_instance, ptr %pinst, i32 0, i32 5
  %3 = ptrtoint ptr %cpumask3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cpumask3, align 4
  br label %if.else.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %sw.bb2, %sw.bb
  %serial_mask.0 = phi ptr [ %cpumask, %sw.bb2 ], [ %2, %sw.bb ]
  %parallel_mask.0 = phi ptr [ %4, %sw.bb2 ], [ %cpumask, %sw.bb ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i.i = tail call i32 @__bitmap_intersects(ptr noundef %parallel_mask.0, ptr noundef nonnull @__cpu_online_mask, i32 noundef %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %call.i.i.i.i, 0
  %flags2.i.i = getelementptr inbounds %struct.padata_instance, ptr %pinst, i32 0, i32 8
  %6 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags2.i.i, align 4
  %8 = and i8 %7, -5
  %masksel.i.i = select i1 %tobool.i.i.not.i, i8 4, i8 0
  %.sink.i.i = or i8 %8, %masksel.i.i
  store i8 %.sink.i.i, ptr %flags2.i.i, align 4
  br i1 %tobool.i.i.not.i, label %if.then.i, label %if.else.i.i.i34.i

if.then.i:                                        ; preds = %if.else.i.i.i.i
  %9 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i.i, label %if.then.i.out_replace.i_crit_edge, label %if.then.i.out_replace.sink.split.i_crit_edge

if.then.i.out_replace.sink.split.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_replace.sink.split.i

if.then.i.out_replace.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_replace.i

if.else.i.i.i34.i:                                ; preds = %if.else.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i33.i = tail call i32 @__bitmap_intersects(ptr noundef %serial_mask.0, ptr noundef nonnull @__cpu_online_mask, i32 noundef %10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i33.i)
  %tobool.i.i36.not.i = icmp eq i32 %call.i.i.i33.i, 0
  %11 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags2.i.i, align 4
  %13 = and i8 %12, -5
  %masksel.i38.i = select i1 %tobool.i.i36.not.i, i8 4, i8 0
  %.sink.i39.i = or i8 %13, %masksel.i38.i
  store i8 %.sink.i39.i, ptr %flags2.i.i, align 4
  br i1 %tobool.i.i36.not.i, label %if.then4.i, label %if.else.i.i.i34.i.out_replace.i_crit_edge

if.else.i.i.i34.i.out_replace.i_crit_edge:        ; preds = %if.else.i.i.i34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_replace.i

if.then4.i:                                       ; preds = %if.else.i.i.i34.i
  %14 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i42.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i42.i, label %if.then4.i.out_replace.i_crit_edge, label %if.then4.i.out_replace.sink.split.i_crit_edge

if.then4.i.out_replace.sink.split.i_crit_edge:    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_replace.sink.split.i

if.then4.i.out_replace.i_crit_edge:               ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_replace.i

out_replace.sink.split.i:                         ; preds = %if.then4.i.out_replace.sink.split.i_crit_edge, %if.then.i.out_replace.sink.split.i_crit_edge
  %.sink.i39.sink.i = phi i8 [ %.sink.i.i, %if.then.i.out_replace.sink.split.i_crit_edge ], [ %.sink.i39.i, %if.then4.i.out_replace.sink.split.i_crit_edge ]
  %and3.i43.i = and i8 %.sink.i39.sink.i, -2
  %15 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %and3.i43.i, ptr %flags2.i.i, align 4
  tail call void @synchronize_rcu() #13
  br label %out_replace.i

out_replace.i:                                    ; preds = %out_replace.sink.split.i, %if.then4.i.out_replace.i_crit_edge, %if.else.i.i.i34.i.out_replace.i_crit_edge, %if.then.i.out_replace.i_crit_edge
  %valid.0.in.i = phi i1 [ true, %if.else.i.i.i34.i.out_replace.i_crit_edge ], [ false, %if.then.i.out_replace.i_crit_edge ], [ false, %if.then4.i.out_replace.i_crit_edge ], [ false, %out_replace.sink.split.i ]
  %cpumask.i = getelementptr inbounds %struct.padata_instance, ptr %pinst, i32 0, i32 5
  %16 = ptrtoint ptr %cpumask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cpumask.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i = add i32 %18, 31
  %19 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %19, 536870908
  %20 = call ptr @memcpy(ptr %17, ptr %parallel_mask.0, i32 %mul.i.i.i)
  %cbcpu.i = getelementptr inbounds %struct.padata_instance, ptr %pinst, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %cbcpu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cbcpu.i, align 4
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i46.i = add i32 %23, 31
  %24 = lshr i32 %sub.i.i46.i, 3
  %mul.i.i47.i = and i32 %24, 536870908
  %25 = call ptr @memcpy(ptr %22, ptr %serial_mask.0, i32 %mul.i.i47.i)
  %call.i.i = tail call ptr @alloc_workqueue_attrs() #13
  %tobool.not.i48.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i48.i, label %out_replace.i.cond.end.i_crit_edge, label %padata_setup_cpumasks.exit.i

out_replace.i.cond.end.i_crit_edge:               ; preds = %out_replace.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

padata_setup_cpumasks.exit.i:                     ; preds = %out_replace.i
  %cpumask.i.i = getelementptr inbounds %struct.workqueue_attrs, ptr %call.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %cpumask.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cpumask.i.i, align 4
  %28 = ptrtoint ptr %cpumask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cpumask.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %30 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i49.i = add i32 %30, 31
  %31 = lshr i32 %sub.i.i.i49.i, 3
  %mul.i.i.i.i = and i32 %31, 536870908
  %32 = call ptr @memcpy(ptr %27, ptr %29, i32 %mul.i.i.i.i)
  %parallel_wq.i.i = getelementptr inbounds %struct.padata_instance, ptr %pinst, i32 0, i32 2
  %33 = ptrtoint ptr %parallel_wq.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parallel_wq.i.i, align 4
  %call2.i.i = tail call i32 @apply_workqueue_attrs(ptr noundef %34, ptr noundef nonnull %call.i.i) #13
  tail call void @free_workqueue_attrs(ptr noundef nonnull %call.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool8.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool8.not.i, label %cond.false.i, label %padata_setup_cpumasks.exit.i.cond.end.i_crit_edge

padata_setup_cpumasks.exit.i.cond.end.i_crit_edge: ; preds = %padata_setup_cpumasks.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.false.i:                                     ; preds = %padata_setup_cpumasks.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call9.i = tail call fastcc i32 @padata_replace(ptr noundef %pinst) #13
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %padata_setup_cpumasks.exit.i.cond.end.i_crit_edge, %out_replace.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %call9.i, %cond.false.i ], [ %call2.i.i, %padata_setup_cpumasks.exit.i.cond.end.i_crit_edge ], [ -12, %out_replace.i.cond.end.i_crit_edge ]
  br i1 %valid.0.in.i, label %if.then11.i, label %cond.end.i.out_crit_edge

cond.end.i.out_crit_edge:                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then11.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %flags2.i.i, align 4
  %37 = or i8 %36, 1
  store i8 %37, ptr %flags2.i.i, align 4
  br label %out

out:                                              ; preds = %if.then11.i, %cond.end.i.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ -22, %entry.out_crit_edge ], [ %cond.i, %cond.end.i.out_crit_edge ], [ %cond.i, %if.then11.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #13
  tail call void @cpus_read_unlock() #13
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @padata_alloc(ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 272) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef 0, ptr noundef %name) #13
  %parallel_wq = getelementptr inbounds %struct.padata_instance, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %parallel_wq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %parallel_wq, align 8
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.end.err_free_inst_crit_edge, label %if.end5

if.end.err_free_inst_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_inst

if.end5:                                          ; preds = %if.end
  tail call void @cpus_read_lock() #13
  %call6 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.4, i32 noundef 40, i32 noundef 1, ptr noundef %name) #13
  %serial_wq = getelementptr inbounds %struct.padata_instance, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %serial_wq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6, ptr %serial_wq, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %if.end5.err_put_cpus_crit_edge, label %if.end10

if.end5.err_put_cpus_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_put_cpus

if.end10:                                         ; preds = %if.end5
  %cpumask = getelementptr inbounds %struct.padata_instance, ptr %call7.i.i, i32 0, i32 5
  %call11 = tail call zeroext i1 @alloc_cpumask_var(ptr noundef %cpumask, i32 noundef 3264) #13
  br i1 %call11, label %if.end13, label %if.end10.err_free_serial_wq_crit_edge

if.end10.err_free_serial_wq_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_serial_wq

if.end13:                                         ; preds = %if.end10
  %cbcpu = getelementptr inbounds %struct.padata_instance, ptr %call7.i.i, i32 0, i32 5, i32 1
  %call15 = tail call zeroext i1 @alloc_cpumask_var(ptr noundef %cbcpu, i32 noundef 3264) #13
  br i1 %call15, label %if.end19, label %if.end13.err_free_serial_wq.sink.split_crit_edge

if.end13.err_free_serial_wq.sink.split_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_serial_wq.sink.split

if.end19:                                         ; preds = %if.end13
  %pslist = getelementptr inbounds %struct.padata_instance, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %pslist to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %pslist, ptr %pslist, align 8
  %prev.i = getelementptr inbounds %struct.padata_instance, ptr %call7.i.i, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pslist, ptr %prev.i, align 4
  %5 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cpumask, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %7, 31
  %8 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %8, 536870908
  %9 = call ptr @memcpy(ptr %6, ptr @__cpu_possible_mask, i32 %mul.i.i)
  %10 = ptrtoint ptr %cbcpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cbcpu, align 4
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i59 = add i32 %12, 31
  %13 = lshr i32 %sub.i.i59, 3
  %mul.i.i60 = and i32 %13, 536870908
  %14 = call ptr @memcpy(ptr %11, ptr @__cpu_possible_mask, i32 %mul.i.i60)
  %call.i = tail call ptr @alloc_workqueue_attrs() #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end19.err_free_masks_crit_edge, label %padata_setup_cpumasks.exit

if.end19.err_free_masks_crit_edge:                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_masks

padata_setup_cpumasks.exit:                       ; preds = %if.end19
  %cpumask.i = getelementptr inbounds %struct.workqueue_attrs, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %cpumask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cpumask.i, align 4
  %17 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cpumask, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i = add i32 %19, 31
  %20 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %20, 536870908
  %21 = call ptr @memcpy(ptr %16, ptr %18, i32 %mul.i.i.i)
  %22 = ptrtoint ptr %parallel_wq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parallel_wq, align 8
  %call2.i = tail call i32 @apply_workqueue_attrs(ptr noundef %23, ptr noundef nonnull %call.i) #13
  tail call void @free_workqueue_attrs(ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool25.not = icmp eq i32 %call2.i, 0
  br i1 %tobool25.not, label %if.end27, label %padata_setup_cpumasks.exit.err_free_masks_crit_edge

padata_setup_cpumasks.exit.err_free_masks_crit_edge: ; preds = %padata_setup_cpumasks.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_masks

if.end27:                                         ; preds = %padata_setup_cpumasks.exit
  call void @__sanitizer_cov_trace_pc() #15
  %flags.i = getelementptr inbounds %struct.padata_instance, ptr %call7.i.i, i32 0, i32 8
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags.i, align 4
  %26 = or i8 %25, 1
  store i8 %26, ptr %flags.i, align 4
  %kobj = getelementptr inbounds %struct.padata_instance, ptr %call7.i.i, i32 0, i32 6
  tail call void @kobject_init(ptr noundef %kobj, ptr noundef nonnull @padata_attr_type) #13
  %lock = getelementptr inbounds %struct.padata_instance, ptr %call7.i.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @padata_alloc.__key) #13
  %27 = load i32, ptr @hp_online, align 4
  %call.i61 = tail call i32 @__cpuhp_state_add_instance_cpuslocked(i32 noundef %27, ptr noundef nonnull %call7.i.i, i1 noundef zeroext false) #13
  %cpu_dead_node = getelementptr inbounds %struct.padata_instance, ptr %call7.i.i, i32 0, i32 1
  %call.i62 = tail call i32 @__cpuhp_state_add_instance_cpuslocked(i32 noundef 39, ptr noundef %cpu_dead_node, i1 noundef zeroext false) #13
  tail call void @cpus_read_unlock() #13
  br label %cleanup

err_free_masks:                                   ; preds = %padata_setup_cpumasks.exit.err_free_masks_crit_edge, %if.end19.err_free_masks_crit_edge
  %28 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cpumask, align 8
  tail call void @free_cpumask_var(ptr noundef %29) #13
  br label %err_free_serial_wq.sink.split

err_free_serial_wq.sink.split:                    ; preds = %err_free_masks, %if.end13.err_free_serial_wq.sink.split_crit_edge
  %.sink.in = phi ptr [ %cbcpu, %err_free_masks ], [ %cpumask, %if.end13.err_free_serial_wq.sink.split_crit_edge ]
  %30 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %30)
  %.sink = load ptr, ptr %.sink.in, align 4
  tail call void @free_cpumask_var(ptr noundef %.sink) #13
  br label %err_free_serial_wq

err_free_serial_wq:                               ; preds = %err_free_serial_wq.sink.split, %if.end10.err_free_serial_wq_crit_edge
  %31 = ptrtoint ptr %serial_wq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %serial_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %32) #13
  br label %err_put_cpus

err_put_cpus:                                     ; preds = %err_free_serial_wq, %if.end5.err_put_cpus_crit_edge
  tail call void @cpus_read_unlock() #13
  %33 = ptrtoint ptr %parallel_wq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parallel_wq, align 8
  tail call void @destroy_workqueue(ptr noundef %34) #13
  br label %err_free_inst

err_free_inst:                                    ; preds = %err_put_cpus, %if.end.err_free_inst_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %err_free_inst, %if.end27, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end27 ], [ null, %entry.cleanup_crit_edge ], [ null, %err_free_inst ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @alloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @padata_free(ptr noundef %pinst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %kobj = getelementptr inbounds %struct.padata_instance, ptr %pinst, i32 0, i32 6
  tail call void @kobject_put(ptr noundef %kobj) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @padata_alloc_shell(ptr noundef %pinst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pinst, ptr %call7.i.i, align 8
  tail call void @cpus_read_lock() #13
  %call2 = tail call fastcc ptr @padata_alloc_pd(ptr noundef nonnull %call7.i.i)
  tail call void @cpus_read_unlock() #13
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %out_free_ps, label %if.end5

if.end5:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.padata_instance, ptr %pinst, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %pd9 = getelementptr inbounds %struct.padata_shell, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %pd9 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call2, ptr %pd9, align 4
  %list = getelementptr inbounds %struct.padata_shell, ptr %call7.i.i, i32 0, i32 3
  %pslist = getelementptr inbounds %struct.padata_instance, ptr %pinst, i32 0, i32 4
  %3 = ptrtoint ptr %pslist to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pslist, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %pslist, ptr noundef %4) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_add.exit_crit_edge

if.end5.list_add.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev1.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.padata_shell, ptr %call7.i.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pslist, ptr %prev3.i.i, align 8
  %8 = ptrtoint ptr %pslist to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %pslist, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end5.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

out_free_ps:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %out_free_ps, %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %list_add.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %out_free_ps ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @padata_alloc_pd(ptr noundef %ps) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 256) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call noalias ptr @__alloc_percpu(i32 noundef 52, i32 noundef 4) #19
  %reorder_list = getelementptr inbounds %struct.parallel_data, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %reorder_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %reorder_list, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.err_free_pd_crit_edge, label %if.end6

if.end.err_free_pd_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_pd

if.end6:                                          ; preds = %if.end
  %call7 = tail call noalias ptr @__alloc_percpu(i32 noundef 100, i32 noundef 4) #19
  %squeue = getelementptr inbounds %struct.parallel_data, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %squeue to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %squeue, align 8
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end6.err_free_reorder_list_crit_edge, label %if.end11

if.end6.err_free_reorder_list_crit_edge:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_reorder_list

if.end11:                                         ; preds = %if.end6
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ps, ptr %call7.i.i, align 128
  %cpumask = getelementptr inbounds %struct.parallel_data, ptr %call7.i.i, i32 0, i32 7
  %call13 = tail call zeroext i1 @alloc_cpumask_var(ptr noundef %cpumask, i32 noundef 3264) #13
  br i1 %call13, label %if.end15, label %if.end11.err_free_squeue_crit_edge

if.end11.err_free_squeue_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_squeue

if.end15:                                         ; preds = %if.end11
  %cbcpu = getelementptr inbounds %struct.parallel_data, ptr %call7.i.i, i32 0, i32 7, i32 1
  %call17 = tail call zeroext i1 @alloc_cpumask_var(ptr noundef %cbcpu, i32 noundef 3264) #13
  %6 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpumask, align 4
  br i1 %call17, label %if.end.i.i, label %err_free_pcpu

if.end.i.i:                                       ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %cpumask22 = getelementptr inbounds %struct.padata_instance, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %cpumask22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpumask22, align 4
  %call.i.i = tail call i32 @__bitmap_and(ptr noundef %7, ptr noundef %10, ptr noundef nonnull @__cpu_online_mask, i32 noundef %8) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cbcpu28 = getelementptr inbounds %struct.padata_instance, ptr %1, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %cbcpu28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cbcpu28, align 4
  %14 = ptrtoint ptr %cbcpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cbcpu, align 8
  %call.i.i81 = tail call i32 @__bitmap_and(ptr noundef %15, ptr noundef %13, ptr noundef nonnull @__cpu_online_mask, i32 noundef %11) #13
  %16 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cpumask, align 4
  %call5.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %17) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %18)
  %cmp6.i = icmp ult i32 %call5.i, %18
  br i1 %cmp6.i, label %if.end.i.i.do.body.i_crit_edge, label %if.end.i.i.padata_init_reorder_list.exit_crit_edge

if.end.i.i.padata_init_reorder_list.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %padata_init_reorder_list.exit

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end.i.i.do.body.i_crit_edge
  %call7.i = phi i32 [ %call.i, %do.body.i.do.body.i_crit_edge ], [ %call5.i, %if.end.i.i.do.body.i_crit_edge ]
  %19 = ptrtoint ptr %reorder_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reorder_list, align 4
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call7.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %23, %21
  %24 = inttoptr i32 %add.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %24, ptr %24, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %prev.i.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.padata_list, ptr %24, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @__padata_list_init.__key, i16 noundef signext 3) #13
  %27 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cpumask, align 4
  %call.i = tail call i32 @cpumask_next(i32 noundef %call7.i, ptr noundef %28) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %29
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.padata_init_reorder_list.exit_crit_edge

do.body.i.padata_init_reorder_list.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %padata_init_reorder_list.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

padata_init_reorder_list.exit:                    ; preds = %do.body.i.padata_init_reorder_list.exit_crit_edge, %if.end.i.i.padata_init_reorder_list.exit_crit_edge
  %30 = ptrtoint ptr %cbcpu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cbcpu, align 8
  %call22.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %31) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %32 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call22.i, i32 %32)
  %cmp23.i = icmp ult i32 %call22.i, %32
  br i1 %cmp23.i, label %padata_init_reorder_list.exit.do.body.i91_crit_edge, label %padata_init_reorder_list.exit.padata_init_squeues.exit_crit_edge

padata_init_reorder_list.exit.padata_init_squeues.exit_crit_edge: ; preds = %padata_init_reorder_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %padata_init_squeues.exit

padata_init_reorder_list.exit.do.body.i91_crit_edge: ; preds = %padata_init_reorder_list.exit
  br label %do.body.i91

do.body.i91:                                      ; preds = %do.body.i91.do.body.i91_crit_edge, %padata_init_reorder_list.exit.do.body.i91_crit_edge
  %call24.i = phi i32 [ %call.i89, %do.body.i91.do.body.i91_crit_edge ], [ %call22.i, %padata_init_reorder_list.exit.do.body.i91_crit_edge ]
  %33 = ptrtoint ptr %squeue to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %squeue, align 8
  %35 = ptrtoint ptr %34 to i32
  %arrayidx.i85 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call24.i
  %36 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i85, align 4
  %add.i86 = add i32 %37, %35
  %38 = inttoptr i32 %add.i86 to ptr
  %pd3.i = getelementptr inbounds %struct.padata_serial_queue, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %pd3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i, ptr %pd3.i, align 4
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %38, align 4
  %prev.i.i.i87 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i87 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev.i.i.i87, align 4
  %lock.i.i88 = getelementptr inbounds %struct.padata_list, ptr %38, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i88, ptr noundef nonnull @.str.24, ptr noundef nonnull @__padata_list_init.__key, i16 noundef signext 3) #13
  %work.i = getelementptr inbounds %struct.padata_serial_queue, ptr %38, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #13
  %42 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.padata_serial_queue, ptr %38, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @padata_init_squeues.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry8.i = getelementptr inbounds %struct.padata_serial_queue, ptr %38, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %entry8.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %entry8.i, ptr %entry8.i, align 4
  %prev.i.i = getelementptr inbounds %struct.padata_serial_queue, ptr %38, i32 0, i32 1, i32 1, i32 1
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %entry8.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.padata_serial_queue, ptr %38, i32 0, i32 1, i32 2
  %45 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @padata_serial_worker, ptr %func.i, align 4
  %46 = ptrtoint ptr %cbcpu to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cbcpu, align 8
  %call.i89 = tail call i32 @cpumask_next(i32 noundef %call24.i, ptr noundef %47) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %48 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i90 = icmp ult i32 %call.i89, %48
  br i1 %cmp.i90, label %do.body.i91.do.body.i91_crit_edge, label %do.body.i91.padata_init_squeues.exit_crit_edge

do.body.i91.padata_init_squeues.exit_crit_edge:   ; preds = %do.body.i91
  call void @__sanitizer_cov_trace_pc() #15
  br label %padata_init_squeues.exit

do.body.i91.do.body.i91_crit_edge:                ; preds = %do.body.i91
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i91

padata_init_squeues.exit:                         ; preds = %do.body.i91.padata_init_squeues.exit_crit_edge, %padata_init_reorder_list.exit.padata_init_squeues.exit_crit_edge
  %seq_nr = getelementptr inbounds %struct.parallel_data, ptr %call7.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %seq_nr to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %seq_nr, align 16
  %refcnt = getelementptr inbounds %struct.parallel_data, ptr %call7.i.i, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  %50 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 1, ptr %refcnt, align 4
  %lock = getelementptr inbounds %struct.parallel_data, ptr %call7.i.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @padata_alloc_pd.__key, i16 noundef signext 3) #13
  %51 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cpumask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %53 = load i32, ptr @nr_cpu_ids, align 4
  %call.i92 = tail call i32 @_find_first_bit_be(ptr noundef %52, i32 noundef %53) #13
  %cpu = getelementptr inbounds %struct.parallel_data, ptr %call7.i.i, i32 0, i32 6
  %54 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call.i92, ptr %cpu, align 8
  %reorder_work = getelementptr inbounds %struct.parallel_data, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %reorder_work, i32 noundef 0) #13
  %55 = ptrtoint ptr %reorder_work to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -64, ptr %reorder_work, align 4
  %lockdep_map = getelementptr inbounds %struct.parallel_data, ptr %call7.i.i, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.23, ptr noundef nonnull @padata_alloc_pd.__key.22, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry38 = getelementptr inbounds %struct.parallel_data, ptr %call7.i.i, i32 0, i32 8, i32 1
  %56 = ptrtoint ptr %entry38 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %entry38, ptr %entry38, align 8
  %prev.i = getelementptr inbounds %struct.parallel_data, ptr %call7.i.i, i32 0, i32 8, i32 1, i32 1
  %57 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %entry38, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.parallel_data, ptr %call7.i.i, i32 0, i32 8, i32 2
  %58 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @invoke_padata_reorder, ptr %func, align 8
  br label %cleanup

err_free_pcpu:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @free_cpumask_var(ptr noundef %7) #13
  br label %err_free_squeue

err_free_squeue:                                  ; preds = %err_free_pcpu, %if.end11.err_free_squeue_crit_edge
  %59 = ptrtoint ptr %squeue to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %squeue, align 8
  tail call void @free_percpu(ptr noundef %60) #13
  br label %err_free_reorder_list

err_free_reorder_list:                            ; preds = %err_free_squeue, %if.end6.err_free_reorder_list_crit_edge
  %61 = ptrtoint ptr %reorder_list to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reorder_list, align 4
  tail call void @free_percpu(ptr noundef %62) #13
  br label %err_free_pd

err_free_pd:                                      ; preds = %err_free_reorder_list, %if.end.err_free_pd_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %err_free_pd, %padata_init_squeues.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %padata_init_squeues.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %err_free_pd ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @padata_free_shell(ptr noundef %ps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ps, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps, align 4
  %lock = getelementptr inbounds %struct.padata_instance, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %list = getelementptr inbounds %struct.padata_shell, ptr %ps, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.padata_shell, ptr %ps, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.padata_shell, ptr %ps, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %pd = getelementptr inbounds %struct.padata_shell, ptr %ps, i32 0, i32 1
  %10 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pd, align 4
  %cpumask.i = getelementptr inbounds %struct.parallel_data, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %cpumask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpumask.i, align 4
  tail call void @free_cpumask_var(ptr noundef %13) #13
  %cbcpu.i = getelementptr inbounds %struct.parallel_data, ptr %11, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %cbcpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cbcpu.i, align 4
  tail call void @free_cpumask_var(ptr noundef %15) #13
  %reorder_list.i = getelementptr inbounds %struct.parallel_data, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %reorder_list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reorder_list.i, align 4
  tail call void @free_percpu(ptr noundef %17) #13
  %squeue.i = getelementptr inbounds %struct.parallel_data, ptr %11, i32 0, i32 2
  %18 = ptrtoint ptr %squeue.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %squeue.i, align 8
  tail call void @free_percpu(ptr noundef %19) #13
  tail call void @kfree(ptr noundef %11) #13
  %20 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ps, align 4
  %lock2 = getelementptr inbounds %struct.padata_instance, ptr %21, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %lock2) #13
  tail call void @kfree(ptr noundef nonnull %ps) #13
  br label %return

return:                                           ; preds = %list_del.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @padata_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.6, i1 noundef zeroext false, ptr noundef nonnull @padata_cpu_online, ptr noundef null, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end:                                           ; preds = %entry
  store i32 %call.i, ptr @hp_online, align 4
  %call.i18 = tail call i32 @__cpuhp_setup_state(i32 noundef 39, ptr noundef nonnull @.str.7, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @padata_cpu_dead, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %cmp2 = icmp slt i32 %call.i18, 0
  br i1 %cmp2, label %if.end.remove_online_state_crit_edge, label %if.end.i.i

if.end.remove_online_state_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove_online_state

if.end.i.i:                                       ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %0) #13
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call4.i.i, i32 56) #13
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !110

kmalloc_array.exit.thread:                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store ptr null, ptr @padata_works, align 4
  br label %remove_dead_state

if.end7.i:                                        ; preds = %if.end.i.i
  %3 = extractvalue { i32, i1 } %1, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #19
  store ptr %call8.i, ptr @padata_works, align 4
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.remove_dead_state_crit_edge, label %for.cond.preheader

if.end7.i.remove_dead_state_crit_edge:            ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove_dead_state

for.cond.preheader:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp924.not = icmp eq i32 %call4.i.i, 0
  br i1 %cmp924.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %list_add.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = load ptr, ptr @padata_works, align 4
  %pw_list = getelementptr %struct.padata_work, ptr %4, i32 %i.025, i32 1
  %5 = load ptr, ptr @padata_free_works, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pw_list, ptr noundef nonnull @padata_free_works, ptr noundef %5) #13
  br i1 %call.i.i, label %if.end.i.i21, label %for.body.list_add.exit_crit_edge

for.body.list_add.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i21:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pw_list, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %pw_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %pw_list, align 4
  %prev3.i.i = getelementptr %struct.padata_work, ptr %4, i32 %i.025, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @padata_free_works, ptr %prev3.i.i, align 4
  store volatile ptr %pw_list, ptr @padata_free_works, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i21, %for.body.list_add.exit_crit_edge
  %inc = add nuw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %call4.i.i
  br i1 %exitcond.not, label %list_add.exit.cleanup_crit_edge, label %list_add.exit.for.body_crit_edge

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

remove_dead_state:                                ; preds = %if.end7.i.remove_dead_state_crit_edge, %kmalloc_array.exit.thread
  tail call void @__cpuhp_remove_state(i32 noundef 39, i1 noundef zeroext false) #13
  br label %remove_online_state

remove_online_state:                              ; preds = %remove_dead_state, %if.end.remove_online_state_crit_edge
  %9 = load i32, ptr @hp_online, align 4
  tail call void @__cpuhp_remove_state(i32 noundef %9, i1 noundef zeroext false) #13
  br label %do.end

do.end:                                           ; preds = %remove_online_state, %entry.do.end_crit_edge
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end, %list_add.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @padata_cpu_online(i32 noundef %cpu, ptr noundef %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cpumask.i = getelementptr inbounds %struct.padata_instance, ptr %node, i32 0, i32 5
  %0 = ptrtoint ptr %cpumask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpumask.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %2, %cpu
  br i1 %cmp.not.i.i.i.i, label %entry.cpumask_test_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

entry.cpumask_test_cpu.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_test_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !108

land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_test_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_test_cpu.exit.i

cpumask_test_cpu.exit.i:                          ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge, %entry.cpumask_test_cpu.exit.i_crit_edge
  %div3.i.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %1, i32 %div3.i.i.i
  %3 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %cpu, 31
  %5 = shl nuw i32 1, %and.i.i.i
  %6 = and i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %cpumask_test_cpu.exit.i.if.end_crit_edge

cpumask_test_cpu.exit.i.if.end_crit_edge:         ; preds = %cpumask_test_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.rhs.i:                                        ; preds = %cpumask_test_cpu.exit.i
  %cbcpu.i = getelementptr inbounds %struct.padata_instance, ptr %node, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %cbcpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cbcpu.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %cpu)
  %cmp.not.i.i.i6.i = icmp ugt i32 %9, %cpu
  br i1 %cmp.not.i.i.i6.i, label %lor.rhs.i.pinst_has_cpu.exit_crit_edge, label %land.rhs.i.i.i8.i

lor.rhs.i.pinst_has_cpu.exit_crit_edge:           ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pinst_has_cpu.exit

land.rhs.i.i.i8.i:                                ; preds = %lor.rhs.i
  %.b37.i.i.i7.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i7.i, label %land.rhs.i.i.i8.i.pinst_has_cpu.exit_crit_edge, label %if.then.i.i.i9.i, !prof !108

land.rhs.i.i.i8.i.pinst_has_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pinst_has_cpu.exit

if.then.i.i.i9.i:                                 ; preds = %land.rhs.i.i.i8.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %pinst_has_cpu.exit

pinst_has_cpu.exit:                               ; preds = %if.then.i.i.i9.i, %land.rhs.i.i.i8.i.pinst_has_cpu.exit_crit_edge, %lor.rhs.i.pinst_has_cpu.exit_crit_edge
  %arrayidx.i.i11.i = getelementptr i32, ptr %8, i32 %div3.i.i.i
  %10 = ptrtoint ptr %arrayidx.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i.i11.i, align 4
  %12 = and i32 %11, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not = icmp eq i32 %12, 0
  br i1 %tobool2.not, label %pinst_has_cpu.exit.cleanup_crit_edge, label %pinst_has_cpu.exit.if.end_crit_edge

pinst_has_cpu.exit.if.end_crit_edge:              ; preds = %pinst_has_cpu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

pinst_has_cpu.exit.cleanup_crit_edge:             ; preds = %pinst_has_cpu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %pinst_has_cpu.exit.if.end_crit_edge, %cpumask_test_cpu.exit.i.if.end_crit_edge
  %lock = getelementptr inbounds %struct.padata_instance, ptr %node, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %cpu)
  %cmp.not.i.i.i.i11 = icmp ugt i32 %13, %cpu
  br i1 %cmp.not.i.i.i.i11, label %if.end.cpumask_test_cpu.exit.i19_crit_edge, label %land.rhs.i.i.i.i13

if.end.cpumask_test_cpu.exit.i19_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_test_cpu.exit.i19

land.rhs.i.i.i.i13:                               ; preds = %if.end
  %.b37.i.i.i.i12 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i12, label %land.rhs.i.i.i.i13.cpumask_test_cpu.exit.i19_crit_edge, label %if.then.i.i.i.i14, !prof !108

land.rhs.i.i.i.i13.cpumask_test_cpu.exit.i19_crit_edge: ; preds = %land.rhs.i.i.i.i13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_test_cpu.exit.i19

if.then.i.i.i.i14:                                ; preds = %land.rhs.i.i.i.i13
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_test_cpu.exit.i19

cpumask_test_cpu.exit.i19:                        ; preds = %if.then.i.i.i.i14, %land.rhs.i.i.i.i13.cpumask_test_cpu.exit.i19_crit_edge, %if.end.cpumask_test_cpu.exit.i19_crit_edge
  %arrayidx.i.i.i16 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %14 = ptrtoint ptr %arrayidx.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i.i.i16, align 4
  %16 = and i32 %15, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i18 = icmp eq i32 %16, 0
  br i1 %tobool.not.i18, label %cpumask_test_cpu.exit.i19.__padata_add_cpu.exit_crit_edge, label %if.then.i

cpumask_test_cpu.exit.i19.__padata_add_cpu.exit_crit_edge: ; preds = %cpumask_test_cpu.exit.i19
  call void @__sanitizer_cov_trace_pc() #15
  br label %__padata_add_cpu.exit

if.then.i:                                        ; preds = %cpumask_test_cpu.exit.i19
  %call1.i = tail call fastcc i32 @padata_replace(ptr noundef %node) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %18 = ptrtoint ptr %cpumask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cpumask.i, align 4
  %call.i.i.i.i = tail call i32 @__bitmap_intersects(ptr noundef %19, ptr noundef nonnull @__cpu_online_mask, i32 noundef %17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %call.i.i.i.i, 0
  %flags2.i.i = getelementptr inbounds %struct.padata_instance, ptr %node, i32 0, i32 8
  %20 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags2.i.i, align 4
  %22 = and i8 %21, -5
  %masksel.i.i = select i1 %tobool.i.i.not.i, i8 4, i8 0
  %.sink.i.i = or i8 %22, %masksel.i.i
  store i8 %.sink.i.i, ptr %flags2.i.i, align 4
  br i1 %tobool.i.i.not.i, label %if.then.i.__padata_add_cpu.exit_crit_edge, label %if.else.i.i.i22.i

if.then.i.__padata_add_cpu.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__padata_add_cpu.exit

if.else.i.i.i22.i:                                ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %cbcpu.i21 = getelementptr inbounds %struct.padata_instance, ptr %node, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %cbcpu.i21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cbcpu.i21, align 4
  %call.i.i.i21.i = tail call i32 @__bitmap_intersects(ptr noundef %25, ptr noundef nonnull @__cpu_online_mask, i32 noundef %23) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i21.i)
  %tobool.i.i24.not.i = icmp eq i32 %call.i.i.i21.i, 0
  %26 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %flags2.i.i, align 4
  %28 = and i8 %27, -5
  %masksel.i26.i = select i1 %tobool.i.i24.not.i, i8 4, i8 0
  %.sink.i27.i = or i8 %28, %masksel.i26.i
  store i8 %.sink.i27.i, ptr %flags2.i.i, align 4
  br i1 %tobool.i.i24.not.i, label %if.else.i.i.i22.i.__padata_add_cpu.exit_crit_edge, label %if.then5.i

if.else.i.i.i22.i.__padata_add_cpu.exit_crit_edge: ; preds = %if.else.i.i.i22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__padata_add_cpu.exit

if.then5.i:                                       ; preds = %if.else.i.i.i22.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = or i8 %.sink.i27.i, 1
  %30 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %flags2.i.i, align 4
  br label %__padata_add_cpu.exit

__padata_add_cpu.exit:                            ; preds = %if.then5.i, %if.else.i.i.i22.i.__padata_add_cpu.exit_crit_edge, %if.then.i.__padata_add_cpu.exit_crit_edge, %cpumask_test_cpu.exit.i19.__padata_add_cpu.exit_crit_edge
  %err.0.i = phi i32 [ %call1.i, %if.then5.i ], [ %call1.i, %if.else.i.i.i22.i.__padata_add_cpu.exit_crit_edge ], [ %call1.i, %if.then.i.__padata_add_cpu.exit_crit_edge ], [ 0, %cpumask_test_cpu.exit.i19.__padata_add_cpu.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %__padata_add_cpu.exit, %pinst_has_cpu.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0.i, %__padata_add_cpu.exit ], [ 0, %pinst_has_cpu.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @padata_cpu_dead(i32 noundef %cpu, ptr noundef %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  %add.ptr = getelementptr i8, ptr %node, i32 -8
  %spec.select = select i1 %tobool.not, ptr null, ptr %add.ptr
  %cpumask.i = getelementptr inbounds %struct.padata_instance, ptr %spec.select, i32 0, i32 5
  %0 = ptrtoint ptr %cpumask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpumask.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %2, %cpu
  br i1 %cmp.not.i.i.i.i, label %entry.cpumask_test_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

entry.cpumask_test_cpu.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_test_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !108

land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_test_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_test_cpu.exit.i

cpumask_test_cpu.exit.i:                          ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge, %entry.cpumask_test_cpu.exit.i_crit_edge
  %div3.i.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %1, i32 %div3.i.i.i
  %3 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %cpu, 31
  %5 = shl nuw i32 1, %and.i.i.i
  %6 = and i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %cpumask_test_cpu.exit.i.if.end_crit_edge

cpumask_test_cpu.exit.i.if.end_crit_edge:         ; preds = %cpumask_test_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.rhs.i:                                        ; preds = %cpumask_test_cpu.exit.i
  %cbcpu.i = getelementptr inbounds %struct.padata_instance, ptr %spec.select, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %cbcpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cbcpu.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %cpu)
  %cmp.not.i.i.i6.i = icmp ugt i32 %9, %cpu
  br i1 %cmp.not.i.i.i6.i, label %lor.rhs.i.pinst_has_cpu.exit_crit_edge, label %land.rhs.i.i.i8.i

lor.rhs.i.pinst_has_cpu.exit_crit_edge:           ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pinst_has_cpu.exit

land.rhs.i.i.i8.i:                                ; preds = %lor.rhs.i
  %.b37.i.i.i7.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i7.i, label %land.rhs.i.i.i8.i.pinst_has_cpu.exit_crit_edge, label %if.then.i.i.i9.i, !prof !108

land.rhs.i.i.i8.i.pinst_has_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pinst_has_cpu.exit

if.then.i.i.i9.i:                                 ; preds = %land.rhs.i.i.i8.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %pinst_has_cpu.exit

pinst_has_cpu.exit:                               ; preds = %if.then.i.i.i9.i, %land.rhs.i.i.i8.i.pinst_has_cpu.exit_crit_edge, %lor.rhs.i.pinst_has_cpu.exit_crit_edge
  %arrayidx.i.i11.i = getelementptr i32, ptr %8, i32 %div3.i.i.i
  %10 = ptrtoint ptr %arrayidx.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i.i11.i, align 4
  %12 = and i32 %11, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not = icmp eq i32 %12, 0
  br i1 %tobool2.not, label %pinst_has_cpu.exit.cleanup_crit_edge, label %pinst_has_cpu.exit.if.end_crit_edge

pinst_has_cpu.exit.if.end_crit_edge:              ; preds = %pinst_has_cpu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

pinst_has_cpu.exit.cleanup_crit_edge:             ; preds = %pinst_has_cpu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %pinst_has_cpu.exit.if.end_crit_edge, %cpumask_test_cpu.exit.i.if.end_crit_edge
  %lock = getelementptr inbounds %struct.padata_instance, ptr %spec.select, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %cpu)
  %cmp.not.i.i.i.i11 = icmp ugt i32 %13, %cpu
  br i1 %cmp.not.i.i.i.i11, label %if.end.cpumask_test_cpu.exit.i19_crit_edge, label %land.rhs.i.i.i.i13

if.end.cpumask_test_cpu.exit.i19_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_test_cpu.exit.i19

land.rhs.i.i.i.i13:                               ; preds = %if.end
  %.b37.i.i.i.i12 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i12, label %land.rhs.i.i.i.i13.cpumask_test_cpu.exit.i19_crit_edge, label %if.then.i.i.i.i14, !prof !108

land.rhs.i.i.i.i13.cpumask_test_cpu.exit.i19_crit_edge: ; preds = %land.rhs.i.i.i.i13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_test_cpu.exit.i19

if.then.i.i.i.i14:                                ; preds = %land.rhs.i.i.i.i13
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_test_cpu.exit.i19

cpumask_test_cpu.exit.i19:                        ; preds = %if.then.i.i.i.i14, %land.rhs.i.i.i.i13.cpumask_test_cpu.exit.i19_crit_edge, %if.end.cpumask_test_cpu.exit.i19_crit_edge
  %arrayidx.i.i.i16 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %14 = ptrtoint ptr %arrayidx.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i.i.i16, align 4
  %16 = and i32 %15, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i18 = icmp eq i32 %16, 0
  br i1 %tobool.not.i18, label %if.else.i.i.i.i, label %cpumask_test_cpu.exit.i19.__padata_remove_cpu.exit_crit_edge

cpumask_test_cpu.exit.i19.__padata_remove_cpu.exit_crit_edge: ; preds = %cpumask_test_cpu.exit.i19
  call void @__sanitizer_cov_trace_pc() #15
  br label %__padata_remove_cpu.exit

if.else.i.i.i.i:                                  ; preds = %cpumask_test_cpu.exit.i19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %18 = ptrtoint ptr %cpumask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cpumask.i, align 4
  %call.i.i.i.i = tail call i32 @__bitmap_intersects(ptr noundef %19, ptr noundef nonnull @__cpu_online_mask, i32 noundef %17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %call.i.i.i.i, 0
  %flags2.i.i = getelementptr inbounds %struct.padata_instance, ptr %spec.select, i32 0, i32 8
  %20 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags2.i.i, align 4
  %22 = and i8 %21, -5
  %masksel.i.i = select i1 %tobool.i.i.not.i, i8 4, i8 0
  %.sink.i.i = or i8 %22, %masksel.i.i
  store i8 %.sink.i.i, ptr %flags2.i.i, align 4
  br i1 %tobool.i.i.not.i, label %if.else.i.i.i.i.if.then4.i_crit_edge, label %if.else.i.i.i22.i

if.else.i.i.i.i.if.then4.i_crit_edge:             ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4.i

if.else.i.i.i22.i:                                ; preds = %if.else.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %cbcpu.i21 = getelementptr inbounds %struct.padata_instance, ptr %spec.select, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %cbcpu.i21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cbcpu.i21, align 4
  %call.i.i.i21.i = tail call i32 @__bitmap_intersects(ptr noundef %25, ptr noundef nonnull @__cpu_online_mask, i32 noundef %23) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i21.i)
  %tobool.i.i24.not.i = icmp eq i32 %call.i.i.i21.i, 0
  %26 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %flags2.i.i, align 4
  %28 = and i8 %27, -5
  %masksel.i26.i = select i1 %tobool.i.i24.not.i, i8 4, i8 0
  %.sink.i27.i = or i8 %28, %masksel.i26.i
  store i8 %.sink.i27.i, ptr %flags2.i.i, align 4
  br i1 %tobool.i.i24.not.i, label %if.else.i.i.i22.i.if.then4.i_crit_edge, label %if.else.i.i.i22.i.if.end.i_crit_edge

if.else.i.i.i22.i.if.end.i_crit_edge:             ; preds = %if.else.i.i.i22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.else.i.i.i22.i.if.then4.i_crit_edge:           ; preds = %if.else.i.i.i22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i.i.i22.i.if.then4.i_crit_edge, %if.else.i.i.i.i.if.then4.i_crit_edge
  %29 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flags2.i.i, align 4
  %31 = and i8 %30, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i.i, label %if.then4.i.if.end.i_crit_edge, label %if.end.i.i

if.then4.i.if.end.i_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  %and3.i.i = and i8 %30, -2
  %32 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %and3.i.i, ptr %flags2.i.i, align 4
  tail call void @synchronize_rcu() #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i, %if.then4.i.if.end.i_crit_edge, %if.else.i.i.i22.i.if.end.i_crit_edge
  %call5.i = tail call fastcc i32 @padata_replace(ptr noundef %spec.select) #13
  br label %__padata_remove_cpu.exit

__padata_remove_cpu.exit:                         ; preds = %if.end.i, %cpumask_test_cpu.exit.i19.__padata_remove_cpu.exit_crit_edge
  %err.0.i = phi i32 [ 0, %cpumask_test_cpu.exit.i19.__padata_remove_cpu.exit_crit_edge ], [ %call5.i, %if.end.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %__padata_remove_cpu.exit, %pinst_has_cpu.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0.i, %__padata_remove_cpu.exit ], [ 0, %pinst_has_cpu.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @padata_find_next(ptr nocapture noundef %pd, i1 noundef zeroext %remove_object) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu1 = getelementptr inbounds %struct.parallel_data, ptr %pd, i32 0, i32 6
  %0 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu1, align 8
  %reorder_list = getelementptr inbounds %struct.parallel_data, ptr %pd, i32 0, i32 1
  %2 = ptrtoint ptr %reorder_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reorder_list, align 4
  %4 = ptrtoint ptr %3 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, %4
  %7 = inttoptr i32 %add to ptr
  %lock = getelementptr inbounds %struct.padata_list, ptr %7, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %7, align 4
  %cmp.i.not = icmp eq ptr %9, %7
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %seq_nr = getelementptr inbounds %struct.padata_priv, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %seq_nr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %seq_nr, align 4
  %processed = getelementptr inbounds %struct.parallel_data, ptr %pd, i32 0, i32 5
  %12 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %processed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not = icmp ne i32 %11, %13
  %remove_object.not = xor i1 %remove_object, true
  %brmerge = or i1 %cmp.not, %remove_object.not
  %.mux = select i1 %cmp.not, ptr null, ptr %9
  br i1 %brmerge, label %if.end.cleanup_crit_edge, label %if.then10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10:                                        ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then10.list_del_init.exit_crit_edge

if.then10.list_del_init.exit_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %9, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then10.list_del_init.exit_crit_edge
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %9, ptr %9, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %9, ptr %prev.i3.i, align 4
  %22 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %processed, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %processed, align 4
  %cpumask = getelementptr inbounds %struct.parallel_data, ptr %pd, i32 0, i32 7
  %24 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cpumask, align 4
  %call13 = tail call i32 @cpumask_next_wrap(i32 noundef %1, ptr noundef %25, i32 noundef -1, i1 noundef zeroext false) #13
  %26 = ptrtoint ptr %cpu1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call13, ptr %cpu1, align 8
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %.mux, %if.end.cleanup_crit_edge ], [ %9, %list_del_init.exit ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_next_wrap(i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @padata_replace(ptr noundef %pinst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.padata_instance, ptr %pinst, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 4
  %2 = or i8 %1, 2
  store i8 %2, ptr %flags, align 4
  %pslist = getelementptr inbounds %struct.padata_instance, ptr %pinst, i32 0, i32 4
  %3 = ptrtoint ptr %pslist to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn49 = load ptr, ptr %pslist, align 4
  %cmp.not50 = icmp eq ptr %.pn49, %pslist
  br i1 %cmp.not50, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %padata_replace_one.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn51 = phi ptr [ %.pn, %padata_replace_one.exit.for.body_crit_edge ], [ %.pn49, %entry.for.body_crit_edge ]
  %ps.0 = getelementptr i8, ptr %.pn51, i32 -12
  %call.i = tail call fastcc ptr @padata_alloc_pd(ptr noundef %ps.0) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.for.end_crit_edge, label %padata_replace_one.exit

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

padata_replace_one.exit:                          ; preds = %for.body
  %pd.i = getelementptr i8, ptr %.pn51, i32 -8
  %4 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pd.i, align 4
  %opd.i = getelementptr i8, ptr %.pn51, i32 -4
  %6 = ptrtoint ptr %opd.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %opd.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !113
  %7 = ptrtoint ptr %pd.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call.i, ptr %pd.i, align 4
  %8 = ptrtoint ptr %.pn51 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn51, align 4
  %cmp.not = icmp eq ptr %.pn, %pslist
  br i1 %cmp.not, label %padata_replace_one.exit.for.end_crit_edge, label %padata_replace_one.exit.for.body_crit_edge

padata_replace_one.exit.for.body_crit_edge:       ; preds = %padata_replace_one.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

padata_replace_one.exit.for.end_crit_edge:        ; preds = %padata_replace_one.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %padata_replace_one.exit.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.pn.lcssa = phi ptr [ %pslist, %entry.for.end_crit_edge ], [ %.pn51, %for.body.for.end_crit_edge ], [ %pslist, %padata_replace_one.exit.for.end_crit_edge ]
  %err.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ -12, %for.body.for.end_crit_edge ], [ 0, %padata_replace_one.exit.for.end_crit_edge ]
  tail call void @synchronize_rcu() #13
  %.pn46.in55 = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa, i32 0, i32 1
  %9 = ptrtoint ptr %.pn46.in55 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn4656 = load ptr, ptr %.pn46.in55, align 4
  %cmp16.not57 = icmp eq ptr %.pn4656, %pslist
  br i1 %cmp16.not57, label %for.end.for.end30_crit_edge, label %for.end.for.body19_crit_edge

for.end.for.body19_crit_edge:                     ; preds = %for.end
  br label %for.body19

for.end.for.end30_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end30

for.body19:                                       ; preds = %for.inc24.for.body19_crit_edge, %for.end.for.body19_crit_edge
  %.pn4658 = phi ptr [ %.pn46, %for.inc24.for.body19_crit_edge ], [ %.pn4656, %for.end.for.body19_crit_edge ]
  %opd = getelementptr i8, ptr %.pn4658, i32 -4
  %10 = ptrtoint ptr %opd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %opd, align 4
  %refcnt = getelementptr inbounds %struct.parallel_data, ptr %11, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #13, !srcloc !115
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then21, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %for.body19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.for.inc24_crit_edge, label %if.then10.i.i.i, !prof !108

if.end5.i.i.i.for.inc24_crit_edge:                ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc24

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #13
  br label %for.inc24

if.then21:                                        ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !116
  %13 = ptrtoint ptr %opd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %opd, align 4
  %cpumask.i = getelementptr inbounds %struct.parallel_data, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %cpumask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cpumask.i, align 4
  tail call void @free_cpumask_var(ptr noundef %16) #13
  %cbcpu.i = getelementptr inbounds %struct.parallel_data, ptr %14, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %cbcpu.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cbcpu.i, align 4
  tail call void @free_cpumask_var(ptr noundef %18) #13
  %reorder_list.i = getelementptr inbounds %struct.parallel_data, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %reorder_list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reorder_list.i, align 4
  tail call void @free_percpu(ptr noundef %20) #13
  %squeue.i = getelementptr inbounds %struct.parallel_data, ptr %14, i32 0, i32 2
  %21 = ptrtoint ptr %squeue.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %squeue.i, align 8
  tail call void @free_percpu(ptr noundef %22) #13
  tail call void @kfree(ptr noundef %14) #13
  br label %for.inc24

for.inc24:                                        ; preds = %if.then21, %if.then10.i.i.i, %if.end5.i.i.i.for.inc24_crit_edge
  %.pn46.in = getelementptr inbounds %struct.list_head, ptr %.pn4658, i32 0, i32 1
  %23 = ptrtoint ptr %.pn46.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn46 = load ptr, ptr %.pn46.in, align 4
  %cmp16.not = icmp eq ptr %.pn46, %pslist
  br i1 %cmp16.not, label %for.inc24.for.end30_crit_edge, label %for.inc24.for.body19_crit_edge

for.inc24.for.body19_crit_edge:                   ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body19

for.inc24.for.end30_crit_edge:                    ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end30

for.end30:                                        ; preds = %for.inc24.for.end30_crit_edge, %for.end.for.end30_crit_edge
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags, align 4
  %26 = and i8 %25, -3
  store i8 %26, ptr %flags, align 4
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue_attrs() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @apply_workqueue_attrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_workqueue_attrs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @padata_sysfs_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -40
  %cpu_dead_node.i = getelementptr i8, ptr %kobj, i32 -32
  %call.i.i = tail call i32 @__cpuhp_state_remove_instance(i32 noundef 39, ptr noundef %cpu_dead_node.i, i1 noundef zeroext false) #13
  %0 = load i32, ptr @hp_online, align 4
  %call.i32.i = tail call i32 @__cpuhp_state_remove_instance(i32 noundef %0, ptr noundef %add.ptr, i1 noundef zeroext false) #13
  %pslist.i = getelementptr i8, ptr %kobj, i32 -16
  %1 = ptrtoint ptr %pslist.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %pslist.i, align 4
  %cmp.i.not.i = icmp eq ptr %2, %pslist.i
  br i1 %cmp.i.not.i, label %entry.__padata_free.exit_crit_edge, label %do.end.i, !prof !108

entry.__padata_free.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__padata_free.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 828, i32 noundef 9, ptr noundef null) #13
  br label %__padata_free.exit

__padata_free.exit:                               ; preds = %do.end.i, %entry.__padata_free.exit_crit_edge
  %cpumask.i = getelementptr i8, ptr %kobj, i32 -8
  %3 = ptrtoint ptr %cpumask.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cpumask.i, align 4
  tail call void @free_cpumask_var(ptr noundef %4) #13
  %cbcpu.i = getelementptr i8, ptr %kobj, i32 -4
  %5 = ptrtoint ptr %cbcpu.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cbcpu.i, align 4
  tail call void @free_cpumask_var(ptr noundef %6) #13
  %serial_wq.i = getelementptr i8, ptr %kobj, i32 -20
  %7 = ptrtoint ptr %serial_wq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serial_wq.i, align 4
  tail call void @destroy_workqueue(ptr noundef %8) #13
  %parallel_wq.i = getelementptr i8, ptr %kobj, i32 -24
  %9 = ptrtoint ptr %parallel_wq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parallel_wq.i, align 4
  tail call void @destroy_workqueue(ptr noundef %10) #13
  tail call void @kfree(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @padata_sysfs_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.padata_sysfs_entry, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %kobj, i32 -40
  %call = tail call i32 %1(ptr noundef %add.ptr, ptr noundef %attr, ptr noundef %buf) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ -5, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @padata_sysfs_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.padata_sysfs_entry, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %kobj, i32 -40
  %store = getelementptr inbounds %struct.padata_sysfs_entry, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %store, align 4
  %call = tail call i32 %3(ptr noundef %add.ptr, ptr noundef %attr, ptr noundef %buf, i32 noundef %count) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ -5, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_cpumask(ptr noundef %pinst, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.padata_instance, ptr %pinst, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(15) @.str.18) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %cpumask2 = getelementptr inbounds %struct.padata_instance, ptr %pinst, i32 0, i32 5
  %cbcpu = getelementptr inbounds %struct.padata_instance, ptr %pinst, i32 0, i32 5, i32 1
  %cpumask.0.in = select i1 %tobool.not, ptr %cbcpu, ptr %cpumask2
  %2 = ptrtoint ptr %cpumask.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cpumask.0 = load ptr, ptr %cpumask.0.in, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.19, i32 noundef %3, ptr noundef %cpumask.0)
  tail call void @mutex_unlock(ptr noundef %lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call3)
  %cmp = icmp ult i32 %call3, 4096
  %cond = select i1 %cmp, i32 %call3, i32 -22
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_cpumask(ptr noundef %pinst, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %new_cpumask = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_cpumask) #13
  %0 = ptrtoint ptr %new_cpumask to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_cpumask, align 4, !annotation !117
  %call = call zeroext i1 @alloc_cpumask_var(ptr noundef nonnull %new_cpumask, i32 noundef 3264) #13
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %new_cpumask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %new_cpumask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %call1 = call i32 @bitmap_parse(ptr noundef %buf, i32 noundef %count, ptr noundef %2, i32 noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attr, align 4
  %call4 = call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(15) @.str.18) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  %6 = ptrtoint ptr %new_cpumask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_cpumask, align 4
  %call5 = call i32 @padata_set_cpumask(ptr noundef %pinst, i32 noundef %cond, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %spec.select = select i1 %tobool6.not, i32 %count, i32 %call5
  br label %out

out:                                              ; preds = %if.end3, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.out_crit_edge ], [ %spec.select, %if.end3 ]
  %8 = ptrtoint ptr %new_cpumask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %new_cpumask, align 4
  call void @free_cpumask_var(ptr noundef %9) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_cpumask) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_add_instance_cpuslocked(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @invoke_padata_reorder(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @local_bh_disable()
  %add.ptr = getelementptr i8, ptr %work, i32 -36
  tail call fastcc void @padata_reorder(ptr noundef %add.ptr)
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @padata_serial_worker(ptr noundef %serial_work) #0 align 64 {
entry:
  %local_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %local_list) #13
  %0 = getelementptr inbounds %struct.list_head, ptr %local_list, i32 0, i32 1
  %1 = ptrtoint ptr %local_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %local_list, ptr %local_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %local_list, ptr %0, align 4
  call fastcc void @local_bh_disable()
  %add.ptr = getelementptr i8, ptr %serial_work, i32 -52
  %pd1 = getelementptr i8, ptr %serial_work, i32 44
  %3 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pd1, align 4
  %lock = getelementptr i8, ptr %serial_work, i32 -44
  call void @_raw_spin_lock(ptr noundef %lock) #13
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %7 = ptrtoint ptr %local_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %local_list, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %local_list, ptr %prev.i.i, align 4
  %prev3.i.i = getelementptr i8, ptr %serial_work, i32 -48
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %0, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %local_list, ptr %10, align 4
  store volatile ptr %add.ptr, ptr %add.ptr, align 4
  store ptr %add.ptr, ptr %prev3.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock) #13
  %13 = ptrtoint ptr %local_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %local_list, align 4
  %cmp.i.not20 = icmp eq ptr %14, %local_list
  br i1 %cmp.i.not20, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %15 = phi ptr [ %27, %list_del_init.exit.while.body_crit_edge ], [ %14, %entry.while.body_crit_edge ]
  %cnt.021 = phi i32 [ %inc, %list_del_init.exit.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #13
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i19 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i19, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %15, ptr %15, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %15, ptr %prev.i3.i, align 4
  %serial10 = getelementptr inbounds %struct.padata_priv, ptr %15, i32 0, i32 6
  %24 = ptrtoint ptr %serial10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %serial10, align 4
  call void %25(ptr noundef %15) #13
  %inc = add i32 %cnt.021, 1
  %26 = ptrtoint ptr %local_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %local_list, align 4
  %cmp.i.not = icmp eq ptr %27, %local_list
  br i1 %cmp.i.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %cnt.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %inc, %list_del_init.exit.while.end_crit_edge ]
  call fastcc void @local_bh_enable()
  %refcnt = getelementptr inbounds %struct.parallel_data, ptr %4, i32 0, i32 3
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !114
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %cnt.0.lcssa, ptr elementtype(i32) %refcnt) #13, !srcloc !115
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i.i, i32 %cnt.0.lcssa)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, %cnt.0.lcssa
  br i1 %cmp.i.i, label %if.then, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %while.end
  %sub.i.i = sub i32 %asmresult.i.i.i.i.i, %cnt.0.lcssa
  %29 = or i32 %sub.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %.not.i.i = icmp sgt i32 %29, -1
  br i1 %.not.i.i, label %if.end5.i.i.if.end_crit_edge, label %if.then10.i.i, !prof !108

if.end5.i.i.if.end_crit_edge:                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then10.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #13
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !116
  %cpumask.i = getelementptr inbounds %struct.parallel_data, ptr %4, i32 0, i32 7
  %30 = ptrtoint ptr %cpumask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cpumask.i, align 4
  call void @free_cpumask_var(ptr noundef %31) #13
  %cbcpu.i = getelementptr inbounds %struct.parallel_data, ptr %4, i32 0, i32 7, i32 1
  %32 = ptrtoint ptr %cbcpu.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cbcpu.i, align 4
  call void @free_cpumask_var(ptr noundef %33) #13
  %reorder_list.i = getelementptr inbounds %struct.parallel_data, ptr %4, i32 0, i32 1
  %34 = ptrtoint ptr %reorder_list.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reorder_list.i, align 4
  call void @free_percpu(ptr noundef %35) #13
  %squeue.i = getelementptr inbounds %struct.parallel_data, ptr %4, i32 0, i32 2
  %36 = ptrtoint ptr %squeue.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %squeue.i, align 8
  call void @free_percpu(ptr noundef %37) #13
  call void @kfree(ptr noundef %4) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i, %if.end5.i.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %local_list) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { cold }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold nounwind }
attributes #21 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !65, !66, !68, !70, !72, !74, !75, !77, !79, !80, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../kernel/padata.c", i32 177, i32 7}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__ksymtab_padata_do_parallel, !5, !"__ksymtab_padata_do_parallel", i1 false, i1 false}
!5 = !{!"../kernel/padata.c", i32 226, i32 1}
!6 = !{ptr @__ksymtab_padata_do_serial, !7, !"__ksymtab_padata_do_serial", i1 false, i1 false}
!7 = !{!"../kernel/padata.c", i32 409, i32 1}
!8 = distinct !{null, !9, !"load_balance_factor", i1 false, i1 false}
!9 = !{!"../kernel/padata.c", i32 471, i32 29}
!10 = !{ptr @padata_do_multithreaded.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../kernel/padata.c", i32 490, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__ksymtab_padata_set_cpumask, !14, !"__ksymtab_padata_set_cpumask", i1 false, i1 false}
!14 = !{!"../kernel/padata.c", i32 747, i32 1}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../kernel/padata.c", i32 977, i32 39}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../kernel/padata.c", i32 984, i32 37}
!19 = !{ptr @padata_alloc.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../kernel/padata.c", i32 1007, i32 2}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__ksymtab_padata_alloc, !23, !"__ksymtab_padata_alloc", i1 false, i1 false}
!23 = !{!"../kernel/padata.c", i32 1033, i32 1}
!24 = !{ptr @__ksymtab_padata_free, !25, !"__ksymtab_padata_free", i1 false, i1 false}
!25 = !{!"../kernel/padata.c", i32 1044, i32 1}
!26 = !{ptr @__ksymtab_padata_alloc_shell, !27, !"__ksymtab_padata_alloc_shell", i1 false, i1 false}
!27 = !{!"../kernel/padata.c", i32 1083, i32 1}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../kernel/padata.c", i32 1097, i32 17}
!30 = !{ptr @__ksymtab_padata_free_shell, !31, !"__ksymtab_padata_free_shell", i1 false, i1 false}
!31 = !{!"../kernel/padata.c", i32 1102, i32 1}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/padata.c", i32 1110, i32 53}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/padata.c", i32 1116, i32 51}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/padata.c", i32 1140, i32 2}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @padata_init._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @padata_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @padata_works, !42, !"padata_works", i1 false, i1 false}
!42 = !{!"../kernel/padata.c", i32 35, i32 28}
!43 = !{ptr @hp_online, !44, !"hp_online", i1 false, i1 false}
!44 = !{!"../kernel/padata.c", i32 817, i32 25}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!47 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!51 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../kernel/padata.c", i32 34, i32 8}
!54 = !{ptr @padata_works_lock, !53, !"padata_works_lock", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!57 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @padata_work_init.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../kernel/padata.c", i32 90, i32 3}
!60 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @padata_work_init.__key.16, !62, !"__key", i1 false, i1 false}
!62 = !{!"../kernel/padata.c", i32 92, i32 3}
!63 = !{ptr @init_completion.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../include/linux/completion.h", i32 87, i32 2}
!65 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../kernel/padata.c", i32 635, i32 12}
!68 = !{ptr @padata_attr_type, !69, !"padata_attr_type", i1 false, i1 false}
!69 = !{!"../kernel/padata.c", i32 957, i32 25}
!70 = !{ptr @padata_sysfs_ops, !71, !"padata_sysfs_ops", i1 false, i1 false}
!71 = !{!"../kernel/padata.c", i32 952, i32 31}
!72 = !{ptr @padata_default_groups, !73, !"padata_default_groups", i1 false, i1 false}
!73 = !{!"../kernel/padata.c", i32 920, i32 1}
!74 = !{ptr @padata_default_group, !73, !"padata_default_group", i1 false, i1 false}
!75 = !{ptr @padata_default_attrs, !76, !"padata_default_attrs", i1 false, i1 false}
!76 = !{!"../kernel/padata.c", i32 915, i32 26}
!77 = !{ptr @.str.18, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../kernel/padata.c", i32 907, i32 1}
!79 = !{ptr @serial_cpumask_attr, !78, !"serial_cpumask_attr", i1 false, i1 false}
!80 = !{ptr @.str.19, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../kernel/padata.c", i32 867, i32 33}
!82 = !{ptr @.str.20, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../kernel/padata.c", i32 908, i32 1}
!84 = !{ptr @parallel_cpumask_attr, !83, !"parallel_cpumask_attr", i1 false, i1 false}
!85 = !{ptr @padata_alloc_pd.__key, !86, !"__key", i1 false, i1 false}
!86 = !{!"../kernel/padata.c", i32 584, i32 2}
!87 = !{ptr @.str.21, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @padata_alloc_pd.__key.22, !89, !"__key", i1 false, i1 false}
!89 = !{!"../kernel/padata.c", i32 586, i32 2}
!90 = !{ptr @.str.23, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @__padata_list_init.__key, !92, !"__key", i1 false, i1 false}
!92 = !{!"../kernel/padata.c", i32 523, i32 2}
!93 = !{ptr @.str.24, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @padata_init_squeues.__key, !95, !"__key", i1 false, i1 false}
!95 = !{!"../kernel/padata.c", i32 536, i32 3}
!96 = !{ptr @.str.25, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @padata_free_works, !98, !"padata_free_works", i1 false, i1 false}
!98 = !{!"../kernel/padata.c", i32 36, i32 8}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{!"branch_weights", i32 2000, i32 1}
!109 = !{i64 2148518717, i64 2148518749, i64 2148518778, i64 2148518812, i64 2148518843, i64 2148518866}
!110 = !{!"branch_weights", i32 1, i32 2000}
!111 = !{i64 2152739770}
!112 = !{i64 2152730802}
!113 = !{i64 2152762157}
!114 = !{i64 2148606742}
!115 = !{i64 2148521182, i64 2148521214, i64 2148521243, i64 2148521277, i64 2148521308, i64 2148521331}
!116 = !{i64 2149652942}
!117 = !{!"auto-init"}
