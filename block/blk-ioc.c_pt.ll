; ModuleID = '/llk/IR_all_yes/block/blk-ioc.c_pt.bc'
source_filename = "../block/blk-ioc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+put_io_context\22, \22a\22\09"
module asm "\09.weak\09__crc_put_io_context\09\09\09\09"
module asm "\09.long\09__crc_put_io_context\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_io_context:\09\09\09\09\09"
module asm "\09.asciz \09\22put_io_context\22\09\09\09\09\09"
module asm "__kstrtabns_put_io_context:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+set_task_ioprio\22, \22a\22\09"
module asm "\09.weak\09__crc_set_task_ioprio\09\09\09\09"
module asm "\09.long\09__crc_set_task_ioprio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_task_ioprio:\09\09\09\09\09"
module asm "\09.asciz \09\22set_task_ioprio\22\09\09\09\09\09"
module asm "__kstrtabns_set_task_ioprio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ioc_lookup_icq\22, \22a\22\09"
module asm "\09.weak\09__crc_ioc_lookup_icq\09\09\09\09"
module asm "\09.long\09__crc_ioc_lookup_icq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ioc_lookup_icq:\09\09\09\09\09"
module asm "\09.asciz \09\22ioc_lookup_icq\22\09\09\09\09\09"
module asm "__kstrtabns_ioc_lookup_icq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ioc_find_get_icq\22, \22a\22\09"
module asm "\09.weak\09__crc_ioc_find_get_icq\09\09\09\09"
module asm "\09.long\09__crc_ioc_find_get_icq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ioc_find_get_icq:\09\09\09\09\09"
module asm "\09.asciz \09\22ioc_find_get_icq\22\09\09\09\09\09"
module asm "__kstrtabns_ioc_find_get_icq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.list_head = type { ptr, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.io_context = type { %struct.atomic_t, %struct.atomic_t, i16, %struct.spinlock, %struct.xarray, ptr, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.io_cq = type { ptr, ptr, %union.anon.40, %union.anon.41, i32 }
%union.anon.40 = type { %struct.list_head }
%union.anon.41 = type { %struct.hlist_node }
%struct.elevator_type = type { ptr, %struct.elevator_mq_ops, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.56 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.38 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.38 = type { %struct.callback_head }

@iocontext_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_put_io_context = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_io_context = external dso_local constant [0 x i8], align 1
@__ksymtab_put_io_context = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_io_context to i32), ptr @__kstrtab_put_io_context, ptr @__kstrtabns_put_io_context }, section "___ksymtab_gpl+put_io_context", align 4
@set_task_ioprio.__warned.1 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"block/blk-ioc.c\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_set_task_ioprio = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_task_ioprio = external dso_local constant [0 x i8], align 1
@__ksymtab_set_task_ioprio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_task_ioprio to i32), ptr @__kstrtab_set_task_ioprio, ptr @__kstrtabns_set_task_ioprio }, section "___ksymtab_gpl+set_task_ioprio", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@ioc_lookup_icq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_ioc_lookup_icq = external dso_local constant [0 x i8], align 1
@__kstrtabns_ioc_lookup_icq = external dso_local constant [0 x i8], align 1
@__ksymtab_ioc_lookup_icq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ioc_lookup_icq to i32), ptr @__kstrtab_ioc_lookup_icq, ptr @__kstrtabns_ioc_lookup_icq }, section "___ksymtab+ioc_lookup_icq", align 4
@__kstrtab_ioc_find_get_icq = external dso_local constant [0 x i8], align 1
@__kstrtabns_ioc_find_get_icq = external dso_local constant [0 x i8], align 1
@__ksymtab_ioc_find_get_icq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ioc_find_get_icq to i32), ptr @__kstrtab_ioc_find_get_icq, ptr @__kstrtabns_ioc_find_get_icq }, section "___ksymtab_gpl+ioc_find_get_icq", align 4
@__initcall__kmod_blk_ioc__292_456_blk_ioc_init4 = internal global ptr @blk_ioc_init, section ".initcall4.init", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@alloc_io_context.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ioc->lock\00", [21 x i8] zeroinitializer }, align 32
@alloc_io_context.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&ioc->release_work)\00", [58 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@ioc_create_icq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013cfq: icq link failed!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ioc_create_icq\00", [17 x i8] zeroinitializer }, align 32
@ioc_create_icq._entry_ptr = internal global ptr @ioc_create_icq._entry, section ".printk_index", align 4
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"blkdev_ioc\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"iocontext_cachep\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 20, i32 27 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 259, i32 10 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 695, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 723, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 245, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 248, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 378, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 401, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 36, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [19 x i8] c"../block/blk-ioc.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 452, i32 39 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__initcall__kmod_blk_ioc__292_456_blk_ioc_init4, ptr @__ksymtab_ioc_find_get_icq, ptr @__ksymtab_ioc_lookup_icq, ptr @__ksymtab_put_io_context, ptr @__ksymtab_set_task_ioprio, ptr @ioc_create_icq._entry, ptr @ioc_create_icq._entry_ptr, ptr @iocontext_cachep, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @alloc_io_context.__key, ptr @.str.6, ptr @alloc_io_context.__key.7, ptr @.str.8, ptr @xa_init_flags.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iocontext_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_io_context.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_io_context.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioc_create_icq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ioc_clear_queue(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  %icq_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icq_list) #8
  %0 = getelementptr inbounds %struct.list_head, ptr %icq_list, i32 0, i32 1
  %1 = ptrtoint ptr %icq_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %icq_list, ptr %icq_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %icq_list, ptr %0, align 4
  %queue_lock = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 14
  call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #8
  %icq_list1 = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 33
  %3 = ptrtoint ptr %icq_list1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %icq_list1, align 4
  %cmp.i.not.i = icmp eq ptr %4, %icq_list1
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i12

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_init.exit

if.then.i12:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %icq_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %icq_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 33, i32 1
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %icq_list, ptr %prev3.i.i, align 4
  store ptr %4, ptr %icq_list, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  %12 = ptrtoint ptr %icq_list1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %icq_list1, ptr %icq_list1, align 4
  store ptr %icq_list1, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i12, %entry.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #8
  %13 = call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !57
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %list_splice_init.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

list_splice_init.exit.rcu_read_lock.exit_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %list_splice_init.exit
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %list_splice_init.exit.rcu_read_lock.exit_crit_edge
  %17 = ptrtoint ptr %icq_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %icq_list, align 4
  %cmp.i.not22 = icmp eq ptr %18, %icq_list
  br i1 %cmp.i.not22, label %rcu_read_lock.exit.while.end_crit_edge, label %rcu_read_lock.exit.while.body_crit_edge

rcu_read_lock.exit.while.body_crit_edge:          ; preds = %rcu_read_lock.exit
  br label %while.body

rcu_read_lock.exit.while.end_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %rcu_read_lock.exit.while.body_crit_edge
  %19 = phi ptr [ %27, %if.end.while.body_crit_edge ], [ %18, %rcu_read_lock.exit.while.body_crit_edge ]
  %ioc = getelementptr i8, ptr %19, i32 -4
  %20 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioc, align 4
  %lock = getelementptr inbounds %struct.io_context, ptr %21, i32 0, i32 3
  call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %flags = getelementptr i8, ptr %19, i32 16
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %19, i32 -8
  call fastcc void @ioc_destroy_icq(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %24 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioc, align 4
  %lock6 = getelementptr inbounds %struct.io_context, ptr %25, i32 0, i32 3
  call void @_raw_spin_unlock_irq(ptr noundef %lock6) #8
  %26 = ptrtoint ptr %icq_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %icq_list, align 4
  %cmp.i.not = icmp eq ptr %27, %icq_list
  br i1 %cmp.i.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %rcu_read_lock.exit.while.end_crit_edge
  %call.i13 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i13, label %while.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i16

while.end.rcu_read_unlock.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i16:                                ; preds = %while.end
  %call1.i14 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool.not.i15, label %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i18

land.lhs.true.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i18:                               ; preds = %land.lhs.true.i16
  %.b4.i17 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17, label %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, label %if.then.i19

land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i19:                                      ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i19, %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, %while.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  %28 = call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i.i.i.i.i20 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i20 to ptr
  %preempt_count.i.i.i.i21 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i21, align 4
  %sub.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i21, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icq_list) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ioc_destroy_icq(ptr noundef %icq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc1 = getelementptr inbounds %struct.io_cq, ptr %icq, i32 0, i32 1
  %0 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc1, align 4
  %2 = ptrtoint ptr %icq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %icq, align 4
  %elevator = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.io_context, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !59

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 79, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %icq_tree = getelementptr inbounds %struct.io_context, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %icq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %icq, align 4
  %id = getelementptr inbounds %struct.request_queue, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 8
  %call27 = tail call ptr @radix_tree_delete(ptr noundef %icq_tree, i32 noundef %12) #8
  %13 = getelementptr inbounds %struct.io_cq, ptr %icq, i32 0, i32 3
  %pprev.i.i = getelementptr inbounds %struct.io_cq, ptr %icq, i32 0, i32 3, i32 0, i32 1
  %14 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.not.i, label %if.end.hlist_del_init.exit_crit_edge, label %if.then.i

if.end.hlist_del_init.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %if.end
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %17, ptr %15, align 4
  %tobool.not.i3.i = icmp eq ptr %17, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %15, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %13, align 4
  %21 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %if.end.hlist_del_init.exit_crit_edge
  %22 = getelementptr inbounds %struct.io_cq, ptr %icq, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %22) #8
  br i1 %call.i.i, label %if.end.i.i, label %hlist_del_init.exit.list_del_init.exit_crit_edge

hlist_del_init.exit.list_del_init.exit_crit_edge: ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.io_cq, ptr %icq, i32 0, i32 2, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %hlist_del_init.exit.list_del_init.exit_crit_edge
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %22, ptr %22, align 4
  %prev.i3.i = getelementptr inbounds %struct.io_cq, ptr %icq, i32 0, i32 2, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %22, ptr %prev.i3.i, align 4
  %icq_hint = getelementptr inbounds %struct.io_context, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %icq_hint to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %icq_hint, align 4
  %cmp33 = icmp eq ptr %32, %icq
  br i1 %cmp33, label %do.body42, label %list_del_init.exit.if.end73_crit_edge

list_del_init.exit.if.end73_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

do.body42:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %icq_hint to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr null, ptr %icq_hint, align 4
  br label %if.end73

if.end73:                                         ; preds = %do.body42, %list_del_init.exit.if.end73_crit_edge
  %flags.i = getelementptr inbounds %struct.io_cq, ptr %icq, i32 0, i32 4
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end73.ioc_exit_icq.exit_crit_edge

if.end73.ioc_exit_icq.exit_crit_edge:             ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %ioc_exit_icq.exit

if.end.i:                                         ; preds = %if.end73
  %36 = ptrtoint ptr %icq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %icq, align 4
  %elevator.i = getelementptr inbounds %struct.request_queue, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %elevator.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %elevator.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %exit_icq.i = getelementptr inbounds %struct.elevator_type, ptr %41, i32 0, i32 1, i32 21
  %42 = ptrtoint ptr %exit_icq.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %exit_icq.i, align 4
  %tobool1.not.i = icmp eq ptr %43, null
  br i1 %tobool1.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then2.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %43(ptr noundef %icq) #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end.i.if.end5.i_crit_edge
  %44 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %45, 4
  store i32 %or.i, ptr %flags.i, align 4
  br label %ioc_exit_icq.exit

ioc_exit_icq.exit:                                ; preds = %if.end5.i, %if.end73.ioc_exit_icq.exit_crit_edge
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %7, align 4
  %48 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %22, align 4
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i, align 4
  %or = or i32 %50, 8
  store i32 %or, ptr %flags.i, align 4
  tail call void @call_rcu(ptr noundef %13, ptr noundef nonnull @icq_free_icq_rcu) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_io_context(ptr noundef %ioc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ioc, i32 noundef 4) #8
  %0 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ioc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %do.body2, label %do.end5, !prof !59

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-ioc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 211, 0\0A.popsection", ""() #8, !srcloc !60
  unreachable

do.end5:                                          ; preds = %entry
  %call.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ioc, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %ioc, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ioc, ptr %ioc, i32 1, ptr elementtype(i32) %ioc) #8, !srcloc !62
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true, label %do.end5.if.end10_crit_edge

do.end5.if.end10_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %do.end5
  %lock.i = getelementptr inbounds %struct.io_context, ptr %ioc, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %icq_list.i = getelementptr inbounds %struct.io_context, ptr %ioc, i32 0, i32 6
  %3 = ptrtoint ptr %icq_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %icq_list.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.not, label %if.then9, label %ioc_delay_free.exit.thread

ioc_delay_free.exit.thread:                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %5 = load ptr, ptr @system_power_efficient_wq, align 4
  %release_work.i = getelementptr inbounds %struct.io_context, ptr %ioc, i32 0, i32 7
  %call.i.i15 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %release_work.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  br label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  %6 = load ptr, ptr @iocontext_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %6, ptr noundef %ioc) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %ioc_delay_free.exit.thread, %do.end5.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exit_io_context(ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #8
  %io_context = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 151
  %0 = ptrtoint ptr %io_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_context, align 8
  store ptr null, ptr %io_context, align 8
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #8
  %active_ref = getelementptr inbounds %struct.io_context, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_ref, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %active_ref, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_ref, ptr %active_ref, i32 1, ptr elementtype(i32) %active_ref) #8, !srcloc !62
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.io_context, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  %icq_list.i = getelementptr inbounds %struct.io_context, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %icq_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %icq_list.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  %add.ptr.i = getelementptr i8, ptr %4, i32 -16
  %tobool2.not2428.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not24.i = or i1 %tobool.not.i, %tobool2.not2428.i
  br i1 %tobool2.not24.i, label %if.then.ioc_exit_icqs.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.ioc_exit_icqs.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %ioc_exit_icqs.exit

for.body.i:                                       ; preds = %ioc_exit_icq.exit.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %icq.025.i = phi ptr [ %add.ptr9.i, %ioc_exit_icq.exit.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.then.for.body.i_crit_edge ]
  %flags.i.i = getelementptr inbounds %struct.io_cq, ptr %icq.025.i, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.ioc_exit_icq.exit.i_crit_edge

for.body.i.ioc_exit_icq.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ioc_exit_icq.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %7 = ptrtoint ptr %icq.025.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %icq.025.i, align 4
  %elevator.i.i = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %elevator.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %elevator.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %exit_icq.i.i = getelementptr inbounds %struct.elevator_type, ptr %12, i32 0, i32 1, i32 21
  %13 = ptrtoint ptr %exit_icq.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %exit_icq.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end5.i.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %14(ptr noundef nonnull %icq.025.i) #8
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i.if.end5.i.i_crit_edge
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %16, 4
  store i32 %or.i.i, ptr %flags.i.i, align 4
  br label %ioc_exit_icq.exit.i

ioc_exit_icq.exit.i:                              ; preds = %if.end5.i.i, %for.body.i.ioc_exit_icq.exit.i_crit_edge
  %17 = getelementptr inbounds %struct.io_cq, ptr %icq.025.i, i32 0, i32 3
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool5.not.i = icmp eq ptr %19, null
  %add.ptr9.i = getelementptr i8, ptr %19, i32 -16
  %tobool2.not29.i = icmp eq ptr %add.ptr9.i, null
  %tobool2.not.i = or i1 %tobool5.not.i, %tobool2.not29.i
  br i1 %tobool2.not.i, label %ioc_exit_icq.exit.i.ioc_exit_icqs.exit_crit_edge, label %ioc_exit_icq.exit.i.for.body.i_crit_edge

ioc_exit_icq.exit.i.for.body.i_crit_edge:         ; preds = %ioc_exit_icq.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

ioc_exit_icq.exit.i.ioc_exit_icqs.exit_crit_edge: ; preds = %ioc_exit_icq.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ioc_exit_icqs.exit

ioc_exit_icqs.exit:                               ; preds = %ioc_exit_icq.exit.i.ioc_exit_icqs.exit_crit_edge, %if.then.ioc_exit_icqs.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #8
  tail call void @put_io_context(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %ioc_exit_icqs.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_task_ioprio(ptr noundef %task, i32 noundef %ioprio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task1, align 8
  %cred2 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred2, align 16
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !57
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 98
  %8 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %real_cred, align 4
  %call8 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end14_crit_edge

rcu_read_lock.exit.do.end14_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end14_crit_edge, label %land.lhs.true11

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b76 = load i1, ptr @set_task_ioprio.__warned.1, align 1
  br i1 %.b76, label %land.lhs.true11.do.end14_crit_edge, label %if.then

land.lhs.true11.do.end14_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

if.then:                                          ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @set_task_ioprio.__warned.1, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 259, ptr noundef nonnull @.str.2) #8
  br label %do.end14

do.end14:                                         ; preds = %if.then, %land.lhs.true11.do.end14_crit_edge, %land.lhs.true.do.end14_crit_edge, %rcu_read_lock.exit.do.end14_crit_edge
  %uid = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 4
  %euid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack = load i32, ptr %uid, align 4
  %11 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack73 = load i32, ptr %euid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack73)
  %cmp.i = icmp eq i32 %.unpack, %.unpack73
  br i1 %cmp.i, label %do.end14.if.end27_crit_edge, label %land.lhs.true18

do.end14.if.end27_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

land.lhs.true18:                                  ; preds = %do.end14
  %uid20 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %uid20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack75 = load i32, ptr %uid20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack75)
  %cmp.i77 = icmp eq i32 %.unpack, %.unpack75
  br i1 %cmp.i77, label %land.lhs.true18.if.end27_crit_edge, label %land.lhs.true24

land.lhs.true18.if.end27_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

land.lhs.true24:                                  ; preds = %land.lhs.true18
  %call25 = tail call zeroext i1 @capable(i32 noundef 23) #8
  br i1 %call25, label %land.lhs.true24.if.end27_crit_edge, label %if.then26

land.lhs.true24.if.end27_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then26:                                        ; preds = %land.lhs.true24
  %call.i78 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i78, label %if.then26.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i81

if.then26.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i81:                                ; preds = %if.then26
  %call1.i79 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79)
  %tobool.not.i80 = icmp eq i32 %call1.i79, 0
  br i1 %tobool.not.i80, label %land.lhs.true.i81.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i83

land.lhs.true.i81.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i83:                               ; preds = %land.lhs.true.i81
  %.b4.i82 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i82, label %land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge, label %if.then.i84

land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i84:                                      ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i84, %land.lhs.true2.i83.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i81.rcu_read_unlock.exit_crit_edge, %if.then26.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  %13 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i.i.i.i.i85 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i85 to ptr
  %preempt_count.i.i.i.i86 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i86, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i86, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup52

if.end27:                                         ; preds = %land.lhs.true24.if.end27_crit_edge, %land.lhs.true18.if.end27_crit_edge, %do.end14.if.end27_crit_edge
  %call.i87 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i87, label %if.end27.rcu_read_unlock.exit97_crit_edge, label %land.lhs.true.i90

if.end27.rcu_read_unlock.exit97_crit_edge:        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit97

land.lhs.true.i90:                                ; preds = %if.end27
  %call1.i88 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88)
  %tobool.not.i89 = icmp eq i32 %call1.i88, 0
  br i1 %tobool.not.i89, label %land.lhs.true.i90.rcu_read_unlock.exit97_crit_edge, label %land.lhs.true2.i92

land.lhs.true.i90.rcu_read_unlock.exit97_crit_edge: ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit97

land.lhs.true2.i92:                               ; preds = %land.lhs.true.i90
  %.b4.i91 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i91, label %land.lhs.true2.i92.rcu_read_unlock.exit97_crit_edge, label %if.then.i93

land.lhs.true2.i92.rcu_read_unlock.exit97_crit_edge: ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit97

if.then.i93:                                      ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit97

rcu_read_unlock.exit97:                           ; preds = %if.then.i93, %land.lhs.true2.i92.rcu_read_unlock.exit97_crit_edge, %land.lhs.true.i90.rcu_read_unlock.exit97_crit_edge, %if.end27.rcu_read_unlock.exit97_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  %17 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i.i.i.i.i94 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i94 to ptr
  %preempt_count.i.i.i.i95 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i95, align 4
  %sub.i.i.i96 = add i32 %20, -1
  store volatile i32 %sub.i.i.i96, ptr %preempt_count.i.i.i.i95, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %call28 = tail call i32 @security_task_setioprio(ptr noundef %task, i32 noundef %ioprio) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %rcu_read_unlock.exit97.cleanup52_crit_edge

rcu_read_unlock.exit97.cleanup52_crit_edge:       ; preds = %rcu_read_unlock.exit97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup52

if.end31:                                         ; preds = %rcu_read_unlock.exit97
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #8
  %io_context = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 151
  %21 = ptrtoint ptr %io_context to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_context, align 8
  %tobool32.not = icmp eq ptr %22, null
  br i1 %tobool32.not, label %if.then36, label %if.end31.if.end49_crit_edge, !prof !59

if.end31.if.end49_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then36:                                        ; preds = %if.end31
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #8
  %call37 = tail call fastcc ptr @alloc_io_context(i32 noundef 2592)
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.then36.cleanup52_crit_edge, label %if.end40

if.then36.cleanup52_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup52

if.end40:                                         ; preds = %if.then36
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #8
  %flags = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 3
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %if.end43, label %cleanup

if.end43:                                         ; preds = %if.end40
  %25 = ptrtoint ptr %io_context to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_context, align 8
  %tobool45.not = icmp eq ptr %26, null
  br i1 %tobool45.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %27 = load ptr, ptr @iocontext_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %27, ptr noundef nonnull %call37) #8
  br label %if.end49

if.else:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %io_context to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call37, ptr %io_context, align 8
  br label %if.end49

cleanup:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %29 = load ptr, ptr @iocontext_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %29, ptr noundef nonnull %call37) #8
  br label %out

if.end49:                                         ; preds = %if.else, %if.then46, %if.end31.if.end49_crit_edge
  %conv = trunc i32 %ioprio to i16
  %30 = ptrtoint ptr %io_context to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_context, align 8
  %ioprio51 = getelementptr inbounds %struct.io_context, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %ioprio51 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv, ptr %ioprio51, align 4
  br label %out

out:                                              ; preds = %if.end49, %cleanup
  %err.2 = phi i32 [ -3, %cleanup ], [ 0, %if.end49 ]
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #8
  br label %cleanup52

cleanup52:                                        ; preds = %out, %if.then36.cleanup52_crit_edge, %rcu_read_unlock.exit97.cleanup52_crit_edge, %rcu_read_unlock.exit
  %retval.1 = phi i32 [ %err.2, %out ], [ -1, %rcu_read_unlock.exit ], [ %call28, %rcu_read_unlock.exit97.cleanup52_crit_edge ], [ -12, %if.then36.cleanup52_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_task_setioprio(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_io_context(i32 noundef %gfp_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @iocontext_cachep, align 4
  %or = or i32 %gfp_flags, 256
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %or) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !59

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #8
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %call.i, align 8
  %active_ref = getelementptr inbounds %struct.io_context, ptr %call.i, i32 0, i32 1
  %call.i.i1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_ref, i32 noundef 4) #8
  %2 = ptrtoint ptr %active_ref to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %active_ref, align 4
  %lock = getelementptr inbounds %struct.io_context, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @alloc_io_context.__key, i16 noundef signext 3) #8
  %icq_tree = getelementptr inbounds %struct.io_context, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %icq_tree, ptr noundef nonnull @.str.9, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #8
  %xa_flags.i = getelementptr inbounds %struct.io_context, ptr %call.i, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2592, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.io_context, ptr %call.i, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %xa_head.i, align 8
  %icq_list = getelementptr inbounds %struct.io_context, ptr %call.i, i32 0, i32 6
  %5 = ptrtoint ptr %icq_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %icq_list, align 8
  %release_work = getelementptr inbounds %struct.io_context, ptr %call.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %release_work, i32 noundef 0) #8
  %6 = ptrtoint ptr %release_work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %release_work, align 4
  %lockdep_map = getelementptr inbounds %struct.io_context, ptr %call.i, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @alloc_io_context.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry9 = getelementptr inbounds %struct.io_context, ptr %call.i, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry9, ptr %entry9, align 8
  %prev.i = getelementptr inbounds %struct.io_context, ptr %call.i, i32 0, i32 7, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.io_context, ptr %call.i, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ioc_release_fn, ptr %func, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__copy_io(i32 noundef %clone_flags, ptr nocapture noundef writeonly %tsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %io_context = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 151
  %4 = ptrtoint ptr %io_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_context, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %clone_flags)
  %tobool.not = icmp sgt i32 %clone_flags, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %active_ref = getelementptr inbounds %struct.io_context, ptr %5, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_ref, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %active_ref, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_ref, ptr %active_ref, i32 1, ptr elementtype(i32) %active_ref) #8, !srcloc !64
  %io_context1 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 151
  %7 = ptrtoint ptr %io_context1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %io_context1, align 8
  br label %cleanup

if.else:                                          ; preds = %entry
  %ioprio = getelementptr inbounds %struct.io_context, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %ioprio to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ioprio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %9)
  %10 = icmp sgt i16 %9, 8191
  br i1 %10, label %if.then3, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.else
  %call4 = tail call fastcc ptr @alloc_io_context(i32 noundef 3264)
  %io_context5 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 151
  %11 = ptrtoint ptr %io_context5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call4, ptr %io_context5, align 8
  %tobool7.not = icmp eq ptr %call4, null
  br i1 %tobool7.not, label %if.then3.cleanup_crit_edge, label %if.end

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %ioprio to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ioprio, align 4
  %ioprio11 = getelementptr inbounds %struct.io_context, ptr %call4, i32 0, i32 2
  %14 = ptrtoint ptr %ioprio11 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %ioprio11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -12, %if.then3.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ioc_lookup_icq(ptr noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %io_context = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 151
  %4 = ptrtoint ptr %io_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_context, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i106 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %cmp.not = icmp eq i32 %call.i106, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !59

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 332, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !57
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %icq_hint = getelementptr inbounds %struct.io_context, ptr %5, i32 0, i32 5
  %11 = ptrtoint ptr %icq_hint to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %icq_hint, align 4
  %call30 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end39_crit_edge

rcu_read_lock.exit.do.end39_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call32 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true.do.end39_crit_edge, label %land.lhs.true34

land.lhs.true.do.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

land.lhs.true34:                                  ; preds = %land.lhs.true
  %.b105 = load i1, ptr @ioc_lookup_icq.__warned, align 1
  br i1 %.b105, label %land.lhs.true34.do.end39_crit_edge, label %if.then36

land.lhs.true34.do.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ioc_lookup_icq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 341, ptr noundef nonnull @.str.2) #8
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %land.lhs.true34.do.end39_crit_edge, %land.lhs.true.do.end39_crit_edge, %rcu_read_lock.exit.do.end39_crit_edge
  %tobool41.not = icmp eq ptr %12, null
  br i1 %tobool41.not, label %do.end39.if.end46_crit_edge, label %land.lhs.true42

do.end39.if.end46_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

land.lhs.true42:                                  ; preds = %do.end39
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %cmp44 = icmp eq ptr %14, %q
  br i1 %cmp44, label %land.lhs.true42.out_crit_edge, label %land.lhs.true42.if.end46_crit_edge

land.lhs.true42.if.end46_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

land.lhs.true42.out_crit_edge:                    ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end46:                                         ; preds = %land.lhs.true42.if.end46_crit_edge, %do.end39.if.end46_crit_edge
  %icq_tree = getelementptr inbounds %struct.io_context, ptr %5, i32 0, i32 4
  %id = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 13
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 8
  %call47 = tail call ptr @radix_tree_lookup(ptr noundef %icq_tree, i32 noundef %16) #8
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %if.end46.out_crit_edge, label %land.lhs.true49

if.end46.out_crit_edge:                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true49:                                  ; preds = %if.end46
  %17 = ptrtoint ptr %call47 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call47, align 4
  %cmp51 = icmp eq ptr %18, %q
  br i1 %cmp51, label %do.body53, label %land.lhs.true49.out_crit_edge

land.lhs.true49.out_crit_edge:                    ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body53:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !65
  %19 = ptrtoint ptr %icq_hint to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call47, ptr %icq_hint, align 4
  br label %out

out:                                              ; preds = %do.body53, %land.lhs.true49.out_crit_edge, %if.end46.out_crit_edge, %land.lhs.true42.out_crit_edge
  %icq.0 = phi ptr [ %12, %land.lhs.true42.out_crit_edge ], [ %call47, %do.body53 ], [ null, %land.lhs.true49.out_crit_edge ], [ null, %if.end46.out_crit_edge ]
  %call.i107 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i107, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i110

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i110:                               ; preds = %out
  %call1.i108 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i108)
  %tobool.not.i109 = icmp eq i32 %call1.i108, 0
  br i1 %tobool.not.i109, label %land.lhs.true.i110.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i112

land.lhs.true.i110.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i110
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i112:                              ; preds = %land.lhs.true.i110
  %.b4.i111 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i111, label %land.lhs.true2.i112.rcu_read_unlock.exit_crit_edge, label %if.then.i113

land.lhs.true2.i112.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i113:                                     ; preds = %land.lhs.true2.i112
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i113, %land.lhs.true2.i112.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i110.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  %20 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i.i.i.i.i114 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i114 to ptr
  %preempt_count.i.i.i.i115 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i115, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i115, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret ptr %icq.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ioc_find_get_icq(ptr noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %io_context = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 151
  %4 = ptrtoint ptr %io_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_context, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.else23, !prof !59

if.then:                                          ; preds = %entry
  %call4 = tail call fastcc ptr @alloc_io_context(i32 noundef 2592)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #8
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %io_context11 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 151
  %10 = ptrtoint ptr %io_context11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_context11, align 8
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = load ptr, ptr @iocontext_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %12, ptr noundef nonnull %call4) #8
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %io_context16 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 151
  %15 = ptrtoint ptr %io_context16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_context16, align 8
  br label %if.end26.thread

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %io_context11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call4, ptr %io_context11, align 8
  br label %if.end26.thread

if.end26.thread:                                  ; preds = %if.else, %if.then13
  %ioc.0 = phi ptr [ %16, %if.then13 ], [ %call4, %if.else ]
  tail call fastcc void @get_io_context(ptr noundef %ioc.0)
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %alloc_lock.i47 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 127
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i47) #8
  br label %if.then28

if.else23:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %5, i32 noundef 4) #8
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i = icmp slt i32 %21, 1
  br i1 %cmp.i, label %do.body2.i, label %if.end26, !prof !59

do.body2.i:                                       ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-ioc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #8, !srcloc !66
  unreachable

if.end26:                                         ; preds = %if.else23
  %call.i.i8.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #8
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #8, !srcloc !64
  %queue_lock = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #8
  %call24 = tail call ptr @ioc_lookup_icq(ptr noundef %q)
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #8
  %tobool27.not = icmp eq ptr %call24, null
  br i1 %tobool27.not, label %if.end26.if.then28_crit_edge, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26.if.then28_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then28:                                        ; preds = %if.end26.if.then28_crit_edge, %if.end26.thread
  %ioc.153 = phi ptr [ %ioc.0, %if.end26.thread ], [ %5, %if.end26.if.then28_crit_edge ]
  %23 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i, align 8
  %io_context.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 151
  %27 = ptrtoint ptr %io_context.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_context.i, align 8
  %elevator.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 1
  %29 = ptrtoint ptr %elevator.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %elevator.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %34, i32 noundef 2848) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then28.if.then31_crit_edge, label %if.end.i

if.then28.if.then31_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.end.i:                                         ; preds = %if.then28
  %call2.i = tail call i32 @radix_tree_maybe_preload(i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i48 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i48, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  tail call void @kmem_cache_free(ptr noundef %36, ptr noundef nonnull %call.i.i) #8
  br label %if.then31

if.end5.i:                                        ; preds = %if.end.i
  %ioc6.i = getelementptr inbounds %struct.io_cq, ptr %call.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %ioc6.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %28, ptr %ioc6.i, align 4
  %38 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %q, ptr %call.i.i, align 8
  %39 = getelementptr inbounds %struct.io_cq, ptr %call.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %39, ptr %39, align 8
  %prev.i.i = getelementptr inbounds %struct.io_cq, ptr %call.i.i, i32 0, i32 2, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %39, ptr %prev.i.i, align 4
  %42 = getelementptr inbounds %struct.io_cq, ptr %call.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %42, align 8
  %pprev.i.i = getelementptr inbounds %struct.io_cq, ptr %call.i.i, i32 0, i32 3, i32 0, i32 1
  %44 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %pprev.i.i, align 4
  %queue_lock.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock.i) #8
  %lock.i = getelementptr inbounds %struct.io_context, ptr %28, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #8
  %icq_tree.i = getelementptr inbounds %struct.io_context, ptr %28, i32 0, i32 4
  %id.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 13
  %45 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %id.i, align 8
  %call8.i = tail call i32 @radix_tree_insert(ptr noundef %icq_tree.i, i32 noundef %46, ptr noundef nonnull %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then13.i, label %if.else.i, !prof !67

if.then13.i:                                      ; preds = %if.end5.i
  %icq_list.i = getelementptr inbounds %struct.io_context, ptr %28, i32 0, i32 6
  %47 = ptrtoint ptr %icq_list.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %icq_list.i, align 4
  %49 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %48, ptr %42, align 8
  %tobool.not.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i, label %if.then13.i.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

if.then13.i.hlist_add_head.exit.i_crit_edge:      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i58.i = getelementptr inbounds %struct.hlist_node, ptr %48, i32 0, i32 1
  %50 = ptrtoint ptr %pprev.i58.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %42, ptr %pprev.i58.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %if.then13.i.hlist_add_head.exit.i_crit_edge
  %51 = ptrtoint ptr %icq_list.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %42, ptr %icq_list.i, align 4
  %52 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %icq_list.i, ptr %pprev.i.i, align 4
  %icq_list14.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 33
  %53 = ptrtoint ptr %icq_list14.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %icq_list14.i, align 4
  %call.i.i.i49 = tail call zeroext i1 @__list_add_valid(ptr noundef %39, ptr noundef %icq_list14.i, ptr noundef %54) #8
  br i1 %call.i.i.i49, label %if.end.i.i.i, label %hlist_add_head.exit.i.list_add.exit.i_crit_edge

hlist_add_head.exit.i.list_add.exit.i_crit_edge:  ; preds = %hlist_add_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %hlist_add_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %39, ptr %prev1.i.i.i, align 4
  %56 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %54, ptr %39, align 8
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %icq_list14.i, ptr %prev.i.i, align 4
  %58 = ptrtoint ptr %icq_list14.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %39, ptr %icq_list14.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %hlist_add_head.exit.i.list_add.exit.i_crit_edge
  %init_icq.i = getelementptr inbounds %struct.elevator_type, ptr %32, i32 0, i32 1, i32 20
  %59 = ptrtoint ptr %init_icq.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_icq.i, align 4
  %tobool15.not.i = icmp eq ptr %60, null
  br i1 %tobool15.not.i, label %list_add.exit.i.ioc_create_icq.exit_crit_edge, label %if.then16.i

list_add.exit.i.ioc_create_icq.exit_crit_edge:    ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ioc_create_icq.exit

if.then16.i:                                      ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %60(ptr noundef nonnull %call.i.i) #8
  br label %ioc_create_icq.exit

if.else.i:                                        ; preds = %if.end5.i
  %61 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %32, align 4
  tail call void @kmem_cache_free(ptr noundef %62, ptr noundef nonnull %call.i.i) #8
  %call21.i = tail call ptr @ioc_lookup_icq(ptr noundef %q) #8
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %do.end.i, label %if.else.i.ioc_create_icq.exit_crit_edge

if.else.i.ioc_create_icq.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ioc_create_icq.exit

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %ioc_create_icq.exit

ioc_create_icq.exit:                              ; preds = %do.end.i, %if.else.i.ioc_create_icq.exit_crit_edge, %if.then16.i, %list_add.exit.i.ioc_create_icq.exit_crit_edge
  %icq.0.i = phi ptr [ %call.i.i, %if.then16.i ], [ %call.i.i, %list_add.exit.i.ioc_create_icq.exit_crit_edge ], [ %call21.i, %if.else.i.ioc_create_icq.exit_crit_edge ], [ null, %do.end.i ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock.i) #8
  %63 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %68, ptrtoint (ptr @radix_tree_preloads to i32)
  %69 = inttoptr i32 %add.i.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %69) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  %70 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i.i.i.i.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %73, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  %tobool30.not = icmp eq ptr %icq.0.i, null
  br i1 %tobool30.not, label %ioc_create_icq.exit.if.then31_crit_edge, label %ioc_create_icq.exit.cleanup_crit_edge

ioc_create_icq.exit.cleanup_crit_edge:            ; preds = %ioc_create_icq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ioc_create_icq.exit.if.then31_crit_edge:          ; preds = %ioc_create_icq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.then31:                                        ; preds = %ioc_create_icq.exit.if.then31_crit_edge, %if.then3.i, %if.then28.if.then31_crit_edge
  tail call void @put_io_context(ptr noundef %ioc.153)
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %ioc_create_icq.exit.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then31 ], [ null, %if.then.cleanup_crit_edge ], [ %call24, %if.end26.cleanup_crit_edge ], [ %icq.0.i, %ioc_create_icq.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_io_context(ptr noundef %ioc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ioc, i32 noundef 4) #8
  %0 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ioc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %do.body2, label %do.end5, !prof !59

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-ioc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #8, !srcloc !66
  unreachable

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ioc, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %ioc, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ioc, ptr %ioc, i32 1, ptr elementtype(i32) %ioc) #8, !srcloc !64
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @blk_ioc_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.15, i32 noundef 160, i32 noundef 0, i32 noundef 262144, ptr noundef null) #8
  store ptr %call, ptr @iocontext_cachep, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icq_free_icq_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -16
  %0 = getelementptr i8, ptr %head, i32 -8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ioc_release_fn(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %work, i32 -104
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %icq_list = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %icq_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %icq_list, align 4
  %tobool.not.i30.not40 = icmp eq ptr %1, null
  br i1 %tobool.not.i30.not40, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %16, %if.end15.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %add.ptr4 = getelementptr i8, ptr %2, i32 -16
  %3 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr4, align 4
  %queue_lock = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 14
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %queue_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ioc_destroy_icq(ptr noundef %add.ptr4)
  tail call void @_raw_spin_unlock(ptr noundef %queue_lock) #8
  br label %if.end15

if.else:                                          ; preds = %while.body
  %5 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !57
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i29, label %if.else.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.else.rcu_read_lock.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.else
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.else.rcu_read_lock.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  tail call void @_raw_spin_lock(ptr noundef %queue_lock) #8
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %flags = getelementptr i8, ptr %2, i32 8
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.then13, label %rcu_read_lock.exit.if.end_crit_edge

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then13:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ioc_destroy_icq(ptr noundef %add.ptr4)
  br label %if.end

if.end:                                           ; preds = %if.then13, %rcu_read_lock.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %queue_lock) #8
  %call.i31 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i31, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i34

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i34:                                ; preds = %if.end
  %call1.i32 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32)
  %tobool.not.i33 = icmp eq i32 %call1.i32, 0
  br i1 %tobool.not.i33, label %land.lhs.true.i34.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i36

land.lhs.true.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i36:                               ; preds = %land.lhs.true.i34
  %.b4.i35 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i35, label %land.lhs.true2.i36.rcu_read_unlock.exit_crit_edge, label %if.then.i37

land.lhs.true2.i36.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i37:                                      ; preds = %land.lhs.true2.i36
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i37, %land.lhs.true2.i36.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i34.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  %11 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i.i.i.i.i38 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i38 to ptr
  %preempt_count.i.i.i.i39 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i39, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i39, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %if.end15

if.end15:                                         ; preds = %rcu_read_unlock.exit, %if.then
  %15 = ptrtoint ptr %icq_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %icq_list, align 4
  %tobool.not.i30.not = icmp eq ptr %16, null
  br i1 %tobool.not.i30.not, label %if.end15.while.end_crit_edge, label %if.end15.while.body_crit_edge

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end15.while.end_crit_edge, %entry.while.end_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -116
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %17 = load ptr, ptr @iocontext_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %17, ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_maybe_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !67

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #8
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !40, !41, !43, !44, !45}
!llvm.named.register.sp = !{!47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__ksymtab_put_io_context, !1, !"__ksymtab_put_io_context", i1 false, i1 false}
!1 = !{!"../block/blk-ioc.c", i32 215, i32 1}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../block/blk-ioc.c", i32 256, i32 28}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../block/blk-ioc.c", i32 259, i32 10}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__ksymtab_set_task_ioprio, !9, !"__ksymtab_set_task_ioprio", i1 false, i1 false}
!9 = !{!"../block/blk-ioc.c", i32 297, i32 1}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../block/blk-ioc.c", i32 341, i32 8}
!12 = !{ptr @__ksymtab_ioc_lookup_icq, !13, !"__ksymtab_ioc_lookup_icq", i1 false, i1 false}
!13 = !{!"../block/blk-ioc.c", i32 354, i32 1}
!14 = !{ptr @__ksymtab_ioc_find_get_icq, !15, !"__ksymtab_ioc_find_get_icq", i1 false, i1 false}
!15 = !{!"../block/blk-ioc.c", i32 447, i32 1}
!16 = !{ptr @__initcall__kmod_blk_ioc__292_456_blk_ioc_init4, !17, !"__initcall__kmod_blk_ioc__292_456_blk_ioc_init4", i1 false, i1 false}
!17 = !{!"../block/blk-ioc.c", i32 456, i32 1}
!18 = !{ptr @iocontext_cachep, !19, !"iocontext_cachep", i1 false, i1 false}
!19 = !{!"../block/blk-ioc.c", i32 20, i32 27}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @alloc_io_context.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../block/blk-ioc.c", i32 245, i32 2}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @alloc_io_context.__key.7, !31, !"__key", i1 false, i1 false}
!31 = !{!"../block/blk-ioc.c", i32 248, i32 2}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @xa_init_flags.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../block/blk-ioc.c", i32 401, i32 4}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ioc_create_icq._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ioc_create_icq._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../block/blk-ioc.c", i32 452, i32 39}
!47 = !{!"sp"}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2149364961}
!58 = !{i64 2149365227}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{i64 2154586095, i64 2154586575, i64 2154586132, i64 2154586188, i64 2154586222, i64 2154586246, i64 2154586287, i64 2154586308, i64 2154586336, i64 2154586370}
!61 = !{i64 2148306944}
!62 = !{i64 2148221677, i64 2148221709, i64 2148221738, i64 2148221772, i64 2148221803, i64 2148221826}
!63 = !{i64 2148307173}
!64 = !{i64 2148218492, i64 2148218518, i64 2148218547, i64 2148218581, i64 2148218612, i64 2148218635}
!65 = !{i64 2154611321}
!66 = !{i64 2154563963, i64 2154564442, i64 2154564000, i64 2154564056, i64 2154564090, i64 2154564114, i64 2154564155, i64 2154564176, i64 2154564204, i64 2154564238}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2151438465}
