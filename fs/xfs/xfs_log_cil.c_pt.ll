; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_log_cil.c_pt.bc'
source_filename = "../fs/xfs/xfs_log_cil.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_log_iovec = type { ptr, i32, i32 }
%struct.xlog_ticket = type { %struct.list_head, ptr, i32, %struct.atomic_t, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, [15 x %struct.xlog_res] }
%struct.xlog_res = type { i32, i32 }
%struct.xlog = type { ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i32, i32, i32, i64, i32, i32, [88 x i8], %struct.wait_queue_head, i32, ptr, %struct.spinlock, i32, i32, i32, i32, [8 x i8], %struct.atomic64_t, [120 x i8], %struct.atomic64_t, [120 x i8], %struct.xlog_grant_head, %struct.xlog_grant_head, %struct.xfs_kobj, [8 x ptr], i64, i32, %struct.rw_semaphore, [52 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic64_t = type { i64 }
%struct.xlog_grant_head = type { %struct.spinlock, %struct.list_head, %struct.atomic64_t, [64 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_cil = type { ptr, %struct.list_head, %struct.spinlock, ptr, [68 x i8], %struct.rw_semaphore, ptr, [28 x i8], %struct.spinlock, i64, i8, %struct.list_head, %struct.wait_queue_head, %struct.wait_queue_head, i64, %struct.wait_queue_head, [20 x i8] }
%struct.xfs_cil_ctx = type { ptr, i64, i64, i64, ptr, ptr, i32, i32, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.work_struct }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfs_buftarg = type { i32, ptr, ptr, i64, ptr, i32, i32, i32, i32, %struct.shrinker, %struct.list_lru, %struct.percpu_counter, %struct.ratelimit_state }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.39, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.39 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.xlog_in_core = type { %struct.wait_queue_head, %struct.wait_queue_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %struct.list_head, [112 x i8], %struct.atomic_t, ptr, i8, %struct.semaphore, %struct.work_struct, %struct.bio, [0 x %struct.bio_vec], [40 x i8] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.xlog_rec_header = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, [64 x i32], i32, %struct.uuid_t, i32 }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.xfs_item_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_log_vec = type { ptr, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__xfsstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.hlist_head = type { ptr }
%struct.xfs_trans_header = type { i32, i32, i32, i32 }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"!ctx->commit_lsn\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/xfs/xfs_log_cil.c\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sequence <= cil->xc_current_sequence\00", [59 x i8] zeroinitializer }, align 32
@xfsstats = external dso_local local_unnamed_addr global %struct.xstats, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xfs-cil/%s\00", [21 x i8] zeroinitializer }, align 32
@xlog_cil_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&cil->xc_cil_lock\00", [46 x i8] zeroinitializer }, align 32
@xlog_cil_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&cil->xc_push_lock\00", [45 x i8] zeroinitializer }, align 32
@xlog_cil_init.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&cil->xc_push_wait\00", [45 x i8] zeroinitializer }, align 32
@xlog_cil_init.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&cil->xc_ctx_lock\00", [46 x i8] zeroinitializer }, align 32
@xlog_cil_init.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&cil->xc_start_wait\00", [44 x i8] zeroinitializer }, align 32
@xlog_cil_init.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&cil->xc_commit_wait\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"list_empty(&log->l_cilp->xc_cil)\00", [63 x i8] zeroinitializer }, align 32
@xfs_discard_wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xfs_has_discard(mp)\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"discard failed for extent [0x%llx,%u], error %d\00", [48 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_discard_extent = external dso_local global %struct.tracepoint, align 4
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_discard_extent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@xlog_discard_endio.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&ctx->discard_endio_work)\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tp\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tp->t_ticket->t_curr_res >= len\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Transaction log reservation overrun:\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"  log items: %d bytes (iov hdrs: %d bytes)\00", [53 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"  split region headers: %d bytes\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  ctx ticket: %d bytes\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lip->li_lv == NULL\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"IS_ALIGNED((unsigned long)lv->lv_buf, sizeof(uint64_t))\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"lv->lv_buf_len != XFS_LOG_VEC_ORDERED\00", [58 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_trans_commit_items = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_commit_items.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"!list_empty(&cil->xc_cil)\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cil->xc_ctx->space_used < log->l_logsize\00", [55 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_log_cil_wait = external dso_local global %struct.tracepoint, align 4
@trace_xfs_log_cil_wait.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_log_force = external dso_local global %struct.tracepoint, align 4
@trace_xfs_log_force.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"push_seq && push_seq <= cil->xc_current_sequence\00", [47 x i8] zeroinitializer }, align 32
@xlog_cil_ctx_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&ctx->push_work)\00", [61 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"push_seq <= ctx->sequence\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xlog_is_shutdown(log)\00", [42 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__const.xlog_cil_write_commit_record.reg = private unnamed_addr constant %struct.xfs_log_iovec { ptr null, i32 0, i32 18 }, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 701, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1376, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1501, i32 36 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1509, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1510, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1511, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1512, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1513, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1514, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1538, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [15 x i8] c"xfs_discard_wq\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 20, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 598, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 611, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 2449, i32 1 }
@___asan_gen_.107 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 108, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 582, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 458, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 500, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 510, i32 23 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 512, i32 5 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 514, i32 23 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 516, i32 23 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 369, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 426, i32 5 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 431, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 309, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1164, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1202, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1240, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 64, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 904, i32 2 }
@___asan_gen_.164 = private constant [24 x i8] c"../fs/xfs/xfs_log_cil.c\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1136, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 87, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @xlog_cil_init.__key, ptr @.str.4, ptr @xlog_cil_init.__key.5, ptr @.str.6, ptr @xlog_cil_init.__key.7, ptr @.str.8, ptr @xlog_cil_init.__key.9, ptr @.str.10, ptr @xlog_cil_init.__key.11, ptr @.str.12, ptr @xlog_cil_init.__key.13, ptr @.str.14, ptr @.str.15, ptr @xfs_discard_wq, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @xlog_discard_endio.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @xlog_cil_ctx_alloc.__key, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @init_completion.__key, ptr @.str.39], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlog_cil_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlog_cil_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlog_cil_init.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlog_cil_init.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlog_cil_init.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlog_cil_init.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_discard_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlog_discard_endio.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlog_cil_ctx_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xlog_cil_init_post_recovery(ptr noundef %log) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xlog_ticket_alloc(ptr noundef %log, i32 noundef 0, i32 noundef 1, i8 noundef zeroext 105, i1 noundef zeroext false) #11
  %t_curr_res.i = getelementptr inbounds %struct.xlog_ticket, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %t_curr_res.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %t_curr_res.i, align 4
  %l_cilp = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 2
  %1 = ptrtoint ptr %l_cilp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %l_cilp, align 8
  %xc_ctx = getelementptr inbounds %struct.xfs_cil, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %xc_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xc_ctx, align 32
  %ticket = getelementptr inbounds %struct.xfs_cil_ctx, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %ticket to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %ticket, align 4
  %6 = load ptr, ptr %l_cilp, align 8
  %xc_ctx2 = getelementptr inbounds %struct.xfs_cil, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %xc_ctx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xc_ctx2, align 32
  %sequence = getelementptr inbounds %struct.xfs_cil_ctx, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %sequence to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1, ptr %sequence, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xlog_cil_process_committed(ptr noundef %list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp.not7 = icmp eq ptr %1, %list
  %add.ptr8 = getelementptr i8, ptr %1, i32 -60
  %tobool.not69 = icmp eq ptr %add.ptr8, null
  %tobool.not10 = or i1 %cmp.not7, %tobool.not69
  br i1 %tobool.not10, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %add.ptr11 = phi ptr [ %add.ptr, %list_del.exit.while.body_crit_edge ], [ %add.ptr8, %entry.while.body_crit_edge ]
  %2 = phi ptr [ %12, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #11
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @xlog_cil_committed(ptr noundef nonnull %add.ptr11)
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %list, align 4
  %cmp.not = icmp eq ptr %12, %list
  %add.ptr = getelementptr i8, ptr %12, i32 -60
  %tobool.not6 = icmp eq ptr %add.ptr, null
  %tobool.not = or i1 %cmp.not, %tobool.not6
  br i1 %tobool.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xlog_cil_committed(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  %bio.i = alloca ptr, align 4
  %plug.i = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %l_opstate.i = getelementptr inbounds %struct.xlog, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %l_opstate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %l_opstate.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i = icmp ne i32 %8, 0
  br i1 %tobool.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %xc_push_lock = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %xc_push_lock) #11
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx, align 8
  %xc_start_wait = getelementptr inbounds %struct.xfs_cil, ptr %10, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %xc_start_wait, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 8
  %xc_commit_wait = getelementptr inbounds %struct.xfs_cil, ptr %12, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %xc_commit_wait, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx, align 8
  %xc_push_lock7 = getelementptr inbounds %struct.xfs_cil, ptr %14, i32 0, i32 8
  tail call void @_raw_spin_unlock(ptr noundef %xc_push_lock7) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 128
  %l_ailp = getelementptr inbounds %struct.xlog, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %l_ailp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %l_ailp, align 4
  %lv_chain = getelementptr inbounds %struct.xfs_cil_ctx, ptr %ctx, i32 0, i32 9
  %21 = ptrtoint ptr %lv_chain to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lv_chain, align 8
  %start_lsn = getelementptr inbounds %struct.xfs_cil_ctx, ptr %ctx, i32 0, i32 2
  %23 = ptrtoint ptr %start_lsn to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %start_lsn, align 8
  tail call void @xfs_trans_committed_bulk(ptr noundef %20, ptr noundef %22, i64 noundef %24, i1 noundef zeroext %tobool.i) #11
  %busy_extents = getelementptr inbounds %struct.xfs_cil_ctx, ptr %ctx, i32 0, i32 8
  tail call void @list_sort(ptr noundef null, ptr noundef %busy_extents, ptr noundef nonnull @xfs_extent_busy_ag_cmp) #11
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 61
  %25 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %26, 18014398509481984
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i45 = icmp ne i64 %and.i, 0
  %lnot = xor i1 %tobool.i, true
  %spec.select = select i1 %tobool.i45, i1 %lnot, i1 false
  tail call void @xfs_extent_busy_clear(ptr noundef %5, ptr noundef %busy_extents, i1 noundef zeroext %spec.select) #11
  %27 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx, align 8
  %xc_push_lock15 = getelementptr inbounds %struct.xfs_cil, ptr %28, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %xc_push_lock15) #11
  %committing = getelementptr inbounds %struct.xfs_cil_ctx, ptr %ctx, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %committing) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %ctx, i32 0, i32 11, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %committing to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %committing, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %35 = ptrtoint ptr %committing to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %committing, align 4
  %prev.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %ctx, i32 0, i32 11, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %37 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctx, align 8
  %xc_push_lock17 = getelementptr inbounds %struct.xfs_cil, ptr %38, i32 0, i32 8
  tail call void @_raw_spin_unlock(ptr noundef %xc_push_lock17) #11
  %39 = ptrtoint ptr %lv_chain to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lv_chain, align 8
  %tobool.not3.i = icmp eq ptr %40, null
  br i1 %tobool.not3.i, label %list_del.exit.xlog_cil_free_logvec.exit_crit_edge, label %list_del.exit.for.body.i_crit_edge

list_del.exit.for.body.i_crit_edge:               ; preds = %list_del.exit
  br label %for.body.i

list_del.exit.xlog_cil_free_logvec.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xlog_cil_free_logvec.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %list_del.exit.for.body.i_crit_edge
  %lv.04.i = phi ptr [ %42, %for.body.i.for.body.i_crit_edge ], [ %40, %list_del.exit.for.body.i_crit_edge ]
  %41 = ptrtoint ptr %lv.04.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lv.04.i, align 4
  tail call void @kvfree(ptr noundef nonnull %lv.04.i) #11
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %for.body.i.xlog_cil_free_logvec.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.xlog_cil_free_logvec.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xlog_cil_free_logvec.exit

xlog_cil_free_logvec.exit:                        ; preds = %for.body.i.xlog_cil_free_logvec.exit_crit_edge, %list_del.exit.xlog_cil_free_logvec.exit_crit_edge
  %43 = ptrtoint ptr %busy_extents to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %busy_extents, align 4
  %cmp.i.not = icmp eq ptr %44, %busy_extents
  br i1 %cmp.i.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %xlog_cil_free_logvec.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bio.i) #11
  %45 = ptrtoint ptr %bio.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %bio.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug.i) #11
  %46 = call ptr @memset(ptr %plug.i, i32 255, i32 24)
  %47 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %m_features.i, align 8
  %and.i.i = and i64 %48, 18014398509481984
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.then22.cond.end.i_crit_edge, !prof !102

if.then22.cond.end.i_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 598) #11
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then22.cond.end.i_crit_edge
  call void @blk_start_plug(ptr noundef nonnull %plug.i) #11
  %49 = ptrtoint ptr %busy_extents to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn51.i = load ptr, ptr %busy_extents, align 4
  %cmp.not52.i = icmp eq ptr %.pn51.i, %busy_extents
  br i1 %cmp.not52.i, label %cond.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

cond.end.i.for.end.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %cond.end.i
  %m_ddev_targp.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 13
  %sb_agblocks.i = getelementptr inbounds %struct.xfs_sb, ptr %5, i32 0, i32 11
  %m_blkbb_log.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 28
  br label %for.body.i47

for.body.i47:                                     ; preds = %for.inc.i.for.body.i47_crit_edge, %for.body.lr.ph.i
  %.pn53.i = phi ptr [ %.pn51.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i47_crit_edge ]
  %agno.i = getelementptr i8, ptr %.pn53.i, i32 8
  %50 = ptrtoint ptr %agno.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %agno.i, align 4
  %bno.i = getelementptr i8, ptr %.pn53.i, i32 12
  %52 = ptrtoint ptr %bno.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bno.i, align 4
  %length.i = getelementptr i8, ptr %.pn53.i, i32 16
  %54 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %length.i, align 4
  call fastcc void @trace_xfs_discard_extent(ptr noundef %5, i32 noundef %51, i32 noundef %53, i32 noundef %55) #11
  %56 = ptrtoint ptr %m_ddev_targp.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %m_ddev_targp.i, align 8
  %bt_bdev.i = getelementptr inbounds %struct.xfs_buftarg, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %bt_bdev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bt_bdev.i, align 4
  %60 = ptrtoint ptr %agno.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %agno.i, align 4
  %conv.i46 = zext i32 %61 to i64
  %62 = ptrtoint ptr %sb_agblocks.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sb_agblocks.i, align 4
  %conv6.i = zext i32 %63 to i64
  %mul.i = mul nuw i64 %conv6.i, %conv.i46
  %64 = ptrtoint ptr %bno.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bno.i, align 4
  %conv8.i = zext i32 %65 to i64
  %add.i = add nuw i64 %mul.i, %conv8.i
  %66 = ptrtoint ptr %m_blkbb_log.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %m_blkbb_log.i, align 1
  %conv9.i = zext i8 %67 to i32
  %sh_prom.i = zext i8 %67 to i64
  %shl.i = shl i64 %add.i, %sh_prom.i
  %68 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %length.i, align 4
  %shl13.i = shl i32 %69, %conv9.i
  %conv14.i = zext i32 %shl13.i to i64
  %call15.i = call i32 @__blkdev_issue_discard(ptr noundef %59, i64 noundef %shl.i, i64 noundef %conv14.i, i32 noundef 3136, i32 noundef 0, ptr noundef nonnull %bio.i) #11
  %70 = zext i32 %call15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call15.i, label %if.then.i [
    i32 0, label %for.body.i47.for.inc.i_crit_edge
    i32 -95, label %for.body.i47.for.inc.i_crit_edge64
  ]

for.body.i47.for.inc.i_crit_edge64:               ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.body.i47.for.inc.i_crit_edge:                 ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #13
  %bno.i.le = getelementptr i8, ptr %.pn53.i, i32 12
  %length.i.le = getelementptr i8, ptr %.pn53.i, i32 16
  %71 = ptrtoint ptr %bno.i.le to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bno.i.le, align 4
  %conv20.i = zext i32 %72 to i64
  %73 = ptrtoint ptr %length.i.le to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %length.i.le, align 4
  call void (ptr, ptr, ...) @xfs_info(ptr noundef %5, ptr noundef nonnull @.str.17, i64 noundef %conv20.i, i32 noundef %74, i32 noundef %call15.i) #11
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i47.for.inc.i_crit_edge, %for.body.i47.for.inc.i_crit_edge64
  %75 = ptrtoint ptr %.pn53.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pn.i = load ptr, ptr %.pn53.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %busy_extents
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i47_crit_edge

for.inc.i.for.body.i47_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i47

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then.i, %cond.end.i.for.end.i_crit_edge
  %76 = ptrtoint ptr %bio.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bio.i, align 4
  %tobool27.not.i = icmp eq ptr %77, null
  br i1 %tobool27.not.i, label %if.else.i, label %if.then28.i

if.then28.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %77, i32 0, i32 11
  %78 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %ctx, ptr %bi_private.i, align 4
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %77, i32 0, i32 10
  %79 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @xlog_discard_endio, ptr %bi_end_io.i, align 8
  call void @submit_bio(ptr noundef nonnull %77) #11
  br label %xlog_discard_busy_extents.exit

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ctx, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 128
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 128
  call void @xfs_extent_busy_clear(ptr noundef %85, ptr noundef %busy_extents, i1 noundef zeroext false) #11
  call void @kvfree(ptr noundef %ctx) #11
  br label %xlog_discard_busy_extents.exit

xlog_discard_busy_extents.exit:                   ; preds = %if.else.i, %if.then28.i
  call void @blk_finish_plug(ptr noundef nonnull %plug.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bio.i) #11
  br label %if.end23

if.else:                                          ; preds = %xlog_cil_free_logvec.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kvfree(ptr noundef %ctx) #11
  br label %if.end23

if.end23:                                         ; preds = %if.else, %xlog_discard_busy_extents.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xlog_cil_set_ctx_write_state(ptr noundef %ctx, ptr noundef %iclog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %ic_data = getelementptr inbounds %struct.xlog_in_core, ptr %iclog, i32 0, i32 13
  %2 = ptrtoint ptr %ic_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ic_data, align 4
  %h_lsn = getelementptr inbounds %struct.xlog_rec_header, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %h_lsn to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %h_lsn, align 8
  %commit_lsn = getelementptr inbounds %struct.xfs_cil_ctx, ptr %ctx, i32 0, i32 3
  %6 = ptrtoint ptr %commit_lsn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %commit_lsn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.false, !prof !103

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 701) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %start_lsn = getelementptr inbounds %struct.xfs_cil_ctx, ptr %ctx, i32 0, i32 2
  %8 = ptrtoint ptr %start_lsn to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %start_lsn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool5.not = icmp eq i64 %9, 0
  br i1 %tobool5.not, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %xc_push_lock = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %xc_push_lock) #11
  %10 = ptrtoint ptr %start_lsn to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %5, ptr %start_lsn, align 8
  %xc_start_wait = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 13
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %ic_refcnt = getelementptr inbounds %struct.xlog_in_core, ptr %iclog, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ic_refcnt, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %ic_refcnt, i32 1, i32 3, i32 1) #11
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ic_refcnt, ptr %ic_refcnt, i32 1, ptr elementtype(i32) %ic_refcnt) #11, !srcloc !104
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 128
  %l_icloglock = getelementptr inbounds %struct.xlog, ptr %13, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %l_icloglock) #11
  %iclog_entry = getelementptr inbounds %struct.xfs_cil_ctx, ptr %ctx, i32 0, i32 10
  %ic_callbacks = getelementptr inbounds %struct.xlog_in_core, ptr %iclog, i32 0, i32 10
  %prev.i = getelementptr inbounds %struct.xlog_in_core, ptr %iclog, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i31 = tail call zeroext i1 @__list_add_valid(ptr noundef %iclog_entry, ptr noundef %15, ptr noundef %ic_callbacks) #11
  br i1 %call.i.i31, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %iclog_entry, ptr %prev.i, align 4
  %17 = ptrtoint ptr %iclog_entry to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ic_callbacks, ptr %iclog_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %ctx, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %iclog_entry, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 128
  %l_icloglock9 = getelementptr inbounds %struct.xlog, ptr %21, i32 0, i32 21
  tail call void @_raw_spin_unlock(ptr noundef %l_icloglock9) #11
  %xc_push_lock10 = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %xc_push_lock10) #11
  %commit_iclog = getelementptr inbounds %struct.xfs_cil_ctx, ptr %ctx, i32 0, i32 4
  %22 = ptrtoint ptr %commit_iclog to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %iclog, ptr %commit_iclog, align 8
  %23 = ptrtoint ptr %commit_lsn to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %5, ptr %commit_lsn, align 8
  %xc_commit_wait = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 12
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then
  %xc_commit_wait.sink = phi ptr [ %xc_commit_wait, %list_add_tail.exit ], [ %xc_start_wait, %if.then ]
  %xc_push_lock10.sink = phi ptr [ %xc_push_lock10, %list_add_tail.exit ], [ %xc_push_lock, %if.then ]
  tail call void @__wake_up(ptr noundef %xc_commit_wait.sink, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  tail call void @_raw_spin_unlock(ptr noundef %xc_push_lock10.sink) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xlog_cil_empty(ptr nocapture noundef readonly %log) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %l_cilp = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %l_cilp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l_cilp, align 8
  %xc_push_lock = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %xc_push_lock) #11
  %xc_cil = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %xc_cil to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %xc_cil, align 4
  %cmp.i.not = icmp eq ptr %3, %xc_cil
  tail call void @_raw_spin_unlock(ptr noundef %xc_push_lock) #11
  ret i1 %cmp.i.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xlog_cil_commit(ptr noundef %log, ptr noundef %tp, ptr noundef writeonly %commit_seq, i1 noundef zeroext %regrant) local_unnamed_addr #0 align 64 {
entry:
  %len.i = alloca i32, align 4
  %diff_iovecs.i = alloca i32, align 4
  %niovecs.i = alloca i32, align 4
  %nbytes.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %l_cilp = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %l_cilp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l_cilp, align 8
  %t_items.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 26
  %2 = ptrtoint ptr %t_items.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn9.i = load ptr, ptr %t_items.i, align 8
  %cmp.not11.i = icmp eq ptr %.pn9.i, %t_items.i
  br i1 %cmp.not11.i, label %entry.xlog_cil_alloc_shadow_bufs.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.xlog_cil_alloc_shadow_bufs.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %xlog_cil_alloc_shadow_bufs.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn12.i = phi ptr [ %.pn.i, %cleanup.i.for.body.i_crit_edge ], [ %.pn9.i, %entry.for.body.i_crit_edge ]
  %lip.013.i = getelementptr i8, ptr %.pn12.i, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %niovecs.i) #11
  %3 = ptrtoint ptr %niovecs.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %niovecs.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nbytes.i) #11
  %4 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %nbytes.i, align 4
  %li_flags.i = getelementptr i8, ptr %.pn12.i, i32 28
  %5 = ptrtoint ptr %li_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %li_flags.i, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %li_ops.i = getelementptr i8, ptr %.pn12.i, i32 44
  %8 = ptrtoint ptr %li_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %li_ops.i, align 4
  %iop_size.i = getelementptr inbounds %struct.xfs_item_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %iop_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iop_size.i, align 4
  call void %11(ptr noundef %lip.013.i, ptr noundef nonnull %niovecs.i, ptr noundef nonnull %nbytes.i) #11
  %12 = ptrtoint ptr %niovecs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %niovecs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp2.i = icmp eq i32 %13, -1
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %niovecs.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %niovecs.i, align 4
  %15 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %nbytes.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %16 = ptrtoint ptr %niovecs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %niovecs.i, align 4
  %mul.i = shl i32 %17, 3
  %18 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nbytes.i, align 4
  %add.i = add i32 %mul.i, -1
  %sub.i = add i32 %add.i, %19
  %or.i = or i32 %sub.i, 7
  %add5.i = add i32 %or.i, 1
  store i32 %add5.i, ptr %nbytes.i, align 4
  %mul.i.i = mul i32 %17, 12
  %sub.i.i = add i32 %mul.i.i, 31
  %or.i.i = or i32 %sub.i.i, 7
  %add1.i.i = add i32 %add5.i, %or.i.i
  %add7.i = add i32 %add1.i.i, 1
  %li_lv_shadow.i = getelementptr i8, ptr %.pn12.i, i32 60
  %20 = ptrtoint ptr %li_lv_shadow.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %li_lv_shadow.i, align 4
  %tobool8.not.i = icmp eq ptr %21, null
  br i1 %tobool8.not.i, label %if.end4.i.if.then11.i_crit_edge, label %lor.lhs.false.i

if.end4.i.if.then11.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i

lor.lhs.false.i:                                  ; preds = %if.end4.i
  %lv_size.i = getelementptr inbounds %struct.xfs_log_vec, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %lv_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lv_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i, i32 %23)
  %cmp10.i = icmp sgt i32 %add7.i, %23
  br i1 %cmp10.i, label %lor.lhs.false.i.if.then11.i_crit_edge, label %if.else20.i

lor.lhs.false.i.if.then11.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i

if.then11.i:                                      ; preds = %lor.lhs.false.i.if.then11.i_crit_edge, %if.end4.i.if.then11.i_crit_edge
  call void @kvfree(ptr noundef %21) #11
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %do.cond.i.i.if.end8.i.i.i_crit_edge, %if.then11.i
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add7.i, i32 noundef 75968) #14
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %do.cond.i.i, label %if.end8.i.i.i.xlog_cil_kvmalloc.exit.i_crit_edge

if.end8.i.i.i.xlog_cil_kvmalloc.exit.i_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xlog_cil_kvmalloc.exit.i

do.cond.i.i:                                      ; preds = %if.end8.i.i.i
  %call1.i.i = call noalias ptr @vmalloc(i32 noundef %add7.i) #14
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %do.cond.i.i.if.end8.i.i.i_crit_edge, label %do.cond.i.i.xlog_cil_kvmalloc.exit.i_crit_edge

do.cond.i.i.xlog_cil_kvmalloc.exit.i_crit_edge:   ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xlog_cil_kvmalloc.exit.i

do.cond.i.i.if.end8.i.i.i_crit_edge:              ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i

xlog_cil_kvmalloc.exit.i:                         ; preds = %do.cond.i.i.xlog_cil_kvmalloc.exit.i_crit_edge, %if.end8.i.i.i.xlog_cil_kvmalloc.exit.i_crit_edge
  %p.012.i.i = phi ptr [ %call1.i.i, %do.cond.i.i.xlog_cil_kvmalloc.exit.i_crit_edge ], [ %call9.i.i.i, %if.end8.i.i.i.xlog_cil_kvmalloc.exit.i_crit_edge ]
  %24 = ptrtoint ptr %niovecs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %niovecs.i, align 4
  %mul.i1.i = mul i32 %25, 12
  %sub.i2.i = add i32 %mul.i1.i, 31
  %or.i3.i = or i32 %sub.i2.i, 7
  %add1.i4.i = add i32 %or.i3.i, 1
  %26 = call ptr @memset(ptr %p.012.i.i, i32 0, i32 %add1.i4.i)
  %lv_item.i = getelementptr inbounds %struct.xfs_log_vec, ptr %p.012.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %lv_item.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %lip.013.i, ptr %lv_item.i, align 4
  %lv_size15.i = getelementptr inbounds %struct.xfs_log_vec, ptr %p.012.i.i, i32 0, i32 7
  %28 = ptrtoint ptr %lv_size15.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add7.i, ptr %lv_size15.i, align 4
  br i1 %cmp2.i, label %if.then17.i, label %if.else.i

if.then17.i:                                      ; preds = %xlog_cil_kvmalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %lv_buf_len.i = getelementptr inbounds %struct.xfs_log_vec, ptr %p.012.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %lv_buf_len.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %lv_buf_len.i, align 4
  br label %if.end18.i

if.else.i:                                        ; preds = %xlog_cil_kvmalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.xfs_log_vec, ptr %p.012.i.i, i32 1
  %lv_iovecp.i = getelementptr inbounds %struct.xfs_log_vec, ptr %p.012.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %lv_iovecp.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx.i, ptr %lv_iovecp.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i, %if.then17.i
  %31 = ptrtoint ptr %li_lv_shadow.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %p.012.i.i, ptr %li_lv_shadow.i, align 4
  br label %if.end28.i

if.else20.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select.i = sext i1 %cmp2.i to i32
  %32 = getelementptr inbounds %struct.xfs_log_vec, ptr %21, i32 0, i32 6
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.select.i, ptr %32, align 4
  %lv_bytes.i = getelementptr inbounds %struct.xfs_log_vec, ptr %21, i32 0, i32 5
  %34 = ptrtoint ptr %lv_bytes.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %lv_bytes.i, align 4
  %35 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %21, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else20.i, %if.end18.i
  %lv.0.i = phi ptr [ %p.012.i.i, %if.end18.i ], [ %21, %if.else20.i ]
  %36 = ptrtoint ptr %niovecs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %niovecs.i, align 4
  %lv_niovecs.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv.0.i, i32 0, i32 1
  %38 = ptrtoint ptr %lv_niovecs.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %lv_niovecs.i, align 4
  %mul.i5.i = mul i32 %37, 12
  %sub.i6.i = add i32 %mul.i5.i, 31
  %or.i7.i = or i32 %sub.i6.i, 7
  %add1.i8.i = add i32 %or.i7.i, 1
  %add.ptr30.i = getelementptr i8, ptr %lv.0.i, i32 %add1.i8.i
  %lv_buf.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv.0.i, i32 0, i32 4
  %39 = ptrtoint ptr %lv_buf.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr30.i, ptr %lv_buf.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end28.i, %for.body.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nbytes.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %niovecs.i) #11
  %40 = ptrtoint ptr %.pn12.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn.i = load ptr, ptr %.pn12.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.i, %t_items.i
  br i1 %cmp.not.i, label %cleanup.i.xlog_cil_alloc_shadow_bufs.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

cleanup.i.xlog_cil_alloc_shadow_bufs.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xlog_cil_alloc_shadow_bufs.exit

xlog_cil_alloc_shadow_bufs.exit:                  ; preds = %cleanup.i.xlog_cil_alloc_shadow_bufs.exit_crit_edge, %entry.xlog_cil_alloc_shadow_bufs.exit_crit_edge
  %xc_ctx_lock = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 5
  call void @down_read(ptr noundef %xc_ctx_lock) #11
  %41 = ptrtoint ptr %l_cilp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %l_cilp, align 8
  %xc_ctx.i = getelementptr inbounds %struct.xfs_cil, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %xc_ctx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %xc_ctx.i, align 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #11
  %45 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %len.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff_iovecs.i) #11
  %46 = ptrtoint ptr %diff_iovecs.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %diff_iovecs.i, align 4
  %tobool.not.i49 = icmp eq ptr %tp, null
  br i1 %tobool.not.i49, label %cond.false.i, label %xlog_cil_alloc_shadow_bufs.exit.cond.end.i_crit_edge, !prof !102

xlog_cil_alloc_shadow_bufs.exit.cond.end.i_crit_edge: ; preds = %xlog_cil_alloc_shadow_bufs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.false.i:                                     ; preds = %xlog_cil_alloc_shadow_bufs.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 458) #11
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %xlog_cil_alloc_shadow_bufs.exit.cond.end.i_crit_edge
  %47 = ptrtoint ptr %t_items.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %t_items.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %48, %t_items.i
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %cond.end.i.for.body.i.i_crit_edge

cond.end.i.for.body.i.i_crit_edge:                ; preds = %cond.end.i
  br label %for.body.i.i

if.then.i.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 369) #11
  br label %xlog_cil_insert_format_items.exit.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %cond.end.i.for.body.i.i_crit_edge
  %.pn101.i.i = phi ptr [ %.pn.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ %48, %cond.end.i.for.body.i.i_crit_edge ]
  %lip.0102.i.i = getelementptr i8, ptr %.pn101.i.i, i32 -8
  %li_flags.i.i = getelementptr i8, ptr %.pn101.i.i, i32 28
  %49 = ptrtoint ptr %li_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %li_flags.i.i, align 4
  %51 = and i32 %50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool4.not.i.i = icmp eq i32 %51, 0
  br i1 %tobool4.not.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %if.end6.i.i

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i

if.end6.i.i:                                      ; preds = %for.body.i.i
  %li_lv_shadow.i.i = getelementptr i8, ptr %.pn101.i.i, i32 60
  %52 = ptrtoint ptr %li_lv_shadow.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %li_lv_shadow.i.i, align 4
  %lv_buf_len.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %lv_buf_len.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lv_buf_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp7.i.i = icmp eq i32 %55, -1
  %lv_niovecs.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %lv_niovecs.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %lv_niovecs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool10.not.i.i = icmp ne i32 %57, 0
  %brmerge.i.i = select i1 %tobool10.not.i.i, i1 true, i1 %cmp7.i.i
  br i1 %brmerge.i.i, label %if.end13.i.i, label %if.end6.i.i.cleanup.i.i_crit_edge

if.end6.i.i.cleanup.i.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i

if.end13.i.i:                                     ; preds = %if.end6.i.i
  %li_lv.i.i = getelementptr i8, ptr %.pn101.i.i, i32 56
  %58 = ptrtoint ptr %li_lv.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %li_lv.i.i, align 8
  %tobool15.not.i.i = icmp eq ptr %59, null
  br i1 %tobool15.not.i.i, label %if.end13.i.i.if.else.i.i_crit_edge, label %land.lhs.true16.i.i

if.end13.i.i.if.else.i.i_crit_edge:               ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

land.lhs.true16.i.i:                              ; preds = %if.end13.i.i
  %lv_size.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %53, i32 0, i32 7
  %60 = ptrtoint ptr %lv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %lv_size.i.i, align 4
  %lv_size18.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %59, i32 0, i32 7
  %62 = ptrtoint ptr %lv_size18.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %lv_size18.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp19.not.i.i = icmp sgt i32 %61, %63
  br i1 %cmp19.not.i.i, label %land.lhs.true16.i.i.if.else.i.i_crit_edge, label %if.then20.i.i

land.lhs.true16.i.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.then20.i.i:                                    ; preds = %land.lhs.true16.i.i
  %64 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %59, align 4
  br i1 %cmp7.i.i, label %if.then20.i.i.insert.i.i_crit_edge, label %if.end24.i.i

if.then20.i.i.insert.i.i_crit_edge:               ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %insert.i.i

if.end24.i.i:                                     ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %lv_niovecs25.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %59, i32 0, i32 1
  %65 = ptrtoint ptr %lv_niovecs25.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %lv_niovecs25.i.i, align 4
  %67 = ptrtoint ptr %diff_iovecs.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %diff_iovecs.i, align 4
  %sub.i.i50 = sub i32 %68, %66
  store i32 %sub.i.i50, ptr %diff_iovecs.i, align 4
  %lv_bytes.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %59, i32 0, i32 5
  %69 = ptrtoint ptr %lv_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %lv_bytes.i.i, align 4
  %71 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len.i, align 4
  %sub26.i.i = sub i32 %72, %70
  store i32 %sub26.i.i, ptr %len.i, align 4
  %73 = ptrtoint ptr %lv_niovecs.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %lv_niovecs.i.i, align 4
  store i32 %74, ptr %lv_niovecs25.i.i, align 4
  %lv_buf_len29.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %59, i32 0, i32 6
  %75 = ptrtoint ptr %lv_buf_len29.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %lv_buf_len29.i.i, align 4
  store i32 0, ptr %lv_bytes.i.i, align 4
  %mul.i.i.i = mul i32 %74, 12
  %sub.i.i.i = add i32 %mul.i.i.i, 31
  %or.i.i.i = or i32 %sub.i.i.i, 7
  %add1.i.i.i = add i32 %or.i.i.i, 1
  %add.ptr33.i.i = getelementptr i8, ptr %59, i32 %add1.i.i.i
  %lv_buf.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %59, i32 0, i32 4
  %76 = ptrtoint ptr %lv_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr33.i.i, ptr %lv_buf.i.i, align 4
  br label %if.end42.i.i

if.else.i.i:                                      ; preds = %land.lhs.true16.i.i.if.else.i.i_crit_edge, %if.end13.i.i.if.else.i.i_crit_edge
  %lv_item.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %53, i32 0, i32 3
  %77 = ptrtoint ptr %lv_item.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %lip.0102.i.i, ptr %lv_item.i.i, align 4
  br i1 %cmp7.i.i, label %if.then35.i.i, label %if.else.i.i.if.end42.i.i_crit_edge

if.else.i.i.if.end42.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i.i

if.then35.i.i:                                    ; preds = %if.else.i.i
  %78 = ptrtoint ptr %li_lv.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %li_lv.i.i, align 8
  %cmp37.i.i = icmp eq ptr %79, null
  br i1 %cmp37.i.i, label %if.then35.i.i.insert.i.i_crit_edge, label %cond.false.i.i, !prof !103

if.then35.i.i.insert.i.i_crit_edge:               ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %insert.i.i

cond.false.i.i:                                   ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 426) #11
  br label %insert.i.i

if.end42.i.i:                                     ; preds = %if.else.i.i.if.end42.i.i_crit_edge, %if.end24.i.i
  %lv.0.i.i = phi ptr [ %59, %if.end24.i.i ], [ %53, %if.else.i.i.if.end42.i.i_crit_edge ]
  %lv_buf43.i.i = getelementptr inbounds %struct.xfs_log_vec, ptr %lv.0.i.i, i32 0, i32 4
  %80 = ptrtoint ptr %lv_buf43.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %lv_buf43.i.i, align 4
  %82 = ptrtoint ptr %81 to i32
  %and.i.i = and i32 %82, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp44.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp44.i.i, label %if.end42.i.i.cond.end53.i.i_crit_edge, label %cond.false52.i.i, !prof !103

if.end42.i.i.cond.end53.i.i_crit_edge:            ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end53.i.i

cond.false52.i.i:                                 ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 431) #11
  br label %cond.end53.i.i

cond.end53.i.i:                                   ; preds = %cond.false52.i.i, %if.end42.i.i.cond.end53.i.i_crit_edge
  %li_ops.i.i = getelementptr i8, ptr %.pn101.i.i, i32 44
  %83 = ptrtoint ptr %li_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %li_ops.i.i, align 4
  %iop_format.i.i = getelementptr inbounds %struct.xfs_item_ops, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %iop_format.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %iop_format.i.i, align 4
  call void %86(ptr noundef %lip.0102.i.i, ptr noundef %lv.0.i.i) #11
  br label %insert.i.i

insert.i.i:                                       ; preds = %cond.end53.i.i, %cond.false.i.i, %if.then35.i.i.insert.i.i_crit_edge, %if.then20.i.i.insert.i.i_crit_edge
  %lv.1.i.i = phi ptr [ %59, %if.then20.i.i.insert.i.i_crit_edge ], [ %lv.0.i.i, %cond.end53.i.i ], [ %53, %if.then35.i.i.insert.i.i_crit_edge ], [ %53, %cond.false.i.i ]
  call fastcc void @xfs_cil_prepare_item(ptr noundef %log, ptr noundef %lv.1.i.i, ptr noundef %59, ptr noundef nonnull %len.i, ptr noundef nonnull %diff_iovecs.i) #11
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %insert.i.i, %if.end6.i.i.cleanup.i.i_crit_edge, %for.body.i.i.cleanup.i.i_crit_edge
  %87 = ptrtoint ptr %.pn101.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pn.i.i = load ptr, ptr %.pn101.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %t_items.i
  br i1 %cmp.not.i.i, label %cleanup.i.i.xlog_cil_insert_format_items.exit.i_crit_edge, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

cleanup.i.i.xlog_cil_insert_format_items.exit.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xlog_cil_insert_format_items.exit.i

xlog_cil_insert_format_items.exit.i:              ; preds = %cleanup.i.i.xlog_cil_insert_format_items.exit.i_crit_edge, %if.then.i.i
  %xc_cil_lock.i = getelementptr inbounds %struct.xfs_cil, ptr %42, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %xc_cil_lock.i) #11
  %88 = ptrtoint ptr %diff_iovecs.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %diff_iovecs.i, align 4
  %mul.i51 = mul i32 %89, 12
  %90 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len.i, align 4
  %add.i52 = add i32 %91, %mul.i51
  store i32 %add.i52, ptr %len.i, align 4
  %nvecs.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %44, i32 0, i32 6
  %92 = ptrtoint ptr %nvecs.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nvecs.i, align 8
  %add3.i = add i32 %93, %89
  store i32 %add3.i, ptr %nvecs.i, align 8
  %t_busy.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 27
  %94 = ptrtoint ptr %t_busy.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile ptr, ptr %t_busy.i, align 4
  %cmp.i.not.i = icmp eq ptr %95, %t_busy.i
  br i1 %cmp.i.not.i, label %xlog_cil_insert_format_items.exit.i.if.end.i53_crit_edge, label %if.then.i

xlog_cil_insert_format_items.exit.i.if.end.i53_crit_edge: ; preds = %xlog_cil_insert_format_items.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i53

if.then.i:                                        ; preds = %xlog_cil_insert_format_items.exit.i
  %96 = ptrtoint ptr %t_busy.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile ptr, ptr %t_busy.i, align 4
  %cmp.i.not.i162.i = icmp eq ptr %97, %t_busy.i
  br i1 %cmp.i.not.i162.i, label %if.then.i.if.end.i53_crit_edge, label %if.then.i163.i

if.then.i.if.end.i53_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i53

if.then.i163.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %busy_extents.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %44, i32 0, i32 8
  %98 = ptrtoint ptr %busy_extents.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %busy_extents.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 27, i32 1
  %100 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  %102 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %busy_extents.i, ptr %prev3.i.i.i, align 4
  store ptr %97, ptr %busy_extents.i, align 4
  %103 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %99, ptr %101, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %104 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev6.i.i.i, align 4
  %105 = ptrtoint ptr %t_busy.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %t_busy.i, ptr %t_busy.i, align 4
  store ptr %t_busy.i, ptr %prev2.i.i.i, align 4
  br label %if.end.i53

if.end.i53:                                       ; preds = %if.then.i163.i, %if.then.i.if.end.i53_crit_edge, %xlog_cil_insert_format_items.exit.i.if.end.i53_crit_edge
  %ticket.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %44, i32 0, i32 5
  %106 = ptrtoint ptr %ticket.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ticket.i, align 4
  %t_curr_res.i = getelementptr inbounds %struct.xlog_ticket, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %t_curr_res.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %t_curr_res.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp.i = icmp eq i32 %109, 0
  br i1 %cmp.i, label %if.then6.i, label %if.end.i53.if.end11.i_crit_edge

if.end.i53.if.end11.i_crit_edge:                  ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #13
  %t_unit_res.i = getelementptr inbounds %struct.xlog_ticket, ptr %107, i32 0, i32 5
  %110 = ptrtoint ptr %t_unit_res.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %t_unit_res.i, align 4
  %112 = ptrtoint ptr %t_curr_res.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %t_curr_res.i, align 4
  %t_ticket.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 9
  %113 = ptrtoint ptr %t_ticket.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %t_ticket.i, align 8
  %t_curr_res10.i = getelementptr inbounds %struct.xlog_ticket, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %t_curr_res10.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %t_curr_res10.i, align 4
  %sub.i54 = sub i32 %116, %111
  store i32 %sub.i54, ptr %t_curr_res10.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then6.i, %if.end.i53.if.end11.i_crit_edge
  %ctx_res.0.i = phi i32 [ %111, %if.then6.i ], [ 0, %if.end.i53.if.end11.i_crit_edge ]
  %l_iclog_size.i = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 12
  %117 = ptrtoint ptr %l_iclog_size.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %l_iclog_size.i, align 16
  %l_iclog_hsize.i = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 9
  %119 = ptrtoint ptr %l_iclog_hsize.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %l_iclog_hsize.i, align 4
  %sub12.i = sub i32 %118, %120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i52)
  %cmp13.i = icmp sgt i32 %add.i52, 0
  br i1 %cmp13.i, label %land.lhs.true.i, label %if.end11.i.if.end46.i_crit_edge

if.end11.i.if.end46.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

land.lhs.true.i:                                  ; preds = %if.end11.i
  %space_used.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %44, i32 0, i32 7
  %121 = ptrtoint ptr %space_used.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %space_used.i, align 4
  %div.i = sdiv i32 %122, %sub12.i
  %add15.i = add i32 %122, %add.i52
  %div16.i = sdiv i32 %add15.i, %sub12.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %div16.i)
  %cmp17.not.i = icmp eq i32 %div.i, %div16.i
  br i1 %cmp17.not.i, label %land.lhs.true.i.if.end46.i_crit_edge, label %if.then18.i

land.lhs.true.i.if.end46.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.then18.i:                                      ; preds = %land.lhs.true.i
  %add19.i = add nsw i32 %add.i52, -1
  %sub20.i = add i32 %add19.i, %sub12.i
  %div21.i = sdiv i32 %sub20.i, %sub12.i
  %add23.i = add i32 %120, 12
  %mul24.i = mul i32 %div21.i, %add23.i
  %123 = ptrtoint ptr %ticket.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ticket.i, align 4
  %t_unit_res26.i = getelementptr inbounds %struct.xlog_ticket, ptr %124, i32 0, i32 5
  %125 = ptrtoint ptr %t_unit_res26.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %t_unit_res26.i, align 4
  %add27.i = add i32 %126, %mul24.i
  store i32 %add27.i, ptr %t_unit_res26.i, align 4
  %127 = load ptr, ptr %ticket.i, align 4
  %t_curr_res29.i = getelementptr inbounds %struct.xlog_ticket, ptr %127, i32 0, i32 4
  %128 = ptrtoint ptr %t_curr_res29.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %t_curr_res29.i, align 4
  %add30.i = add i32 %129, %mul24.i
  store i32 %add30.i, ptr %t_curr_res29.i, align 4
  %t_ticket31.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 9
  %130 = ptrtoint ptr %t_ticket31.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %t_ticket31.i, align 8
  %t_curr_res32.i = getelementptr inbounds %struct.xlog_ticket, ptr %131, i32 0, i32 4
  %132 = ptrtoint ptr %t_curr_res32.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %t_curr_res32.i, align 4
  %sub33.i = sub i32 %133, %mul24.i
  store i32 %sub33.i, ptr %t_curr_res32.i, align 4
  %134 = load ptr, ptr %t_ticket31.i, align 8
  %t_curr_res35.i = getelementptr inbounds %struct.xlog_ticket, ptr %134, i32 0, i32 4
  %135 = ptrtoint ptr %t_curr_res35.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %t_curr_res35.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %add.i52)
  %cmp36.not.i = icmp slt i32 %136, %add.i52
  br i1 %cmp36.not.i, label %cond.false44.i, label %if.then18.i.if.end46.i_crit_edge, !prof !102

if.then18.i.if.end46.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

cond.false44.i:                                   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 500) #11
  br label %if.end46.i

if.end46.i:                                       ; preds = %cond.false44.i, %if.then18.i.if.end46.i_crit_edge, %land.lhs.true.i.if.end46.i_crit_edge, %if.end11.i.if.end46.i_crit_edge
  %split_res.0.i = phi i32 [ %mul24.i, %if.then18.i.if.end46.i_crit_edge ], [ %mul24.i, %cond.false44.i ], [ 0, %land.lhs.true.i.if.end46.i_crit_edge ], [ 0, %if.end11.i.if.end46.i_crit_edge ]
  %t_ticket47.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 9
  %137 = ptrtoint ptr %t_ticket47.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %t_ticket47.i, align 8
  %t_curr_res48.i = getelementptr inbounds %struct.xlog_ticket, ptr %138, i32 0, i32 4
  %139 = ptrtoint ptr %t_curr_res48.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %t_curr_res48.i, align 4
  %sub49.i = sub i32 %140, %add.i52
  store i32 %sub49.i, ptr %t_curr_res48.i, align 4
  %space_used50.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %44, i32 0, i32 7
  %141 = ptrtoint ptr %space_used50.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %space_used50.i, align 4
  %add51.i = add i32 %142, %add.i52
  store i32 %add51.i, ptr %space_used50.i, align 4
  %143 = load ptr, ptr %t_ticket47.i, align 8
  %t_curr_res53.i = getelementptr inbounds %struct.xlog_ticket, ptr %143, i32 0, i32 4
  %144 = ptrtoint ptr %t_curr_res53.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %t_curr_res53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp54.i = icmp slt i32 %145, 0
  br i1 %cmp54.i, label %do.end.i, label %if.end46.i.if.end85.i_crit_edge, !prof !102

if.end46.i.if.end85.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85.i

do.end.i:                                         ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 509, i32 noundef 9, ptr noundef null) #11
  %146 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %log, align 128
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %147, ptr noundef nonnull @.str.24) #11
  %148 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %log, align 128
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %149, ptr noundef nonnull @.str.25, i32 noundef %add.i52, i32 noundef %mul.i51) #11
  %150 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %log, align 128
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %151, ptr noundef nonnull @.str.26, i32 noundef %split_res.0.i) #11
  %152 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %log, align 128
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %153, ptr noundef nonnull @.str.27, i32 noundef %ctx_res.0.i) #11
  call void @xlog_print_trans(ptr noundef %tp) #11
  br label %if.end85.i

if.end85.i:                                       ; preds = %do.end.i, %if.end46.i.if.end85.i_crit_edge
  %154 = ptrtoint ptr %t_items.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %.pn166.i = load ptr, ptr %t_items.i, align 8
  %cmp88.not167.i = icmp eq ptr %.pn166.i, %t_items.i
  br i1 %cmp88.not167.i, label %if.end85.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end85.i.for.end.i_crit_edge:                   ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end85.i
  %xc_cil.i = getelementptr inbounds %struct.xfs_cil, ptr %42, i32 0, i32 1
  %prev.i2.i.i = getelementptr inbounds %struct.xfs_cil, ptr %42, i32 0, i32 1, i32 1
  br label %for.body.i56

for.body.i56:                                     ; preds = %for.inc.i.for.body.i56_crit_edge, %for.body.lr.ph.i
  %.pn168.i = phi ptr [ %.pn166.i, %for.body.lr.ph.i ], [ %.pn.i59, %for.inc.i.for.body.i56_crit_edge ]
  %li_flags.i55 = getelementptr i8, ptr %.pn168.i, i32 28
  %155 = ptrtoint ptr %li_flags.i55 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %li_flags.i55, align 4
  %157 = and i32 %156, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool92.not.i = icmp eq i32 %157, 0
  br i1 %tobool92.not.i, label %for.body.i56.for.inc.i_crit_edge, label %if.end94.i

for.body.i56.for.inc.i_crit_edge:                 ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end94.i:                                       ; preds = %for.body.i56
  %li_cil.i = getelementptr i8, ptr %.pn168.i, i32 48
  %158 = ptrtoint ptr %li_cil.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %li_cil.i, align 4
  %cmp.i164.not.i = icmp eq ptr %159, %xc_cil.i
  br i1 %cmp.i164.not.i, label %if.end94.i.for.inc.i_crit_edge, label %if.then97.i

if.end94.i.for.inc.i_crit_edge:                   ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then97.i:                                      ; preds = %if.end94.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %li_cil.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i57, label %if.then97.i.__list_del_entry.exit.i.i_crit_edge

if.then97.i.__list_del_entry.exit.i.i_crit_edge:  ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i.i

if.end.i.i.i57:                                   ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr i8, ptr %.pn168.i, i32 52
  %160 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %prev.i.i.i, align 4
  %162 = ptrtoint ptr %li_cil.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %li_cil.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %161, ptr %prev1.i.i.i.i, align 4
  %165 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %165)
  store volatile ptr %163, ptr %161, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i57, %if.then97.i.__list_del_entry.exit.i.i_crit_edge
  %166 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %li_cil.i, ptr noundef %167, ptr noundef %xc_cil.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i58, label %__list_del_entry.exit.i.i.for.inc.i_crit_edge

__list_del_entry.exit.i.i.for.inc.i_crit_edge:    ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i.i.i.i58:                                 ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %168 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %li_cil.i, ptr %prev.i2.i.i, align 4
  %169 = ptrtoint ptr %li_cil.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %xc_cil.i, ptr %li_cil.i, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %.pn168.i, i32 52
  %170 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %167, ptr %prev3.i.i.i.i, align 4
  %171 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %li_cil.i, ptr %167, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i.i58, %__list_del_entry.exit.i.i.for.inc.i_crit_edge, %if.end94.i.for.inc.i_crit_edge, %for.body.i56.for.inc.i_crit_edge
  %172 = ptrtoint ptr %.pn168.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %.pn.i59 = load ptr, ptr %.pn168.i, align 8
  %cmp88.not.i = icmp eq ptr %.pn.i59, %t_items.i
  br i1 %cmp88.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i56_crit_edge

for.inc.i.for.body.i56_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i56

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end85.i.for.end.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %xc_cil_lock.i) #11
  %173 = ptrtoint ptr %t_ticket47.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %t_ticket47.i, align 8
  %t_curr_res108.i = getelementptr inbounds %struct.xlog_ticket, ptr %174, i32 0, i32 4
  %175 = ptrtoint ptr %t_curr_res108.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %t_curr_res108.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp109.i = icmp slt i32 %176, 0
  br i1 %cmp109.i, label %if.then110.i, label %for.end.i.xlog_cil_insert_items.exit_crit_edge

for.end.i.xlog_cil_insert_items.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xlog_cil_insert_items.exit

if.then110.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %177 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %log, align 128
  call void @xfs_do_force_shutdown(ptr noundef %178, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 543) #11
  br label %xlog_cil_insert_items.exit

xlog_cil_insert_items.exit:                       ; preds = %if.then110.i, %for.end.i.xlog_cil_insert_items.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff_iovecs.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #11
  br i1 %regrant, label %land.lhs.true, label %xlog_cil_insert_items.exit.if.else_crit_edge

xlog_cil_insert_items.exit.if.else_crit_edge:     ; preds = %xlog_cil_insert_items.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %xlog_cil_insert_items.exit
  %l_opstate.i = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 6
  %179 = ptrtoint ptr %l_opstate.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile i32, ptr %l_opstate.i, align 4
  %181 = and i32 %180, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool.i.not = icmp eq i32 %181, 0
  br i1 %tobool.i.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %182 = ptrtoint ptr %t_ticket47.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %t_ticket47.i, align 8
  call void @xfs_log_ticket_regrant(ptr noundef %log, ptr noundef %183) #11
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %xlog_cil_insert_items.exit.if.else_crit_edge
  %184 = ptrtoint ptr %t_ticket47.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %t_ticket47.i, align 8
  call void @xfs_log_ticket_ungrant(ptr noundef %log, ptr noundef %185) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %186 = ptrtoint ptr %t_ticket47.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr null, ptr %t_ticket47.i, align 8
  call void @xfs_trans_unreserve_and_mod_sb(ptr noundef %tp) #11
  %187 = call ptr @llvm.returnaddress(i32 0)
  %188 = ptrtoint ptr %187 to i32
  call fastcc void @trace_xfs_trans_commit_items(ptr noundef %tp, i32 noundef %188)
  %189 = ptrtoint ptr %t_items.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %t_items.i, align 8
  %cmp.not77 = icmp eq ptr %190, %t_items.i
  br i1 %cmp.not77, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %xc_ctx = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in78 = phi ptr [ %190, %for.body.lr.ph ], [ %.pn80, %for.inc.for.body_crit_edge ]
  %lip.079 = getelementptr i8, ptr %.pn.in78, i32 -8
  %191 = ptrtoint ptr %.pn.in78 to i32
  call void @__asan_load4_noabort(i32 %191)
  %.pn80 = load ptr, ptr %.pn.in78, align 8
  call void @xfs_trans_del_item(ptr noundef %lip.079) #11
  %li_ops = getelementptr i8, ptr %.pn.in78, i32 44
  %192 = ptrtoint ptr %li_ops to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %li_ops, align 4
  %iop_committing = getelementptr inbounds %struct.xfs_item_ops, ptr %193, i32 0, i32 6
  %194 = ptrtoint ptr %iop_committing to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %iop_committing, align 4
  %tobool10.not = icmp eq ptr %195, null
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.then11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %196 = ptrtoint ptr %xc_ctx to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %xc_ctx, align 32
  %sequence = getelementptr inbounds %struct.xfs_cil_ctx, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %sequence to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %sequence, align 8
  call void %195(ptr noundef %lip.079, i64 noundef %199) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn80, %t_items.i
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %tobool20.not = icmp eq ptr %commit_seq, null
  br i1 %tobool20.not, label %for.end.if.end24_crit_edge, label %if.then21

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %xc_ctx22 = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 6
  %200 = ptrtoint ptr %xc_ctx22 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %xc_ctx22, align 32
  %sequence23 = getelementptr inbounds %struct.xfs_cil_ctx, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %sequence23 to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %sequence23, align 8
  %204 = ptrtoint ptr %commit_seq to i32
  call void @__asan_store8_noabort(i32 %204)
  store i64 %203, ptr %commit_seq, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %for.end.if.end24_crit_edge
  %205 = ptrtoint ptr %l_cilp to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %l_cilp, align 8
  %xc_cil.i61 = getelementptr inbounds %struct.xfs_cil, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %xc_cil.i61 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load volatile ptr, ptr %xc_cil.i61, align 4
  %cmp.i.not.i62 = icmp eq ptr %208, %xc_cil.i61
  br i1 %cmp.i.not.i62, label %cond.false.i63, label %if.end24.cond.end.i67_crit_edge, !prof !102

if.end24.cond.end.i67_crit_edge:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i67

cond.false.i63:                                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 1164) #11
  br label %cond.end.i67

cond.end.i67:                                     ; preds = %cond.false.i63, %if.end24.cond.end.i67_crit_edge
  %xc_ctx.i64 = getelementptr inbounds %struct.xfs_cil, ptr %206, i32 0, i32 6
  %209 = ptrtoint ptr %xc_ctx.i64 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %xc_ctx.i64, align 32
  %space_used.i65 = getelementptr inbounds %struct.xfs_cil_ctx, ptr %210, i32 0, i32 7
  %211 = ptrtoint ptr %space_used.i65 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %space_used.i65, align 4
  %l_logsize.i = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 15
  %213 = ptrtoint ptr %l_logsize.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %l_logsize.i, align 32
  %shr.i = ashr i32 %214, 3
  %215 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %log, align 128
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %216, i32 0, i32 61
  %217 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %m_features.i.i, align 8
  %and.i.i66 = and i64 %218, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i66)
  %tobool.i.not.i = icmp eq i64 %and.i.i66, 0
  %conv8.i = select i1 %tobool.i.not.i, i32 4194304, i32 33554432
  %219 = call i32 @llvm.smin.i32(i32 %shr.i, i32 %conv8.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %212, i32 %219)
  %cmp14.i = icmp slt i32 %212, %219
  br i1 %cmp14.i, label %if.then.i68, label %if.end.i69

if.then.i68:                                      ; preds = %cond.end.i67
  call void @__sanitizer_cov_trace_pc() #13
  %xc_ctx_lock.i = getelementptr inbounds %struct.xfs_cil, ptr %206, i32 0, i32 5
  call void @up_read(ptr noundef %xc_ctx_lock.i) #11
  br label %xlog_cil_push_background.exit

if.end.i69:                                       ; preds = %cond.end.i67
  %xc_push_lock.i = getelementptr inbounds %struct.xfs_cil, ptr %206, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %xc_push_lock.i) #11
  %xc_push_seq.i = getelementptr inbounds %struct.xfs_cil, ptr %206, i32 0, i32 9
  %220 = ptrtoint ptr %xc_push_seq.i to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %xc_push_seq.i, align 16
  %xc_current_sequence.i = getelementptr inbounds %struct.xfs_cil, ptr %206, i32 0, i32 14
  %222 = ptrtoint ptr %xc_current_sequence.i to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %xc_current_sequence.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %221, i64 %223)
  %cmp16.i = icmp slt i64 %221, %223
  br i1 %cmp16.i, label %if.then18.i70, label %if.end.i69.if.end23.i_crit_edge

if.end.i69.if.end23.i_crit_edge:                  ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.then18.i70:                                    ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #13
  %224 = ptrtoint ptr %xc_push_seq.i to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 %223, ptr %xc_push_seq.i, align 16
  %xc_push_wq.i = getelementptr inbounds %struct.xfs_cil, ptr %206, i32 0, i32 3
  %225 = ptrtoint ptr %xc_push_wq.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %xc_push_wq.i, align 8
  %227 = ptrtoint ptr %xc_ctx.i64 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %xc_ctx.i64, align 32
  %push_work.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %228, i32 0, i32 13
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %226, ptr noundef %push_work.i) #11
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then18.i70, %if.end.i69.if.end23.i_crit_edge
  %xc_ctx_lock24.i = getelementptr inbounds %struct.xfs_cil, ptr %206, i32 0, i32 5
  call void @up_read(ptr noundef %xc_ctx_lock24.i) #11
  %229 = ptrtoint ptr %xc_ctx.i64 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %xc_ctx.i64, align 32
  %space_used26.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %230, i32 0, i32 7
  %231 = ptrtoint ptr %space_used26.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %space_used26.i, align 4
  %233 = ptrtoint ptr %l_logsize.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %l_logsize.i, align 32
  %shr28.i = ashr i32 %234, 3
  %235 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %log, align 128
  %m_features.i99.i = getelementptr inbounds %struct.xfs_mount, ptr %236, i32 0, i32 61
  %237 = ptrtoint ptr %m_features.i99.i to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %m_features.i99.i, align 8
  %and.i100.i = and i64 %238, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i100.i)
  %tobool.i101.not.i = icmp eq i64 %and.i100.i, 0
  %conv40.i = select i1 %tobool.i101.not.i, i32 4194304, i32 33554432
  %239 = call i32 @llvm.smin.i32(i32 %shr28.i, i32 %conv40.i) #11
  %mul.i71 = shl nsw i32 %239, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %232, i32 %mul.i71)
  %cmp48.not.i = icmp slt i32 %232, %mul.i71
  br i1 %cmp48.not.i, label %lor.lhs.false.i72, label %if.end23.i.if.then52.i_crit_edge

if.end23.i.if.then52.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then52.i

lor.lhs.false.i72:                                ; preds = %if.end23.i
  %head.i.i = getelementptr inbounds %struct.xfs_cil, ptr %206, i32 0, i32 15, i32 1
  %240 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %241, %head.i.i
  br i1 %cmp.i.i.not.i, label %if.end70.i, label %lor.lhs.false.i72.if.then52.i_crit_edge

lor.lhs.false.i72.if.then52.i_crit_edge:          ; preds = %lor.lhs.false.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then52.i

if.then52.i:                                      ; preds = %lor.lhs.false.i72.if.then52.i_crit_edge, %if.end23.i.if.then52.i_crit_edge
  %ticket.i73 = getelementptr inbounds %struct.xfs_cil_ctx, ptr %230, i32 0, i32 5
  %242 = ptrtoint ptr %ticket.i73 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %ticket.i73, align 4
  call fastcc void @trace_xfs_log_cil_wait(ptr noundef %log, ptr noundef %243) #11
  %244 = ptrtoint ptr %xc_ctx.i64 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %xc_ctx.i64, align 32
  %space_used55.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %245, i32 0, i32 7
  %246 = ptrtoint ptr %space_used55.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %space_used55.i, align 4
  %248 = ptrtoint ptr %l_logsize.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %l_logsize.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %247, i32 %249)
  %cmp57.i = icmp slt i32 %247, %249
  br i1 %cmp57.i, label %if.then52.i.cond.end67.i_crit_edge, label %cond.false66.i, !prof !103

if.then52.i.cond.end67.i_crit_edge:               ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end67.i

cond.false66.i:                                   ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 1202) #11
  br label %cond.end67.i

cond.end67.i:                                     ; preds = %cond.false66.i, %if.then52.i.cond.end67.i_crit_edge
  %xc_push_wait68.i = getelementptr inbounds %struct.xfs_cil, ptr %206, i32 0, i32 15
  call fastcc void @xlog_wait(ptr noundef %xc_push_wait68.i, ptr noundef %xc_push_lock.i) #11
  br label %xlog_cil_push_background.exit

if.end70.i:                                       ; preds = %lor.lhs.false.i72
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock(ptr noundef %xc_push_lock.i) #11
  br label %xlog_cil_push_background.exit

xlog_cil_push_background.exit:                    ; preds = %if.end70.i, %cond.end67.i, %if.then.i68
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_log_ticket_regrant(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_log_ticket_ungrant(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_unreserve_and_mod_sb(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_commit_items(ptr noundef %tp, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_commit_items, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_commit_items, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !105

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !103

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !92) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !106
  %call42 = tail call i32 @__traceiter_xfs_trans_commit_items(ptr noundef null, ptr noundef %tp, i32 noundef %caller_ip) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !107
  %13 = tail call i32 @llvm.read_register.i32(metadata !92) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !92) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !103

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !92) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_commit_items, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_commit_items, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_trans_commit_items.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_trans_commit_items.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 3577, ptr noundef nonnull @.str.19) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !109
  %31 = tail call i32 @llvm.read_register.i32(metadata !92) #11
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

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_del_item(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xlog_cil_flush(ptr nocapture noundef readonly %log) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %l_cilp = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %l_cilp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l_cilp, align 8
  %xc_current_sequence = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %xc_current_sequence to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %xc_current_sequence, align 16
  %4 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %log, align 128
  %6 = tail call ptr @llvm.returnaddress(i32 0)
  %7 = ptrtoint ptr %6 to i32
  tail call fastcc void @trace_xfs_log_force(ptr noundef %5, i64 noundef %3, i32 noundef %7)
  %8 = ptrtoint ptr %l_cilp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %l_cilp, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.xlog_cil_push_now.exit_crit_edge, label %if.end.i

entry.xlog_cil_push_now.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %xlog_cil_push_now.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool1.not.i = icmp eq i64 %3, 0
  br i1 %tobool1.not.i, label %if.end.i.cond.false.i_crit_edge, label %land.rhs.i, !prof !102

if.end.i.cond.false.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i

land.rhs.i:                                       ; preds = %if.end.i
  %xc_current_sequence.i = getelementptr inbounds %struct.xfs_cil, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %xc_current_sequence.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %xc_current_sequence.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %3)
  %cmp.not.i = icmp slt i64 %11, %3
  br i1 %cmp.not.i, label %land.rhs.i.cond.false.i_crit_edge, label %land.rhs.i.cond.end.i_crit_edge, !prof !102

land.rhs.i.cond.end.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

land.rhs.i.cond.false.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i

cond.false.i:                                     ; preds = %land.rhs.i.cond.false.i_crit_edge, %if.end.i.cond.false.i_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 1240) #11
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %land.rhs.i.cond.end.i_crit_edge
  %xc_push_lock.i = getelementptr inbounds %struct.xfs_cil, ptr %9, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %xc_push_lock.i) #11
  %xc_cil.i = getelementptr inbounds %struct.xfs_cil, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %xc_cil.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %xc_cil.i, align 4
  %cmp.i.not.i = icmp eq ptr %13, %xc_cil.i
  br i1 %cmp.i.not.i, label %cond.end.i.cleanup.sink.split.i_crit_edge, label %lor.lhs.false.i

cond.end.i.cleanup.sink.split.i_crit_edge:        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

lor.lhs.false.i:                                  ; preds = %cond.end.i
  %xc_push_seq.i = getelementptr inbounds %struct.xfs_cil, ptr %9, i32 0, i32 9
  %14 = ptrtoint ptr %xc_push_seq.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %xc_push_seq.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %3)
  %cmp8.not.i = icmp slt i64 %15, %3
  br i1 %cmp8.not.i, label %if.end11.i, label %lor.lhs.false.i.cleanup.sink.split.i_crit_edge

lor.lhs.false.i.cleanup.sink.split.i_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end11.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %xc_push_seq.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %3, ptr %xc_push_seq.i, align 16
  %xc_push_commit_stable.i = getelementptr inbounds %struct.xfs_cil, ptr %9, i32 0, i32 10
  %17 = ptrtoint ptr %xc_push_commit_stable.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %xc_push_commit_stable.i, align 8
  %xc_push_wq15.i = getelementptr inbounds %struct.xfs_cil, ptr %9, i32 0, i32 3
  %18 = ptrtoint ptr %xc_push_wq15.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xc_push_wq15.i, align 8
  %xc_ctx.i = getelementptr inbounds %struct.xfs_cil, ptr %9, i32 0, i32 6
  %20 = ptrtoint ptr %xc_ctx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xc_ctx.i, align 32
  %push_work.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %21, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %push_work.i) #11
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end11.i, %lor.lhs.false.i.cleanup.sink.split.i_crit_edge, %cond.end.i.cleanup.sink.split.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %xc_push_lock.i) #11
  br label %xlog_cil_push_now.exit

xlog_cil_push_now.exit:                           ; preds = %cleanup.sink.split.i, %entry.xlog_cil_push_now.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_log_force(ptr noundef %mp, i64 noundef %lsn, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_force, i32 0, i32 1), ptr blockaddress(@trace_xfs_log_force, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !105

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !103

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !92) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !110
  %call42 = tail call i32 @__traceiter_xfs_log_force(ptr noundef null, ptr noundef %mp, i64 noundef %lsn, i32 noundef %caller_ip) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !111
  %13 = tail call i32 @llvm.read_register.i32(metadata !92) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !92) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !103

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !92) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_force, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_force, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_log_force.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_log_force.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 1341, ptr noundef nonnull @.str.19) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !109
  %31 = tail call i32 @llvm.read_register.i32(metadata !92) #11
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @xlog_cil_force_seq(ptr noundef %log, i64 noundef %sequence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %l_cilp = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %l_cilp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l_cilp, align 8
  %xc_current_sequence = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %xc_current_sequence to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %xc_current_sequence, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %sequence)
  %cmp.not = icmp slt i64 %3, %sequence
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !102

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1376) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sequence)
  %tobool2.not = icmp eq i64 %sequence, 0
  br i1 %tobool2.not, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %xc_current_sequence to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %xc_current_sequence, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %sequence.addr.0 = phi i64 [ %sequence, %cond.end.if.end_crit_edge ], [ %5, %if.then ]
  %6 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %log, align 128
  %8 = tail call ptr @llvm.returnaddress(i32 0)
  %9 = ptrtoint ptr %8 to i32
  tail call fastcc void @trace_xfs_log_force(ptr noundef %7, i64 noundef %sequence.addr.0, i32 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sequence.addr.0)
  %tobool1.not.i = icmp eq i64 %sequence.addr.0, 0
  %xc_push_lock = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 8
  %xc_committing = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 11
  %l_opstate.i = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 6
  %xc_commit_wait = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 12
  %xc_cil = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 1
  br label %restart

restart:                                          ; preds = %restart.backedge, %if.end
  %commit_lsn.0 = phi i64 [ -1, %if.end ], [ %commit_lsn.0.be, %restart.backedge ]
  %10 = ptrtoint ptr %l_cilp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %l_cilp, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %restart.xlog_cil_push_now.exit_crit_edge, label %if.end.i

restart.xlog_cil_push_now.exit_crit_edge:         ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #13
  br label %xlog_cil_push_now.exit

if.end.i:                                         ; preds = %restart
  br i1 %tobool1.not.i, label %if.end.i.cond.false.i_crit_edge, label %land.rhs.i, !prof !102

if.end.i.cond.false.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i

land.rhs.i:                                       ; preds = %if.end.i
  %xc_current_sequence.i = getelementptr inbounds %struct.xfs_cil, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %xc_current_sequence.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %xc_current_sequence.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %sequence.addr.0)
  %cmp.not.i = icmp slt i64 %13, %sequence.addr.0
  br i1 %cmp.not.i, label %land.rhs.i.cond.false.i_crit_edge, label %land.rhs.i.cond.end.i_crit_edge, !prof !102

land.rhs.i.cond.end.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

land.rhs.i.cond.false.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i

cond.false.i:                                     ; preds = %land.rhs.i.cond.false.i_crit_edge, %if.end.i.cond.false.i_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 1240) #11
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %land.rhs.i.cond.end.i_crit_edge
  %xc_push_wq.i = getelementptr inbounds %struct.xfs_cil, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %xc_push_wq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xc_push_wq.i, align 8
  tail call void @flush_workqueue(ptr noundef %15) #11
  %xc_push_lock.i = getelementptr inbounds %struct.xfs_cil, ptr %11, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %xc_push_lock.i) #11
  %xc_cil.i = getelementptr inbounds %struct.xfs_cil, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %xc_cil.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %xc_cil.i, align 4
  %cmp.i.not.i = icmp eq ptr %17, %xc_cil.i
  br i1 %cmp.i.not.i, label %cond.end.i.cleanup.sink.split.i_crit_edge, label %lor.lhs.false.i

cond.end.i.cleanup.sink.split.i_crit_edge:        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

lor.lhs.false.i:                                  ; preds = %cond.end.i
  %xc_push_seq.i = getelementptr inbounds %struct.xfs_cil, ptr %11, i32 0, i32 9
  %18 = ptrtoint ptr %xc_push_seq.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %xc_push_seq.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %sequence.addr.0)
  %cmp8.not.i = icmp slt i64 %19, %sequence.addr.0
  br i1 %cmp8.not.i, label %if.end11.i, label %lor.lhs.false.i.cleanup.sink.split.i_crit_edge

lor.lhs.false.i.cleanup.sink.split.i_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end11.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %xc_push_seq.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %sequence.addr.0, ptr %xc_push_seq.i, align 16
  %xc_push_commit_stable.i = getelementptr inbounds %struct.xfs_cil, ptr %11, i32 0, i32 10
  %21 = ptrtoint ptr %xc_push_commit_stable.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %xc_push_commit_stable.i, align 8
  %22 = ptrtoint ptr %xc_push_wq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xc_push_wq.i, align 8
  %xc_ctx.i = getelementptr inbounds %struct.xfs_cil, ptr %11, i32 0, i32 6
  %24 = ptrtoint ptr %xc_ctx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xc_ctx.i, align 32
  %push_work.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %25, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %push_work.i) #11
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end11.i, %lor.lhs.false.i.cleanup.sink.split.i_crit_edge, %cond.end.i.cleanup.sink.split.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %xc_push_lock.i) #11
  br label %xlog_cil_push_now.exit

xlog_cil_push_now.exit:                           ; preds = %cleanup.sink.split.i, %restart.xlog_cil_push_now.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %xc_push_lock) #11
  %26 = ptrtoint ptr %xc_committing to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn92 = load ptr, ptr %xc_committing, align 4
  %cmp5.not93 = icmp eq ptr %.pn92, %xc_committing
  br i1 %cmp5.not93, label %xlog_cil_push_now.exit.for.end_crit_edge, label %xlog_cil_push_now.exit.for.body_crit_edge

xlog_cil_push_now.exit.for.body_crit_edge:        ; preds = %xlog_cil_push_now.exit
  br label %for.body

xlog_cil_push_now.exit.for.end_crit_edge:         ; preds = %xlog_cil_push_now.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %xlog_cil_push_now.exit.for.body_crit_edge
  %.pn95 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn92, %xlog_cil_push_now.exit.for.body_crit_edge ]
  %commit_lsn.194 = phi i64 [ %commit_lsn.2, %for.inc.for.body_crit_edge ], [ %commit_lsn.0, %xlog_cil_push_now.exit.for.body_crit_edge ]
  %27 = ptrtoint ptr %l_opstate.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %l_opstate.i, align 4
  %29 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not = icmp eq i32 %29, 0
  br i1 %tobool.i.not, label %if.end9, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %for.body
  %sequence10 = getelementptr i8, ptr %.pn95, i32 -60
  %30 = ptrtoint ptr %sequence10 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %sequence10, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %sequence.addr.0)
  %cmp11 = icmp sgt i64 %31, %sequence.addr.0
  br i1 %cmp11, label %if.end9.for.inc_crit_edge, label %if.end13

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end13:                                         ; preds = %if.end9
  %commit_lsn14 = getelementptr i8, ptr %.pn95, i32 -44
  %32 = ptrtoint ptr %commit_lsn14 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %commit_lsn14, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %tobool15.not = icmp eq i64 %33, 0
  br i1 %tobool15.not, label %do.body17, label %if.end38

do.body17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %34 = load ptr, ptr @xfsstats, align 4
  %35 = ptrtoint ptr %34 to i32
  %36 = tail call i32 @llvm.read_register.i32(metadata !92) #11
  %and.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  %add = add i32 %41, %35
  %42 = inttoptr i32 %add to ptr
  %xs_log_force_sleep = getelementptr inbounds %struct.__xfsstats, ptr %42, i32 0, i32 37
  %43 = ptrtoint ptr %xs_log_force_sleep to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %xs_log_force_sleep, align 4
  %inc = add i32 %44, 1
  store i32 %inc, ptr %xs_log_force_sleep, align 4
  %45 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %log, align 128
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %46, i32 0, i32 92
  %47 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %m_stats, align 4
  %49 = ptrtoint ptr %48 to i32
  %50 = load i32, ptr %cpu, align 4
  %arrayidx31 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx31, align 4
  %add32 = add i32 %52, %49
  %53 = inttoptr i32 %add32 to ptr
  %xs_log_force_sleep33 = getelementptr inbounds %struct.__xfsstats, ptr %53, i32 0, i32 37
  %54 = ptrtoint ptr %xs_log_force_sleep33 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %xs_log_force_sleep33, align 4
  %inc34 = add i32 %55, 1
  store i32 %inc34, ptr %xs_log_force_sleep33, align 4
  tail call fastcc void @xlog_wait(ptr noundef %xc_commit_wait, ptr noundef %xc_push_lock)
  br label %restart.backedge

restart.backedge:                                 ; preds = %if.then53, %do.body17
  %commit_lsn.0.be = phi i64 [ %commit_lsn.194, %do.body17 ], [ %commit_lsn.1.lcssa, %if.then53 ]
  br label %restart

if.end38:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %sequence.addr.0)
  %cmp40.not = icmp eq i64 %31, %sequence.addr.0
  %spec.select = select i1 %cmp40.not, i64 %33, i64 %commit_lsn.194
  br label %for.inc

for.inc:                                          ; preds = %if.end38, %if.end9.for.inc_crit_edge
  %commit_lsn.2 = phi i64 [ %commit_lsn.194, %if.end9.for.inc_crit_edge ], [ %spec.select, %if.end38 ]
  %56 = ptrtoint ptr %.pn95 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn = load ptr, ptr %.pn95, align 4
  %cmp5.not = icmp eq ptr %.pn, %xc_committing
  br i1 %cmp5.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %xlog_cil_push_now.exit.for.end_crit_edge
  %commit_lsn.1.lcssa = phi i64 [ %commit_lsn.0, %xlog_cil_push_now.exit.for.end_crit_edge ], [ %commit_lsn.2, %for.inc.for.end_crit_edge ]
  %57 = ptrtoint ptr %xc_current_sequence to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %xc_current_sequence, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %sequence.addr.0, i64 %58)
  %cmp50 = icmp eq i64 %sequence.addr.0, %58
  br i1 %cmp50, label %land.lhs.true, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %for.end
  %59 = ptrtoint ptr %xc_cil to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %xc_cil, align 4
  %cmp.i.not = icmp eq ptr %60, %xc_cil
  br i1 %cmp.i.not, label %land.lhs.true.cleanup_crit_edge, label %if.then53

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %xc_push_lock) #11
  br label %restart.backedge

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i64 [ 0, %for.body.cleanup_crit_edge ], [ %commit_lsn.1.lcssa, %land.lhs.true.cleanup_crit_edge ], [ %commit_lsn.1.lcssa, %for.end.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %xc_push_lock) #11
  ret i64 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xlog_wait(ptr noundef %wq, ptr noundef %lock) #3 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #11
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !92) #11
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
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  call void @add_wait_queue_exclusive(ptr noundef %wq, ptr noundef nonnull %wait) #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 212
  %15 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 ptrtoint (ptr blockaddress(@xlog_wait, %__here) to i32), ptr %task_state_change, align 4
  %16 = load ptr, ptr %task, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 2, ptr %16, align 128
  call void @_raw_spin_unlock(ptr noundef %lock) #11
  call void @schedule() #11
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @xfs_log_item_in_current_chkpt(ptr noundef %lip) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %li_mountp = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 3
  %0 = ptrtoint ptr %li_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %li_mountp, align 8
  %m_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %m_log to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_log, align 4
  %l_cilp = getelementptr inbounds %struct.xlog, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %l_cilp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %l_cilp, align 8
  %li_cil = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 10
  %6 = ptrtoint ptr %li_cil to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %li_cil, align 4
  %cmp.i.not = icmp eq ptr %7, %li_cil
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %li_seq = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 13
  %8 = ptrtoint ptr %li_seq to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %li_seq, align 8
  %xc_current_sequence = getelementptr inbounds %struct.xfs_cil, ptr %5, i32 0, i32 14
  %10 = ptrtoint ptr %xc_current_sequence to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load volatile i64, ptr %xc_current_sequence, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp = icmp eq i64 %9, %11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xlog_cil_init(ptr noundef %log) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_alloc(i32 noundef 512, i32 noundef 24) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log, align 128
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_super, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 39
  %call1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.3, i32 noundef 78, i32 noundef 4, ptr noundef %s_id) #11
  %xc_push_wq = getelementptr inbounds %struct.xfs_cil, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %xc_push_wq to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %xc_push_wq, align 8
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %out_destroy_cil, label %if.end5

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %xc_cil = getelementptr inbounds %struct.xfs_cil, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %xc_cil to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %xc_cil, ptr %xc_cil, align 4
  %prev.i = getelementptr inbounds %struct.xfs_cil, ptr %call.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %xc_cil, ptr %prev.i, align 4
  %xc_committing = getelementptr inbounds %struct.xfs_cil, ptr %call.i, i32 0, i32 11
  %7 = ptrtoint ptr %xc_committing to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %xc_committing, ptr %xc_committing, align 4
  %prev.i41 = getelementptr inbounds %struct.xfs_cil, ptr %call.i, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %prev.i41 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %xc_committing, ptr %prev.i41, align 4
  %xc_cil_lock = getelementptr inbounds %struct.xfs_cil, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %xc_cil_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @xlog_cil_init.__key, i16 noundef signext 3) #11
  %xc_push_lock = getelementptr inbounds %struct.xfs_cil, ptr %call.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %xc_push_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @xlog_cil_init.__key.5, i16 noundef signext 3) #11
  %xc_push_wait = getelementptr inbounds %struct.xfs_cil, ptr %call.i, i32 0, i32 15
  tail call void @__init_waitqueue_head(ptr noundef %xc_push_wait, ptr noundef nonnull @.str.8, ptr noundef nonnull @xlog_cil_init.__key.7) #11
  %xc_ctx_lock = getelementptr inbounds %struct.xfs_cil, ptr %call.i, i32 0, i32 5
  tail call void @__init_rwsem(ptr noundef %xc_ctx_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @xlog_cil_init.__key.9) #11
  %xc_start_wait = getelementptr inbounds %struct.xfs_cil, ptr %call.i, i32 0, i32 13
  tail call void @__init_waitqueue_head(ptr noundef %xc_start_wait, ptr noundef nonnull @.str.12, ptr noundef nonnull @xlog_cil_init.__key.11) #11
  %xc_commit_wait = getelementptr inbounds %struct.xfs_cil, ptr %call.i, i32 0, i32 12
  tail call void @__init_waitqueue_head(ptr noundef %xc_commit_wait, ptr noundef nonnull @.str.14, ptr noundef nonnull @xlog_cil_init.__key.13) #11
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %log, ptr %call.i, align 128
  %l_cilp = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 2
  %10 = ptrtoint ptr %l_cilp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %l_cilp, align 8
  %call.i.i = tail call ptr @kmem_alloc(i32 noundef 168, i32 noundef 20) #11
  %committing.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %call.i.i, i32 0, i32 11
  %11 = ptrtoint ptr %committing.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %committing.i, ptr %committing.i, align 4
  %prev.i.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %call.i.i, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %committing.i, ptr %prev.i.i, align 4
  %busy_extents.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %call.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %busy_extents.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %busy_extents.i, ptr %busy_extents.i, align 4
  %prev.i13.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %call.i.i, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %prev.i13.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %busy_extents.i, ptr %prev.i13.i, align 4
  %push_work.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %call.i.i, i32 0, i32 13
  tail call void @__init_work(ptr noundef %push_work.i, i32 noundef 0) #11
  %15 = ptrtoint ptr %push_work.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %push_work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %call.i.i, i32 0, i32 13, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @xlog_cil_ctx_alloc.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry4.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %call.i.i, i32 0, i32 13, i32 1
  %16 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i14.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %call.i.i, i32 0, i32 13, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i14.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry4.i, ptr %prev.i14.i, align 4
  %func.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %call.i.i, i32 0, i32 13, i32 2
  %18 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @xlog_cil_push_work, ptr %func.i, align 4
  %xc_current_sequence.i = getelementptr inbounds %struct.xfs_cil, ptr %call.i, i32 0, i32 14
  %19 = ptrtoint ptr %xc_current_sequence.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %xc_current_sequence.i, align 16
  %inc.i = add i64 %20, 1
  store i64 %inc.i, ptr %xc_current_sequence.i, align 16
  %sequence.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %call.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %inc.i, ptr %sequence.i, align 8
  %22 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %call.i.i, align 8
  %xc_ctx.i = getelementptr inbounds %struct.xfs_cil, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %xc_ctx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i.i, ptr %xc_ctx.i, align 32
  br label %cleanup

out_destroy_cil:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kvfree(ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out_destroy_cil, %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %out_destroy_cil ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xlog_cil_destroy(ptr nocapture noundef readonly %log) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %l_cilp = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %l_cilp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l_cilp, align 8
  %xc_ctx = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %xc_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xc_ctx, align 32
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then:                                          ; preds = %entry
  %ticket = getelementptr inbounds %struct.xfs_cil_ctx, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ticket to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ticket, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xfs_log_ticket_put(ptr noundef nonnull %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %l_cilp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %l_cilp, align 8
  %xc_ctx9 = getelementptr inbounds %struct.xfs_cil, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %xc_ctx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xc_ctx9, align 32
  tail call void @kvfree(ptr noundef %9) #11
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  %10 = ptrtoint ptr %l_cilp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %l_cilp, align 8
  %xc_cil = getelementptr inbounds %struct.xfs_cil, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %xc_cil to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %xc_cil, align 4
  %cmp.i.not = icmp eq ptr %13, %xc_cil
  br i1 %cmp.i.not, label %if.end10.cond.end_crit_edge, label %cond.false, !prof !103

if.end10.cond.end_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1538) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end10.cond.end_crit_edge
  %14 = ptrtoint ptr %l_cilp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %l_cilp, align 8
  %xc_push_wq = getelementptr inbounds %struct.xfs_cil, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %xc_push_wq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xc_push_wq, align 8
  tail call void @destroy_workqueue(ptr noundef %17) #11
  %18 = ptrtoint ptr %l_cilp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %l_cilp, align 8
  tail call void @kvfree(ptr noundef %19) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_log_ticket_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xlog_ticket_alloc(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_committed_bulk(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_extent_busy_clear(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_extent_busy_ag_cmp(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_discard_extent(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_discard_extent, i32 0, i32 1), ptr blockaddress(@trace_xfs_discard_extent, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !105

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !103

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !92) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !112
  %call42 = tail call i32 @__traceiter_xfs_discard_extent(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !113
  %13 = tail call i32 @llvm.read_register.i32(metadata !92) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !92) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !103

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !92) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_discard_extent, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_discard_extent, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_discard_extent.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_discard_extent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 2449, ptr noundef nonnull @.str.19) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !109
  %31 = tail call i32 @llvm.read_register.i32(metadata !92) #11
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
declare dso_local i32 @__blkdev_issue_discard(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlog_discard_endio(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %discard_endio_work = getelementptr inbounds %struct.xfs_cil_ctx, ptr %1, i32 0, i32 12
  tail call void @__init_work(ptr noundef %discard_endio_work, i32 noundef 0) #11
  %2 = ptrtoint ptr %discard_endio_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %discard_endio_work, align 4
  %lockdep_map = getelementptr inbounds %struct.xfs_cil_ctx, ptr %1, i32 0, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.21, ptr noundef nonnull @xlog_discard_endio.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry4 = getelementptr inbounds %struct.xfs_cil_ctx, ptr %1, i32 0, i32 12, i32 1
  %3 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %1, i32 0, i32 12, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.xfs_cil_ctx, ptr %1, i32 0, i32 12, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @xlog_discard_endio_work, ptr %func, align 4
  %6 = load ptr, ptr @xfs_discard_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %discard_endio_work) #11
  tail call void @bio_put(ptr noundef %bio) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlog_discard_endio_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -76
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %busy_extents = getelementptr i8, ptr %work, i32 -28
  tail call void @xfs_extent_busy_clear(ptr noundef %5, ptr noundef %busy_extents, i1 noundef zeroext false) #11
  tail call void @kvfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_discard_extent(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xlog_print_trans(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_do_force_shutdown(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_cil_prepare_item(ptr nocapture noundef readonly %log, ptr noundef %lv, ptr noundef %old_lv, ptr nocapture noundef %diff_len, ptr nocapture noundef %diff_iovecs) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lv_buf_len = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 6
  %0 = ptrtoint ptr %lv_buf_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lv_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %lv_bytes = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 5
  %2 = ptrtoint ptr %lv_bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lv_bytes, align 4
  %4 = ptrtoint ptr %diff_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %diff_len, align 4
  %add = add i32 %5, %3
  store i32 %add, ptr %diff_len, align 4
  %lv_niovecs = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 1
  %6 = ptrtoint ptr %lv_niovecs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lv_niovecs, align 4
  %8 = ptrtoint ptr %diff_iovecs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %diff_iovecs, align 4
  %add1 = add i32 %9, %7
  store i32 %add1, ptr %diff_iovecs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool.not = icmp eq ptr %old_lv, null
  br i1 %tobool.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %lv_item = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 3
  %10 = ptrtoint ptr %lv_item to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lv_item, align 4
  %li_ops = getelementptr inbounds %struct.xfs_log_item, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %li_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %li_ops, align 4
  %iop_pin = getelementptr inbounds %struct.xfs_item_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %iop_pin to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iop_pin, align 4
  %tobool3.not = icmp eq ptr %15, null
  br i1 %tobool3.not, label %if.then2.if.end23.sink.split_crit_edge, label %if.then4

if.then2.if.end23.sink.split_crit_edge:           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.sink.split

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %15(ptr noundef %11) #11
  br label %if.end23.sink.split

if.else:                                          ; preds = %if.end
  %cmp11.not = icmp eq ptr %old_lv, %lv
  br i1 %cmp11.not, label %if.else.if.end23_crit_edge, label %if.then12

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then12:                                        ; preds = %if.else
  %16 = ptrtoint ptr %lv_buf_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lv_buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp14.not = icmp eq i32 %17, -1
  br i1 %cmp14.not, label %cond.false, label %if.then12.cond.end_crit_edge, !prof !102

if.then12.cond.end_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 309) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then12.cond.end_crit_edge
  %lv_bytes17 = getelementptr inbounds %struct.xfs_log_vec, ptr %old_lv, i32 0, i32 5
  %18 = ptrtoint ptr %lv_bytes17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lv_bytes17, align 4
  %20 = ptrtoint ptr %diff_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %diff_len, align 4
  %sub = sub i32 %21, %19
  store i32 %sub, ptr %diff_len, align 4
  %lv_niovecs18 = getelementptr inbounds %struct.xfs_log_vec, ptr %old_lv, i32 0, i32 1
  %22 = ptrtoint ptr %lv_niovecs18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lv_niovecs18, align 4
  %24 = ptrtoint ptr %diff_iovecs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %diff_iovecs, align 4
  %sub19 = sub i32 %25, %23
  store i32 %sub19, ptr %diff_iovecs, align 4
  %lv_item20 = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 3
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %cond.end, %if.then4, %if.then2.if.end23.sink.split_crit_edge
  %lv_item20.sink = phi ptr [ %lv_item20, %cond.end ], [ %lv_item, %if.then4 ], [ %lv_item, %if.then2.if.end23.sink.split_crit_edge ]
  %old_lv.sink = phi ptr [ %old_lv, %cond.end ], [ null, %if.then4 ], [ null, %if.then2.if.end23.sink.split_crit_edge ]
  %26 = ptrtoint ptr %lv_item20.sink to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lv_item20.sink, align 4
  %li_lv_shadow21 = getelementptr inbounds %struct.xfs_log_item, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %li_lv_shadow21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %old_lv.sink, ptr %li_lv_shadow21, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %if.else.if.end23_crit_edge
  %lv_item24 = getelementptr inbounds %struct.xfs_log_vec, ptr %lv, i32 0, i32 3
  %29 = ptrtoint ptr %lv_item24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lv_item24, align 4
  %li_lv = getelementptr inbounds %struct.xfs_log_item, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %li_lv to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %lv, ptr %li_lv, align 8
  %32 = load ptr, ptr %lv_item24, align 4
  %li_seq = getelementptr inbounds %struct.xfs_log_item, ptr %32, i32 0, i32 13
  %33 = ptrtoint ptr %li_seq to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %li_seq, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %tobool26.not = icmp eq i64 %34, 0
  br i1 %tobool26.not, label %if.then27, label %if.end23.if.end30_crit_edge

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %l_cilp = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 2
  %35 = ptrtoint ptr %l_cilp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %l_cilp, align 8
  %xc_ctx = getelementptr inbounds %struct.xfs_cil, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %xc_ctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xc_ctx, align 32
  %sequence = getelementptr inbounds %struct.xfs_cil_ctx, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %sequence to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %sequence, align 8
  %41 = ptrtoint ptr %li_seq to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %li_seq, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end23.if.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_commit_items(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_log_cil_wait(ptr noundef %log, ptr noundef %tic) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_cil_wait, i32 0, i32 1), ptr blockaddress(@trace_xfs_log_cil_wait, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !105

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !103

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !92) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !114
  %call42 = tail call i32 @__traceiter_xfs_log_cil_wait(ptr noundef null, ptr noundef %log, ptr noundef %tic) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !115
  %13 = tail call i32 @llvm.read_register.i32(metadata !92) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !92) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !103

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !92) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_cil_wait, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_log_cil_wait, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_log_cil_wait.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_log_cil_wait.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 1298, ptr noundef nonnull @.str.19) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !109
  %31 = tail call i32 @llvm.read_register.i32(metadata !92) #11
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
declare dso_local i32 @__traceiter_xfs_log_cil_wait(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_log_force(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue_exclusive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlog_cil_push_work(ptr noundef %work) #0 align 64 {
entry:
  %reg.i = alloca %struct.xfs_log_iovec, align 4
  %vec.i = alloca %struct.xfs_log_vec, align 4
  %thdr = alloca %struct.xfs_trans_header, align 4
  %lhdr = alloca %struct.xfs_log_iovec, align 4
  %lvhdr = alloca %struct.xfs_log_vec, align 4
  %bio = alloca %struct.bio, align 8
  %bdev_flush = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -120
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %thdr) #11
  %4 = getelementptr inbounds %struct.xfs_trans_header, ptr %thdr, i32 0, i32 1
  %5 = getelementptr inbounds %struct.xfs_trans_header, ptr %thdr, i32 0, i32 2
  %6 = getelementptr inbounds %struct.xfs_trans_header, ptr %thdr, i32 0, i32 3
  %7 = call ptr @memset(ptr %thdr, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %lhdr) #11
  %8 = ptrtoint ptr %lhdr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %lhdr, align 4, !annotation !116
  %9 = getelementptr inbounds %struct.xfs_log_iovec, ptr %lhdr, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !116
  %11 = getelementptr inbounds %struct.xfs_log_iovec, ptr %lhdr, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !116
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %lvhdr) #11
  %13 = call ptr @memset(ptr %lvhdr, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %bio) #11
  %14 = call ptr @memset(ptr %bio, i32 255, i32 104)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %bdev_flush) #11
  %15 = getelementptr inbounds i8, ptr %bdev_flush, i32 4
  %16 = call ptr @memset(ptr %15, i32 255, i32 52)
  %17 = ptrtoint ptr %bdev_flush to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %bdev_flush, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %bdev_flush, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_completion.__key) #11
  %call.i.i189 = call ptr @kmem_alloc(i32 noundef 168, i32 noundef 20) #11
  %committing.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %call.i.i189, i32 0, i32 11
  %18 = ptrtoint ptr %committing.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %committing.i, ptr %committing.i, align 4
  %prev.i.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %call.i.i189, i32 0, i32 11, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %committing.i, ptr %prev.i.i, align 4
  %busy_extents.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %call.i.i189, i32 0, i32 8
  %20 = ptrtoint ptr %busy_extents.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %busy_extents.i, ptr %busy_extents.i, align 4
  %prev.i13.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %call.i.i189, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %prev.i13.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %busy_extents.i, ptr %prev.i13.i, align 4
  %push_work.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %call.i.i189, i32 0, i32 13
  call void @__init_work(ptr noundef %push_work.i, i32 noundef 0) #11
  %22 = ptrtoint ptr %push_work.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %push_work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %call.i.i189, i32 0, i32 13, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @xlog_cil_ctx_alloc.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry4.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %call.i.i189, i32 0, i32 13, i32 1
  %23 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i14.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %call.i.i189, i32 0, i32 13, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i14.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry4.i, ptr %prev.i14.i, align 4
  %func.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %call.i.i189, i32 0, i32 13, i32 2
  %25 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @xlog_cil_push_work, ptr %func.i, align 4
  %call.i190 = call ptr @xlog_ticket_alloc(ptr noundef %3, i32 noundef 0, i32 noundef 1, i8 noundef zeroext 105, i1 noundef zeroext false) #11
  %t_curr_res.i = getelementptr inbounds %struct.xlog_ticket, ptr %call.i190, i32 0, i32 4
  %26 = ptrtoint ptr %t_curr_res.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %t_curr_res.i, align 4
  %ticket = getelementptr inbounds %struct.xfs_cil_ctx, ptr %call.i.i189, i32 0, i32 5
  %27 = ptrtoint ptr %ticket to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i190, ptr %ticket, align 4
  %xc_ctx_lock = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 5
  call void @down_write(ptr noundef %xc_ctx_lock) #11
  %xc_push_lock = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %xc_push_lock) #11
  %xc_push_seq = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 9
  %28 = ptrtoint ptr %xc_push_seq to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %xc_push_seq, align 16
  %sequence = getelementptr i8, ptr %work, i32 -112
  %30 = ptrtoint ptr %sequence to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %sequence, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %31)
  %cmp.not = icmp sgt i64 %29, %31
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !102

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 904) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %xc_push_commit_stable = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 10
  %32 = ptrtoint ptr %xc_push_commit_stable to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %xc_push_commit_stable, align 8, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool5.not = icmp eq i8 %33, 0
  %34 = ptrtoint ptr %xc_push_commit_stable to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %xc_push_commit_stable, align 8
  %head.i = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 15, i32 1
  %35 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %36, %head.i
  br i1 %cmp.i.i.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %xc_push_wait = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 15
  call void @__wake_up(ptr noundef %xc_push_wait, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %xc_cil = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %xc_cil to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %xc_cil, align 4
  %cmp.i.not = icmp eq ptr %38, %xc_cil
  br i1 %cmp.i.not, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %xc_push_seq to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 0, ptr %xc_push_seq, align 16
  br label %out_skip

if.end15:                                         ; preds = %if.end
  %40 = ptrtoint ptr %sequence to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %sequence, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %41)
  %cmp17 = icmp slt i64 %29, %41
  br i1 %cmp17, label %if.end15.out_skip_crit_edge, label %if.end20

if.end15.out_skip_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_skip

if.end20:                                         ; preds = %if.end15
  %committing = getelementptr i8, ptr %work, i32 -52
  %xc_committing = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 11
  %42 = ptrtoint ptr %xc_committing to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xc_committing, align 4
  %call.i.i191 = call zeroext i1 @__list_add_valid(ptr noundef %committing, ptr noundef %xc_committing, ptr noundef %43) #11
  br i1 %call.i.i191, label %if.end.i.i, label %if.end20.list_add.exit_crit_edge

if.end20.list_add.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %committing, ptr %prev1.i.i, align 4
  %45 = ptrtoint ptr %committing to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %committing, align 4
  %prev3.i.i = getelementptr i8, ptr %work, i32 -48
  %46 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %xc_committing, ptr %prev3.i.i, align 4
  %47 = ptrtoint ptr %xc_committing to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %committing, ptr %xc_committing, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end20.list_add.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %xc_push_lock) #11
  %l_tail_lsn = getelementptr inbounds %struct.xlog, ptr %3, i32 0, i32 29
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %l_tail_lsn, i32 noundef 8) #11
  %call.i = call i64 @generic_atomic64_read(ptr noundef %l_tail_lsn) #11
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 128
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %m_ddev_targp, align 8
  %bt_bdev = getelementptr inbounds %struct.xfs_buftarg, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %bt_bdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bt_bdev, align 4
  call void @xfs_flush_bdev_async(ptr noundef nonnull %bio, ptr noundef %53, ptr noundef nonnull %bdev_flush) #11
  %54 = ptrtoint ptr %xc_cil to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %xc_cil, align 4
  %cmp.i192.not236 = icmp eq ptr %55, %xc_cil
  br i1 %cmp.i192.not236, label %list_add.exit.while.end_crit_edge, label %while.body.lr.ph

list_add.exit.while.end_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %list_add.exit
  %lv_chain = getelementptr i8, ptr %work, i32 -64
  br label %while.body

while.body:                                       ; preds = %if.end36.while.body_crit_edge, %while.body.lr.ph
  %56 = phi ptr [ %55, %while.body.lr.ph ], [ %76, %if.end36.while.body_crit_edge ]
  %num_iovecs.0238 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %if.end36.while.body_crit_edge ]
  %lv.0237 = phi ptr [ null, %while.body.lr.ph ], [ %72, %if.end36.while.body_crit_edge ]
  %call.i.i194 = call zeroext i1 @__list_del_entry_valid(ptr noundef %56) #11
  br i1 %call.i.i194, label %if.end.i.i196, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i196:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i195 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i195 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i195, align 4
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %56, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i196, %while.body.list_del_init.exit_crit_edge
  %63 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %56, ptr %56, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %56, ptr %prev.i3.i, align 4
  %65 = ptrtoint ptr %lv_chain to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lv_chain, align 8
  %tobool32.not = icmp eq ptr %66, null
  %li_lv = getelementptr i8, ptr %56, i32 8
  %67 = ptrtoint ptr %li_lv to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %li_lv, align 8
  br i1 %tobool32.not, label %if.then33, label %if.else

if.then33:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %lv_chain to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %lv_chain, align 8
  br label %if.end36

if.else:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %lv.0237 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %68, ptr %lv.0237, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then33
  %li_lv37 = getelementptr i8, ptr %56, i32 8
  %71 = ptrtoint ptr %li_lv37 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %li_lv37, align 8
  store ptr null, ptr %li_lv37, align 8
  %lv_niovecs = getelementptr inbounds %struct.xfs_log_vec, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %lv_niovecs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %lv_niovecs, align 4
  %add = add i32 %74, %num_iovecs.0238
  %75 = ptrtoint ptr %xc_cil to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile ptr, ptr %xc_cil, align 4
  %cmp.i192.not = icmp eq ptr %76, %xc_cil
  br i1 %cmp.i192.not, label %if.end36.while.end_crit_edge, label %if.end36.while.body_crit_edge

if.end36.while.body_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end36.while.end_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end36.while.end_crit_edge, %list_add.exit.while.end_crit_edge
  %num_iovecs.0.lcssa = phi i32 [ 0, %list_add.exit.while.end_crit_edge ], [ %add, %if.end36.while.end_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %xc_push_lock) #11
  %xc_current_sequence.i = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 14
  %77 = ptrtoint ptr %xc_current_sequence.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %xc_current_sequence.i, align 16
  %inc.i = add i64 %78, 1
  store i64 %inc.i, ptr %xc_current_sequence.i, align 16
  %sequence.i = getelementptr inbounds %struct.xfs_cil_ctx, ptr %call.i.i189, i32 0, i32 1
  %79 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %inc.i, ptr %sequence.i, align 8
  %80 = ptrtoint ptr %call.i.i189 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %1, ptr %call.i.i189, align 8
  %xc_ctx.i = getelementptr inbounds %struct.xfs_cil, ptr %1, i32 0, i32 6
  %81 = ptrtoint ptr %xc_ctx.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call.i.i189, ptr %xc_ctx.i, align 32
  call void @_raw_spin_unlock(ptr noundef %xc_push_lock) #11
  call void @up_write(ptr noundef %xc_ctx_lock) #11
  %ticket42 = getelementptr i8, ptr %work, i32 -84
  %82 = ptrtoint ptr %ticket42 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ticket42, align 4
  %84 = ptrtoint ptr %thdr to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1414676814, ptr %thdr, align 4
  %85 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 40, ptr %4, align 4
  %t_tid = getelementptr inbounds %struct.xlog_ticket, ptr %83, i32 0, i32 2
  %86 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %t_tid, align 4
  %88 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %5, align 4
  %89 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %num_iovecs.0.lcssa, ptr %6, align 4
  %90 = ptrtoint ptr %lhdr to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %thdr, ptr %lhdr, align 4
  %91 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 16, ptr %9, align 4
  %92 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 19, ptr %11, align 4
  %t_curr_res = getelementptr inbounds %struct.xlog_ticket, ptr %83, i32 0, i32 4
  %93 = ptrtoint ptr %t_curr_res to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %t_curr_res, align 4
  %sub = add i32 %94, -28
  store i32 %sub, ptr %t_curr_res, align 4
  %lv_niovecs45 = getelementptr inbounds %struct.xfs_log_vec, ptr %lvhdr, i32 0, i32 1
  %95 = ptrtoint ptr %lv_niovecs45 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %lv_niovecs45, align 4
  %lv_iovecp = getelementptr inbounds %struct.xfs_log_vec, ptr %lvhdr, i32 0, i32 2
  %96 = ptrtoint ptr %lv_iovecp to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %lhdr, ptr %lv_iovecp, align 4
  %lv_chain46 = getelementptr i8, ptr %work, i32 -64
  %97 = ptrtoint ptr %lv_chain46 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %lv_chain46, align 8
  %99 = ptrtoint ptr %lvhdr to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %lvhdr, align 4
  call void @wait_for_completion(ptr noundef nonnull %bdev_flush) #11
  %100 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %add.ptr, align 8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 128
  %104 = ptrtoint ptr %sequence to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %sequence, align 8
  %xc_push_lock.i.i = getelementptr inbounds %struct.xfs_cil, ptr %101, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %xc_push_lock.i.i) #11
  %xc_committing.i.i = getelementptr inbounds %struct.xfs_cil, ptr %101, i32 0, i32 11
  %106 = ptrtoint ptr %xc_committing.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %.pn3539.i.i = load ptr, ptr %xc_committing.i.i, align 4
  %cmp.not3640.i.i = icmp eq ptr %.pn3539.i.i, %xc_committing.i.i
  br i1 %cmp.not3640.i.i, label %while.end.xlog_cil_write_chain.exit_crit_edge, label %for.body.lr.ph.lr.ph.i.i

while.end.xlog_cil_write_chain.exit_crit_edge:    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %xlog_cil_write_chain.exit

for.body.lr.ph.lr.ph.i.i:                         ; preds = %while.end
  %xc_start_wait.i.i = getelementptr inbounds %struct.xfs_cil, ptr %101, i32 0, i32 13
  br label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %restart.backedge.i.i.for.body.lr.ph.i.i_crit_edge, %for.body.lr.ph.lr.ph.i.i
  %.pn3541.i.i = phi ptr [ %.pn3539.i.i, %for.body.lr.ph.lr.ph.i.i ], [ %.pn35.i.i, %restart.backedge.i.i.for.body.lr.ph.i.i_crit_edge ]
  %107 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %101, align 128
  %l_opstate.i.i.i = getelementptr inbounds %struct.xlog, ptr %108, i32 0, i32 6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn37.i.i = phi ptr [ %.pn3541.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %109 = ptrtoint ptr %l_opstate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %l_opstate.i.i.i, align 4
  %111 = and i32 %110, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.i.not.i.i = icmp eq i32 %111, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i198, label %xlog_cil_write_chain.exit.thread

if.end.i.i198:                                    ; preds = %for.body.i.i
  %sequence3.i.i = getelementptr i8, ptr %.pn37.i.i, i32 -60
  %112 = ptrtoint ptr %sequence3.i.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %sequence3.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %113, i64 %105)
  %cmp4.not.i.i = icmp slt i64 %113, %105
  br i1 %cmp4.not.i.i, label %if.end6.i.i, label %if.end.i.i198.for.inc.i.i_crit_edge

if.end.i.i198.for.inc.i.i_crit_edge:              ; preds = %if.end.i.i198
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end6.i.i:                                      ; preds = %if.end.i.i198
  %start_lsn.i.i = getelementptr i8, ptr %.pn37.i.i, i32 -52
  %114 = ptrtoint ptr %start_lsn.i.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %start_lsn.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %115)
  %tobool.not.i.i = icmp eq i64 %115, 0
  br i1 %tobool.not.i.i, label %restart.backedge.i.i, label %if.end6.i.i.for.inc.i.i_crit_edge

if.end6.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

restart.backedge.i.i:                             ; preds = %if.end6.i.i
  call fastcc void @xlog_wait(ptr noundef %xc_start_wait.i.i, ptr noundef %xc_push_lock.i.i) #11
  call void @_raw_spin_lock(ptr noundef %xc_push_lock.i.i) #11
  %116 = ptrtoint ptr %xc_committing.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %.pn35.i.i = load ptr, ptr %xc_committing.i.i, align 4
  %cmp.not36.i.i = icmp eq ptr %.pn35.i.i, %xc_committing.i.i
  br i1 %cmp.not36.i.i, label %restart.backedge.i.i.xlog_cil_write_chain.exit_crit_edge, label %restart.backedge.i.i.for.body.lr.ph.i.i_crit_edge

restart.backedge.i.i.for.body.lr.ph.i.i_crit_edge: ; preds = %restart.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph.i.i

restart.backedge.i.i.xlog_cil_write_chain.exit_crit_edge: ; preds = %restart.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xlog_cil_write_chain.exit

for.inc.i.i:                                      ; preds = %if.end6.i.i.for.inc.i.i_crit_edge, %if.end.i.i198.for.inc.i.i_crit_edge
  %117 = ptrtoint ptr %.pn37.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %.pn.i.i = load ptr, ptr %.pn37.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %xc_committing.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.xlog_cil_write_chain.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.xlog_cil_write_chain.exit_crit_edge:  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xlog_cil_write_chain.exit

xlog_cil_write_chain.exit.thread:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock(ptr noundef %xc_push_lock.i.i) #11
  br label %out_abort_free_ticket

xlog_cil_write_chain.exit:                        ; preds = %for.inc.i.i.xlog_cil_write_chain.exit_crit_edge, %restart.backedge.i.i.xlog_cil_write_chain.exit_crit_edge, %while.end.xlog_cil_write_chain.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %xc_push_lock.i.i) #11
  %118 = ptrtoint ptr %ticket42 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ticket42, align 4
  %call2.i = call i32 @xlog_write(ptr noundef %103, ptr noundef %add.ptr, ptr noundef nonnull %lvhdr, ptr noundef %119, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool49.not = icmp eq i32 %call2.i, 0
  br i1 %tobool49.not, label %if.end51, label %xlog_cil_write_chain.exit.out_abort_free_ticket_crit_edge

xlog_cil_write_chain.exit.out_abort_free_ticket_crit_edge: ; preds = %xlog_cil_write_chain.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_abort_free_ticket

if.end51:                                         ; preds = %xlog_cil_write_chain.exit
  %120 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %add.ptr, align 8
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 128
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reg.i) #11
  %124 = call ptr @memcpy(ptr %reg.i, ptr @__const.xlog_cil_write_commit_record.reg, i32 12)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vec.i) #11
  %125 = getelementptr inbounds %struct.xfs_log_vec, ptr %vec.i, i32 0, i32 1
  %126 = getelementptr inbounds %struct.xfs_log_vec, ptr %vec.i, i32 0, i32 2
  %127 = call ptr @memset(ptr %vec.i, i32 0, i32 32)
  %128 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1, ptr %125, align 4
  %129 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %reg.i, ptr %126, align 4
  %l_opstate.i.i = getelementptr inbounds %struct.xlog, ptr %123, i32 0, i32 6
  %130 = ptrtoint ptr %l_opstate.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %l_opstate.i.i, align 4
  %132 = and i32 %131, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.i.not.i = icmp eq i32 %132, 0
  br i1 %tobool.i.not.i, label %if.end.i204, label %if.end51.xlog_cil_write_commit_record.exit.thread_crit_edge

if.end51.xlog_cil_write_commit_record.exit.thread_crit_edge: ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %xlog_cil_write_commit_record.exit.thread

if.end.i204:                                      ; preds = %if.end51
  %133 = ptrtoint ptr %sequence to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %sequence, align 8
  %xc_push_lock.i.i200 = getelementptr inbounds %struct.xfs_cil, ptr %121, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %xc_push_lock.i.i200) #11
  %xc_committing.i.i201 = getelementptr inbounds %struct.xfs_cil, ptr %121, i32 0, i32 11
  %135 = ptrtoint ptr %xc_committing.i.i201 to i32
  call void @__asan_load4_noabort(i32 %135)
  %.pn3539.i.i202 = load ptr, ptr %xc_committing.i.i201, align 4
  %cmp.not3640.i.i203 = icmp eq ptr %.pn3539.i.i202, %xc_committing.i.i201
  br i1 %cmp.not3640.i.i203, label %if.end.i204.if.end4.i_crit_edge, label %for.body.lr.ph.lr.ph.i.i205

if.end.i204.if.end4.i_crit_edge:                  ; preds = %if.end.i204
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

for.body.lr.ph.lr.ph.i.i205:                      ; preds = %if.end.i204
  %xc_commit_wait.i.i = getelementptr inbounds %struct.xfs_cil, ptr %121, i32 0, i32 12
  br label %for.body.lr.ph.i.i208

for.body.lr.ph.i.i208:                            ; preds = %restart.backedge.i.i218.for.body.lr.ph.i.i208_crit_edge, %for.body.lr.ph.lr.ph.i.i205
  %.pn3541.i.i206 = phi ptr [ %.pn3539.i.i202, %for.body.lr.ph.lr.ph.i.i205 ], [ %.pn35.i.i216, %restart.backedge.i.i218.for.body.lr.ph.i.i208_crit_edge ]
  %136 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %121, align 128
  %l_opstate.i.i.i207 = getelementptr inbounds %struct.xlog, ptr %137, i32 0, i32 6
  br label %for.body.i.i211

for.body.i.i211:                                  ; preds = %for.inc.i.i221.for.body.i.i211_crit_edge, %for.body.lr.ph.i.i208
  %.pn37.i.i209 = phi ptr [ %.pn3541.i.i206, %for.body.lr.ph.i.i208 ], [ %.pn.i.i219, %for.inc.i.i221.for.body.i.i211_crit_edge ]
  %138 = ptrtoint ptr %l_opstate.i.i.i207 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %l_opstate.i.i.i207, align 4
  %140 = and i32 %139, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.i.not.i.i210 = icmp eq i32 %140, 0
  br i1 %tobool.i.not.i.i210, label %if.end.i.i214, label %xlog_cil_order_write.exit.i222

if.end.i.i214:                                    ; preds = %for.body.i.i211
  %sequence3.i.i212 = getelementptr i8, ptr %.pn37.i.i209, i32 -60
  %141 = ptrtoint ptr %sequence3.i.i212 to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %sequence3.i.i212, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %142, i64 %134)
  %cmp4.not.i.i213 = icmp slt i64 %142, %134
  br i1 %cmp4.not.i.i213, label %if.end6.i.i215, label %if.end.i.i214.for.inc.i.i221_crit_edge

if.end.i.i214.for.inc.i.i221_crit_edge:           ; preds = %if.end.i.i214
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i221

if.end6.i.i215:                                   ; preds = %if.end.i.i214
  %commit_lsn.i.i = getelementptr i8, ptr %.pn37.i.i209, i32 -44
  %143 = ptrtoint ptr %commit_lsn.i.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %commit_lsn.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %144)
  %tobool11.not.i.i = icmp eq i64 %144, 0
  br i1 %tobool11.not.i.i, label %restart.backedge.i.i218, label %if.end6.i.i215.for.inc.i.i221_crit_edge

if.end6.i.i215.for.inc.i.i221_crit_edge:          ; preds = %if.end6.i.i215
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i221

restart.backedge.i.i218:                          ; preds = %if.end6.i.i215
  call fastcc void @xlog_wait(ptr noundef %xc_commit_wait.i.i, ptr noundef %xc_push_lock.i.i200) #11
  call void @_raw_spin_lock(ptr noundef %xc_push_lock.i.i200) #11
  %145 = ptrtoint ptr %xc_committing.i.i201 to i32
  call void @__asan_load4_noabort(i32 %145)
  %.pn35.i.i216 = load ptr, ptr %xc_committing.i.i201, align 4
  %cmp.not36.i.i217 = icmp eq ptr %.pn35.i.i216, %xc_committing.i.i201
  br i1 %cmp.not36.i.i217, label %restart.backedge.i.i218.if.end4.i_crit_edge, label %restart.backedge.i.i218.for.body.lr.ph.i.i208_crit_edge

restart.backedge.i.i218.for.body.lr.ph.i.i208_crit_edge: ; preds = %restart.backedge.i.i218
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph.i.i208

restart.backedge.i.i218.if.end4.i_crit_edge:      ; preds = %restart.backedge.i.i218
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

for.inc.i.i221:                                   ; preds = %if.end6.i.i215.for.inc.i.i221_crit_edge, %if.end.i.i214.for.inc.i.i221_crit_edge
  %146 = ptrtoint ptr %.pn37.i.i209 to i32
  call void @__asan_load4_noabort(i32 %146)
  %.pn.i.i219 = load ptr, ptr %.pn37.i.i209, align 4
  %cmp.not.i.i220 = icmp eq ptr %.pn.i.i219, %xc_committing.i.i201
  br i1 %cmp.not.i.i220, label %for.inc.i.i221.if.end4.i_crit_edge, label %for.inc.i.i221.for.body.i.i211_crit_edge

for.inc.i.i221.for.body.i.i211_crit_edge:         ; preds = %for.inc.i.i221
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i211

for.inc.i.i221.if.end4.i_crit_edge:               ; preds = %for.inc.i.i221
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

xlog_cil_order_write.exit.i222:                   ; preds = %for.body.i.i211
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock(ptr noundef %xc_push_lock.i.i200) #11
  br label %xlog_cil_write_commit_record.exit.thread

if.end4.i:                                        ; preds = %for.inc.i.i221.if.end4.i_crit_edge, %restart.backedge.i.i218.if.end4.i_crit_edge, %if.end.i204.if.end4.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %xc_push_lock.i.i200) #11
  %147 = ptrtoint ptr %ticket42 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ticket42, align 4
  %call5.i = call i32 @xlog_write(ptr noundef %123, ptr noundef %add.ptr, ptr noundef nonnull %vec.i, ptr noundef %148, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end55, label %if.then7.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %149 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %123, align 128
  call void @xfs_do_force_shutdown(ptr noundef %150, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 857) #11
  br label %xlog_cil_write_commit_record.exit.thread

xlog_cil_write_commit_record.exit.thread:         ; preds = %if.then7.i, %xlog_cil_order_write.exit.i222, %if.end51.xlog_cil_write_commit_record.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vec.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reg.i) #11
  br label %out_abort_free_ticket

if.end55:                                         ; preds = %if.end4.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vec.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reg.i) #11
  call void @xfs_log_ticket_ungrant(ptr noundef %3, ptr noundef %83) #11
  %l_icloglock = getelementptr inbounds %struct.xlog, ptr %3, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %l_icloglock) #11
  %start_lsn = getelementptr i8, ptr %work, i32 -104
  %151 = ptrtoint ptr %start_lsn to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %start_lsn, align 8
  %commit_lsn = getelementptr i8, ptr %work, i32 -96
  %153 = ptrtoint ptr %commit_lsn to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %commit_lsn, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %152, i64 %154)
  %cmp56.not = icmp eq i64 %152, %154
  br i1 %cmp56.not, label %if.end55.if.end69_crit_edge, label %if.then57

if.end55.if.end69_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then57:                                        ; preds = %if.end55
  %commit_iclog = getelementptr i8, ptr %work, i32 -88
  %155 = ptrtoint ptr %commit_iclog to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %commit_iclog, align 8
  %ic_prev = getelementptr inbounds %struct.xlog_in_core, ptr %156, i32 0, i32 3
  %157 = ptrtoint ptr %ic_prev to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ic_prev, align 4
  %ic_data = getelementptr inbounds %struct.xlog_in_core, ptr %158, i32 0, i32 13
  %159 = ptrtoint ptr %ic_data to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ic_data, align 4
  %h_lsn = getelementptr inbounds %struct.xlog_rec_header, ptr %160, i32 0, i32 4
  %161 = ptrtoint ptr %h_lsn to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %h_lsn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %162)
  %tobool58.not = icmp eq i64 %162, 0
  br i1 %tobool58.not, label %if.then57.if.end67_crit_edge, label %land.lhs.true

if.then57.if.end67_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

land.lhs.true:                                    ; preds = %if.then57
  %163 = lshr i64 %162, 32
  %conv.i225 = trunc i64 %163 to i32
  %164 = lshr i64 %154, 32
  %conv2.i = trunc i64 %164 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i225, i32 %conv2.i)
  %cmp.not.i = icmp eq i32 %conv.i225, %conv2.i
  br i1 %cmp.not.i, label %if.end.i226, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i225, i32 %conv2.i)
  %cmp8.i = icmp ult i32 %conv.i225, %conv2.i
  br i1 %cmp8.i, label %if.then.i.if.then62_crit_edge, label %if.then.i.if.end67_crit_edge

if.then.i.if.end67_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then.i.if.then62_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then62

if.end.i226:                                      ; preds = %land.lhs.true
  %conv11.i = trunc i64 %162 to i32
  %conv12.i = trunc i64 %154 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i, i32 %conv12.i)
  %cmp18.i = icmp ult i32 %conv11.i, %conv12.i
  br i1 %cmp18.i, label %if.end.i226.if.then62_crit_edge, label %if.end.i226.if.end67_crit_edge

if.end.i226.if.end67_crit_edge:                   ; preds = %if.end.i226
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.end.i226.if.then62_crit_edge:                  ; preds = %if.end.i226
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then62

if.then62:                                        ; preds = %if.end.i226.if.then62_crit_edge, %if.then.i.if.then62_crit_edge
  %call65 = call i32 @xlog_wait_on_iclog(ptr noundef %158) #11
  call void @_raw_spin_lock(ptr noundef %l_icloglock) #11
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %if.end.i226.if.end67_crit_edge, %if.then.i.if.end67_crit_edge, %if.then57.if.end67_crit_edge
  %165 = ptrtoint ptr %commit_iclog to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %commit_iclog, align 8
  %ic_flags = getelementptr inbounds %struct.xlog_in_core, ptr %166, i32 0, i32 8
  %167 = ptrtoint ptr %ic_flags to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %ic_flags, align 128
  %or = or i32 %168, 1
  store i32 %or, ptr %ic_flags, align 128
  br label %if.end69

if.end69:                                         ; preds = %if.end67, %if.end55.if.end69_crit_edge
  %commit_iclog70 = getelementptr i8, ptr %work, i32 -88
  %169 = ptrtoint ptr %commit_iclog70 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %commit_iclog70, align 8
  %ic_flags71 = getelementptr inbounds %struct.xlog_in_core, ptr %170, i32 0, i32 8
  %171 = ptrtoint ptr %ic_flags71 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %ic_flags71, align 128
  %or72 = or i32 %172, 2
  store i32 %or72, ptr %ic_flags71, align 128
  br i1 %tobool5.not, label %if.end69.if.end79_crit_edge, label %land.lhs.true74

if.end69.if.end79_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

land.lhs.true74:                                  ; preds = %if.end69
  %173 = ptrtoint ptr %commit_iclog70 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %commit_iclog70, align 8
  %ic_state = getelementptr inbounds %struct.xlog_in_core, ptr %174, i32 0, i32 7
  %175 = ptrtoint ptr %ic_state to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %ic_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp76 = icmp eq i32 %176, 0
  br i1 %cmp76, label %if.then77, label %land.lhs.true74.if.end79_crit_edge

land.lhs.true74.if.end79_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.then77:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #13
  call void @xlog_state_switch_iclogs(ptr noundef %3, ptr noundef %174, i32 noundef 0) #11
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %land.lhs.true74.if.end79_crit_edge, %if.end69.if.end79_crit_edge
  %177 = ptrtoint ptr %commit_iclog70 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %commit_iclog70, align 8
  %call81 = call i32 @xlog_state_release_iclog(ptr noundef %3, ptr noundef %178, i64 noundef %call.i) #11
  call void @_raw_spin_unlock(ptr noundef %l_icloglock) #11
  br label %cleanup

out_skip:                                         ; preds = %if.end15.out_skip_crit_edge, %if.then12
  call void @_raw_spin_unlock(ptr noundef %xc_push_lock) #11
  call void @up_write(ptr noundef %xc_ctx_lock) #11
  %179 = ptrtoint ptr %ticket to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %ticket, align 4
  call void @xfs_log_ticket_put(ptr noundef %180) #11
  call void @kvfree(ptr noundef %call.i.i189) #11
  br label %cleanup

out_abort_free_ticket:                            ; preds = %xlog_cil_write_commit_record.exit.thread, %xlog_cil_write_chain.exit.out_abort_free_ticket_crit_edge, %xlog_cil_write_chain.exit.thread
  call void @xfs_log_ticket_ungrant(ptr noundef %3, ptr noundef %83) #11
  %l_opstate.i = getelementptr inbounds %struct.xlog, ptr %3, i32 0, i32 6
  %181 = ptrtoint ptr %l_opstate.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile i32, ptr %l_opstate.i, align 4
  %183 = and i32 %182, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool.i.not = icmp eq i32 %183, 0
  br i1 %tobool.i.not, label %cond.false93, label %out_abort_free_ticket.cond.end94_crit_edge, !prof !102

out_abort_free_ticket.cond.end94_crit_edge:       ; preds = %out_abort_free_ticket
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end94

cond.false93:                                     ; preds = %out_abort_free_ticket
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, i32 noundef 1136) #11
  br label %cond.end94

cond.end94:                                       ; preds = %cond.false93, %out_abort_free_ticket.cond.end94_crit_edge
  %commit_iclog95 = getelementptr i8, ptr %work, i32 -88
  %184 = ptrtoint ptr %commit_iclog95 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %commit_iclog95, align 8
  %tobool96.not = icmp eq ptr %185, null
  br i1 %tobool96.not, label %if.then97, label %if.end98

if.then97:                                        ; preds = %cond.end94
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @xlog_cil_committed(ptr noundef %add.ptr)
  br label %cleanup

if.end98:                                         ; preds = %cond.end94
  call void @__sanitizer_cov_trace_pc() #13
  %l_icloglock99 = getelementptr inbounds %struct.xlog, ptr %3, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %l_icloglock99) #11
  %186 = ptrtoint ptr %commit_iclog95 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %commit_iclog95, align 8
  %call101 = call i32 @xlog_state_release_iclog(ptr noundef %3, ptr noundef %187, i64 noundef 0) #11
  call void @_raw_spin_unlock(ptr noundef %l_icloglock99) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %if.then97, %out_skip, %if.end79
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %bdev_flush) #11
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %bio) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %lvhdr) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %lhdr) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %thdr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_flush_bdev_async(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xlog_wait_on_iclog(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xlog_state_switch_iclogs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xlog_state_release_iclog(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xlog_write(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !29, !31, !33, !35, !36, !37, !38, !40, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !69, !71, !73, !74, !76, !77, !79, !81, !82, !84, !85, !87, !89, !91}
!llvm.named.register.sp = !{!92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_log_cil.c", i32 701, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_log_cil.c", i32 1376, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_log_cil.c", i32 1501, i32 36}
!7 = !{ptr @xlog_cil_init.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../fs/xfs/xfs_log_cil.c", i32 1509, i32 2}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @xlog_cil_init.__key.5, !11, !"__key", i1 false, i1 false}
!11 = !{!"../fs/xfs/xfs_log_cil.c", i32 1510, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @xlog_cil_init.__key.7, !14, !"__key", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_log_cil.c", i32 1511, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @xlog_cil_init.__key.9, !17, !"__key", i1 false, i1 false}
!17 = !{!"../fs/xfs/xfs_log_cil.c", i32 1512, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @xlog_cil_init.__key.11, !20, !"__key", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_log_cil.c", i32 1513, i32 2}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @xlog_cil_init.__key.13, !23, !"__key", i1 false, i1 false}
!23 = !{!"../fs/xfs/xfs_log_cil.c", i32 1514, i32 2}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_log_cil.c", i32 1538, i32 2}
!27 = !{ptr @xfs_discard_wq, !28, !"xfs_discard_wq", i1 false, i1 false}
!28 = !{!"../fs/xfs/xfs_log_cil.c", i32 20, i32 26}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/xfs_log_cil.c", i32 598, i32 2}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/xfs_log_cil.c", i32 611, i32 3}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../fs/xfs/xfs_trace.h", i32 2449, i32 1}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!37 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @xlog_discard_endio.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../fs/xfs/xfs_log_cil.c", i32 582, i32 2}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/xfs/xfs_log_cil.c", i32 458, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/xfs/xfs_log_cil.c", i32 500, i32 3}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/xfs/xfs_log_cil.c", i32 510, i32 23}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/xfs/xfs_log_cil.c", i32 512, i32 5}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/xfs/xfs_log_cil.c", i32 514, i32 23}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/xfs/xfs_log_cil.c", i32 516, i32 23}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/xfs/xfs_log_cil.c", i32 369, i32 3}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/xfs/xfs_log_cil.c", i32 426, i32 5}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/xfs/xfs_log_cil.c", i32 431, i32 3}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/xfs/xfs_log_cil.c", i32 309, i32 3}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../fs/xfs/xfs_trace.h", i32 3577, i32 1}
!66 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/xfs/xfs_log_cil.c", i32 1164, i32 2}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/xfs/xfs_log_cil.c", i32 1202, i32 3}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../fs/xfs/xfs_trace.h", i32 1298, i32 1}
!73 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../fs/xfs/xfs_trace.h", i32 1325, i32 1}
!76 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/xfs/xfs_log_cil.c", i32 1240, i32 2}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../fs/xfs/xfs_log_priv.h", i32 624, i32 2}
!81 = distinct !{null, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @xlog_cil_ctx_alloc.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../fs/xfs/xfs_log_cil.c", i32 64, i32 2}
!84 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/xfs/xfs_log_cil.c", i32 904, i32 2}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/xfs/xfs_log_cil.c", i32 1136, i32 2}
!89 = !{ptr @init_completion.__key, !90, !"__key", i1 false, i1 false}
!90 = !{!"../include/linux/completion.h", i32 87, i32 2}
!91 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!92 = !{!"sp"}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"branch_weights", i32 1, i32 2000}
!103 = !{!"branch_weights", i32 2000, i32 1}
!104 = !{i64 2148663974, i64 2148664000, i64 2148664029, i64 2148664063, i64 2148664094, i64 2148664117}
!105 = !{i64 2148291962, i64 2148291967, i64 2148291980, i64 2148292024, i64 2148292058, i64 2148292079}
!106 = !{i64 2165328193}
!107 = !{i64 2165328426}
!108 = !{i64 2149994055}
!109 = !{i64 2149995091}
!110 = !{i64 2159366975}
!111 = !{i64 2159367200}
!112 = !{i64 2162598546}
!113 = !{i64 2162598785}
!114 = !{i64 2159346183}
!115 = !{i64 2159346394}
!116 = !{!"auto-init"}
!117 = !{i8 0, i8 2}
