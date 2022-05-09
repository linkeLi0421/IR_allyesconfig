; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_trans_ail.c_pt.bc'
source_filename = "../fs/xfs/xfs_trans_ail.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.xfs_ail = type { ptr, ptr, %struct.list_head, i64, i64, %struct.list_head, %struct.spinlock, i64, i32, %struct.list_head, %struct.wait_queue_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.xfs_ail_cursor = type { %struct.list_head, ptr }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
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
%struct.rb_root = type { ptr }
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
%struct.__xfsstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.xfs_item_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nr_items > 0\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/xfs/xfs_trans_ail.c\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: attempting to delete a log item that is not in the AIL\00", [37 x i8] zeroinitializer }, align 32
@__func__.xfs_trans_ail_delete = private unnamed_addr constant [21 x i8] c"xfs_trans_ail_delete\00", align 1
@xfs_trans_ail_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ailp->ail_lock\00", [16 x i8] zeroinitializer }, align 32
@xfs_trans_ail_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ailp->ail_empty\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xfsaild/%s\00", [21 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_ail_move = external dso_local global %struct.tracepoint, align 4
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_ail_move.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"in_ail\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"prev_lsn == NULLCOMMITLSN || XFS_LSN_CMP(prev_lsn, lsn) <= 0\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"next_lsn == NULLCOMMITLSN || XFS_LSN_CMP(next_lsn, lsn) >= 0\00", [35 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_ail_insert = external dso_local global %struct.tracepoint, align 4
@trace_xfs_ail_insert.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"!list_empty(list)\00", [46 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_ail_delete = external dso_local global %struct.tracepoint, align 4
@trace_xfs_ail_delete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"test_bit(XFS_LI_IN_AIL, &lip->li_flags)\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fs/xfs/xfs_trans_priv.h\00", [40 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.18 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"list_empty(&ailp->ail_buf_list) || xfs_is_shutdown(ailp->ail_mount)\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@xfsstats = external dso_local local_unnamed_addr global %struct.xstats, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_ail_push = external dso_local global %struct.tracepoint, align 4
@trace_xfs_ail_push.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_ail_flushing = external dso_local global %struct.tracepoint, align 4
@trace_xfs_ail_flushing.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_ail_pinned = external dso_local global %struct.tracepoint, align 4
@trace_xfs_ail_pinned.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_ail_locked = external dso_local global %struct.tracepoint, align 4
@trace_xfs_ail_locked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 795, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 873, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 899, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 901, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 903, i32 19 }
@___asan_gen_.51 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 1385, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 108, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 67, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 68, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 69, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 303, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [27 x i8] c"../fs/xfs/xfs_trans_priv.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 148, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 622, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 57, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 514, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [26 x i8] c"../fs/xfs/xfs_trans_ail.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 401, i32 6 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @xfs_trans_ail_init.__key, ptr @.str.3, ptr @xfs_trans_ail_init.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_trans_ail_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_trans_ail_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @xfs_ail_min_lsn(ptr noundef %ailp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ail_lock = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %ail_lock) #8
  %ail_head.i.i = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 2
  %0 = ptrtoint ptr %ail_head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ail_head.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %1, %ail_head.i.i
  %tobool.not2.i = icmp eq ptr %1, null
  %tobool.not.i = or i1 %cmp.not.i.i, %tobool.not2.i
  br i1 %tobool.not.i, label %entry.__xfs_ail_min_lsn.exit_crit_edge, label %if.then.i

entry.__xfs_ail_min_lsn.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__xfs_ail_min_lsn.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %li_lsn.i = getelementptr inbounds %struct.xfs_log_item, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %li_lsn.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %li_lsn.i, align 8
  br label %__xfs_ail_min_lsn.exit

__xfs_ail_min_lsn.exit:                           ; preds = %if.then.i, %entry.__xfs_ail_min_lsn.exit_crit_edge
  %retval.0.i = phi i64 [ %3, %if.then.i ], [ 0, %entry.__xfs_ail_min_lsn.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %ail_lock) #8
  ret i64 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @xfs_trans_ail_cursor_next(ptr noundef %ailp, ptr nocapture noundef %cur) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %item = getelementptr inbounds %struct.xfs_ail_cursor, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %item, align 4
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %ail_head.i = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 2
  %3 = ptrtoint ptr %ail_head.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %ail_head.i, align 4
  %cmp.not.i = icmp eq ptr %4, %ail_head.i
  br i1 %cmp.not.i, label %if.then.if.end5_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end:                                           ; preds = %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %lip.0 = phi ptr [ %4, %if.then.if.end_crit_edge ], [ %1, %entry.if.end_crit_edge ]
  %tobool1.not = icmp eq ptr %lip.0, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %lip.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lip.0, align 8
  %ail_head.i11 = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 2
  %cmp.i = icmp eq ptr %6, %ail_head.i11
  %..i = select i1 %cmp.i, ptr null, ptr %6
  %7 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %..i, ptr %item, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge, %if.then.if.end5_crit_edge
  %lip.014 = phi ptr [ %lip.0, %if.then2 ], [ null, %if.end.if.end5_crit_edge ], [ null, %if.then.if.end5_crit_edge ]
  ret ptr %lip.014
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_ail_cursor_done(ptr noundef %cur) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %item = getelementptr inbounds %struct.xfs_ail_cursor, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %item, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cur) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cur, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cur, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %7 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %cur, ptr %cur, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %cur, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cur, ptr %prev.i3.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_trans_ail_cursor_first(ptr noundef %ailp, ptr noundef %cur, i64 noundef %lsn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @xfs_trans_ail_cursor_init(ptr noundef %ailp, ptr noundef %cur)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %lsn)
  %cmp = icmp eq i64 %lsn, 0
  %ail_head.i = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %ail_head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ail_head.i, align 4
  %cmp.not.i = icmp eq ptr %1, %ail_head.i
  br i1 %cmp.not.i, label %if.then.cleanup_crit_edge, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = lshr i64 %lsn, 32
  %conv2.i = trunc i64 %2 to i32
  %conv12.i = trunc i64 %lsn to i32
  %3 = ptrtoint ptr %ail_head.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %lip.039 = load ptr, ptr %ail_head.i, align 8
  %cmp2.not40 = icmp eq ptr %lip.039, %ail_head.i
  br i1 %cmp2.not40, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %_lsn_cmp.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %lip.041 = phi ptr [ %lip.0, %_lsn_cmp.exit.for.body_crit_edge ], [ %lip.039, %if.end.for.body_crit_edge ]
  %li_lsn = getelementptr inbounds %struct.xfs_log_item, ptr %lip.041, i32 0, i32 2
  %4 = ptrtoint ptr %li_lsn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %li_lsn, align 8
  %6 = lshr i64 %5, 32
  %conv.i = trunc i64 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %conv2.i)
  %cmp.not.i26 = icmp eq i32 %conv.i, %conv2.i
  br i1 %cmp.not.i26, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %conv2.i)
  %cmp8.i = icmp ult i32 %conv.i, %conv2.i
  br i1 %cmp8.i, label %if.then.i._lsn_cmp.exit_crit_edge, label %if.then.i.out_crit_edge

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then.i._lsn_cmp.exit_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_lsn_cmp.exit

if.end.i:                                         ; preds = %for.body
  %conv11.i = trunc i64 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i, i32 %conv12.i)
  %cmp18.i = icmp ult i32 %conv11.i, %conv12.i
  br i1 %cmp18.i, label %if.end.i._lsn_cmp.exit_crit_edge, label %if.end.i.out_crit_edge

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i._lsn_cmp.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_lsn_cmp.exit

_lsn_cmp.exit:                                    ; preds = %if.end.i._lsn_cmp.exit_crit_edge, %if.then.i._lsn_cmp.exit_crit_edge
  %7 = ptrtoint ptr %lip.041 to i32
  call void @__asan_load4_noabort(i32 %7)
  %lip.0 = load ptr, ptr %lip.041, align 8
  %cmp2.not = icmp eq ptr %lip.0, %ail_head.i
  br i1 %cmp2.not, label %_lsn_cmp.exit.cleanup_crit_edge, label %_lsn_cmp.exit.for.body_crit_edge

_lsn_cmp.exit.for.body_crit_edge:                 ; preds = %_lsn_cmp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

_lsn_cmp.exit.cleanup_crit_edge:                  ; preds = %_lsn_cmp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out:                                              ; preds = %if.end.i.out_crit_edge, %if.then.i.out_crit_edge, %if.then.out_crit_edge
  %lip.1 = phi ptr [ %1, %if.then.out_crit_edge ], [ %lip.041, %if.end.i.out_crit_edge ], [ %lip.041, %if.then.i.out_crit_edge ]
  %tobool.not = icmp eq ptr %lip.1, null
  br i1 %tobool.not, label %out.cleanup_crit_edge, label %if.then12

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %lip.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lip.1, align 8
  %ail_head.i27 = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 2
  %cmp.i = icmp eq ptr %9, %ail_head.i27
  %..i = select i1 %cmp.i, ptr null, ptr %9
  %item = getelementptr inbounds %struct.xfs_ail_cursor, ptr %cur, i32 0, i32 1
  %10 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %..i, ptr %item, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %out.cleanup_crit_edge, %_lsn_cmp.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %lip.1, %if.then12 ], [ null, %out.cleanup_crit_edge ], [ null, %if.then.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %_lsn_cmp.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_trans_ail_cursor_init(ptr noundef %ailp, ptr noundef %cur) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %item = getelementptr inbounds %struct.xfs_ail_cursor, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %item, align 4
  %ail_cursors = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %cur, ptr noundef %2, ptr noundef %ail_cursors) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cur, ptr %prev.i, align 4
  %4 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ail_cursors, ptr %cur, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %cur, i32 0, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %cur, ptr %2, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_trans_ail_cursor_last(ptr noundef %ailp, ptr noundef %cur, i64 noundef %lsn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @xfs_trans_ail_cursor_init(ptr noundef %ailp, ptr noundef %cur)
  %ail_head.i = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %lip.014.i = load ptr, ptr %prev.i, align 4
  %cmp.not15.i = icmp eq ptr %lip.014.i, %ail_head.i
  br i1 %cmp.not15.i, label %entry.__xfs_trans_ail_cursor_last.exit_crit_edge, label %for.body.lr.ph.i

entry.__xfs_trans_ail_cursor_last.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__xfs_trans_ail_cursor_last.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %1 = lshr i64 %lsn, 32
  %conv2.i.i = trunc i64 %1 to i32
  %conv12.i.i = trunc i64 %lsn to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %lip.016.i = phi ptr [ %lip.014.i, %for.body.lr.ph.i ], [ %lip.0.i, %for.inc.i.for.body.i_crit_edge ]
  %li_lsn.i = getelementptr inbounds %struct.xfs_log_item, ptr %lip.016.i, i32 0, i32 2
  %2 = ptrtoint ptr %li_lsn.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %li_lsn.i, align 8
  %4 = lshr i64 %3, 32
  %conv.i.i = trunc i64 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %conv2.i.i)
  %cmp.not.i.i = icmp eq i32 %conv.i.i, %conv2.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %conv2.i.i)
  %cmp8.i.i = icmp ult i32 %conv.i.i, %conv2.i.i
  br i1 %cmp8.i.i, label %if.then.i.i.__xfs_trans_ail_cursor_last.exit_crit_edge, label %if.then.i.i.for.inc.i_crit_edge

if.then.i.i.for.inc.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i.i.__xfs_trans_ail_cursor_last.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__xfs_trans_ail_cursor_last.exit

if.end.i.i:                                       ; preds = %for.body.i
  %conv11.i.i = trunc i64 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i.i, i32 %conv12.i.i)
  %.not.i = icmp ugt i32 %conv11.i.i, %conv12.i.i
  br i1 %.not.i, label %if.end.i.i.for.inc.i_crit_edge, label %if.end.i.i.__xfs_trans_ail_cursor_last.exit_crit_edge

if.end.i.i.__xfs_trans_ail_cursor_last.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__xfs_trans_ail_cursor_last.exit

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.for.inc.i_crit_edge, %if.then.i.i.for.inc.i_crit_edge
  %prev5.i = getelementptr inbounds %struct.list_head, ptr %lip.016.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %lip.0.i = load ptr, ptr %prev5.i, align 4
  %cmp.not.i = icmp eq ptr %lip.0.i, %ail_head.i
  br i1 %cmp.not.i, label %for.inc.i.__xfs_trans_ail_cursor_last.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.__xfs_trans_ail_cursor_last.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__xfs_trans_ail_cursor_last.exit

__xfs_trans_ail_cursor_last.exit:                 ; preds = %for.inc.i.__xfs_trans_ail_cursor_last.exit_crit_edge, %if.end.i.i.__xfs_trans_ail_cursor_last.exit_crit_edge, %if.then.i.i.__xfs_trans_ail_cursor_last.exit_crit_edge, %entry.__xfs_trans_ail_cursor_last.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.__xfs_trans_ail_cursor_last.exit_crit_edge ], [ null, %for.inc.i.__xfs_trans_ail_cursor_last.exit_crit_edge ], [ %lip.016.i, %if.end.i.i.__xfs_trans_ail_cursor_last.exit_crit_edge ], [ %lip.016.i, %if.then.i.i.__xfs_trans_ail_cursor_last.exit_crit_edge ]
  %item = getelementptr inbounds %struct.xfs_ail_cursor, ptr %cur, i32 0, i32 1
  %6 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %retval.0.i, ptr %item, align 4
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_ail_push(ptr noundef %ailp, i64 noundef %threshold_lsn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ail_head.i = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 2
  %0 = ptrtoint ptr %ail_head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ail_head.i, align 4
  %cmp.not.i = icmp eq ptr %1, %ail_head.i
  %tobool.not24 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not24
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %ailp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ailp, align 8
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 66
  %4 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %m_opstate.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %ail_target = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 3
  %7 = ptrtoint ptr %ail_target to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ail_target, align 8
  %9 = lshr i64 %threshold_lsn, 32
  %conv.i = trunc i64 %9 to i32
  %10 = lshr i64 %8, 32
  %conv2.i = trunc i64 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %conv2.i)
  %cmp.not.i20 = icmp eq i32 %conv.i, %conv2.i
  br i1 %cmp.not.i20, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %conv2.i)
  %cmp8.i = icmp ult i32 %conv.i, %conv2.i
  br i1 %cmp8.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.do.end_crit_edge

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false2
  %conv11.i = trunc i64 %threshold_lsn to i32
  %conv12.i = trunc i64 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i, i32 %conv12.i)
  %.not = icmp ugt i32 %conv11.i, %conv12.i
  br i1 %.not, label %if.end.i.do.end_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %if.then.i.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  %ail_lock.i = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %ail_lock.i) #8
  %11 = ptrtoint ptr %ail_target to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %threshold_lsn, ptr %ail_target, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ail_lock.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !79
  %ail_task = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 1
  %12 = ptrtoint ptr %ail_task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ail_task, align 4
  %call14 = tail call i32 @wake_up_process(ptr noundef %13) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_ail_push_all(ptr noundef %ailp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ail_lock.i = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %ail_lock.i) #8
  %ail_head.i.i = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 2
  %0 = ptrtoint ptr %ail_head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ail_head.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %1, %ail_head.i.i
  br i1 %cmp.i.not.i.i, label %entry.xfs_ail_max_lsn.exit.thread_crit_edge, label %xfs_ail_max.exit.i

entry.xfs_ail_max_lsn.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_ail_max_lsn.exit.thread

xfs_ail_max.exit.i:                               ; preds = %entry
  %prev.i.i = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %xfs_ail_max.exit.i.xfs_ail_max_lsn.exit.thread_crit_edge, label %xfs_ail_max_lsn.exit

xfs_ail_max.exit.i.xfs_ail_max_lsn.exit.thread_crit_edge: ; preds = %xfs_ail_max.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_ail_max_lsn.exit.thread

xfs_ail_max_lsn.exit.thread:                      ; preds = %xfs_ail_max.exit.i.xfs_ail_max_lsn.exit.thread_crit_edge, %entry.xfs_ail_max_lsn.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ail_lock.i) #8
  br label %if.end

xfs_ail_max_lsn.exit:                             ; preds = %xfs_ail_max.exit.i
  %li_lsn.i = getelementptr inbounds %struct.xfs_log_item, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %li_lsn.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %li_lsn.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ail_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %xfs_ail_max_lsn.exit.if.end_crit_edge, label %if.then

xfs_ail_max_lsn.exit.if.end_crit_edge:            ; preds = %xfs_ail_max_lsn.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %xfs_ail_max_lsn.exit
  %6 = ptrtoint ptr %ail_head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %ail_head.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %7, %ail_head.i.i
  %tobool.not24.i = icmp eq ptr %7, null
  %tobool.not.i4 = or i1 %cmp.not.i.i, %tobool.not24.i
  br i1 %tobool.not.i4, label %if.then.if.end_crit_edge, label %lor.lhs.false.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.then
  %8 = ptrtoint ptr %ailp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ailp, align 8
  %m_opstate.i.i = getelementptr inbounds %struct.xfs_mount, ptr %9, i32 0, i32 66
  %10 = ptrtoint ptr %m_opstate.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %m_opstate.i.i, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %ail_target.i = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 3
  %13 = ptrtoint ptr %ail_target.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ail_target.i, align 8
  %15 = lshr i64 %5, 32
  %conv.i.i = trunc i64 %15 to i32
  %16 = lshr i64 %14, 32
  %conv2.i.i = trunc i64 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %conv2.i.i)
  %cmp.not.i20.i = icmp eq i32 %conv.i.i, %conv2.i.i
  br i1 %cmp.not.i20.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %conv2.i.i)
  %cmp8.i.i = icmp ult i32 %conv.i.i, %conv2.i.i
  br i1 %cmp8.i.i, label %if.then.i.i.if.end_crit_edge, label %if.then.i.i.do.end.i_crit_edge

if.then.i.i.do.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i.i.if.end_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.i:                                       ; preds = %lor.lhs.false2.i
  %conv11.i.i = trunc i64 %5 to i32
  %conv12.i.i = trunc i64 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i.i, i32 %conv12.i.i)
  %.not.i = icmp ugt i32 %conv11.i.i, %conv12.i.i
  br i1 %.not.i, label %if.end.i.i.do.end.i_crit_edge, label %if.end.i.i.if.end_crit_edge

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.i.do.end.i_crit_edge, %if.then.i.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @_raw_spin_lock(ptr noundef %ail_lock.i) #8
  %17 = ptrtoint ptr %ail_target.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %5, ptr %ail_target.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ail_lock.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !79
  %ail_task.i = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 1
  %18 = ptrtoint ptr %ail_task.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ail_task.i, align 4
  %call14.i = tail call i32 @wake_up_process(ptr noundef %19) #8
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.end.i.i.if.end_crit_edge, %if.then.i.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %if.then.if.end_crit_edge, %xfs_ail_max_lsn.exit.if.end_crit_edge, %xfs_ail_max_lsn.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_ail_push_all_sync(ptr noundef %ailp) local_unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #8
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %ail_lock = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %ail_lock) #8
  %prev.i = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 2, i32 1
  %ail_head.i = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 2
  %13 = ptrtoint ptr %ail_head.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %ail_head.i, align 4
  %cmp.i.not.i20 = icmp eq ptr %14, %ail_head.i
  br i1 %cmp.i.not.i20, label %entry.while.end_crit_edge, label %xfs_ail_max.exit.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

xfs_ail_max.exit.lr.ph:                           ; preds = %entry
  %ail_empty = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 10
  %ail_target = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 3
  %ail_task = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 1
  br label %xfs_ail_max.exit

xfs_ail_max.exit:                                 ; preds = %while.body.xfs_ail_max.exit_crit_edge, %xfs_ail_max.exit.lr.ph
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %cmp.not = icmp eq ptr %16, null
  br i1 %cmp.not, label %xfs_ail_max.exit.while.end_crit_edge, label %while.body

xfs_ail_max.exit.while.end_crit_edge:             ; preds = %xfs_ail_max.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %xfs_ail_max.exit
  call void @prepare_to_wait(ptr noundef %ail_empty, ptr noundef nonnull %wait, i32 noundef 2) #8
  %li_lsn = getelementptr inbounds %struct.xfs_log_item, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %li_lsn to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %li_lsn, align 8
  %19 = ptrtoint ptr %ail_target to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %ail_target, align 8
  %20 = ptrtoint ptr %ail_task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ail_task, align 4
  %call5 = call i32 @wake_up_process(ptr noundef %21) #8
  call void @_raw_spin_unlock(ptr noundef %ail_lock) #8
  call void @schedule() #8
  call void @_raw_spin_lock(ptr noundef %ail_lock) #8
  %22 = ptrtoint ptr %ail_head.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %ail_head.i, align 4
  %cmp.i.not.i = icmp eq ptr %23, %ail_head.i
  br i1 %cmp.i.not.i, label %while.body.while.end_crit_edge, label %while.body.xfs_ail_max.exit_crit_edge

while.body.xfs_ail_max.exit_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_ail_max.exit

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %xfs_ail_max.exit.while.end_crit_edge, %entry.while.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %ail_lock) #8
  %ail_empty9 = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 10
  call void @finish_wait(ptr noundef %ail_empty9, ptr noundef nonnull %wait) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_ail_update_finish(ptr noundef %ailp, i64 noundef %old_lsn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ailp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ailp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %old_lsn)
  %tobool.not = icmp eq i64 %old_lsn, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %ail_head.i.i = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 2
  %2 = ptrtoint ptr %ail_head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ail_head.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %3, %ail_head.i.i
  %tobool.not2.i = icmp eq ptr %3, null
  %tobool.not.i = or i1 %cmp.not.i.i, %tobool.not2.i
  br i1 %tobool.not.i, label %lor.lhs.false.__xfs_ail_min_lsn.exit_crit_edge, label %if.then.i

lor.lhs.false.__xfs_ail_min_lsn.exit_crit_edge:   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %__xfs_ail_min_lsn.exit

if.then.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %li_lsn.i = getelementptr inbounds %struct.xfs_log_item, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %li_lsn.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %li_lsn.i, align 8
  br label %__xfs_ail_min_lsn.exit

__xfs_ail_min_lsn.exit:                           ; preds = %if.then.i, %lor.lhs.false.__xfs_ail_min_lsn.exit_crit_edge
  %retval.0.i = phi i64 [ %5, %if.then.i ], [ 0, %lor.lhs.false.__xfs_ail_min_lsn.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i, i64 %old_lsn)
  %cmp = icmp eq i64 %retval.0.i, %old_lsn
  br i1 %cmp, label %__xfs_ail_min_lsn.exit.if.then_crit_edge, label %if.end

__xfs_ail_min_lsn.exit.if.then_crit_edge:         ; preds = %__xfs_ail_min_lsn.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %__xfs_ail_min_lsn.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %ail_lock = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %ail_lock) #8
  br label %cleanup

if.end:                                           ; preds = %__xfs_ail_min_lsn.exit
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %6 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %m_opstate.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i64 @xlog_assign_tail_lsn_locked(ptr noundef %1) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %9 = ptrtoint ptr %ail_head.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %ail_head.i.i, align 4
  %cmp.i.not = icmp eq ptr %10, %ail_head.i.i
  br i1 %cmp.i.not, label %if.then7, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %ail_empty = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %ail_empty, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %ail_lock9 = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %ail_lock9) #8
  tail call void @xfs_log_space_wake(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xlog_assign_tail_lsn_locked(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_log_space_wake(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_ail_update_bulk(ptr noundef %ailp, ptr noundef %cur, ptr nocapture noundef readonly %log_items, i32 noundef %nr_items, i64 noundef %lsn) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #8
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp, i32 0, i32 1
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp, ptr %tmp, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_items)
  %cmp = icmp sgt i32 %nr_items, 0
  br i1 %cmp, label %for.body.lr.ph, label %cond.end, !prof !80

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 795) #8
  %ail_head.i = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 2
  %3 = ptrtoint ptr %ail_head.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %ail_head.i, align 4
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ail_head.i53 = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 2
  %5 = ptrtoint ptr %ail_head.i53 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %ail_head.i53, align 4
  %cmp.not.i54 = icmp eq ptr %6, %ail_head.i53
  %spec.select.i55 = select i1 %cmp.not.i54, ptr null, ptr %6
  %7 = lshr i64 %lsn, 32
  %conv.i = trunc i64 %7 to i32
  %conv11.i = trunc i64 %lsn to i32
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %tail_lsn.050 = phi i64 [ 0, %for.body.lr.ph ], [ %tail_lsn.3, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %log_items, i32 %i.052
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %9, i32 0, i32 6
  %call3 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %li_flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %li_lsn = getelementptr inbounds %struct.xfs_log_item, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %li_lsn to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %li_lsn, align 8
  %12 = lshr i64 %11, 32
  %conv2.i = trunc i64 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %conv2.i)
  %cmp.not.i40 = icmp eq i32 %conv.i, %conv2.i
  br i1 %cmp.not.i40, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %conv2.i)
  %cmp8.i = icmp ult i32 %conv.i, %conv2.i
  br i1 %cmp8.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %conv12.i = trunc i64 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i, i32 %conv12.i)
  %.not = icmp ugt i32 %conv11.i, %conv12.i
  br i1 %.not, label %if.end.i.if.end_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %if.then.i.if.end_crit_edge
  call fastcc void @trace_xfs_ail_move(ptr noundef %9, i64 noundef %11, i64 noundef %lsn)
  %cmp9 = icmp eq ptr %spec.select.i55, %9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %tail_lsn.050)
  %tobool10.not = icmp eq i64 %tail_lsn.050, 0
  %or.cond = select i1 %cmp9, i1 %tobool10.not, i1 false
  br i1 %or.cond, label %if.then11, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %li_lsn to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %li_lsn, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %tail_lsn.1 = phi i64 [ %14, %if.then11 ], [ %tail_lsn.050, %if.end.if.end13_crit_edge ]
  call fastcc void @xfs_ail_check(ptr noundef %ailp, ptr noundef %9) #8
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end13.xfs_ail_delete.exit_crit_edge

if.end13.xfs_ail_delete.exit_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_ail_delete.exit

if.end.i.i.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %9, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %xfs_ail_delete.exit

xfs_ail_delete.exit:                              ; preds = %if.end.i.i.i, %if.end13.xfs_ail_delete.exit_crit_edge
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call fastcc void @xfs_trans_ail_cursor_clear(ptr noundef %ailp, ptr noundef %9) #8
  br label %if.end14

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_xfs_ail_insert(ptr noundef %9, i64 noundef %lsn)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %xfs_ail_delete.exit
  %tail_lsn.2 = phi i64 [ %tail_lsn.1, %xfs_ail_delete.exit ], [ %tail_lsn.050, %if.else ]
  %li_lsn15 = getelementptr inbounds %struct.xfs_log_item, ptr %9, i32 0, i32 2
  %23 = ptrtoint ptr %li_lsn15 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %lsn, ptr %li_lsn15, align 8
  %24 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tmp, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %9, ptr noundef nonnull %tmp, ptr noundef %25) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %9, ptr %prev1.i.i, align 4
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %9, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %tmp, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %9, ptr %tmp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end14.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %tail_lsn.3 = phi i64 [ %tail_lsn.2, %if.end14.cleanup_crit_edge ], [ %tail_lsn.2, %if.end.i.i ], [ %tail_lsn.050, %if.end.i.cleanup_crit_edge ], [ %tail_lsn.050, %if.then.i.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, %nr_items
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %cond.end
  %ail_head.i56 = phi ptr [ %ail_head.i, %cond.end ], [ %ail_head.i53, %cleanup.for.end_crit_edge ]
  %tail_lsn.0.lcssa = phi i64 [ 0, %cond.end ], [ %tail_lsn.3, %cleanup.for.end_crit_edge ]
  %30 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %tmp, align 4
  %cmp.i.not = icmp eq ptr %31, %tmp
  br i1 %cmp.i.not, label %for.end.if.end19_crit_edge, label %if.then18

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then18:                                        ; preds = %for.end
  %32 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %tmp, align 4
  %cmp.i.not.i = icmp eq ptr %33, %tmp
  br i1 %cmp.i.not.i, label %cond.false.i, label %if.then18.cond.end.i_crit_edge, !prof !81

if.then18.cond.end.i_crit_edge:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 303) #8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then18.cond.end.i_crit_edge
  %tobool4.not.i = icmp eq ptr %cur, null
  br i1 %tobool4.not.i, label %cond.end.i.if.then.i43_crit_edge, label %cond.end7.i

cond.end.i.if.then.i43_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i43

cond.end7.i:                                      ; preds = %cond.end.i
  %item.i = getelementptr inbounds %struct.xfs_ail_cursor, ptr %cur, i32 0, i32 1
  %34 = ptrtoint ptr %item.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %item.i, align 4
  %tobool8.not.i = icmp ne ptr %35, null
  %36 = ptrtoint ptr %35 to i32
  %and.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %tobool8.not.i, i1 %tobool9.not.i, i1 false
  br i1 %or.cond.i, label %cond.end7.i.if.then12.i_crit_edge, label %cond.end7.i.if.then.i43_crit_edge

cond.end7.i.if.then.i43_crit_edge:                ; preds = %cond.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i43

cond.end7.i.if.then12.i_crit_edge:                ; preds = %cond.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i

if.then.i43:                                      ; preds = %cond.end7.i.if.then.i43_crit_edge, %cond.end.i.if.then.i43_crit_edge
  %prev.i.i42 = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %prev.i.i42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %lip.014.i.i = load ptr, ptr %prev.i.i42, align 4
  %cmp.not15.i.i = icmp eq ptr %lip.014.i.i, %ail_head.i56
  br i1 %cmp.not15.i.i, label %if.then.i43.if.end.i45_crit_edge, label %for.body.lr.ph.i.i

if.then.i43.if.end.i45_crit_edge:                 ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i45

for.body.lr.ph.i.i:                               ; preds = %if.then.i43
  %38 = lshr i64 %lsn, 32
  %conv2.i.i.i = trunc i64 %38 to i32
  %conv12.i.i.i = trunc i64 %lsn to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %lip.016.i.i = phi ptr [ %lip.014.i.i, %for.body.lr.ph.i.i ], [ %lip.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %li_lsn.i.i = getelementptr inbounds %struct.xfs_log_item, ptr %lip.016.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %li_lsn.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %li_lsn.i.i, align 8
  %41 = lshr i64 %40, 32
  %conv.i.i.i = trunc i64 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %conv2.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %conv.i.i.i, %conv2.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i44, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %conv2.i.i.i)
  %cmp8.i.i.i = icmp ult i32 %conv.i.i.i, %conv2.i.i.i
  br i1 %cmp8.i.i.i, label %if.then.i.i.i.if.end.i45_crit_edge, label %if.then.i.i.i.for.inc.i.i_crit_edge

if.then.i.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then.i.i.i.if.end.i45_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i45

if.end.i.i.i44:                                   ; preds = %for.body.i.i
  %conv11.i.i.i = trunc i64 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i.i.i, i32 %conv12.i.i.i)
  %.not.i.i = icmp ugt i32 %conv11.i.i.i, %conv12.i.i.i
  br i1 %.not.i.i, label %if.end.i.i.i44.for.inc.i.i_crit_edge, label %if.end.i.i.i44.if.end.i45_crit_edge

if.end.i.i.i44.if.end.i45_crit_edge:              ; preds = %if.end.i.i.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i45

if.end.i.i.i44.for.inc.i.i_crit_edge:             ; preds = %if.end.i.i.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i.i44.for.inc.i.i_crit_edge, %if.then.i.i.i.for.inc.i.i_crit_edge
  %prev5.i.i = getelementptr inbounds %struct.list_head, ptr %lip.016.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %lip.0.i.i = load ptr, ptr %prev5.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %lip.0.i.i, %ail_head.i56
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end.i45_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.if.end.i45_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i45

if.end.i45:                                       ; preds = %for.inc.i.i.if.end.i45_crit_edge, %if.end.i.i.i44.if.end.i45_crit_edge, %if.then.i.i.i.if.end.i45_crit_edge, %if.then.i43.if.end.i45_crit_edge
  %lip.0.i = phi ptr [ null, %if.then.i43.if.end.i45_crit_edge ], [ %lip.016.i.i, %if.then.i.i.i.if.end.i45_crit_edge ], [ %lip.016.i.i, %if.end.i.i.i44.if.end.i45_crit_edge ], [ null, %for.inc.i.i.if.end.i45_crit_edge ]
  br i1 %tobool4.not.i, label %if.end.i45.if.end14.i_crit_edge, label %if.end.i45.if.then12.i_crit_edge

if.end.i45.if.then12.i_crit_edge:                 ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i

if.end.i45.if.end14.i_crit_edge:                  ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end.i45.if.then12.i_crit_edge, %cond.end7.i.if.then12.i_crit_edge
  %lip.040.i = phi ptr [ %lip.0.i, %if.end.i45.if.then12.i_crit_edge ], [ %35, %cond.end7.i.if.then12.i_crit_edge ]
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %0, align 4
  %item13.i = getelementptr inbounds %struct.xfs_ail_cursor, ptr %cur, i32 0, i32 1
  %45 = ptrtoint ptr %item13.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %item13.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i45.if.end14.i_crit_edge
  %lip.041.i = phi ptr [ %lip.040.i, %if.then12.i ], [ %lip.0.i, %if.end.i45.if.end14.i_crit_edge ]
  %tobool15.not.i = icmp eq ptr %lip.041.i, null
  %46 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %tmp, align 4
  %cmp.i.not.i28.i = icmp eq ptr %47, %tmp
  br i1 %tobool15.not.i, label %if.else.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end14.i
  br i1 %cmp.i.not.i28.i, label %if.then16.i.if.end19_crit_edge, label %if.then.i.i

if.then16.i.if.end19_crit_edge:                   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then.i.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %lip.041.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lip.041.i, align 4
  %50 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %0, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %52 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %lip.041.i, ptr %prev3.i.i.i, align 4
  store ptr %47, ptr %lip.041.i, align 4
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %49, ptr %51, align 4
  br label %if.end17.sink.split.i

if.else.i:                                        ; preds = %if.end14.i
  br i1 %cmp.i.not.i28.i, label %if.else.i.if.end19_crit_edge, label %if.then.i32.i

if.else.i.if.end19_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then.i32.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %ail_head.i56 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ail_head.i56, align 4
  %56 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %0, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %58 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %ail_head.i56, ptr %prev3.i.i30.i, align 4
  store ptr %47, ptr %ail_head.i56, align 4
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %55, ptr %57, align 4
  br label %if.end17.sink.split.i

if.end17.sink.split.i:                            ; preds = %if.then.i32.i, %if.then.i.i
  %.sink42.i = phi ptr [ %55, %if.then.i32.i ], [ %49, %if.then.i.i ]
  %.sink.i = phi ptr [ %57, %if.then.i32.i ], [ %51, %if.then.i.i ]
  %prev6.i.i31.i = getelementptr inbounds %struct.list_head, ptr %.sink42.i, i32 0, i32 1
  %60 = ptrtoint ptr %prev6.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %.sink.i, ptr %prev6.i.i31.i, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end17.sink.split.i, %if.else.i.if.end19_crit_edge, %if.then16.i.if.end19_crit_edge, %for.end.if.end19_crit_edge
  call void @xfs_ail_update_finish(ptr noundef %ailp, i64 noundef %tail_lsn.0.lcssa)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_ail_move(ptr noundef %lip, i64 noundef %old_lsn, i64 noundef %new_lsn) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ail_move, i32 0, i32 1), ptr blockaddress(@trace_xfs_ail_move, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !83
  %call42 = tail call i32 @__traceiter_xfs_ail_move(ptr noundef null, ptr noundef %lip, i64 noundef %old_lsn, i64 noundef %new_lsn) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !84
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ail_move, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ail_move, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_ail_move.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_ail_move.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1385, ptr noundef nonnull @.str.8) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !86
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
define internal fastcc void @trace_xfs_ail_insert(ptr noundef %lip, i64 noundef %new_lsn) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ail_insert, i32 0, i32 1), ptr blockaddress(@trace_xfs_ail_insert, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !87
  %call42 = tail call i32 @__traceiter_xfs_ail_insert(ptr noundef null, ptr noundef %lip, i64 noundef 0, i64 noundef %new_lsn) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !88
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !80

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ail_insert, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ail_insert, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_xfs_ail_insert.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_ail_insert.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1384, ptr noundef nonnull @.str.8) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !86
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_ail_insert(ptr noundef %ailp, ptr noundef %lip, i64 noundef %lsn) local_unnamed_addr #0 align 64 {
entry:
  %lip.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lip.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %lip, ptr %lip.addr, align 4
  %ail_lock = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %ail_lock) #8
  call void @xfs_trans_ail_update_bulk(ptr noundef %ailp, ptr noundef null, ptr noundef nonnull %lip.addr, i32 noundef 1, i64 noundef %lsn)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @xfs_ail_delete_one(ptr noundef %ailp, ptr noundef %lip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ail_head.i = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 2
  %0 = ptrtoint ptr %ail_head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ail_head.i, align 4
  %cmp.not.i = icmp eq ptr %1, %ail_head.i
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %1
  %li_lsn = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 2
  %2 = ptrtoint ptr %li_lsn to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %li_lsn, align 8
  %li_lsn1 = getelementptr inbounds %struct.xfs_log_item, ptr %spec.select.i, i32 0, i32 2
  %4 = ptrtoint ptr %li_lsn1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %li_lsn1, align 8
  tail call fastcc void @trace_xfs_ail_delete(ptr noundef %lip, i64 noundef %5, i64 noundef %3)
  tail call fastcc void @xfs_ail_check(ptr noundef %ailp, ptr noundef %lip) #8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lip) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.xfs_ail_delete.exit_crit_edge

entry.xfs_ail_delete.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_ail_delete.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %lip, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %lip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lip, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %xfs_ail_delete.exit

xfs_ail_delete.exit:                              ; preds = %if.end.i.i.i, %entry.xfs_ail_delete.exit_crit_edge
  %12 = ptrtoint ptr %lip to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %lip, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lip, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call fastcc void @xfs_trans_ail_cursor_clear(ptr noundef %ailp, ptr noundef %lip) #8
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %li_flags) #8
  %14 = ptrtoint ptr %li_lsn to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %li_lsn, align 8
  %cmp = icmp eq ptr %spec.select.i, %lip
  %. = select i1 %cmp, i64 %3, i64 0
  ret i64 %.
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_ail_delete(ptr noundef %lip, i64 noundef %old_lsn, i64 noundef %new_lsn) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ail_delete, i32 0, i32 1), ptr blockaddress(@trace_xfs_ail_delete, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !89
  %call42 = tail call i32 @__traceiter_xfs_ail_delete(ptr noundef null, ptr noundef %lip, i64 noundef %old_lsn, i64 noundef %new_lsn) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !90
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ail_delete, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ail_delete, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_ail_delete.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_ail_delete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1386, ptr noundef nonnull @.str.8) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !86
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_ail_delete(ptr noundef %lip, i32 noundef %shutdown_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %li_ailp = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 4
  %0 = ptrtoint ptr %li_ailp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %li_ailp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ail_lock = getelementptr inbounds %struct.xfs_ail, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %ail_lock) #8
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 6
  %4 = ptrtoint ptr %li_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %li_flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_unlock(ptr noundef %ail_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shutdown_type)
  %tobool2.not = icmp eq i32 %shutdown_type, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %land.lhs.true

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 66
  %6 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %m_opstate.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.then4, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @xfs_alert_tag(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.xfs_trans_ail_delete) #8
  tail call void @xfs_do_force_shutdown(ptr noundef %3, i32 noundef %shutdown_type, ptr noundef nonnull @.str.1, i32 noundef 875) #8
  br label %cleanup

if.end5:                                          ; preds = %entry
  %li_buf.i = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 7
  %9 = ptrtoint ptr %li_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %li_buf.i, align 8
  %11 = ptrtoint ptr %li_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %li_flags, align 4
  %and1.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.end5.do.body.i_crit_edge, !prof !81

if.end5.do.body.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

cond.false.i:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 148) #8
  br label %do.body.i

do.body.i:                                        ; preds = %cond.false.i, %if.end5.do.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not.i = icmp eq i32 %13, 0
  br i1 %tobool3.not.i, label %do.body.i.if.end.i_crit_edge, label %land.rhs.i

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i:                                       ; preds = %do.body.i
  %14 = ptrtoint ptr %li_ailp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %li_ailp, align 4
  %dep_map.i = getelementptr inbounds %struct.xfs_ail, ptr %15, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !81

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 149, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %do.body.i.if.end.i_crit_edge
  %call34.i = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %li_flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end.i.xfs_clear_li_failed.exit_crit_edge, label %if.then36.i

if.end.i.xfs_clear_li_failed.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_clear_li_failed.exit

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %li_buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %li_buf.i, align 8
  tail call void @xfs_buf_rele(ptr noundef %10) #8
  br label %xfs_clear_li_failed.exit

xfs_clear_li_failed.exit:                         ; preds = %if.then36.i, %if.end.i.xfs_clear_li_failed.exit_crit_edge
  %call6 = tail call i64 @xfs_ail_delete_one(ptr noundef %1, ptr noundef %lip)
  tail call void @xfs_ail_update_finish(ptr noundef %1, i64 noundef %call6)
  br label %cleanup

cleanup:                                          ; preds = %xfs_clear_li_failed.exit, %if.then4, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert_tag(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_do_force_shutdown(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_trans_ail_init(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_alloc(i32 noundef 160, i32 noundef 24) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mp, ptr %call.i, align 8
  %ail_head = getelementptr inbounds %struct.xfs_ail, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %ail_head to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %ail_head, ptr %ail_head, align 4
  %prev.i = getelementptr inbounds %struct.xfs_ail, ptr %call.i, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ail_head, ptr %prev.i, align 4
  %ail_cursors = getelementptr inbounds %struct.xfs_ail, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %ail_cursors to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %ail_cursors, ptr %ail_cursors, align 4
  %prev.i30 = getelementptr inbounds %struct.xfs_ail, ptr %call.i, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev.i30 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ail_cursors, ptr %prev.i30, align 4
  %ail_lock = getelementptr inbounds %struct.xfs_ail, ptr %call.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %ail_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @xfs_trans_ail_init.__key, i16 noundef signext 3) #8
  %ail_buf_list = getelementptr inbounds %struct.xfs_ail, ptr %call.i, i32 0, i32 9
  %5 = ptrtoint ptr %ail_buf_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %ail_buf_list, ptr %ail_buf_list, align 4
  %prev.i31 = getelementptr inbounds %struct.xfs_ail, ptr %call.i, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %prev.i31 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ail_buf_list, ptr %prev.i31, align 4
  %ail_empty = getelementptr inbounds %struct.xfs_ail, ptr %call.i, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %ail_empty, ptr noundef nonnull @.str.5, ptr noundef nonnull @xfs_trans_ail_init.__key.4) #8
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 8
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m_super, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 39
  %call6 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @xfsaild, ptr noundef nonnull %call.i, i32 noundef -1, ptr noundef nonnull @.str.6, ptr noundef %s_id) #8
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out_free_ailp, label %if.end14

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @wake_up_process(ptr noundef %call6) #8
  %ail_task = getelementptr inbounds %struct.xfs_ail, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %ail_task to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call6, ptr %ail_task, align 4
  %m_ail = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 2
  %12 = ptrtoint ptr %m_ail to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %m_ail, align 4
  br label %cleanup

out_free_ailp:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ail_task33 = getelementptr inbounds %struct.xfs_ail, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %ail_task33 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call6, ptr %ail_task33, align 4
  tail call void @kvfree(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free_ailp, %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %out_free_ailp ], [ 0, %if.end14 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfsaild(ptr noundef %data) #0 align 64 {
entry:
  %cur.i = alloca %struct.xfs_ail_cursor, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags1.i, align 4
  %or.i = or i32 %5, 2048
  store i32 %or.i, ptr %flags1.i, align 4
  %call1 = tail call zeroext i1 @set_freezable() #8
  %ail_lock = getelementptr inbounds %struct.xfs_ail, ptr %data, i32 0, i32 6
  %ail_head.i = getelementptr inbounds %struct.xfs_ail, ptr %data, i32 0, i32 2
  %ail_target = getelementptr inbounds %struct.xfs_ail, ptr %data, i32 0, i32 3
  %ail_target_prev = getelementptr inbounds %struct.xfs_ail, ptr %data, i32 0, i32 4
  %ail_buf_list240 = getelementptr inbounds %struct.xfs_ail, ptr %data, i32 0, i32 9
  %6 = getelementptr inbounds %struct.list_head, ptr %cur.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.xfs_ail_cursor, ptr %cur.i, i32 0, i32 1
  %ail_log_flush.i = getelementptr inbounds %struct.xfs_ail, ptr %data, i32 0, i32 8
  %ail_last_pushed_lsn.i = getelementptr inbounds %struct.xfs_ail, ptr %data, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.xfs_ail, ptr %data, i32 0, i32 9, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %tout.0 = phi i32 [ 0, %entry ], [ %tout.0.be, %while.cond.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tout.0)
  %tobool.not = icmp eq i32 %tout.0, 0
  %8 = add nsw i32 %tout.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %8)
  %9 = icmp ult i32 %8, 20
  br i1 %9, label %__here, label %__here114

__here:                                           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %10 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i346 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i346 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 212
  %14 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 ptrtoint (ptr blockaddress(@xfsaild, %__here) to i32), ptr %task_state_change, align 4
  %15 = load ptr, ptr %task, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 258, ptr %15, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !91
  br label %if.end144

__here114:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %17 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i347 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i347 to ptr
  %task117 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task117 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task117, align 8
  %task_state_change118 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 212
  %21 = ptrtoint ptr %task_state_change118 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 ptrtoint (ptr blockaddress(@xfsaild, %__here114) to i32), ptr %task_state_change118, align 4
  %22 = load ptr, ptr %task117, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 1, ptr %22, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !92
  br label %if.end144

if.end144:                                        ; preds = %__here114, %__here
  %call145 = call zeroext i1 @kthread_should_stop() #8
  br i1 %call145, label %__here197, label %if.end228

__here197:                                        ; preds = %if.end144
  %24 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i348 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i348 to ptr
  %task200 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task200 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task200, align 8
  %task_state_change201 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 212
  %28 = ptrtoint ptr %task_state_change201 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 ptrtoint (ptr blockaddress(@xfsaild, %__here197) to i32), ptr %task_state_change201, align 4
  %29 = load ptr, ptr %task200, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 0, ptr %29, align 128
  %31 = ptrtoint ptr %ail_buf_list240 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %ail_buf_list240, align 4
  %cmp.i.not = icmp eq ptr %32, %ail_buf_list240
  br i1 %cmp.i.not, label %__here197.cond.end_crit_edge, label %lor.rhs

__here197.cond.end_crit_edge:                     ; preds = %__here197
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

lor.rhs:                                          ; preds = %__here197
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 8
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %34, i32 0, i32 66
  %35 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %m_opstate.i, align 4
  %37 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i.not = icmp eq i32 %37, 0
  br i1 %tobool.i.not, label %cond.false, label %lor.rhs.cond.end_crit_edge, !prof !81

lor.rhs.cond.end_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 623) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lor.rhs.cond.end_crit_edge, %__here197.cond.end_crit_edge
  %and.i = and i32 %5, 2048
  call void @xfs_buf_delwri_cancel(ptr noundef %ail_buf_list240) #8
  %38 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i349 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i349 to ptr
  %task.i350 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i350 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i350, align 8
  %flags1.i351 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %flags1.i351 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags1.i351, align 4
  %and.i352 = and i32 %43, -2049
  %or.i353 = or i32 %and.i352, %and.i
  store i32 %or.i353, ptr %flags1.i351, align 4
  ret i32 0

if.end228:                                        ; preds = %if.end144
  call void @_raw_spin_lock(ptr noundef %ail_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !93
  %44 = ptrtoint ptr %ail_head.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %ail_head.i, align 4
  %cmp.not.i = icmp eq ptr %45, %ail_head.i
  %tobool236.not401 = icmp eq ptr %45, null
  %tobool236.not = or i1 %cmp.not.i, %tobool236.not401
  br i1 %tobool236.not, label %land.lhs.true237, label %if.end228.if.end245_crit_edge

if.end228.if.end245_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end245

land.lhs.true237:                                 ; preds = %if.end228
  %46 = ptrtoint ptr %ail_target to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ail_target, align 8
  %48 = ptrtoint ptr %ail_target_prev to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %ail_target_prev, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %49)
  %cmp238 = icmp eq i64 %47, %49
  br i1 %cmp238, label %land.lhs.true239, label %land.lhs.true237.if.end245_crit_edge

land.lhs.true237.if.end245_crit_edge:             ; preds = %land.lhs.true237
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end245

land.lhs.true239:                                 ; preds = %land.lhs.true237
  %50 = ptrtoint ptr %ail_buf_list240 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %ail_buf_list240, align 4
  %cmp.i354.not = icmp eq ptr %51, %ail_buf_list240
  br i1 %cmp.i354.not, label %if.then243, label %land.lhs.true239.if.end245_crit_edge

land.lhs.true239.if.end245_crit_edge:             ; preds = %land.lhs.true239
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end245

if.then243:                                       ; preds = %land.lhs.true239
  call void @_raw_spin_unlock(ptr noundef %ail_lock) #8
  %52 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %57, 1073741824
  store i32 %or.i.i, ptr %flags.i.i, align 4
  call void @schedule() #8
  %58 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i1.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i1.i to ptr
  %task.i2.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %task.i2.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task.i2.i, align 8
  %flags.i3.i = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %flags.i3.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i3.i, align 4
  %and.i.i356 = and i32 %63, -1073741825
  store i32 %and.i.i356, ptr %flags.i3.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !94
  %64 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task.i.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags.i.i.i, align 4
  %and.i4.i.i = and i32 %69, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i4.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then243.if.end.i.i.i_crit_edge

if.then243.if.end.i.i.i_crit_edge:                ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #10
  call void @debug_check_no_locks_held() #8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then243.if.end.i.i.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 57) #8
  %70 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task.i.i.i.i, align 8
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %74 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i.i.i.i.i = icmp eq i32 %74, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.while.cond.backedge_crit_edge, label %freezing.exit.i.i.i.i, !prof !80

if.end.i.i.i.while.cond.backedge_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

freezing.exit.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call4.i.i.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %73) #8
  br i1 %call4.i.i.i.i.i, label %if.end.i.i.i.i, label %freezing.exit.i.i.i.i.while.cond.backedge_crit_edge, !prof !81

freezing.exit.i.i.i.i.while.cond.backedge_crit_edge: ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.end.i.i.i.i:                                   ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %xfsaild_push.exit, %if.end.i.i.i.i, %freezing.exit.i.i.i.i.while.cond.backedge_crit_edge, %if.end.i.i.i.while.cond.backedge_crit_edge
  %tout.0.be = phi i32 [ %tout.0.i, %xfsaild_push.exit ], [ 0, %if.end.i.i.i.while.cond.backedge_crit_edge ], [ 0, %freezing.exit.i.i.i.i.while.cond.backedge_crit_edge ], [ 0, %if.end.i.i.i.i ]
  br label %while.cond

if.end245:                                        ; preds = %land.lhs.true239.if.end245_crit_edge, %land.lhs.true237.if.end245_crit_edge, %if.end228.if.end245_crit_edge
  call void @_raw_spin_unlock(ptr noundef %ail_lock) #8
  br i1 %tobool.not, label %if.end245.__here302_crit_edge, label %if.else.i

if.end245.__here302_crit_edge:                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here302

if.else.i:                                        ; preds = %if.end245
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %tout.0) #8
  %75 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i357 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i357 to ptr
  %task.i.i358 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %task.i.i358 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %task.i.i358, align 8
  %flags.i.i359 = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %flags.i.i359 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags.i.i359, align 4
  %or.i.i360 = or i32 %80, 1073741824
  store i32 %or.i.i360, ptr %flags.i.i359, align 4
  %call.i = call i32 @schedule_timeout(i32 noundef %call2.i) #8
  %81 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i1.i361 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i1.i361 to ptr
  %task.i2.i362 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %task.i2.i362 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %task.i2.i362, align 8
  %flags.i3.i363 = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %flags.i3.i363 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags.i3.i363, align 4
  %and.i.i364 = and i32 %86, -1073741825
  store i32 %and.i.i364, ptr %flags.i3.i363, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !94
  %87 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i365 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i365 to ptr
  %task.i.i.i366 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %task.i.i.i366 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task.i.i.i366, align 8
  %flags.i.i.i367 = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %flags.i.i.i367 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags.i.i.i367, align 4
  %and.i4.i.i368 = and i32 %92, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i.i368)
  %tobool.not.i.i.i369 = icmp eq i32 %and.i4.i.i368, 0
  br i1 %tobool.not.i.i.i369, label %if.then.i.i.i370, label %if.else.i.if.end.i.i.i375_crit_edge

if.else.i.if.end.i.i.i375_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i375

if.then.i.i.i370:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @debug_check_no_locks_held() #8
  br label %if.end.i.i.i375

if.end.i.i.i375:                                  ; preds = %if.then.i.i.i370, %if.else.i.if.end.i.i.i375_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 57) #8
  %93 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i.i371 = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i.i.i371 to ptr
  %task.i.i.i.i372 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %task.i.i.i.i372 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %task.i.i.i.i372, align 8
  %call.i.i.i.i.i.i.i373 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %97 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i.i.i.i.i374 = icmp eq i32 %97, 0
  br i1 %tobool.not.i.i.i.i.i374, label %if.end.i.i.i375.__here302_crit_edge, label %freezing.exit.i.i.i.i377, !prof !80

if.end.i.i.i375.__here302_crit_edge:              ; preds = %if.end.i.i.i375
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here302

freezing.exit.i.i.i.i377:                         ; preds = %if.end.i.i.i375
  %call4.i.i.i.i.i376 = call zeroext i1 @freezing_slow_path(ptr noundef %96) #8
  br i1 %call4.i.i.i.i.i376, label %if.end.i.i.i.i379, label %freezing.exit.i.i.i.i377.__here302_crit_edge, !prof !81

freezing.exit.i.i.i.i377.__here302_crit_edge:     ; preds = %freezing.exit.i.i.i.i377
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here302

if.end.i.i.i.i379:                                ; preds = %freezing.exit.i.i.i.i377
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i.i.i378 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #8
  br label %__here302

__here302:                                        ; preds = %if.end.i.i.i.i379, %freezing.exit.i.i.i.i377.__here302_crit_edge, %if.end.i.i.i375.__here302_crit_edge, %if.end245.__here302_crit_edge
  %98 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i380 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i380 to ptr
  %task305 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %task305 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %task305, align 8
  %task_state_change306 = getelementptr inbounds %struct.task_struct, ptr %101, i32 0, i32 212
  %102 = ptrtoint ptr %task_state_change306 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 ptrtoint (ptr blockaddress(@xfsaild, %__here302) to i32), ptr %task_state_change306, align 4
  %103 = load ptr, ptr %task305, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile i32 0, ptr %103, align 128
  %105 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i381 = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i381 to ptr
  %task.i382 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %task.i382 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %task.i382, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %flags.i, align 4
  %and.i383 = and i32 %110, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i383)
  %tobool.not.i = icmp eq i32 %and.i383, 0
  br i1 %tobool.not.i, label %if.then.i, label %__here302.if.end.i387_crit_edge

__here302.if.end.i387_crit_edge:                  ; preds = %__here302
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i387

if.then.i:                                        ; preds = %__here302
  call void @__sanitizer_cov_trace_pc() #10
  call void @debug_check_no_locks_held() #8
  br label %if.end.i387

if.end.i387:                                      ; preds = %if.then.i, %__here302.if.end.i387_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 57) #8
  %111 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i384 = and i32 %111, -16384
  %112 = inttoptr i32 %and.i.i.i384 to ptr
  %task.i.i385 = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %task.i.i385 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %task.i.i385, align 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %115 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool.not.i.i.i386 = icmp eq i32 %115, 0
  br i1 %tobool.not.i.i.i386, label %if.end.i387.try_to_freeze.exit_crit_edge, label %freezing.exit.i.i, !prof !80

if.end.i387.try_to_freeze.exit_crit_edge:         ; preds = %if.end.i387
  call void @__sanitizer_cov_trace_pc() #10
  br label %try_to_freeze.exit

freezing.exit.i.i:                                ; preds = %if.end.i387
  %call4.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %114) #8
  br i1 %call4.i.i.i, label %if.end.i.i, label %freezing.exit.i.i.try_to_freeze.exit_crit_edge, !prof !81

freezing.exit.i.i.try_to_freeze.exit_crit_edge:   ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %try_to_freeze.exit

if.end.i.i:                                       ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #8
  br label %try_to_freeze.exit

try_to_freeze.exit:                               ; preds = %if.end.i.i, %freezing.exit.i.i.try_to_freeze.exit_crit_edge, %if.end.i387.try_to_freeze.exit_crit_edge
  %116 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cur.i) #8
  %118 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr inttoptr (i32 -1 to ptr), ptr %cur.i, align 4, !annotation !95
  %119 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !95
  %120 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !95
  %121 = ptrtoint ptr %ail_log_flush.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %ail_log_flush.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.not.i388 = icmp eq i32 %122, 0
  br i1 %tobool.not.i388, label %try_to_freeze.exit.if.end.i393_crit_edge, label %land.lhs.true.i

try_to_freeze.exit.if.end.i393_crit_edge:         ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i393

land.lhs.true.i:                                  ; preds = %try_to_freeze.exit
  %123 = ptrtoint ptr %ail_last_pushed_lsn.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %ail_last_pushed_lsn.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %124)
  %cmp.i389 = icmp eq i64 %124, 0
  br i1 %cmp.i389, label %land.lhs.true1.i, label %land.lhs.true.i.if.end.i393_crit_edge

land.lhs.true.i.if.end.i393_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i393

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %125 = ptrtoint ptr %ail_buf_list240 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile ptr, ptr %ail_buf_list240, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !96
  %cmp.i.not.i.i = icmp eq ptr %126, %ail_buf_list240
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i, label %land.lhs.true1.i.if.then.i392_crit_edge

land.lhs.true1.i.if.then.i392_crit_edge:          ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i392

list_empty_careful.exit.i:                        ; preds = %land.lhs.true1.i
  %127 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %128, %ail_buf_list240
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %list_empty_careful.exit.i.if.then.i392_crit_edge

list_empty_careful.exit.i.if.then.i392_crit_edge: ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i392

lor.lhs.false.i:                                  ; preds = %list_empty_careful.exit.i
  call void @_raw_spin_lock(ptr noundef %ail_lock) #8
  %129 = ptrtoint ptr %ail_head.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile ptr, ptr %ail_head.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %130, %ail_head.i
  %tobool.not2.i.i.i = icmp eq ptr %130, null
  %tobool.not.i.i.i390 = or i1 %cmp.not.i.i.i.i, %tobool.not2.i.i.i
  br i1 %tobool.not.i.i.i390, label %xfs_ail_min_lsn.exit.thread.i, label %xfs_ail_min_lsn.exit.i

xfs_ail_min_lsn.exit.thread.i:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock(ptr noundef %ail_lock) #8
  br label %if.end.i393

xfs_ail_min_lsn.exit.i:                           ; preds = %lor.lhs.false.i
  %li_lsn.i.i.i = getelementptr inbounds %struct.xfs_log_item, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %li_lsn.i.i.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %li_lsn.i.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %ail_lock) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %132)
  %tobool4.not.i = icmp eq i64 %132, 0
  br i1 %tobool4.not.i, label %xfs_ail_min_lsn.exit.i.if.end.i393_crit_edge, label %xfs_ail_min_lsn.exit.i.if.then.i392_crit_edge

xfs_ail_min_lsn.exit.i.if.then.i392_crit_edge:    ; preds = %xfs_ail_min_lsn.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i392

xfs_ail_min_lsn.exit.i.if.end.i393_crit_edge:     ; preds = %xfs_ail_min_lsn.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i393

if.then.i392:                                     ; preds = %xfs_ail_min_lsn.exit.i.if.then.i392_crit_edge, %list_empty_careful.exit.i.if.then.i392_crit_edge, %land.lhs.true1.i.if.then.i392_crit_edge
  %133 = ptrtoint ptr %ail_log_flush.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %ail_log_flush.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %134 = load ptr, ptr @xfsstats, align 4
  %135 = ptrtoint ptr %134 to i32
  %136 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i391 = and i32 %136, -16384
  %137 = inttoptr i32 %and.i.i391 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %139
  %140 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %141, %135
  %142 = inttoptr i32 %add.i to ptr
  %xs_push_ail_flush.i = getelementptr inbounds %struct.__xfsstats, ptr %142, i32 0, i32 47
  %143 = ptrtoint ptr %xs_push_ail_flush.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %xs_push_ail_flush.i, align 4
  %inc.i = add i32 %144, 1
  store i32 %inc.i, ptr %xs_push_ail_flush.i, align 4
  %m_stats.i = getelementptr inbounds %struct.xfs_mount, ptr %117, i32 0, i32 92
  %145 = ptrtoint ptr %m_stats.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %m_stats.i, align 4
  %147 = ptrtoint ptr %146 to i32
  %148 = load i32, ptr %cpu.i, align 4
  %arrayidx18.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %148
  %149 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx18.i, align 4
  %add19.i = add i32 %150, %147
  %151 = inttoptr i32 %add19.i to ptr
  %xs_push_ail_flush20.i = getelementptr inbounds %struct.__xfsstats, ptr %151, i32 0, i32 47
  %152 = ptrtoint ptr %xs_push_ail_flush20.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %xs_push_ail_flush20.i, align 4
  %inc21.i = add i32 %153, 1
  store i32 %inc21.i, ptr %xs_push_ail_flush20.i, align 4
  %m_log.i = getelementptr inbounds %struct.xfs_mount, ptr %117, i32 0, i32 8
  %154 = ptrtoint ptr %m_log.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %m_log.i, align 4
  call void @xlog_cil_flush(ptr noundef %155) #8
  br label %if.end.i393

if.end.i393:                                      ; preds = %if.then.i392, %xfs_ail_min_lsn.exit.i.if.end.i393_crit_edge, %xfs_ail_min_lsn.exit.thread.i, %land.lhs.true.i.if.end.i393_crit_edge, %try_to_freeze.exit.if.end.i393_crit_edge
  call void @_raw_spin_lock(ptr noundef %ail_lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !97
  %156 = ptrtoint ptr %ail_target to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %ail_target, align 8
  %158 = ptrtoint ptr %ail_target_prev to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %157, ptr %ail_target_prev, align 8
  %159 = ptrtoint ptr %ail_last_pushed_lsn.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %ail_last_pushed_lsn.i, align 8
  call fastcc void @xfs_trans_ail_cursor_init(ptr noundef %data, ptr noundef nonnull %cur.i) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %160)
  %cmp.i283.i = icmp eq i64 %160, 0
  br i1 %cmp.i283.i, label %if.then.i.i, label %if.end.i.i394

if.then.i.i:                                      ; preds = %if.end.i393
  %161 = ptrtoint ptr %ail_head.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile ptr, ptr %ail_head.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %162, %ail_head.i
  br i1 %cmp.not.i.i.i, label %if.then.i.i.out_done.i_crit_edge, label %if.then.i.i.out.i.i_crit_edge

if.then.i.i.out.i.i_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i.i

if.then.i.i.out_done.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_done.i

if.end.i.i394:                                    ; preds = %if.end.i393
  %163 = lshr i64 %160, 32
  %conv2.i.i.i = trunc i64 %163 to i32
  %conv12.i.i.i = trunc i64 %160 to i32
  %164 = ptrtoint ptr %ail_head.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %lip.0.i355.i = load ptr, ptr %ail_head.i, align 8
  %cmp2.not.i356.i = icmp eq ptr %lip.0.i355.i, %ail_head.i
  br i1 %cmp2.not.i356.i, label %if.end.i.i394.out_done.i_crit_edge, label %if.end.i.i394.for.body.i.i_crit_edge

if.end.i.i394.for.body.i.i_crit_edge:             ; preds = %if.end.i.i394
  br label %for.body.i.i

if.end.i.i394.out_done.i_crit_edge:               ; preds = %if.end.i.i394
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_done.i

for.body.i.i:                                     ; preds = %_lsn_cmp.exit.i.i.for.body.i.i_crit_edge, %if.end.i.i394.for.body.i.i_crit_edge
  %lip.0.i357.i = phi ptr [ %lip.0.i.i, %_lsn_cmp.exit.i.i.for.body.i.i_crit_edge ], [ %lip.0.i355.i, %if.end.i.i394.for.body.i.i_crit_edge ]
  %li_lsn.i.i = getelementptr inbounds %struct.xfs_log_item, ptr %lip.0.i357.i, i32 0, i32 2
  %165 = ptrtoint ptr %li_lsn.i.i to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %li_lsn.i.i, align 8
  %167 = lshr i64 %166, 32
  %conv.i.i.i = trunc i64 %167 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %conv2.i.i.i)
  %cmp.not.i26.i.i = icmp eq i32 %conv.i.i.i, %conv2.i.i.i
  br i1 %cmp.not.i26.i.i, label %if.end.i.i.i395, label %if.then.i.i284.i

if.then.i.i284.i:                                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %conv2.i.i.i)
  %cmp8.i.i.i = icmp ult i32 %conv.i.i.i, %conv2.i.i.i
  br i1 %cmp8.i.i.i, label %if.then.i.i284.i._lsn_cmp.exit.i.i_crit_edge, label %if.then.i.i284.i.out.i.i_crit_edge

if.then.i.i284.i.out.i.i_crit_edge:               ; preds = %if.then.i.i284.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i.i

if.then.i.i284.i._lsn_cmp.exit.i.i_crit_edge:     ; preds = %if.then.i.i284.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_lsn_cmp.exit.i.i

if.end.i.i.i395:                                  ; preds = %for.body.i.i
  %conv11.i.i.i = trunc i64 %166 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i.i.i, i32 %conv12.i.i.i)
  %cmp18.i.i.i = icmp ult i32 %conv11.i.i.i, %conv12.i.i.i
  br i1 %cmp18.i.i.i, label %if.end.i.i.i395._lsn_cmp.exit.i.i_crit_edge, label %if.end.i.i.i395.out.i.i_crit_edge

if.end.i.i.i395.out.i.i_crit_edge:                ; preds = %if.end.i.i.i395
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i.i

if.end.i.i.i395._lsn_cmp.exit.i.i_crit_edge:      ; preds = %if.end.i.i.i395
  call void @__sanitizer_cov_trace_pc() #10
  br label %_lsn_cmp.exit.i.i

_lsn_cmp.exit.i.i:                                ; preds = %if.end.i.i.i395._lsn_cmp.exit.i.i_crit_edge, %if.then.i.i284.i._lsn_cmp.exit.i.i_crit_edge
  %168 = ptrtoint ptr %lip.0.i357.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %lip.0.i.i = load ptr, ptr %lip.0.i357.i, align 8
  %cmp2.not.i.i = icmp eq ptr %lip.0.i.i, %ail_head.i
  br i1 %cmp2.not.i.i, label %_lsn_cmp.exit.i.i.out_done.i_crit_edge, label %_lsn_cmp.exit.i.i.for.body.i.i_crit_edge

_lsn_cmp.exit.i.i.for.body.i.i_crit_edge:         ; preds = %_lsn_cmp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

_lsn_cmp.exit.i.i.out_done.i_crit_edge:           ; preds = %_lsn_cmp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_done.i

out.i.i:                                          ; preds = %if.end.i.i.i395.out.i.i_crit_edge, %if.then.i.i284.i.out.i.i_crit_edge, %if.then.i.i.out.i.i_crit_edge
  %lip.1.i.i = phi ptr [ %162, %if.then.i.i.out.i.i_crit_edge ], [ %lip.0.i357.i, %if.then.i.i284.i.out.i.i_crit_edge ], [ %lip.0.i357.i, %if.end.i.i.i395.out.i.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %lip.1.i.i, null
  br i1 %tobool.not.i.i, label %out.i.i.out_done.i_crit_edge, label %do.body36.i

out.i.i.out_done.i_crit_edge:                     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_done.i

do.body36.i:                                      ; preds = %out.i.i
  %169 = ptrtoint ptr %lip.1.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %lip.1.i.i, align 8
  %cmp.i.i.i = icmp eq ptr %170, %ail_head.i
  %..i.i.i = select i1 %cmp.i.i.i, ptr null, ptr %170
  %171 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %..i.i.i, ptr %7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %172 = load ptr, ptr @xfsstats, align 4
  %173 = ptrtoint ptr %172 to i32
  %174 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i285.i = and i32 %174, -16384
  %175 = inttoptr i32 %and.i285.i to ptr
  %cpu44.i = getelementptr inbounds %struct.thread_info, ptr %175, i32 0, i32 3
  %176 = ptrtoint ptr %cpu44.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %cpu44.i, align 4
  %arrayidx45.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %177
  %178 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx45.i, align 4
  %add46.i = add i32 %179, %173
  %180 = inttoptr i32 %add46.i to ptr
  %xs_push_ail.i = getelementptr inbounds %struct.__xfsstats, ptr %180, i32 0, i32 40
  %181 = ptrtoint ptr %xs_push_ail.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %xs_push_ail.i, align 8
  %inc47.i = add i32 %182, 1
  store i32 %inc47.i, ptr %xs_push_ail.i, align 8
  %m_stats54.i = getelementptr inbounds %struct.xfs_mount, ptr %117, i32 0, i32 92
  %183 = ptrtoint ptr %m_stats54.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %m_stats54.i, align 4
  %185 = ptrtoint ptr %184 to i32
  %186 = load i32, ptr %cpu44.i, align 4
  %arrayidx59.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %186
  %187 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx59.i, align 4
  %add60.i = add i32 %188, %185
  %189 = inttoptr i32 %add60.i to ptr
  %xs_push_ail61.i = getelementptr inbounds %struct.__xfsstats, ptr %189, i32 0, i32 40
  %190 = ptrtoint ptr %xs_push_ail61.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %xs_push_ail61.i, align 8
  %inc62.i = add i32 %191, 1
  store i32 %inc62.i, ptr %xs_push_ail61.i, align 8
  %192 = lshr i64 %157, 32
  %conv2.i.i = trunc i64 %192 to i32
  %conv12.i.i = trunc i64 %157 to i32
  br label %while.cond.i

while.cond.i:                                     ; preds = %cleanup.i, %do.body36.i
  %count.0.i = phi i32 [ 0, %do.body36.i ], [ %inc199.i, %cleanup.i ]
  %flushing.0.i = phi i32 [ 0, %do.body36.i ], [ %flushing.1.i, %cleanup.i ]
  %stuck.0.i = phi i32 [ 0, %do.body36.i ], [ %stuck.1.i, %cleanup.i ]
  %lip.0.i = phi ptr [ %lip.1.i.i, %do.body36.i ], [ %lip.0.i302.i, %cleanup.i ]
  %lsn.0.in.i = getelementptr inbounds %struct.xfs_log_item, ptr %lip.0.i, i32 0, i32 2
  %193 = ptrtoint ptr %lsn.0.in.i to i32
  call void @__asan_load8_noabort(i32 %193)
  %lsn.0.i = load i64, ptr %lsn.0.in.i, align 8
  %194 = lshr i64 %lsn.0.i, 32
  %conv.i.i = trunc i64 %194 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %conv2.i.i)
  %cmp.not.i.i = icmp eq i32 %conv.i.i, %conv2.i.i
  br i1 %cmp.not.i.i, label %if.end.i287.i, label %if.then.i286.i

if.then.i286.i:                                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %conv2.i.i)
  %cmp8.i.i = icmp ult i32 %conv.i.i, %conv2.i.i
  br i1 %cmp8.i.i, label %if.then.i286.i.while.body.i_crit_edge, label %if.then.i286.i.out_done.loopexit.split.loop.exit.i_crit_edge

if.then.i286.i.while.body.i_crit_edge:            ; preds = %if.then.i286.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.then.i286.i.out_done.loopexit.split.loop.exit.i_crit_edge: ; preds = %if.then.i286.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.le487 = trunc i64 %194 to i32
  %.pre = trunc i64 %lsn.0.i to i32
  br label %out_done.i

if.end.i287.i:                                    ; preds = %while.cond.i
  %conv11.i.i = trunc i64 %lsn.0.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i.i, i32 %conv12.i.i)
  %.not.i = icmp ugt i32 %conv11.i.i, %conv12.i.i
  br i1 %.not.i, label %out_done.i.loopexit, label %if.end.i287.i.while.body.i_crit_edge

if.end.i287.i.while.body.i_crit_edge:             ; preds = %if.end.i287.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i287.i.while.body.i_crit_edge, %if.then.i286.i.while.body.i_crit_edge
  %195 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %data, align 8
  %call.i.i = call zeroext i1 @xfs_errortag_test(ptr noundef %196, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 401, i32 noundef 30) #8
  br i1 %call.i.i, label %while.body.i.do.body135.i_crit_edge, label %if.end.i290.i

while.body.i.do.body135.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body135.i

if.end.i290.i:                                    ; preds = %while.body.i
  %li_ops.i.i = getelementptr inbounds %struct.xfs_log_item, ptr %lip.0.i, i32 0, i32 9
  %197 = ptrtoint ptr %li_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %li_ops.i.i, align 4
  %iop_push.i.i = getelementptr inbounds %struct.xfs_item_ops, ptr %198, i32 0, i32 5
  %199 = ptrtoint ptr %iop_push.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %iop_push.i.i, align 4
  %tobool.not.i289.i = icmp eq ptr %200, null
  br i1 %tobool.not.i289.i, label %if.end.i290.i.do.body135.i_crit_edge, label %if.end2.i.i

if.end.i290.i.do.body135.i_crit_edge:             ; preds = %if.end.i290.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body135.i

if.end2.i.i:                                      ; preds = %if.end.i290.i
  %li_flags.i.i = getelementptr inbounds %struct.xfs_log_item, ptr %lip.0.i, i32 0, i32 6
  %201 = ptrtoint ptr %li_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load volatile i32, ptr %li_flags.i.i, align 4
  %203 = and i32 %202, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool4.not.i.i = icmp eq i32 %203, 0
  br i1 %tobool4.not.i.i, label %if.end7.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end2.i.i
  %li_buf.i.i.i = getelementptr inbounds %struct.xfs_log_item, ptr %lip.0.i, i32 0, i32 7
  %204 = ptrtoint ptr %li_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %li_buf.i.i.i, align 8
  %call.i.i.i = call i32 @xfs_buf_trylock(ptr noundef %205) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i291.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i291.i, label %if.then5.i.i.do.body169.i_crit_edge, label %if.end.i.i292.i

if.then5.i.i.do.body169.i_crit_edge:              ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body169.i

if.end.i.i292.i:                                  ; preds = %if.then5.i.i
  %call1.i.i.i = call zeroext i1 @xfs_buf_delwri_queue(ptr noundef %205, ptr noundef %ail_buf_list240) #8
  br i1 %call1.i.i.i, label %if.end3.i.i.i, label %if.end.i.i292.i.cleanup.sink.split.i.i.i_crit_edge

if.end.i.i292.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %if.end.i.i292.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i292.i
  %b_li_list.i.i.i = getelementptr inbounds %struct.xfs_buf, ptr %205, i32 0, i32 20
  %206 = ptrtoint ptr %b_li_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %.pn23.i.i.i = load ptr, ptr %b_li_list.i.i.i, align 4
  %cmp.not24.i.i.i = icmp eq ptr %.pn23.i.i.i, %b_li_list.i.i.i
  br i1 %cmp.not24.i.i.i, label %if.end3.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end3.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end3.i.i.i
  %b_flags.i.i.i = getelementptr inbounds %struct.xfs_buf, ptr %205, i32 0, i32 5
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %.pn25.i.i.i = phi ptr [ %.pn23.i.i.i, %for.body.lr.ph.i.i.i ], [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %207 = ptrtoint ptr %b_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %b_flags.i.i.i, align 4
  %and.i.i.i396 = and i32 %208, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i396)
  %tobool5.not.i.i.i = icmp eq i32 %and.i.i.i396, 0
  br i1 %tobool5.not.i.i.i, label %if.else.i.i.i, label %if.then6.i.i.i

if.then6.i.i.i:                                   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %li_flags.i.i.i = getelementptr i8, ptr %.pn25.i.i.i, i32 -8
  call void @_clear_bit(i32 noundef 2, ptr noundef %li_flags.i.i.i) #8
  br label %for.inc.i.i.i

if.else.i.i.i:                                    ; preds = %for.body.i.i.i
  %li_buf.i.i.i.i = getelementptr i8, ptr %.pn25.i.i.i, i32 -4
  %209 = ptrtoint ptr %li_buf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %li_buf.i.i.i.i, align 8
  %li_flags.i.i.i.i = getelementptr i8, ptr %.pn25.i.i.i, i32 -8
  %211 = ptrtoint ptr %li_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load volatile i32, ptr %li_flags.i.i.i.i, align 4
  %and1.i.i.i.i.i = and i32 %212, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %cond.false.i.i.i.i, label %if.else.i.i.i.do.body.i.i.i.i_crit_edge, !prof !81

if.else.i.i.i.do.body.i.i.i.i_crit_edge:          ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

cond.false.i.i.i.i:                               ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 148) #8
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %cond.false.i.i.i.i, %if.else.i.i.i.do.body.i.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %213 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool3.not.i.i.i.i = icmp eq i32 %213, 0
  br i1 %tobool3.not.i.i.i.i, label %do.body.i.i.i.i.if.end.i.i.i.i398_crit_edge, label %land.rhs.i.i.i.i

do.body.i.i.i.i.if.end.i.i.i.i398_crit_edge:      ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i398

land.rhs.i.i.i.i:                                 ; preds = %do.body.i.i.i.i
  %li_ailp.i.i.i.i = getelementptr i8, ptr %.pn25.i.i.i, i32 -16
  %214 = ptrtoint ptr %li_ailp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %li_ailp.i.i.i.i, align 4
  %dep_map.i.i.i.i = getelementptr inbounds %struct.xfs_ail, ptr %215, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i.i.i.i.i397 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i397)
  %cmp.not.i.i.i293.i = icmp eq i32 %call.i.i.i.i.i397, 0
  br i1 %cmp.not.i.i.i293.i, label %do.end.i.i.i.i, label %land.rhs.i.i.i.i.if.end.i.i.i.i398_crit_edge, !prof !81

land.rhs.i.i.i.i.if.end.i.i.i.i398_crit_edge:     ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i398

do.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 149, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i.i.i398

if.end.i.i.i.i398:                                ; preds = %do.end.i.i.i.i, %land.rhs.i.i.i.i.if.end.i.i.i.i398_crit_edge, %do.body.i.i.i.i.if.end.i.i.i.i398_crit_edge
  %call34.i.i.i.i = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %li_flags.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i.i.i)
  %tobool35.not.i.i.i.i = icmp eq i32 %call34.i.i.i.i, 0
  br i1 %tobool35.not.i.i.i.i, label %if.end.i.i.i.i398.for.inc.i.i.i_crit_edge, label %if.then36.i.i.i.i

if.end.i.i.i.i398.for.inc.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i398
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

if.then36.i.i.i.i:                                ; preds = %if.end.i.i.i.i398
  call void @__sanitizer_cov_trace_pc() #10
  %216 = ptrtoint ptr %li_buf.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr null, ptr %li_buf.i.i.i.i, align 8
  call void @xfs_buf_rele(ptr noundef %210) #8
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then36.i.i.i.i, %if.end.i.i.i.i398.for.inc.i.i.i_crit_edge, %if.then6.i.i.i
  %217 = ptrtoint ptr %.pn25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %.pn.i.i.i = load ptr, ptr %.pn25.i.i.i, align 4
  %cmp.not.i.i294.i = icmp eq ptr %.pn.i.i.i, %b_li_list.i.i.i
  br i1 %cmp.not.i.i294.i, label %for.inc.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i.i.i

cleanup.sink.split.i.i.i:                         ; preds = %for.inc.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %if.end3.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %if.end.i.i292.i.cleanup.sink.split.i.i.i_crit_edge
  %retval.0.ph.i.i.i = phi i32 [ 3, %if.end.i.i292.i.cleanup.sink.split.i.i.i_crit_edge ], [ 0, %if.end3.i.i.i.cleanup.sink.split.i.i.i_crit_edge ], [ 0, %for.inc.i.i.i.cleanup.sink.split.i.i.i_crit_edge ]
  call void @xfs_buf_unlock(ptr noundef %205) #8
  br label %xfsaild_push_item.exit.i

if.end7.i.i:                                      ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i.i = call i32 %200(ptr noundef nonnull %lip.0.i, ptr noundef %ail_buf_list240) #8
  br label %xfsaild_push_item.exit.i

xfsaild_push_item.exit.i:                         ; preds = %if.end7.i.i, %cleanup.sink.split.i.i.i
  %retval.0.i295.i = phi i32 [ %call11.i.i, %if.end7.i.i ], [ %retval.0.ph.i.i.i, %cleanup.sink.split.i.i.i ]
  %218 = zext i32 %retval.0.i295.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %218, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i295.i, label %sw.default.i [
    i32 0, label %do.body70.i
    i32 3, label %do.body102.i
    i32 1, label %xfsaild_push_item.exit.i.do.body135.i_crit_edge
    i32 2, label %xfsaild_push_item.exit.i.do.body169.i_crit_edge
  ]

xfsaild_push_item.exit.i.do.body169.i_crit_edge:  ; preds = %xfsaild_push_item.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body169.i

xfsaild_push_item.exit.i.do.body135.i_crit_edge:  ; preds = %xfsaild_push_item.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body135.i

do.body70.i:                                      ; preds = %xfsaild_push_item.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %219 = load ptr, ptr @xfsstats, align 4
  %220 = ptrtoint ptr %219 to i32
  %221 = ptrtoint ptr %cpu44.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %cpu44.i, align 4
  %arrayidx79.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %222
  %223 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arrayidx79.i, align 4
  %add80.i = add i32 %224, %220
  %225 = inttoptr i32 %add80.i to ptr
  %xs_push_ail_success.i = getelementptr inbounds %struct.__xfsstats, ptr %225, i32 0, i32 41
  %226 = ptrtoint ptr %xs_push_ail_success.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %xs_push_ail_success.i, align 4
  %inc81.i = add i32 %227, 1
  store i32 %inc81.i, ptr %xs_push_ail_success.i, align 4
  %228 = ptrtoint ptr %m_stats54.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %m_stats54.i, align 4
  %230 = ptrtoint ptr %229 to i32
  %231 = load i32, ptr %cpu44.i, align 4
  %arrayidx93.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %231
  %232 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx93.i, align 4
  %add94.i = add i32 %233, %230
  %234 = inttoptr i32 %add94.i to ptr
  %xs_push_ail_success95.i = getelementptr inbounds %struct.__xfsstats, ptr %234, i32 0, i32 41
  %235 = ptrtoint ptr %xs_push_ail_success95.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %xs_push_ail_success95.i, align 4
  %inc96.i = add i32 %236, 1
  store i32 %inc96.i, ptr %xs_push_ail_success95.i, align 4
  call fastcc void @trace_xfs_ail_push(ptr noundef nonnull %lip.0.i) #8
  %237 = ptrtoint ptr %ail_last_pushed_lsn.i to i32
  call void @__asan_store8_noabort(i32 %237)
  store i64 %lsn.0.i, ptr %ail_last_pushed_lsn.i, align 8
  br label %sw.epilog.i

do.body102.i:                                     ; preds = %xfsaild_push_item.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %238 = load ptr, ptr @xfsstats, align 4
  %239 = ptrtoint ptr %238 to i32
  %240 = ptrtoint ptr %cpu44.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %cpu44.i, align 4
  %arrayidx111.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %241
  %242 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx111.i, align 4
  %add112.i = add i32 %243, %239
  %244 = inttoptr i32 %add112.i to ptr
  %xs_push_ail_flushing.i = getelementptr inbounds %struct.__xfsstats, ptr %244, i32 0, i32 45
  %245 = ptrtoint ptr %xs_push_ail_flushing.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %xs_push_ail_flushing.i, align 4
  %inc113.i = add i32 %246, 1
  store i32 %inc113.i, ptr %xs_push_ail_flushing.i, align 4
  %247 = ptrtoint ptr %m_stats54.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %m_stats54.i, align 4
  %249 = ptrtoint ptr %248 to i32
  %250 = load i32, ptr %cpu44.i, align 4
  %arrayidx125.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %250
  %251 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %arrayidx125.i, align 4
  %add126.i = add i32 %252, %249
  %253 = inttoptr i32 %add126.i to ptr
  %xs_push_ail_flushing127.i = getelementptr inbounds %struct.__xfsstats, ptr %253, i32 0, i32 45
  %254 = ptrtoint ptr %xs_push_ail_flushing127.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %xs_push_ail_flushing127.i, align 4
  %inc128.i = add i32 %255, 1
  store i32 %inc128.i, ptr %xs_push_ail_flushing127.i, align 4
  call fastcc void @trace_xfs_ail_flushing(ptr noundef nonnull %lip.0.i) #8
  %inc131.i = add i32 %flushing.0.i, 1
  %256 = ptrtoint ptr %ail_last_pushed_lsn.i to i32
  call void @__asan_store8_noabort(i32 %256)
  store i64 %lsn.0.i, ptr %ail_last_pushed_lsn.i, align 8
  br label %sw.epilog.i

do.body135.i:                                     ; preds = %xfsaild_push_item.exit.i.do.body135.i_crit_edge, %if.end.i290.i.do.body135.i_crit_edge, %while.body.i.do.body135.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %257 = load ptr, ptr @xfsstats, align 4
  %258 = ptrtoint ptr %257 to i32
  %259 = ptrtoint ptr %cpu44.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %cpu44.i, align 4
  %arrayidx144.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %260
  %261 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx144.i, align 4
  %add145.i = add i32 %262, %258
  %263 = inttoptr i32 %add145.i to ptr
  %xs_push_ail_pinned.i = getelementptr inbounds %struct.__xfsstats, ptr %263, i32 0, i32 43
  %264 = ptrtoint ptr %xs_push_ail_pinned.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %xs_push_ail_pinned.i, align 4
  %inc146.i = add i32 %265, 1
  store i32 %inc146.i, ptr %xs_push_ail_pinned.i, align 4
  %266 = ptrtoint ptr %m_stats54.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %m_stats54.i, align 4
  %268 = ptrtoint ptr %267 to i32
  %269 = load i32, ptr %cpu44.i, align 4
  %arrayidx158.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %269
  %270 = ptrtoint ptr %arrayidx158.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx158.i, align 4
  %add159.i = add i32 %271, %268
  %272 = inttoptr i32 %add159.i to ptr
  %xs_push_ail_pinned160.i = getelementptr inbounds %struct.__xfsstats, ptr %272, i32 0, i32 43
  %273 = ptrtoint ptr %xs_push_ail_pinned160.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %xs_push_ail_pinned160.i, align 4
  %inc161.i = add i32 %274, 1
  store i32 %inc161.i, ptr %xs_push_ail_pinned160.i, align 4
  call fastcc void @trace_xfs_ail_pinned(ptr noundef nonnull %lip.0.i) #8
  %inc164.i = add i32 %stuck.0.i, 1
  %275 = ptrtoint ptr %ail_log_flush.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %ail_log_flush.i, align 8
  %inc166.i = add i32 %276, 1
  store i32 %inc166.i, ptr %ail_log_flush.i, align 8
  br label %sw.epilog.i

do.body169.i:                                     ; preds = %xfsaild_push_item.exit.i.do.body169.i_crit_edge, %if.then5.i.i.do.body169.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %277 = load ptr, ptr @xfsstats, align 4
  %278 = ptrtoint ptr %277 to i32
  %279 = ptrtoint ptr %cpu44.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %cpu44.i, align 4
  %arrayidx178.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %280
  %281 = ptrtoint ptr %arrayidx178.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %arrayidx178.i, align 4
  %add179.i = add i32 %282, %278
  %283 = inttoptr i32 %add179.i to ptr
  %xs_push_ail_locked.i = getelementptr inbounds %struct.__xfsstats, ptr %283, i32 0, i32 44
  %284 = ptrtoint ptr %xs_push_ail_locked.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %xs_push_ail_locked.i, align 8
  %inc180.i = add i32 %285, 1
  store i32 %inc180.i, ptr %xs_push_ail_locked.i, align 8
  %286 = ptrtoint ptr %m_stats54.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %m_stats54.i, align 4
  %288 = ptrtoint ptr %287 to i32
  %289 = load i32, ptr %cpu44.i, align 4
  %arrayidx192.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %289
  %290 = ptrtoint ptr %arrayidx192.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx192.i, align 4
  %add193.i = add i32 %291, %288
  %292 = inttoptr i32 %add193.i to ptr
  %xs_push_ail_locked194.i = getelementptr inbounds %struct.__xfsstats, ptr %292, i32 0, i32 44
  %293 = ptrtoint ptr %xs_push_ail_locked194.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %xs_push_ail_locked194.i, align 8
  %inc195.i = add i32 %294, 1
  store i32 %inc195.i, ptr %xs_push_ail_locked194.i, align 8
  call fastcc void @trace_xfs_ail_locked(ptr noundef nonnull %lip.0.i) #8
  %inc198.i = add i32 %stuck.0.i, 1
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %xfsaild_push_item.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 514) #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %do.body169.i, %do.body135.i, %do.body102.i, %do.body70.i
  %flushing.1.i = phi i32 [ %flushing.0.i, %sw.default.i ], [ %flushing.0.i, %do.body169.i ], [ %flushing.0.i, %do.body135.i ], [ %inc131.i, %do.body102.i ], [ %flushing.0.i, %do.body70.i ]
  %stuck.1.i = phi i32 [ %stuck.0.i, %sw.default.i ], [ %inc198.i, %do.body169.i ], [ %inc164.i, %do.body135.i ], [ %stuck.0.i, %do.body102.i ], [ %stuck.0.i, %do.body70.i ]
  %inc199.i = add i32 %count.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %stuck.1.i)
  %cmp200.i = icmp sgt i32 %stuck.1.i, 100
  br i1 %cmp200.i, label %out_done.loopexit.split.loop.exit358.i, label %if.end202.i

if.end202.i:                                      ; preds = %sw.epilog.i
  %295 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %7, align 4
  %297 = ptrtoint ptr %296 to i32
  %and.i297.i = and i32 %297, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i297.i)
  %tobool.not.i298.i = icmp eq i32 %and.i297.i, 0
  br i1 %tobool.not.i298.i, label %if.end202.i.if.end.i303.i_crit_edge, label %if.then.i301.i

if.end202.i.if.end.i303.i_crit_edge:              ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i303.i

if.then.i301.i:                                   ; preds = %if.end202.i
  %298 = ptrtoint ptr %ail_head.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load volatile ptr, ptr %ail_head.i, align 4
  %cmp.not.i.i300.i = icmp eq ptr %299, %ail_head.i
  br i1 %cmp.not.i.i300.i, label %out_done.loopexit.split.loop.exit370.i, label %if.then.i301.i.if.end.i303.i_crit_edge

if.then.i301.i.if.end.i303.i_crit_edge:           ; preds = %if.then.i301.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i303.i

if.end.i303.i:                                    ; preds = %if.then.i301.i.if.end.i303.i_crit_edge, %if.end202.i.if.end.i303.i_crit_edge
  %lip.0.i302.i = phi ptr [ %299, %if.then.i301.i.if.end.i303.i_crit_edge ], [ %296, %if.end202.i.if.end.i303.i_crit_edge ]
  %tobool1.not.i.i = icmp eq ptr %lip.0.i302.i, null
  br i1 %tobool1.not.i.i, label %out_done.loopexit.split.loop.exit364.i, label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i303.i
  call void @__sanitizer_cov_trace_pc() #10
  %300 = ptrtoint ptr %lip.0.i302.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %lip.0.i302.i, align 8
  %cmp.i.i304.i = icmp eq ptr %301, %ail_head.i
  %..i.i305.i = select i1 %cmp.i.i304.i, ptr null, ptr %301
  %302 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %..i.i305.i, ptr %7, align 4
  br label %while.cond.i

out_done.loopexit.split.loop.exit358.i:           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.le483 = trunc i64 %194 to i32
  %extract.t343.le.i = trunc i64 %lsn.0.i to i32
  br label %out_done.i

out_done.loopexit.split.loop.exit364.i:           ; preds = %if.end.i303.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.le = trunc i64 %194 to i32
  %extract.t344.le.i = trunc i64 %lsn.0.i to i32
  br label %out_done.i

out_done.loopexit.split.loop.exit370.i:           ; preds = %if.then.i301.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.le481 = trunc i64 %194 to i32
  %extract.t345.le.i = trunc i64 %lsn.0.i to i32
  br label %out_done.i

out_done.i.loopexit:                              ; preds = %if.end.i287.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.le485 = trunc i64 %194 to i32
  %conv11.i.i.le = trunc i64 %lsn.0.i to i32
  br label %out_done.i

out_done.i:                                       ; preds = %out_done.i.loopexit, %out_done.loopexit.split.loop.exit370.i, %out_done.loopexit.split.loop.exit364.i, %out_done.loopexit.split.loop.exit358.i, %if.then.i286.i.out_done.loopexit.split.loop.exit.i_crit_edge, %out.i.i.out_done.i_crit_edge, %_lsn_cmp.exit.i.i.out_done.i_crit_edge, %if.end.i.i394.out_done.i_crit_edge, %if.then.i.i.out_done.i_crit_edge
  %count.1.i = phi i32 [ 0, %out.i.i.out_done.i_crit_edge ], [ 0, %if.then.i.i.out_done.i_crit_edge ], [ %inc199.i, %out_done.loopexit.split.loop.exit358.i ], [ %inc199.i, %out_done.loopexit.split.loop.exit364.i ], [ %inc199.i, %out_done.loopexit.split.loop.exit370.i ], [ 0, %if.end.i.i394.out_done.i_crit_edge ], [ %count.0.i, %if.then.i286.i.out_done.loopexit.split.loop.exit.i_crit_edge ], [ %count.0.i, %out_done.i.loopexit ], [ 0, %_lsn_cmp.exit.i.i.out_done.i_crit_edge ]
  %flushing.2.i = phi i32 [ 0, %out.i.i.out_done.i_crit_edge ], [ 0, %if.then.i.i.out_done.i_crit_edge ], [ %flushing.1.i, %out_done.loopexit.split.loop.exit358.i ], [ %flushing.1.i, %out_done.loopexit.split.loop.exit364.i ], [ %flushing.1.i, %out_done.loopexit.split.loop.exit370.i ], [ 0, %if.end.i.i394.out_done.i_crit_edge ], [ %flushing.0.i, %if.then.i286.i.out_done.loopexit.split.loop.exit.i_crit_edge ], [ %flushing.0.i, %out_done.i.loopexit ], [ 0, %_lsn_cmp.exit.i.i.out_done.i_crit_edge ]
  %stuck.2.i = phi i32 [ 0, %out.i.i.out_done.i_crit_edge ], [ 0, %if.then.i.i.out_done.i_crit_edge ], [ %stuck.1.i, %out_done.loopexit.split.loop.exit358.i ], [ %stuck.1.i, %out_done.loopexit.split.loop.exit364.i ], [ %stuck.1.i, %out_done.loopexit.split.loop.exit370.i ], [ 0, %if.end.i.i394.out_done.i_crit_edge ], [ %stuck.0.i, %if.then.i286.i.out_done.loopexit.split.loop.exit.i_crit_edge ], [ %stuck.0.i, %out_done.i.loopexit ], [ 0, %_lsn_cmp.exit.i.i.out_done.i_crit_edge ]
  %lsn.2.off0.i = phi i32 [ -1, %out.i.i.out_done.i_crit_edge ], [ -1, %if.then.i.i.out_done.i_crit_edge ], [ %extract.t343.le.i, %out_done.loopexit.split.loop.exit358.i ], [ %extract.t344.le.i, %out_done.loopexit.split.loop.exit364.i ], [ %extract.t345.le.i, %out_done.loopexit.split.loop.exit370.i ], [ -1, %if.end.i.i394.out_done.i_crit_edge ], [ %.pre, %if.then.i286.i.out_done.loopexit.split.loop.exit.i_crit_edge ], [ %conv11.i.i.le, %out_done.i.loopexit ], [ -1, %_lsn_cmp.exit.i.i.out_done.i_crit_edge ]
  %lsn.2.off32.i = phi i32 [ -1, %out.i.i.out_done.i_crit_edge ], [ -1, %if.then.i.i.out_done.i_crit_edge ], [ %conv.i.i.le483, %out_done.loopexit.split.loop.exit358.i ], [ %conv.i.i.le, %out_done.loopexit.split.loop.exit364.i ], [ %conv.i.i.le481, %out_done.loopexit.split.loop.exit370.i ], [ -1, %if.end.i.i394.out_done.i_crit_edge ], [ %conv.i.i.le487, %if.then.i286.i.out_done.loopexit.split.loop.exit.i_crit_edge ], [ %conv.i.i.le485, %out_done.i.loopexit ], [ -1, %_lsn_cmp.exit.i.i.out_done.i_crit_edge ]
  %303 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr null, ptr %7, align 4
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %cur.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i307.i, label %out_done.i.xfs_trans_ail_cursor_done.exit.i_crit_edge

out_done.i.xfs_trans_ail_cursor_done.exit.i_crit_edge: ; preds = %out_done.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_trans_ail_cursor_done.exit.i

if.end.i.i.i307.i:                                ; preds = %out_done.i
  call void @__sanitizer_cov_trace_pc() #10
  %304 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %6, align 4
  %306 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %cur.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %307, i32 0, i32 1
  %308 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr %305, ptr %prev1.i.i.i.i.i, align 4
  %309 = ptrtoint ptr %305 to i32
  call void @__asan_store4_noabort(i32 %309)
  store volatile ptr %307, ptr %305, align 4
  br label %xfs_trans_ail_cursor_done.exit.i

xfs_trans_ail_cursor_done.exit.i:                 ; preds = %if.end.i.i.i307.i, %out_done.i.xfs_trans_ail_cursor_done.exit.i_crit_edge
  %310 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store volatile ptr %cur.i, ptr %cur.i, align 4
  %311 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %cur.i, ptr %6, align 4
  call void @_raw_spin_unlock(ptr noundef %ail_lock) #8
  %call210.i = call i32 @xfs_buf_delwri_submit_nowait(ptr noundef %ail_buf_list240) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210.i)
  %tobool211.not.i = icmp eq i32 %call210.i, 0
  br i1 %tobool211.not.i, label %xfs_trans_ail_cursor_done.exit.i.if.end215.i_crit_edge, label %if.then212.i

xfs_trans_ail_cursor_done.exit.i.if.end215.i_crit_edge: ; preds = %xfs_trans_ail_cursor_done.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end215.i

if.then212.i:                                     ; preds = %xfs_trans_ail_cursor_done.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %312 = ptrtoint ptr %ail_log_flush.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %ail_log_flush.i, align 8
  %inc214.i = add i32 %313, 1
  store i32 %inc214.i, ptr %ail_log_flush.i, align 8
  br label %if.end215.i

if.end215.i:                                      ; preds = %if.then212.i, %xfs_trans_ail_cursor_done.exit.i.if.end215.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.i)
  %tobool216.not.i = icmp eq i32 %count.1.i, 0
  br i1 %tobool216.not.i, label %if.end215.i.if.end228.sink.split.i_crit_edge, label %lor.lhs.false217.i

if.end215.i.if.end228.sink.split.i_crit_edge:     ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end228.sink.split.i

lor.lhs.false217.i:                               ; preds = %if.end215.i
  %314 = lshr i64 %157, 32
  %conv2.i309.i = trunc i64 %314 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %lsn.2.off32.i, i32 %conv2.i309.i)
  %cmp.not.i310.i = icmp eq i32 %lsn.2.off32.i, %conv2.i309.i
  br i1 %cmp.not.i310.i, label %if.end.i318.i, label %if.then.i314.i

if.then.i314.i:                                   ; preds = %lor.lhs.false217.i
  call void @__sanitizer_cov_trace_cmp4(i32 %lsn.2.off32.i, i32 %conv2.i309.i)
  %cmp8.i311.i = icmp ult i32 %lsn.2.off32.i, %conv2.i309.i
  br i1 %cmp8.i311.i, label %if.then.i314.i.if.else.i399_crit_edge, label %if.then.i314.i.if.end228.sink.split.i_crit_edge

if.then.i314.i.if.end228.sink.split.i_crit_edge:  ; preds = %if.then.i314.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end228.sink.split.i

if.then.i314.i.if.else.i399_crit_edge:            ; preds = %if.then.i314.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i399

if.end.i318.i:                                    ; preds = %lor.lhs.false217.i
  %conv12.i316.i = trunc i64 %157 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %lsn.2.off0.i, i32 %conv12.i316.i)
  %cmp18.i319.i = icmp ult i32 %lsn.2.off0.i, %conv12.i316.i
  br i1 %cmp18.i319.i, label %if.end.i318.i.if.else.i399_crit_edge, label %if.end.i318.i.if.end228.sink.split.i_crit_edge

if.end.i318.i.if.end228.sink.split.i_crit_edge:   ; preds = %if.end.i318.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end228.sink.split.i

if.end.i318.i.if.else.i399_crit_edge:             ; preds = %if.end.i318.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i399

if.else.i399:                                     ; preds = %if.end.i318.i.if.else.i399_crit_edge, %if.then.i314.i.if.else.i399_crit_edge
  %add222.i = add i32 %stuck.2.i, %flushing.2.i
  %mul.i = mul i32 %add222.i, 100
  %div.i = sdiv i32 %mul.i, %count.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %div.i)
  %cmp223.i = icmp sgt i32 %div.i, 90
  br i1 %cmp223.i, label %if.else.i399.if.end228.sink.split.i_crit_edge, label %if.else.i399.xfsaild_push.exit_crit_edge

if.else.i399.xfsaild_push.exit_crit_edge:         ; preds = %if.else.i399
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfsaild_push.exit

if.else.i399.if.end228.sink.split.i_crit_edge:    ; preds = %if.else.i399
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end228.sink.split.i

if.end228.sink.split.i:                           ; preds = %if.else.i399.if.end228.sink.split.i_crit_edge, %if.end.i318.i.if.end228.sink.split.i_crit_edge, %if.then.i314.i.if.end228.sink.split.i_crit_edge, %if.end215.i.if.end228.sink.split.i_crit_edge
  %tout.0.ph.i = phi i32 [ 50, %if.then.i314.i.if.end228.sink.split.i_crit_edge ], [ 50, %if.end.i318.i.if.end228.sink.split.i_crit_edge ], [ 50, %if.end215.i.if.end228.sink.split.i_crit_edge ], [ 20, %if.else.i399.if.end228.sink.split.i_crit_edge ]
  %315 = ptrtoint ptr %ail_last_pushed_lsn.i to i32
  call void @__asan_store8_noabort(i32 %315)
  store i64 0, ptr %ail_last_pushed_lsn.i, align 8
  br label %xfsaild_push.exit

xfsaild_push.exit:                                ; preds = %if.end228.sink.split.i, %if.else.i399.xfsaild_push.exit_crit_edge
  %tout.0.i = phi i32 [ 10, %if.else.i399.xfsaild_push.exit_crit_edge ], [ %tout.0.ph.i, %if.end228.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cur.i) #8
  br label %while.cond.backedge
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_ail_destroy(ptr nocapture noundef readonly %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %m_ail = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 2
  %0 = ptrtoint ptr %m_ail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_ail, align 4
  %ail_task = getelementptr inbounds %struct.xfs_ail, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ail_task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ail_task, align 4
  %call = tail call i32 @kthread_stop(ptr noundef %3) #8
  tail call void @kvfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_ail_move(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_ail_check(ptr noundef %ailp, ptr noundef %lip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ail_head = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 2
  %0 = ptrtoint ptr %ail_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ail_head, align 4
  %cmp.i.not = icmp eq ptr %1, %ail_head
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 6
  %2 = ptrtoint ptr %li_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %li_flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp eq i32 %and1.i, 0
  %prev = getelementptr inbounds %struct.list_head, ptr %lip, i32 0, i32 1
  %4 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev, align 4
  %cmp.not = icmp eq ptr %5, %ail_head
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %li_lsn = getelementptr inbounds %struct.xfs_log_item, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %li_lsn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %li_lsn, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %prev_lsn.0 = phi i64 [ %7, %if.then5 ], [ -1, %if.end.if.end6_crit_edge ]
  %8 = ptrtoint ptr %lip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lip, align 8
  %cmp13.not = icmp eq ptr %9, %ail_head
  br i1 %cmp13.not, label %if.end6.if.end16_crit_edge, label %if.then14

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %li_lsn15 = getelementptr inbounds %struct.xfs_log_item, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %li_lsn15 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %li_lsn15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end6.if.end16_crit_edge
  %next_lsn.0 = phi i64 [ %11, %if.then14 ], [ -1, %if.end6.if.end16_crit_edge ]
  %li_lsn17 = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 2
  %12 = ptrtoint ptr %li_lsn17 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %li_lsn17, align 8
  br i1 %tobool2.not, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %prev_lsn.0)
  %cmp19 = icmp eq i64 %prev_lsn.0, -1
  br i1 %cmp19, label %land.lhs.true.land.lhs.true22_crit_edge, label %lor.lhs.false

land.lhs.true.land.lhs.true22_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true22

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = lshr i64 %prev_lsn.0, 32
  %conv.i84 = trunc i64 %14 to i32
  %15 = lshr i64 %13, 32
  %conv2.i = trunc i64 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i84, i32 %conv2.i)
  %cmp.not.i = icmp eq i32 %conv.i84, %conv2.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i84, i32 %conv2.i)
  %cmp8.i = icmp ult i32 %conv.i84, %conv2.i
  br i1 %cmp8.i, label %if.then.i.land.lhs.true22_crit_edge, label %if.then.i.if.end28.thread_crit_edge

if.then.i.if.end28.thread_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.thread

if.then.i.land.lhs.true22_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true22

if.end.i:                                         ; preds = %lor.lhs.false
  %conv11.i = trunc i64 %prev_lsn.0 to i32
  %conv12.i = trunc i64 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i, i32 %conv12.i)
  %.not164 = icmp ugt i32 %conv11.i, %conv12.i
  br i1 %.not164, label %if.end.i.if.end28.thread_crit_edge, label %if.end.i.land.lhs.true22_crit_edge

if.end.i.land.lhs.true22_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true22

if.end.i.if.end28.thread_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.thread

land.lhs.true22:                                  ; preds = %if.end.i.land.lhs.true22_crit_edge, %if.then.i.land.lhs.true22_crit_edge, %land.lhs.true.land.lhs.true22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %next_lsn.0)
  %cmp23 = icmp eq i64 %next_lsn.0, -1
  br i1 %cmp23, label %land.lhs.true22.cleanup_crit_edge, label %lor.lhs.false24

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false24:                                  ; preds = %land.lhs.true22
  %16 = lshr i64 %next_lsn.0, 32
  %conv.i85 = trunc i64 %16 to i32
  %17 = lshr i64 %13, 32
  %conv2.i86 = trunc i64 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i85, i32 %conv2.i86)
  %cmp.not.i87 = icmp eq i32 %conv.i85, %conv2.i86
  br i1 %cmp.not.i87, label %if.end.i95, label %if.then.i91

if.then.i91:                                      ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i85, i32 %conv2.i86)
  %cmp8.i88 = icmp ult i32 %conv.i85, %conv2.i86
  br i1 %cmp8.i88, label %if.then.i91.if.end28.thread_crit_edge, label %if.then.i91.cleanup_crit_edge

if.then.i91.cleanup_crit_edge:                    ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i91.if.end28.thread_crit_edge:            ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.thread

if.end.i95:                                       ; preds = %lor.lhs.false24
  %conv11.i92 = trunc i64 %next_lsn.0 to i32
  %conv12.i93 = trunc i64 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i92, i32 %conv12.i93)
  %cmp18.i96 = icmp ult i32 %conv11.i92, %conv12.i93
  br i1 %cmp18.i96, label %if.end.i95.if.end28.thread_crit_edge, label %if.end.i95.cleanup_crit_edge

if.end.i95.cleanup_crit_edge:                     ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i95.if.end28.thread_crit_edge:             ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.thread

if.end28.thread:                                  ; preds = %if.end.i95.if.end28.thread_crit_edge, %if.then.i91.if.end28.thread_crit_edge, %if.end.i.if.end28.thread_crit_edge, %if.then.i.if.end28.thread_crit_edge
  %ail_lock140 = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %ail_lock140) #8
  br label %cond.end

cond.false:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %ail_lock = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %ail_lock) #8
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 67) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end28.thread
  %ail_lock141 = phi ptr [ %ail_lock140, %if.end28.thread ], [ %ail_lock, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %prev_lsn.0)
  %cmp32 = icmp eq i64 %prev_lsn.0, -1
  br i1 %cmp32, label %cond.end.cond.end43_crit_edge, label %lor.rhs

cond.end.cond.end43_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end43

lor.rhs:                                          ; preds = %cond.end
  %18 = lshr i64 %prev_lsn.0, 32
  %conv.i102 = trunc i64 %18 to i32
  %19 = lshr i64 %13, 32
  %conv2.i103 = trunc i64 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i102, i32 %conv2.i103)
  %cmp.not.i104 = icmp eq i32 %conv.i102, %conv2.i103
  br i1 %cmp.not.i104, label %if.end.i112, label %if.then.i108

if.then.i108:                                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i102, i32 %conv2.i103)
  %cmp8.i105 = icmp ult i32 %conv.i102, %conv2.i103
  br i1 %cmp8.i105, label %if.then.i108.cond.end43_crit_edge, label %if.then.i108.cond.false42_crit_edge

if.then.i108.cond.false42_crit_edge:              ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false42

if.then.i108.cond.end43_crit_edge:                ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end43

if.end.i112:                                      ; preds = %lor.rhs
  %conv11.i109 = trunc i64 %prev_lsn.0 to i32
  %conv12.i110 = trunc i64 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i109, i32 %conv12.i110)
  %.not = icmp ugt i32 %conv11.i109, %conv12.i110
  br i1 %.not, label %if.end.i112.cond.false42_crit_edge, label %if.end.i112.cond.end43_crit_edge

if.end.i112.cond.end43_crit_edge:                 ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end43

if.end.i112.cond.false42_crit_edge:               ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false42

cond.false42:                                     ; preds = %if.end.i112.cond.false42_crit_edge, %if.then.i108.cond.false42_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 68) #8
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false42, %if.end.i112.cond.end43_crit_edge, %if.then.i108.cond.end43_crit_edge, %cond.end.cond.end43_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %next_lsn.0)
  %cmp44 = icmp eq i64 %next_lsn.0, -1
  br i1 %cmp44, label %cond.end43.cond.end57_crit_edge, label %lor.rhs45

cond.end43.cond.end57_crit_edge:                  ; preds = %cond.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end57

lor.rhs45:                                        ; preds = %cond.end43
  %20 = lshr i64 %next_lsn.0, 32
  %conv.i119 = trunc i64 %20 to i32
  %21 = lshr i64 %13, 32
  %conv2.i120 = trunc i64 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i119, i32 %conv2.i120)
  %cmp.not.i121 = icmp eq i32 %conv.i119, %conv2.i120
  br i1 %cmp.not.i121, label %if.end.i129, label %if.then.i125

if.then.i125:                                     ; preds = %lor.rhs45
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i119, i32 %conv2.i120)
  %cmp8.i122 = icmp ult i32 %conv.i119, %conv2.i120
  br i1 %cmp8.i122, label %if.then.i125.cond.false56_crit_edge, label %if.then.i125.cond.end57_crit_edge

if.then.i125.cond.end57_crit_edge:                ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end57

if.then.i125.cond.false56_crit_edge:              ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false56

if.end.i129:                                      ; preds = %lor.rhs45
  %conv11.i126 = trunc i64 %next_lsn.0 to i32
  %conv12.i127 = trunc i64 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i126, i32 %conv12.i127)
  %cmp18.i130 = icmp ult i32 %conv11.i126, %conv12.i127
  br i1 %cmp18.i130, label %if.end.i129.cond.false56_crit_edge, label %if.end.i129.cond.end57_crit_edge

if.end.i129.cond.end57_crit_edge:                 ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end57

if.end.i129.cond.false56_crit_edge:               ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false56

cond.false56:                                     ; preds = %if.end.i129.cond.false56_crit_edge, %if.then.i125.cond.false56_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 69) #8
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false56, %if.end.i129.cond.end57_crit_edge, %if.then.i125.cond.end57_crit_edge, %cond.end43.cond.end57_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %ail_lock141) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end57, %if.end.i95.cleanup_crit_edge, %if.then.i91.cleanup_crit_edge, %land.lhs.true22.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_trans_ail_cursor_clear(ptr noundef readonly %ailp, ptr noundef readnone %lip) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ail_cursors = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 5
  %0 = ptrtoint ptr %ail_cursors to i32
  call void @__asan_load4_noabort(i32 %0)
  %cur.015 = load ptr, ptr %ail_cursors, align 4
  %cmp.not16 = icmp eq ptr %cur.015, %ail_cursors
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %1 = ptrtoint ptr %lip to i32
  %or = or i32 %1, 1
  %2 = inttoptr i32 %or to ptr
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %cur.017 = phi ptr [ %cur.0, %for.inc.for.body_crit_edge ], [ %cur.015, %for.body.preheader ]
  %item = getelementptr inbounds %struct.xfs_ail_cursor, ptr %cur.017, i32 0, i32 1
  %3 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %item, align 4
  %cmp2 = icmp eq ptr %4, %lip
  br i1 %cmp2, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %item, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %6 = ptrtoint ptr %cur.017 to i32
  call void @__asan_load4_noabort(i32 %6)
  %cur.0 = load ptr, ptr %cur.017, align 4
  %cmp.not = icmp eq ptr %cur.0, %ail_cursors
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_ail_insert(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_ail_delete(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_rele(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_delwri_cancel(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xlog_cil_flush(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_ail_push(ptr noundef %lip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ail_push, i32 0, i32 1), ptr blockaddress(@trace_xfs_ail_push, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !98
  %call42 = tail call i32 @__traceiter_xfs_ail_push(ptr noundef null, ptr noundef %lip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !99
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ail_push, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ail_push, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_ail_push.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_ail_push.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1347, ptr noundef nonnull @.str.8) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !86
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
define internal fastcc void @trace_xfs_ail_flushing(ptr noundef %lip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ail_flushing, i32 0, i32 1), ptr blockaddress(@trace_xfs_ail_flushing, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !100
  %call42 = tail call i32 @__traceiter_xfs_ail_flushing(ptr noundef null, ptr noundef %lip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !101
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ail_flushing, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ail_flushing, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_ail_flushing.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_ail_flushing.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1350, ptr noundef nonnull @.str.8) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !86
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
define internal fastcc void @trace_xfs_ail_pinned(ptr noundef %lip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ail_pinned, i32 0, i32 1), ptr blockaddress(@trace_xfs_ail_pinned, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !102
  %call42 = tail call i32 @__traceiter_xfs_ail_pinned(ptr noundef null, ptr noundef %lip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !103
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ail_pinned, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ail_pinned, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_ail_pinned.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_ail_pinned.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1348, ptr noundef nonnull @.str.8) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !86
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
define internal fastcc void @trace_xfs_ail_locked(ptr noundef %lip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ail_locked, i32 0, i32 1), ptr blockaddress(@trace_xfs_ail_locked, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !104
  %call42 = tail call i32 @__traceiter_xfs_ail_locked(ptr noundef null, ptr noundef %lip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !105
  %13 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ail_locked, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ail_locked, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_ail_locked.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_ail_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1349, ptr noundef nonnull @.str.8) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !86
  %31 = tail call i32 @llvm.read_register.i32(metadata !68) #8
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
declare dso_local i32 @xfs_buf_delwri_submit_nowait(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_errortag_test(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_trylock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_buf_delwri_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_ail_push(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_ail_flushing(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_ail_pinned(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_ail_locked(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !17, !18, !19, !20, !22, !23, !25, !27, !29, !31, !32, !34, !36, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !61, !62, !64, !65, !67}
!llvm.named.register.sp = !{!68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_trans_ail.c", i32 795, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_trans_ail.c", i32 873, i32 2}
!5 = !{ptr @__func__.xfs_trans_ail_delete, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_trans_ail.c", i32 874, i32 6}
!7 = !{ptr @xfs_trans_ail_init.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../fs/xfs/xfs_trans_ail.c", i32 899, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @xfs_trans_ail_init.__key.4, !11, !"__key", i1 false, i1 false}
!11 = !{!"../fs/xfs/xfs_trans_ail.c", i32 901, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_trans_ail.c", i32 903, i32 19}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_trace.h", i32 1385, i32 1}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!19 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/xfs_trans_ail.c", i32 67, i32 2}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_trans_ail.c", i32 68, i32 2}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/xfs_trans_ail.c", i32 69, i32 2}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../fs/xfs/xfs_trace.h", i32 1384, i32 1}
!31 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/xfs/xfs_trans_ail.c", i32 303, i32 2}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../fs/xfs/xfs_trace.h", i32 1386, i32 1}
!36 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/xfs/xfs_trans_priv.h", i32 148, i32 2}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../fs/xfs/xfs_trans_ail.c", i32 593, i32 4}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../fs/xfs/xfs_trans_ail.c", i32 595, i32 4}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../fs/xfs/xfs_trans_ail.c", i32 606, i32 4}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/xfs/xfs_trans_ail.c", i32 622, i32 4}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../fs/xfs/xfs_trans_ail.c", i32 653, i32 3}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/xfs/xfs_trans_ail.c", i32 514, i32 4}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/xfs/xfs_trans_ail.c", i32 401, i32 6}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../fs/xfs/xfs_trace.h", i32 1347, i32 1}
!58 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../fs/xfs/xfs_trace.h", i32 1350, i32 1}
!61 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../fs/xfs/xfs_trace.h", i32 1348, i32 1}
!64 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../fs/xfs/xfs_trace.h", i32 1349, i32 1}
!67 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!68 = !{!"sp"}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2166343901}
!79 = !{i64 2166344057}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{i64 2148267934, i64 2148267939, i64 2148267952, i64 2148267996, i64 2148268030, i64 2148268051}
!83 = !{i64 2159397040}
!84 = !{i64 2159397269}
!85 = !{i64 2149970027}
!86 = !{i64 2149971063}
!87 = !{i64 2159380093}
!88 = !{i64 2159380326}
!89 = !{i64 2159413957}
!90 = !{i64 2159414190}
!91 = !{i64 2166329568}
!92 = !{i64 2166334301}
!93 = !{i64 2166339256}
!94 = !{i64 2155179834}
!95 = !{!"auto-init"}
!96 = !{i64 2148417944}
!97 = !{i64 2166313955}
!98 = !{i64 2159310969}
!99 = !{i64 2159311162}
!100 = !{i64 2159363180}
!101 = !{i64 2159363381}
!102 = !{i64 2159326921}
!103 = !{i64 2159327118}
!104 = !{i64 2159342981}
!105 = !{i64 2159343178}
