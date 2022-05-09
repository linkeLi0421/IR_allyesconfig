; ModuleID = '/llk/IR_all_yes/kernel/cgroup/rdma.c_pt.bc'
source_filename = "../kernel/cgroup/rdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rdmacg_uncharge\22, \22a\22\09"
module asm "\09.weak\09__crc_rdmacg_uncharge\09\09\09\09"
module asm "\09.long\09__crc_rdmacg_uncharge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdmacg_uncharge:\09\09\09\09\09"
module asm "\09.asciz \09\22rdmacg_uncharge\22\09\09\09\09\09"
module asm "__kstrtabns_rdmacg_uncharge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rdmacg_try_charge\22, \22a\22\09"
module asm "\09.weak\09__crc_rdmacg_try_charge\09\09\09\09"
module asm "\09.long\09__crc_rdmacg_try_charge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdmacg_try_charge:\09\09\09\09\09"
module asm "\09.asciz \09\22rdmacg_try_charge\22\09\09\09\09\09"
module asm "__kstrtabns_rdmacg_try_charge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rdmacg_register_device\22, \22a\22\09"
module asm "\09.weak\09__crc_rdmacg_register_device\09\09\09\09"
module asm "\09.long\09__crc_rdmacg_register_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdmacg_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22rdmacg_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_rdmacg_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rdmacg_unregister_device\22, \22a\22\09"
module asm "\09.weak\09__crc_rdmacg_unregister_device\09\09\09\09"
module asm "\09.long\09__crc_rdmacg_unregister_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdmacg_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22rdmacg_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_rdmacg_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cftype = type { [64 x i8], i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cgroup_subsys = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, %struct.idr, %struct.list_head, ptr, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rdma_cgroup = type { %struct.cgroup_subsys_state, %struct.list_head }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rdmacg_resource_pool = type { ptr, [2 x %struct.rdmacg_resource], %struct.list_head, %struct.list_head, i64, i32 }
%struct.rdmacg_resource = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.45, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%struct.llist_node = type { ptr }
%union.anon.18 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.23 }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.45 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.lockdep_map, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.69, ptr, i64, i16, i16, ptr }
%union.anon.69 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.substring_t = type { ptr, ptr }

@__kstrtab_rdmacg_uncharge = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdmacg_uncharge = external dso_local constant [0 x i8], align 1
@__ksymtab_rdmacg_uncharge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdmacg_uncharge to i32), ptr @__kstrtab_rdmacg_uncharge, ptr @__kstrtabns_rdmacg_uncharge }, section "___ksymtab+rdmacg_uncharge", align 4
@rdmacg_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rdmacg_mutex, i64 52), ptr getelementptr (i8, ptr @rdmacg_mutex, i64 52) }, ptr @rdmacg_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_rdmacg_try_charge = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdmacg_try_charge = external dso_local constant [0 x i8], align 1
@__ksymtab_rdmacg_try_charge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdmacg_try_charge to i32), ptr @__kstrtab_rdmacg_try_charge, ptr @__kstrtabns_rdmacg_try_charge }, section "___ksymtab+rdmacg_try_charge", align 4
@rdmacg_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @rdmacg_devices, ptr @rdmacg_devices }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_rdmacg_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdmacg_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_rdmacg_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdmacg_register_device to i32), ptr @__kstrtab_rdmacg_register_device, ptr @__kstrtabns_rdmacg_register_device }, section "___ksymtab+rdmacg_register_device", align 4
@__kstrtab_rdmacg_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdmacg_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_rdmacg_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdmacg_unregister_device to i32), ptr @__kstrtab_rdmacg_unregister_device, ptr @__kstrtabns_rdmacg_unregister_device }, section "___ksymtab+rdmacg_unregister_device", align 4
@rdmacg_files = internal global { [3 x %struct.cftype], [120 x i8] } { [3 x %struct.cftype] [%struct.cftype { [64 x i8] c"max\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rdmacg_resource_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rdmacg_resource_set_max, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"current\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rdmacg_resource_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rdma_cgrp_subsys = dso_local global { %struct.cgroup_subsys, [52 x i8] } { %struct.cgroup_subsys { ptr @rdmacg_css_alloc, ptr null, ptr @rdmacg_css_offline, ptr null, ptr @rdmacg_css_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, %struct.idr zeroinitializer, %struct.list_head zeroinitializer, ptr @rdmacg_files, ptr @rdmacg_files, i32 0 }, [52 x i8] zeroinitializer }, align 32
@uncharge_cg_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014Invalid device %p or rdma cgroup %p\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uncharge_cg_locked\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/cgroup/rdma.c\00", [43 x i8] zeroinitializer }, align 32
@uncharge_cg_locked._entry_ptr = internal global ptr @uncharge_cg_locked._entry, section ".printk_index", align 4
@uncharge_cg_locked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@task_css.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@css_set_lock = external dso_local global %struct.spinlock, align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/cgroup.h\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rdmacg_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rdmacg_mutex\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@rdmacg_resource_names = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.13, ptr @.str.14], [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"max\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hca_handle\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hca_object\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"=\00", [30 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant [13 x i8] c"rdmacg_mutex\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"rdmacg_devices\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 25, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"rdmacg_files\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 545, i32 22 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"rdma_cgrp_subsys\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 604, i32 22 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 176, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 695, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 723, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [26 x i8] c"../include/linux/cgroup.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 494, i32 9 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 24, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 533, i32 18 }
@___asan_gen_.65 = private unnamed_addr constant [22 x i8] c"rdmacg_resource_names\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 37, i32 20 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 517, i32 17 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 519, i32 19 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 38, i32 33 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 39, i32 33 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 438, i32 30 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [24 x i8] c"../kernel/cgroup/rdma.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 363, i32 24 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__ksymtab_rdmacg_register_device, ptr @__ksymtab_rdmacg_try_charge, ptr @__ksymtab_rdmacg_uncharge, ptr @__ksymtab_rdmacg_unregister_device, ptr @uncharge_cg_locked._entry, ptr @uncharge_cg_locked._entry_ptr, ptr @rdmacg_mutex, ptr @rdmacg_devices, ptr @rdmacg_files, ptr @rdma_cgrp_subsys, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @rdmacg_resource_names, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdmacg_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdmacg_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdmacg_files to i32), i32 456, i32 576, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdma_cgrp_subsys to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uncharge_cg_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdmacg_resource_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rdmacg_uncharge(ptr noundef %cg, ptr noundef %device, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %index)
  %cmp = icmp ugt i32 %index, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rdmacg_uncharge_hierarchy(ptr noundef %cg, ptr noundef %device, ptr noundef null, i32 noundef %index)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rdmacg_uncharge_hierarchy(ptr noundef %cg, ptr noundef %device, ptr noundef readnone %stop_cg, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @rdmacg_mutex, i32 noundef 0) #9
  %cmp.not7 = icmp eq ptr %cg, %stop_cg
  br i1 %cmp.not7, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %uncharge_cg_locked.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %p.08 = phi ptr [ %11, %uncharge_cg_locked.exit.for.body_crit_edge ], [ %cg, %entry.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %for.body.if.end.i.i_crit_edge, label %land.rhs.i.i

for.body.if.end.i.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %for.body
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @rdmacg_mutex, i32 0, i32 5), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !63

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 119, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %for.body.if.end.i.i_crit_edge
  %rpools.i.i = getelementptr inbounds %struct.rdma_cgroup, ptr %p.08, i32 0, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i.i
  %.pn.in.i.i = phi ptr [ %rpools.i.i, %if.end.i.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %1 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp26.not.i.i = icmp eq ptr %.pn.i.i, %rpools.i.i
  br i1 %cmp26.not.i.i, label %for.cond.i.i.do.end.i_crit_edge, label %for.body.i.i

for.cond.i.i.do.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %pool.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -20
  %2 = ptrtoint ptr %pool.0.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool.0.i.i, align 8
  %cmp30.i.i = icmp eq ptr %3, %device
  br i1 %cmp30.i.i, label %find_cg_rpool_locked.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

find_cg_rpool_locked.exit.i:                      ; preds = %for.body.i.i
  %pool.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -20
  %tobool.not.i = icmp eq ptr %pool.0.i.i.le, null
  br i1 %tobool.not.i, label %find_cg_rpool_locked.exit.i.do.end.i_crit_edge, label %if.end.i, !prof !63

find_cg_rpool_locked.exit.i.do.end.i_crit_edge:   ; preds = %find_cg_rpool_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %find_cg_rpool_locked.exit.i.do.end.i_crit_edge, %for.cond.i.i.do.end.i_crit_edge
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %p.08, ptr noundef %device) #12
  br label %uncharge_cg_locked.exit

if.end.i:                                         ; preds = %find_cg_rpool_locked.exit.i
  %usage.i = getelementptr %struct.rdmacg_resource_pool, ptr %pool.0.i.i.le, i32 0, i32 1, i32 %index, i32 1
  %4 = ptrtoint ptr %usage.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usage.i, align 4
  %dec.i = add i32 %5, -1
  store i32 %dec.i, ptr %usage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp slt i32 %dec.i, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.end.i.if.end48.i_crit_edge

if.end.i.if.end48.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b73.i = load i1, ptr @uncharge_cg_locked.__already_done, align 1
  br i1 %.b73.i, label %land.rhs.i.if.end48.i_crit_edge, label %if.then22.i, !prof !64

land.rhs.i.if.end48.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.then22.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @uncharge_cg_locked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 186, i32 noundef 9, ptr noundef null) #9
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then22.i, %land.rhs.i.if.end48.i_crit_edge, %if.end.i.if.end48.i_crit_edge
  %usage_sum.i = getelementptr i8, ptr %.pn.i.i, i32 20
  %6 = ptrtoint ptr %usage_sum.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %usage_sum.i, align 8
  %dec56.i = add i64 %7, -1
  store i64 %dec56.i, ptr %usage_sum.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec56.i)
  %cmp58.i = icmp eq i64 %dec56.i, 0
  br i1 %cmp58.i, label %land.lhs.true.i, label %if.end48.i.uncharge_cg_locked.exit_crit_edge

if.end48.i.uncharge_cg_locked.exit_crit_edge:     ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uncharge_cg_locked.exit

land.lhs.true.i:                                  ; preds = %if.end48.i
  %num_max_cnt.i = getelementptr i8, ptr %.pn.i.i, i32 28
  %8 = ptrtoint ptr %num_max_cnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_max_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp59.i = icmp eq i32 %9, 2
  br i1 %cmp59.i, label %if.then60.i, label %land.lhs.true.i.uncharge_cg_locked.exit_crit_edge

land.lhs.true.i.uncharge_cg_locked.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uncharge_cg_locked.exit

if.then60.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @free_cg_rpool_locked(ptr noundef nonnull %pool.0.i.i.le) #9
  br label %uncharge_cg_locked.exit

uncharge_cg_locked.exit:                          ; preds = %if.then60.i, %land.lhs.true.i.uncharge_cg_locked.exit_crit_edge, %if.end48.i.uncharge_cg_locked.exit_crit_edge, %do.end.i
  %parent.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %p.08, i32 0, i32 12
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %cmp.not = icmp eq ptr %11, %stop_cg
  br i1 %cmp.not, label %uncharge_cg_locked.exit.for.end_crit_edge, label %uncharge_cg_locked.exit.for.body_crit_edge

uncharge_cg_locked.exit.for.body_crit_edge:       ; preds = %uncharge_cg_locked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

uncharge_cg_locked.exit.for.end_crit_edge:        ; preds = %uncharge_cg_locked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %uncharge_cg_locked.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @rdmacg_mutex) #9
  %flags.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cg, i32 0, i32 7
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i4 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i4, label %if.then.i, label %for.end.css_put.exit_crit_edge

for.end.css_put.exit_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %css_put.exit

if.then.i:                                        ; preds = %for.end
  %refcnt.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cg, i32 0, i32 2
  %14 = tail call i32 @llvm.read_register.i32(metadata !53) #9
  %and.i.i.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !65
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i.i.i, label %if.then.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.rcu_read_lock.exit.i.i.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #9
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.then.i.rcu_read_lock.exit.i.i.i_crit_edge
  %18 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %refcnt.i, align 4
  %and.i.i.i.i = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i1.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i1.i.i.i, label %do.body1.i.i.i, label %if.else.i.i.i, !prof !64

do.body1.i.i.i:                                   ; preds = %rcu_read_lock.exit.i.i.i
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !66
  %21 = tail call i32 @llvm.read_register.i32(metadata !53) #9
  %and.i2.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i2.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %26, %19
  %27 = inttoptr i32 %add.i.i.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add15.i.i.i = add i32 %29, -1
  store i32 %add15.i.i.i, ptr %27, align 4
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !67
  %and.i.i.i.i.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then29.i.i.i, label %do.body1.i.i.i.do.end31.i.i.i_crit_edge, !prof !63

do.body1.i.i.i.do.end31.i.i.i_crit_edge:          ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31.i.i.i

if.then29.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end31.i.i.i

do.end31.i.i.i:                                   ; preds = %if.then29.i.i.i, %do.body1.i.i.i.do.end31.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #9, !srcloc !68
  br label %if.end48.i.i.i

if.else.i.i.i:                                    ; preds = %rcu_read_lock.exit.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cg, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %32, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %32, i32 1, i32 3, i32 1) #9
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #9, !srcloc !70
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i, label %if.then45.i.i.i, label %if.else.i.i.i.if.end48.i.i.i_crit_edge, !prof !63

if.else.i.i.i.if.end48.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i.i.i

if.then45.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i.i, align 4
  %release.i.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %release.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %release.i.i.i, align 4
  tail call void %37(ptr noundef %refcnt.i) #9
  br label %if.end48.i.i.i

if.end48.i.i.i:                                   ; preds = %if.then45.i.i.i, %if.else.i.i.i.if.end48.i.i.i_crit_edge, %do.end31.i.i.i
  %call.i3.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i3.i.i.i, label %if.end48.i.i.i.percpu_ref_put.exit.i_crit_edge, label %land.lhs.true.i6.i.i.i

if.end48.i.i.i.percpu_ref_put.exit.i_crit_edge:   ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %percpu_ref_put.exit.i

land.lhs.true.i6.i.i.i:                           ; preds = %if.end48.i.i.i
  %call1.i4.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i.i)
  %tobool.not.i5.i.i.i = icmp eq i32 %call1.i4.i.i.i, 0
  br i1 %tobool.not.i5.i.i.i, label %land.lhs.true.i6.i.i.i.percpu_ref_put.exit.i_crit_edge, label %land.lhs.true2.i8.i.i.i

land.lhs.true.i6.i.i.i.percpu_ref_put.exit.i_crit_edge: ; preds = %land.lhs.true.i6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %percpu_ref_put.exit.i

land.lhs.true2.i8.i.i.i:                          ; preds = %land.lhs.true.i6.i.i.i
  %.b4.i7.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i.i, label %land.lhs.true2.i8.i.i.i.percpu_ref_put.exit.i_crit_edge, label %if.then.i9.i.i.i

land.lhs.true2.i8.i.i.i.percpu_ref_put.exit.i_crit_edge: ; preds = %land.lhs.true2.i8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %percpu_ref_put.exit.i

if.then.i9.i.i.i:                                 ; preds = %land.lhs.true2.i8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #9
  br label %percpu_ref_put.exit.i

percpu_ref_put.exit.i:                            ; preds = %if.then.i9.i.i.i, %land.lhs.true2.i8.i.i.i.percpu_ref_put.exit.i_crit_edge, %land.lhs.true.i6.i.i.i.percpu_ref_put.exit.i_crit_edge, %if.end48.i.i.i.percpu_ref_put.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  %38 = tail call i32 @llvm.read_register.i32(metadata !53) #9
  %and.i.i.i.i.i10.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i10.i.i.i to ptr
  %preempt_count.i.i.i.i11.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %css_put.exit

css_put.exit:                                     ; preds = %percpu_ref_put.exit.i, %for.end.css_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rdmacg_try_charge(ptr nocapture noundef writeonly %rdmacg, ptr noundef %device, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %index)
  %cmp = icmp ugt i32 %index, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !53) #9
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !65
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i.i, label %if.end.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.rcu_read_lock.exit.i.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #9
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.rcu_read_lock.exit.i.i_crit_edge
  %cgroups.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 164
  %flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.end.i.i, %rcu_read_lock.exit.i.i
  %6 = ptrtoint ptr %cgroups.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %cgroups.i.i.i, align 16
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i1.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i1.i.i, label %lor.lhs.false.i.i.i, label %while.cond.i.i.task_css.exit.i.i_crit_edge

while.cond.i.i.task_css.exit.i.i_crit_edge:       ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %task_css.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %while.cond.i.i
  %call.i2.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call.i2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %lor.lhs.false4.i.i.i, label %lor.lhs.false.i.i.i.task_css.exit.i.i_crit_edge

lor.lhs.false.i.i.i.task_css.exit.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %task_css.exit.i.i

lor.lhs.false4.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %8 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %lor.lhs.false6.i.i.i, label %lor.lhs.false4.i.i.i.task_css.exit.i.i_crit_edge

lor.lhs.false4.i.i.i.task_css.exit.i.i_crit_edge: ; preds = %lor.lhs.false4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %task_css.exit.i.i

lor.lhs.false6.i.i.i:                             ; preds = %lor.lhs.false4.i.i.i
  %call7.i.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i2.i.i, label %lor.lhs.false6.i.i.i.task_css.exit.i.i_crit_edge

lor.lhs.false6.i.i.i.task_css.exit.i.i_crit_edge: ; preds = %lor.lhs.false6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %task_css.exit.i.i

land.lhs.true.i2.i.i:                             ; preds = %lor.lhs.false6.i.i.i
  %call9.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %call9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %land.lhs.true.i2.i.i.task_css.exit.i.i_crit_edge, label %land.lhs.true11.i.i.i

land.lhs.true.i2.i.i.task_css.exit.i.i_crit_edge: ; preds = %land.lhs.true.i2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %task_css.exit.i.i

land.lhs.true11.i.i.i:                            ; preds = %land.lhs.true.i2.i.i
  %.b1.i.i.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i.i.i, label %land.lhs.true11.i.i.i.task_css.exit.i.i_crit_edge, label %if.then.i3.i.i

land.lhs.true11.i.i.i.task_css.exit.i.i_crit_edge: ; preds = %land.lhs.true11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %task_css.exit.i.i

if.then.i3.i.i:                                   ; preds = %land.lhs.true11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 494, ptr noundef nonnull @.str.7) #9
  br label %task_css.exit.i.i

task_css.exit.i.i:                                ; preds = %if.then.i3.i.i, %land.lhs.true11.i.i.i.task_css.exit.i.i_crit_edge, %land.lhs.true.i2.i.i.task_css.exit.i.i_crit_edge, %lor.lhs.false6.i.i.i.task_css.exit.i.i_crit_edge, %lor.lhs.false4.i.i.i.task_css.exit.i.i_crit_edge, %lor.lhs.false.i.i.i.task_css.exit.i.i_crit_edge, %while.cond.i.i.task_css.exit.i.i_crit_edge
  %arrayidx.i.i.i = getelementptr [14 x ptr], ptr %7, i32 0, i32 11
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i.i, align 4
  %flags.i4.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %flags.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i4.i.i, align 4
  %and.i5.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5.i.i)
  %tobool.not.i6.i.i = icmp eq i32 %and.i5.i.i, 0
  br i1 %tobool.not.i6.i.i, label %if.then.i7.i.i, label %task_css.exit.i.i.while.end.i.i_crit_edge

task_css.exit.i.i.while.end.i.i_crit_edge:        ; preds = %task_css.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

if.then.i7.i.i:                                   ; preds = %task_css.exit.i.i
  %refcnt.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %11, i32 0, i32 2
  %14 = tail call i32 @llvm.read_register.i32(metadata !53) #9
  %and.i.i.i.i.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !65
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i.i.i.i.i, label %if.then.i7.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i.i

if.then.i7.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge: ; preds = %if.then.i7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i:                        ; preds = %if.then.i7.i.i
  %call1.i.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.i:                       ; preds = %land.lhs.true.i.i.i.i.i.i
  %.b4.i.i.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i.i.i, label %land.lhs.true2.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %land.lhs.true2.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #9
  br label %rcu_read_lock.exit.i.i.i.i.i

rcu_read_lock.exit.i.i.i.i.i:                     ; preds = %if.then.i.i.i.i.i.i, %land.lhs.true2.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge, %if.then.i7.i.i.rcu_read_lock.exit.i.i.i.i.i_crit_edge
  %18 = ptrtoint ptr %refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %refcnt.i.i.i, align 4
  %and.i.i.i.i.i.i = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i1.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i1.i.i.i.i.i, label %do.body1.i.i.i.i.i, label %if.else.i.i.i.i.i, !prof !64

do.body1.i.i.i.i.i:                               ; preds = %rcu_read_lock.exit.i.i.i.i.i
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !66
  %21 = tail call i32 @llvm.read_register.i32(metadata !53) #9
  %and.i2.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i2.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i8.i.i = add i32 %26, %19
  %27 = inttoptr i32 %add.i.i.i8.i.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add15.i.i.i.i.i = add i32 %29, 1
  store i32 %add15.i.i.i.i.i, ptr %27, align 4
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !67
  %and.i.i.i.i.i9.i.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i9.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i9.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.then29.i.i.i.i.i, label %do.body1.i.i.i.i.i.do.end31.i.i.i.i.i_crit_edge, !prof !63

do.body1.i.i.i.i.i.do.end31.i.i.i.i.i_crit_edge:  ; preds = %do.body1.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31.i.i.i.i.i

if.then29.i.i.i.i.i:                              ; preds = %do.body1.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end31.i.i.i.i.i

do.end31.i.i.i.i.i:                               ; preds = %if.then29.i.i.i.i.i, %do.body1.i.i.i.i.i.do.end31.i.i.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #9, !srcloc !68
  br label %if.end39.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %rcu_read_lock.exit.i.i.i.i.i
  %data.i.i.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %11, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %32, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %32, i32 1, i32 3, i32 1) #9
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 0, i32 1, ptr elementtype(i32) %32) #9, !srcloc !74
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.atomic_long_add_unless.exit.i.i.i.i.i_crit_edge, label %do.end11.i.i.i.i.i.i.i.i.i

if.else.i.i.i.i.i.atomic_long_add_unless.exit.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_long_add_unless.exit.i.i.i.i.i

do.end11.i.i.i.i.i.i.i.i.i:                       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  br label %atomic_long_add_unless.exit.i.i.i.i.i

atomic_long_add_unless.exit.i.i.i.i.i:            ; preds = %do.end11.i.i.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.atomic_long_add_unless.exit.i.i.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br label %if.end39.i.i.i.i.i

if.end39.i.i.i.i.i:                               ; preds = %atomic_long_add_unless.exit.i.i.i.i.i, %do.end31.i.i.i.i.i
  %ret.0.off0.i.i.i.i.i = phi i1 [ true, %do.end31.i.i.i.i.i ], [ %cmp.i.i.i.i.i.i.i.i, %atomic_long_add_unless.exit.i.i.i.i.i ]
  %call.i3.i.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i3.i.i.i.i.i, label %if.end39.i.i.i.i.i.css_tryget.exit.i.i_crit_edge, label %land.lhs.true.i6.i.i.i.i.i

if.end39.i.i.i.i.i.css_tryget.exit.i.i_crit_edge: ; preds = %if.end39.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %css_tryget.exit.i.i

land.lhs.true.i6.i.i.i.i.i:                       ; preds = %if.end39.i.i.i.i.i
  %call1.i4.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i.i.i.i)
  %tobool.not.i5.i.i.i.i.i = icmp eq i32 %call1.i4.i.i.i.i.i, 0
  br i1 %tobool.not.i5.i.i.i.i.i, label %land.lhs.true.i6.i.i.i.i.i.css_tryget.exit.i.i_crit_edge, label %land.lhs.true2.i8.i.i.i.i.i

land.lhs.true.i6.i.i.i.i.i.css_tryget.exit.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %css_tryget.exit.i.i

land.lhs.true2.i8.i.i.i.i.i:                      ; preds = %land.lhs.true.i6.i.i.i.i.i
  %.b4.i7.i.i.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i.i.i.i, label %land.lhs.true2.i8.i.i.i.i.i.css_tryget.exit.i.i_crit_edge, label %if.then.i9.i.i.i.i.i

land.lhs.true2.i8.i.i.i.i.i.css_tryget.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %css_tryget.exit.i.i

if.then.i9.i.i.i.i.i:                             ; preds = %land.lhs.true2.i8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #9
  br label %css_tryget.exit.i.i

css_tryget.exit.i.i:                              ; preds = %if.then.i9.i.i.i.i.i, %land.lhs.true2.i8.i.i.i.i.i.css_tryget.exit.i.i_crit_edge, %land.lhs.true.i6.i.i.i.i.i.css_tryget.exit.i.i_crit_edge, %if.end39.i.i.i.i.i.css_tryget.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  %34 = tail call i32 @llvm.read_register.i32(metadata !53) #9
  %and.i.i.i.i.i10.i.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i10.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i11.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br i1 %ret.0.off0.i.i.i.i.i, label %css_tryget.exit.i.i.while.end.i.i_crit_edge, label %do.end.i.i, !prof !64

css_tryget.exit.i.i.while.end.i.i_crit_edge:      ; preds = %css_tryget.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

do.end.i.i:                                       ; preds = %css_tryget.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !77
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %css_tryget.exit.i.i.while.end.i.i_crit_edge, %task_css.exit.i.i.while.end.i.i_crit_edge
  %call.i10.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i10.i.i, label %while.end.i.i.get_current_rdmacg.exit_crit_edge, label %land.lhs.true.i13.i.i

while.end.i.i.get_current_rdmacg.exit_crit_edge:  ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_current_rdmacg.exit

land.lhs.true.i13.i.i:                            ; preds = %while.end.i.i
  %call1.i11.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call1.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i13.i.i.get_current_rdmacg.exit_crit_edge, label %land.lhs.true2.i15.i.i

land.lhs.true.i13.i.i.get_current_rdmacg.exit_crit_edge: ; preds = %land.lhs.true.i13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_current_rdmacg.exit

land.lhs.true2.i15.i.i:                           ; preds = %land.lhs.true.i13.i.i
  %.b4.i14.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i, label %land.lhs.true2.i15.i.i.get_current_rdmacg.exit_crit_edge, label %if.then.i16.i.i

land.lhs.true2.i15.i.i.get_current_rdmacg.exit_crit_edge: ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_current_rdmacg.exit

if.then.i16.i.i:                                  ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #9
  br label %get_current_rdmacg.exit

get_current_rdmacg.exit:                          ; preds = %if.then.i16.i.i, %land.lhs.true2.i15.i.i.get_current_rdmacg.exit_crit_edge, %land.lhs.true.i13.i.i.get_current_rdmacg.exit_crit_edge, %while.end.i.i.get_current_rdmacg.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  %38 = tail call i32 @llvm.read_register.i32(metadata !53) #9
  %and.i.i.i.i.i17.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i17.i.i to ptr
  %preempt_count.i.i.i.i18.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i, align 4
  %sub.i.i.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i18.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void @mutex_lock_nested(ptr noundef nonnull @rdmacg_mutex, i32 noundef 0) #9
  %tobool.not43 = icmp eq ptr %11, null
  br i1 %tobool.not43, label %get_current_rdmacg.exit.for.end_crit_edge, label %get_current_rdmacg.exit.for.body_crit_edge

get_current_rdmacg.exit.for.body_crit_edge:       ; preds = %get_current_rdmacg.exit
  br label %for.body

get_current_rdmacg.exit.for.end_crit_edge:        ; preds = %get_current_rdmacg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.else11.for.body_crit_edge, %get_current_rdmacg.exit.for.body_crit_edge
  %p.044 = phi ptr [ %51, %if.else11.for.body_crit_edge ], [ %11, %get_current_rdmacg.exit.for.body_crit_edge ]
  %call1 = tail call fastcc ptr @get_cg_rpool_locked(ptr noundef nonnull %p.044, ptr noundef %device)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.else

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %call1 to i32
  br label %err

if.else:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.rdmacg_resource_pool, ptr %call1, i32 0, i32 1, i32 %index
  %usage = getelementptr %struct.rdmacg_resource_pool, ptr %call1, i32 0, i32 1, i32 %index, i32 1
  %43 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %usage, align 4
  %add = add i32 %44, 1
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %46)
  %cmp8 = icmp sgt i32 %add, %46
  br i1 %cmp8, label %if.else.err_crit_edge, label %if.else11

if.else.err_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.else11:                                        ; preds = %if.else
  %47 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add, ptr %usage, align 4
  %usage_sum = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %call1, i32 0, i32 4
  %48 = ptrtoint ptr %usage_sum to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %usage_sum, align 8
  %inc = add i64 %49, 1
  store i64 %inc, ptr %usage_sum, align 8
  %parent.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %p.044, i32 0, i32 12
  %50 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %parent.i, align 8
  %tobool.not = icmp eq ptr %51, null
  br i1 %tobool.not, label %if.else11.for.end_crit_edge, label %if.else11.for.body_crit_edge

if.else11.for.body_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.else11.for.end_crit_edge:                      ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.else11.for.end_crit_edge, %get_current_rdmacg.exit.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @rdmacg_mutex) #9
  %52 = ptrtoint ptr %rdmacg to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %11, ptr %rdmacg, align 4
  br label %cleanup

err:                                              ; preds = %if.else.err_crit_edge, %if.then3
  %ret.0 = phi i32 [ %42, %if.then3 ], [ -11, %if.else.err_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @rdmacg_mutex) #9
  tail call fastcc void @rdmacg_uncharge_hierarchy(ptr noundef nonnull %11, ptr noundef %device, ptr noundef nonnull %p.044, i32 noundef %index)
  br label %cleanup

cleanup:                                          ; preds = %err, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_cg_rpool_locked(ptr noundef %cg, ptr noundef %device) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @rdmacg_mutex, i32 0, i32 5), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !63

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 119, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %rpools.i = getelementptr inbounds %struct.rdma_cgroup, ptr %cg, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %rpools.i, %if.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp26.not.i = icmp eq ptr %.pn.i, %rpools.i
  br i1 %cmp26.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %pool.0.i = getelementptr i8, ptr %.pn.i, i32 -20
  %2 = ptrtoint ptr %pool.0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool.0.i, align 8
  %cmp30.i = icmp eq ptr %3, %device
  br i1 %cmp30.i, label %find_cg_rpool_locked.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

find_cg_rpool_locked.exit:                        ; preds = %for.body.i
  %pool.0.i.le = getelementptr i8, ptr %.pn.i, i32 -20
  %tobool.not = icmp eq ptr %pool.0.i.le, null
  br i1 %tobool.not, label %find_cg_rpool_locked.exit.if.end_crit_edge, label %find_cg_rpool_locked.exit.cleanup_crit_edge

find_cg_rpool_locked.exit.cleanup_crit_edge:      ; preds = %find_cg_rpool_locked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

find_cg_rpool_locked.exit.if.end_crit_edge:       ; preds = %find_cg_rpool_locked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %find_cg_rpool_locked.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 56) #13
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %device, ptr %call7.i.i, align 8
  %num_max_cnt.i.i = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %call7.i.i, i32 0, i32 5
  %arrayidx.i.i = getelementptr %struct.rdmacg_resource_pool, ptr %call7.i.i, i32 0, i32 1, i32 0
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %7)
  %cmp1.not.i.i = icmp eq i32 %7, 2147483647
  br i1 %cmp1.not.i.i, label %if.end5.set_resource_limit.exit.i_crit_edge, label %if.end10.sink.split.i.i

if.end5.set_resource_limit.exit.i_crit_edge:      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_resource_limit.exit.i

if.end10.sink.split.i.i:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %num_max_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_max_cnt.i.i, align 8
  %dec.i.i = add i32 %9, 1
  store i32 %dec.i.i, ptr %num_max_cnt.i.i, align 8
  br label %set_resource_limit.exit.i

set_resource_limit.exit.i:                        ; preds = %if.end10.sink.split.i.i, %if.end5.set_resource_limit.exit.i_crit_edge
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2147483647, ptr %arrayidx.i.i, align 4
  %arrayidx.i.1.i = getelementptr %struct.rdmacg_resource_pool, ptr %call7.i.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %12)
  %cmp1.not.i.1.i = icmp eq i32 %12, 2147483647
  br i1 %cmp1.not.i.1.i, label %set_resource_limit.exit.i.set_all_resource_max_limit.exit_crit_edge, label %if.end10.sink.split.i.1.i

set_resource_limit.exit.i.set_all_resource_max_limit.exit_crit_edge: ; preds = %set_resource_limit.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_all_resource_max_limit.exit

if.end10.sink.split.i.1.i:                        ; preds = %set_resource_limit.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %num_max_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_max_cnt.i.i, align 8
  %dec.i.1.i = add i32 %14, 1
  store i32 %dec.i.1.i, ptr %num_max_cnt.i.i, align 8
  br label %set_all_resource_max_limit.exit

set_all_resource_max_limit.exit:                  ; preds = %if.end10.sink.split.i.1.i, %set_resource_limit.exit.i.set_all_resource_max_limit.exit_crit_edge
  %15 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2147483647, ptr %arrayidx.i.1.i, align 4
  %cg_node = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %cg_node to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %cg_node, ptr %cg_node, align 4
  %prev.i = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %call7.i.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cg_node, ptr %prev.i, align 8
  %dev_node = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %call7.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %dev_node to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %dev_node, ptr %dev_node, align 4
  %prev.i22 = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %call7.i.i, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %prev.i22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev_node, ptr %prev.i22, align 8
  %prev.i23 = getelementptr inbounds %struct.rdma_cgroup, ptr %cg, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i23, align 4
  %call.i.i24 = tail call zeroext i1 @__list_add_valid(ptr noundef %cg_node, ptr noundef %21, ptr noundef %rpools.i) #9
  br i1 %call.i.i24, label %if.end.i.i, label %set_all_resource_max_limit.exit.list_add_tail.exit_crit_edge

set_all_resource_max_limit.exit.list_add_tail.exit_crit_edge: ; preds = %set_all_resource_max_limit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %set_all_resource_max_limit.exit
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %prev.i23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cg_node, ptr %prev.i23, align 4
  %23 = ptrtoint ptr %cg_node to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %rpools.i, ptr %cg_node, align 4
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev.i, align 8
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %cg_node, ptr %21, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %set_all_resource_max_limit.exit.list_add_tail.exit_crit_edge
  %rpools9 = getelementptr inbounds %struct.rdmacg_device, ptr %device, i32 0, i32 1
  %prev.i25 = getelementptr inbounds %struct.rdmacg_device, ptr %device, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i25, align 4
  %call.i.i26 = tail call zeroext i1 @__list_add_valid(ptr noundef %dev_node, ptr noundef %27, ptr noundef %rpools9) #9
  br i1 %call.i.i26, label %if.end.i.i28, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i28:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %prev.i25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev_node, ptr %prev.i25, align 4
  %29 = ptrtoint ptr %dev_node to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %rpools9, ptr %dev_node, align 4
  %30 = ptrtoint ptr %prev.i22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev.i22, align 8
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %dev_node, ptr %27, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i28, %list_add_tail.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %find_cg_rpool_locked.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %pool.0.i.le, %find_cg_rpool_locked.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ %call7.i.i, %list_add_tail.exit.cleanup_crit_edge ], [ %call7.i.i, %if.end.i.i28 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rdmacg_register_device(ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %device, ptr %device, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %device, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %device, ptr %prev.i, align 4
  %rpools = getelementptr inbounds %struct.rdmacg_device, ptr %device, i32 0, i32 1
  %2 = ptrtoint ptr %rpools to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %rpools, ptr %rpools, align 4
  %prev.i4 = getelementptr inbounds %struct.rdmacg_device, ptr %device, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rpools, ptr %prev.i4, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @rdmacg_mutex, i32 noundef 0) #9
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @rdmacg_devices, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device, ptr noundef %4, ptr noundef nonnull @rdmacg_devices) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %device, ptr getelementptr inbounds (%struct.list_head, ptr @rdmacg_devices, i32 0, i32 1), align 4
  %5 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rdmacg_devices, ptr %device, align 4
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %prev.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %device, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @rdmacg_mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rdmacg_unregister_device(ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @rdmacg_mutex, i32 noundef 0) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %device, ptr %device, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %device, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %device, ptr %prev.i3.i, align 4
  %rpools = getelementptr inbounds %struct.rdmacg_device, ptr %device, i32 0, i32 1
  %8 = ptrtoint ptr %rpools to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rpools, align 4
  %cmp.not20 = icmp eq ptr %9, %rpools
  br i1 %cmp.not20, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_del_init.exit.for.body_crit_edge
  %.pn.in21 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %9, %list_del_init.exit.for.body_crit_edge ]
  %rpool.0 = getelementptr i8, ptr %.pn.in21, i32 -28
  %10 = ptrtoint ptr %.pn.in21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn.in21, align 4
  tail call fastcc void @free_cg_rpool_locked(ptr noundef %rpool.0)
  %cmp.not = icmp eq ptr %.pn, %rpools
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_del_init.exit.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @rdmacg_mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_cg_rpool_locked(ptr noundef %rpool) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @rdmacg_mutex, i32 0, i32 5), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !63

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 105, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %cg_node = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %rpool, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cg_node) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %rpool, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %cg_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cg_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %7 = ptrtoint ptr %cg_node to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %cg_node, align 4
  %prev.i = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %rpool, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %dev_node = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %rpool, i32 0, i32 3
  %call.i.i27 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_node) #9
  br i1 %call.i.i27, label %if.end.i.i30, label %list_del.exit.list_del.exit32_crit_edge

list_del.exit.list_del.exit32_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit32

if.end.i.i30:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i28 = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %rpool, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i.i28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i28, align 4
  %11 = ptrtoint ptr %dev_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_node, align 4
  %prev1.i.i.i29 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i29, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit32

list_del.exit32:                                  ; preds = %if.end.i.i30, %list_del.exit.list_del.exit32_crit_edge
  %15 = ptrtoint ptr %dev_node to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_node, align 4
  %prev.i31 = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %rpool, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev.i31 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i31, align 4
  tail call void @kfree(ptr noundef %rpool) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rdmacg_css_alloc(ptr nocapture noundef readnone %parent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 176) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rpools = getelementptr inbounds %struct.rdma_cgroup, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %rpools to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %rpools, ptr %rpools, align 8
  %prev.i = getelementptr inbounds %struct.rdma_cgroup, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rpools, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rdmacg_css_offline(ptr noundef readonly %css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @rdmacg_mutex, i32 noundef 0) #9
  %rpools = getelementptr inbounds %struct.rdma_cgroup, ptr %css, i32 0, i32 1
  %0 = ptrtoint ptr %rpools to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn10 = load ptr, ptr %rpools, align 4
  %cmp.not11 = icmp eq ptr %.pn10, %rpools
  br i1 %cmp.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %set_all_resource_max_limit.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn12 = phi ptr [ %.pn, %set_all_resource_max_limit.exit.for.body_crit_edge ], [ %.pn10, %entry.for.body_crit_edge ]
  %num_max_cnt.i.i = getelementptr i8, ptr %.pn12, i32 28
  %arrayidx.i.i = getelementptr i8, ptr %.pn12, i32 -16
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %2)
  %cmp1.not.i.i = icmp eq i32 %2, 2147483647
  br i1 %cmp1.not.i.i, label %for.body.set_resource_limit.exit.i_crit_edge, label %if.end10.sink.split.i.i

for.body.set_resource_limit.exit.i_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_resource_limit.exit.i

if.end10.sink.split.i.i:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %num_max_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_max_cnt.i.i, align 8
  %dec.i.i = add i32 %4, 1
  store i32 %dec.i.i, ptr %num_max_cnt.i.i, align 8
  br label %set_resource_limit.exit.i

set_resource_limit.exit.i:                        ; preds = %if.end10.sink.split.i.i, %for.body.set_resource_limit.exit.i_crit_edge
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2147483647, ptr %arrayidx.i.i, align 4
  %arrayidx.i.1.i = getelementptr i8, ptr %.pn12, i32 -8
  %6 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %7)
  %cmp1.not.i.1.i = icmp eq i32 %7, 2147483647
  br i1 %cmp1.not.i.1.i, label %set_resource_limit.exit.i.set_all_resource_max_limit.exit_crit_edge, label %if.end10.sink.split.i.1.i

set_resource_limit.exit.i.set_all_resource_max_limit.exit_crit_edge: ; preds = %set_resource_limit.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_all_resource_max_limit.exit

if.end10.sink.split.i.1.i:                        ; preds = %set_resource_limit.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %num_max_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_max_cnt.i.i, align 8
  %dec.i.1.i = add i32 %9, 1
  store i32 %dec.i.1.i, ptr %num_max_cnt.i.i, align 8
  br label %set_all_resource_max_limit.exit

set_all_resource_max_limit.exit:                  ; preds = %if.end10.sink.split.i.1.i, %set_resource_limit.exit.i.set_all_resource_max_limit.exit_crit_edge
  %10 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2147483647, ptr %arrayidx.i.1.i, align 4
  %11 = ptrtoint ptr %.pn12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn12, align 4
  %cmp.not = icmp eq ptr %.pn, %rpools
  br i1 %cmp.not, label %set_all_resource_max_limit.exit.for.end_crit_edge, label %set_all_resource_max_limit.exit.for.body_crit_edge

set_all_resource_max_limit.exit.for.body_crit_edge: ; preds = %set_all_resource_max_limit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

set_all_resource_max_limit.exit.for.end_crit_edge: ; preds = %set_all_resource_max_limit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %set_all_resource_max_limit.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @rdmacg_mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rdmacg_css_free(ptr noundef %css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %css) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdmacg_resource_read(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #9
  tail call void @mutex_lock_nested(ptr noundef nonnull @rdmacg_mutex, i32 noundef 0) #9
  %device.016 = load ptr, ptr @rdmacg_devices, align 4
  %cmp.not17 = icmp eq ptr %device.016, @rdmacg_devices
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rpools.i = getelementptr inbounds %struct.rdma_cgroup, ptr %call.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %print_rpool_values.exit.for.body_crit_edge, %for.body.lr.ph
  %device.018 = phi ptr [ %device.016, %for.body.lr.ph ], [ %device.0, %print_rpool_values.exit.for.body_crit_edge ]
  %name = getelementptr inbounds %struct.rdmacg_device, ptr %device.018, i32 0, i32 2
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.10, ptr noundef %3) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %for.body.for.cond.i.preheader_crit_edge, label %land.rhs.i

for.body.for.cond.i.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

land.rhs.i:                                       ; preds = %for.body
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @rdmacg_mutex, i32 0, i32 5), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.for.cond.i.preheader_crit_edge, !prof !63

land.rhs.i.for.cond.i.preheader_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 119, i32 noundef 9, ptr noundef null) #9
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %do.end.i, %land.rhs.i.for.cond.i.preheader_crit_edge, %for.body.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ %rpools.i, %for.cond.i.preheader ]
  %5 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp26.not.i = icmp eq ptr %.pn.i, %rpools.i
  br i1 %cmp26.not.i, label %for.cond.i.find_cg_rpool_locked.exit_crit_edge, label %for.body.i

for.cond.i.find_cg_rpool_locked.exit_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %find_cg_rpool_locked.exit

for.body.i:                                       ; preds = %for.cond.i
  %pool.0.i = getelementptr i8, ptr %.pn.i, i32 -20
  %6 = ptrtoint ptr %pool.0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pool.0.i, align 8
  %cmp30.i = icmp eq ptr %7, %device.018
  br i1 %cmp30.i, label %find_cg_rpool_locked.exit.split.loop.exit20, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

find_cg_rpool_locked.exit.split.loop.exit20:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pool.0.i.le = getelementptr i8, ptr %.pn.i, i32 -20
  br label %find_cg_rpool_locked.exit

find_cg_rpool_locked.exit:                        ; preds = %find_cg_rpool_locked.exit.split.loop.exit20, %for.cond.i.find_cg_rpool_locked.exit_crit_edge
  %retval.0.i = phi ptr [ %pool.0.i.le, %find_cg_rpool_locked.exit.split.loop.exit20 ], [ null, %for.cond.i.find_cg_rpool_locked.exit_crit_edge ]
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %priv.i.i.i = getelementptr inbounds %struct.kernfs_node, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i.i.i, align 8
  %private.i13 = getelementptr inbounds %struct.cftype, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %private.i13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %private.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1.i = icmp eq i32 %15, 0
  %tobool5.not.i = icmp eq ptr %retval.0.i, null
  %16 = load ptr, ptr @rdmacg_resource_names, align 4
  tail call void @seq_puts(ptr noundef %sf, ptr noundef %16) #9
  tail call void @seq_putc(ptr noundef %sf, i8 noundef zeroext 61) #9
  br i1 %cmp1.i, label %if.then.i, label %if.else4.i

if.then.i:                                        ; preds = %find_cg_rpool_locked.exit
  br i1 %tobool5.not.i, label %if.then.i.if.then13.i_crit_edge, label %if.then2.i

if.then.i.if.then13.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx3.i = getelementptr %struct.rdmacg_resource_pool, ptr %retval.0.i, i32 0, i32 1, i32 0
  br label %if.end11.i

if.else4.i:                                       ; preds = %find_cg_rpool_locked.exit
  br i1 %tobool5.not.i, label %if.else4.i.if.else14.i_crit_edge, label %if.then6.i

if.else4.i.if.else14.i_crit_edge:                 ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else14.i

if.then6.i:                                       ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #11
  %usage.i = getelementptr %struct.rdmacg_resource_pool, ptr %retval.0.i, i32 0, i32 1, i32 0, i32 1
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then6.i, %if.then2.i
  %value.0.in.i = phi ptr [ %arrayidx3.i, %if.then2.i ], [ %usage.i, %if.then6.i ]
  %17 = ptrtoint ptr %value.0.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %value.0.i = load i32, ptr %value.0.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %value.0.i)
  %cmp12.i = icmp eq i32 %value.0.i, 2147483647
  br i1 %cmp12.i, label %if.end11.i.if.then13.i_crit_edge, label %if.end11.i.if.else14.i_crit_edge

if.end11.i.if.else14.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else14.i

if.end11.i.if.then13.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

if.then13.i:                                      ; preds = %if.end11.i.if.then13.i_crit_edge, %if.then.i.if.then13.i_crit_edge
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.11) #9
  br label %if.end15.i

if.else14.i:                                      ; preds = %if.end11.i.if.else14.i_crit_edge, %if.else4.i.if.else14.i_crit_edge
  %value.034.i = phi i32 [ %value.0.i, %if.end11.i.if.else14.i_crit_edge ], [ 0, %if.else4.i.if.else14.i_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.12, i32 noundef %value.034.i) #9
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.else14.i, %if.then13.i
  tail call void @seq_putc(ptr noundef %sf, i8 noundef zeroext 32) #9
  %18 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @rdmacg_resource_names, i32 0, i32 1), align 4
  tail call void @seq_puts(ptr noundef %sf, ptr noundef %18) #9
  tail call void @seq_putc(ptr noundef %sf, i8 noundef zeroext 61) #9
  br i1 %cmp1.i, label %if.then.1.i, label %if.else4.1.i

if.else4.1.i:                                     ; preds = %if.end15.i
  br i1 %tobool5.not.i, label %if.else4.1.i.if.else14.1.i_crit_edge, label %if.then6.1.i

if.else4.1.i.if.else14.1.i_crit_edge:             ; preds = %if.else4.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else14.1.i

if.then6.1.i:                                     ; preds = %if.else4.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %usage.1.i = getelementptr %struct.rdmacg_resource_pool, ptr %retval.0.i, i32 0, i32 1, i32 1, i32 1
  br label %if.end11.1.i

if.then.1.i:                                      ; preds = %if.end15.i
  br i1 %tobool5.not.i, label %if.then.1.i.if.then13.1.i_crit_edge, label %if.then2.1.i

if.then.1.i.if.then13.1.i_crit_edge:              ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.1.i

if.then2.1.i:                                     ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx3.1.i = getelementptr %struct.rdmacg_resource_pool, ptr %retval.0.i, i32 0, i32 1, i32 1
  br label %if.end11.1.i

if.end11.1.i:                                     ; preds = %if.then2.1.i, %if.then6.1.i
  %value.0.in.1.i = phi ptr [ %arrayidx3.1.i, %if.then2.1.i ], [ %usage.1.i, %if.then6.1.i ]
  %19 = ptrtoint ptr %value.0.in.1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %value.0.1.i = load i32, ptr %value.0.in.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %value.0.1.i)
  %cmp12.1.i = icmp eq i32 %value.0.1.i, 2147483647
  br i1 %cmp12.1.i, label %if.end11.1.i.if.then13.1.i_crit_edge, label %if.end11.1.i.if.else14.1.i_crit_edge

if.end11.1.i.if.else14.1.i_crit_edge:             ; preds = %if.end11.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else14.1.i

if.end11.1.i.if.then13.1.i_crit_edge:             ; preds = %if.end11.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.1.i

if.else14.1.i:                                    ; preds = %if.end11.1.i.if.else14.1.i_crit_edge, %if.else4.1.i.if.else14.1.i_crit_edge
  %value.034.1.i = phi i32 [ %value.0.1.i, %if.end11.1.i.if.else14.1.i_crit_edge ], [ 0, %if.else4.1.i.if.else14.1.i_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.12, i32 noundef %value.034.1.i) #9
  br label %print_rpool_values.exit

if.then13.1.i:                                    ; preds = %if.end11.1.i.if.then13.1.i_crit_edge, %if.then.1.i.if.then13.1.i_crit_edge
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.11) #9
  br label %print_rpool_values.exit

print_rpool_values.exit:                          ; preds = %if.then13.1.i, %if.else14.1.i
  tail call void @seq_putc(ptr noundef %sf, i8 noundef zeroext 32) #9
  tail call void @seq_putc(ptr noundef %sf, i8 noundef zeroext 10) #9
  %20 = ptrtoint ptr %device.018 to i32
  call void @__asan_load4_noabort(i32 %20)
  %device.0 = load ptr, ptr %device.018, align 4
  %cmp.not = icmp eq ptr %device.0, @rdmacg_devices
  br i1 %cmp.not, label %print_rpool_values.exit.for.end_crit_edge, label %print_rpool_values.exit.for.body_crit_edge

print_rpool_values.exit.for.body_crit_edge:       ; preds = %print_rpool_values.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

print_rpool_values.exit.for.end_crit_edge:        ; preds = %print_rpool_values.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %print_rpool_values.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @rdmacg_mutex) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdmacg_resource_set_max(ptr noundef %of, ptr noundef %buf, i32 noundef %nbytes, i64 noundef %off) #0 align 64 {
entry:
  %argstr.i.i = alloca %struct.substring_t, align 4
  %value.i.i = alloca ptr, align 4
  %options.addr.i = alloca ptr, align 4
  %intval.i = alloca i32, align 4
  %options = alloca ptr, align 4
  %enables = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_css(ptr noundef %of) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options) #9
  %call.i = tail call ptr @strim(ptr noundef %buf) #9
  %0 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %options, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enables) #9
  %1 = ptrtoint ptr %enables to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %enables, align 4
  %call3 = call ptr @strsep(ptr noundef nonnull %options, ptr noundef nonnull @.str.15) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.err.thread_crit_edge, label %if.end

entry.err.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.thread

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 8) #13
  %tobool5.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not, label %if.end.err.thread_crit_edge, label %if.end7

if.end.err.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.thread

if.end7:                                          ; preds = %if.end
  %3 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %options, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options.addr.i)
  %5 = ptrtoint ptr %options.addr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %options.addr.i, align 4
  %call14.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.15) #9
  %cmp.not15.i = icmp eq ptr %call14.i, null
  br i1 %cmp.not15.i, label %if.end7.if.end11_crit_edge, label %while.body.lr.ph.i

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

while.body.lr.ph.i:                               ; preds = %if.end7
  %6 = getelementptr inbounds %struct.substring_t, ptr %argstr.i.i, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call16.i = phi ptr [ %call14.i, %while.body.lr.ph.i ], [ %call.i42, %cleanup.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intval.i) #9
  %7 = ptrtoint ptr %intval.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %intval.i, align 4, !annotation !78
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %argstr.i.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #9
  %8 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call16.i, ptr %value.i.i, align 4
  %call.i.i = call ptr @strsep(ptr noundef nonnull %value.i.i, ptr noundef nonnull @.str.16) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %while.body.i.err.thread55_crit_edge, label %lor.lhs.false.i.i

while.body.i.err.thread55_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.thread55

lor.lhs.false.i.i:                                ; preds = %while.body.i
  %9 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %value.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.err.thread55_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.err.thread55_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.thread55

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %call2.i.i = call i32 @match_string(ptr noundef nonnull @rdmacg_resource_names, i32 noundef 2, ptr noundef nonnull %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.err.thread55_crit_edge, label %if.end4.i.i

if.end.i.i.err.thread55_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.thread55

if.end4.i.i:                                      ; preds = %if.end.i.i
  %11 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %value.i.i, align 4
  %call5.i.i = call i32 @strlen(ptr noundef %12) #14
  %13 = ptrtoint ptr %argstr.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %argstr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %call5.i.i
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i.i, ptr %6, align 4
  %call6.i.i = call i32 @match_int(ptr noundef nonnull %argstr.i.i, ptr noundef nonnull %intval.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6.i.i)
  %cmp7.i.i = icmp sgt i32 %call6.i.i, -1
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.end12.i.i

if.then8.i.i:                                     ; preds = %if.end4.i.i
  %15 = ptrtoint ptr %intval.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %intval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp9.i.i = icmp slt i32 %16, 0
  br i1 %cmp9.i.i, label %if.then8.i.i.err.thread55_crit_edge, label %if.then8.i.i.cleanup.i_crit_edge

if.then8.i.i.cleanup.i_crit_edge:                 ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.then8.i.i.err.thread55_crit_edge:              ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.thread55

if.end12.i.i:                                     ; preds = %if.end4.i.i
  %17 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %value.i.i, align 4
  %call13.i.i = call i32 @strncmp(ptr noundef %18, ptr noundef nonnull @.str.11, i32 noundef %call5.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %cmp14.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %cmp14.i.i, label %if.then15.i.i, label %if.end12.i.i.err.thread55_crit_edge

if.end12.i.i.err.thread55_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.thread55

if.then15.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %intval.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2147483647, ptr %intval.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then15.i.i, %if.then8.i.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %argstr.i.i) #9
  %20 = ptrtoint ptr %intval.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %intval.i, align 4
  %arrayidx.i = getelementptr i32, ptr %call7.i.i.i, i32 %call2.i.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %shl.i = shl nuw i32 1, %call2.i.i
  %23 = ptrtoint ptr %enables to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %enables, align 4
  %or.i = or i32 %24, %shl.i
  store i32 %or.i, ptr %enables, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intval.i) #9
  %call.i42 = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.15) #9
  %cmp.not.i = icmp eq ptr %call.i42, null
  br i1 %cmp.not.i, label %cleanup.i.if.end11_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

cleanup.i.if.end11_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

err.thread55:                                     ; preds = %if.end12.i.i.err.thread55_crit_edge, %if.then8.i.i.err.thread55_crit_edge, %if.end.i.i.err.thread55_crit_edge, %lor.lhs.false.i.i.err.thread55_crit_edge, %while.body.i.err.thread55_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %argstr.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intval.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %err.thread

if.end11:                                         ; preds = %cleanup.i.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  call void @mutex_lock_nested(ptr noundef nonnull @rdmacg_mutex, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %25 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.end11.for.cond.i.preheader_crit_edge, label %land.rhs.i

if.end11.for.cond.i.preheader_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

land.rhs.i:                                       ; preds = %if.end11
  %call.i.i43 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @rdmacg_mutex, i32 0, i32 5), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i43)
  %cmp.not.i44 = icmp eq i32 %call.i.i43, 0
  br i1 %cmp.not.i44, label %do.end.i, label %land.rhs.i.for.cond.i.preheader_crit_edge, !prof !63

land.rhs.i.for.cond.i.preheader_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 416, i32 noundef 9, ptr noundef null) #9
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %do.end.i, %land.rhs.i.for.cond.i.preheader_crit_edge, %if.end11.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %device.0.in.i = phi ptr [ %device.0.i, %for.body.i.for.cond.i_crit_edge ], [ @rdmacg_devices, %for.cond.i.preheader ]
  %26 = ptrtoint ptr %device.0.in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %device.0.i = load ptr, ptr %device.0.in.i, align 4
  %cmp25.not.i = icmp eq ptr %device.0.i, @rdmacg_devices
  br i1 %cmp25.not.i, label %for.cond.i.err_crit_edge, label %for.body.i

for.cond.i.err_crit_edge:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

for.body.i:                                       ; preds = %for.cond.i
  %name28.i = getelementptr inbounds %struct.rdmacg_device, ptr %device.0.i, i32 0, i32 2
  %27 = ptrtoint ptr %name28.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name28.i, align 4
  %call29.i = call i32 @strcmp(ptr noundef nonnull %call3, ptr noundef %28) #14
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %rdmacg_get_device_locked.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

rdmacg_get_device_locked.exit:                    ; preds = %for.body.i
  %tobool13.not = icmp eq ptr %device.0.i, null
  br i1 %tobool13.not, label %rdmacg_get_device_locked.exit.err_crit_edge, label %if.end15

rdmacg_get_device_locked.exit.err_crit_edge:      ; preds = %rdmacg_get_device_locked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end15:                                         ; preds = %rdmacg_get_device_locked.exit
  %call16 = call fastcc ptr @get_cg_rpool_locked(ptr noundef %call, ptr noundef nonnull %device.0.i)
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %call16 to i32
  br label %err

if.end20:                                         ; preds = %if.end15
  %call21 = call i32 @_find_next_bit_be(ptr noundef nonnull %enables, i32 noundef 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call21)
  %cmp59 = icmp slt i32 %call21, 2
  br i1 %cmp59, label %for.body.lr.ph, label %if.end20.for.end_crit_edge

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end20
  %num_max_cnt.i = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %call16, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %set_resource_limit.exit.for.body_crit_edge, %for.body.lr.ph
  %i.060 = phi i32 [ %call21, %for.body.lr.ph ], [ %call22, %set_resource_limit.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %call7.i.i.i, i32 %i.060
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %31)
  %cmp.i47 = icmp eq i32 %31, 2147483647
  %arrayidx.i48 = getelementptr %struct.rdmacg_resource_pool, ptr %call16, i32 0, i32 1, i32 %i.060
  %32 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %33)
  %cmp1.not.i = icmp eq i32 %33, 2147483647
  br i1 %cmp.i47, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  br i1 %cmp1.not.i, label %if.then.i.set_resource_limit.exit_crit_edge, label %if.then.i.if.end10.sink.split.i_crit_edge

if.then.i.if.end10.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.sink.split.i

if.then.i.set_resource_limit.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_resource_limit.exit

if.else.i:                                        ; preds = %for.body
  br i1 %cmp1.not.i, label %if.else.i.if.end10.sink.split.i_crit_edge, label %if.else.i.set_resource_limit.exit_crit_edge

if.else.i.set_resource_limit.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_resource_limit.exit

if.else.i.if.end10.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.sink.split.i

if.end10.sink.split.i:                            ; preds = %if.else.i.if.end10.sink.split.i_crit_edge, %if.then.i.if.end10.sink.split.i_crit_edge
  %.sink21.i = phi i32 [ 1, %if.then.i.if.end10.sink.split.i_crit_edge ], [ -1, %if.else.i.if.end10.sink.split.i_crit_edge ]
  %34 = ptrtoint ptr %num_max_cnt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_max_cnt.i, align 8
  %dec.i = add i32 %35, %.sink21.i
  store i32 %dec.i, ptr %num_max_cnt.i, align 8
  br label %set_resource_limit.exit

set_resource_limit.exit:                          ; preds = %if.end10.sink.split.i, %if.else.i.set_resource_limit.exit_crit_edge, %if.then.i.set_resource_limit.exit_crit_edge
  %36 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %31, ptr %arrayidx.i48, align 4
  %add = add nsw i32 %i.060, 1
  %call22 = call i32 @_find_next_bit_be(ptr noundef nonnull %enables, i32 noundef 2, i32 noundef %add) #9
  %cmp = icmp slt i32 %call22, 2
  br i1 %cmp, label %set_resource_limit.exit.for.body_crit_edge, label %set_resource_limit.exit.for.end_crit_edge

set_resource_limit.exit.for.end_crit_edge:        ; preds = %set_resource_limit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

set_resource_limit.exit.for.body_crit_edge:       ; preds = %set_resource_limit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %set_resource_limit.exit.for.end_crit_edge, %if.end20.for.end_crit_edge
  %usage_sum = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %call16, i32 0, i32 4
  %37 = ptrtoint ptr %usage_sum to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %usage_sum, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %cmp23 = icmp eq i64 %38, 0
  br i1 %cmp23, label %land.lhs.true, label %for.end.err_crit_edge

for.end.err_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

land.lhs.true:                                    ; preds = %for.end
  %num_max_cnt = getelementptr inbounds %struct.rdmacg_resource_pool, ptr %call16, i32 0, i32 5
  %39 = ptrtoint ptr %num_max_cnt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_max_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp24 = icmp eq i32 %40, 2
  br i1 %cmp24, label %if.then25, label %land.lhs.true.err_crit_edge

land.lhs.true.err_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @free_cg_rpool_locked(ptr noundef %call16)
  br label %err

err:                                              ; preds = %if.then25, %land.lhs.true.err_crit_edge, %for.end.err_crit_edge, %if.then18, %rdmacg_get_device_locked.exit.err_crit_edge, %for.cond.i.err_crit_edge
  %ret.0 = phi i32 [ %29, %if.then18 ], [ 0, %if.then25 ], [ 0, %land.lhs.true.err_crit_edge ], [ 0, %for.end.err_crit_edge ], [ -19, %rdmacg_get_device_locked.exit.err_crit_edge ], [ -19, %for.cond.i.err_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @rdmacg_mutex) #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool27.not = icmp eq i32 %ret.0, 0
  %spec.select = select i1 %tobool27.not, i32 %nbytes, i32 %ret.0
  br label %err.thread

err.thread:                                       ; preds = %err, %err.thread55, %if.end.err.thread_crit_edge, %entry.err.thread_crit_edge
  %41 = phi i32 [ -22, %err.thread55 ], [ -12, %if.end.err.thread_crit_edge ], [ -22, %entry.err.thread_crit_edge ], [ %spec.select, %err ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enables) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options) #9
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_css(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51}
!llvm.named.register.sp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__ksymtab_rdmacg_uncharge, !1, !"__ksymtab_rdmacg_uncharge", i1 false, i1 false}
!1 = !{!"../kernel/cgroup/rdma.c", i32 236, i32 1}
!2 = !{ptr @__ksymtab_rdmacg_try_charge, !3, !"__ksymtab_rdmacg_try_charge", i1 false, i1 false}
!3 = !{!"../kernel/cgroup/rdma.c", i32 304, i32 1}
!4 = !{ptr @__ksymtab_rdmacg_register_device, !5, !"__ksymtab_rdmacg_register_device", i1 false, i1 false}
!5 = !{!"../kernel/cgroup/rdma.c", i32 323, i32 1}
!6 = !{ptr @__ksymtab_rdmacg_unregister_device, !7, !"__ksymtab_rdmacg_unregister_device", i1 false, i1 false}
!7 = !{!"../kernel/cgroup/rdma.c", i32 354, i32 1}
!8 = !{ptr @rdma_cgrp_subsys, !9, !"rdma_cgrp_subsys", i1 false, i1 false}
!9 = !{!"../kernel/cgroup/rdma.c", i32 604, i32 22}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/cgroup/rdma.c", i32 176, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @uncharge_cg_locked._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @uncharge_cg_locked._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../kernel/cgroup/rdma.c", i32 186, i32 2}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/cgroup.h", i32 494, i32 9}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../kernel/cgroup/rdma.c", i32 24, i32 8}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rdmacg_mutex, !30, !"rdmacg_mutex", i1 false, i1 false}
!33 = !{ptr @rdmacg_devices, !34, !"rdmacg_devices", i1 false, i1 false}
!34 = !{!"../kernel/cgroup/rdma.c", i32 25, i32 8}
!35 = !{ptr @rdmacg_files, !36, !"rdmacg_files", i1 false, i1 false}
!36 = !{!"../kernel/cgroup/rdma.c", i32 545, i32 22}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../kernel/cgroup/rdma.c", i32 533, i32 18}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/cgroup/rdma.c", i32 517, i32 17}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../kernel/cgroup/rdma.c", i32 519, i32 19}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../kernel/cgroup/rdma.c", i32 38, i32 33}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../kernel/cgroup/rdma.c", i32 39, i32 33}
!47 = !{ptr @rdmacg_resource_names, !48, !"rdmacg_resource_names", i1 false, i1 false}
!48 = !{!"../kernel/cgroup/rdma.c", i32 37, i32 20}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../kernel/cgroup/rdma.c", i32 438, i32 30}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../kernel/cgroup/rdma.c", i32 363, i32 24}
!53 = !{!"sp"}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{i64 2149930435}
!66 = !{i64 568090, i64 568151}
!67 = !{i64 570822}
!68 = !{i64 571107}
!69 = !{i64 2148264061}
!70 = !{i64 2148178794, i64 2148178826, i64 2148178855, i64 2148178889, i64 2148178920, i64 2148178943}
!71 = !{i64 2148264290}
!72 = !{i64 2149930701}
!73 = !{i64 2148175028}
!74 = !{i64 659851, i64 659876, i64 659898, i64 659914, i64 659926, i64 659946, i64 659970, i64 659986, i64 659998}
!75 = !{i64 2148175216}
!76 = !{i64 2153580050}
!77 = !{i64 2153579892}
!78 = !{!"auto-init"}
