; ModuleID = '/llk/IR_all_yes/fs/io-wq.c_pt.bc'
source_filename = "../fs/io-wq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.72, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.51 }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.io_worker = type { %struct.refcount_struct, i32, %struct.hlist_nulls_node, %struct.list_head, ptr, ptr, ptr, ptr, %struct.raw_spinlock, %struct.completion, i32, %struct.callback_head, i32, %union.anon.82 }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%union.anon.82 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.io_wqe = type { %struct.raw_spinlock, [2 x %struct.io_wqe_acct], i32, %struct.hlist_nulls_head, %struct.list_head, %struct.wait_queue_entry, ptr, [32 x ptr], ptr }
%struct.io_wqe_acct = type { i32, i32, i32, %struct.atomic_t, %struct.io_wq_work_list, i32 }
%struct.io_wq_work_list = type { ptr, ptr }
%struct.hlist_nulls_head = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.io_wq = type { i32, ptr, ptr, ptr, %struct.atomic_t, %struct.completion, %struct.hlist_node, ptr, [0 x ptr] }
%struct.io_cb_cancel_data = type { ptr, ptr, i32, i32, i8 }
%struct.io_wq_work = type { %struct.io_wq_work_node, i32 }
%struct.io_wq_work_node = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.io_wq_data = type { ptr, ptr, ptr, ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.io_wq_hash = type { %struct.refcount_struct, i32, %struct.wait_queue_head }
%struct.ksignal = type { %struct.k_sigaction, %struct.kernel_siginfo, i32 }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i32, ptr, %struct.sigset_t }
%struct.kernel_siginfo = type { %struct.anon.58 }
%struct.anon.58 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.62 }
%struct.anon.62 = type { i32, i32, i32, i32, i32 }
%struct.online_data = type { i32, i8 }

@io_wq_create.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fs/io-wq.c\00", [21 x i8] zeroinitializer }, align 32
@io_wq_create.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@io_wq_online = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__cpu_online_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@io_wq_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&wqe->lock\00", [21 x i8] zeroinitializer }, align 32
@io_wq_put_and_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__initcall__kmod_io_wq__345_1422_io_wq_init4 = internal global ptr @io_wq_init, section ".initcall4.init", align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iou-wrk-%d\00", [21 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@create_io_worker.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&worker->lock\00", [18 x i8] zeroinitializer }, align 32
@create_io_worker.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&worker->work)\00", [63 x i8] zeroinitializer }, align 32
@io_wqe_create_worker.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@io_wqe_create_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014io-wq is not configured for unbound workers\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"io_wqe_create_worker\00", [43 x i8] zeroinitializer }, align 32
@io_wqe_create_worker._entry_ptr = internal global ptr @io_wqe_create_worker._entry, section ".printk_index", align 4
@io_wq_for_each_worker.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__const.io_wq_destroy.match = private unnamed_addr constant { ptr, ptr, i32, i32, i8, [3 x i8] } { ptr @io_wq_work_match_all, ptr null, i32 0, i32 0, i8 1, [3 x i8] zeroinitializer }, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"io-wq/online\00", [19 x i8] zeroinitializer }, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4294966782, i64 4294966783, i64 4294966784, i64 4294967285]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 4294966782, i64 4294966783, i64 4294966784, i64 4294967285]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 1150, i32 6 }
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"io_wq_online\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 130, i32 25 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 1195, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 627, i32 29 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 825, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 838, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 291, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 856, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 87, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 695, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 723, i32 2 }
@___asan_gen_.73 = private constant [14 x i8] c"../fs/io-wq.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 1415, i32 53 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 108, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__initcall__kmod_io_wq__345_1422_io_wq_init4, ptr @io_wqe_create_worker._entry, ptr @io_wqe_create_worker._entry_ptr, ptr @.str, ptr @io_wq_online, ptr @io_wq_create.__key, ptr @.str.2, ptr @.str.3, ptr @create_io_worker.__key, ptr @.str.5, ptr @create_io_worker.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @init_completion.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_wq_online to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_wq_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_io_worker.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_io_worker.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_wqe_create_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @io_wq_worker_running(ptr nocapture noundef readonly %tsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %worker_private = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 85
  %0 = ptrtoint ptr %worker_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %worker_private, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.io_worker, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %4 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %or = or i32 %3, 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %flags, align 4
  %wqe.i.i = getelementptr inbounds %struct.io_worker, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %wqe.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wqe.i.i, align 4
  %and.i.i = lshr i32 %3, 3
  %and.lobit.i.i = and i32 %and.i.i, 1
  %9 = xor i32 %and.lobit.i.i, 1
  %nr_running.i = getelementptr %struct.io_wqe, ptr %8, i32 0, i32 1, i32 %9, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_running.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %nr_running.i, i32 1, i32 3, i32 1) #17
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_running.i, ptr %nr_running.i, i32 1, ptr elementtype(i32) %nr_running.i) #17, !srcloc !68
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @io_wq_worker_sleeping(ptr nocapture noundef readonly %tsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %worker_private = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 85
  %0 = ptrtoint ptr %worker_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %worker_private, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.io_worker, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %4 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %.not = icmp eq i32 %4, 3
  br i1 %.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %and10 = and i32 %3, -3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and10, ptr %flags, align 4
  %wqe = getelementptr inbounds %struct.io_worker, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %wqe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wqe, align 4
  tail call void @_raw_spin_lock(ptr noundef %7) #17
  tail call fastcc void @io_wqe_dec_running(ptr noundef nonnull %1)
  %8 = ptrtoint ptr %wqe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wqe, align 4
  tail call void @_raw_spin_unlock(ptr noundef %9) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @io_wqe_dec_running(ptr noundef %worker) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %wqe.i = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 5
  %0 = ptrtoint ptr %wqe.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wqe.i, align 4
  %flags.i = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = lshr i32 %3, 3
  %and.lobit.i = and i32 %and.i, 1
  %4 = xor i32 %and.lobit.i, 1
  %arrayidx.i.i = getelementptr %struct.io_wqe, ptr %1, i32 0, i32 1, i32 %4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %nr_running = getelementptr %struct.io_wqe, ptr %1, i32 0, i32 1, i32 %4, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_running, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %nr_running, i32 1, i32 3, i32 1) #17
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_running, ptr %nr_running, i32 1, ptr elementtype(i32) %nr_running) #17, !srcloc !70
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %work_list.i = getelementptr %struct.io_wqe, ptr %1, i32 0, i32 1, i32 %4, i32 4
  %6 = ptrtoint ptr %work_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %work_list.i, align 4
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.i

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %flags.i20 = getelementptr %struct.io_wqe, ptr %1, i32 0, i32 1, i32 %4, i32 5
  %8 = ptrtoint ptr %flags.i20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i20, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then4, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_running, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %nr_running, i32 1, i32 3, i32 1) #17
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_running, ptr %nr_running, i32 1, ptr elementtype(i32) %nr_running) #17, !srcloc !68
  %wq = getelementptr inbounds %struct.io_wqe, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wq, align 4
  %worker_refs = getelementptr inbounds %struct.io_wq, ptr %12, i32 0, i32 4
  %call.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef %worker_refs, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %worker_refs, i32 1, i32 3, i32 1) #17
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %worker_refs, ptr %worker_refs, i32 1, ptr elementtype(i32) %worker_refs) #17, !srcloc !68
  tail call void @_raw_spin_unlock(ptr noundef %1) #17
  %call6 = tail call fastcc zeroext i1 @io_queue_worker_create(ptr noundef %worker, ptr noundef %arrayidx.i.i, ptr noundef nonnull @create_worker_cb)
  tail call void @_raw_spin_lock(ptr noundef %1) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %land.lhs.true.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @io_wq_enqueue(ptr nocapture noundef readonly %wq, ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %wqes = getelementptr inbounds %struct.io_wq, ptr %wq, i32 0, i32 8
  %0 = ptrtoint ptr %wqes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wqes, align 4
  tail call fastcc void @io_wqe_enqueue(ptr noundef %1, ptr noundef %work)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @io_wqe_enqueue(ptr noundef %wqe, ptr noundef %work) unnamed_addr #0 align 64 {
entry:
  %match = alloca %struct.io_cb_cancel_data, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.io_wq_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = lshr i32 %1, 2
  %and.lobit.i = and i32 %and.i, 1
  %arrayidx.i.i = getelementptr %struct.io_wqe, ptr %wqe, i32 0, i32 1, i32 %and.lobit.i
  %wq = getelementptr inbounds %struct.io_wqe, ptr %wqe, i32 0, i32 6
  %2 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %do_work.i = getelementptr inbounds %struct.io_wq, ptr %3, i32 0, i32 2
  %free_work.i = getelementptr inbounds %struct.io_wq, ptr %3, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then
  %work.addr.0.i = phi ptr [ %work, %if.then ], [ %call.i60, %do.body.i.do.body.i_crit_edge ]
  %flags.i59 = getelementptr inbounds %struct.io_wq_work, ptr %work.addr.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %flags.i59 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i59, align 4
  %or.i = or i32 %7, 1
  store i32 %or.i, ptr %flags.i59, align 4
  %8 = ptrtoint ptr %do_work.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %do_work.i, align 4
  tail call void %9(ptr noundef %work.addr.0.i) #17
  %10 = ptrtoint ptr %free_work.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %free_work.i, align 4
  %call.i60 = tail call ptr %11(ptr noundef %work.addr.0.i) #17
  %tobool.not.i61 = icmp eq ptr %call.i60, null
  br i1 %tobool.not.i61, label %do.body.i.cleanup33_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

do.body.i.cleanup33_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup33

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %wqe) #17
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i.i = lshr i32 %13, 2
  %and.lobit.i.i = and i32 %and.i.i, 1
  %and.i23.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23.i)
  %tobool.i.not.i = icmp eq i32 %and.i23.i, 0
  br i1 %tobool.i.not.i, label %if.end.append.i_crit_edge, label %if.end.i

if.end.append.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %append.i

append.i:                                         ; preds = %if.end.i.append.i_crit_edge, %if.end.append.i_crit_edge
  %work_list.i = getelementptr %struct.io_wqe, ptr %wqe, i32 0, i32 1, i32 %and.lobit.i.i, i32 4
  %14 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %work, align 4
  %15 = ptrtoint ptr %work_list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %work_list.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  %last.i.i = getelementptr %struct.io_wqe, ptr %wqe, i32 0, i32 1, i32 %and.lobit.i.i, i32 4, i32 1
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %append.i
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %work, ptr %last.i.i, align 4
  %18 = ptrtoint ptr %work_list.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %work, ptr %work_list.i, align 4
  br label %io_wqe_insert_work.exit

if.else.i.i:                                      ; preds = %append.i
  call void @__sanitizer_cov_trace_pc() #19
  %19 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %last.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %work, ptr %20, align 4
  store ptr %work, ptr %last.i.i, align 4
  br label %io_wqe_insert_work.exit

if.end.i:                                         ; preds = %if.end
  %shr.i.i = lshr i32 %13, 24
  %arrayidx.i = getelementptr %struct.io_wqe, ptr %wqe, i32 0, i32 7, i32 %shr.i.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  store ptr %work, ptr %arrayidx.i, align 4
  %tobool.not.i62 = icmp eq ptr %23, null
  br i1 %tobool.not.i62, label %if.end.i.append.i_crit_edge, label %if.end6.i

if.end.i.append.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %append.i

if.end6.i:                                        ; preds = %if.end.i
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  store ptr %work, ptr %23, align 4
  %26 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %work, align 4
  %tobool.not.i25.i = icmp eq ptr %25, null
  br i1 %tobool.not.i25.i, label %if.then.i27.i, label %if.end6.i.io_wqe_insert_work.exit_crit_edge

if.end6.i.io_wqe_insert_work.exit_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_wqe_insert_work.exit

if.then.i27.i:                                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  %last.i26.i = getelementptr %struct.io_wqe, ptr %wqe, i32 0, i32 1, i32 %and.lobit.i.i, i32 4, i32 1
  %27 = ptrtoint ptr %last.i26.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %work, ptr %last.i26.i, align 4
  br label %io_wqe_insert_work.exit

io_wqe_insert_work.exit:                          ; preds = %if.then.i27.i, %if.end6.i.io_wqe_insert_work.exit_crit_edge, %if.else.i.i, %if.then.i.i
  %flags4 = getelementptr %struct.io_wqe, ptr %wqe, i32 0, i32 1, i32 %and.lobit.i, i32 5
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags4) #17
  %28 = tail call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %31, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %io_wqe_insert_work.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

io_wqe_insert_work.exit.rcu_read_lock.exit_crit_edge: ; preds = %io_wqe_insert_work.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %io_wqe_insert_work.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %io_wqe_insert_work.exit.rcu_read_lock.exit_crit_edge
  %call5 = tail call fastcc zeroext i1 @io_wqe_activate_free_worker(ptr noundef %wqe, ptr noundef %arrayidx.i.i)
  %call.i63 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i63, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i66

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i66:                                ; preds = %rcu_read_lock.exit
  %call1.i64 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i64)
  %tobool.not.i65 = icmp eq i32 %call1.i64, 0
  br i1 %tobool.not.i65, label %land.lhs.true.i66.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i68

land.lhs.true.i66.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i68:                               ; preds = %land.lhs.true.i66
  %.b4.i67 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i67, label %land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge, label %if.then.i69

land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i69:                                      ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i69, %land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i66.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !73
  %32 = tail call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i.i.i.i.i70 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i70 to ptr
  %preempt_count.i.i.i.i71 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i71, align 4
  %sub.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i71, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  tail call void @_raw_spin_unlock(ptr noundef %wqe) #17
  br i1 %call5, label %rcu_read_unlock.exit.cleanup33_crit_edge, label %land.lhs.true

rcu_read_unlock.exit.cleanup33_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup33

land.lhs.true:                                    ; preds = %rcu_read_unlock.exit
  %and8 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %land.lhs.true.if.then13_crit_edge

land.lhs.true.if.then13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then13

lor.lhs.false10:                                  ; preds = %land.lhs.true
  %nr_running = getelementptr %struct.io_wqe, ptr %wqe, i32 0, i32 1, i32 %and.lobit.i, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_running, i32 noundef 4) #17
  %36 = ptrtoint ptr %nr_running to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %nr_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool12.not = icmp eq i32 %37, 0
  br i1 %tobool12.not, label %lor.lhs.false10.if.then13_crit_edge, label %lor.lhs.false10.cleanup33_crit_edge

lor.lhs.false10.cleanup33_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup33

lor.lhs.false10.if.then13_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false10.if.then13_crit_edge, %land.lhs.true.if.then13_crit_edge
  %max_workers.i = getelementptr %struct.io_wqe, ptr %wqe, i32 0, i32 1, i32 %and.lobit.i, i32 1
  %38 = ptrtoint ptr %max_workers.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_workers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i72 = icmp eq i32 %39, 0
  br i1 %tobool.not.i72, label %land.end.i, label %if.then13.if.end22.i_crit_edge, !prof !74

if.then13.if.end22.i_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22.i

land.end.i:                                       ; preds = %if.then13
  %.b42.i = load i1, ptr @io_wqe_create_worker.__already_done, align 1
  br i1 %.b42.i, label %land.end.i.if.end22.i_crit_edge, label %if.then14.i, !prof !75

land.end.i.if.end22.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22.i

if.then14.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @io_wqe_create_worker.__already_done, align 1
  %call.i73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #20
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then14.i, %land.end.i.if.end22.i_crit_edge, %if.then13.if.end22.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %wqe) #17
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i, align 4
  %42 = ptrtoint ptr %max_workers.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_workers.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp.not.i = icmp ult i32 %41, %43
  br i1 %cmp.not.i, label %io_wqe_create_worker.exit, label %if.end22.i.cleanup33.sink.split_crit_edge

if.end22.i.cleanup33.sink.split_crit_edge:        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup33.sink.split

io_wqe_create_worker.exit:                        ; preds = %if.end22.i
  %inc.i = add nuw i32 %41, 1
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %inc.i, ptr %arrayidx.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %wqe) #17
  %nr_running.i = getelementptr %struct.io_wqe, ptr %wqe, i32 0, i32 1, i32 %and.lobit.i, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_running.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %nr_running.i, i32 1, i32 3, i32 1) #17
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_running.i, ptr %nr_running.i, i32 1, ptr elementtype(i32) %nr_running.i) #17, !srcloc !68
  %46 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wq, align 4
  %worker_refs.i = getelementptr inbounds %struct.io_wq, ptr %47, i32 0, i32 4
  %call.i.i43.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %worker_refs.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %worker_refs.i, i32 1, i32 3, i32 1) #17
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %worker_refs.i, ptr %worker_refs.i, i32 1, ptr elementtype(i32) %worker_refs.i) #17, !srcloc !68
  %49 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wq, align 4
  %index.i = getelementptr %struct.io_wqe, ptr %wqe, i32 0, i32 1, i32 %and.lobit.i, i32 2
  %51 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %index.i, align 4
  %call30.i = tail call fastcc zeroext i1 @create_io_worker(ptr noundef %50, ptr noundef %wqe, i32 noundef %52) #17
  br i1 %call30.i, label %io_wqe_create_worker.exit.cleanup33_crit_edge, label %if.end21, !prof !75

io_wqe_create_worker.exit.cleanup33_crit_edge:    ; preds = %io_wqe_create_worker.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup33

if.end21:                                         ; preds = %io_wqe_create_worker.exit
  tail call void @_raw_spin_lock(ptr noundef %wqe) #17
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool23.not = icmp eq i32 %54, 0
  br i1 %tobool23.not, label %if.then24, label %if.end21.cleanup33.sink.split_crit_edge

if.end21.cleanup33.sink.split_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup33.sink.split

if.then24:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %match) #17
  %55 = getelementptr inbounds i8, ptr %match, i32 16
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %55, align 4
  %57 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @io_wq_work_match_item, ptr %match, align 4
  %data = getelementptr inbounds %struct.io_cb_cancel_data, ptr %match, i32 0, i32 1
  %58 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %work, ptr %data, align 4
  %nr_running25 = getelementptr inbounds %struct.io_cb_cancel_data, ptr %match, i32 0, i32 2
  %59 = ptrtoint ptr %nr_running25 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %nr_running25, align 4
  %nr_pending = getelementptr inbounds %struct.io_cb_cancel_data, ptr %match, i32 0, i32 3
  %60 = ptrtoint ptr %nr_pending to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %nr_pending, align 4
  %cancel_all = getelementptr inbounds %struct.io_cb_cancel_data, ptr %match, i32 0, i32 4
  %61 = ptrtoint ptr %cancel_all to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %cancel_all, align 4
  %call26 = call fastcc zeroext i1 @io_acct_cancel_pending_work(ptr noundef %wqe, ptr noundef %arrayidx.i.i, ptr noundef nonnull %match)
  br i1 %call26, label %if.then27, label %if.then24.if.end29_crit_edge

if.then24.if.end29_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_lock(ptr noundef %wqe) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then24.if.end29_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %match) #17
  br label %cleanup33.sink.split

cleanup33.sink.split:                             ; preds = %if.end29, %if.end21.cleanup33.sink.split_crit_edge, %if.end22.i.cleanup33.sink.split_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %wqe) #17
  br label %cleanup33

cleanup33:                                        ; preds = %cleanup33.sink.split, %io_wqe_create_worker.exit.cleanup33_crit_edge, %lor.lhs.false10.cleanup33_crit_edge, %rcu_read_unlock.exit.cleanup33_crit_edge, %do.body.i.cleanup33_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @io_wq_hash_work(ptr nocapture noundef %work, ptr noundef %val) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %val to i32
  %mul.i.i.i = mul i32 %0, 1640531527
  %1 = lshr i32 %mul.i.i.i, 3
  %shl = and i32 %1, 520093696
  %flags = getelementptr inbounds %struct.io_wq_work, ptr %work, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %shl, %3
  %or1 = or i32 %or, 2
  store i32 %or1, ptr %flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @io_wq_cancel_cb(ptr nocapture noundef readonly %wq, ptr noundef %cancel, ptr noundef %data, i1 noundef zeroext %cancel_all) local_unnamed_addr #0 align 64 {
entry:
  %match = alloca %struct.io_cb_cancel_data, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %cancel_all to i8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %match) #17
  %0 = getelementptr inbounds i8, ptr %match, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cancel, ptr %match, align 4
  %data1 = getelementptr inbounds %struct.io_cb_cancel_data, ptr %match, i32 0, i32 1
  %3 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %data, ptr %data1, align 4
  %nr_running = getelementptr inbounds %struct.io_cb_cancel_data, ptr %match, i32 0, i32 2
  %4 = ptrtoint ptr %nr_running to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %nr_running, align 4
  %nr_pending = getelementptr inbounds %struct.io_cb_cancel_data, ptr %match, i32 0, i32 3
  %5 = ptrtoint ptr %nr_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %nr_pending, align 4
  %cancel_all2 = getelementptr inbounds %struct.io_cb_cancel_data, ptr %match, i32 0, i32 4
  %6 = ptrtoint ptr %cancel_all2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %cancel_all2, align 4
  %wqes = getelementptr inbounds %struct.io_wq, ptr %wq, i32 0, i32 8
  %7 = ptrtoint ptr %wqes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wqes, align 4
  tail call void @_raw_spin_lock(ptr noundef %8) #17
  %arrayidx.i.i = getelementptr %struct.io_wqe, ptr %8, i32 0, i32 1, i32 0
  %arrayidx.i.1.i = getelementptr %struct.io_wqe, ptr %8, i32 0, i32 1, i32 1
  br label %retry.i

retry.i:                                          ; preds = %if.then.i.retry.i_crit_edge, %entry
  %call2.i = call fastcc zeroext i1 @io_acct_cancel_pending_work(ptr noundef %8, ptr noundef %arrayidx.i.i, ptr noundef nonnull %match) #17
  br i1 %call2.i, label %retry.i.if.then.i_crit_edge, label %for.cond.i

retry.i.if.then.i_crit_edge:                      ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

for.cond.i:                                       ; preds = %retry.i
  %call2.1.i = call fastcc zeroext i1 @io_acct_cancel_pending_work(ptr noundef %8, ptr noundef %arrayidx.i.1.i, ptr noundef nonnull %match) #17
  br i1 %call2.1.i, label %for.cond.i.if.then.i_crit_edge, label %for.cond.i.io_wqe_cancel_pending_work.exit_crit_edge

for.cond.i.io_wqe_cancel_pending_work.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_wqe_cancel_pending_work.exit

for.cond.i.if.then.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.then.i:                                        ; preds = %for.cond.i.if.then.i_crit_edge, %retry.i.if.then.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %8) #17
  %9 = ptrtoint ptr %cancel_all2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cancel_all2, align 4, !range !76
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.then.i.io_wqe_cancel_pending_work.exit_crit_edge, label %if.then.i.retry.i_crit_edge

if.then.i.retry.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %retry.i

if.then.i.io_wqe_cancel_pending_work.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_wqe_cancel_pending_work.exit

io_wqe_cancel_pending_work.exit:                  ; preds = %if.then.i.io_wqe_cancel_pending_work.exit_crit_edge, %for.cond.i.io_wqe_cancel_pending_work.exit_crit_edge
  %11 = ptrtoint ptr %nr_pending to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not = icmp eq i32 %12, 0
  br i1 %tobool5.not, label %io_wqe_cancel_pending_work.exit.if.end_crit_edge, label %land.lhs.true

io_wqe_cancel_pending_work.exit.if.end_crit_edge: ; preds = %io_wqe_cancel_pending_work.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true:                                    ; preds = %io_wqe_cancel_pending_work.exit
  %13 = ptrtoint ptr %cancel_all2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cancel_all2, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not = icmp eq i8 %14, 0
  br i1 %tobool7.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock(ptr noundef %8) #17
  br label %cleanup25

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %io_wqe_cancel_pending_work.exit.if.end_crit_edge
  %15 = tail call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i, label %if.end.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.rcu_read_lock.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #17
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.rcu_read_lock.exit.i_crit_edge
  call fastcc void @io_wq_for_each_worker(ptr noundef %8, ptr noundef nonnull @io_wq_worker_cancel, ptr noundef nonnull %match) #17
  %call.i1.i = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i1.i, label %rcu_read_lock.exit.i.io_wqe_cancel_running_work.exit_crit_edge, label %land.lhs.true.i4.i

rcu_read_lock.exit.i.io_wqe_cancel_running_work.exit_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_wqe_cancel_running_work.exit

land.lhs.true.i4.i:                               ; preds = %rcu_read_lock.exit.i
  %call1.i2.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call1.i2.i, 0
  br i1 %tobool.not.i3.i, label %land.lhs.true.i4.i.io_wqe_cancel_running_work.exit_crit_edge, label %land.lhs.true2.i6.i

land.lhs.true.i4.i.io_wqe_cancel_running_work.exit_crit_edge: ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_wqe_cancel_running_work.exit

land.lhs.true2.i6.i:                              ; preds = %land.lhs.true.i4.i
  %.b4.i5.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5.i, label %land.lhs.true2.i6.i.io_wqe_cancel_running_work.exit_crit_edge, label %if.then.i7.i

land.lhs.true2.i6.i.io_wqe_cancel_running_work.exit_crit_edge: ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_wqe_cancel_running_work.exit

if.then.i7.i:                                     ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #17
  br label %io_wqe_cancel_running_work.exit

io_wqe_cancel_running_work.exit:                  ; preds = %if.then.i7.i, %land.lhs.true2.i6.i.io_wqe_cancel_running_work.exit_crit_edge, %land.lhs.true.i4.i.io_wqe_cancel_running_work.exit_crit_edge, %rcu_read_lock.exit.i.io_wqe_cancel_running_work.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !73
  %19 = call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i.i.i.i.i8.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i8.i to ptr
  %preempt_count.i.i.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i9.i, align 4
  %sub.i.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i9.i, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  call void @_raw_spin_unlock(ptr noundef %8) #17
  %23 = ptrtoint ptr %nr_running to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool11.not = icmp eq i32 %24, 0
  br i1 %tobool11.not, label %if.end20, label %io_wqe_cancel_running_work.exit.cleanup25_crit_edge

io_wqe_cancel_running_work.exit.cleanup25_crit_edge: ; preds = %io_wqe_cancel_running_work.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup25

if.end20:                                         ; preds = %io_wqe_cancel_running_work.exit
  call void @__sanitizer_cov_trace_pc() #19
  %25 = ptrtoint ptr %nr_pending to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool22.not = icmp eq i32 %26, 0
  %. = select i1 %tobool22.not, i32 2, i32 0
  br label %cleanup25

cleanup25:                                        ; preds = %if.end20, %io_wqe_cancel_running_work.exit.cleanup25_crit_edge, %if.then
  %retval.2 = phi i32 [ %., %if.end20 ], [ 0, %if.then ], [ 1, %io_wqe_cancel_running_work.exit.cleanup25_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %match) #17
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @io_wq_create(i32 noundef %bounded, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %free_work = getelementptr inbounds %struct.io_wq_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %free_work to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_work, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.land.rhs_crit_edge, label %lor.rhs

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs

lor.rhs:                                          ; preds = %entry
  %do_work = getelementptr inbounds %struct.io_wq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %do_work to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %do_work, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.rhs.land.rhs_crit_edge, label %if.end40

lor.rhs.land.rhs_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs

land.rhs:                                         ; preds = %lor.rhs.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %.b238 = load i1, ptr @io_wq_create.__already_done, align 1
  br i1 %.b238, label %land.rhs.cleanup177_crit_edge, label %if.then, !prof !75

land.rhs.cleanup177_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup177

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @io_wq_create.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1150, i32 noundef 9, ptr noundef null) #17
  br label %cleanup177

if.end40:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bounded)
  %tobool42.not = icmp eq i32 %bounded, 0
  br i1 %tobool42.not, label %land.rhs51, label %if.end100

land.rhs51:                                       ; preds = %if.end40
  %.b236237 = load i1, ptr @io_wq_create.__already_done.1, align 1
  br i1 %.b236237, label %land.rhs51.cleanup177_crit_edge, label %if.then62, !prof !75

land.rhs51.cleanup177_crit_edge:                  ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup177

if.then62:                                        ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @io_wq_create.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1152, i32 noundef 9, ptr noundef null) #17
  br label %cleanup177

if.end100:                                        ; preds = %if.end40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 92) #21
  %tobool103.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool103.not, label %if.end100.cleanup177_crit_edge, label %if.end106

if.end100.cleanup177_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup177

if.end106:                                        ; preds = %if.end100
  %5 = load i32, ptr @io_wq_online, align 4
  %cpuhp_node = getelementptr inbounds %struct.io_wq, ptr %call7.i.i, i32 0, i32 6
  %call.i = tail call i32 @__cpuhp_state_add_instance(i32 noundef %5, ptr noundef %cpuhp_node, i1 noundef zeroext false) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool108.not = icmp eq i32 %call.i, 0
  br i1 %tobool108.not, label %if.end110, label %if.end106.err_wq_crit_edge

if.end106.err_wq_crit_edge:                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_wq

if.end110:                                        ; preds = %if.end106
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %7, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %7, i32 1, i32 3, i32 1) #17
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #17, !srcloc !77
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end110.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !74

if.end110.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end110
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !75

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end110.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end110.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef %.sink.i.i.i) #17
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %hash112 = getelementptr inbounds %struct.io_wq, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %hash112 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %hash112, align 4
  %13 = ptrtoint ptr %free_work to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %free_work, align 4
  %free_work114 = getelementptr inbounds %struct.io_wq, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %free_work114 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %free_work114, align 4
  %16 = ptrtoint ptr %do_work to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %do_work, align 4
  %do_work116 = getelementptr inbounds %struct.io_wq, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %do_work116 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %do_work116, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 272) #21
  %tobool122.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool122.not, label %refcount_inc.exit.err_crit_edge, label %if.end124

refcount_inc.exit.err_crit_edge:                  ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %err

if.end124:                                        ; preds = %refcount_inc.exit
  %cpu_mask = getelementptr inbounds %struct.io_wqe, ptr %call.i.i.i, i32 0, i32 8
  %call125 = tail call zeroext i1 @alloc_cpumask_var(ptr noundef %cpu_mask, i32 noundef 3264) #17
  br i1 %call125, label %if.end127, label %if.end124.err_crit_edge

if.end124.err_crit_edge:                          ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #19
  br label %err

if.end127:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #19
  %20 = ptrtoint ptr %cpu_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cpu_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %22, 31
  %23 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %23, 536870908
  %24 = call ptr @memcpy(ptr %21, ptr @__cpu_online_mask, i32 %mul.i.i)
  %wqes = getelementptr inbounds %struct.io_wq, ptr %call7.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %wqes to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i.i, ptr %wqes, align 8
  %node129 = getelementptr inbounds %struct.io_wqe, ptr %call.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %node129 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %node129, align 4
  %max_workers = getelementptr inbounds %struct.io_wqe, ptr %call.i.i.i, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %max_workers to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %bounded, ptr %max_workers, align 8
  %28 = tail call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 111
  %32 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %33, i32 0, i32 51, i32 6
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %arrayidx.i, align 8
  %max_workers135 = getelementptr %struct.io_wqe, ptr %call.i.i.i, i32 0, i32 1, i32 1, i32 1
  %36 = ptrtoint ptr %max_workers135 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %max_workers135, align 4
  %entry136 = getelementptr inbounds %struct.io_wqe, ptr %call.i.i.i, i32 0, i32 5, i32 3
  %37 = ptrtoint ptr %entry136 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %entry136, ptr %entry136, align 8
  %prev.i = getelementptr inbounds %struct.io_wqe, ptr %call.i.i.i, i32 0, i32 5, i32 3, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %entry136, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.io_wqe, ptr %call.i.i.i, i32 0, i32 5, i32 2
  %39 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @io_wqe_hash_wake, ptr %func, align 4
  %index = getelementptr %struct.io_wqe, ptr %call.i.i.i, i32 0, i32 1, i32 0, i32 2
  %40 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %index, align 4
  %nr_running = getelementptr %struct.io_wqe, ptr %call.i.i.i, i32 0, i32 1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_running, i32 noundef 4) #17
  %41 = ptrtoint ptr %nr_running to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 0, ptr %nr_running, align 8
  %work_list = getelementptr %struct.io_wqe, ptr %call.i.i.i, i32 0, i32 1, i32 0, i32 4
  %42 = ptrtoint ptr %work_list to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %work_list, align 4
  %index.1 = getelementptr %struct.io_wqe, ptr %call.i.i.i, i32 0, i32 1, i32 1, i32 2
  %43 = ptrtoint ptr %index.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %index.1, align 8
  %nr_running.1 = getelementptr %struct.io_wqe, ptr %call.i.i.i, i32 0, i32 1, i32 1, i32 3
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_running.1, i32 noundef 4) #17
  %44 = ptrtoint ptr %nr_running.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 0, ptr %nr_running.1, align 4
  %work_list.1 = getelementptr %struct.io_wqe, ptr %call.i.i.i, i32 0, i32 1, i32 1, i32 4
  %45 = ptrtoint ptr %work_list.1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %work_list.1, align 8
  %wq147 = getelementptr inbounds %struct.io_wqe, ptr %call.i.i.i, i32 0, i32 6
  %46 = ptrtoint ptr %wq147 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i, ptr %wq147, align 8
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @io_wq_create.__key, i16 noundef signext 2) #17
  %free_list = getelementptr inbounds %struct.io_wqe, ptr %call.i.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 1 to ptr), ptr %free_list, align 8
  %all_list = getelementptr inbounds %struct.io_wqe, ptr %call.i.i.i, i32 0, i32 4
  %48 = ptrtoint ptr %all_list to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %all_list, ptr %all_list, align 4
  %prev.i242 = getelementptr inbounds %struct.io_wqe, ptr %call.i.i.i, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %prev.i242 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %all_list, ptr %prev.i242, align 8
  %task155 = getelementptr inbounds %struct.io_wq_data, ptr %data, i32 0, i32 1
  %50 = ptrtoint ptr %task155 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task155, align 4
  %call156 = tail call fastcc ptr @get_task_struct(ptr noundef %51)
  %task157 = getelementptr inbounds %struct.io_wq, ptr %call7.i.i, i32 0, i32 7
  %52 = ptrtoint ptr %task157 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %task157, align 4
  %worker_refs = getelementptr inbounds %struct.io_wq, ptr %call7.i.i, i32 0, i32 4
  %call.i.i241 = tail call zeroext i1 @__kasan_check_write(ptr noundef %worker_refs, i32 noundef 4) #17
  %53 = ptrtoint ptr %worker_refs to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 1, ptr %worker_refs, align 8
  %worker_done = getelementptr inbounds %struct.io_wq, ptr %call7.i.i, i32 0, i32 5
  %54 = ptrtoint ptr %worker_done to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %worker_done, align 4
  %wait.i = getelementptr inbounds %struct.io_wq, ptr %call7.i.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #17
  br label %cleanup177

err:                                              ; preds = %if.end124.err_crit_edge, %refcount_inc.exit.err_crit_edge
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data, align 4
  tail call fastcc void @io_wq_put_hash(ptr noundef %56)
  %57 = load i32, ptr @io_wq_online, align 4
  %call.i243 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef %57, ptr noundef %cpuhp_node, i1 noundef zeroext false) #17
  %wqes164 = getelementptr inbounds %struct.io_wq, ptr %call7.i.i, i32 0, i32 8
  %58 = ptrtoint ptr %wqes164 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %wqes164, align 8
  %tobool166.not = icmp eq ptr %59, null
  br i1 %tobool166.not, label %err.err_wq_crit_edge, label %if.end168

err.err_wq_crit_edge:                             ; preds = %err
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_wq

if.end168:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #19
  %cpu_mask171 = getelementptr inbounds %struct.io_wqe, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %cpu_mask171 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cpu_mask171, align 4
  tail call void @free_cpumask_var(ptr noundef %61) #17
  %62 = ptrtoint ptr %wqes164 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wqes164, align 8
  tail call void @kfree(ptr noundef %63) #17
  br label %err_wq

err_wq:                                           ; preds = %if.end168, %err.err_wq_crit_edge, %if.end106.err_wq_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end106.err_wq_crit_edge ], [ -12, %if.end168 ], [ -12, %err.err_wq_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  %64 = inttoptr i32 %ret.0 to ptr
  br label %cleanup177

cleanup177:                                       ; preds = %err_wq, %if.end127, %if.end100.cleanup177_crit_edge, %if.then62, %land.rhs51.cleanup177_crit_edge, %if.then, %land.rhs.cleanup177_crit_edge
  %retval.0 = phi ptr [ %64, %err_wq ], [ %call7.i.i, %if.end127 ], [ inttoptr (i32 -22 to ptr), %land.rhs.cleanup177_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then ], [ inttoptr (i32 -22 to ptr), %land.rhs51.cleanup177_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then62 ], [ inttoptr (i32 -12 to ptr), %if.end100.cleanup177_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @alloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @io_wqe_hash_wake(ptr noundef %wait, i32 noundef %mode, i32 noundef %sync, ptr nocapture noundef readnone %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wait, i32 -116
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #17
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry1, ptr %entry1, align 4
  %prev.i3.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry1, ptr %prev.i3.i, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %list_del_init.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

list_del_init.exit.rcu_read_lock.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %list_del_init.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %list_del_init.exit.rcu_read_lock.exit_crit_edge
  %flags = getelementptr i8, ptr %wait, i32 -48
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end_crit_edge, label %if.then

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  %acct2 = getelementptr i8, ptr %wait, i32 -72
  %call3 = tail call fastcc zeroext i1 @io_wqe_activate_free_worker(ptr noundef %add.ptr, ptr noundef %acct2)
  br label %if.end

if.end:                                           ; preds = %if.then, %rcu_read_lock.exit.if.end_crit_edge
  %flags.1 = getelementptr i8, ptr %wait, i32 -20
  %call.1 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.1 = getelementptr i8, ptr %wait, i32 -44
  %call3.1 = tail call fastcc zeroext i1 @io_wqe_activate_free_worker(ptr noundef %add.ptr, ptr noundef %arrayidx.1)
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %call.i9 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i9, label %if.end.1.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i12

if.end.1.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i12:                                ; preds = %if.end.1
  %call1.i10 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10)
  %tobool.not.i11 = icmp eq i32 %call1.i10, 0
  br i1 %tobool.not.i11, label %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i14

land.lhs.true.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i14:                               ; preds = %land.lhs.true.i12
  %.b4.i13 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13, label %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, label %if.then.i15

land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i15:                                      ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i15, %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, %if.end.1.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !73
  %12 = tail call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i.i.i.i.i16 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i16 to ptr
  %preempt_count.i.i.i.i17 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i17, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i17, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_task_struct(ptr noundef returned %t) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %usage = getelementptr inbounds %struct.task_struct, ptr %t, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #17
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #17, !srcloc !77
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !74

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !75

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef %.sink.i.i.i) #17
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret ptr %t
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @io_wq_put_hash(ptr noundef %hash) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hash, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %hash, i32 1, i32 3, i32 1) #17
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hash, ptr %hash, i32 1, ptr elementtype(i32) %hash) #17, !srcloc !79
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !75

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %hash, i32 noundef 3) #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !80
  tail call void @kfree(ptr noundef %hash) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @io_wq_exit_start(ptr noundef %wq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_set_bit(i32 noundef 0, ptr noundef %wq) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @io_wq_put_and_exit(ptr noundef %wq) local_unnamed_addr #0 align 64 {
entry:
  %match.i = alloca %struct.io_cb_cancel_data, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %wq, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b41 = load i1, ptr @io_wq_put_and_exit.__already_done, align 1
  br i1 %.b41, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !75

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @io_wq_put_and_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1297, i32 noundef 9, ptr noundef null) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %task.i = getelementptr inbounds %struct.io_wq, ptr %wq, i32 0, i32 7
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end29.io_wq_exit_workers.exit_crit_edge, label %if.end.i

if.end29.io_wq_exit_workers.exit_crit_edge:       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_wq_exit_workers.exit

if.end.i:                                         ; preds = %if.end29
  %call2.i.i = tail call ptr @task_work_cancel_match(ptr noundef nonnull %3, ptr noundef nonnull @io_task_work_match, ptr noundef %wq) #17
  %cmp.not3.i.i = icmp eq ptr %call2.i.i, null
  br i1 %cmp.not3.i.i, label %if.end.i.io_wq_cancel_tw_create.exit.i_crit_edge, label %if.end.i.while.body.i.i_crit_edge

if.end.i.while.body.i.i_crit_edge:                ; preds = %if.end.i
  br label %while.body.i.i

if.end.i.io_wq_cancel_tw_create.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_wq_cancel_tw_create.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.i.while.body.i.i_crit_edge
  %call4.i.i = phi ptr [ %call.i27.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %call2.i.i, %if.end.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %call4.i.i, i32 -144
  tail call fastcc void @io_worker_cancel_cb(ptr noundef %add.ptr.i.i) #17
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 4
  %call.i27.i = tail call ptr @task_work_cancel_match(ptr noundef %5, ptr noundef nonnull @io_task_work_match, ptr noundef %wq) #17
  %cmp.not.i.i = icmp eq ptr %call.i27.i, null
  br i1 %cmp.not.i.i, label %while.body.i.i.io_wq_cancel_tw_create.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i

while.body.i.i.io_wq_cancel_tw_create.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_wq_cancel_tw_create.exit.i

io_wq_cancel_tw_create.exit.i:                    ; preds = %while.body.i.i.io_wq_cancel_tw_create.exit.i_crit_edge, %if.end.i.io_wq_cancel_tw_create.exit.i_crit_edge
  %6 = tail call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i, label %io_wq_cancel_tw_create.exit.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

io_wq_cancel_tw_create.exit.i.rcu_read_lock.exit.i_crit_edge: ; preds = %io_wq_cancel_tw_create.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %io_wq_cancel_tw_create.exit.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #17
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %io_wq_cancel_tw_create.exit.i.rcu_read_lock.exit.i_crit_edge
  %wqes.i = getelementptr inbounds %struct.io_wq, ptr %wq, i32 0, i32 8
  %10 = ptrtoint ptr %wqes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wqes.i, align 4
  tail call fastcc void @io_wq_for_each_worker(ptr noundef %11, ptr noundef nonnull @io_wq_worker_wake, ptr noundef null) #17
  %call.i28.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i28.i, label %rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i31.i

rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i

land.lhs.true.i31.i:                              ; preds = %rcu_read_lock.exit.i
  %call1.i29.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29.i)
  %tobool.not.i30.i = icmp eq i32 %call1.i29.i, 0
  br i1 %tobool.not.i30.i, label %land.lhs.true.i31.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i33.i

land.lhs.true.i31.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i31.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i33.i:                             ; preds = %land.lhs.true.i31.i
  %.b4.i32.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i32.i, label %land.lhs.true2.i33.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i34.i

land.lhs.true2.i33.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i33.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i

if.then.i34.i:                                    ; preds = %land.lhs.true2.i33.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #17
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i34.i, %land.lhs.true2.i33.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i31.i.rcu_read_unlock.exit.i_crit_edge, %rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !73
  %12 = tail call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i.i.i.i.i35.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i35.i to ptr
  %preempt_count.i.i.i.i36.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i36.i, align 4
  %sub.i.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i36.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  %worker_refs.i.i = getelementptr inbounds %struct.io_wq, ptr %wq, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %worker_refs.i.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %worker_refs.i.i, i32 1, i32 3, i32 1) #17
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %worker_refs.i.i, ptr %worker_refs.i.i, i32 1, ptr elementtype(i32) %worker_refs.i.i) #17, !srcloc !70
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i37.i, label %rcu_read_unlock.exit.i.io_worker_ref_put.exit.i_crit_edge

rcu_read_unlock.exit.i.io_worker_ref_put.exit.i_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_worker_ref_put.exit.i

if.then.i37.i:                                    ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %worker_done.i.i = getelementptr inbounds %struct.io_wq, ptr %wq, i32 0, i32 5
  tail call void @complete(ptr noundef %worker_done.i.i) #17
  br label %io_worker_ref_put.exit.i

io_worker_ref_put.exit.i:                         ; preds = %if.then.i37.i, %rcu_read_unlock.exit.i.io_worker_ref_put.exit.i_crit_edge
  %worker_done.i = getelementptr inbounds %struct.io_wq, ptr %wq, i32 0, i32 5
  tail call void @wait_for_completion(ptr noundef %worker_done.i) #17
  %hash.i = getelementptr inbounds %struct.io_wq, ptr %wq, i32 0, i32 3
  %17 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hash.i, align 4
  %wait.i = getelementptr inbounds %struct.io_wq_hash, ptr %18, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %wait.i) #17
  %19 = ptrtoint ptr %wqes.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wqes.i, align 4
  %entry7.i = getelementptr inbounds %struct.io_wqe, ptr %20, i32 0, i32 5, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry7.i) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %io_worker_ref_put.exit.i.list_del_init.exit.i_crit_edge

io_worker_ref_put.exit.i.list_del_init.exit.i_crit_edge: ; preds = %io_worker_ref_put.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %io_worker_ref_put.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr inbounds %struct.io_wqe, ptr %20, i32 0, i32 5, i32 3, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %entry7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entry7.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %io_worker_ref_put.exit.i.list_del_init.exit.i_crit_edge
  %27 = ptrtoint ptr %entry7.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry7.i, ptr %entry7.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.io_wqe, ptr %20, i32 0, i32 5, i32 3, i32 1
  %28 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry7.i, ptr %prev.i3.i.i, align 4
  %29 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hash.i, align 4
  %wait9.i = getelementptr inbounds %struct.io_wq_hash, ptr %30, i32 0, i32 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %wait9.i) #17
  %31 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i, align 4
  %usage.i.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #17
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #17, !srcloc !79
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i38.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.put_task_struct.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !75

if.end5.i.i.i.i.i.put_task_struct.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %put_task_struct.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef 3) #17
  br label %put_task_struct.exit.i

if.then.i38.i:                                    ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !80
  tail call void @__put_task_struct(ptr noundef %32) #17
  br label %put_task_struct.exit.i

put_task_struct.exit.i:                           ; preds = %if.then.i38.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.put_task_struct.exit.i_crit_edge
  %34 = ptrtoint ptr %task.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %task.i, align 4
  br label %io_wq_exit_workers.exit

io_wq_exit_workers.exit:                          ; preds = %put_task_struct.exit.i, %if.end29.io_wq_exit_workers.exit_crit_edge
  %35 = load i32, ptr @io_wq_online, align 4
  %cpuhp_node.i = getelementptr inbounds %struct.io_wq, ptr %wq, i32 0, i32 6
  %call.i.i42 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef %35, ptr noundef %cpuhp_node.i, i1 noundef zeroext false) #17
  %wqes.i43 = getelementptr inbounds %struct.io_wq, ptr %wq, i32 0, i32 8
  %36 = ptrtoint ptr %wqes.i43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wqes.i43, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %match.i) #17
  %38 = call ptr @memcpy(ptr %match.i, ptr @__const.io_wq_destroy.match, i32 20)
  tail call void @_raw_spin_lock(ptr noundef %37) #17
  %cancel_all.i.i = getelementptr inbounds %struct.io_cb_cancel_data, ptr %match.i, i32 0, i32 4
  %arrayidx.i.i.i = getelementptr %struct.io_wqe, ptr %37, i32 0, i32 1, i32 0
  %arrayidx.i.1.i.i = getelementptr %struct.io_wqe, ptr %37, i32 0, i32 1, i32 1
  br label %retry.i.i

retry.i.i:                                        ; preds = %if.then.i.i46.retry.i.i_crit_edge, %io_wq_exit_workers.exit
  %call2.i.i44 = call fastcc zeroext i1 @io_acct_cancel_pending_work(ptr noundef %37, ptr noundef %arrayidx.i.i.i, ptr noundef nonnull %match.i) #17
  br i1 %call2.i.i44, label %retry.i.i.if.then.i.i46_crit_edge, label %for.cond.i.i

retry.i.i.if.then.i.i46_crit_edge:                ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i46

for.cond.i.i:                                     ; preds = %retry.i.i
  %call2.1.i.i = call fastcc zeroext i1 @io_acct_cancel_pending_work(ptr noundef %37, ptr noundef %arrayidx.i.1.i.i, ptr noundef nonnull %match.i) #17
  br i1 %call2.1.i.i, label %for.cond.i.i.if.then.i.i46_crit_edge, label %for.cond.i.i.io_wqe_cancel_pending_work.exit.i_crit_edge

for.cond.i.i.io_wqe_cancel_pending_work.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_wqe_cancel_pending_work.exit.i

for.cond.i.i.if.then.i.i46_crit_edge:             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i46

if.then.i.i46:                                    ; preds = %for.cond.i.i.if.then.i.i46_crit_edge, %retry.i.i.if.then.i.i46_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %37) #17
  %39 = ptrtoint ptr %cancel_all.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cancel_all.i.i, align 4, !range !76
  %tobool.not.i.i45 = icmp eq i8 %40, 0
  br i1 %tobool.not.i.i45, label %if.then.i.i46.io_wqe_cancel_pending_work.exit.i_crit_edge, label %if.then.i.i46.retry.i.i_crit_edge

if.then.i.i46.retry.i.i_crit_edge:                ; preds = %if.then.i.i46
  call void @__sanitizer_cov_trace_pc() #19
  br label %retry.i.i

if.then.i.i46.io_wqe_cancel_pending_work.exit.i_crit_edge: ; preds = %if.then.i.i46
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_wqe_cancel_pending_work.exit.i

io_wqe_cancel_pending_work.exit.i:                ; preds = %if.then.i.i46.io_wqe_cancel_pending_work.exit.i_crit_edge, %for.cond.i.i.io_wqe_cancel_pending_work.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %37) #17
  %cpu_mask.i = getelementptr inbounds %struct.io_wqe, ptr %37, i32 0, i32 8
  %41 = ptrtoint ptr %cpu_mask.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cpu_mask.i, align 4
  tail call void @free_cpumask_var(ptr noundef %42) #17
  tail call void @kfree(ptr noundef %37) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %match.i) #17
  %hash.i47 = getelementptr inbounds %struct.io_wq, ptr %wq, i32 0, i32 3
  %43 = ptrtoint ptr %hash.i47 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hash.i47, align 4
  %call.i.i.i.i.i.i.i48 = tail call zeroext i1 @__kasan_check_write(ptr noundef %44, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %44, i32 1, i32 3, i32 1) #17
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #17, !srcloc !79
  %asmresult.i.i.i.i.i.i.i.i49 = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i49)
  %cmp.i.i.i.i.i50 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i49, 1
  br i1 %cmp.i.i.i.i.i50, label %if.then.i10.i, label %if.end5.i.i.i.i.i52

if.end5.i.i.i.i.i52:                              ; preds = %io_wqe_cancel_pending_work.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i49)
  %.not.i.i.i.i.i51 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i49, 0
  br i1 %.not.i.i.i.i.i51, label %if.end5.i.i.i.i.i52.io_wq_destroy.exit_crit_edge, label %if.then10.i.i.i.i.i53, !prof !75

if.end5.i.i.i.i.i52.io_wq_destroy.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i52
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_wq_destroy.exit

if.then10.i.i.i.i.i53:                            ; preds = %if.end5.i.i.i.i.i52
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %44, i32 noundef 3) #17
  br label %io_wq_destroy.exit

if.then.i10.i:                                    ; preds = %io_wqe_cancel_pending_work.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !80
  tail call void @kfree(ptr noundef %44) #17
  br label %io_wq_destroy.exit

io_wq_destroy.exit:                               ; preds = %if.then.i10.i, %if.then10.i.i.i.i.i53, %if.end5.i.i.i.i.i52.io_wq_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef %wq) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @io_wq_cpu_affinity(ptr nocapture noundef readonly %wq, ptr noundef readonly %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %wqes = getelementptr inbounds %struct.io_wq, ptr %wq, i32 0, i32 8
  %4 = ptrtoint ptr %wqes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wqes, align 4
  %tobool.not = icmp eq ptr %mask, null
  %cpu_mask1 = getelementptr inbounds %struct.io_wqe, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %cpu_mask1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpu_mask1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i6 = add i32 %8, 31
  %9 = lshr i32 %sub.i.i6, 3
  %mul.i.i7 = and i32 %9, 536870908
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  %10 = call ptr @memcpy(ptr %7, ptr %mask, i32 %mul.i.i7)
  br label %for.end

if.else:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  %11 = call ptr @memcpy(ptr %7, ptr @__cpu_online_mask, i32 %mul.i.i7)
  br label %for.end

for.end:                                          ; preds = %if.else, %if.then
  %call.i8 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i8, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i11

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i11:                                ; preds = %for.end
  %call1.i9 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i11
  %.b4.i12 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12, label %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, label %if.then.i14

land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i14:                                      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i14, %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !73
  %12 = tail call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i.i.i.i.i15 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i15 to ptr
  %preempt_count.i.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i16, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i16, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @io_wq_max_workers(ptr nocapture noundef readonly %wq, ptr nocapture noundef %new_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %new_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %new_count, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 111
  %6 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %7, i32 0, i32 51, i32 6
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %9)
  %cmp8 = icmp ugt i32 %1, %9
  br i1 %cmp8, label %if.then, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i, align 8
  %12 = ptrtoint ptr %new_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %new_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr i32, ptr %new_count, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1, align 4
  %15 = tail call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i.1 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.1 to ptr
  %task.1 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.1, align 8
  %signal.i.1 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 111
  %19 = ptrtoint ptr %signal.i.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %signal.i.1, align 16
  %arrayidx.i.1 = getelementptr %struct.signal_struct, ptr %20, i32 0, i32 51, i32 6
  %21 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i.1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %22)
  %cmp8.1 = icmp ugt i32 %14, %22
  br i1 %cmp8.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx.i.1, align 8
  %25 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %26 = tail call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %for.inc.1.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.inc.1.rcu_read_lock.exit_crit_edge:           ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.inc.1
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.inc.1.rcu_read_lock.exit_crit_edge
  %wqes = getelementptr inbounds %struct.io_wq, ptr %wq, i32 0, i32 8
  %30 = ptrtoint ptr %wqes to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wqes, align 4
  tail call void @_raw_spin_lock(ptr noundef %31) #17
  %max_workers = getelementptr %struct.io_wqe, ptr %31, i32 0, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %max_workers to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_workers, align 4
  %34 = ptrtoint ptr %new_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %new_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool35.not = icmp eq i32 %35, 0
  br i1 %tobool35.not, label %rcu_read_lock.exit.for.inc40_crit_edge, label %if.then36

rcu_read_lock.exit.for.inc40_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc40

if.then36:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  %36 = ptrtoint ptr %max_workers to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %max_workers, align 4
  br label %for.inc40

for.inc40:                                        ; preds = %if.then36, %rcu_read_lock.exit.for.inc40_crit_edge
  %max_workers.1 = getelementptr %struct.io_wqe, ptr %31, i32 0, i32 1, i32 1, i32 1
  %37 = ptrtoint ptr %max_workers.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_workers.1, align 4
  %39 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool35.not.1 = icmp eq i32 %40, 0
  br i1 %tobool35.not.1, label %for.inc40.for.inc40.1_crit_edge, label %if.then36.1

for.inc40.for.inc40.1_crit_edge:                  ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc40.1

if.then36.1:                                      ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #19
  %41 = ptrtoint ptr %max_workers.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %max_workers.1, align 4
  br label %for.inc40.1

for.inc40.1:                                      ; preds = %if.then36.1, %for.inc40.for.inc40.1_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %31) #17
  %call.i85 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i85, label %for.inc40.1.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i88

for.inc40.1.rcu_read_unlock.exit_crit_edge:       ; preds = %for.inc40.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i88:                                ; preds = %for.inc40.1
  %call1.i86 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i86)
  %tobool.not.i87 = icmp eq i32 %call1.i86, 0
  br i1 %tobool.not.i87, label %land.lhs.true.i88.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i90

land.lhs.true.i88.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i90:                               ; preds = %land.lhs.true.i88
  %.b4.i89 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i89, label %land.lhs.true2.i90.rcu_read_unlock.exit_crit_edge, label %if.then.i91

land.lhs.true2.i90.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i90
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i91:                                      ; preds = %land.lhs.true2.i90
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i91, %land.lhs.true2.i90.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i88.rcu_read_unlock.exit_crit_edge, %for.inc40.1.rcu_read_unlock.exit_crit_edge
  %42 = tail call i32 @llvm.smax.i32(i32 %38, i32 0)
  %43 = tail call i32 @llvm.smax.i32(i32 %33, i32 0)
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !73
  %44 = tail call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i.i.i.i.i92 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i92 to ptr
  %preempt_count.i.i.i.i93 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i93, align 4
  %sub.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i93, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  %48 = ptrtoint ptr %new_count to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %43, ptr %new_count, align 4
  %49 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %42, ptr %arrayidx.1, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @io_wq_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.15, i1 noundef zeroext false, ptr noundef nonnull @io_wq_cpu_online, ptr noundef nonnull @io_wq_cpu_offline, i1 noundef zeroext true) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  store i32 %call.i, ptr @io_wq_online, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @io_queue_worker_create(ptr noundef %worker, ptr noundef %acct, ptr noundef %func) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %wqe1 = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 5
  %0 = ptrtoint ptr %wqe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wqe1, align 4
  %wq2 = getelementptr inbounds %struct.io_wqe, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %wq2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.fail_crit_edge

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc zeroext i1 @io_worker_get(ptr noundef %worker)
  br i1 %call3, label %if.end5, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail

if.end5:                                          ; preds = %if.end
  %create_state = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 10
  %6 = ptrtoint ptr %create_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %create_state, align 4
  %and1.i40 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i40)
  %tobool7.not = icmp eq i32 %and1.i40, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.end5.fail_release_crit_edge

if.end5.fail_release_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_release

lor.lhs.false:                                    ; preds = %if.end5
  %call.i.i43 = tail call zeroext i1 @__kasan_check_write(ptr noundef %create_state, i32 noundef 4) #17
  %8 = ptrtoint ptr %create_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %create_state, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %test_and_set_bit_lock.exit, label %lor.lhs.false.fail_release_crit_edge

lor.lhs.false.fail_release_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_release

test_and_set_bit_lock.exit:                       ; preds = %lor.lhs.false
  tail call void @llvm.prefetch.p0(ptr %create_state, i32 1, i32 3, i32 1) #17
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %create_state, ptr %create_state, i32 1, ptr elementtype(i32) %create_state) #17, !srcloc !81
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !82
  %and1.i.i = and i32 %asmresult.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %phi.cmp.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %phi.cmp.i.not, label %if.end11, label %test_and_set_bit_lock.exit.fail_release_crit_edge

test_and_set_bit_lock.exit.fail_release_crit_edge: ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail_release

if.end11:                                         ; preds = %test_and_set_bit_lock.exit
  %worker_refs = getelementptr inbounds %struct.io_wq, ptr %3, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %worker_refs, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %worker_refs, i32 1, i32 3, i32 1) #17
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %worker_refs, ptr %worker_refs, i32 1, ptr elementtype(i32) %worker_refs) #17, !srcloc !68
  %create_work = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 11
  %func1.i = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %func1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %func, ptr %func1.i, align 4
  %index = getelementptr inbounds %struct.io_wqe_acct, ptr %acct, i32 0, i32 2
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  %create_index = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 12
  %15 = ptrtoint ptr %create_index to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %create_index, align 4
  %task = getelementptr inbounds %struct.io_wq, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 4
  %call13 = tail call i32 @task_work_add(ptr noundef %17, ptr noundef %create_work, i32 noundef 2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.end11
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %3, align 4
  %and1.i41 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i41)
  %tobool18.not = icmp eq i32 %and1.i41, 0
  br i1 %tobool18.not, label %if.then15.if.end20_crit_edge, label %if.then19

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @io_wq_cancel_tw_create(ptr noundef %3)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then15.if.end20_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %worker_refs, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %worker_refs, i32 1, i32 3, i32 1) #17
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %worker_refs, ptr %worker_refs, i32 1, ptr elementtype(i32) %worker_refs) #17, !srcloc !70
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end20.cleanup.sink.split_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end20.cleanup.sink.split_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.end21:                                         ; preds = %if.end11
  %call.i.i.i45 = tail call zeroext i1 @__kasan_check_write(ptr noundef %worker_refs, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %worker_refs, i32 1, i32 3, i32 1) #17
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %worker_refs, ptr %worker_refs, i32 1, ptr elementtype(i32) %worker_refs) #17, !srcloc !70
  %asmresult.i.i.i.i.i.i46 = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i46)
  %cmp.i.i.i47 = icmp eq i32 %asmresult.i.i.i.i.i.i46, 0
  br i1 %cmp.i.i.i47, label %if.then.i49, label %if.end21.io_worker_ref_put.exit50_crit_edge

if.end21.io_worker_ref_put.exit50_crit_edge:      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_worker_ref_put.exit50

if.then.i49:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  %worker_done.i48 = getelementptr inbounds %struct.io_wq, ptr %3, i32 0, i32 5
  tail call void @complete(ptr noundef %worker_done.i48) #17
  br label %io_worker_ref_put.exit50

io_worker_ref_put.exit50:                         ; preds = %if.then.i49, %if.end21.io_worker_ref_put.exit50_crit_edge
  %call.i.i51 = tail call zeroext i1 @__kasan_check_write(ptr noundef %create_state, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !83
  tail call void @llvm.prefetch.p0(ptr %create_state, i32 1, i32 3, i32 1) #17
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %create_state, ptr %create_state, i32 1, ptr elementtype(i32) %create_state) #17, !srcloc !84
  br label %fail_release

fail_release:                                     ; preds = %io_worker_ref_put.exit50, %test_and_set_bit_lock.exit.fail_release_crit_edge, %lor.lhs.false.fail_release_crit_edge, %if.end5.fail_release_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %worker, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %worker, i32 1, i32 3, i32 1) #17
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %worker, ptr %worker, i32 1, ptr elementtype(i32) %worker) #17, !srcloc !79
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i52, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %fail_release
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.fail_crit_edge, label %if.then10.i.i.i.i, !prof !75

if.end5.i.i.i.i.fail_crit_edge:                   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %worker, i32 noundef 3) #17
  br label %fail

if.then.i52:                                      ; preds = %fail_release
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !80
  %ref_done.i = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 9
  tail call void @complete(ptr noundef %ref_done.i) #17
  br label %fail

fail:                                             ; preds = %if.then.i52, %if.then10.i.i.i.i, %if.end5.i.i.i.i.fail_crit_edge, %if.end.fail_crit_edge, %entry.fail_crit_edge
  %nr_running = getelementptr inbounds %struct.io_wqe_acct, ptr %acct, i32 0, i32 3
  %call.i.i42 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_running, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %nr_running, i32 1, i32 3, i32 1) #17
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_running, ptr %nr_running, i32 1, ptr elementtype(i32) %nr_running) #17, !srcloc !85
  %worker_refs.i53 = getelementptr inbounds %struct.io_wq, ptr %3, i32 0, i32 4
  %call.i.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %worker_refs.i53, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %worker_refs.i53, i32 1, i32 3, i32 1) #17
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %worker_refs.i53, ptr %worker_refs.i53, i32 1, ptr elementtype(i32) %worker_refs.i53) #17, !srcloc !70
  %asmresult.i.i.i.i.i.i55 = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i55)
  %cmp.i.i.i56 = icmp eq i32 %asmresult.i.i.i.i.i.i55, 0
  br i1 %cmp.i.i.i56, label %fail.cleanup.sink.split_crit_edge, label %fail.cleanup_crit_edge

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

fail.cleanup.sink.split_crit_edge:                ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %fail.cleanup.sink.split_crit_edge, %if.end20.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i1 [ true, %if.end20.cleanup.sink.split_crit_edge ], [ false, %fail.cleanup.sink.split_crit_edge ]
  %worker_done.i57 = getelementptr inbounds %struct.io_wq, ptr %3, i32 0, i32 5
  tail call void @complete(ptr noundef %worker_done.i57) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %fail.cleanup_crit_edge, %if.end20.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end20.cleanup_crit_edge ], [ false, %fail.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @create_worker_cb(ptr noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %wqe1 = getelementptr i8, ptr %cb, i32 -116
  %0 = ptrtoint ptr %wqe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wqe1, align 4
  %wq2 = getelementptr inbounds %struct.io_wqe, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %wq2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq2, align 4
  %create_index = getelementptr i8, ptr %cb, i32 8
  %4 = ptrtoint ptr %create_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %create_index, align 4
  %arrayidx = getelementptr %struct.io_wqe, ptr %1, i32 0, i32 1, i32 %5
  tail call void @_raw_spin_lock(ptr noundef %1) #17
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %max_workers = getelementptr %struct.io_wqe, ptr %1, i32 0, i32 1, i32 %5, i32 1
  %8 = ptrtoint ptr %max_workers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_workers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp ult i32 %7, %9
  br i1 %cmp, label %if.then, label %if.else.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %inc = add nuw i32 %7, 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock(ptr noundef %1) #17
  %11 = ptrtoint ptr %create_index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %create_index, align 4
  %call = tail call fastcc zeroext i1 @create_io_worker(ptr noundef %3, ptr noundef %1, i32 noundef %12)
  br label %if.end8

if.else.critedge:                                 ; preds = %entry
  tail call void @_raw_spin_unlock(ptr noundef %1) #17
  %nr_running = getelementptr %struct.io_wqe, ptr %1, i32 0, i32 1, i32 %5, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_running, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %nr_running, i32 1, i32 3, i32 1) #17
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_running, ptr %nr_running, i32 1, ptr elementtype(i32) %nr_running) #17, !srcloc !85
  %worker_refs.i = getelementptr inbounds %struct.io_wq, ptr %3, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %worker_refs.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %worker_refs.i, i32 1, i32 3, i32 1) #17
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %worker_refs.i, ptr %worker_refs.i, i32 1, ptr elementtype(i32) %worker_refs.i) #17, !srcloc !70
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.else.critedge.if.end8_crit_edge

if.else.critedge.if.end8_crit_edge:               ; preds = %if.else.critedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.then.i:                                        ; preds = %if.else.critedge
  call void @__sanitizer_cov_trace_pc() #19
  %worker_done.i = getelementptr inbounds %struct.io_wq, ptr %3, i32 0, i32 5
  tail call void @complete(ptr noundef %worker_done.i) #17
  br label %if.end8

if.end8:                                          ; preds = %if.then.i, %if.else.critedge.if.end8_crit_edge, %if.then
  %add.ptr = getelementptr i8, ptr %cb, i32 -144
  %create_state = getelementptr i8, ptr %cb, i32 -4
  %call.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef %create_state, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !83
  tail call void @llvm.prefetch.p0(ptr %create_state, i32 1, i32 3, i32 1) #17
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %create_state, ptr %create_state, i32 1, ptr elementtype(i32) %create_state) #17, !srcloc !84
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #17
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #17, !srcloc !79
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i22, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.io_worker_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !75

if.end5.i.i.i.i.io_worker_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_worker_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef 3) #17
  br label %io_worker_release.exit

if.then.i22:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !80
  %ref_done.i = getelementptr i8, ptr %cb, i32 -60
  tail call void @complete(ptr noundef %ref_done.i) #17
  br label %io_worker_release.exit

io_worker_release.exit:                           ; preds = %if.then.i22, %if.then10.i.i.i.i, %if.end5.i.i.i.i.io_worker_release.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @io_worker_get(ptr noundef %worker) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #17
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %worker, i32 noundef 4) #17
  %0 = ptrtoint ptr %worker to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %worker, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %worker, i32 noundef 4) #17
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #17
  %4 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %worker, i32 1, i32 3, i32 1) #17
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %worker, ptr %worker, i32 %5, i32 %add.i.i.i, ptr elementtype(i32) %worker) #17, !srcloc !86
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !75

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !75

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @refcount_warn_saturate(ptr noundef %worker, i32 noundef 0) #17
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #17
  ret i1 %tobool12.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_work_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @io_wq_cancel_tw_create(ptr noundef %wq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %task = getelementptr inbounds %struct.io_wq, ptr %wq, i32 0, i32 7
  %0 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task, align 4
  %call2 = tail call ptr @task_work_cancel_match(ptr noundef %1, ptr noundef nonnull @io_task_work_match, ptr noundef %wq) #17
  %cmp.not3 = icmp eq ptr %call2, null
  br i1 %cmp.not3, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call4 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call2, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call4, i32 -144
  tail call fastcc void @io_worker_cancel_cb(ptr noundef %add.ptr)
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 4
  %call = tail call ptr @task_work_cancel_match(ptr noundef %3, ptr noundef nonnull @io_task_work_match, ptr noundef %wq) #17
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @io_worker_ref_put(ptr noundef %wq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %worker_refs = getelementptr inbounds %struct.io_wq, ptr %wq, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %worker_refs, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %worker_refs, i32 1, i32 3, i32 1) #17
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %worker_refs, ptr %worker_refs, i32 1, ptr elementtype(i32) %worker_refs) #17, !srcloc !70
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %worker_done = getelementptr inbounds %struct.io_wq, ptr %wq, i32 0, i32 5
  tail call void @complete(ptr noundef %worker_done) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_work_cancel_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @io_task_work_match(ptr nocapture noundef readonly %cb, ptr noundef readnone %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %func = getelementptr inbounds %struct.callback_head, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func, align 4
  %cmp.not = icmp eq ptr %1, @create_worker_cb
  %cmp2.not = icmp eq ptr %1, @create_worker_cont
  %or.cond = or i1 %cmp.not, %cmp2.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %wqe = getelementptr i8, ptr %cb, i32 -116
  %2 = ptrtoint ptr %wqe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wqe, align 4
  %wq = getelementptr inbounds %struct.io_wqe, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wq, align 4
  %cmp3 = icmp eq ptr %5, %data
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp3, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @io_worker_cancel_cb(ptr noundef %worker) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %wqe.i = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 5
  %0 = ptrtoint ptr %wqe.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wqe.i, align 4
  %flags.i = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = lshr i32 %3, 3
  %and.lobit.i = and i32 %and.i, 1
  %4 = xor i32 %and.lobit.i, 1
  %arrayidx.i.i = getelementptr %struct.io_wqe, ptr %1, i32 0, i32 1, i32 %4
  %wq2 = getelementptr inbounds %struct.io_wqe, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %wq2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wq2, align 4
  %nr_running = getelementptr %struct.io_wqe, ptr %1, i32 0, i32 1, i32 %4, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_running, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %nr_running, i32 1, i32 3, i32 1) #17
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_running, ptr %nr_running, i32 1, ptr elementtype(i32) %nr_running) #17, !srcloc !85
  %8 = ptrtoint ptr %wqe.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wqe.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %9) #17
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %arrayidx.i.i, align 4
  %12 = ptrtoint ptr %wqe.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wqe.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %13) #17
  %worker_refs.i = getelementptr inbounds %struct.io_wq, ptr %6, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %worker_refs.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %worker_refs.i, i32 1, i32 3, i32 1) #17
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %worker_refs.i, ptr %worker_refs.i, i32 1, ptr elementtype(i32) %worker_refs.i) #17, !srcloc !70
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %entry.io_worker_ref_put.exit_crit_edge

entry.io_worker_ref_put.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_worker_ref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %worker_done.i = getelementptr inbounds %struct.io_wq, ptr %6, i32 0, i32 5
  tail call void @complete(ptr noundef %worker_done.i) #17
  br label %io_worker_ref_put.exit

io_worker_ref_put.exit:                           ; preds = %if.then.i, %entry.io_worker_ref_put.exit_crit_edge
  %create_state = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 10
  %call.i.i12 = tail call zeroext i1 @__kasan_check_write(ptr noundef %create_state, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !83
  tail call void @llvm.prefetch.p0(ptr %create_state, i32 1, i32 3, i32 1) #17
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %create_state, ptr %create_state, i32 1, ptr elementtype(i32) %create_state) #17, !srcloc !84
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %worker, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %worker, i32 1, i32 3, i32 1) #17
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %worker, ptr %worker, i32 1, ptr elementtype(i32) %worker) #17, !srcloc !79
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i13, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %io_worker_ref_put.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.io_worker_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !75

if.end5.i.i.i.i.io_worker_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_worker_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %worker, i32 noundef 3) #17
  br label %io_worker_release.exit

if.then.i13:                                      ; preds = %io_worker_ref_put.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !80
  %ref_done.i = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 9
  tail call void @complete(ptr noundef %ref_done.i) #17
  br label %io_worker_release.exit

io_worker_release.exit:                           ; preds = %if.then.i13, %if.then10.i.i.i.i, %if.end5.i.i.i.i.io_worker_release.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @create_worker_cont(ptr noundef %cb) #0 align 64 {
entry:
  %match = alloca %struct.io_cb_cancel_data, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cb, i32 -144
  %create_state = getelementptr i8, ptr %cb, i32 -4
  %call.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %create_state, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !83
  tail call void @llvm.prefetch.p0(ptr %create_state, i32 1, i32 3, i32 1) #17
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %create_state, ptr %create_state, i32 1, ptr elementtype(i32) %create_state) #17, !srcloc !84
  %wqe1 = getelementptr i8, ptr %cb, i32 -116
  %1 = ptrtoint ptr %wqe1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wqe1, align 4
  %node = getelementptr inbounds %struct.io_wqe, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %node, align 4
  %call = tail call ptr @create_io_thread(ptr noundef nonnull @io_wqe_worker, ptr noundef %add.ptr, i32 noundef %4) #17
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @io_init_new_worker(ptr noundef %2, ptr noundef %add.ptr, ptr noundef %call)
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #17
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #17, !srcloc !79
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !75

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef 3) #17
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !80
  %ref_done.i = getelementptr i8, ptr %cb, i32 -60
  tail call void @complete(ptr noundef %ref_done.i) #17
  br label %cleanup

if.else:                                          ; preds = %entry
  %6 = ptrtoint ptr %call to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stack.i.i.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i.i.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.if.end.i_crit_edge, label %fatal_signal_pending.exit.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

fatal_signal_pending.exit.i:                      ; preds = %if.else
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 116, i32 1
  %15 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %signal.i.i.i, align 4
  %17 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %fatal_signal_pending.exit.i.if.end.i_crit_edge, label %fatal_signal_pending.exit.i.if.then5_crit_edge

fatal_signal_pending.exit.i.if.then5_crit_edge:   ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5

fatal_signal_pending.exit.i.if.end.i_crit_edge:   ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.end.i:                                         ; preds = %fatal_signal_pending.exit.i.if.end.i_crit_edge, %if.else.if.end.i_crit_edge
  %18 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end.i.if.then5_crit_edge [
    i32 -11, label %if.end.i.if.end13_crit_edge
    i32 -512, label %if.end.i.if.end13_crit_edge52
    i32 -513, label %if.end.i.if.end13_crit_edge53
    i32 -514, label %if.end.i.if.end13_crit_edge54
  ]

if.end.i.if.end13_crit_edge54:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.end.i.if.end13_crit_edge53:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.end.i.if.end13_crit_edge52:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.end.i.if.then5_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5

if.then5:                                         ; preds = %if.end.i.if.then5_crit_edge, %fatal_signal_pending.exit.i.if.then5_crit_edge
  %19 = ptrtoint ptr %wqe1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wqe1, align 4
  %flags.i = getelementptr i8, ptr %cb, i32 -140
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and.i = lshr i32 %22, 3
  %and.lobit.i = and i32 %and.i, 1
  %23 = xor i32 %and.lobit.i, 1
  %arrayidx.i.i = getelementptr %struct.io_wqe, ptr %20, i32 0, i32 1, i32 %23
  %nr_running = getelementptr %struct.io_wqe, ptr %20, i32 0, i32 1, i32 %23, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_running, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %nr_running, i32 1, i32 3, i32 1) #17
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_running, ptr %nr_running, i32 1, ptr elementtype(i32) %nr_running) #17, !srcloc !85
  tail call void @_raw_spin_lock(ptr noundef %2) #17
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i, align 4
  %dec = add i32 %26, -1
  store i32 %dec, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then8, label %if.then5.if.end_crit_edge

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then8:                                         ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %match) #17
  %27 = call ptr @memcpy(ptr %match, ptr @__const.io_wq_destroy.match, i32 20)
  %call951 = call fastcc zeroext i1 @io_acct_cancel_pending_work(ptr noundef %2, ptr noundef %arrayidx.i.i, ptr noundef nonnull %match)
  br i1 %call951, label %if.then8.while.body_crit_edge, label %if.then8.while.end_crit_edge

if.then8.while.end_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

if.then8.while.body_crit_edge:                    ; preds = %if.then8
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then8.while.body_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %2) #17
  %call9 = call fastcc zeroext i1 @io_acct_cancel_pending_work(ptr noundef %2, ptr noundef %arrayidx.i.i, ptr noundef nonnull %match)
  br i1 %call9, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then8.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %match) #17
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then5.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %2) #17
  %wq = getelementptr inbounds %struct.io_wqe, ptr %2, i32 0, i32 6
  %28 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wq, align 4
  %worker_refs.i = getelementptr inbounds %struct.io_wq, ptr %29, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %worker_refs.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %worker_refs.i, i32 1, i32 3, i32 1) #17
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %worker_refs.i, ptr %worker_refs.i, i32 1, ptr elementtype(i32) %worker_refs.i) #17, !srcloc !70
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i37, label %if.end.io_worker_ref_put.exit_crit_edge

if.end.io_worker_ref_put.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_worker_ref_put.exit

if.then.i37:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %worker_done.i = getelementptr inbounds %struct.io_wq, ptr %29, i32 0, i32 5
  tail call void @complete(ptr noundef %worker_done.i) #17
  br label %io_worker_ref_put.exit

io_worker_ref_put.exit:                           ; preds = %if.then.i37, %if.end.io_worker_ref_put.exit_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #17
  br label %cleanup

if.end13:                                         ; preds = %if.end.i.if.end13_crit_edge, %if.end.i.if.end13_crit_edge52, %if.end.i.if.end13_crit_edge53, %if.end.i.if.end13_crit_edge54
  %call.i.i.i.i.i.i39 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #17
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #17, !srcloc !79
  %asmresult.i.i.i.i.i.i.i40 = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i40)
  %cmp.i.i.i.i41 = icmp eq i32 %asmresult.i.i.i.i.i.i.i40, 1
  br i1 %cmp.i.i.i.i41, label %if.then.i46, label %if.end5.i.i.i.i43

if.end5.i.i.i.i43:                                ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i40)
  %.not.i.i.i.i42 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i40, 0
  br i1 %.not.i.i.i.i42, label %if.end5.i.i.i.i43.io_worker_release.exit48_crit_edge, label %if.then10.i.i.i.i44, !prof !75

if.end5.i.i.i.i43.io_worker_release.exit48_crit_edge: ; preds = %if.end5.i.i.i.i43
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_worker_release.exit48

if.then10.i.i.i.i44:                              ; preds = %if.end5.i.i.i.i43
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef 3) #17
  br label %io_worker_release.exit48

if.then.i46:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !80
  %ref_done.i45 = getelementptr i8, ptr %cb, i32 -60
  tail call void @complete(ptr noundef %ref_done.i45) #17
  br label %io_worker_release.exit48

io_worker_release.exit48:                         ; preds = %if.then.i46, %if.then10.i.i.i.i44, %if.end5.i.i.i.i43.io_worker_release.exit48_crit_edge
  %32 = getelementptr i8, ptr %cb, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %33 = load ptr, ptr @system_wq, align 4
  %call.i.i49 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %32) #17
  br label %cleanup

cleanup:                                          ; preds = %io_worker_release.exit48, %io_worker_ref_put.exit, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @create_io_thread(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @io_wqe_worker(ptr noundef %data) #8 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  %ksig = alloca %struct.ksignal, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %wqe.i = getelementptr inbounds %struct.io_worker, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %wqe.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wqe.i, align 4
  %flags.i = getelementptr inbounds %struct.io_worker, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = lshr i32 %3, 3
  %and.lobit.i = and i32 %and.i, 1
  %4 = xor i32 %and.lobit.i, 1
  %arrayidx.i.i = getelementptr %struct.io_wqe, ptr %1, i32 0, i32 1, i32 %4
  %wq2 = getelementptr inbounds %struct.io_wqe, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %wq2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wq2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #17
  %or = or i32 %3, 3
  %7 = call ptr @memset(ptr %buf, i32 255, i32 16)
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %flags.i, align 4
  %task = getelementptr inbounds %struct.io_wq, ptr %6, i32 0, i32 7
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 4
  %pid = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid, align 8
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %12)
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i207 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i207 to ptr
  %task5 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task5, align 8
  call void @__set_task_comm(ptr noundef %16, ptr noundef nonnull %buf, i1 noundef zeroext false) #17
  %flags.i208 = getelementptr %struct.io_wqe, ptr %1, i32 0, i32 1, i32 %4, i32 5
  %work_list.i = getelementptr %struct.io_wqe, ptr %1, i32 0, i32 1, i32 %4, i32 4
  %nulls_node.i = getelementptr inbounds %struct.io_worker, ptr %data, i32 0, i32 2
  %free_list.i = getelementptr inbounds %struct.io_wqe, ptr %1, i32 0, i32 3
  %pprev.i.i = getelementptr inbounds %struct.io_worker, ptr %data, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %6, align 4
  %and1.i232 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i232)
  %tobool.not233 = icmp eq i32 %and1.i232, 0
  br i1 %tobool.not233, label %entry.__here_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

entry.__here_crit_edge:                           ; preds = %entry
  br label %__here

__here:                                           ; preds = %cleanup170.__here_crit_edge, %entry.__here_crit_edge
  %last_timeout.0.off0234 = phi i1 [ %last_timeout.1.off0, %cleanup170.__here_crit_edge ], [ false, %entry.__here_crit_edge ]
  %19 = ptrtoint ptr %task5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task5, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 212
  %21 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 ptrtoint (ptr blockaddress(@io_wqe_worker, %__here) to i32), ptr %task_state_change, align 4
  %22 = load ptr, ptr %task5, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 1, ptr %22, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !87
  call void @_raw_spin_lock(ptr noundef %1) #17
  %24 = ptrtoint ptr %work_list.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %work_list.i, align 4
  %cmp.i227 = icmp eq ptr %25, null
  br i1 %cmp.i227, label %__here.if.end76_crit_edge, label %__here.land.lhs.true.i_crit_edge

__here.land.lhs.true.i_crit_edge:                 ; preds = %__here
  br label %land.lhs.true.i

__here.if.end76_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end76

land.lhs.true.i:                                  ; preds = %if.then75.land.lhs.true.i_crit_edge, %__here.land.lhs.true.i_crit_edge
  %26 = ptrtoint ptr %flags.i208 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags.i208, align 4
  %and1.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then75, label %land.lhs.true.i.if.end76_crit_edge

land.lhs.true.i.if.end76_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end76

if.then75:                                        ; preds = %land.lhs.true.i
  call fastcc void @io_worker_handle_work(ptr noundef %data)
  call void @_raw_spin_lock(ptr noundef %1) #17
  %28 = ptrtoint ptr %work_list.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %work_list.i, align 4
  %cmp.i = icmp eq ptr %29, null
  br i1 %cmp.i, label %if.then75.if.end76_crit_edge, label %if.then75.land.lhs.true.i_crit_edge

if.then75.land.lhs.true.i_crit_edge:              ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true.i

if.then75.if.end76_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end76

if.end76:                                         ; preds = %if.then75.if.end76_crit_edge, %land.lhs.true.i.if.end76_crit_edge, %__here.if.end76_crit_edge
  br i1 %last_timeout.0.off0234, label %land.lhs.true, label %if.end76.if.end152_crit_edge

if.end76.if.end152_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end152

land.lhs.true:                                    ; preds = %if.end76
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp = icmp ugt i32 %31, 1
  br i1 %cmp, label %if.then78, label %land.lhs.true.if.end152_crit_edge

land.lhs.true.if.end152_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end152

if.then78:                                        ; preds = %land.lhs.true
  %dec = add i32 %31, -1
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %dec, ptr %arrayidx.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %1) #17
  br label %cleanup170.thread

cleanup170.thread:                                ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #19
  %33 = ptrtoint ptr %task5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task5, align 8
  %task_state_change135 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 212
  %35 = ptrtoint ptr %task_state_change135 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 ptrtoint (ptr blockaddress(@io_wqe_worker, %cleanup170.thread) to i32), ptr %task_state_change135, align 4
  %36 = load ptr, ptr %task5, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 0, ptr %36, align 128
  br label %while.end

if.end152:                                        ; preds = %land.lhs.true.if.end152_crit_edge, %if.end76.if.end152_crit_edge
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i, align 4
  %and.i210 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i210)
  %tobool.not.i211 = icmp eq i32 %and.i210, 0
  br i1 %tobool.not.i211, label %if.then.i, label %if.end152.__io_worker_idle.exit_crit_edge

if.end152.__io_worker_idle.exit_crit_edge:        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #19
  br label %__io_worker_idle.exit

if.then.i:                                        ; preds = %if.end152
  %or.i = or i32 %39, 4
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or.i, ptr %flags.i, align 4
  %41 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %free_list.i, align 4
  %43 = ptrtoint ptr %nulls_node.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %nulls_node.i, align 4
  %44 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %free_list.i, ptr %pprev.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !88
  %45 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %nulls_node.i, ptr %free_list.i, align 4
  %46 = ptrtoint ptr %42 to i32
  %and.i.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %do.body49.i.i, label %if.then.i.__io_worker_idle.exit_crit_edge

if.then.i.__io_worker_idle.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__io_worker_idle.exit

do.body49.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %pprev51.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %42, i32 0, i32 1
  %47 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %nulls_node.i, ptr %pprev51.i.i, align 4
  br label %__io_worker_idle.exit

__io_worker_idle.exit:                            ; preds = %do.body49.i.i, %if.then.i.__io_worker_idle.exit_crit_edge, %if.end152.__io_worker_idle.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %1) #17
  %call154 = call fastcc zeroext i1 @io_flush_signals()
  br i1 %call154, label %__io_worker_idle.exit.cleanup170_crit_edge, label %if.end156

__io_worker_idle.exit.cleanup170_crit_edge:       ; preds = %__io_worker_idle.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup170

if.end156:                                        ; preds = %__io_worker_idle.exit
  %call157 = call i32 @schedule_timeout(i32 noundef 500) #17
  %48 = ptrtoint ptr %task5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task5, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %stack.i.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %54 = and i32 %53, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i213 = icmp eq i32 %54, 0
  br i1 %tobool.not.i213, label %signal_pending.exit, label %if.end156.if.then162_crit_edge, !prof !75

if.end156.if.then162_crit_edge:                   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then162

signal_pending.exit:                              ; preds = %if.end156
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %51, align 4
  %and1.i.i.i.i.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool161.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool161.not, label %if.end166, label %signal_pending.exit.if.then162_crit_edge

signal_pending.exit.if.then162_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then162

if.then162:                                       ; preds = %signal_pending.exit.if.then162_crit_edge, %if.end156.if.then162_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %ksig) #17
  %57 = call ptr @memset(ptr %ksig, i32 255, i32 56)
  %call163 = call zeroext i1 @get_signal(ptr noundef nonnull %ksig) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ksig) #17
  br i1 %call163, label %if.then162.while.end_crit_edge, label %if.then162.cleanup170_crit_edge

if.then162.cleanup170_crit_edge:                  ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup170

if.then162.while.end_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

if.end166:                                        ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool167.not = icmp eq i32 %call157, 0
  br label %cleanup170

cleanup170:                                       ; preds = %if.end166, %if.then162.cleanup170_crit_edge, %__io_worker_idle.exit.cleanup170_crit_edge
  %last_timeout.1.off0 = phi i1 [ false, %if.then162.cleanup170_crit_edge ], [ %tobool167.not, %if.end166 ], [ false, %__io_worker_idle.exit.cleanup170_crit_edge ]
  %58 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %6, align 4
  %and1.i = and i32 %59, 1
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %cleanup170.__here_crit_edge, label %cleanup170.while.end_crit_edge

cleanup170.while.end_crit_edge:                   ; preds = %cleanup170
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

cleanup170.__here_crit_edge:                      ; preds = %cleanup170
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

while.end:                                        ; preds = %cleanup170.while.end_crit_edge, %if.then162.while.end_crit_edge, %cleanup170.thread, %entry.while.end_crit_edge
  %60 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %6, align 4
  %and1.i206 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i206)
  %tobool173.not = icmp eq i32 %and1.i206, 0
  br i1 %tobool173.not, label %while.end.if.end176_crit_edge, label %if.then174

while.end.if.end176_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end176

if.then174:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  call void @_raw_spin_lock(ptr noundef %1) #17
  call fastcc void @io_worker_handle_work(ptr noundef %data)
  br label %if.end176

if.end176:                                        ; preds = %if.then174, %while.end.if.end176_crit_edge
  %62 = ptrtoint ptr %wqe.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wqe.i, align 4
  %wq2.i = getelementptr inbounds %struct.io_wqe, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %wq2.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wq2.i, align 4
  %task.i = getelementptr inbounds %struct.io_wq, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task.i, align 4
  %call44.i = call ptr @task_work_cancel_match(ptr noundef %67, ptr noundef nonnull @io_task_worker_match, ptr noundef %data) #17
  %tobool.not45.i = icmp eq ptr %call44.i, null
  br i1 %tobool.not45.i, label %if.end176.while.end.i_crit_edge, label %if.end176.cleanup.i_crit_edge

if.end176.cleanup.i_crit_edge:                    ; preds = %if.end176
  br label %cleanup.i

if.end176.while.end.i_crit_edge:                  ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end176.cleanup.i_crit_edge
  call fastcc void @io_worker_cancel_cb(ptr noundef %data) #17
  %68 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task.i, align 4
  %call.i = call ptr @task_work_cancel_match(ptr noundef %69, ptr noundef nonnull @io_task_worker_match, ptr noundef %data) #17
  %tobool.not.i216 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i216, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %if.end176.while.end.i_crit_edge
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %data, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !78
  call void @llvm.prefetch.p0(ptr %data, i32 1, i32 3, i32 1) #17
  %70 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %data, ptr %data, i32 1, ptr elementtype(i32) %data) #17, !srcloc !79
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.io_worker_release.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !75

if.end5.i.i.i.i.i.io_worker_release.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_worker_release.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @refcount_warn_saturate(ptr noundef %data, i32 noundef 3) #17
  br label %io_worker_release.exit.i

if.then.i.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !80
  %ref_done.i.i = getelementptr inbounds %struct.io_worker, ptr %data, i32 0, i32 9
  call void @complete(ptr noundef %ref_done.i.i) #17
  br label %io_worker_release.exit.i

io_worker_release.exit.i:                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.io_worker_release.exit.i_crit_edge
  %ref_done.i = getelementptr inbounds %struct.io_worker, ptr %data, i32 0, i32 9
  call void @wait_for_completion(ptr noundef %ref_done.i) #17
  call void @_raw_spin_lock(ptr noundef %63) #17
  %71 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags.i, align 4
  %and.i218 = and i32 %72, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i218)
  %tobool3.not.i = icmp eq i32 %and.i218, 0
  br i1 %tobool3.not.i, label %io_worker_release.exit.i.if.end5.i_crit_edge, label %if.then4.i

io_worker_release.exit.i.if.end5.i_crit_edge:     ; preds = %io_worker_release.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5.i

if.then4.i:                                       ; preds = %io_worker_release.exit.i
  %73 = ptrtoint ptr %nulls_node.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %nulls_node.i, align 4
  %75 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pprev.i.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %74, ptr %76, align 4
  %78 = ptrtoint ptr %74 to i32
  %and.i.i.i41.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i41.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i41.i, 0
  br i1 %tobool.not.i.i.i, label %do.body13.i.i.i, label %if.then4.i.hlist_nulls_del_rcu.exit.i_crit_edge

if.then4.i.hlist_nulls_del_rcu.exit.i_crit_edge:  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %hlist_nulls_del_rcu.exit.i

do.body13.i.i.i:                                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #19
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %74, i32 0, i32 1
  %79 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %76, ptr %pprev14.i.i.i, align 4
  br label %hlist_nulls_del_rcu.exit.i

hlist_nulls_del_rcu.exit.i:                       ; preds = %do.body13.i.i.i, %if.then4.i.hlist_nulls_del_rcu.exit.i_crit_edge
  %80 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev.i.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %hlist_nulls_del_rcu.exit.i, %io_worker_release.exit.i.if.end5.i_crit_edge
  %all_list.i = getelementptr inbounds %struct.io_worker, ptr %data, i32 0, i32 3
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %all_list.i) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end5.i.list_del_rcu.exit.i_crit_edge

if.end5.i.list_del_rcu.exit.i_crit_edge:          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr inbounds %struct.io_worker, ptr %data, i32 0, i32 3, i32 1
  %81 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i.i.i, align 4
  %83 = ptrtoint ptr %all_list.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %all_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev1.i.i.i.i, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %84, ptr %82, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %if.end5.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.io_worker, ptr %data, i32 0, i32 3, i32 1
  %87 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %88 = call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i.i.i.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %91, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !89
  call fastcc void @io_wqe_dec_running(ptr noundef %data) #17
  %92 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %flags.i, align 4
  %93 = call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i to ptr
  %task8.i = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %task8.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %task8.i, align 8
  %flags9.i = getelementptr inbounds %struct.task_struct, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %flags9.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags9.i, align 4
  %and10.i = and i32 %98, -17
  store i32 %and10.i, ptr %flags9.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !90
  %99 = call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i.i.i39.i = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i39.i to ptr
  %preempt_count.i.i40.i = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %preempt_count.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %preempt_count.i.i40.i, align 4
  %sub.i.i = add i32 %102, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i40.i, align 4
  call void @_raw_spin_unlock(ptr noundef %63) #17
  %tobool16.not.i = icmp eq ptr %data, null
  br i1 %tobool16.not.i, label %list_del_rcu.exit.i.if.end21.i_crit_edge, label %do.end20.i

list_del_rcu.exit.i.if.end21.i_crit_edge:         ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21.i

do.end20.i:                                       ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %103 = getelementptr inbounds %struct.io_worker, ptr %data, i32 0, i32 13
  call void @kvfree_call_rcu(ptr noundef %103, ptr noundef nonnull inttoptr (i32 156 to ptr)) #17
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end20.i, %list_del_rcu.exit.i.if.end21.i_crit_edge
  %104 = ptrtoint ptr %wq2.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %wq2.i, align 4
  call fastcc void @io_worker_ref_put(ptr noundef %105) #17
  call void @__asan_handle_no_return()
  call void @do_exit(i32 noundef 0) #22
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @io_init_new_worker(ptr noundef %wqe, ptr noundef %worker, ptr noundef %tsk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %worker_private = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 85
  %0 = ptrtoint ptr %worker_private to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %worker, ptr %worker_private, align 16
  %task = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 4
  %1 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tsk, ptr %task, align 4
  %cpu_mask = getelementptr inbounds %struct.io_wqe, ptr %wqe, i32 0, i32 8
  %2 = ptrtoint ptr %cpu_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_mask, align 4
  %call = tail call i32 @set_cpus_allowed_ptr(ptr noundef %tsk, ptr noundef %3) #17
  %flags = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 67108864
  store i32 %or, ptr %flags, align 4
  tail call void @_raw_spin_lock(ptr noundef %wqe) #17
  %nulls_node = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 2
  %free_list = getelementptr inbounds %struct.io_wqe, ptr %wqe, i32 0, i32 3
  %6 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %free_list, align 4
  %8 = ptrtoint ptr %nulls_node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %nulls_node, align 4
  %pprev.i = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %free_list, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !88
  %10 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %nulls_node, ptr %free_list, align 4
  %11 = ptrtoint ptr %7 to i32
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body49.i, label %entry.hlist_nulls_add_head_rcu.exit_crit_edge

entry.hlist_nulls_add_head_rcu.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %hlist_nulls_add_head_rcu.exit

do.body49.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %pprev51.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %nulls_node, ptr %pprev51.i, align 4
  br label %hlist_nulls_add_head_rcu.exit

hlist_nulls_add_head_rcu.exit:                    ; preds = %do.body49.i, %entry.hlist_nulls_add_head_rcu.exit_crit_edge
  %all_list = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 3
  %all_list1 = getelementptr inbounds %struct.io_wqe, ptr %wqe, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.io_wqe, ptr %wqe, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %all_list, ptr noundef %14, ptr noundef %all_list1) #17
  br i1 %call.i.i, label %if.end.i.i, label %hlist_nulls_add_head_rcu.exit.list_add_tail_rcu.exit_crit_edge

hlist_nulls_add_head_rcu.exit.list_add_tail_rcu.exit_crit_edge: ; preds = %hlist_nulls_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %hlist_nulls_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %all_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %all_list1, ptr %all_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !91
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %all_list, ptr %14, align 4
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %all_list, ptr %prev.i, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %hlist_nulls_add_head_rcu.exit.list_add_tail_rcu.exit_crit_edge
  %flags2 = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 1
  %19 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags2, align 4
  %or3 = or i32 %20, 4
  store i32 %or3, ptr %flags2, align 4
  tail call void @_raw_spin_unlock(ptr noundef %wqe) #17
  tail call void @wake_up_new_task(ptr noundef %tsk) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @io_wq_work_match_all(ptr nocapture noundef readnone %work, ptr nocapture noundef readnone %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @io_acct_cancel_pending_work(ptr noundef %wqe, ptr nocapture noundef readonly %acct, ptr nocapture noundef %match) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %work_list = getelementptr inbounds %struct.io_wqe_acct, ptr %acct, i32 0, i32 4
  %data = getelementptr inbounds %struct.io_cb_cancel_data, ptr %match, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %prev.0 = phi ptr [ null, %entry ], [ %node.0, %for.body.for.cond_crit_edge ]
  %node.0.in = phi ptr [ %work_list, %entry ], [ %node.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %node.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.0 = load ptr, ptr %node.0.in, align 4
  %tobool.not = icmp eq ptr %node.0, null
  br i1 %tobool.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %1 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %match, align 4
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %call = tail call zeroext i1 %2(ptr noundef nonnull %node.0, ptr noundef %4) #17
  br i1 %call, label %if.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond

if.end:                                           ; preds = %for.body
  %flags.i.i = getelementptr inbounds %struct.io_wq_work, ptr %node.0, i32 0, i32 1
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i.i, align 4
  %and.i.i = lshr i32 %6, 2
  %and.lobit.i.i = and i32 %and.i.i, 1
  %shr.i.i = lshr i32 %6, 24
  %and.i31.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.i.not.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.i.not.i, label %if.end.if.end14.i_crit_edge, label %land.lhs.true.i

if.end.if.end14.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %if.end
  %arrayidx.i = getelementptr %struct.io_wqe, ptr %wqe, i32 0, i32 7, i32 %shr.i.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i = icmp eq ptr %8, %node.0
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end14.i_crit_edge

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %tobool.not.i = icmp eq ptr %prev.0, null
  br i1 %tobool.not.i, label %if.then.i.if.else.i_crit_edge, label %land.lhs.true5.i

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

land.lhs.true5.i:                                 ; preds = %if.then.i
  %flags.i32.i = getelementptr inbounds %struct.io_wq_work, ptr %prev.0, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i32.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i32.i, align 4
  %shr.i33.i = lshr i32 %10, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i33.i, i32 %shr.i.i)
  %cmp7.i = icmp eq i32 %shr.i33.i, %shr.i.i
  br i1 %cmp7.i, label %if.end14.thread.i, label %land.lhs.true5.i.if.else.i_crit_edge

land.lhs.true5.i.if.else.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

if.end14.thread.i:                                ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #19
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %prev.0, ptr %arrayidx.i, align 4
  %work_list34.i = getelementptr %struct.io_wqe, ptr %wqe, i32 0, i32 1, i32 %and.lobit.i.i, i32 4
  %12 = ptrtoint ptr %node.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %node.0, align 4
  br label %if.else.i.i.i

if.else.i:                                        ; preds = %land.lhs.true5.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i, %land.lhs.true.i.if.end14.i_crit_edge, %if.end.if.end14.i_crit_edge
  %work_list.i = getelementptr %struct.io_wqe, ptr %wqe, i32 0, i32 1, i32 %and.lobit.i.i, i32 4
  %tobool.not.i.i.i = icmp eq ptr %prev.0, null
  %15 = ptrtoint ptr %node.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %node.0, align 4
  br i1 %tobool.not.i.i.i, label %do.body2.i.i.i, label %if.end14.i.if.else.i.i.i_crit_edge

if.end14.i.if.else.i.i.i_crit_edge:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i.i.i

do.body2.i.i.i:                                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %work_list.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %16, ptr %work_list.i, align 4
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %if.end14.i.if.else.i.i.i_crit_edge, %if.end14.thread.i
  %18 = phi ptr [ %13, %if.end14.thread.i ], [ %16, %if.end14.i.if.else.i.i.i_crit_edge ]
  %work_list37.i = phi ptr [ %work_list34.i, %if.end14.thread.i ], [ %work_list.i, %if.end14.i.if.else.i.i.i_crit_edge ]
  %19 = ptrtoint ptr %prev.0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %prev.0, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %do.body2.i.i.i
  %work_list36.i = phi ptr [ %work_list37.i, %if.else.i.i.i ], [ %work_list.i, %do.body2.i.i.i ]
  %last7.i.i.i = getelementptr inbounds %struct.io_wq_work_list, ptr %work_list36.i, i32 0, i32 1
  %20 = ptrtoint ptr %last7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %last7.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %21, %node.0
  br i1 %cmp.i.i.i, label %if.then8.i.i.i, label %if.end.i.i.i.io_wqe_remove_pending.exit_crit_edge

if.end.i.i.i.io_wqe_remove_pending.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_wqe_remove_pending.exit

if.then8.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %last7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %prev.0, ptr %last7.i.i.i, align 4
  br label %io_wqe_remove_pending.exit

io_wqe_remove_pending.exit:                       ; preds = %if.then8.i.i.i, %if.end.i.i.i.io_wqe_remove_pending.exit_crit_edge
  %23 = ptrtoint ptr %node.0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %node.0, align 4
  tail call void @_raw_spin_unlock(ptr noundef %wqe) #17
  %wq1.i = getelementptr inbounds %struct.io_wqe, ptr %wqe, i32 0, i32 6
  %24 = ptrtoint ptr %wq1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wq1.i, align 4
  %do_work.i = getelementptr inbounds %struct.io_wq, ptr %25, i32 0, i32 2
  %free_work.i = getelementptr inbounds %struct.io_wq, ptr %25, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %io_wqe_remove_pending.exit
  %work.addr.0.i = phi ptr [ %node.0, %io_wqe_remove_pending.exit ], [ %call.i, %do.body.i.do.body.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.io_wq_work, ptr %work.addr.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %27, 1
  store i32 %or.i, ptr %flags.i, align 4
  %28 = ptrtoint ptr %do_work.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %do_work.i, align 4
  tail call void %29(ptr noundef nonnull %work.addr.0.i) #17
  %30 = ptrtoint ptr %free_work.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %free_work.i, align 4
  %call.i = tail call ptr %31(ptr noundef nonnull %work.addr.0.i) #17
  %tobool.not.i12 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i12, label %io_run_cancel.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

io_run_cancel.exit:                               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %nr_pending = getelementptr inbounds %struct.io_cb_cancel_data, ptr %match, i32 0, i32 3
  %32 = ptrtoint ptr %nr_pending to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_pending, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %nr_pending, align 4
  br label %cleanup

cleanup:                                          ; preds = %io_run_cancel.exit, %for.cond.cleanup_crit_edge
  %34 = xor i1 %tobool.not, true
  ret i1 %34
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @io_worker_handle_work(ptr noundef %worker) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %wqe.i = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 5
  %0 = ptrtoint ptr %wqe.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wqe.i, align 4
  %flags.i = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = lshr i32 %3, 3
  %and.lobit.i = and i32 %and.i, 1
  %4 = xor i32 %and.lobit.i, 1
  %wq2 = getelementptr inbounds %struct.io_wqe, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %wq2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wq2, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and1.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  %work_list.i = getelementptr %struct.io_wqe, ptr %1, i32 0, i32 1, i32 %4, i32 4
  %9 = ptrtoint ptr %work_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %node.075.i203 = load ptr, ptr %work_list.i, align 4
  %tobool.not76.i204 = icmp eq ptr %node.075.i203, null
  br i1 %tobool.not76.i204, label %entry.do.end114_crit_edge, label %for.body.lr.ph.i.lr.ph

entry.do.end114_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end114

for.body.lr.ph.i.lr.ph:                           ; preds = %entry
  %last7.i.i = getelementptr %struct.io_wqe, ptr %1, i32 0, i32 1, i32 %4, i32 4, i32 1
  %pprev.i.i.i = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 2, i32 1
  %nulls_node.i = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 2
  %lock = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 8
  %next_work = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 7
  %cur_work.i = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 6
  %do_work = getelementptr inbounds %struct.io_wq, ptr %6, i32 0, i32 2
  %free_work = getelementptr inbounds %struct.io_wq, ptr %6, i32 0, i32 1
  %hash94 = getelementptr inbounds %struct.io_wq, ptr %6, i32 0, i32 3
  %flags97 = getelementptr %struct.io_wqe, ptr %1, i32 0, i32 1, i32 %4, i32 5
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %cleanup.for.body.lr.ph.i_crit_edge, %for.body.lr.ph.i.lr.ph
  %node.075.i205 = phi ptr [ %node.075.i203, %for.body.lr.ph.i.lr.ph ], [ %node.075.i, %cleanup.for.body.lr.ph.i_crit_edge ]
  %10 = ptrtoint ptr %wqe.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wqe.i, align 4
  %wq.i = getelementptr inbounds %struct.io_wqe, ptr %11, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %node.079.i = phi ptr [ %node.075.i205, %for.body.lr.ph.i ], [ %node.0.i, %cleanup.i.for.body.i_crit_edge ]
  %prev.078.i = phi ptr [ null, %for.body.lr.ph.i ], [ %21, %cleanup.i.for.body.i_crit_edge ]
  %stall_hash.077.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %spec.select.i, %cleanup.i.for.body.i_crit_edge ]
  %flags.i.i = getelementptr inbounds %struct.io_wq_work, ptr %node.079.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %tobool.not.i.i.i = icmp eq ptr %prev.078.i, null
  %14 = ptrtoint ptr %node.079.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %node.079.i, align 4
  br i1 %tobool.not.i.i.i, label %do.body2.i.i.i, label %if.else.i.i.i

do.body2.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %work_list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %15, ptr %work_list.i, align 4
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %prev.078.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %prev.078.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %do.body2.i.i.i
  %18 = ptrtoint ptr %last7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %last7.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %19, %node.079.i
  br i1 %cmp.i.i.i, label %if.end.i.i.i.if.then.sink.split_crit_edge, label %if.end.i.i.i.if.then_crit_edge

if.end.i.i.i.if.then_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.end.i.i.i.if.then.sink.split_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.sink.split

if.end.i:                                         ; preds = %for.body.i
  %shr.i.i = lshr i32 %13, 24
  %arrayidx.i = getelementptr %struct.io_wqe, ptr %11, i32 0, i32 7, i32 %shr.i.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %22 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wq.i, align 4
  %hash4.i = getelementptr inbounds %struct.io_wq, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %hash4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hash4.i, align 4
  %map.i = getelementptr inbounds %struct.io_wq_hash, ptr %25, i32 0, i32 1
  %call5.i = tail call i32 @_test_and_set_bit(i32 noundef %shr.i.i, ptr noundef %map.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %cleanup.i

if.then7.i:                                       ; preds = %if.end.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %prev.078.i, null
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %21, align 4
  br i1 %tobool.not.i.i, label %do.body2.i.i, label %if.else.i.i

do.body2.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  %29 = ptrtoint ptr %work_list.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %28, ptr %work_list.i, align 4
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  %30 = ptrtoint ptr %prev.078.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %prev.078.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %do.body2.i.i
  %31 = ptrtoint ptr %last7.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %last7.i.i, align 4
  %cmp.i.i = icmp eq ptr %32, %21
  br i1 %cmp.i.i, label %if.end.i.i.if.then.sink.split_crit_edge, label %if.end.i.i.if.then_crit_edge

if.end.i.i.if.then_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.end.i.i.if.then.sink.split_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.sink.split

cleanup.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %stall_hash.077.i)
  %cmp.i = icmp eq i32 %stall_hash.077.i, -1
  %spec.select.i = select i1 %cmp.i, i32 %shr.i.i, i32 %stall_hash.077.i
  %33 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %node.0.i = load ptr, ptr %21, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %if.then16.i, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

if.then16.i:                                      ; preds = %cleanup.i
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags97) #17
  tail call void @_raw_spin_unlock(ptr noundef %11) #17
  %call17.i = tail call fastcc zeroext i1 @io_wait_on_hash(ptr noundef %11, i32 noundef %spec.select.i) #17
  tail call void @_raw_spin_lock(ptr noundef %11) #17
  br i1 %call17.i, label %if.then20.i, label %if.then16.i.do.end114_crit_edge

if.then16.i.do.end114_crit_edge:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end114

if.then20.i:                                      ; preds = %if.then16.i
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags97) #17
  %34 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wq.i, align 4
  %hash23.i = getelementptr inbounds %struct.io_wq, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %hash23.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hash23.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !92
  %head.i.i.i = getelementptr inbounds %struct.io_wq_hash, ptr %37, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %head.i.i.i, align 4
  %cmp.i.i.i.not.i = icmp eq ptr %39, %head.i.i.i
  br i1 %cmp.i.i.i.not.i, label %if.then20.i.do.end114_crit_edge, label %if.then25.i

if.then20.i.do.end114_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end114

if.then25.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #19
  %40 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wq.i, align 4
  %hash27.i = getelementptr inbounds %struct.io_wq, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %hash27.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hash27.i, align 4
  %wait28.i = getelementptr inbounds %struct.io_wq_hash, ptr %43, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wait28.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #17
  br label %do.end114

if.then.sink.split:                               ; preds = %if.end.i.i.if.then.sink.split_crit_edge, %if.end.i.i.i.if.then.sink.split_crit_edge
  %.lcssa.sink.ph = phi ptr [ %node.079.i, %if.end.i.i.i.if.then.sink.split_crit_edge ], [ %21, %if.end.i.i.if.then.sink.split_crit_edge ]
  %44 = ptrtoint ptr %last7.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %prev.078.i, ptr %last7.i.i, align 4
  br label %if.then

if.then:                                          ; preds = %if.then.sink.split, %if.end.i.i.if.then_crit_edge, %if.end.i.i.i.if.then_crit_edge
  %.lcssa.sink = phi ptr [ %node.079.i, %if.end.i.i.i.if.then_crit_edge ], [ %21, %if.end.i.i.if.then_crit_edge ], [ %.lcssa.sink.ph, %if.then.sink.split ]
  %45 = ptrtoint ptr %.lcssa.sink to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %.lcssa.sink, align 4
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i, align 4
  %and.i159 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i159)
  %tobool.not.i160 = icmp eq i32 %and.i159, 0
  br i1 %tobool.not.i160, label %if.then.io_assign_current_work.exit_crit_edge, label %if.then.i161

if.then.io_assign_current_work.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_assign_current_work.exit

if.then.i161:                                     ; preds = %if.then
  %and2.i = and i32 %47, -5
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and2.i, ptr %flags.i, align 4
  %49 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.not.i.i, label %if.then.i161.io_assign_current_work.exit_crit_edge, label %if.then.i.i

if.then.i161.io_assign_current_work.exit_crit_edge: ; preds = %if.then.i161
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_assign_current_work.exit

if.then.i.i:                                      ; preds = %if.then.i161
  %51 = ptrtoint ptr %nulls_node.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %nulls_node.i, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %52, ptr %50, align 4
  %54 = ptrtoint ptr %52 to i32
  %and.i.i.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i7.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i7.i.i, label %do.body13.i.i.i, label %if.then.i.i.__hlist_nulls_del.exit.i.i_crit_edge

if.then.i.i.__hlist_nulls_del.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__hlist_nulls_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %52, i32 0, i32 1
  %55 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %50, ptr %pprev14.i.i.i, align 4
  br label %__hlist_nulls_del.exit.i.i

__hlist_nulls_del.exit.i.i:                       ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_nulls_del.exit.i.i_crit_edge
  %56 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr null, ptr %pprev.i.i.i, align 4
  br label %io_assign_current_work.exit

io_assign_current_work.exit:                      ; preds = %__hlist_nulls_del.exit.i.i, %if.then.i161.io_assign_current_work.exit_crit_edge, %if.then.io_assign_current_work.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %lock) #17
  %57 = ptrtoint ptr %next_work to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %node.079.i, ptr %next_work, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #17
  tail call void @_raw_spin_unlock(ptr noundef %1) #17
  %call.i = tail call fastcc zeroext i1 @io_flush_signals() #17
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 529, i32 noundef 0) #17
  %call.i.i = tail call i32 @__cond_resched() #17
  tail call void @_raw_spin_lock(ptr noundef %lock) #17
  %58 = ptrtoint ptr %cur_work.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %node.079.i, ptr %cur_work.i, align 4
  %59 = ptrtoint ptr %next_work to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %next_work, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #17
  br label %__here

__here:                                           ; preds = %io_assign_current_work.exit
  %60 = tail call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i166 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i166 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 212
  %64 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 ptrtoint (ptr blockaddress(@io_worker_handle_work, %__here) to i32), ptr %task_state_change, align 4
  %65 = load ptr, ptr %task, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 0, ptr %65, align 128
  br label %do.body66

do.body66:                                        ; preds = %if.end108.do.body66_crit_edge, %__here
  %work.0 = phi ptr [ %node.079.i, %__here ], [ %work.1189, %if.end108.do.body66_crit_edge ]
  %flags.i167 = getelementptr inbounds %struct.io_wq_work, ptr %work.0, i32 0, i32 1
  %67 = ptrtoint ptr %flags.i167 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags.i167, align 4
  %shr.i = lshr i32 %68, 24
  %69 = ptrtoint ptr %work.0 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %work.0, align 4
  br i1 %tobool.not, label %do.body66.if.end79_crit_edge, label %land.lhs.true, !prof !75

do.body66.if.end79_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end79

land.lhs.true:                                    ; preds = %do.body66
  %and = and i32 %68, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool76.not = icmp eq i32 %and, 0
  br i1 %tobool76.not, label %land.lhs.true.if.end79_crit_edge, label %if.then77

land.lhs.true.if.end79_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end79

if.then77:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %or = or i32 %68, 1
  %71 = ptrtoint ptr %flags.i167 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or, ptr %flags.i167, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %land.lhs.true.if.end79_crit_edge, %do.body66.if.end79_crit_edge
  %72 = ptrtoint ptr %do_work to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %do_work, align 4
  tail call void %73(ptr noundef %work.0) #17
  tail call void @_raw_spin_lock(ptr noundef %lock) #17
  %74 = ptrtoint ptr %cur_work.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %cur_work.i, align 4
  %75 = ptrtoint ptr %next_work to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %next_work, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #17
  %76 = ptrtoint ptr %free_work to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %free_work, align 4
  %call80 = tail call ptr %77(ptr noundef %work.0) #17
  %tobool81.not = icmp eq ptr %70, null
  br i1 %tobool81.not, label %land.lhs.true82, label %if.end79.if.then.i177_crit_edge

if.end79.if.then.i177_crit_edge:                  ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i177

land.lhs.true82:                                  ; preds = %if.end79
  %tobool83.not = icmp eq ptr %call80, null
  br i1 %tobool83.not, label %land.lhs.true82.io_assign_current_work.exit182_crit_edge, label %land.lhs.true84

land.lhs.true82.io_assign_current_work.exit182_crit_edge: ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_assign_current_work.exit182

land.lhs.true84:                                  ; preds = %land.lhs.true82
  %flags.i172 = getelementptr inbounds %struct.io_wq_work, ptr %call80, i32 0, i32 1
  %78 = ptrtoint ptr %flags.i172 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags.i172, align 4
  %and.i173 = and i32 %79, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i173)
  %tobool.i.not = icmp eq i32 %and.i173, 0
  br i1 %tobool.i.not, label %land.lhs.true84.if.then.i177_crit_edge, label %land.lhs.true84.io_assign_current_work.exit182_crit_edge

land.lhs.true84.io_assign_current_work.exit182_crit_edge: ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_assign_current_work.exit182

land.lhs.true84.if.then.i177_crit_edge:           ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i177

if.then.i177:                                     ; preds = %land.lhs.true84.if.then.i177_crit_edge, %if.end79.if.then.i177_crit_edge
  %work.1 = phi ptr [ %70, %if.end79.if.then.i177_crit_edge ], [ %call80, %land.lhs.true84.if.then.i177_crit_edge ]
  %linked.0 = phi ptr [ %call80, %if.end79.if.then.i177_crit_edge ], [ null, %land.lhs.true84.if.then.i177_crit_edge ]
  %call.i175 = tail call fastcc zeroext i1 @io_flush_signals() #17
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 529, i32 noundef 0) #17
  %call.i.i176 = tail call i32 @__cond_resched() #17
  br label %io_assign_current_work.exit182

io_assign_current_work.exit182:                   ; preds = %if.then.i177, %land.lhs.true84.io_assign_current_work.exit182_crit_edge, %land.lhs.true82.io_assign_current_work.exit182_crit_edge
  %tobool.not.i174191 = phi i1 [ false, %if.then.i177 ], [ true, %land.lhs.true82.io_assign_current_work.exit182_crit_edge ], [ true, %land.lhs.true84.io_assign_current_work.exit182_crit_edge ]
  %linked.0190 = phi ptr [ %linked.0, %if.then.i177 ], [ null, %land.lhs.true82.io_assign_current_work.exit182_crit_edge ], [ %call80, %land.lhs.true84.io_assign_current_work.exit182_crit_edge ]
  %work.1189 = phi ptr [ %work.1, %if.then.i177 ], [ null, %land.lhs.true82.io_assign_current_work.exit182_crit_edge ], [ null, %land.lhs.true84.io_assign_current_work.exit182_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %lock) #17
  %80 = ptrtoint ptr %cur_work.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %work.1189, ptr %cur_work.i, align 4
  %81 = ptrtoint ptr %next_work to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %next_work, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #17
  %tobool88.not = icmp eq ptr %linked.0190, null
  br i1 %tobool88.not, label %io_assign_current_work.exit182.land.lhs.true91_crit_edge, label %if.then89

io_assign_current_work.exit182.land.lhs.true91_crit_edge: ; preds = %io_assign_current_work.exit182
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true91

if.then89:                                        ; preds = %io_assign_current_work.exit182
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @io_wqe_enqueue(ptr noundef %1, ptr noundef nonnull %linked.0190)
  br label %land.lhs.true91

land.lhs.true91:                                  ; preds = %if.then89, %io_assign_current_work.exit182.land.lhs.true91_crit_edge
  br i1 %tobool81.not, label %if.then93, label %land.lhs.true91.if.end108_crit_edge

land.lhs.true91.if.end108_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end108

if.then93:                                        ; preds = %land.lhs.true91
  %82 = ptrtoint ptr %hash94 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hash94, align 4
  %wait = getelementptr inbounds %struct.io_wq_hash, ptr %83, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %wait) #17
  %84 = ptrtoint ptr %hash94 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hash94, align 4
  %map = getelementptr inbounds %struct.io_wq_hash, ptr %85, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef %shr.i, ptr noundef %map) #17
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags97) #17
  %86 = ptrtoint ptr %hash94 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hash94, align 4
  %wait99 = getelementptr inbounds %struct.io_wq_hash, ptr %87, i32 0, i32 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %wait99) #17
  %88 = ptrtoint ptr %hash94 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hash94, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !92
  %head.i.i = getelementptr inbounds %struct.io_wq_hash, ptr %89, i32 0, i32 2, i32 1
  %90 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.i183.not = icmp eq ptr %91, %head.i.i
  br i1 %cmp.i.i.i183.not, label %if.then93.if.end108_crit_edge, label %if.then104

if.then93.if.end108_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end108

if.then104:                                       ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #19
  %92 = ptrtoint ptr %hash94 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hash94, align 4
  %wait106 = getelementptr inbounds %struct.io_wq_hash, ptr %93, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wait106, i32 noundef 3, i32 noundef 1, ptr noundef null) #17
  br label %if.end108

if.end108:                                        ; preds = %if.then104, %if.then93.if.end108_crit_edge, %land.lhs.true91.if.end108_crit_edge
  br i1 %tobool.not.i174191, label %cleanup, label %if.end108.do.body66_crit_edge

if.end108.do.body66_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body66

cleanup:                                          ; preds = %if.end108
  tail call void @_raw_spin_lock(ptr noundef %1) #17
  %94 = ptrtoint ptr %work_list.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %node.075.i = load ptr, ptr %work_list.i, align 4
  %tobool.not76.i = icmp eq ptr %node.075.i, null
  br i1 %tobool.not76.i, label %cleanup.do.end114_crit_edge, label %cleanup.for.body.lr.ph.i_crit_edge

cleanup.for.body.lr.ph.i_crit_edge:               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.lr.ph.i

cleanup.do.end114_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end114

do.end114:                                        ; preds = %cleanup.do.end114_crit_edge, %if.then25.i, %if.then20.i.do.end114_crit_edge, %if.then16.i.do.end114_crit_edge, %entry.do.end114_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @io_flush_signals() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 16384
  %4 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %__here, !prof !75

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 212
  %7 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 ptrtoint (ptr blockaddress(@io_flush_signals, %__here) to i32), ptr %task_state_change, align 4
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %8, align 128
  tail call fastcc void @tracehook_notify_signal()
  br label %return

return:                                           ; preds = %__here, %entry.return_crit_edge
  %10 = xor i1 %tobool.not, true
  ret i1 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @get_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_task_comm(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @io_wait_on_hash(ptr noundef %wqe, i32 noundef %hash) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %wq1 = getelementptr inbounds %struct.io_wqe, ptr %wqe, i32 0, i32 6
  %0 = ptrtoint ptr %wq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wq1, align 4
  %hash2 = getelementptr inbounds %struct.io_wq, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hash2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hash2, align 4
  %wait = getelementptr inbounds %struct.io_wq_hash, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %wait) #17
  %entry4 = getelementptr inbounds %struct.io_wqe, ptr %wqe, i32 0, i32 5, i32 3
  %4 = ptrtoint ptr %entry4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %entry4, align 4
  %cmp.i.not = icmp eq ptr %5, %entry4
  br i1 %cmp.i.not, label %if.then, label %entry.if.end68_crit_edge

entry.if.end68_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end68

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %hash2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hash2, align 4
  %head1.i = getelementptr inbounds %struct.io_wq_hash, ptr %7, i32 0, i32 2, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then
  %head.0.i = phi ptr [ %head1.i, %if.then ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %head.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %head.0.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %head1.i
  br i1 %cmp.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %wq.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %9 = ptrtoint ptr %wq.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wq.0.i, align 4
  %and.i81 = and i32 %10, 32
  %tobool.not.i = icmp eq i32 %and.i81, 0
  br i1 %tobool.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %.pn.lcssa.i = phi ptr [ %.pn.i, %for.body.i.for.end.i_crit_edge ], [ %head1.i, %for.cond.i.for.end.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry4, ptr noundef %head.0.i, ptr noundef %.pn.lcssa.i) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.__add_wait_queue.exit_crit_edge

for.end.i.__add_wait_queue.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__add_wait_queue.exit

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry4, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %.pn.lcssa.i, ptr %entry4, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.io_wqe, ptr %wqe, i32 0, i32 5, i32 3, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %head.0.i, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %head.0.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry4, ptr %head.0.i, align 4
  br label %__add_wait_queue.exit

__add_wait_queue.exit:                            ; preds = %if.end.i.i.i, %for.end.i.__add_wait_queue.exit_crit_edge
  %15 = ptrtoint ptr %hash2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hash2, align 4
  %map = getelementptr inbounds %struct.io_wq_hash, ptr %16, i32 0, i32 1
  %div3.i = lshr i32 %hash, 5
  %arrayidx.i = getelementptr i32, ptr %map, i32 %div3.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %hash, 31
  %19 = shl nuw i32 1, %and.i
  %20 = and i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool10.not = icmp eq i32 %20, 0
  br i1 %tobool10.not, label %__here, label %__add_wait_queue.exit.if.end68_crit_edge

__add_wait_queue.exit.if.end68_crit_edge:         ; preds = %__add_wait_queue.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end68

__here:                                           ; preds = %__add_wait_queue.exit
  %21 = tail call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i82 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i82 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 212
  %25 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 ptrtoint (ptr blockaddress(@io_wait_on_hash, %__here) to i32), ptr %task_state_change, align 4
  %26 = load ptr, ptr %task, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 0, ptr %26, align 128
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry4) #17
  br i1 %call.i.i, label %if.end.i.i, label %__here.list_del_init.exit_crit_edge

__here.list_del_init.exit_crit_edge:              ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.io_wqe, ptr %wqe, i32 0, i32 5, i32 3, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %entry4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %entry4, align 4
  %prev1.i.i.i83 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i83 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i83, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %__here.list_del_init.exit_crit_edge
  %34 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i3.i = getelementptr inbounds %struct.io_wqe, ptr %wqe, i32 0, i32 5, i32 3, i32 1
  %35 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %entry4, ptr %prev.i3.i, align 4
  br label %if.end68

if.end68:                                         ; preds = %list_del_init.exit, %__add_wait_queue.exit.if.end68_crit_edge, %entry.if.end68_crit_edge
  %ret.0.off0 = phi i1 [ false, %__add_wait_queue.exit.if.end68_crit_edge ], [ true, %list_del_init.exit ], [ false, %entry.if.end68_crit_edge ]
  %36 = ptrtoint ptr %hash2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hash2, align 4
  %wait70 = getelementptr inbounds %struct.io_wq_hash, ptr %37, i32 0, i32 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %wait70) #17
  ret i1 %ret.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tracehook_notify_signal() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %1) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !93
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_works = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 120
  %4 = ptrtoint ptr %task_works to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task_works, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @task_work_run() #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_work_run() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @io_task_worker_match(ptr noundef readonly %cb, ptr noundef readnone %data) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %func = getelementptr inbounds %struct.callback_head, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func, align 4
  %cmp.not = icmp eq ptr %1, @create_worker_cb
  %add.ptr = getelementptr i8, ptr %cb, i32 -144
  %cmp1 = icmp eq ptr %add.ptr, %data
  %retval.0 = and i1 %cmp1, %cmp.not
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @do_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_new_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @create_io_worker(ptr noundef %wq, ptr noundef %wqe, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.io_wqe, ptr %wqe, i32 0, i32 1, i32 %index
  br label %__here

__here:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@create_io_worker, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %5, align 128
  %node = getelementptr inbounds %struct.io_wqe, ptr %wqe, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 200) #21
  %tobool53.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool53.not, label %__here.fail_crit_edge, label %if.end56

__here.fail_crit_edge:                            ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #19
  br label %fail

fail:                                             ; preds = %if.then70, %__here.fail_crit_edge
  %nr_running = getelementptr %struct.io_wqe, ptr %wqe, i32 0, i32 1, i32 %index, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_running, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %nr_running, i32 1, i32 3, i32 1) #17
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_running, ptr %nr_running, i32 1, ptr elementtype(i32) %nr_running) #17, !srcloc !85
  tail call void @_raw_spin_lock(ptr noundef %wqe) #17
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock(ptr noundef %wqe) #17
  %worker_refs.i = getelementptr inbounds %struct.io_wq, ptr %wq, i32 0, i32 4
  %call.i.i.i107 = tail call zeroext i1 @__kasan_check_write(ptr noundef %worker_refs.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %worker_refs.i, i32 1, i32 3, i32 1) #17
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %worker_refs.i, ptr %worker_refs.i, i32 1, ptr elementtype(i32) %worker_refs.i) #17, !srcloc !70
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %fail.cleanup_crit_edge

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then.i:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #19
  %worker_done.i = getelementptr inbounds %struct.io_wq, ptr %wq, i32 0, i32 5
  tail call void @complete(ptr noundef %worker_done.i) #17
  br label %cleanup

if.end56:                                         ; preds = %__here
  %call.i.i.i108 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i.i, i32 noundef 4) #17
  %12 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %call.i.i.i, align 8
  %wqe57 = getelementptr inbounds %struct.io_worker, ptr %call.i.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %wqe57 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %wqe, ptr %wqe57, align 4
  %lock59 = getelementptr inbounds %struct.io_worker, ptr %call.i.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock59, ptr noundef nonnull @.str.5, ptr noundef nonnull @create_io_worker.__key, i16 noundef signext 2) #17
  %ref_done = getelementptr inbounds %struct.io_worker, ptr %call.i.i.i, i32 0, i32 9
  %14 = ptrtoint ptr %ref_done to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %ref_done, align 4
  %wait.i = getelementptr inbounds %struct.io_worker, ptr %call.i.i.i, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp eq i32 %index, 0
  br i1 %cmp, label %if.then62, label %if.end56.if.end63_crit_edge

if.end56.if.end63_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end63

if.then62:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  %flags = getelementptr inbounds %struct.io_worker, ptr %call.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %or = or i32 %16, 8
  store i32 %or, ptr %flags, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end56.if.end63_crit_edge
  %17 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %node, align 4
  %call65 = tail call ptr @create_io_thread(ptr noundef nonnull @io_wqe_worker, ptr noundef nonnull %call.i.i.i, i32 noundef %18) #17
  %cmp.i = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.then67

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @io_init_new_worker(ptr noundef %wqe, ptr noundef nonnull %call.i.i.i, ptr noundef %call65)
  br label %cleanup

if.else:                                          ; preds = %if.end63
  %19 = ptrtoint ptr %call65 to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stack.i.i.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and1.i.i.i.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.if.end.i_crit_edge, label %fatal_signal_pending.exit.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

fatal_signal_pending.exit.i:                      ; preds = %if.else
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 116, i32 1
  %28 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %signal.i.i.i, align 4
  %30 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %fatal_signal_pending.exit.i.if.end.i_crit_edge, label %fatal_signal_pending.exit.i.if.then70_crit_edge

fatal_signal_pending.exit.i.if.then70_crit_edge:  ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then70

fatal_signal_pending.exit.i.if.end.i_crit_edge:   ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.end.i:                                         ; preds = %fatal_signal_pending.exit.i.if.end.i_crit_edge, %if.else.if.end.i_crit_edge
  %31 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %19, label %if.end.i.if.then70_crit_edge [
    i32 -11, label %if.end.i.do.body72_crit_edge
    i32 -512, label %if.end.i.do.body72_crit_edge111
    i32 -513, label %if.end.i.do.body72_crit_edge112
    i32 -514, label %if.end.i.do.body72_crit_edge113
  ]

if.end.i.do.body72_crit_edge113:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body72

if.end.i.do.body72_crit_edge112:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body72

if.end.i.do.body72_crit_edge111:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body72

if.end.i.do.body72_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body72

if.end.i.if.then70_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then70

if.then70:                                        ; preds = %if.end.i.if.then70_crit_edge, %fatal_signal_pending.exit.i.if.then70_crit_edge
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #17
  br label %fail

do.body72:                                        ; preds = %if.end.i.do.body72_crit_edge, %if.end.i.do.body72_crit_edge111, %if.end.i.do.body72_crit_edge112, %if.end.i.do.body72_crit_edge113
  %32 = getelementptr inbounds %struct.io_worker, ptr %call.i.i.i, i32 0, i32 13
  tail call void @__init_work(ptr noundef %32, i32 noundef 0) #17
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -64, ptr %32, align 4
  %lockdep_map = getelementptr inbounds %struct.io_worker, ptr %call.i.i.i, i32 0, i32 13, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @create_io_worker.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry73 = getelementptr inbounds %struct.io_worker, ptr %call.i.i.i, i32 0, i32 13, i32 0, i32 1
  %34 = ptrtoint ptr %entry73 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %entry73, ptr %entry73, align 8
  %prev.i = getelementptr inbounds %struct.io_worker, ptr %call.i.i.i, i32 0, i32 13, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %entry73, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.io_worker, ptr %call.i.i.i, i32 0, i32 13, i32 0, i32 2
  %36 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @io_workqueue_create, ptr %func, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %37 = load ptr, ptr @system_wq, align 4
  %call.i.i109 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %37, ptr noundef %32) #17
  br label %cleanup

cleanup:                                          ; preds = %do.body72, %if.then67, %if.then.i, %fail.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %do.body72 ], [ true, %if.then67 ], [ false, %fail.cleanup_crit_edge ], [ false, %if.then.i ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @io_workqueue_create(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -156
  %wqe.i = getelementptr i8, ptr %work, i32 -128
  %0 = ptrtoint ptr %wqe.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wqe.i, align 4
  %flags.i = getelementptr i8, ptr %work, i32 -152
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = lshr i32 %3, 3
  %and.lobit.i = and i32 %and.i, 1
  %4 = xor i32 %and.lobit.i, 1
  %arrayidx.i.i = getelementptr %struct.io_wqe, ptr %1, i32 0, i32 1, i32 %4
  %call1 = tail call fastcc zeroext i1 @io_queue_worker_create(ptr noundef %add.ptr, ptr noundef %arrayidx.i.i, ptr noundef nonnull @create_worker_cont)
  br i1 %call1, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef %add.ptr) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @io_wqe_activate_free_worker(ptr noundef %wqe, ptr noundef readnone %acct) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !94
  %free_list = getelementptr inbounds %struct.io_wqe, ptr %wqe, i32 0, i32 3
  %0 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %n.048 = load volatile ptr, ptr %free_list, align 4
  %1 = ptrtoint ptr %n.048 to i32
  %and.i49 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %tobool.not50 = icmp eq i32 %and.i49, 0
  br i1 %tobool.not50, label %entry.land.rhs_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %n.051 = phi ptr [ %n.0, %for.inc.land.rhs_crit_edge ], [ %n.048, %entry.land.rhs_crit_edge ]
  %add.ptr = getelementptr i8, ptr %n.051, i32 -8
  %call5 = tail call fastcc zeroext i1 @io_worker_get(ptr noundef %add.ptr)
  br i1 %call5, label %if.end, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end:                                           ; preds = %land.rhs
  %wqe.i = getelementptr i8, ptr %n.051, i32 20
  %2 = ptrtoint ptr %wqe.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wqe.i, align 4
  %flags.i = getelementptr i8, ptr %n.051, i32 -4
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i26 = lshr i32 %5, 3
  %and.lobit.i = and i32 %and.i26, 1
  %6 = xor i32 %and.lobit.i, 1
  %arrayidx.i.i = getelementptr %struct.io_wqe, ptr %3, i32 0, i32 1, i32 %6
  %cmp.not = icmp eq ptr %arrayidx.i.i, %acct
  br i1 %cmp.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #17
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #17, !srcloc !79
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i, !prof !75

if.end5.i.i.i.i.for.inc_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef 3) #17
  br label %for.inc

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !80
  %ref_done.i = getelementptr i8, ptr %n.051, i32 76
  tail call void @complete(ptr noundef %ref_done.i) #17
  br label %for.inc

if.end8:                                          ; preds = %if.end
  %task = getelementptr i8, ptr %n.051, i32 16
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 4
  %call9 = tail call i32 @wake_up_process(ptr noundef %9) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  %call.i.i.i.i.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #17
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #17
  %asmresult.i.i.i.i.i.i.i37 = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i37)
  %cmp.i.i.i.i38 = icmp eq i32 %asmresult.i.i.i.i.i.i.i37, 1
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  %asmresult.i.i.i.i.i.i.i37.le = extractvalue { i32, i32, i32 } %10, 0
  br i1 %cmp.i.i.i.i38, label %if.then.i34, label %if.end5.i.i.i.i31

if.end5.i.i.i.i31:                                ; preds = %if.then11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i37.le)
  %.not.i.i.i.i30 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i37.le, 0
  br i1 %.not.i.i.i.i30, label %if.end5.i.i.i.i31.cleanup_crit_edge, label %if.then10.i.i.i.i32, !prof !75

if.end5.i.i.i.i31.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i31
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then10.i.i.i.i32:                              ; preds = %if.end5.i.i.i.i31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef 3) #17
  br label %cleanup

if.then.i34:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !80
  %ref_done.i33 = getelementptr i8, ptr %n.051, i32 76
  tail call void @complete(ptr noundef %ref_done.i33) #17
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  br i1 %cmp.i.i.i.i38, label %if.then.i43, label %if.end5.i.i.i.i40

if.end5.i.i.i.i40:                                ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i37)
  %.not.i.i.i.i39 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i37, 0
  br i1 %.not.i.i.i.i39, label %if.end5.i.i.i.i40.for.inc_crit_edge, label %if.then10.i.i.i.i41, !prof !75

if.end5.i.i.i.i40.for.inc_crit_edge:              ; preds = %if.end5.i.i.i.i40
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then10.i.i.i.i41:                              ; preds = %if.end5.i.i.i.i40
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef 3) #17
  br label %for.inc

if.then.i43:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !80
  %ref_done.i42 = getelementptr i8, ptr %n.051, i32 76
  tail call void @complete(ptr noundef %ref_done.i42) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then.i43, %if.then10.i.i.i.i41, %if.end5.i.i.i.i40.for.inc_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.for.inc_crit_edge, %land.rhs.for.inc_crit_edge
  %11 = ptrtoint ptr %n.051 to i32
  call void @__asan_load4_noabort(i32 %11)
  %n.0 = load volatile ptr, ptr %n.051, align 4
  %12 = ptrtoint ptr %n.0 to i32
  %and.i = and i32 %12, 1
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %for.inc.land.rhs_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then.i34, %if.then10.i.i.i.i32, %if.end5.i.i.i.i31.cleanup_crit_edge, %entry.cleanup_crit_edge
  %tobool.not46 = phi i1 [ true, %if.then.i34 ], [ true, %if.then10.i.i.i.i32 ], [ true, %if.end5.i.i.i.i31.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %for.inc.cleanup_crit_edge ]
  ret i1 %tobool.not46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @io_wq_work_match_item(ptr noundef readnone %work, ptr noundef readnone %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %work, %data
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @io_wq_for_each_worker(ptr noundef %wqe, ptr nocapture noundef readonly %func, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b5 = load i1, ptr @io_wq_for_each_worker.__warned, align 1
  br i1 %.b5, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @io_wq_for_each_worker.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 856, ptr noundef nonnull @.str.10) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %all_list = getelementptr inbounds %struct.io_wqe, ptr %wqe, i32 0, i32 4
  %0 = ptrtoint ptr %all_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn6 = load volatile ptr, ptr %all_list, align 4
  %cmp.not8 = icmp eq ptr %.pn6, %all_list
  br i1 %cmp.not8, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn9 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn6, %do.end.for.body_crit_edge ]
  %worker.010 = getelementptr i8, ptr %.pn9, i32 -16
  %call11 = tail call fastcc zeroext i1 @io_worker_get(ptr noundef %worker.010)
  br i1 %call11, label %if.then12, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then12:                                        ; preds = %for.body
  %task = getelementptr i8, ptr %.pn9, i32 8
  %1 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %task, align 4
  %tobool13.not = icmp eq ptr %2, null
  br i1 %tobool13.not, label %if.then12.if.end16_crit_edge, label %if.then14

if.then12.if.end16_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #19
  %call15 = tail call zeroext i1 %func(ptr noundef %worker.010, ptr noundef %data) #17, !callees !95
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then12.if.end16_crit_edge
  %ret.1.off0 = phi i1 [ %call15, %if.then14 ], [ false, %if.then12.if.end16_crit_edge ]
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %worker.010, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %worker.010, i32 1, i32 3, i32 1) #17
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %worker.010, ptr %worker.010, i32 1, ptr elementtype(i32) %worker.010) #17, !srcloc !79
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.io_worker_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !75

if.end5.i.i.i.i.io_worker_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %io_worker_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %worker.010, i32 noundef 3) #17
  br label %io_worker_release.exit

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !80
  %ref_done.i = getelementptr i8, ptr %.pn9, i32 68
  tail call void @complete(ptr noundef %ref_done.i) #17
  br label %io_worker_release.exit

io_worker_release.exit:                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.io_worker_release.exit_crit_edge
  br i1 %ret.1.off0, label %io_worker_release.exit.for.end_crit_edge, label %io_worker_release.exit.for.inc_crit_edge

io_worker_release.exit.for.inc_crit_edge:         ; preds = %io_worker_release.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

io_worker_release.exit.for.end_crit_edge:         ; preds = %io_worker_release.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc:                                          ; preds = %io_worker_release.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %4 = ptrtoint ptr %.pn9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load volatile ptr, ptr %.pn9, align 4
  %cmp.not = icmp eq ptr %.pn, %all_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %io_worker_release.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @io_wq_worker_cancel(ptr noundef %worker, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #17
  %cur_work = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 6
  %0 = ptrtoint ptr %cur_work to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_work, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.lor.lhs.false_crit_edge, label %land.lhs.true.i

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %data.i = getelementptr inbounds %struct.io_cb_cancel_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %call.i = tail call zeroext i1 %3(ptr noundef nonnull %1, ptr noundef %5) #17
  br i1 %call.i, label %if.then.i, label %land.lhs.true.i.lor.lhs.false_crit_edge

land.lhs.true.i.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false

if.then.i:                                        ; preds = %land.lhs.true.i
  %flags.i = getelementptr inbounds %struct.io_wq_work, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %7, 1
  store i32 %or.i, ptr %flags.i, align 4
  %task.i = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 4
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 4
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stack.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %11) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then.i.if.then_crit_edge

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call1.i.i = tail call i32 @wake_up_state(ptr noundef %9, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.then.sink.split_crit_edge, label %land.lhs.true.i.i.if.then_crit_edge

land.lhs.true.i.i.if.then_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

land.lhs.true.i.i.if.then.sink.split_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.sink.split

lor.lhs.false:                                    ; preds = %land.lhs.true.i.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %next_work = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 7
  %12 = ptrtoint ptr %next_work to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %next_work, align 4
  %tobool.not.i14 = icmp eq ptr %13, null
  br i1 %tobool.not.i14, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true.i17

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true.i17:                                ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %data.i15 = getelementptr inbounds %struct.io_cb_cancel_data, ptr %data, i32 0, i32 1
  %16 = ptrtoint ptr %data.i15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i15, align 4
  %call.i16 = tail call zeroext i1 %15(ptr noundef nonnull %13, ptr noundef %17) #17
  br i1 %call.i16, label %if.then.i24, label %land.lhs.true.i17.if.end_crit_edge

land.lhs.true.i17.if.end_crit_edge:               ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then.i24:                                      ; preds = %land.lhs.true.i17
  %flags.i18 = getelementptr inbounds %struct.io_wq_work, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i18, align 4
  %or.i19 = or i32 %19, 1
  store i32 %or.i19, ptr %flags.i18, align 4
  %task.i20 = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 4
  %20 = ptrtoint ptr %task.i20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i20, align 4
  %stack.i.i.i21 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %stack.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stack.i.i.i21, align 4
  %call.i.i.i.i22 = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %23) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i22)
  %tobool.not.i.i23 = icmp eq i32 %call.i.i.i.i22, 0
  br i1 %tobool.not.i.i23, label %land.lhs.true.i.i27, label %if.then.i24.if.then_crit_edge

if.then.i24.if.then_crit_edge:                    ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

land.lhs.true.i.i27:                              ; preds = %if.then.i24
  %call1.i.i25 = tail call i32 @wake_up_state(ptr noundef %21, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i25)
  %tobool2.not.i.i26 = icmp eq i32 %call1.i.i25, 0
  br i1 %tobool2.not.i.i26, label %land.lhs.true.i.i27.if.then.sink.split_crit_edge, label %land.lhs.true.i.i27.if.then_crit_edge

land.lhs.true.i.i27.if.then_crit_edge:            ; preds = %land.lhs.true.i.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

land.lhs.true.i.i27.if.then.sink.split_crit_edge: ; preds = %land.lhs.true.i.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.sink.split

if.then.sink.split:                               ; preds = %land.lhs.true.i.i27.if.then.sink.split_crit_edge, %land.lhs.true.i.i.if.then.sink.split_crit_edge
  %.sink = phi ptr [ %9, %land.lhs.true.i.i.if.then.sink.split_crit_edge ], [ %21, %land.lhs.true.i.i27.if.then.sink.split_crit_edge ]
  tail call void @kick_process(ptr noundef %.sink) #17
  br label %if.then

if.then:                                          ; preds = %if.then.sink.split, %land.lhs.true.i.i27.if.then_crit_edge, %if.then.i24.if.then_crit_edge, %land.lhs.true.i.i.if.then_crit_edge, %if.then.i.if.then_crit_edge
  %nr_running = getelementptr inbounds %struct.io_cb_cancel_data, ptr %data, i32 0, i32 2
  %24 = ptrtoint ptr %nr_running to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_running, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %nr_running, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.i17.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #17
  %nr_running3 = getelementptr inbounds %struct.io_cb_cancel_data, ptr %data, i32 0, i32 2
  %26 = ptrtoint ptr %nr_running3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_running3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %if.end.land.end_crit_edge, label %land.rhs

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %cancel_all = getelementptr inbounds %struct.io_cb_cancel_data, ptr %data, i32 0, i32 4
  %28 = ptrtoint ptr %cancel_all to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cancel_all, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool4.not = icmp eq i8 %29, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.land.end_crit_edge
  %30 = phi i1 [ false, %if.end.land.end_crit_edge ], [ %tobool4.not, %land.rhs ]
  ret i1 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kick_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_add_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @io_wq_worker_wake(ptr nocapture noundef readonly %worker, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %task = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 4
  %0 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task, align 4
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stack.i.i, align 4
  %call.i.i.i = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.set_notify_signal.exit_crit_edge

entry.set_notify_signal.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %set_notify_signal.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @wake_up_state(ptr noundef %1, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then.i, label %land.lhs.true.i.set_notify_signal.exit_crit_edge

land.lhs.true.i.set_notify_signal.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %set_notify_signal.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kick_process(ptr noundef %1) #17
  br label %set_notify_signal.exit

set_notify_signal.exit:                           ; preds = %if.then.i, %land.lhs.true.i.set_notify_signal.exit_crit_edge, %entry.set_notify_signal.exit_crit_edge
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 4
  %call = tail call i32 @wake_up_process(ptr noundef %5) #17
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @io_wq_cpu_online(i32 noundef %cpu, ptr noundef readonly %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  %add.ptr = getelementptr i8, ptr %node, i32 -76
  %spec.select = select i1 %tobool.not, ptr null, ptr %add.ptr
  tail call fastcc void @__io_wq_cpu_online(ptr noundef %spec.select, i32 noundef %cpu, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @io_wq_cpu_offline(i32 noundef %cpu, ptr noundef readonly %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  %add.ptr = getelementptr i8, ptr %node, i32 -76
  %spec.select = select i1 %tobool.not, ptr null, ptr %add.ptr
  tail call fastcc void @__io_wq_cpu_online(ptr noundef %spec.select, i32 noundef %cpu, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__io_wq_cpu_online(ptr nocapture noundef readonly %wq, i32 noundef %cpu, i1 noundef zeroext %online) unnamed_addr #0 align 64 {
entry:
  %od = alloca %struct.online_data, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %online to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %od) #17
  %0 = ptrtoint ptr %od to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %od, align 8, !annotation !96
  store i32 %cpu, ptr %od, align 8
  %online2 = getelementptr inbounds %struct.online_data, ptr %od, i32 0, i32 1
  %1 = ptrtoint ptr %online2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool, ptr %online2, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %wqes = getelementptr inbounds %struct.io_wq, ptr %wq, i32 0, i32 8
  %6 = ptrtoint ptr %wqes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wqes, align 4
  call fastcc void @io_wq_for_each_worker(ptr noundef %7, ptr noundef nonnull @io_wq_worker_affinity, ptr noundef nonnull %od)
  %call.i1 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i1, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i4

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i4:                                 ; preds = %rcu_read_lock.exit
  %call1.i2 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2)
  %tobool.not.i3 = icmp eq i32 %call1.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i6

land.lhs.true.i4.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i4
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i6:                                ; preds = %land.lhs.true.i4
  %.b4.i5 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5, label %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, label %if.then.i7

land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i7:                                       ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i7, %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !73
  %8 = call i32 @llvm.read_register.i32(metadata !58) #17
  %and.i.i.i.i.i8 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i8 to ptr
  %preempt_count.i.i.i.i9 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i9, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i9, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %od) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @io_wq_worker_affinity(ptr nocapture noundef readonly %worker, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %online = getelementptr inbounds %struct.online_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %online, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %wqe2 = getelementptr inbounds %struct.io_worker, ptr %worker, i32 0, i32 5
  %4 = ptrtoint ptr %wqe2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wqe2, align 4
  %cpu_mask3 = getelementptr inbounds %struct.io_wqe, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %cpu_mask3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpu_mask3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %3)
  %cmp.not.i.i.i7 = icmp ugt i32 %8, %3
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp.not.i.i.i7, label %if.then.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.then.cpumask_set_cpu.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.then
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !75

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %if.then.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %3, ptr noundef %7) #17
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp.not.i.i.i7, label %if.else.cpumask_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i9

if.else.cpumask_clear_cpu.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpumask_clear_cpu.exit

land.rhs.i.i.i9:                                  ; preds = %if.else
  %.b37.i.i.i8 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i8, label %land.rhs.i.i.i9.cpumask_clear_cpu.exit_crit_edge, label %if.then.i.i.i10, !prof !75

land.rhs.i.i.i9.cpumask_clear_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpumask_clear_cpu.exit

if.then.i.i.i10:                                  ; preds = %land.rhs.i.i.i9
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i10, %land.rhs.i.i.i9.cpumask_clear_cpu.exit_crit_edge, %if.else.cpumask_clear_cpu.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %7) #17
  br label %if.end

if.end:                                           ; preds = %cpumask_clear_cpu.exit, %cpumask_set_cpu.exit
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind readonly }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !34, !36, !37, !38, !39, !40, !42, !43, !45, !46, !48, !49, !50, !52, !53, !55, !57}
!llvm.named.register.sp = !{!58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../fs/io-wq.c", i32 1150, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../fs/io-wq.c", i32 1152, i32 6}
!5 = !{ptr @io_wq_create.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../fs/io-wq.c", i32 1195, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../fs/io-wq.c", i32 1297, i32 2}
!10 = !{ptr @__initcall__kmod_io_wq__345_1422_io_wq_init4, !11, !"__initcall__kmod_io_wq__345_1422_io_wq_init4", i1 false, i1 false}
!11 = !{!"../fs/io-wq.c", i32 1422, i32 1}
!12 = !{ptr @io_wq_online, !13, !"io_wq_online", i1 false, i1 false}
!13 = !{!"../fs/io-wq.c", i32 130, i32 25}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/io-wq.c", i32 627, i32 29}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../fs/io-wq.c", i32 635, i32 3}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../fs/io-wq.c", i32 646, i32 4}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../fs/io-wq.c", i32 577, i32 3}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../fs/io-wq.c", i32 448, i32 4}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../fs/io-wq.c", i32 517, i32 3}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../fs/io-wq.c", i32 810, i32 2}
!28 = !{ptr @create_io_worker.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../fs/io-wq.c", i32 825, i32 2}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @create_io_worker.__key.6, !32, !"__key", i1 false, i1 false}
!32 = !{!"../fs/io-wq.c", i32 838, i32 3}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../fs/io-wq.c", i32 291, i32 3}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @io_wqe_create_worker._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @io_wqe_create_worker._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../fs/io-wq.c", i32 856, i32 2}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @init_completion.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../include/linux/completion.h", i32 87, i32 2}
!45 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!48 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!52 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/io-wq.c", i32 1415, i32 53}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!57 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!58 = !{!"sp"}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 2148242232, i64 2148242258, i64 2148242287, i64 2148242321, i64 2148242352, i64 2148242375}
!69 = !{i64 2148330684}
!70 = !{i64 2148245417, i64 2148245449, i64 2148245478, i64 2148245512, i64 2148245543, i64 2148245566}
!71 = !{i64 2148330913}
!72 = !{i64 2149217588}
!73 = !{i64 2149217854}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i8 0, i8 2}
!77 = !{i64 2148243762, i64 2148243794, i64 2148243823, i64 2148243857, i64 2148243888, i64 2148243911}
!78 = !{i64 2148331763}
!79 = !{i64 2148246227, i64 2148246259, i64 2148246288, i64 2148246322, i64 2148246353, i64 2148246376}
!80 = !{i64 2149654828}
!81 = !{i64 2148251090, i64 2148251122, i64 2148251151, i64 2148251185, i64 2148251216, i64 2148251239}
!82 = !{i64 2148340171}
!83 = !{i64 2148339058}
!84 = !{i64 2148249477, i64 2148249509, i64 2148249538, i64 2148249572, i64 2148249603, i64 2148249626}
!85 = !{i64 2148244697, i64 2148244723, i64 2148244752, i64 2148244786, i64 2148244817, i64 2148244840}
!86 = !{i64 725968, i64 725992, i64 726013, i64 726030, i64 726047}
!87 = !{i64 2155261662}
!88 = !{i64 2152388624}
!89 = !{i64 2155219157}
!90 = !{i64 2155219309}
!91 = !{i64 2149242980}
!92 = !{i64 2149635862}
!93 = !{i64 2155080608}
!94 = !{i64 2155225570}
!95 = !{ptr @io_wq_worker_affinity, ptr @io_wq_worker_cancel, ptr @io_wq_worker_wake}
!96 = !{!"auto-init"}
