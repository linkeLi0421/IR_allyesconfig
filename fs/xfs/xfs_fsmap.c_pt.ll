; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_fsmap.c_pt.bc'
source_filename = "../fs/xfs/xfs_fsmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.fsmap = type { i32, i32, i64, i64, i64, i64, [3 x i64] }
%struct.xfs_fsmap = type { i32, i32, i64, i64, i64, i64 }
%struct.xfs_getfsmap_dev = type { i32, ptr }
%struct.xfs_getfsmap_info = type { ptr, ptr, ptr, ptr, i64, i64, i32, %struct.xfs_rmap_irec, %struct.xfs_rmap_irec, i8 }
%struct.xfs_rmap_irec = type { i32, i32, i64, i64, i32 }
%struct.xfs_fsmap_head = type { i32, i32, i32, i32, [2 x %struct.xfs_fsmap] }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_alloc_rec_incore = type { i32, i32 }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_btree_cur = type { ptr, ptr, ptr, ptr, i32, i32, %union.xfs_btree_irec, i8, i8, i32, %union.anon.95, [0 x %struct.xfs_btree_level] }
%union.xfs_btree_irec = type { %struct.xfs_bmbt_irec }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%union.anon.95 = type { %struct.xfs_btree_cur_ag }
%struct.xfs_btree_cur_ag = type { ptr, %union.anon.96, %union.anon.97 }
%union.anon.96 = type { ptr }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { i32, i32 }
%struct.xfs_btree_level = type { ptr, i16, i16 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.xfs_rtalloc_rec = type { i64, i64 }

@__tracepoint_xfs_fsmap_low_key = external dso_local global %struct.tracepoint, align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_fsmap_low_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_fsmap_high_key = external dso_local global %struct.tracepoint, align 4
@trace_xfs_fsmap_high_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_getfsmap_mapping = external dso_local global %struct.tracepoint, align 4
@trace_xfs_getfsmap_mapping.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_fsmap_mapping = external dso_local global %struct.tracepoint, align 4
@trace_xfs_fsmap_mapping.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_fsmap.c\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.5 = internal global [13 x i64] [i64 11, i64 64, i64 0, i64 1, i64 2, i64 377957122049, i64 377957122050, i64 377957122051, i64 377957122052, i64 377957122053, i64 377957122054, i64 377957122055, i64 -1]
@__sancov_gen_cov_switch_values.6 = internal global [13 x i64] [i64 11, i64 64, i64 0, i64 1, i64 2, i64 377957122049, i64 377957122050, i64 377957122051, i64 377957122052, i64 377957122053, i64 377957122054, i64 377957122055, i64 -1]
@__sancov_gen_cov_switch_values.7 = internal global [13 x i64] [i64 11, i64 64, i64 0, i64 1, i64 2, i64 377957122049, i64 377957122050, i64 377957122051, i64 377957122052, i64 377957122053, i64 377957122054, i64 377957122055, i64 -1]
@__sancov_gen_cov_switch_values.8 = internal global [13 x i64] [i64 11, i64 64, i64 0, i64 1, i64 2, i64 377957122049, i64 377957122050, i64 377957122051, i64 377957122052, i64 377957122053, i64 377957122054, i64 377957122055, i64 -1]
@__sancov_gen_cov_switch_values.9 = internal global [10 x i64] [i64 8, i64 64, i64 -9, i64 -8, i64 -7, i64 -6, i64 -5, i64 -4, i64 -3, i64 -1]
@__sancov_gen_cov_switch_values.10 = internal global [13 x i64] [i64 11, i64 64, i64 0, i64 1, i64 2, i64 377957122049, i64 377957122050, i64 377957122051, i64 377957122052, i64 377957122053, i64 377957122054, i64 377957122055, i64 -1]
@__sancov_gen_cov_switch_values.11 = internal global [13 x i64] [i64 11, i64 64, i64 0, i64 1, i64 2, i64 377957122049, i64 377957122050, i64 377957122051, i64 377957122052, i64 377957122053, i64 377957122054, i64 377957122055, i64 -1]
@___asan_gen_.16 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 3474, i32 1 }
@___asan_gen_.19 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 108, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [22 x i8] c"../fs/xfs/xfs_fsmap.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 150, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xfs_fsmap_to_internal(ptr nocapture noundef writeonly %dest, ptr nocapture noundef readonly %src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src, align 8
  %2 = ptrtoint ptr %dest to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %dest, align 8
  %fmr_flags = getelementptr inbounds %struct.fsmap, ptr %src, i32 0, i32 1
  %3 = ptrtoint ptr %fmr_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fmr_flags, align 4
  %fmr_flags2 = getelementptr inbounds %struct.xfs_fsmap, ptr %dest, i32 0, i32 1
  %5 = ptrtoint ptr %fmr_flags2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %fmr_flags2, align 4
  %fmr_physical = getelementptr inbounds %struct.fsmap, ptr %src, i32 0, i32 2
  %6 = ptrtoint ptr %fmr_physical to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %fmr_physical, align 8
  %shr = lshr i64 %7, 9
  %fmr_physical3 = getelementptr inbounds %struct.xfs_fsmap, ptr %dest, i32 0, i32 2
  %8 = ptrtoint ptr %fmr_physical3 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %shr, ptr %fmr_physical3, align 8
  %fmr_owner = getelementptr inbounds %struct.fsmap, ptr %src, i32 0, i32 3
  %9 = ptrtoint ptr %fmr_owner to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %fmr_owner, align 8
  %fmr_owner4 = getelementptr inbounds %struct.xfs_fsmap, ptr %dest, i32 0, i32 3
  %11 = ptrtoint ptr %fmr_owner4 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %fmr_owner4, align 8
  %fmr_offset = getelementptr inbounds %struct.fsmap, ptr %src, i32 0, i32 4
  %12 = ptrtoint ptr %fmr_offset to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fmr_offset, align 8
  %shr5 = lshr i64 %13, 9
  %fmr_offset6 = getelementptr inbounds %struct.xfs_fsmap, ptr %dest, i32 0, i32 4
  %14 = ptrtoint ptr %fmr_offset6 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %shr5, ptr %fmr_offset6, align 8
  %fmr_length = getelementptr inbounds %struct.fsmap, ptr %src, i32 0, i32 5
  %15 = ptrtoint ptr %fmr_length to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %fmr_length, align 8
  %shr7 = lshr i64 %16, 9
  %fmr_length8 = getelementptr inbounds %struct.xfs_fsmap, ptr %dest, i32 0, i32 5
  %17 = ptrtoint ptr %fmr_length8 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %shr7, ptr %fmr_length8, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_getfsmap(ptr noundef %mp, ptr noundef %head, ptr noundef %fsmap_recs) local_unnamed_addr #1 align 64 {
entry:
  %tp = alloca ptr, align 4
  %dkeys = alloca [2 x %struct.xfs_fsmap], align 8
  %handlers = alloca [3 x %struct.xfs_getfsmap_dev], align 4
  %info = alloca %struct.xfs_getfsmap_info, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #11
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %tp, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %dkeys) #11
  %1 = call ptr @memset(ptr %dkeys, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %handlers) #11
  %2 = getelementptr inbounds %struct.xfs_getfsmap_dev, ptr %handlers, i32 0, i32 1
  %3 = getelementptr inbounds [3 x %struct.xfs_getfsmap_dev], ptr %handlers, i32 0, i32 1
  %4 = getelementptr inbounds [3 x %struct.xfs_getfsmap_dev], ptr %handlers, i32 0, i32 1, i32 1
  %5 = getelementptr inbounds [3 x %struct.xfs_getfsmap_dev], ptr %handlers, i32 0, i32 2
  %6 = getelementptr inbounds [3 x %struct.xfs_getfsmap_dev], ptr %handlers, i32 0, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %info) #11
  %7 = call ptr @memset(ptr %info, i32 0, i32 112)
  %8 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %head, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmh_keys = getelementptr inbounds %struct.xfs_fsmap_head, ptr %head, i32 0, i32 4
  %call = tail call fastcc zeroext i1 @xfs_getfsmap_is_valid_device(ptr noundef %mp, ptr noundef %fmh_keys)
  br i1 %call, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx2 = getelementptr %struct.xfs_fsmap_head, ptr %head, i32 0, i32 4, i32 1
  %call3 = tail call fastcc zeroext i1 @xfs_getfsmap_is_valid_device(ptr noundef %mp, ptr noundef %arrayidx2)
  br i1 %call3, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %call6 = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call6, label %land.rhs, label %if.end5.land.end_crit_edge

if.end5.land.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %10 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %11, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %phi.sel = select i1 %tobool.i.not, ptr @xfs_getfsmap_datadev_bnobt, ptr @xfs_getfsmap_datadev_rmapbt
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end5.land.end_crit_edge
  %12 = phi ptr [ @xfs_getfsmap_datadev_bnobt, %if.end5.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  %fmh_entries = getelementptr inbounds %struct.xfs_fsmap_head, ptr %head, i32 0, i32 3
  %13 = ptrtoint ptr %fmh_entries to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %fmh_entries, align 4
  %14 = call ptr @memset(ptr %handlers, i32 0, i32 24)
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %15 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m_ddev_targp, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %and1.i = and i32 %18, 255
  %19 = lshr i32 %18, 12
  %shl.i = and i32 %19, 1048320
  %or.i = or i32 %shl.i, %and1.i
  %and2.i = shl i32 %18, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or4.i = or i32 %or.i, %shl3.i
  %20 = ptrtoint ptr %handlers to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or4.i, ptr %handlers, align 4
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %12, ptr %2, align 4
  %m_logdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 14
  %22 = ptrtoint ptr %m_logdev_targp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m_logdev_targp, align 4
  %cmp.not = icmp eq ptr %23, %16
  br i1 %cmp.not, label %land.end.if.end25_crit_edge, label %if.then17

land.end.if.end25_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then17:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %and1.i178 = and i32 %25, 255
  %26 = lshr i32 %25, 12
  %shl.i179 = and i32 %26, 1048320
  %or.i180 = or i32 %shl.i179, %and1.i178
  %and2.i181 = shl i32 %25, 12
  %shl3.i182 = and i32 %and2.i181, -1048576
  %or4.i183 = or i32 %or.i180, %shl3.i182
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or4.i183, ptr %3, align 4
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @xfs_getfsmap_logdev, ptr %4, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then17, %land.end.if.end25_crit_edge
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 15
  %29 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool26.not = icmp eq ptr %30, null
  br i1 %tobool26.not, label %if.end25.if.end35_crit_edge, label %if.then27

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %and1.i184 = and i32 %32, 255
  %33 = lshr i32 %32, 12
  %shl.i185 = and i32 %33, 1048320
  %or.i186 = or i32 %shl.i185, %and1.i184
  %and2.i187 = shl i32 %32, 12
  %shl3.i188 = and i32 %and2.i187, -1048576
  %or4.i189 = or i32 %or.i186, %shl3.i188
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or4.i189, ptr %5, align 4
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @xfs_getfsmap_rtdev_rtbitmap, ptr %6, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then27, %if.end25.if.end35_crit_edge
  call void @sort(ptr noundef nonnull %handlers, i32 noundef 3, i32 noundef 8, ptr noundef nonnull @xfs_getfsmap_dev_compare, ptr noundef null) #11
  %36 = call ptr @memcpy(ptr %dkeys, ptr %fmh_keys, i32 40)
  %fmr_flags = getelementptr inbounds %struct.xfs_fsmap, ptr %dkeys, i32 0, i32 1
  %37 = ptrtoint ptr %fmr_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fmr_flags, align 4
  %and41 = and i32 %38, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %fmr_length53 = getelementptr inbounds %struct.xfs_fsmap, ptr %dkeys, i32 0, i32 5
  %39 = ptrtoint ptr %fmr_length53 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %fmr_length53, align 8
  br i1 %tobool42.not, label %if.else51, label %if.then43

if.then43:                                        ; preds = %if.end35
  %fmr_physical = getelementptr inbounds %struct.xfs_fsmap, ptr %dkeys, i32 0, i32 2
  %41 = ptrtoint ptr %fmr_physical to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %fmr_physical, align 8
  %add = add i64 %42, %40
  store i64 %add, ptr %fmr_physical, align 8
  %fmr_owner = getelementptr inbounds %struct.xfs_fsmap, ptr %dkeys, i32 0, i32 3
  %43 = ptrtoint ptr %fmr_owner to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 0, ptr %fmr_owner, align 8
  %fmr_offset = getelementptr inbounds %struct.xfs_fsmap, ptr %dkeys, i32 0, i32 4
  %44 = ptrtoint ptr %fmr_offset to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %fmr_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %tobool48.not = icmp eq i64 %45, 0
  br i1 %tobool48.not, label %if.then43.if.end57_crit_edge, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then43.if.end57_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.else51:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %fmr_offset55 = getelementptr inbounds %struct.xfs_fsmap, ptr %dkeys, i32 0, i32 4
  %46 = ptrtoint ptr %fmr_offset55 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %fmr_offset55, align 8
  %add56 = add i64 %47, %40
  store i64 %add56, ptr %fmr_offset55, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.else51, %if.then43.if.end57_crit_edge
  %fmr_length59 = getelementptr inbounds %struct.xfs_fsmap, ptr %dkeys, i32 0, i32 5
  %48 = ptrtoint ptr %fmr_length59 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 0, ptr %fmr_length59, align 8
  %arrayidx60 = getelementptr inbounds [2 x %struct.xfs_fsmap], ptr %dkeys, i32 0, i32 1
  %49 = call ptr @memset(ptr %arrayidx60, i32 255, i32 40)
  %call64 = call fastcc zeroext i1 @xfs_getfsmap_check_keys(ptr noundef nonnull %dkeys, ptr noundef %arrayidx2)
  br i1 %call64, label %if.end66, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end66:                                         ; preds = %if.end57
  %fmr_physical69 = getelementptr inbounds %struct.xfs_fsmap_head, ptr %head, i32 0, i32 4, i32 0, i32 2
  %50 = ptrtoint ptr %fmr_physical69 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %fmr_physical69, align 8
  %fmr_length72 = getelementptr inbounds %struct.xfs_fsmap_head, ptr %head, i32 0, i32 4, i32 0, i32 5
  %52 = ptrtoint ptr %fmr_length72 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %fmr_length72, align 8
  %add73 = add i64 %53, %51
  %next_daddr = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 4
  %54 = ptrtoint ptr %next_daddr to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %add73, ptr %next_daddr, align 8
  %fsmap_recs74 = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 1
  %55 = ptrtoint ptr %fsmap_recs74 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %fsmap_recs, ptr %fsmap_recs74, align 4
  %56 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %head, ptr %info, align 8
  %dev123 = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 6
  %last = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 9
  %pag = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 3
  %57 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %2, align 4
  %tobool79.not = icmp eq ptr %58, null
  br i1 %tobool79.not, label %if.end66.for.inc_crit_edge, label %if.end81

if.end66.for.inc_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end81:                                         ; preds = %if.end66
  %59 = ptrtoint ptr %fmh_keys to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fmh_keys, align 8
  %61 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %handlers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp86 = icmp ugt i32 %60, %62
  br i1 %cmp86, label %if.end81.for.inc_crit_edge, label %if.end88

if.end81.for.inc_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end88:                                         ; preds = %if.end81
  %63 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %62)
  %cmp94 = icmp ult i32 %64, %62
  br i1 %cmp94, label %if.end88.for.end_crit_edge, label %if.end96

if.end88.for.end_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end96:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp102 = icmp eq i32 %62, %64
  br i1 %cmp102, label %if.then103, label %if.end96.if.end107_crit_edge

if.end96.if.end107_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107

if.then103:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  %65 = call ptr @memcpy(ptr %arrayidx60, ptr %arrayidx2, i32 40)
  br label %if.end107

if.end107:                                        ; preds = %if.then103, %if.end96.if.end107_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %60)
  %cmp113 = icmp ugt i32 %62, %60
  br i1 %cmp113, label %if.then114, label %if.end107.if.end116_crit_edge

if.end107.if.end116_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116

if.then114:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  %66 = call ptr @memset(ptr %dkeys, i32 0, i32 40)
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %if.end107.if.end116_crit_edge
  %call117 = call i32 @xfs_trans_alloc_empty(ptr noundef %mp, ptr noundef nonnull %tp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %if.end116.for.end_crit_edge

if.end116.for.end_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end120:                                        ; preds = %if.end116
  %67 = ptrtoint ptr %handlers to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %handlers, align 4
  %69 = ptrtoint ptr %dev123 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %dev123, align 8
  %70 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %last, align 8
  %71 = ptrtoint ptr %pag to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %pag, align 4
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %2, align 4
  %74 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tp, align 4
  %call127 = call i32 %73(ptr noundef %75, ptr noundef nonnull %dkeys, ptr noundef nonnull %info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end130, label %if.end120.for.end_crit_edge

if.end120.for.end_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end130:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %77) #11
  %78 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %tp, align 4
  %79 = ptrtoint ptr %next_daddr to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 0, ptr %next_daddr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end130, %if.end81.for.inc_crit_edge, %if.end66.for.inc_crit_edge
  %80 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %4, align 4
  %tobool79.not.1 = icmp eq ptr %81, null
  br i1 %tobool79.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end81.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.end81.1:                                       ; preds = %for.inc
  %82 = ptrtoint ptr %fmh_keys to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fmh_keys, align 8
  %84 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %85)
  %cmp86.1 = icmp ugt i32 %83, %85
  br i1 %cmp86.1, label %if.end81.1.for.inc.1_crit_edge, label %if.end88.1

if.end81.1.for.inc.1_crit_edge:                   ; preds = %if.end81.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.end88.1:                                       ; preds = %if.end81.1
  %86 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %85)
  %cmp94.1 = icmp ult i32 %87, %85
  br i1 %cmp94.1, label %if.end88.1.for.end_crit_edge, label %if.end96.1

if.end88.1.for.end_crit_edge:                     ; preds = %if.end88.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end96.1:                                       ; preds = %if.end88.1
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %87)
  %cmp102.1 = icmp eq i32 %85, %87
  br i1 %cmp102.1, label %if.then103.1, label %if.end96.1.if.end107.1_crit_edge

if.end96.1.if.end107.1_crit_edge:                 ; preds = %if.end96.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107.1

if.then103.1:                                     ; preds = %if.end96.1
  call void @__sanitizer_cov_trace_pc() #13
  %88 = call ptr @memcpy(ptr %arrayidx60, ptr %arrayidx2, i32 40)
  br label %if.end107.1

if.end107.1:                                      ; preds = %if.then103.1, %if.end96.1.if.end107.1_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %83)
  %cmp113.1 = icmp ugt i32 %85, %83
  br i1 %cmp113.1, label %if.then114.1, label %if.end107.1.if.end116.1_crit_edge

if.end107.1.if.end116.1_crit_edge:                ; preds = %if.end107.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116.1

if.then114.1:                                     ; preds = %if.end107.1
  call void @__sanitizer_cov_trace_pc() #13
  %89 = call ptr @memset(ptr %dkeys, i32 0, i32 40)
  br label %if.end116.1

if.end116.1:                                      ; preds = %if.then114.1, %if.end107.1.if.end116.1_crit_edge
  %call117.1 = call i32 @xfs_trans_alloc_empty(ptr noundef %mp, ptr noundef nonnull %tp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117.1)
  %tobool118.not.1 = icmp eq i32 %call117.1, 0
  br i1 %tobool118.not.1, label %if.end120.1, label %if.end116.1.for.end_crit_edge

if.end116.1.for.end_crit_edge:                    ; preds = %if.end116.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end120.1:                                      ; preds = %if.end116.1
  %90 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %3, align 4
  %92 = ptrtoint ptr %dev123 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %dev123, align 8
  %93 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %last, align 8
  %94 = ptrtoint ptr %pag to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %pag, align 4
  %95 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %4, align 4
  %97 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tp, align 4
  %call127.1 = call i32 %96(ptr noundef %98, ptr noundef nonnull %dkeys, ptr noundef nonnull %info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127.1)
  %tobool128.not.1 = icmp eq i32 %call127.1, 0
  br i1 %tobool128.not.1, label %if.end130.1, label %if.end120.1.for.end_crit_edge

if.end120.1.for.end_crit_edge:                    ; preds = %if.end120.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end130.1:                                      ; preds = %if.end120.1
  call void @__sanitizer_cov_trace_pc() #13
  %99 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %100) #11
  %101 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %tp, align 4
  %102 = ptrtoint ptr %next_daddr to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 0, ptr %next_daddr, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end130.1, %if.end81.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %103 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %6, align 4
  %tobool79.not.2 = icmp eq ptr %104, null
  br i1 %tobool79.not.2, label %for.inc.1.for.end_crit_edge, label %if.end81.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end81.2:                                       ; preds = %for.inc.1
  %105 = ptrtoint ptr %fmh_keys to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %fmh_keys, align 8
  %107 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %108)
  %cmp86.2 = icmp ugt i32 %106, %108
  br i1 %cmp86.2, label %if.end81.2.for.end_crit_edge, label %if.end88.2

if.end81.2.for.end_crit_edge:                     ; preds = %if.end81.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end88.2:                                       ; preds = %if.end81.2
  %109 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %108)
  %cmp94.2 = icmp ult i32 %110, %108
  br i1 %cmp94.2, label %if.end88.2.for.end_crit_edge, label %if.end96.2

if.end88.2.for.end_crit_edge:                     ; preds = %if.end88.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end96.2:                                       ; preds = %if.end88.2
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %110)
  %cmp102.2 = icmp eq i32 %108, %110
  br i1 %cmp102.2, label %if.then103.2, label %if.end96.2.if.end107.2_crit_edge

if.end96.2.if.end107.2_crit_edge:                 ; preds = %if.end96.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107.2

if.then103.2:                                     ; preds = %if.end96.2
  call void @__sanitizer_cov_trace_pc() #13
  %111 = call ptr @memcpy(ptr %arrayidx60, ptr %arrayidx2, i32 40)
  br label %if.end107.2

if.end107.2:                                      ; preds = %if.then103.2, %if.end96.2.if.end107.2_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %106)
  %cmp113.2 = icmp ugt i32 %108, %106
  br i1 %cmp113.2, label %if.then114.2, label %if.end107.2.if.end116.2_crit_edge

if.end107.2.if.end116.2_crit_edge:                ; preds = %if.end107.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116.2

if.then114.2:                                     ; preds = %if.end107.2
  call void @__sanitizer_cov_trace_pc() #13
  %112 = call ptr @memset(ptr %dkeys, i32 0, i32 40)
  br label %if.end116.2

if.end116.2:                                      ; preds = %if.then114.2, %if.end107.2.if.end116.2_crit_edge
  %call117.2 = call i32 @xfs_trans_alloc_empty(ptr noundef %mp, ptr noundef nonnull %tp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117.2)
  %tobool118.not.2 = icmp eq i32 %call117.2, 0
  br i1 %tobool118.not.2, label %if.end120.2, label %if.end116.2.for.end_crit_edge

if.end116.2.for.end_crit_edge:                    ; preds = %if.end116.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end120.2:                                      ; preds = %if.end116.2
  %113 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %5, align 4
  %115 = ptrtoint ptr %dev123 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %dev123, align 8
  %116 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %last, align 8
  %117 = ptrtoint ptr %pag to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %pag, align 4
  %118 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %6, align 4
  %120 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %tp, align 4
  %call127.2 = call i32 %119(ptr noundef %121, ptr noundef nonnull %dkeys, ptr noundef nonnull %info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127.2)
  %tobool128.not.2 = icmp eq i32 %call127.2, 0
  br i1 %tobool128.not.2, label %for.end.thread, label %if.end120.2.for.end_crit_edge

if.end120.2.for.end_crit_edge:                    ; preds = %if.end120.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.thread:                                   ; preds = %if.end120.2
  call void @__sanitizer_cov_trace_pc() #13
  %122 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %123) #11
  %124 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %tp, align 4
  br label %if.end134

for.end:                                          ; preds = %if.end120.2.for.end_crit_edge, %if.end116.2.for.end_crit_edge, %if.end88.2.for.end_crit_edge, %if.end81.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %if.end120.1.for.end_crit_edge, %if.end116.1.for.end_crit_edge, %if.end88.1.for.end_crit_edge, %if.end120.for.end_crit_edge, %if.end116.for.end_crit_edge, %if.end88.for.end_crit_edge
  %error.2.ph = phi i32 [ 0, %for.inc.1.for.end_crit_edge ], [ 0, %if.end81.2.for.end_crit_edge ], [ %call127.2, %if.end120.2.for.end_crit_edge ], [ %call117.2, %if.end116.2.for.end_crit_edge ], [ 0, %if.end88.2.for.end_crit_edge ], [ %call127.1, %if.end120.1.for.end_crit_edge ], [ %call117.1, %if.end116.1.for.end_crit_edge ], [ 0, %if.end88.1.for.end_crit_edge ], [ %call127, %if.end120.for.end_crit_edge ], [ %call117, %if.end116.for.end_crit_edge ], [ 0, %if.end88.for.end_crit_edge ]
  %125 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %125)
  %.pr = load ptr, ptr %tp, align 4
  %tobool132.not = icmp eq ptr %.pr, null
  br i1 %tobool132.not, label %for.end.if.end134_crit_edge, label %if.then133

for.end.if.end134_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end134

if.then133:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @xfs_trans_cancel(ptr noundef nonnull %.pr) #11
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %for.end.if.end134_crit_edge, %for.end.thread
  %error.2193 = phi i32 [ 0, %for.end.thread ], [ %error.2.ph, %if.then133 ], [ %error.2.ph, %for.end.if.end134_crit_edge ]
  %fmh_oflags = getelementptr inbounds %struct.xfs_fsmap_head, ptr %head, i32 0, i32 1
  %126 = ptrtoint ptr %fmh_oflags to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %fmh_oflags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end134, %if.end57.cleanup_crit_edge, %if.then43.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.2193, %if.end134 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then43.cleanup_crit_edge ], [ -22, %if.end57.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %info) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %handlers) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %dkeys) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @xfs_getfsmap_is_valid_device(ptr nocapture noundef readonly %mp, ptr nocapture noundef readonly %fm) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fm, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %lor.lhs.false3 [
    i32 0, label %entry.return_crit_edge
    i32 -1, label %entry.return_crit_edge44
  ]

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false3:                                   ; preds = %entry
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %3 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m_ddev_targp, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %and1.i = and i32 %6, 255
  %7 = lshr i32 %6, 12
  %shl.i = and i32 %7, 1048320
  %or.i = or i32 %shl.i, %and1.i
  %and2.i = shl i32 %6, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or4.i = or i32 %or.i, %shl3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %or4.i)
  %cmp5 = icmp eq i32 %1, %or4.i
  br i1 %cmp5, label %lor.lhs.false3.return_crit_edge, label %if.end

lor.lhs.false3.return_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %lor.lhs.false3
  %m_logdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 14
  %8 = ptrtoint ptr %m_logdev_targp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m_logdev_targp, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %and1.i32 = and i32 %11, 255
  %12 = lshr i32 %11, 12
  %shl.i33 = and i32 %12, 1048320
  %or.i34 = or i32 %shl.i33, %and1.i32
  %and2.i35 = shl i32 %11, 12
  %shl3.i36 = and i32 %and2.i35, -1048576
  %or4.i37 = or i32 %or.i34, %shl3.i36
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %or4.i37)
  %cmp10 = icmp eq i32 %1, %or4.i37
  br i1 %cmp10, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 15
  %13 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %if.end12.if.end21_crit_edge, label %land.lhs.true14

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

land.lhs.true14:                                  ; preds = %if.end12
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %and1.i38 = and i32 %16, 255
  %17 = lshr i32 %16, 12
  %shl.i39 = and i32 %17, 1048320
  %or.i40 = or i32 %shl.i39, %and1.i38
  %and2.i41 = shl i32 %16, 12
  %shl3.i42 = and i32 %and2.i41, -1048576
  %or4.i43 = or i32 %or.i40, %shl3.i42
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %or4.i43)
  %cmp19 = icmp eq i32 %1, %or4.i43
  br i1 %cmp19, label %land.lhs.true14.return_crit_edge, label %land.lhs.true14.if.end21_crit_edge

land.lhs.true14.if.end21_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

land.lhs.true14.return_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end21:                                         ; preds = %land.lhs.true14.if.end21_crit_edge, %if.end12.if.end21_crit_edge
  br label %return

return:                                           ; preds = %if.end21, %land.lhs.true14.return_crit_edge, %land.lhs.true.return_crit_edge, %lor.lhs.false3.return_crit_edge, %entry.return_crit_edge, %entry.return_crit_edge44
  %retval.0 = phi i1 [ false, %if.end21 ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge44 ], [ true, %lor.lhs.false3.return_crit_edge ], [ true, %land.lhs.true.return_crit_edge ], [ true, %land.lhs.true14.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_getfsmap_datadev_rmapbt(ptr noundef %tp, ptr nocapture noundef readonly %keys, ptr noundef %info) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %missing_owner = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %missing_owner to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1, ptr %missing_owner, align 8
  %call = tail call fastcc i32 @__xfs_getfsmap_datadev(ptr noundef %tp, ptr noundef %keys, ptr noundef %info, ptr noundef nonnull @xfs_getfsmap_datadev_rmapbt_query, ptr noundef null)
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_getfsmap_datadev_bnobt(ptr noundef %tp, ptr nocapture noundef readonly %keys, ptr noundef %info) #5 align 64 {
entry:
  %akeys = alloca [2 x %struct.xfs_alloc_rec_incore], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %akeys) #11
  %missing_owner = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 5
  %0 = call ptr @memset(ptr %akeys, i32 255, i32 16)
  %1 = ptrtoint ptr %missing_owner to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 2, ptr %missing_owner, align 8
  %call = call fastcc i32 @__xfs_getfsmap_datadev(ptr noundef %tp, ptr noundef %keys, ptr noundef %info, ptr noundef nonnull @xfs_getfsmap_datadev_bnobt_query, ptr noundef nonnull %akeys)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %akeys) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_getfsmap_logdev(ptr noundef %tp, ptr nocapture noundef readonly %keys, ptr noundef %info) #5 align 64 {
entry:
  %rmap = alloca %struct.xfs_rmap_irec, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rmap) #11
  %2 = call ptr @memset(ptr %rmap, i32 255, i32 32)
  %fmr_physical = getelementptr inbounds %struct.xfs_fsmap, ptr %keys, i32 0, i32 2
  %3 = ptrtoint ptr %fmr_physical to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %fmr_physical, align 8
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 28
  %5 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %6 to i64
  %shr = lshr i64 %4, %sh_prom
  %conv1 = trunc i64 %shr to i32
  %low = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 7
  %7 = ptrtoint ptr %low to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv1, ptr %low, align 8
  %fmr_offset = getelementptr inbounds %struct.xfs_fsmap, ptr %keys, i32 0, i32 4
  %8 = ptrtoint ptr %fmr_offset to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %fmr_offset, align 8
  %10 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom5 = zext i8 %10 to i64
  %shr6 = lshr i64 %9, %sh_prom5
  %rm_offset = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 7, i32 3
  %11 = ptrtoint ptr %rm_offset to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %shr6, ptr %rm_offset, align 8
  %fmr_flags.i = getelementptr inbounds %struct.xfs_fsmap, ptr %keys, i32 0, i32 1
  %12 = ptrtoint ptr %fmr_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmr_flags.i, align 4
  %and.i = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %fmr_owner.i = getelementptr inbounds %struct.xfs_fsmap, ptr %keys, i32 0, i32 3
  %14 = ptrtoint ptr %fmr_owner.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %fmr_owner.i, align 8
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.5)
  switch i64 %15, label %if.end.i.cleanup_crit_edge [
    i64 0, label %if.end.i.if.end_crit_edge
    i64 -1, label %if.end.i.if.end_crit_edge94
    i64 1, label %sw.bb3.i
    i64 2, label %sw.bb5.i
    i64 377957122049, label %sw.bb7.i
    i64 377957122050, label %sw.bb9.i
    i64 377957122051, label %sw.bb11.i
    i64 377957122052, label %sw.bb13.i
    i64 377957122053, label %sw.bb15.i
    i64 377957122054, label %sw.bb17.i
    i64 377957122055, label %sw.bb19.i
  ]

if.end.i.if.end_crit_edge94:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sw.bb9.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sw.bb13.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sw.bb15.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sw.bb17.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sw.bb19.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %sw.bb19.i, %sw.bb17.i, %sw.bb15.i, %sw.bb13.i, %sw.bb11.i, %sw.bb9.i, %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %if.end.i.if.end_crit_edge, %if.end.i.if.end_crit_edge94, %entry.if.end_crit_edge
  %.sink.i = phi i64 [ -1, %sw.bb3.i ], [ -2, %sw.bb5.i ], [ -3, %sw.bb7.i ], [ -4, %sw.bb9.i ], [ -5, %sw.bb11.i ], [ -6, %sw.bb13.i ], [ -7, %sw.bb15.i ], [ -8, %sw.bb17.i ], [ -9, %sw.bb19.i ], [ %15, %entry.if.end_crit_edge ], [ 0, %if.end.i.if.end_crit_edge ], [ 0, %if.end.i.if.end_crit_edge94 ]
  %rm_owner2.i = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %rm_owner2.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %.sink.i, ptr %rm_owner2.i, align 8
  %rm_blockcount = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %rm_blockcount, align 4
  %rm_flags.i = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 7, i32 4
  %18 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %rm_flags.i, align 8
  %19 = ptrtoint ptr %fmr_flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fmr_flags.i, align 4
  %and.i70 = lshr i32 %20, 1
  %and.lobit.i = and i32 %and.i70, 1
  store i32 %and.lobit.i, ptr %rm_flags.i, align 8
  %21 = load i32, ptr %fmr_flags.i, align 4
  %and3.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.if.end8.i_crit_edge, label %if.then5.i

if.end.if.end8.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %or7.i = or i32 %and.lobit.i, 2
  %22 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or7.i, ptr %rm_flags.i, align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.if.end8.i_crit_edge
  %23 = ptrtoint ptr %fmr_flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fmr_flags.i, align 4
  %and10.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end8.i.xfs_getfsmap_set_irec_flags.exit_crit_edge, label %if.then12.i

if.end8.i.xfs_getfsmap_set_irec_flags.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_getfsmap_set_irec_flags.exit

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rm_flags.i, align 8
  %or14.i = or i32 %26, 4
  store i32 %or14.i, ptr %rm_flags.i, align 8
  br label %xfs_getfsmap_set_irec_flags.exit

xfs_getfsmap_set_irec_flags.exit:                 ; preds = %if.then12.i, %if.end8.i.xfs_getfsmap_set_irec_flags.exit_crit_edge
  %high = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 8
  %fmr_flags.i71 = getelementptr %struct.xfs_fsmap, ptr %keys, i32 1, i32 1
  %27 = ptrtoint ptr %fmr_flags.i71 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fmr_flags.i71, align 4
  %and.i72 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i72)
  %tobool.not.i73 = icmp eq i32 %and.i72, 0
  br i1 %tobool.not.i73, label %xfs_getfsmap_set_irec_flags.exit.if.end15_crit_edge, label %if.end.i75

xfs_getfsmap_set_irec_flags.exit.if.end15_crit_edge: ; preds = %xfs_getfsmap_set_irec_flags.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end.i75:                                       ; preds = %xfs_getfsmap_set_irec_flags.exit
  %fmr_owner.i74 = getelementptr %struct.xfs_fsmap, ptr %keys, i32 1, i32 3
  %29 = ptrtoint ptr %fmr_owner.i74 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %fmr_owner.i74, align 8
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.6)
  switch i64 %30, label %if.end.i75.cleanup_crit_edge [
    i64 0, label %if.end.i75.if.end15_crit_edge
    i64 -1, label %if.end.i75.if.end15_crit_edge95
    i64 1, label %if.end.i75.if.end15_crit_edge96
    i64 2, label %if.end.i75.if.end15_crit_edge97
    i64 377957122049, label %if.end.i75.if.end15_crit_edge98
    i64 377957122050, label %if.end.i75.if.end15_crit_edge99
    i64 377957122051, label %if.end.i75.if.end15_crit_edge100
    i64 377957122052, label %if.end.i75.if.end15_crit_edge101
    i64 377957122053, label %if.end.i75.if.end15_crit_edge102
    i64 377957122054, label %if.end.i75.if.end15_crit_edge103
    i64 377957122055, label %if.end.i75.if.end15_crit_edge104
  ]

if.end.i75.if.end15_crit_edge104:                 ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end.i75.if.end15_crit_edge103:                 ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end.i75.if.end15_crit_edge102:                 ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end.i75.if.end15_crit_edge101:                 ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end.i75.if.end15_crit_edge100:                 ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end.i75.if.end15_crit_edge99:                  ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end.i75.if.end15_crit_edge98:                  ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end.i75.if.end15_crit_edge97:                  ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end.i75.if.end15_crit_edge96:                  ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end.i75.if.end15_crit_edge95:                  ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end.i75.if.end15_crit_edge:                    ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end.i75.cleanup_crit_edge:                     ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end.i75.if.end15_crit_edge, %if.end.i75.if.end15_crit_edge95, %if.end.i75.if.end15_crit_edge96, %if.end.i75.if.end15_crit_edge97, %if.end.i75.if.end15_crit_edge98, %if.end.i75.if.end15_crit_edge99, %if.end.i75.if.end15_crit_edge100, %if.end.i75.if.end15_crit_edge101, %if.end.i75.if.end15_crit_edge102, %if.end.i75.if.end15_crit_edge103, %if.end.i75.if.end15_crit_edge104, %xfs_getfsmap_set_irec_flags.exit.if.end15_crit_edge
  %rm_owner2.i86 = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 8, i32 2
  %31 = ptrtoint ptr %high to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %high, align 8
  %rm_blockcount22 = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 8, i32 1
  %32 = call ptr @memset(ptr %rm_owner2.i86, i32 255, i32 16)
  %33 = ptrtoint ptr %rm_blockcount22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %rm_blockcount22, align 4
  %rm_flags = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 8, i32 4
  %34 = ptrtoint ptr %rm_flags to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 7, ptr %rm_flags, align 8
  %missing_owner = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 5
  %35 = ptrtoint ptr %missing_owner to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 1, ptr %missing_owner, align 8
  %dev = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 6
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dev, align 8
  tail call fastcc void @trace_xfs_fsmap_low_key(ptr noundef %1, i32 noundef %37, i32 noundef -1, ptr noundef %low)
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dev, align 8
  tail call fastcc void @trace_xfs_fsmap_high_key(ptr noundef %1, i32 noundef %39, i32 noundef -1, ptr noundef %high)
  %40 = ptrtoint ptr %fmr_physical to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %fmr_physical, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %cmp.not = icmp eq i64 %41, 0
  br i1 %cmp.not, label %if.end31, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end31:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %rmap to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %rmap, align 8
  %sb_logblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 14
  %43 = ptrtoint ptr %sb_logblocks to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sb_logblocks, align 32
  %rm_blockcount33 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rmap, i32 0, i32 1
  %45 = ptrtoint ptr %rm_blockcount33 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %rm_blockcount33, align 4
  %rm_owner34 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rmap, i32 0, i32 2
  %46 = ptrtoint ptr %rm_owner34 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 -4, ptr %rm_owner34, align 8
  %rm_offset35 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rmap, i32 0, i32 3
  %47 = ptrtoint ptr %rm_offset35 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 0, ptr %rm_offset35, align 8
  %rm_flags36 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rmap, i32 0, i32 4
  %48 = ptrtoint ptr %rm_flags36 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %rm_flags36, align 8
  %call37 = call fastcc i32 @xfs_getfsmap_helper(ptr noundef %tp, ptr noundef %info, ptr noundef nonnull %rmap, i64 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end15.cleanup_crit_edge, %if.end.i75.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %if.end31 ], [ 0, %if.end15.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end.i75.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rmap) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_getfsmap_rtdev_rtbitmap(ptr noundef %tp, ptr nocapture noundef readonly %keys, ptr noundef %info) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %missing_owner = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %missing_owner to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 2, ptr %missing_owner, align 8
  %call = tail call fastcc i32 @__xfs_getfsmap_rtdev(ptr noundef %tp, ptr noundef %keys, ptr noundef %info)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_getfsmap_dev_compare(ptr nocapture noundef readonly %p1, ptr nocapture noundef readonly %p2) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p1, align 4
  %2 = ptrtoint ptr %p2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p2, align 4
  %sub = sub i32 %1, %3
  ret i32 %sub
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @xfs_getfsmap_check_keys(ptr nocapture noundef readonly %low_key, ptr nocapture noundef readonly %high_key) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %low_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %low_key, align 8
  %2 = ptrtoint ptr %high_key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %high_key, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp4 = icmp ult i32 %1, %3
  br i1 %cmp4, label %if.end.return_crit_edge, label %if.end6

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end6:                                          ; preds = %if.end
  %fmr_physical = getelementptr inbounds %struct.xfs_fsmap, ptr %low_key, i32 0, i32 2
  %4 = ptrtoint ptr %fmr_physical to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %fmr_physical, align 8
  %fmr_physical7 = getelementptr inbounds %struct.xfs_fsmap, ptr %high_key, i32 0, i32 2
  %6 = ptrtoint ptr %fmr_physical7 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %fmr_physical7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp8 = icmp ugt i64 %5, %7
  br i1 %cmp8, label %if.end6.return_crit_edge, label %if.end10

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp13 = icmp ult i64 %5, %7
  br i1 %cmp13, label %if.end10.return_crit_edge, label %if.end15

if.end10.return_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end15:                                         ; preds = %if.end10
  %fmr_owner = getelementptr inbounds %struct.xfs_fsmap, ptr %low_key, i32 0, i32 3
  %8 = ptrtoint ptr %fmr_owner to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %fmr_owner, align 8
  %fmr_owner16 = getelementptr inbounds %struct.xfs_fsmap, ptr %high_key, i32 0, i32 3
  %10 = ptrtoint ptr %fmr_owner16 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %fmr_owner16, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp17 = icmp ugt i64 %9, %11
  br i1 %cmp17, label %if.end15.return_crit_edge, label %if.end19

if.end15.return_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp22 = icmp ult i64 %9, %11
  br i1 %cmp22, label %if.end19.return_crit_edge, label %if.end24

if.end19.return_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %fmr_offset = getelementptr inbounds %struct.xfs_fsmap, ptr %low_key, i32 0, i32 4
  %12 = ptrtoint ptr %fmr_offset to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fmr_offset, align 8
  %fmr_offset25 = getelementptr inbounds %struct.xfs_fsmap, ptr %high_key, i32 0, i32 4
  %14 = ptrtoint ptr %fmr_offset25 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %fmr_offset25, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %15)
  %cmp31 = icmp ult i64 %13, %15
  br label %return

return:                                           ; preds = %if.end24, %if.end19.return_crit_edge, %if.end15.return_crit_edge, %if.end10.return_crit_edge, %if.end6.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %if.end.return_crit_edge ], [ false, %if.end6.return_crit_edge ], [ true, %if.end10.return_crit_edge ], [ false, %if.end15.return_crit_edge ], [ true, %if.end19.return_crit_edge ], [ %cmp31, %if.end24 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc_empty(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__xfs_getfsmap_datadev(ptr noundef %tp, ptr nocapture noundef readonly %keys, ptr noundef %info, ptr nocapture noundef readonly %query_fn, ptr noundef %priv) unnamed_addr #5 align 64 {
entry:
  %bt_cur = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bt_cur) #11
  %2 = ptrtoint ptr %bt_cur to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bt_cur, align 4
  %sb_dblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %sb_dblocks, align 8
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 28
  %5 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %6 to i64
  %shl = shl i64 %4, %sh_prom
  %fmr_physical = getelementptr inbounds %struct.xfs_fsmap, ptr %keys, i32 0, i32 2
  %7 = ptrtoint ptr %fmr_physical to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %fmr_physical, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %shl)
  %cmp.not = icmp ult i64 %8, %shl
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr.i = ashr i64 %8, %sh_prom
  %sb_agblocks.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %sb_agblocks.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sb_agblocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr.i)
  %cmp168.i = icmp ult i64 %shr.i, 4294967296
  br i1 %cmp168.i, label %if.then172.i385, label %if.else178.i386, !prof !30

if.then172.i385:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv173.i = trunc i64 %shr.i to i32
  %conv173.i.frozen = freeze i32 %conv173.i
  %.frozen = freeze i32 %10
  %div176.i = udiv i32 %conv173.i.frozen, %.frozen
  %conv4679690 = zext i32 %div176.i to i64
  %sb_agblklog680691 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  %11 = ptrtoint ptr %sb_agblklog680691 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sb_agblklog680691, align 4
  %sh_prom7681692 = zext i8 %12 to i64
  %shl8682693 = shl i64 %conv4679690, %sh_prom7681692
  %13 = mul i32 %div176.i, %.frozen
  %rem174.i.decomposed = sub i32 %conv173.i.frozen, %13
  br label %xfs_daddr_to_agbno.exit

if.else178.i386:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %10, i64 %shr.i) #14
  %asmresult1.i.i = extractvalue { i64, i64 } %14, 1
  %conv4679 = and i64 %asmresult1.i.i, 4294967295
  %sb_agblklog680 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  %15 = ptrtoint ptr %sb_agblklog680 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sb_agblklog680, align 4
  %sh_prom7681 = zext i8 %16 to i64
  %shl8682 = shl i64 %conv4679, %sh_prom7681
  %asmresult.i266.i = extractvalue { i64, i64 } %14, 0
  %shr.i.i = lshr i64 %asmresult.i266.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %xfs_daddr_to_agbno.exit

xfs_daddr_to_agbno.exit:                          ; preds = %if.else178.i386, %if.then172.i385
  %shl8687 = phi i64 [ %shl8682693, %if.then172.i385 ], [ %shl8682, %if.else178.i386 ]
  %sh_prom7685 = phi i64 [ %sh_prom7681692, %if.then172.i385 ], [ %sh_prom7681, %if.else178.i386 ]
  %17 = phi i8 [ %12, %if.then172.i385 ], [ %16, %if.else178.i386 ]
  %sb_agblklog683 = phi ptr [ %sb_agblklog680691, %if.then172.i385 ], [ %sb_agblklog680, %if.else178.i386 ]
  %__rem.0.i = phi i32 [ %rem174.i.decomposed, %if.then172.i385 ], [ %conv.i.i, %if.else178.i386 ]
  %conv12 = zext i32 %__rem.0.i to i64
  %or = or i64 %shl8687, %conv12
  %sub = add i64 %shl, -1
  %fmr_physical14 = getelementptr %struct.xfs_fsmap, ptr %keys, i32 1, i32 2
  %18 = ptrtoint ptr %fmr_physical14 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %fmr_physical14, align 8
  %20 = tail call i64 @llvm.umin.i64(i64 %sub, i64 %19)
  %shr.i389 = ashr i64 %20, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr.i389)
  %cmp168.i499 = icmp ult i64 %shr.i389, 4294967296
  br i1 %cmp168.i499, label %if.then172.i627, label %if.else178.i631, !prof !30

if.then172.i627:                                  ; preds = %xfs_daddr_to_agbno.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv173.i501 = trunc i64 %shr.i389 to i32
  %conv173.i501.frozen = freeze i32 %conv173.i501
  %.frozen743 = freeze i32 %10
  %div176.i502 = udiv i32 %conv173.i501.frozen, %.frozen743
  %21 = mul i32 %div176.i502, %.frozen743
  %rem174.i626.decomposed = sub i32 %conv173.i501.frozen, %21
  br label %xfs_daddr_to_agbno.exit633

if.else178.i631:                                  ; preds = %xfs_daddr_to_agbno.exit
  call void @__sanitizer_cov_trace_pc() #13
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %10, i64 %shr.i389) #14
  %asmresult1.i.i504 = extractvalue { i64, i64 } %22, 1
  %extract.t291.i505 = trunc i64 %asmresult1.i.i504 to i32
  %asmresult.i266.i628 = extractvalue { i64, i64 } %22, 0
  %shr.i.i629 = lshr i64 %asmresult.i266.i628, 32
  %conv.i.i630 = trunc i64 %shr.i.i629 to i32
  br label %xfs_daddr_to_agbno.exit633

xfs_daddr_to_agbno.exit633:                       ; preds = %if.else178.i631, %if.then172.i627
  %conv18.pn.in = phi i32 [ %div176.i502, %if.then172.i627 ], [ %extract.t291.i505, %if.else178.i631 ]
  %__rem.0.i632 = phi i32 [ %rem174.i626.decomposed, %if.then172.i627 ], [ %conv.i.i630, %if.else178.i631 ]
  %conv18.pn = zext i32 %conv18.pn.in to i64
  %shl23701 = shl i64 %conv18.pn, %sh_prom7685
  %conv37 = zext i32 %__rem.0.i632 to i64
  %or38 = or i64 %shl23701, %conv37
  %conv41 = zext i8 %17 to i32
  %notmask.i = shl nsw i32 -1, %conv41
  %sub.i634 = xor i32 %notmask.i, -1
  %23 = trunc i64 %or to i32
  %conv44 = and i32 %23, %sub.i634
  %low = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 7
  %24 = ptrtoint ptr %low to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv44, ptr %low, align 8
  %fmr_offset = getelementptr inbounds %struct.xfs_fsmap, ptr %keys, i32 0, i32 4
  %25 = ptrtoint ptr %fmr_offset to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %fmr_offset, align 8
  %27 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom48 = zext i8 %28 to i64
  %shr = lshr i64 %26, %sh_prom48
  %rm_offset = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 7, i32 3
  %29 = ptrtoint ptr %rm_offset to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %shr, ptr %rm_offset, align 8
  %fmr_flags.i = getelementptr inbounds %struct.xfs_fsmap, ptr %keys, i32 0, i32 1
  %30 = ptrtoint ptr %fmr_flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fmr_flags.i, align 4
  %and.i = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i635 = icmp eq i32 %and.i, 0
  %fmr_owner.i = getelementptr inbounds %struct.xfs_fsmap, ptr %keys, i32 0, i32 3
  %32 = ptrtoint ptr %fmr_owner.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %fmr_owner.i, align 8
  br i1 %tobool.not.i635, label %xfs_daddr_to_agbno.exit633.if.end54_crit_edge, label %if.end.i

xfs_daddr_to_agbno.exit633.if.end54_crit_edge:    ; preds = %xfs_daddr_to_agbno.exit633
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.end.i:                                         ; preds = %xfs_daddr_to_agbno.exit633
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.7)
  switch i64 %33, label %if.end.i.cleanup_crit_edge [
    i64 0, label %if.end.i.if.end54_crit_edge
    i64 -1, label %if.end.i.if.end54_crit_edge744
    i64 1, label %sw.bb3.i
    i64 2, label %sw.bb5.i
    i64 377957122049, label %sw.bb7.i
    i64 377957122050, label %sw.bb9.i
    i64 377957122051, label %sw.bb11.i
    i64 377957122052, label %sw.bb13.i
    i64 377957122053, label %sw.bb15.i
    i64 377957122054, label %sw.bb17.i
    i64 377957122055, label %sw.bb19.i
  ]

if.end.i.if.end54_crit_edge744:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.end.i.if.end54_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

sw.bb9.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

sw.bb13.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

sw.bb15.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

sw.bb17.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

sw.bb19.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.end54:                                         ; preds = %sw.bb19.i, %sw.bb17.i, %sw.bb15.i, %sw.bb13.i, %sw.bb11.i, %sw.bb9.i, %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %if.end.i.if.end54_crit_edge, %if.end.i.if.end54_crit_edge744, %xfs_daddr_to_agbno.exit633.if.end54_crit_edge
  %.sink.i = phi i64 [ -1, %sw.bb3.i ], [ -2, %sw.bb5.i ], [ -3, %sw.bb7.i ], [ -4, %sw.bb9.i ], [ -5, %sw.bb11.i ], [ -6, %sw.bb13.i ], [ -7, %sw.bb15.i ], [ -8, %sw.bb17.i ], [ -9, %sw.bb19.i ], [ %33, %xfs_daddr_to_agbno.exit633.if.end54_crit_edge ], [ 0, %if.end.i.if.end54_crit_edge ], [ 0, %if.end.i.if.end54_crit_edge744 ]
  %rm_owner2.i = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 7, i32 2
  %34 = ptrtoint ptr %rm_owner2.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %.sink.i, ptr %rm_owner2.i, align 8
  %rm_blockcount = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 7, i32 1
  %35 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %rm_blockcount, align 4
  %rm_flags.i = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 7, i32 4
  %36 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %rm_flags.i, align 8
  %37 = ptrtoint ptr %fmr_flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fmr_flags.i, align 4
  %and.i637 = lshr i32 %38, 1
  %and.lobit.i = and i32 %and.i637, 1
  store i32 %and.lobit.i, ptr %rm_flags.i, align 8
  %39 = load i32, ptr %fmr_flags.i, align 4
  %and3.i = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end54.if.end8.i_crit_edge, label %if.then5.i

if.end54.if.end8.i_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %or7.i = or i32 %and.lobit.i, 2
  %40 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or7.i, ptr %rm_flags.i, align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end54.if.end8.i_crit_edge
  %41 = ptrtoint ptr %fmr_flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fmr_flags.i, align 4
  %and10.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end8.i.xfs_getfsmap_set_irec_flags.exit_crit_edge, label %if.then12.i

if.end8.i.xfs_getfsmap_set_irec_flags.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_getfsmap_set_irec_flags.exit

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rm_flags.i, align 8
  %or14.i = or i32 %44, 4
  store i32 %or14.i, ptr %rm_flags.i, align 8
  br label %xfs_getfsmap_set_irec_flags.exit

xfs_getfsmap_set_irec_flags.exit:                 ; preds = %if.then12.i, %if.end8.i.xfs_getfsmap_set_irec_flags.exit_crit_edge
  %high = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 8
  %45 = ptrtoint ptr %high to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %high, align 8
  %rm_owner = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 8, i32 2
  %rm_offset61 = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 8, i32 3
  %rm_blockcount63 = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 8, i32 1
  %46 = call ptr @memset(ptr %rm_owner, i32 255, i32 16)
  %47 = ptrtoint ptr %rm_blockcount63 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %rm_blockcount63, align 4
  %rm_flags = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 8, i32 4
  %48 = ptrtoint ptr %rm_flags to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 7, ptr %rm_flags, align 8
  %49 = ptrtoint ptr %sb_agblklog683 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %sb_agblklog683, align 4
  %sh_prom68 = zext i8 %50 to i64
  %shr69 = lshr i64 %or, %sh_prom68
  %conv70 = trunc i64 %shr69 to i32
  %shr75 = lshr i64 %or38, %sh_prom68
  %conv76 = trunc i64 %shr75 to i32
  %call77 = tail call ptr @xfs_perag_get(ptr noundef %1, i32 noundef %conv70) #11
  %dev = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 6
  %last = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 9
  %cmp78.not712 = icmp eq ptr %call77, null
  br i1 %cmp78.not712, label %xfs_getfsmap_set_irec_flags.exit.for.end_crit_edge, label %for.body.lr.ph

xfs_getfsmap_set_irec_flags.exit.for.end_crit_edge: ; preds = %xfs_getfsmap_set_irec_flags.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %xfs_getfsmap_set_irec_flags.exit
  %pag80 = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 3
  %51 = trunc i64 %or38 to i32
  %fmr_offset94 = getelementptr %struct.xfs_fsmap, ptr %keys, i32 1, i32 4
  %fmr_flags.i640 = getelementptr %struct.xfs_fsmap, ptr %keys, i32 1, i32 1
  %fmr_owner.i643 = getelementptr %struct.xfs_fsmap, ptr %keys, i32 1, i32 3
  %agf_bp = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %xfs_perag_next.exit.for.body_crit_edge, %for.body.lr.ph
  %pag.0714 = phi ptr [ %call77, %for.body.lr.ph ], [ %call.i, %xfs_perag_next.exit.for.body_crit_edge ]
  %start_ag.0713 = phi i32 [ %conv70, %for.body.lr.ph ], [ %add.i673, %xfs_perag_next.exit.for.body_crit_edge ]
  %52 = ptrtoint ptr %pag80 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %pag.0714, ptr %pag80, align 4
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag.0714, i32 0, i32 1
  %53 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pag_agno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %conv76)
  %cmp81 = icmp eq i32 %54, %conv76
  br i1 %cmp81, label %if.then83, label %for.body.if.end109_crit_edge

for.body.if.end109_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.then83:                                        ; preds = %for.body
  %55 = ptrtoint ptr %sb_agblklog683 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %sb_agblklog683, align 4
  %conv86 = zext i8 %56 to i32
  %notmask.i638 = shl nsw i32 -1, %conv86
  %sub.i639 = xor i32 %notmask.i638, -1
  %conv90 = and i32 %sub.i639, %51
  %57 = ptrtoint ptr %high to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv90, ptr %high, align 8
  %58 = ptrtoint ptr %fmr_offset94 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %fmr_offset94, align 8
  %60 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom97 = zext i8 %61 to i64
  %shr98 = lshr i64 %59, %sh_prom97
  %62 = ptrtoint ptr %rm_offset61 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %shr98, ptr %rm_offset61, align 8
  %63 = ptrtoint ptr %fmr_flags.i640 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fmr_flags.i640, align 4
  %and.i641 = and i32 %64, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i641)
  %tobool.not.i642 = icmp eq i32 %and.i641, 0
  %65 = ptrtoint ptr %fmr_owner.i643 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %fmr_owner.i643, align 8
  br i1 %tobool.not.i642, label %if.then83.if.end106_crit_edge, label %if.end.i644

if.then83.if.end106_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

if.end.i644:                                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.8)
  switch i64 %66, label %if.end.i644.for.end_crit_edge [
    i64 0, label %if.end.i644.if.end106_crit_edge
    i64 -1, label %if.end.i644.if.end106_crit_edge745
    i64 1, label %sw.bb3.i645
    i64 2, label %sw.bb5.i646
    i64 377957122049, label %sw.bb7.i647
    i64 377957122050, label %sw.bb9.i648
    i64 377957122051, label %sw.bb11.i649
    i64 377957122052, label %sw.bb13.i650
    i64 377957122053, label %sw.bb15.i651
    i64 377957122054, label %sw.bb17.i652
    i64 377957122055, label %sw.bb19.i653
  ]

if.end.i644.if.end106_crit_edge745:               ; preds = %if.end.i644
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

if.end.i644.if.end106_crit_edge:                  ; preds = %if.end.i644
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

if.end.i644.for.end_crit_edge:                    ; preds = %if.end.i644
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

sw.bb3.i645:                                      ; preds = %if.end.i644
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

sw.bb5.i646:                                      ; preds = %if.end.i644
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

sw.bb7.i647:                                      ; preds = %if.end.i644
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

sw.bb9.i648:                                      ; preds = %if.end.i644
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

sw.bb11.i649:                                     ; preds = %if.end.i644
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

sw.bb13.i650:                                     ; preds = %if.end.i644
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

sw.bb15.i651:                                     ; preds = %if.end.i644
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

sw.bb17.i652:                                     ; preds = %if.end.i644
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

sw.bb19.i653:                                     ; preds = %if.end.i644
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

if.end106:                                        ; preds = %sw.bb19.i653, %sw.bb17.i652, %sw.bb15.i651, %sw.bb13.i650, %sw.bb11.i649, %sw.bb9.i648, %sw.bb7.i647, %sw.bb5.i646, %sw.bb3.i645, %if.end.i644.if.end106_crit_edge, %if.end.i644.if.end106_crit_edge745, %if.then83.if.end106_crit_edge
  %.sink.i654 = phi i64 [ -1, %sw.bb3.i645 ], [ -2, %sw.bb5.i646 ], [ -3, %sw.bb7.i647 ], [ -4, %sw.bb9.i648 ], [ -5, %sw.bb11.i649 ], [ -6, %sw.bb13.i650 ], [ -7, %sw.bb15.i651 ], [ -8, %sw.bb17.i652 ], [ -9, %sw.bb19.i653 ], [ %66, %if.then83.if.end106_crit_edge ], [ 0, %if.end.i644.if.end106_crit_edge ], [ 0, %if.end.i644.if.end106_crit_edge745 ]
  %67 = ptrtoint ptr %rm_owner to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %.sink.i654, ptr %rm_owner, align 8
  %68 = ptrtoint ptr %rm_flags to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %rm_flags, align 8
  %69 = ptrtoint ptr %fmr_flags.i640 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fmr_flags.i640, align 4
  %and.i661 = lshr i32 %70, 1
  %and.lobit.i662 = and i32 %and.i661, 1
  store i32 %and.lobit.i662, ptr %rm_flags, align 8
  %71 = load i32, ptr %fmr_flags.i640, align 4
  %and3.i663 = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i663)
  %tobool4.not.i664 = icmp eq i32 %and3.i663, 0
  br i1 %tobool4.not.i664, label %if.end106.if.end8.i669_crit_edge, label %if.then5.i666

if.end106.if.end8.i669_crit_edge:                 ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i669

if.then5.i666:                                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  %or7.i665 = or i32 %and.lobit.i662, 2
  %72 = ptrtoint ptr %rm_flags to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or7.i665, ptr %rm_flags, align 8
  br label %if.end8.i669

if.end8.i669:                                     ; preds = %if.then5.i666, %if.end106.if.end8.i669_crit_edge
  %73 = ptrtoint ptr %fmr_flags.i640 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fmr_flags.i640, align 4
  %and10.i667 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i667)
  %tobool11.not.i668 = icmp eq i32 %and10.i667, 0
  br i1 %tobool11.not.i668, label %if.end8.i669.if.end109_crit_edge, label %if.then12.i671

if.end8.i669.if.end109_crit_edge:                 ; preds = %if.end8.i669
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.then12.i671:                                   ; preds = %if.end8.i669
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rm_flags, align 8
  %or14.i670 = or i32 %76, 4
  store i32 %or14.i670, ptr %rm_flags, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.then12.i671, %if.end8.i669.if.end109_crit_edge, %for.body.if.end109_crit_edge
  %77 = ptrtoint ptr %bt_cur to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bt_cur, align 4
  %tobool110.not = icmp eq ptr %78, null
  br i1 %tobool110.not, label %if.end109.if.end113_crit_edge, label %if.then111

if.end109.if.end113_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

if.then111:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  call void @xfs_btree_del_cursor(ptr noundef nonnull %78, i32 noundef 0) #11
  %79 = ptrtoint ptr %bt_cur to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %bt_cur, align 4
  %80 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %agf_bp, align 8
  call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %81) #11
  %82 = ptrtoint ptr %agf_bp to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %agf_bp, align 8
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.end109.if.end113_crit_edge
  %83 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pag_agno, align 4
  %call116 = call i32 @xfs_alloc_read_agf(ptr noundef %1, ptr noundef %tp, i32 noundef %84, i32 noundef 0, ptr noundef %agf_bp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end119, label %if.end113.for.end_crit_edge

if.end113.for.end_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end119:                                        ; preds = %if.end113
  %85 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dev, align 8
  %87 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pag_agno, align 4
  call fastcc void @trace_xfs_fsmap_low_key(ptr noundef %1, i32 noundef %86, i32 noundef %88, ptr noundef %low)
  %89 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dev, align 8
  %91 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pag_agno, align 4
  call fastcc void @trace_xfs_fsmap_high_key(ptr noundef %1, i32 noundef %90, i32 noundef %92, ptr noundef %high)
  %call125 = call i32 %query_fn(ptr noundef %tp, ptr noundef %info, ptr noundef nonnull %bt_cur, ptr noundef %priv) #11, !callees !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end128, label %if.end119.for.end_crit_edge

if.end119.for.end_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end128:                                        ; preds = %if.end119
  %93 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pag_agno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %start_ag.0713)
  %cmp130 = icmp eq i32 %94, %start_ag.0713
  br i1 %cmp130, label %if.then132, label %if.end128.if.end141_crit_edge

if.end128.if.end141_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end141

if.then132:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %low to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %low, align 8
  %96 = call ptr @memset(ptr %rm_owner2.i, i32 0, i32 20)
  br label %if.end141

if.end141:                                        ; preds = %if.then132, %if.end128.if.end141_crit_edge
  %97 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pag_agno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %conv76)
  %cmp143 = icmp eq i32 %98, %conv76
  br i1 %cmp143, label %if.then145, label %if.end141.if.end150_crit_edge

if.end141.if.end150_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end150

if.then145:                                       ; preds = %if.end141
  %99 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %last, align 8
  %call146 = call i32 %query_fn(ptr noundef %tp, ptr noundef %info, ptr noundef nonnull %bt_cur, ptr noundef %priv) #11, !callees !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.then145.if.end150_crit_edge, label %if.then145.for.end_crit_edge

if.then145.for.end_crit_edge:                     ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then145.if.end150_crit_edge:                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end150

if.end150:                                        ; preds = %if.then145.if.end150_crit_edge, %if.end141.if.end150_crit_edge
  %100 = ptrtoint ptr %pag80 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %pag80, align 4
  %101 = ptrtoint ptr %pag.0714 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pag.0714, align 4
  %103 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pag_agno, align 4
  %add.i673 = add i32 %104, 1
  call void @xfs_perag_put(ptr noundef nonnull %pag.0714) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i673, i32 %conv76)
  %cmp.i674 = icmp ugt i32 %add.i673, %conv76
  br i1 %cmp.i674, label %if.end150.for.end_crit_edge, label %xfs_perag_next.exit

if.end150.for.end_crit_edge:                      ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

xfs_perag_next.exit:                              ; preds = %if.end150
  %call.i = call ptr @xfs_perag_get(ptr noundef %102, i32 noundef %add.i673) #11
  %cmp78.not = icmp eq ptr %call.i, null
  br i1 %cmp78.not, label %xfs_perag_next.exit.for.end_crit_edge, label %xfs_perag_next.exit.for.body_crit_edge

xfs_perag_next.exit.for.body_crit_edge:           ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

xfs_perag_next.exit.for.end_crit_edge:            ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %xfs_perag_next.exit.for.end_crit_edge, %if.end150.for.end_crit_edge, %if.then145.for.end_crit_edge, %if.end119.for.end_crit_edge, %if.end113.for.end_crit_edge, %if.end.i644.for.end_crit_edge, %xfs_getfsmap_set_irec_flags.exit.for.end_crit_edge
  %pag.0.lcssa = phi ptr [ null, %xfs_getfsmap_set_irec_flags.exit.for.end_crit_edge ], [ null, %if.end150.for.end_crit_edge ], [ %pag.0714, %if.end.i644.for.end_crit_edge ], [ %pag.0714, %if.then145.for.end_crit_edge ], [ %pag.0714, %if.end119.for.end_crit_edge ], [ %pag.0714, %if.end113.for.end_crit_edge ], [ null, %xfs_perag_next.exit.for.end_crit_edge ]
  %cmp78.not.lcssa = phi i1 [ true, %xfs_getfsmap_set_irec_flags.exit.for.end_crit_edge ], [ true, %if.end150.for.end_crit_edge ], [ false, %if.end.i644.for.end_crit_edge ], [ false, %if.then145.for.end_crit_edge ], [ false, %if.end119.for.end_crit_edge ], [ false, %if.end113.for.end_crit_edge ], [ true, %xfs_perag_next.exit.for.end_crit_edge ]
  %error.2 = phi i32 [ 0, %xfs_getfsmap_set_irec_flags.exit.for.end_crit_edge ], [ 0, %if.end150.for.end_crit_edge ], [ -22, %if.end.i644.for.end_crit_edge ], [ %call146, %if.then145.for.end_crit_edge ], [ %call125, %if.end119.for.end_crit_edge ], [ %call116, %if.end113.for.end_crit_edge ], [ 0, %xfs_perag_next.exit.for.end_crit_edge ]
  %105 = ptrtoint ptr %bt_cur to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %bt_cur, align 4
  %tobool153.not = icmp eq ptr %106, null
  br i1 %tobool153.not, label %for.end.if.end158_crit_edge, label %if.then154

for.end.if.end158_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158

if.then154:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %error.2.lobit = lshr i32 %error.2, 31
  call void @xfs_btree_del_cursor(ptr noundef nonnull %106, i32 noundef %error.2.lobit) #11
  br label %if.end158

if.end158:                                        ; preds = %if.then154, %for.end.if.end158_crit_edge
  %agf_bp159 = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 2
  %107 = ptrtoint ptr %agf_bp159 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %agf_bp159, align 8
  %tobool160.not = icmp eq ptr %108, null
  br i1 %tobool160.not, label %if.end158.if.end164_crit_edge, label %if.then161

if.end158.if.end164_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

if.then161:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef nonnull %108) #11
  %109 = ptrtoint ptr %agf_bp159 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %agf_bp159, align 8
  br label %if.end164

if.end164:                                        ; preds = %if.then161, %if.end158.if.end164_crit_edge
  %pag165 = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 3
  %110 = ptrtoint ptr %pag165 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pag165, align 4
  %tobool166.not = icmp eq ptr %111, null
  br i1 %tobool166.not, label %if.else, label %if.then167

if.then167:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  call void @xfs_perag_put(ptr noundef nonnull %111) #11
  %112 = ptrtoint ptr %pag165 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %pag165, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end164
  br i1 %cmp78.not.lcssa, label %if.else.cleanup_crit_edge, label %if.then171

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then171:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call void @xfs_perag_put(ptr noundef nonnull %pag.0.lcssa) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then171, %if.else.cleanup_crit_edge, %if.then167, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %error.2, %if.else.cleanup_crit_edge ], [ %error.2, %if.then171 ], [ %error.2, %if.then167 ], [ -22, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bt_cur) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_getfsmap_datadev_rmapbt_query(ptr noundef %tp, ptr noundef %info, ptr nocapture noundef %curpp, ptr nocapture noundef readnone %priv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %last = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 9
  %0 = ptrtoint ptr %last to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %last, align 8, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %curpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curpp, align 4
  %high = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 8
  %call = tail call i32 @xfs_getfsmap_datadev_helper(ptr noundef %3, ptr noundef %high, ptr noundef %info)
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %4 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t_mountp, align 4
  %agf_bp = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %agf_bp, align 8
  %pag = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 3
  %8 = ptrtoint ptr %pag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pag, align 4
  %call1 = tail call ptr @xfs_rmapbt_init_cursor(ptr noundef %5, ptr noundef %tp, ptr noundef %7, ptr noundef %9) #11
  %10 = ptrtoint ptr %curpp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1, ptr %curpp, align 4
  %low = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 7
  %high2 = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 8
  %call3 = tail call i32 @xfs_rmap_query_range(ptr noundef %call1, ptr noundef %low, ptr noundef %high2, ptr noundef nonnull @xfs_getfsmap_datadev_helper, ptr noundef %info) #11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_perag_get(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_del_cursor(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_read_agf(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_fsmap_low_key(ptr noundef %mp, i32 noundef %keydev, i32 noundef %agno, ptr noundef %rmap) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_fsmap_low_key, i32 0, i32 1), ptr blockaddress(@trace_xfs_fsmap_low_key, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !33

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !30

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !34
  %call42 = tail call i32 @__traceiter_xfs_fsmap_low_key(ptr noundef null, ptr noundef %mp, i32 noundef %keydev, i32 noundef %agno, ptr noundef %rmap) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !35
  %13 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !30

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_fsmap_low_key, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_fsmap_low_key, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_fsmap_low_key.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_fsmap_low_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 3474, ptr noundef nonnull @.str.1) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !37
  %31 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_fsmap_high_key(ptr noundef %mp, i32 noundef %keydev, i32 noundef %agno, ptr noundef %rmap) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_fsmap_high_key, i32 0, i32 1), ptr blockaddress(@trace_xfs_fsmap_high_key, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !33

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !30

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !38
  %call42 = tail call i32 @__traceiter_xfs_fsmap_high_key(ptr noundef null, ptr noundef %mp, i32 noundef %keydev, i32 noundef %agno, ptr noundef %rmap) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !39
  %13 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !30

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_fsmap_high_key, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_fsmap_high_key, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_fsmap_high_key.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_fsmap_high_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 3475, ptr noundef nonnull @.str.1) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !37
  %31 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_perag_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_fsmap_low_key(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_fsmap_high_key(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_getfsmap_datadev_helper(ptr nocapture noundef readonly %cur, ptr noundef %rec, ptr noundef %priv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  %2 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pag_agno, align 4
  %conv = zext i32 %6 to i64
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  %7 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sb_agblklog, align 4
  %conv1 = zext i8 %8 to i32
  %sh_prom = zext i8 %8 to i64
  %shl = shl i64 %conv, %sh_prom
  %9 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rec, align 8
  %conv2 = zext i32 %10 to i64
  %or = or i64 %shl, %conv2
  %shr = lshr i64 %or, %sh_prom
  %conv8 = and i64 %shr, 4294967295
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sb_agblocks, align 4
  %conv10 = zext i32 %12 to i64
  %mul = mul nuw i64 %conv8, %conv10
  %notmask.i = shl nsw i32 -1, %conv1
  %sub.i = xor i32 %notmask.i, -1
  %13 = trunc i64 %or to i32
  %conv15 = and i32 %13, %sub.i
  %conv16 = zext i32 %conv15 to i64
  %add = add nuw i64 %mul, %conv16
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 28
  %14 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom18 = zext i8 %15 to i64
  %shl19 = shl i64 %add, %sh_prom18
  %16 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur, align 8
  %call20 = tail call fastcc i32 @xfs_getfsmap_helper(ptr noundef %17, ptr noundef %priv, ptr noundef %rec, i64 noundef %shl19)
  ret i32 %call20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_rmapbt_init_cursor(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rmap_query_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_getfsmap_helper(ptr noundef %tp, ptr noundef %info, ptr noundef %rec, i64 noundef %rec_daddr) unnamed_addr #5 align 64 {
entry:
  %fmr = alloca %struct.xfs_fsmap, align 8
  %shared = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %fmr) #11
  %0 = getelementptr inbounds %struct.xfs_fsmap, ptr %fmr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xfs_fsmap, ptr %fmr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xfs_fsmap, ptr %fmr, i32 0, i32 3
  %3 = getelementptr inbounds %struct.xfs_fsmap, ptr %fmr, i32 0, i32 4
  %4 = getelementptr inbounds %struct.xfs_fsmap, ptr %fmr, i32 0, i32 5
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %5 = call ptr @memset(ptr %fmr, i32 255, i32 40)
  %6 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t_mountp, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %shared) #11
  %8 = ptrtoint ptr %shared to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %shared, align 1, !annotation !40
  %9 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stack.i.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and1.i.i.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %fatal_signal_pending.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

fatal_signal_pending.exit:                        ; preds = %entry
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 116, i32 1
  %17 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %signal.i.i, align 4
  %19 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %fatal_signal_pending.exit.if.end_crit_edge, label %fatal_signal_pending.exit.cleanup_crit_edge

fatal_signal_pending.exit.cleanup_crit_edge:      ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

fatal_signal_pending.exit.if.end_crit_edge:       ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %fatal_signal_pending.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %low = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 7
  %call2 = tail call i32 @xfs_rmap_compare(ptr noundef %rec, ptr noundef %low) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end10

if.then3:                                         ; preds = %if.end
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 1
  %20 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rm_blockcount, align 4
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %7, i32 0, i32 28
  %22 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %m_blkbb_log, align 1
  %conv = zext i8 %23 to i32
  %shl = shl i32 %21, %conv
  %conv4 = zext i32 %shl to i64
  %add = add i64 %conv4, %rec_daddr
  %next_daddr = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 4
  %24 = ptrtoint ptr %next_daddr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %next_daddr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %add)
  %cmp5 = icmp slt i64 %25, %add
  br i1 %cmp5, label %if.then7, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %next_daddr to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %add, ptr %next_daddr, align 8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %27 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info, align 8
  %fmh_count = getelementptr inbounds %struct.xfs_fsmap_head, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %fmh_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fmh_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp11 = icmp eq i32 %30, 0
  br i1 %cmp11, label %if.then13, label %if.end44

if.then13:                                        ; preds = %if.end10
  %fmh_entries = getelementptr inbounds %struct.xfs_fsmap_head, ptr %28, i32 0, i32 3
  %31 = ptrtoint ptr %fmh_entries to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fmh_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp15 = icmp eq i32 %32, -1
  br i1 %cmp15, label %if.then13.cleanup_crit_edge, label %if.end18

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.then13
  %next_daddr19 = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 4
  %33 = ptrtoint ptr %next_daddr19 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %next_daddr19, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %rec_daddr)
  %cmp20 = icmp slt i64 %34, %rec_daddr
  br i1 %cmp20, label %if.then22, label %if.end18.if.end25_crit_edge

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add nuw i32 %32, 1
  %35 = ptrtoint ptr %fmh_entries to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %inc, ptr %fmh_entries, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end18.if.end25_crit_edge
  %last = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 9
  %36 = ptrtoint ptr %last to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %last, align 8, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool26.not = icmp eq i8 %37, 0
  br i1 %tobool26.not, label %if.end28, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end25
  %38 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %info, align 8
  %fmh_entries30 = getelementptr inbounds %struct.xfs_fsmap_head, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %fmh_entries30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fmh_entries30, align 4
  %inc31 = add i32 %41, 1
  store i32 %inc31, ptr %fmh_entries30, align 4
  %rm_blockcount32 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 1
  %42 = ptrtoint ptr %rm_blockcount32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rm_blockcount32, align 4
  %m_blkbb_log33 = getelementptr inbounds %struct.xfs_mount, ptr %7, i32 0, i32 28
  %44 = ptrtoint ptr %m_blkbb_log33 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %m_blkbb_log33, align 1
  %conv34 = zext i8 %45 to i32
  %shl35 = shl i32 %43, %conv34
  %conv36 = zext i32 %shl35 to i64
  %add37 = add i64 %conv36, %rec_daddr
  %46 = ptrtoint ptr %next_daddr19 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %next_daddr19, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %add37)
  %cmp39 = icmp slt i64 %47, %add37
  br i1 %cmp39, label %if.then41, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then41:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %next_daddr19 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %add37, ptr %next_daddr19, align 8
  br label %cleanup

if.end44:                                         ; preds = %if.end10
  %next_daddr45 = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 4
  %49 = ptrtoint ptr %next_daddr45 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %next_daddr45, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %rec_daddr)
  %cmp46 = icmp slt i64 %50, %rec_daddr
  br i1 %cmp46, label %if.then48, label %if.end44.if.end59_crit_edge

if.end44.if.end59_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then48:                                        ; preds = %if.end44
  %fmh_entries50 = getelementptr inbounds %struct.xfs_fsmap_head, ptr %28, i32 0, i32 3
  %51 = ptrtoint ptr %fmh_entries50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fmh_entries50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %30)
  %cmp53.not = icmp ult i32 %52, %30
  br i1 %cmp53.not, label %if.end56, label %if.then48.cleanup_crit_edge

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end56:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 6
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dev, align 8
  %55 = ptrtoint ptr %fmr to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %fmr, align 8
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %50, ptr %1, align 8
  %missing_owner = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 5
  %57 = ptrtoint ptr %missing_owner to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %missing_owner, align 8
  %59 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %2, align 8
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 0, ptr %3, align 8
  %sub = sub i64 %rec_daddr, %50
  %61 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %sub, ptr %4, align 8
  %62 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 16, ptr %0, align 4
  call fastcc void @trace_xfs_getfsmap_mapping(ptr noundef %7, ptr noundef nonnull %fmr) #11
  %fsmap_recs.i = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 1
  %63 = ptrtoint ptr %fsmap_recs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fsmap_recs.i, align 4
  %65 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %info, align 8
  %fmh_entries.i = getelementptr inbounds %struct.xfs_fsmap_head, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %fmh_entries.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fmh_entries.i, align 4
  %inc.i = add i32 %68, 1
  store i32 %inc.i, ptr %fmh_entries.i, align 4
  %arrayidx.i = getelementptr %struct.fsmap, ptr %64, i32 %68
  %69 = ptrtoint ptr %fmr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fmr, align 8
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx.i, align 8
  %72 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %0, align 4
  %fmr_flags2.i.i = getelementptr %struct.fsmap, ptr %64, i32 %68, i32 1
  %74 = ptrtoint ptr %fmr_flags2.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %fmr_flags2.i.i, align 4
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %1, align 8
  %shl.i.i = shl i64 %76, 9
  %fmr_physical3.i.i = getelementptr %struct.fsmap, ptr %64, i32 %68, i32 2
  %77 = ptrtoint ptr %fmr_physical3.i.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %shl.i.i, ptr %fmr_physical3.i.i, align 8
  %78 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %2, align 8
  %fmr_owner4.i.i = getelementptr %struct.fsmap, ptr %64, i32 %68, i32 3
  %80 = ptrtoint ptr %fmr_owner4.i.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %fmr_owner4.i.i, align 8
  %81 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %3, align 8
  %shl5.i.i = shl i64 %82, 9
  %fmr_offset6.i.i = getelementptr %struct.fsmap, ptr %64, i32 %68, i32 4
  %83 = ptrtoint ptr %fmr_offset6.i.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %shl5.i.i, ptr %fmr_offset6.i.i, align 8
  %84 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %4, align 8
  %shl7.i.i = shl i64 %85, 9
  %fmr_length8.i.i = getelementptr %struct.fsmap, ptr %64, i32 %68, i32 5
  %86 = ptrtoint ptr %fmr_length8.i.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %shl7.i.i, ptr %fmr_length8.i.i, align 8
  %fmr_reserved.i.i = getelementptr %struct.fsmap, ptr %64, i32 %68, i32 6
  %87 = call ptr @memset(ptr %fmr_reserved.i.i, i32 0, i32 24)
  br label %if.end59

if.end59:                                         ; preds = %if.end56, %if.end44.if.end59_crit_edge
  %last60 = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 9
  %88 = ptrtoint ptr %last60 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %last60, align 8, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool61.not = icmp eq i8 %89, 0
  br i1 %tobool61.not, label %if.end63, label %if.end59.out_crit_edge

if.end59.out_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end63:                                         ; preds = %if.end59
  %90 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %info, align 8
  %fmh_entries65 = getelementptr inbounds %struct.xfs_fsmap_head, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %fmh_entries65 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %fmh_entries65, align 4
  %fmh_count67 = getelementptr inbounds %struct.xfs_fsmap_head, ptr %91, i32 0, i32 2
  %94 = ptrtoint ptr %fmh_count67 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %fmh_count67, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %95)
  %cmp68.not = icmp ult i32 %93, %95
  br i1 %cmp68.not, label %if.end71, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end71:                                         ; preds = %if.end63
  %dev72 = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 6
  %96 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dev72, align 8
  %pag = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 3
  %98 = ptrtoint ptr %pag to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pag, align 4
  %tobool73.not = icmp eq ptr %99, null
  br i1 %tobool73.not, label %if.end71.cond.end_crit_edge, label %cond.true

if.end71.cond.end_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pag_agno, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end71.cond.end_crit_edge
  %cond = phi i32 [ %101, %cond.true ], [ -1, %if.end71.cond.end_crit_edge ]
  call fastcc void @trace_xfs_fsmap_mapping(ptr noundef %7, i32 noundef %97, i32 noundef %cond, ptr noundef %rec)
  %102 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dev72, align 8
  %104 = ptrtoint ptr %fmr to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %fmr, align 8
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %rec_daddr, ptr %1, align 8
  %106 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %0, align 4
  %rm_owner.i = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 2
  %107 = ptrtoint ptr %rm_owner.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %rm_owner.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %108)
  %tobool.not.i204 = icmp sgt i64 %108, -1
  br i1 %tobool.not.i204, label %cond.end.if.end81_crit_edge, label %if.end.i

cond.end.if.end81_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.end.i:                                         ; preds = %cond.end
  %109 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 16, ptr %0, align 4
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.9)
  switch i64 %108, label %xfs_fsmap_owner_from_rmap.exit [
    i64 -3, label %if.end.i.if.end81_crit_edge
    i64 -4, label %sw.bb5.i
    i64 -5, label %sw.bb7.i
    i64 -6, label %sw.bb9.i
    i64 -7, label %sw.bb11.i
    i64 -8, label %sw.bb13.i
    i64 -9, label %sw.bb15.i
    i64 -1, label %sw.bb17.i
  ]

if.end.i.if.end81_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

sw.bb9.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

sw.bb13.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

sw.bb15.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

sw.bb17.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

xfs_fsmap_owner_from_rmap.exit:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 150) #11
  br label %cleanup

if.end81:                                         ; preds = %sw.bb17.i, %sw.bb15.i, %sw.bb13.i, %sw.bb11.i, %sw.bb9.i, %sw.bb7.i, %sw.bb5.i, %if.end.i.if.end81_crit_edge, %cond.end.if.end81_crit_edge
  %.sink = phi i64 [ 1, %sw.bb17.i ], [ 377957122055, %sw.bb15.i ], [ 377957122054, %sw.bb13.i ], [ 377957122053, %sw.bb11.i ], [ 377957122052, %sw.bb9.i ], [ 377957122051, %sw.bb7.i ], [ 377957122050, %sw.bb5.i ], [ %108, %cond.end.if.end81_crit_edge ], [ 377957122049, %if.end.i.if.end81_crit_edge ]
  %110 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %.sink, ptr %2, align 8
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 3
  %111 = ptrtoint ptr %rm_offset to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %rm_offset, align 8
  %m_blkbb_log82 = getelementptr inbounds %struct.xfs_mount, ptr %7, i32 0, i32 28
  %113 = ptrtoint ptr %m_blkbb_log82 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %m_blkbb_log82, align 1
  %sh_prom = zext i8 %114 to i64
  %shl84 = shl i64 %112, %sh_prom
  %115 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %shl84, ptr %3, align 8
  %rm_blockcount86 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 1
  %116 = ptrtoint ptr %rm_blockcount86 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rm_blockcount86, align 4
  %conv88 = zext i8 %114 to i32
  %shl89 = shl i32 %117, %conv88
  %conv90 = zext i32 %shl89 to i64
  %118 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %conv90, ptr %4, align 8
  %rm_flags = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 4
  %119 = ptrtoint ptr %rm_flags to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rm_flags, align 8
  %and = and i32 %120, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool92.not = icmp eq i32 %and, 0
  br i1 %tobool92.not, label %if.end81.if.end95_crit_edge, label %if.then93

if.end81.if.end95_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then93:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  %121 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %0, align 4
  %or = or i32 %122, 1
  store i32 %or, ptr %0, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.end81.if.end95_crit_edge
  %and97 = and i32 %120, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end95.if.end102_crit_edge, label %if.then99

if.end95.if.end102_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

if.then99:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  %123 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %0, align 4
  %or101 = or i32 %124, 2
  store i32 %or101, ptr %0, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.end95.if.end102_crit_edge
  %and104 = and i32 %120, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  %125 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %125)
  %.pr = load i32, ptr %0, align 4
  br i1 %tobool105.not, label %if.end109, label %if.end109.thread

if.end109.thread:                                 ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  %or108 = or i32 %.pr, 4
  br label %if.end123.sink.split

if.end109:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp111 = icmp eq i32 %.pr, 0
  br i1 %cmp111, label %if.then113, label %if.end109.if.end123_crit_edge

if.end109.if.end123_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

if.then113:                                       ; preds = %if.end109
  %call114 = call fastcc i32 @xfs_getfsmap_is_shared(ptr noundef %tp, ptr noundef %info, ptr noundef %rec, ptr noundef nonnull %shared)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %if.then113.cleanup_crit_edge

if.then113.cleanup_crit_edge:                     ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end117:                                        ; preds = %if.then113
  %126 = ptrtoint ptr %shared to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %shared, align 1, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool118.not = icmp eq i8 %127, 0
  br i1 %tobool118.not, label %if.end117.if.end123_crit_edge, label %if.then119

if.end117.if.end123_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

if.then119:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %0, align 4
  %or121 = or i32 %129, 8
  br label %if.end123.sink.split

if.end123.sink.split:                             ; preds = %if.then119, %if.end109.thread
  %or108.sink = phi i32 [ %or108, %if.end109.thread ], [ %or121, %if.then119 ]
  %130 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %or108.sink, ptr %0, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.end123.sink.split, %if.end117.if.end123_crit_edge, %if.end109.if.end123_crit_edge
  call fastcc void @xfs_getfsmap_format(ptr noundef %7, ptr noundef nonnull %fmr, ptr noundef %info)
  br label %out

out:                                              ; preds = %if.end123, %if.end59.out_crit_edge
  %rm_blockcount124 = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 1
  %131 = ptrtoint ptr %rm_blockcount124 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rm_blockcount124, align 4
  %m_blkbb_log125 = getelementptr inbounds %struct.xfs_mount, ptr %7, i32 0, i32 28
  %133 = ptrtoint ptr %m_blkbb_log125 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %m_blkbb_log125, align 1
  %conv126 = zext i8 %134 to i32
  %shl127 = shl i32 %132, %conv126
  %conv128 = zext i32 %shl127 to i64
  %add129 = add i64 %conv128, %rec_daddr
  %135 = ptrtoint ptr %next_daddr45 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %next_daddr45, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %136, i64 %add129)
  %cmp131 = icmp slt i64 %136, %add129
  br i1 %cmp131, label %if.then133, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then133:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %137 = ptrtoint ptr %next_daddr45 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %add129, ptr %next_daddr45, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then133, %out.cleanup_crit_edge, %if.then113.cleanup_crit_edge, %xfs_fsmap_owner_from_rmap.exit, %if.end63.cleanup_crit_edge, %if.then48.cleanup_crit_edge, %if.then41, %if.end28.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.then7, %if.then3.cleanup_crit_edge, %fatal_signal_pending.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %fatal_signal_pending.exit.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %if.then3.cleanup_crit_edge ], [ -125, %if.then13.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ], [ 0, %if.then41 ], [ 0, %if.end28.cleanup_crit_edge ], [ -125, %if.then48.cleanup_crit_edge ], [ -125, %if.end63.cleanup_crit_edge ], [ -117, %xfs_fsmap_owner_from_rmap.exit ], [ %call114, %if.then113.cleanup_crit_edge ], [ 0, %if.then133 ], [ 0, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %shared) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %fmr) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rmap_compare(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_getfsmap_format(ptr noundef %mp, ptr noundef %xfm, ptr nocapture noundef readonly %info) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @trace_xfs_getfsmap_mapping(ptr noundef %mp, ptr noundef %xfm)
  %fsmap_recs = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %fsmap_recs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fsmap_recs, align 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %fmh_entries = getelementptr inbounds %struct.xfs_fsmap_head, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %fmh_entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmh_entries, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %fmh_entries, align 4
  %arrayidx = getelementptr %struct.fsmap, ptr %1, i32 %5
  %6 = ptrtoint ptr %xfm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xfm, align 8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx, align 8
  %fmr_flags.i = getelementptr inbounds %struct.xfs_fsmap, ptr %xfm, i32 0, i32 1
  %9 = ptrtoint ptr %fmr_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fmr_flags.i, align 4
  %fmr_flags2.i = getelementptr %struct.fsmap, ptr %1, i32 %5, i32 1
  %11 = ptrtoint ptr %fmr_flags2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fmr_flags2.i, align 4
  %fmr_physical.i = getelementptr inbounds %struct.xfs_fsmap, ptr %xfm, i32 0, i32 2
  %12 = ptrtoint ptr %fmr_physical.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fmr_physical.i, align 8
  %shl.i = shl i64 %13, 9
  %fmr_physical3.i = getelementptr %struct.fsmap, ptr %1, i32 %5, i32 2
  %14 = ptrtoint ptr %fmr_physical3.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %shl.i, ptr %fmr_physical3.i, align 8
  %fmr_owner.i = getelementptr inbounds %struct.xfs_fsmap, ptr %xfm, i32 0, i32 3
  %15 = ptrtoint ptr %fmr_owner.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %fmr_owner.i, align 8
  %fmr_owner4.i = getelementptr %struct.fsmap, ptr %1, i32 %5, i32 3
  %17 = ptrtoint ptr %fmr_owner4.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %fmr_owner4.i, align 8
  %fmr_offset.i = getelementptr inbounds %struct.xfs_fsmap, ptr %xfm, i32 0, i32 4
  %18 = ptrtoint ptr %fmr_offset.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %fmr_offset.i, align 8
  %shl5.i = shl i64 %19, 9
  %fmr_offset6.i = getelementptr %struct.fsmap, ptr %1, i32 %5, i32 4
  %20 = ptrtoint ptr %fmr_offset6.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %shl5.i, ptr %fmr_offset6.i, align 8
  %fmr_length.i = getelementptr inbounds %struct.xfs_fsmap, ptr %xfm, i32 0, i32 5
  %21 = ptrtoint ptr %fmr_length.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %fmr_length.i, align 8
  %shl7.i = shl i64 %22, 9
  %fmr_length8.i = getelementptr %struct.fsmap, ptr %1, i32 %5, i32 5
  %23 = ptrtoint ptr %fmr_length8.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %shl7.i, ptr %fmr_length8.i, align 8
  %fmr_reserved.i = getelementptr %struct.fsmap, ptr %1, i32 %5, i32 6
  %24 = call ptr @memset(ptr %fmr_reserved.i, i32 0, i32 24)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_fsmap_mapping(ptr noundef %mp, i32 noundef %keydev, i32 noundef %agno, ptr noundef %rmap) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_fsmap_mapping, i32 0, i32 1), ptr blockaddress(@trace_xfs_fsmap_mapping, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !33

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !30

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !41
  %call42 = tail call i32 @__traceiter_xfs_fsmap_mapping(ptr noundef null, ptr noundef %mp, i32 noundef %keydev, i32 noundef %agno, ptr noundef %rmap) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !42
  %13 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !30

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_fsmap_mapping, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_fsmap_mapping, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_fsmap_mapping.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_fsmap_mapping.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 3476, ptr noundef nonnull @.str.1) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !37
  %31 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_getfsmap_is_shared(ptr noundef %tp, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %rec, ptr nocapture noundef writeonly %stat) unnamed_addr #5 align 64 {
entry:
  %fbno = alloca i32, align 4
  %flen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fbno) #11
  %2 = ptrtoint ptr %fbno to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %fbno, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flen) #11
  %3 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %stat, align 1
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pag = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 3
  %6 = ptrtoint ptr %pag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pag, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %8 = ptrtoint ptr %flen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %flen, align 4
  %agf_bp = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 2
  %9 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %agf_bp, align 8
  %call4 = tail call ptr @xfs_refcountbt_init_cursor(ptr noundef %1, ptr noundef %tp, ptr noundef %10, ptr noundef nonnull %7) #11
  %11 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rec, align 8
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %rec, i32 0, i32 1
  %13 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rm_blockcount, align 4
  %call5 = call i32 @xfs_refcount_find_shared(ptr noundef %call4, i32 noundef %12, i32 noundef %14, ptr noundef nonnull %fbno, ptr noundef nonnull %flen, i1 noundef zeroext false) #11
  call void @xfs_btree_del_cursor(ptr noundef %call4, i32 noundef %call5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %flen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp ne i32 %16, 0
  %frombool = zext i1 %cmp to i8
  %17 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool, ptr %stat, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call5, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flen) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fbno) #11
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_getfsmap_mapping(ptr noundef %mp, ptr noundef %fsmap) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_getfsmap_mapping, i32 0, i32 1), ptr blockaddress(@trace_xfs_getfsmap_mapping, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !33

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !30

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !43
  %call42 = tail call i32 @__traceiter_xfs_getfsmap_mapping(ptr noundef null, ptr noundef %mp, ptr noundef %fsmap) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !44
  %13 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !30

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_getfsmap_mapping, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_getfsmap_mapping, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_getfsmap_mapping.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_getfsmap_mapping.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 3514, ptr noundef nonnull @.str.1) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !37
  %31 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_getfsmap_mapping(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_fsmap_mapping(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_refcountbt_init_cursor(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_refcount_find_shared(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_getfsmap_datadev_bnobt_query(ptr noundef %tp, ptr noundef %info, ptr nocapture noundef %curpp, ptr noundef %priv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %last = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 9
  %0 = ptrtoint ptr %last to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %last, align 8, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %curpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curpp, align 4
  %arrayidx = getelementptr %struct.xfs_alloc_rec_incore, ptr %priv, i32 1
  %call = tail call i32 @xfs_getfsmap_datadev_bnobt_helper(ptr noundef %3, ptr noundef %arrayidx, ptr noundef %info)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %4 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t_mountp, align 4
  %agf_bp = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %agf_bp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %agf_bp, align 8
  %pag = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 3
  %8 = ptrtoint ptr %pag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pag, align 4
  %call1 = tail call ptr @xfs_allocbt_init_cursor(ptr noundef %5, ptr noundef %tp, ptr noundef %7, ptr noundef %9, i32 noundef 0) #11
  %10 = ptrtoint ptr %curpp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1, ptr %curpp, align 4
  %low = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 7
  %11 = ptrtoint ptr %low to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %low, align 8
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %priv, align 4
  %high = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 8
  %14 = ptrtoint ptr %high to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %high, align 8
  %arrayidx3 = getelementptr %struct.xfs_alloc_rec_incore, ptr %priv, i32 1
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx3, align 4
  %17 = load ptr, ptr %curpp, align 4
  %call6 = tail call i32 @xfs_alloc_query_range(ptr noundef %17, ptr noundef %priv, ptr noundef %arrayidx3, ptr noundef nonnull @xfs_getfsmap_datadev_bnobt_helper, ptr noundef %info) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_getfsmap_datadev_bnobt_helper(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %rec, ptr noundef %priv) #5 align 64 {
entry:
  %irec = alloca %struct.xfs_rmap_irec, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %irec) #11
  %2 = getelementptr inbounds i8, ptr %irec, i32 24
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %2, align 8
  %4 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pag_agno, align 4
  %conv = zext i32 %8 to i64
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sb_agblocks, align 4
  %conv1 = zext i32 %10 to i64
  %mul = mul nuw i64 %conv1, %conv
  %11 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rec, align 4
  %conv2 = zext i32 %12 to i64
  %add = add nuw i64 %mul, %conv2
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 28
  %13 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %14 to i64
  %shl = shl i64 %add, %sh_prom
  %15 = ptrtoint ptr %irec to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %irec, align 8
  %ar_blockcount = getelementptr inbounds %struct.xfs_alloc_rec_incore, ptr %rec, i32 0, i32 1
  %16 = ptrtoint ptr %ar_blockcount to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ar_blockcount, align 4
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 1
  %18 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rm_blockcount, align 4
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 2
  %19 = ptrtoint ptr %rm_owner to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -1, ptr %rm_owner, align 8
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 3
  %20 = ptrtoint ptr %rm_offset to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %rm_offset, align 8
  %rm_flags = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 4
  %21 = ptrtoint ptr %rm_flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %rm_flags, align 8
  %22 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cur, align 8
  %call = call fastcc i32 @xfs_getfsmap_helper(ptr noundef %23, ptr noundef %priv, ptr noundef nonnull %irec, i64 noundef %shl)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %irec) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_allocbt_init_cursor(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_query_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__xfs_getfsmap_rtdev(ptr noundef %tp, ptr nocapture noundef readonly %keys, ptr noundef %info) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %sb_rblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sb_rblocks to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sb_rblocks, align 16
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %5 to i64
  %shl = shl i64 %3, %sh_prom
  %fmr_physical = getelementptr inbounds %struct.xfs_fsmap, ptr %keys, i32 0, i32 2
  %6 = ptrtoint ptr %fmr_physical to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %fmr_physical, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %shl)
  %cmp.not = icmp ult i64 %7, %shl
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i64 %7, %sh_prom
  %sub = add i64 %shl, -1
  %fmr_physical8 = getelementptr %struct.xfs_fsmap, ptr %keys, i32 1, i32 2
  %8 = ptrtoint ptr %fmr_physical8 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %fmr_physical8, align 8
  %10 = tail call i64 @llvm.umin.i64(i64 %sub, i64 %9)
  %conv20 = trunc i64 %shr to i32
  %low = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 7
  %11 = ptrtoint ptr %low to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv20, ptr %low, align 8
  %fmr_flags.i = getelementptr inbounds %struct.xfs_fsmap, ptr %keys, i32 0, i32 1
  %12 = ptrtoint ptr %fmr_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmr_flags.i, align 4
  %and.i = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %fmr_owner.i = getelementptr inbounds %struct.xfs_fsmap, ptr %keys, i32 0, i32 3
  %14 = ptrtoint ptr %fmr_owner.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %fmr_owner.i, align 8
  br i1 %tobool.not.i, label %if.end.if.end24_crit_edge, label %if.end.i

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.10)
  switch i64 %15, label %if.end.i.cleanup_crit_edge [
    i64 0, label %if.end.i.if.end24_crit_edge
    i64 -1, label %if.end.i.if.end24_crit_edge40
    i64 1, label %sw.bb3.i
    i64 2, label %sw.bb5.i
    i64 377957122049, label %sw.bb7.i
    i64 377957122050, label %sw.bb9.i
    i64 377957122051, label %sw.bb11.i
    i64 377957122052, label %sw.bb13.i
    i64 377957122053, label %sw.bb15.i
    i64 377957122054, label %sw.bb17.i
    i64 377957122055, label %sw.bb19.i
  ]

if.end.i.if.end24_crit_edge40:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end.i.if.end24_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

sw.bb9.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

sw.bb13.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

sw.bb15.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

sw.bb17.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

sw.bb19.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end24:                                         ; preds = %sw.bb19.i, %sw.bb17.i, %sw.bb15.i, %sw.bb13.i, %sw.bb11.i, %sw.bb9.i, %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %if.end.i.if.end24_crit_edge, %if.end.i.if.end24_crit_edge40, %if.end.if.end24_crit_edge
  %.sink.i = phi i64 [ -1, %sw.bb3.i ], [ -2, %sw.bb5.i ], [ -3, %sw.bb7.i ], [ -4, %sw.bb9.i ], [ -5, %sw.bb11.i ], [ -6, %sw.bb13.i ], [ -7, %sw.bb15.i ], [ -8, %sw.bb17.i ], [ -9, %sw.bb19.i ], [ %15, %if.end.if.end24_crit_edge ], [ 0, %if.end.i.if.end24_crit_edge ], [ 0, %if.end.i.if.end24_crit_edge40 ]
  %rm_owner2.i = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %rm_owner2.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %.sink.i, ptr %rm_owner2.i, align 8
  %conv12 = zext i8 %5 to i32
  %notmask = shl nsw i32 -1, %conv12
  %sub14 = xor i32 %notmask, -1
  %conv15 = sext i32 %sub14 to i64
  %add = add i64 %10, %conv15
  %shr19 = lshr i64 %add, %sh_prom
  %fmr_offset = getelementptr inbounds %struct.xfs_fsmap, ptr %keys, i32 0, i32 4
  %17 = ptrtoint ptr %fmr_offset to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %fmr_offset, align 8
  %19 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom28 = zext i8 %20 to i64
  %shr29 = lshr i64 %18, %sh_prom28
  %rm_offset = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 7, i32 3
  %21 = ptrtoint ptr %rm_offset to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %shr29, ptr %rm_offset, align 8
  %rm_blockcount = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %rm_blockcount, align 4
  %rm_flags.i = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 7, i32 4
  %23 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %rm_flags.i, align 8
  %24 = ptrtoint ptr %fmr_flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fmr_flags.i, align 4
  %and.i2 = lshr i32 %25, 1
  %and.lobit.i = and i32 %and.i2, 1
  store i32 %and.lobit.i, ptr %rm_flags.i, align 8
  %26 = load i32, ptr %fmr_flags.i, align 4
  %and3.i = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end24.if.end8.i_crit_edge, label %if.then5.i

if.end24.if.end8.i_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %or7.i = or i32 %and.lobit.i, 2
  %27 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or7.i, ptr %rm_flags.i, align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end24.if.end8.i_crit_edge
  %28 = ptrtoint ptr %fmr_flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fmr_flags.i, align 4
  %and10.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end8.i.xfs_getfsmap_set_irec_flags.exit_crit_edge, label %if.then12.i

if.end8.i.xfs_getfsmap_set_irec_flags.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_getfsmap_set_irec_flags.exit

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %rm_flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rm_flags.i, align 8
  %or14.i = or i32 %31, 4
  store i32 %or14.i, ptr %rm_flags.i, align 8
  br label %xfs_getfsmap_set_irec_flags.exit

xfs_getfsmap_set_irec_flags.exit:                 ; preds = %if.then12.i, %if.end8.i.xfs_getfsmap_set_irec_flags.exit_crit_edge
  %conv34 = trunc i64 %shr19 to i32
  %high = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 8
  %32 = ptrtoint ptr %high to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv34, ptr %high, align 8
  %fmr_flags.i3 = getelementptr %struct.xfs_fsmap, ptr %keys, i32 1, i32 1
  %33 = ptrtoint ptr %fmr_flags.i3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fmr_flags.i3, align 4
  %and.i4 = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4)
  %tobool.not.i5 = icmp eq i32 %and.i4, 0
  %fmr_owner.i6 = getelementptr %struct.xfs_fsmap, ptr %keys, i32 1, i32 3
  %35 = ptrtoint ptr %fmr_owner.i6 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %fmr_owner.i6, align 8
  br i1 %tobool.not.i5, label %xfs_getfsmap_set_irec_flags.exit.if.end41_crit_edge, label %if.end.i7

xfs_getfsmap_set_irec_flags.exit.if.end41_crit_edge: ; preds = %xfs_getfsmap_set_irec_flags.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.end.i7:                                        ; preds = %xfs_getfsmap_set_irec_flags.exit
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.11)
  switch i64 %36, label %if.end.i7.cleanup_crit_edge [
    i64 0, label %if.end.i7.if.end41_crit_edge
    i64 -1, label %if.end.i7.if.end41_crit_edge41
    i64 1, label %sw.bb3.i8
    i64 2, label %sw.bb5.i9
    i64 377957122049, label %sw.bb7.i10
    i64 377957122050, label %sw.bb9.i11
    i64 377957122051, label %sw.bb11.i12
    i64 377957122052, label %sw.bb13.i13
    i64 377957122053, label %sw.bb15.i14
    i64 377957122054, label %sw.bb17.i15
    i64 377957122055, label %sw.bb19.i16
  ]

if.end.i7.if.end41_crit_edge41:                   ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.end.i7.if.end41_crit_edge:                     ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.end.i7.cleanup_crit_edge:                      ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb3.i8:                                        ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

sw.bb5.i9:                                        ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

sw.bb7.i10:                                       ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

sw.bb9.i11:                                       ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

sw.bb11.i12:                                      ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

sw.bb13.i13:                                      ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

sw.bb15.i14:                                      ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

sw.bb17.i15:                                      ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

sw.bb19.i16:                                      ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.end41:                                         ; preds = %sw.bb19.i16, %sw.bb17.i15, %sw.bb15.i14, %sw.bb13.i13, %sw.bb11.i12, %sw.bb9.i11, %sw.bb7.i10, %sw.bb5.i9, %sw.bb3.i8, %if.end.i7.if.end41_crit_edge, %if.end.i7.if.end41_crit_edge41, %xfs_getfsmap_set_irec_flags.exit.if.end41_crit_edge
  %.sink.i17 = phi i64 [ -1, %sw.bb3.i8 ], [ -2, %sw.bb5.i9 ], [ -3, %sw.bb7.i10 ], [ -4, %sw.bb9.i11 ], [ -5, %sw.bb11.i12 ], [ -6, %sw.bb13.i13 ], [ -7, %sw.bb15.i14 ], [ -8, %sw.bb17.i15 ], [ -9, %sw.bb19.i16 ], [ %36, %xfs_getfsmap_set_irec_flags.exit.if.end41_crit_edge ], [ 0, %if.end.i7.if.end41_crit_edge ], [ 0, %if.end.i7.if.end41_crit_edge41 ]
  %rm_owner2.i18 = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 8, i32 2
  %37 = ptrtoint ptr %rm_owner2.i18 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %.sink.i17, ptr %rm_owner2.i18, align 8
  %fmr_offset43 = getelementptr %struct.xfs_fsmap, ptr %keys, i32 1, i32 4
  %38 = ptrtoint ptr %fmr_offset43 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %fmr_offset43, align 8
  %40 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom46 = zext i8 %41 to i64
  %shr47 = lshr i64 %39, %sh_prom46
  %rm_offset49 = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 8, i32 3
  %42 = ptrtoint ptr %rm_offset49 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %shr47, ptr %rm_offset49, align 8
  %rm_blockcount51 = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 8, i32 1
  %43 = ptrtoint ptr %rm_blockcount51 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %rm_blockcount51, align 4
  %rm_flags.i22 = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 8, i32 4
  %44 = ptrtoint ptr %rm_flags.i22 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %rm_flags.i22, align 8
  %45 = ptrtoint ptr %fmr_flags.i3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fmr_flags.i3, align 4
  %and.i24 = lshr i32 %46, 1
  %and.lobit.i25 = and i32 %and.i24, 1
  store i32 %and.lobit.i25, ptr %rm_flags.i22, align 8
  %47 = load i32, ptr %fmr_flags.i3, align 4
  %and3.i26 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i26)
  %tobool4.not.i27 = icmp eq i32 %and3.i26, 0
  br i1 %tobool4.not.i27, label %if.end41.if.end8.i32_crit_edge, label %if.then5.i29

if.end41.if.end8.i32_crit_edge:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i32

if.then5.i29:                                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %or7.i28 = or i32 %and.lobit.i25, 2
  %48 = ptrtoint ptr %rm_flags.i22 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or7.i28, ptr %rm_flags.i22, align 8
  br label %if.end8.i32

if.end8.i32:                                      ; preds = %if.then5.i29, %if.end41.if.end8.i32_crit_edge
  %49 = ptrtoint ptr %fmr_flags.i3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fmr_flags.i3, align 4
  %and10.i30 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i30)
  %tobool11.not.i31 = icmp eq i32 %and10.i30, 0
  br i1 %tobool11.not.i31, label %if.end8.i32.xfs_getfsmap_set_irec_flags.exit35_crit_edge, label %if.then12.i34

if.end8.i32.xfs_getfsmap_set_irec_flags.exit35_crit_edge: ; preds = %if.end8.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_getfsmap_set_irec_flags.exit35

if.then12.i34:                                    ; preds = %if.end8.i32
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %rm_flags.i22 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rm_flags.i22, align 8
  %or14.i33 = or i32 %52, 4
  store i32 %or14.i33, ptr %rm_flags.i22, align 8
  br label %xfs_getfsmap_set_irec_flags.exit35

xfs_getfsmap_set_irec_flags.exit35:               ; preds = %if.then12.i34, %if.end8.i32.xfs_getfsmap_set_irec_flags.exit35_crit_edge
  %dev = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 6
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dev, align 8
  tail call fastcc void @trace_xfs_fsmap_low_key(ptr noundef %1, i32 noundef %54, i32 noundef -1, ptr noundef %low)
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dev, align 8
  tail call fastcc void @trace_xfs_fsmap_high_key(ptr noundef %1, i32 noundef %56, i32 noundef -1, ptr noundef %high)
  %call57 = tail call fastcc i32 @xfs_getfsmap_rtdev_rtbitmap_query(ptr noundef %tp, ptr noundef %info)
  br label %cleanup

cleanup:                                          ; preds = %xfs_getfsmap_set_irec_flags.exit35, %if.end.i7.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call57, %xfs_getfsmap_set_irec_flags.exit35 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end.i7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_getfsmap_rtdev_rtbitmap_query(ptr noundef %tp, ptr noundef %info) unnamed_addr #5 align 64 {
entry:
  %alow = alloca %struct.xfs_rtalloc_rec, align 8
  %ahigh = alloca %struct.xfs_rtalloc_rec, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %alow) #11
  %0 = call ptr @memset(ptr %alow, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ahigh) #11
  %1 = call ptr @memset(ptr %ahigh, i32 0, i32 16)
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %2 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_mountp, align 4
  %m_rbmip = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_rbmip, align 8
  tail call void @xfs_ilock(ptr noundef %5, i32 noundef 8) #11
  %sb_rextsize = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sb_rextsize, align 16
  %high = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 8
  %8 = ptrtoint ptr %high to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %high, align 8
  %low = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 7
  %10 = ptrtoint ptr %low to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %low, align 8
  %storemerge.in = udiv i32 %11, %7
  %storemerge = zext i32 %storemerge.in to i64
  %12 = ptrtoint ptr %alow to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %storemerge, ptr %alow, align 8
  %.frozen = freeze i32 %9
  %.frozen708 = freeze i32 %7
  %div420 = udiv i32 %.frozen, %.frozen708
  %conv421 = zext i32 %div420 to i64
  %13 = ptrtoint ptr %ahigh to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv421, ptr %ahigh, align 8
  %14 = mul i32 %div420, %.frozen708
  %rem417.decomposed = sub i32 %.frozen, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem417.decomposed)
  %tobool430.not = icmp eq i32 %rem417.decomposed, 0
  br i1 %tobool430.not, label %entry.if.end433_crit_edge, label %if.then431

entry.if.end433_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end433

if.then431:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %ahigh to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ahigh, align 8
  %inc = add i64 %16, 1
  store i64 %inc, ptr %ahigh, align 8
  br label %if.end433

if.end433:                                        ; preds = %if.then431, %entry.if.end433_crit_edge
  %call434 = call i32 @xfs_rtalloc_query_range(ptr noundef %tp, ptr noundef nonnull %alow, ptr noundef nonnull %ahigh, ptr noundef nonnull @xfs_getfsmap_rtdev_rtbitmap_helper, ptr noundef %info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call434)
  %tobool435.not = icmp eq i32 %call434, 0
  br i1 %tobool435.not, label %if.end437, label %if.end433.err_crit_edge

if.end433.err_crit_edge:                          ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end437:                                        ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #13
  %last = getelementptr inbounds %struct.xfs_getfsmap_info, ptr %info, i32 0, i32 9
  %17 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %last, align 8
  %sb_rextents = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %sb_rextents to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %sb_rextents, align 8
  %20 = ptrtoint ptr %ahigh to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ahigh, align 8
  %22 = call i64 @llvm.umin.i64(i64 %19, i64 %21)
  %23 = ptrtoint ptr %ahigh to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %ahigh, align 8
  %call448 = call i32 @xfs_getfsmap_rtdev_rtbitmap_helper(ptr noundef %tp, ptr noundef nonnull %ahigh, ptr noundef %info)
  br label %err

err:                                              ; preds = %if.end437, %if.end433.err_crit_edge
  %error.0 = phi i32 [ %call434, %if.end433.err_crit_edge ], [ %call448, %if.end437 ]
  %24 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %m_rbmip, align 8
  call void @xfs_iunlock(ptr noundef %25, i32 noundef 8) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ahigh) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %alow) #11
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rtalloc_query_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_getfsmap_rtdev_rtbitmap_helper(ptr noundef %tp, ptr nocapture noundef readonly %rec, ptr noundef %priv) #5 align 64 {
entry:
  %irec = alloca %struct.xfs_rmap_irec, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %irec) #11
  %2 = getelementptr inbounds i8, ptr %irec, i32 24
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %2, align 8
  %4 = ptrtoint ptr %rec to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %rec, align 8
  %sb_rextsize = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sb_rextsize, align 16
  %8 = trunc i64 %5 to i32
  %conv1 = mul i32 %7, %8
  %9 = ptrtoint ptr %irec to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv1, ptr %irec, align 8
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 28
  %10 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %m_blkbb_log, align 1
  %conv3 = zext i8 %11 to i32
  %shl = shl i32 %conv1, %conv3
  %conv4 = zext i32 %shl to i64
  %ar_extcount = getelementptr inbounds %struct.xfs_rtalloc_rec, ptr %rec, i32 0, i32 1
  %12 = ptrtoint ptr %ar_extcount to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ar_extcount, align 8
  %14 = trunc i64 %13 to i32
  %conv9 = mul i32 %7, %14
  %rm_blockcount = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 1
  %15 = ptrtoint ptr %rm_blockcount to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv9, ptr %rm_blockcount, align 4
  %rm_owner = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 2
  %16 = ptrtoint ptr %rm_owner to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %rm_owner, align 8
  %rm_offset = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 3
  %17 = ptrtoint ptr %rm_offset to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %rm_offset, align 8
  %rm_flags = getelementptr inbounds %struct.xfs_rmap_irec, ptr %irec, i32 0, i32 4
  %18 = ptrtoint ptr %rm_flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %rm_flags, align 8
  %call = call fastcc i32 @xfs_getfsmap_helper(ptr noundef %tp, ptr noundef %priv, ptr noundef nonnull %irec, i64 noundef %conv4)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %irec) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19}
!llvm.named.register.sp = !{!20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_trace.h", i32 3474, i32 1}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../fs/xfs/xfs_trace.h", i32 3475, i32 1}
!10 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../fs/xfs/xfs_trace.h", i32 3514, i32 1}
!13 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../fs/xfs/xfs_trace.h", i32 3476, i32 1}
!16 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_fsmap.c", i32 150, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{!"sp"}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{ptr @xfs_getfsmap_datadev_bnobt_query, ptr @xfs_getfsmap_datadev_rmapbt_query}
!32 = !{i8 0, i8 2}
!33 = !{i64 2148269684, i64 2148269689, i64 2148269702, i64 2148269746, i64 2148269780, i64 2148269801}
!34 = !{i64 2165046946}
!35 = !{i64 2165047187}
!36 = !{i64 2149971777}
!37 = !{i64 2149972813}
!38 = !{i64 2165064831}
!39 = !{i64 2165065074}
!40 = !{!"auto-init"}
!41 = !{i64 2165082731}
!42 = !{i64 2165082972}
!43 = !{i64 2165138206}
!44 = !{i64 2165138427}
