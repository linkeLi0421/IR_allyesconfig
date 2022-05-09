; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_trans.c_pt.bc'
source_filename = "../fs/xfs/xfs_trans.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.xfs_item_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.xfs_ail_cursor = type { %struct.list_head, ptr }
%struct.xfs_ail = type { ptr, ptr, %struct.list_head, i64, i64, %struct.list_head, %struct.spinlock, i64, i32, %struct.list_head, %struct.wait_queue_head }
%struct.xfs_log_vec = type { ptr, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.__xfsstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.xlog = type { ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i32, i32, i32, i64, i32, i32, [88 x i8], %struct.wait_queue_head, i32, ptr, %struct.spinlock, i32, i32, i32, i32, [8 x i8], %struct.atomic64_t, [120 x i8], %struct.atomic64_t, [120 x i8], %struct.xlog_grant_head, %struct.xlog_grant_head, %struct.xfs_kobj, [8 x ptr], i64, i32, %struct.rw_semaphore, [52 x i8] }
%struct.xlog_grant_head = type { %struct.spinlock, %struct.list_head, %struct.atomic64_t, [64 x i8] }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%union.anon.76 = type { %struct.callback_head }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.78 = type { ptr }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_dsb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }

@xfs_trans_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trans.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"!(flags & XFS_TRANS_RES_FDBLKS) || xfs_has_lazysbcount(mp)\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tp->t_rtx_res_used <= tp->t_rtx_res\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"delta < 0\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"delta > 0\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"!error\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lip->li_mountp == tp->t_mountp\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"lip->li_ailp == tp->t_mountp->m_ail\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"list_empty(&lip->li_trans)\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"!test_bit(XFS_LI_DIRTY, &lip->li_flags)\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"xfs_is_shutdown(ailp->ail_mount)\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"xfs_is_shutdown(mp) || list_empty(&tp->t_dfops)\00", [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tp->t_flags & XFS_TRANS_PERM_LOG_RES\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xfs_trans_cancel\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"!xlog_item_is_intent_done(lip)\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"error != -ENOENT\00", [47 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_trans_resv_calc = external dso_local global %struct.tracepoint, align 4
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_trans_resv_calc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"current->journal_info == NULL\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trans.h\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"tp->t_log_res == 0 || tp->t_log_res == resp->tr_logres\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"tp->t_log_count == 0 || tp->t_log_count == resp->tr_logcount\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tp->t_ticket == NULL\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"!(tp->t_flags & XFS_TRANS_PERM_LOG_RES)\00", [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"resp->tr_logflags & XFS_TRANS_PERM_LOG_RES\00", [53 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_trans_alloc = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_alloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_xfs_trans_add_item = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_add_item.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__xfs_trans_commit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tp->t_ticket != NULL\00", [43 x i8] zeroinitializer }, align 32
@xfsstats = external dso_local local_unnamed_addr global %struct.xstats, align 4
@__tracepoint_xfs_trans_commit = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_commit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_trans_cancel = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_cancel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_trans_free_items = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_free_items.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_trans_free = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_trans_roll = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_roll.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tp->t_blk_res >= tp->t_blk_res_used\00", [60 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_trans_dup = external dso_local global %struct.tracepoint, align 4
@trace_xfs_trans_dup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"current->journal_info == old_tp\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967174, i64 4294967268]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967174, i64 4294967268]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967174, i64 4294967268]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"xfs_trans_cache\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 28, i32 20 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 275, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 277, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 422, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 432, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 439, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 461, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 607, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 651, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 652, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 653, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 654, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 778, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 951, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 952, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 963, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 971, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 1068, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 3516, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 108, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 49, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 34, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 267, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 180, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 182, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 189, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 190, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 194, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 872, i32 2 }
@___asan_gen_.139 = private constant [22 x i8] c"../fs/xfs/xfs_trans.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 121, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trans.h\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 287, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @xfs_trans_cache, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_trans_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_init(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  %resv.i = alloca %struct.xfs_trans_res, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %m_resv = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 65
  tail call void @xfs_trans_resv_calc(ptr noundef %mp, ptr noundef %m_resv) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %resv.i) #8
  %0 = ptrtoint ptr %resv.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %resv.i, align 4, !annotation !109
  %1 = getelementptr inbounds %struct.xfs_trans_res, ptr %resv.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !109
  %3 = getelementptr inbounds %struct.xfs_trans_res, ptr %resv.i, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !109
  %add.ptr.i = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %cmp9.i = icmp ult ptr %m_resv, %add.ptr.i
  br i1 %cmp9.i, label %entry.for.body.i_crit_edge, label %entry.xfs_trans_trace_reservations.exit_crit_edge

entry.xfs_trans_trace_reservations.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_trans_trace_reservations.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %res.010.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %m_resv, %entry.for.body.i_crit_edge ]
  tail call fastcc void @trace_xfs_trans_resv_calc(ptr noundef %mp, i32 noundef %i.011.i, ptr noundef %res.010.i) #8
  %inc.i = add i32 %i.011.i, 1
  %incdec.ptr.i = getelementptr %struct.xfs_trans_res, ptr %res.010.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.xfs_trans_trace_reservations.exit_crit_edge

for.body.i.xfs_trans_trace_reservations.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_trans_trace_reservations.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

xfs_trans_trace_reservations.exit:                ; preds = %for.body.i.xfs_trans_trace_reservations.exit_crit_edge, %entry.xfs_trans_trace_reservations.exit_crit_edge
  call void @xfs_log_get_max_trans_res(ptr noundef %mp, ptr noundef nonnull %resv.i) #8
  call fastcc void @trace_xfs_trans_resv_calc(ptr noundef %mp, i32 noundef -1, ptr noundef nonnull %resv.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %resv.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_resv_calc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_trans_alloc(ptr noundef %mp, ptr nocapture noundef readonly %resp, i32 noundef %blocks, i32 noundef %rtextents, i32 noundef %flags, ptr nocapture noundef writeonly %tpp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %and24 = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  br label %retry

retry:                                            ; preds = %if.then36, %entry
  %want_retry.0.off0 = phi i1 [ false, %entry ], [ true, %if.then36 ]
  %0 = load ptr, ptr @xfs_trans_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 36288) #8
  br i1 %tobool.not, label %if.then, label %retry.if.end_crit_edge

retry.if.end_crit_edge:                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %retry
  %1 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %m_super, align 8
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %2, i32 0, i32 32, i32 2, i32 2
  tail call void @__might_sleep(ptr noundef nonnull @.str.22, i32 noundef 49) #8
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %2, i32 0, i32 32, i32 2, i32 2, i32 5
  %3 = tail call ptr @llvm.returnaddress(i32 0) #8
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %4) #8
  %5 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !110
  %call.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.then.rcu_sync_is_idle.exit.i.i.i_crit_edge

if.then.rcu_sync_is_idle.exit.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 35, ptr noundef nonnull @.str.24) #8
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %if.then.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %9 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not.i.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body7.i.i.i, label %if.else.i.i.i, !prof !111

do.body7.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !112
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %2, i32 0, i32 32, i32 2, i32 2, i32 1
  %12 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_count.i.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %20, %14
  %21 = inttoptr i32 %add.i.i.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add21.i.i.i = add i32 %23, 1
  store i32 %add21.i.i.i, ptr %21, align 4
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !113
  %and.i.i.i.i.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then41.i.i.i, label %do.body7.i.i.i.do.end43.i.i.i_crit_edge, !prof !114

do.body7.i.i.i.do.end43.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43.i.i.i

if.then41.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end43.i.i.i

do.end43.i.i.i:                                   ; preds = %if.then41.i.i.i, %do.body7.i.i.i.do.end43.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #8, !srcloc !115
  br label %sb_start_intwrite.exit

if.else.i.i.i:                                    ; preds = %rcu_sync_is_idle.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call50.i.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i, i1 noundef zeroext false) #8
  br label %sb_start_intwrite.exit

sb_start_intwrite.exit:                           ; preds = %if.else.i.i.i, %do.end43.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !116
  %25 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i58.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i58.i.i.i to ptr
  %preempt_count.i.i59.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i59.i.i.i, align 4
  %sub.i.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i59.i.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %sb_start_intwrite.exit, %retry.if.end_crit_edge
  %29 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 146
  %33 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %journal_info.i, align 4
  %cmp.i = icmp eq ptr %34, null
  br i1 %cmp.i, label %if.end.xfs_trans_set_context.exit_crit_edge, label %cond.false.i, !prof !111

if.end.xfs_trans_set_context.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_trans_set_context.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 267) #8
  br label %xfs_trans_set_context.exit

xfs_trans_set_context.exit:                       ; preds = %cond.false.i, %if.end.xfs_trans_set_context.exit_crit_edge
  %35 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task.i.i, align 8
  %flags1.i.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags1.i.i, align 4
  %and.i7.i = and i32 %40, 262144
  %or.i.i = or i32 %40, 262144
  store i32 %or.i.i, ptr %flags1.i.i, align 4
  %t_pflags.i = getelementptr inbounds %struct.xfs_trans, ptr %call.i, i32 0, i32 29
  %41 = ptrtoint ptr %t_pflags.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and.i7.i, ptr %t_pflags.i, align 8
  %42 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task.i, align 8
  %journal_info5.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 146
  %44 = ptrtoint ptr %journal_info5.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %journal_info5.i, align 4
  %45 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.not = icmp eq i32 %46, 0
  br i1 %cmp.not, label %xfs_trans_set_context.exit.if.end17_crit_edge, label %land.rhs

xfs_trans_set_context.exit.if.end17_crit_edge:    ; preds = %xfs_trans_set_context.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

land.rhs:                                         ; preds = %xfs_trans_set_context.exit
  %47 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %m_super, align 8
  %s_writers = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 32
  %49 = ptrtoint ptr %s_writers to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_writers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %50)
  %cmp2 = icmp eq i32 %50, 4
  br i1 %cmp2, label %do.end, label %land.rhs.if.end17_crit_edge, !prof !114

land.rhs.if.end17_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 276, i32 noundef 9, ptr noundef null) #8
  br label %if.end17

if.end17:                                         ; preds = %do.end, %land.rhs.if.end17_crit_edge, %xfs_trans_set_context.exit.if.end17_crit_edge
  br i1 %tobool25.not, label %if.end17.cond.end_crit_edge, label %lor.rhs

if.end17.cond.end_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

lor.rhs:                                          ; preds = %if.end17
  %51 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %52, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %cond.false, label %lor.rhs.cond.end_crit_edge, !prof !114

lor.rhs.cond.end_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 278) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lor.rhs.cond.end_crit_edge, %if.end17.cond.end_crit_edge
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1414676814, ptr %call.i, align 8
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %call.i, i32 0, i32 7
  %54 = ptrtoint ptr %t_flags to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %flags, ptr %t_flags, align 4
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %call.i, i32 0, i32 10
  %55 = ptrtoint ptr %t_mountp to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %mp, ptr %t_mountp, align 4
  %t_items = getelementptr inbounds %struct.xfs_trans, ptr %call.i, i32 0, i32 26
  %56 = ptrtoint ptr %t_items to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %t_items, ptr %t_items, align 8
  %prev.i = getelementptr inbounds %struct.xfs_trans, ptr %call.i, i32 0, i32 26, i32 1
  %57 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %t_items, ptr %prev.i, align 4
  %t_busy = getelementptr inbounds %struct.xfs_trans, ptr %call.i, i32 0, i32 27
  %58 = ptrtoint ptr %t_busy to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %t_busy, ptr %t_busy, align 8
  %prev.i65 = getelementptr inbounds %struct.xfs_trans, ptr %call.i, i32 0, i32 27, i32 1
  %59 = ptrtoint ptr %prev.i65 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %t_busy, ptr %prev.i65, align 4
  %t_dfops = getelementptr inbounds %struct.xfs_trans, ptr %call.i, i32 0, i32 28
  %60 = ptrtoint ptr %t_dfops to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %t_dfops, ptr %t_dfops, align 8
  %prev.i66 = getelementptr inbounds %struct.xfs_trans, ptr %call.i, i32 0, i32 28, i32 1
  %61 = ptrtoint ptr %prev.i66 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %t_dfops, ptr %prev.i66, align 4
  %t_firstblock = getelementptr inbounds %struct.xfs_trans, ptr %call.i, i32 0, i32 8
  %62 = ptrtoint ptr %t_firstblock to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 -1, ptr %t_firstblock, align 8
  %call33 = tail call fastcc i32 @xfs_trans_reserve(ptr noundef %call.i, ptr noundef %resp, i32 noundef %blocks, i32 noundef %rtextents)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call33)
  %cmp34 = icmp ne i32 %call33, -28
  %brmerge = or i1 %want_retry.0.off0, %cmp34
  br i1 %brmerge, label %if.end37, label %if.then36

if.then36:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_trans_cancel(ptr noundef %call.i)
  tail call void @xfs_blockgc_flush_all(ptr noundef %mp) #8
  br label %retry

if.end37:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool38.not = icmp eq i32 %call33, 0
  br i1 %tobool38.not, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_trans_cancel(ptr noundef %call.i)
  br label %cleanup

if.end40:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %63 = tail call ptr @llvm.returnaddress(i32 0)
  %64 = ptrtoint ptr %63 to i32
  tail call fastcc void @trace_xfs_trans_alloc(ptr noundef %call.i, i32 noundef %64)
  %65 = ptrtoint ptr %tpp to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i, ptr %tpp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then39
  ret i32 %call33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_trans_reserve(ptr noundef %tp, ptr nocapture noundef readonly %resp, i32 noundef %blocks, i32 noundef %rtextents) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %2 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t_flags, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blocks)
  %cmp1.not = icmp eq i32 %blocks, 0
  br i1 %cmp1.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  %conv = zext i32 %blocks to i64
  %sub = sub nsw i64 0, %conv
  %call = tail call i32 @xfs_mod_fdblocks(ptr noundef %1, i64 noundef %sub, i1 noundef zeroext %cmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2.not = icmp eq i32 %call, 0
  br i1 %cmp2.not, label %if.end, label %if.then.cleanup125_crit_edge

if.then.cleanup125_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup125

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %t_blk_res = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 3
  %4 = ptrtoint ptr %t_blk_res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %t_blk_res, align 4
  %add = add i32 %5, %blocks
  store i32 %add, ptr %t_blk_res, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %6 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.not = icmp eq i32 %7, 0
  br i1 %cmp6.not, label %if.end5.if.end95_crit_edge, label %if.then8

if.end5.if.end95_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then8:                                         ; preds = %if.end5
  %t_log_res = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 1
  %8 = ptrtoint ptr %t_log_res to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %t_log_res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9 = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp13 = icmp eq i32 %9, %7
  %spec.select = select i1 %cmp9, i1 true, i1 %cmp13
  br i1 %spec.select, label %if.then8.cond.end_crit_edge, label %cond.false, !prof !111

if.then8.cond.end_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str, i32 noundef 181) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then8.cond.end_crit_edge
  %t_log_count = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 2
  %10 = ptrtoint ptr %t_log_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t_log_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp17 = icmp eq i32 %11, 0
  br i1 %cmp17, label %cond.end.cond.end32_crit_edge, label %lor.rhs19

cond.end.cond.end32_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end32

lor.rhs19:                                        ; preds = %cond.end
  %tr_logcount = getelementptr inbounds %struct.xfs_trans_res, ptr %resp, i32 0, i32 1
  %12 = ptrtoint ptr %tr_logcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tr_logcount, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp21 = icmp eq i32 %11, %13
  br i1 %cmp21, label %lor.rhs19.cond.end32_crit_edge, label %cond.false31, !prof !111

lor.rhs19.cond.end32_crit_edge:                   ; preds = %lor.rhs19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end32

cond.false31:                                     ; preds = %lor.rhs19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str, i32 noundef 183) #8
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false31, %lor.rhs19.cond.end32_crit_edge, %cond.end.cond.end32_crit_edge
  %tr_logflags = getelementptr inbounds %struct.xfs_trans_res, ptr %resp, i32 0, i32 2
  %14 = ptrtoint ptr %tr_logflags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tr_logflags, align 4
  %and33 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %cond.end32
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %t_flags, align 4
  %or = or i32 %17, 4
  store i32 %or, ptr %t_flags, align 4
  br label %if.end62

if.else:                                          ; preds = %cond.end32
  %t_ticket = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 9
  %18 = ptrtoint ptr %t_ticket to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %t_ticket, align 8
  %cmp37 = icmp eq ptr %19, null
  br i1 %cmp37, label %if.else.cond.end47_crit_edge, label %cond.false46, !prof !111

if.else.cond.end47_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end47

cond.false46:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str, i32 noundef 189) #8
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false46, %if.else.cond.end47_crit_edge
  %20 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %t_flags, align 4
  %and49 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %cond.end47.if.end62_crit_edge, label %cond.false60, !prof !111

cond.end47.if.end62_crit_edge:                    ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

cond.false60:                                     ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str, i32 noundef 190) #8
  br label %if.end62

if.end62:                                         ; preds = %cond.false60, %cond.end47.if.end62_crit_edge, %if.then35
  %t_ticket63 = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 9
  %22 = ptrtoint ptr %t_ticket63 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %t_ticket63, align 8
  %cmp64.not = icmp eq ptr %23, null
  br i1 %cmp64.not, label %if.else81, label %if.then66

if.then66:                                        ; preds = %if.end62
  %24 = ptrtoint ptr %tr_logflags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tr_logflags, align 4
  %and68 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %cond.false77, label %if.then66.cond.end78_crit_edge, !prof !114

if.then66.cond.end78_crit_edge:                   ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end78

cond.false77:                                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str, i32 noundef 194) #8
  br label %cond.end78

cond.end78:                                       ; preds = %cond.false77, %if.then66.cond.end78_crit_edge
  %26 = ptrtoint ptr %t_ticket63 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %t_ticket63, align 8
  %call80 = tail call i32 @xfs_log_regrant(ptr noundef %1, ptr noundef %27) #8
  br label %if.end87

if.else81:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %28 = xor i1 %tobool34.not, true
  %29 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %resp, align 4
  %tr_logcount83 = getelementptr inbounds %struct.xfs_trans_res, ptr %resp, i32 0, i32 1
  %31 = ptrtoint ptr %tr_logcount83 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tr_logcount83, align 4
  %call86 = tail call i32 @xfs_log_reserve(ptr noundef %1, i32 noundef %30, i32 noundef %32, ptr noundef %t_ticket63, i8 noundef zeroext 105, i1 noundef zeroext %28) #8
  br label %if.end87

if.end87:                                         ; preds = %if.else81, %cond.end78
  %error.0 = phi i32 [ %call80, %cond.end78 ], [ %call86, %if.else81 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool88.not = icmp eq i32 %error.0, 0
  br i1 %tobool88.not, label %cleanup.thread, label %if.end87.undo_blocks_crit_edge

if.end87.undo_blocks_crit_edge:                   ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %undo_blocks

cleanup.thread:                                   ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %resp, align 4
  %35 = ptrtoint ptr %t_log_res to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %t_log_res, align 4
  %tr_logcount93 = getelementptr inbounds %struct.xfs_trans_res, ptr %resp, i32 0, i32 1
  %36 = ptrtoint ptr %tr_logcount93 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tr_logcount93, align 4
  %38 = ptrtoint ptr %t_log_count to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %t_log_count, align 8
  br label %if.end95

if.end95:                                         ; preds = %cleanup.thread, %if.end5.if.end95_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rtextents)
  %cmp96.not = icmp eq i32 %rtextents, 0
  br i1 %cmp96.not, label %if.end95.cleanup125_crit_edge, label %if.then98

if.end95.cleanup125_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup125

if.then98:                                        ; preds = %if.end95
  %conv99 = zext i32 %rtextents to i64
  %sub100 = sub nsw i64 0, %conv99
  %call101 = tail call i32 @xfs_mod_frextents(ptr noundef %1, i64 noundef %sub100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %if.then103

if.then103:                                       ; preds = %if.then98
  %39 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp108.not = icmp eq i32 %40, 0
  br i1 %cmp108.not, label %if.then103.undo_blocks_crit_edge, label %if.then110

if.then103.undo_blocks_crit_edge:                 ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %undo_blocks

if.end104:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  %t_rtx_res = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 5
  %41 = ptrtoint ptr %t_rtx_res to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %t_rtx_res, align 4
  %add105 = add i32 %42, %rtextents
  store i32 %add105, ptr %t_rtx_res, align 4
  br label %cleanup125

if.then110:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  %m_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 8
  %43 = ptrtoint ptr %m_log to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %m_log, align 4
  %t_ticket111 = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 9
  %45 = ptrtoint ptr %t_ticket111 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %t_ticket111, align 8
  tail call void @xfs_log_ticket_ungrant(ptr noundef %44, ptr noundef %46) #8
  %47 = ptrtoint ptr %t_ticket111 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %t_ticket111, align 8
  %t_log_res113 = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 1
  %48 = ptrtoint ptr %t_log_res113 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %t_log_res113, align 4
  %49 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %t_flags, align 4
  %and115 = and i32 %50, -5
  store i32 %and115, ptr %t_flags, align 4
  br label %undo_blocks

undo_blocks:                                      ; preds = %if.then110, %if.then103.undo_blocks_crit_edge, %if.end87.undo_blocks_crit_edge
  %error.1 = phi i32 [ -28, %if.then110 ], [ -28, %if.then103.undo_blocks_crit_edge ], [ %error.0, %if.end87.undo_blocks_crit_edge ]
  br i1 %cmp1.not, label %undo_blocks.cleanup125_crit_edge, label %if.then119

undo_blocks.cleanup125_crit_edge:                 ; preds = %undo_blocks
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup125

if.then119:                                       ; preds = %undo_blocks
  call void @__sanitizer_cov_trace_pc() #10
  %conv120 = zext i32 %blocks to i64
  %call122 = tail call i32 @xfs_mod_fdblocks(ptr noundef %1, i64 noundef %conv120, i1 noundef zeroext %cmp) #8
  %t_blk_res123 = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 3
  %51 = ptrtoint ptr %t_blk_res123 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %t_blk_res123, align 4
  br label %cleanup125

cleanup125:                                       ; preds = %if.then119, %undo_blocks.cleanup125_crit_edge, %if.end104, %if.end95.cleanup125_crit_edge, %if.then.cleanup125_crit_edge
  %retval.0 = phi i32 [ -28, %if.then.cleanup125_crit_edge ], [ 0, %if.end104 ], [ 0, %if.end95.cleanup125_crit_edge ], [ %error.1, %if.then119 ], [ %error.1, %undo_blocks.cleanup125_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_cancel(ptr noundef %tp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %2 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t_flags, align 4
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %5 = ptrtoint ptr %4 to i32
  tail call fastcc void @trace_xfs_trans_cancel(ptr noundef %tp, i32 noundef %5)
  %t_dfops = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 28
  %6 = ptrtoint ptr %t_dfops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %t_dfops, align 4
  %cmp.i.not = icmp eq ptr %7, %t_dfops
  br i1 %cmp.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %8 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %m_opstate.i, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %lor.rhs, label %if.then.cond.end_crit_edge

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

lor.rhs:                                          ; preds = %if.then
  %11 = ptrtoint ptr %t_dfops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %t_dfops, align 4
  %cmp.i80 = icmp eq ptr %12, %t_dfops
  br i1 %cmp.i80, label %lor.rhs.cond.end_crit_edge, label %cond.false, !prof !111

lor.rhs.cond.end_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str, i32 noundef 951) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lor.rhs.cond.end_crit_edge, %if.then.cond.end_crit_edge
  %13 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %t_flags, align 4
  %and9 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %cond.false18, label %cond.end.if.end.thread_crit_edge, !prof !114

cond.end.if.end.thread_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread

cond.false18:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 952) #8
  br label %if.end.thread

if.end.thread:                                    ; preds = %cond.false18, %cond.end.if.end.thread_crit_edge
  tail call void @xfs_defer_cancel(ptr noundef %tp) #8
  br label %land.lhs.true

if.end:                                           ; preds = %entry
  %15 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %land.lhs.true25.critedge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.thread
  %m_opstate.i82 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %16 = ptrtoint ptr %m_opstate.i82 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %m_opstate.i82, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i83.not = icmp eq i32 %18, 0
  br i1 %tobool.i83.not, label %if.then22, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_error_report(ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 963, ptr noundef %4) #8
  tail call void @xfs_do_force_shutdown(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str, i32 noundef 964) #8
  br label %if.end48

land.lhs.true25.critedge:                         ; preds = %if.end
  %m_opstate.i84 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %19 = ptrtoint ptr %m_opstate.i84 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %m_opstate.i84, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i85.not = icmp eq i32 %21, 0
  br i1 %tobool.i85.not, label %if.then27, label %land.lhs.true25.critedge.if.end48_crit_edge

land.lhs.true25.critedge.if.end48_crit_edge:      ; preds = %land.lhs.true25.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then27:                                        ; preds = %land.lhs.true25.critedge
  %t_items = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 26
  %22 = ptrtoint ptr %t_items to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn91 = load ptr, ptr %t_items, align 8
  %cmp.not92 = icmp eq ptr %.pn91, %t_items
  br i1 %cmp.not92, label %if.then27.if.end48_crit_edge, label %if.then27.for.body_crit_edge

if.then27.for.body_crit_edge:                     ; preds = %if.then27
  br label %for.body

if.then27.if.end48_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then27.for.body_crit_edge
  %.pn93 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn91, %if.then27.for.body_crit_edge ]
  %li_ops.i = getelementptr i8, ptr %.pn93, i32 44
  %23 = ptrtoint ptr %li_ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %li_ops.i, align 4
  %iop_unpin.i = getelementptr inbounds %struct.xfs_item_ops, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %iop_unpin.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iop_unpin.i, align 4
  %cmp.i86 = icmp eq ptr %26, null
  br i1 %cmp.i86, label %xlog_item_is_intent_done.exit, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

xlog_item_is_intent_done.exit:                    ; preds = %for.body
  %iop_push.i = getelementptr inbounds %struct.xfs_item_ops, ptr %24, i32 0, i32 5
  %27 = ptrtoint ptr %iop_push.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iop_push.i, align 4
  %cmp2.i = icmp eq ptr %28, null
  br i1 %cmp2.i, label %cond.false41, label %xlog_item_is_intent_done.exit.for.inc_crit_edge, !prof !114

xlog_item_is_intent_done.exit.for.inc_crit_edge:  ; preds = %xlog_item_is_intent_done.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

cond.false41:                                     ; preds = %xlog_item_is_intent_done.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str, i32 noundef 971) #8
  br label %for.inc

for.inc:                                          ; preds = %cond.false41, %xlog_item_is_intent_done.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %29 = ptrtoint ptr %.pn93 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn = load ptr, ptr %.pn93, align 8
  %cmp.not = icmp eq ptr %.pn, %t_items
  br i1 %cmp.not, label %for.inc.if.end48_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end48_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.end48:                                         ; preds = %for.inc.if.end48_crit_edge, %if.then27.if.end48_crit_edge, %land.lhs.true25.critedge.if.end48_crit_edge, %if.then22, %land.lhs.true.if.end48_crit_edge
  %dirty.0.off089 = phi i1 [ true, %land.lhs.true.if.end48_crit_edge ], [ true, %if.then22 ], [ false, %land.lhs.true25.critedge.if.end48_crit_edge ], [ false, %if.then27.if.end48_crit_edge ], [ false, %for.inc.if.end48_crit_edge ]
  tail call void @xfs_trans_unreserve_and_mod_sb(ptr noundef %tp)
  tail call void @xfs_trans_unreserve_and_mod_dquots(ptr noundef %tp) #8
  %t_ticket = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 9
  %30 = ptrtoint ptr %t_ticket to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %t_ticket, align 8
  %tobool49.not = icmp eq ptr %31, null
  br i1 %tobool49.not, label %if.end48.if.end53_crit_edge, label %if.then50

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %m_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 8
  %32 = ptrtoint ptr %m_log to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %m_log, align 4
  tail call void @xfs_log_ticket_ungrant(ptr noundef %33, ptr noundef nonnull %31) #8
  %34 = ptrtoint ptr %t_ticket to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %t_ticket, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end48.if.end53_crit_edge
  tail call fastcc void @trace_xfs_trans_free_items(ptr noundef %tp, i32 noundef %5) #8
  %t_items.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 26
  %35 = ptrtoint ptr %t_items.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %t_items.i, align 8
  %cmp.not30.i = icmp eq ptr %36, %t_items.i
  br i1 %cmp.not30.i, label %if.end53.xfs_trans_free_items.exit_crit_edge, label %if.end53.for.body.i_crit_edge

if.end53.for.body.i_crit_edge:                    ; preds = %if.end53
  br label %for.body.i

if.end53.xfs_trans_free_items.exit_crit_edge:     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_trans_free_items.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end53.for.body.i_crit_edge
  %.pn.in31.i = phi ptr [ %.pn35.i, %for.inc.i.for.body.i_crit_edge ], [ %36, %if.end53.for.body.i_crit_edge ]
  %lip.034.i = getelementptr i8, ptr %.pn.in31.i, i32 -8
  %37 = ptrtoint ptr %.pn.in31.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn35.i = load ptr, ptr %.pn.in31.i, align 8
  %li_flags.i.i = getelementptr i8, ptr %.pn.in31.i, i32 28
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %li_flags.i.i) #8
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in31.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.xfs_trans_del_item.exit.i_crit_edge

for.body.i.xfs_trans_del_item.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_trans_del_item.exit.i

if.end.i.i.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in31.i, i32 4
  %38 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i.i, align 4
  %40 = ptrtoint ptr %.pn.in31.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %.pn.in31.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %xfs_trans_del_item.exit.i

xfs_trans_del_item.exit.i:                        ; preds = %if.end.i.i.i.i, %for.body.i.xfs_trans_del_item.exit.i_crit_edge
  %44 = ptrtoint ptr %.pn.in31.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %.pn.in31.i, ptr %.pn.in31.i, align 4
  %prev.i3.i.i.i = getelementptr i8, ptr %.pn.in31.i, i32 4
  %45 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %.pn.in31.i, ptr %prev.i3.i.i.i, align 4
  br i1 %dirty.0.off089, label %if.then.i, label %xfs_trans_del_item.exit.i.if.end.i_crit_edge

xfs_trans_del_item.exit.i.if.end.i_crit_edge:     ; preds = %xfs_trans_del_item.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %xfs_trans_del_item.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %li_flags.i.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %xfs_trans_del_item.exit.i.if.end.i_crit_edge
  %li_ops.i87 = getelementptr i8, ptr %.pn.in31.i, i32 44
  %46 = ptrtoint ptr %li_ops.i87 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %li_ops.i87, align 4
  %iop_release.i = getelementptr inbounds %struct.xfs_item_ops, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %iop_release.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iop_release.i, align 4
  %tobool8.not.i = icmp eq ptr %49, null
  br i1 %tobool8.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then9.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %49(ptr noundef %lip.034.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then9.i, %if.end.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn35.i, %t_items.i
  br i1 %cmp.not.i, label %for.inc.i.xfs_trans_free_items.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.xfs_trans_free_items.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_trans_free_items.exit

xfs_trans_free_items.exit:                        ; preds = %for.inc.i.xfs_trans_free_items.exit_crit_edge, %if.end53.xfs_trans_free_items.exit_crit_edge
  tail call fastcc void @xfs_trans_free(ptr noundef %tp)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_blockgc_flush_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_alloc(ptr noundef %tp, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_alloc, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_alloc, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !117

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  %call42 = tail call i32 @__traceiter_xfs_trans_alloc(ptr noundef null, ptr noundef %tp, i32 noundef %caller_ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !119
  %13 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_alloc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_alloc, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_trans_alloc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_trans_alloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 3570, ptr noundef nonnull @.str.20) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !121
  %31 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_trans_alloc_empty(ptr noundef %mp, ptr nocapture noundef writeonly %tpp) local_unnamed_addr #0 align 64 {
entry:
  %resv = alloca %struct.xfs_trans_res, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %resv) #8
  %0 = call ptr @memset(ptr %resv, i32 0, i32 12)
  %call = call i32 @xfs_trans_alloc(ptr noundef %mp, ptr noundef nonnull %resv, i32 noundef 0, i32 noundef 0, i32 noundef 64, ptr noundef %tpp)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %resv) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_mod_sb(ptr noundef %tp, i32 noundef %field, i64 noundef %delta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %2 = zext i32 %field to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %field, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb7
    i32 8, label %sw.bb36
    i32 16, label %sw.bb42
    i32 32, label %sw.bb59
    i32 64, label %sw.bb72
    i32 128, label %sw.bb74
    i32 256, label %sw.bb87
    i32 512, label %sw.bb89
    i32 1024, label %sw.bb91
    i32 2048, label %sw.bb93
    i32 4096, label %sw.bb95
    i32 8192, label %sw.bb97
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %t_icount_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 12
  %3 = ptrtoint ptr %t_icount_delta to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %t_icount_delta, align 8
  %add = add i64 %4, %delta
  store i64 %add, ptr %t_icount_delta, align 8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %5 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %6, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %spec.select = select i1 %tobool.i.not, i32 3, i32 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %t_ifree_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 13
  %7 = ptrtoint ptr %t_ifree_delta to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %t_ifree_delta, align 8
  %add2 = add i64 %8, %delta
  store i64 %add2, ptr %t_ifree_delta, align 8
  %m_features.i161 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %9 = ptrtoint ptr %m_features.i161 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %m_features.i161, align 8
  %and.i162 = and i64 %10, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i162)
  %tobool.i163.not = icmp eq i64 %and.i162, 0
  %spec.select158 = select i1 %tobool.i163.not, i32 3, i32 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %delta)
  %cmp = icmp slt i64 %delta, 0
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %sw.bb7
  %11 = trunc i64 %delta to i32
  %t_blk_res_used = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 4
  %12 = ptrtoint ptr %t_blk_res_used to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %t_blk_res_used, align 8
  %add9 = sub i32 %13, %11
  store i32 %add9, ptr %t_blk_res_used, align 8
  %t_blk_res = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 3
  %14 = ptrtoint ptr %t_blk_res to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %t_blk_res, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add9, i32 %15)
  %cmp11 = icmp ugt i32 %add9, %15
  br i1 %cmp11, label %if.then13, label %if.then8.if.end30_crit_edge

if.then8.if.end30_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_do_force_shutdown(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str, i32 noundef 384) #8
  br label %if.end30

if.else:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %delta)
  %cmp15.not = icmp eq i64 %delta, 0
  br i1 %cmp15.not, label %if.else.if.end30_crit_edge, label %land.lhs.true

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true:                                    ; preds = %if.else
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %16 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %t_flags, align 4
  %and17 = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool.not = icmp eq i32 %and17, 0
  br i1 %tobool.not, label %land.lhs.true.if.end30_crit_edge, label %if.then18

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %t_blk_res19 = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 3
  %18 = ptrtoint ptr %t_blk_res19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %t_blk_res19, align 4
  %sub20 = xor i32 %19, -1
  %conv21 = zext i32 %sub20 to i64
  %20 = tail call i64 @llvm.umin.i64(i64 %conv21, i64 %delta)
  %21 = trunc i64 %20 to i32
  %conv27 = add i32 %19, %21
  %22 = ptrtoint ptr %t_blk_res19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv27, ptr %t_blk_res19, align 4
  %sub28 = sub nsw i64 %delta, %20
  br label %if.end30

if.end30:                                         ; preds = %if.then18, %land.lhs.true.if.end30_crit_edge, %if.else.if.end30_crit_edge, %if.then13, %if.then8.if.end30_crit_edge
  %delta.addr.0 = phi i64 [ %delta, %if.then13 ], [ %delta, %if.then8.if.end30_crit_edge ], [ %sub28, %if.then18 ], [ %delta, %land.lhs.true.if.end30_crit_edge ], [ 0, %if.else.if.end30_crit_edge ]
  %t_fdblocks_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 14
  %23 = ptrtoint ptr %t_fdblocks_delta to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %t_fdblocks_delta, align 8
  %add31 = add i64 %24, %delta.addr.0
  store i64 %add31, ptr %t_fdblocks_delta, align 8
  %m_features.i164 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %25 = ptrtoint ptr %m_features.i164 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %m_features.i164, align 8
  %and.i165 = and i64 %26, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i165)
  %tobool.i166.not = icmp eq i64 %and.i165, 0
  %spec.select159 = select i1 %tobool.i166.not, i32 3, i32 1
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %t_res_fdblocks_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 15
  %27 = ptrtoint ptr %t_res_fdblocks_delta to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %t_res_fdblocks_delta, align 8
  %add37 = add i64 %28, %delta
  store i64 %add37, ptr %t_res_fdblocks_delta, align 8
  %m_features.i167 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %29 = ptrtoint ptr %m_features.i167 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %m_features.i167, align 8
  %and.i168 = and i64 %30, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i168)
  %tobool.i169.not = icmp eq i64 %and.i168, 0
  %spec.select160 = select i1 %tobool.i169.not, i32 3, i32 1
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %delta)
  %cmp43 = icmp slt i64 %delta, 0
  br i1 %cmp43, label %if.then45, label %sw.bb42.if.end57_crit_edge

sw.bb42.if.end57_crit_edge:                       ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then45:                                        ; preds = %sw.bb42
  %31 = trunc i64 %delta to i32
  %t_rtx_res_used = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 6
  %32 = ptrtoint ptr %t_rtx_res_used to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %t_rtx_res_used, align 8
  %add48 = sub i32 %33, %31
  store i32 %add48, ptr %t_rtx_res_used, align 8
  %t_rtx_res = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 5
  %34 = ptrtoint ptr %t_rtx_res to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %t_rtx_res, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add48, i32 %35)
  %cmp50.not = icmp ugt i32 %add48, %35
  br i1 %cmp50.not, label %cond.false55, label %if.then45.if.end57_crit_edge, !prof !114

if.then45.if.end57_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

cond.false55:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 422) #8
  br label %if.end57

if.end57:                                         ; preds = %cond.false55, %if.then45.if.end57_crit_edge, %sw.bb42.if.end57_crit_edge
  %t_frextents_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 16
  %36 = ptrtoint ptr %t_frextents_delta to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %t_frextents_delta, align 8
  %add58 = add i64 %37, %delta
  store i64 %add58, ptr %t_frextents_delta, align 8
  br label %sw.epilog

sw.bb59:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %delta)
  %cmp60 = icmp slt i64 %delta, 0
  br i1 %cmp60, label %sw.bb59.cond.end70_crit_edge, label %cond.false69, !prof !111

sw.bb59.cond.end70_crit_edge:                     ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end70

cond.false69:                                     ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, i32 noundef 432) #8
  br label %cond.end70

cond.end70:                                       ; preds = %cond.false69, %sw.bb59.cond.end70_crit_edge
  %t_res_frextents_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 17
  %38 = ptrtoint ptr %t_res_frextents_delta to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %t_res_frextents_delta, align 8
  %add71 = add i64 %39, %delta
  store i64 %add71, ptr %t_res_frextents_delta, align 8
  br label %sw.epilog

sw.bb72:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %t_dblocks_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 18
  %40 = ptrtoint ptr %t_dblocks_delta to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %t_dblocks_delta, align 8
  %add73 = add i64 %41, %delta
  store i64 %add73, ptr %t_dblocks_delta, align 8
  br label %sw.epilog

sw.bb74:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %delta)
  %cmp75 = icmp sgt i64 %delta, 0
  br i1 %cmp75, label %sw.bb74.cond.end85_crit_edge, label %cond.false84, !prof !111

sw.bb74.cond.end85_crit_edge:                     ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end85

cond.false84:                                     ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 439) #8
  br label %cond.end85

cond.end85:                                       ; preds = %cond.false84, %sw.bb74.cond.end85_crit_edge
  %t_agcount_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 19
  %42 = ptrtoint ptr %t_agcount_delta to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %t_agcount_delta, align 8
  %add86 = add i64 %43, %delta
  store i64 %add86, ptr %t_agcount_delta, align 8
  br label %sw.epilog

sw.bb87:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %t_imaxpct_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 20
  %44 = ptrtoint ptr %t_imaxpct_delta to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %t_imaxpct_delta, align 8
  %add88 = add i64 %45, %delta
  store i64 %add88, ptr %t_imaxpct_delta, align 8
  br label %sw.epilog

sw.bb89:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %t_rextsize_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 21
  %46 = ptrtoint ptr %t_rextsize_delta to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %t_rextsize_delta, align 8
  %add90 = add i64 %47, %delta
  store i64 %add90, ptr %t_rextsize_delta, align 8
  br label %sw.epilog

sw.bb91:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %t_rbmblocks_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 22
  %48 = ptrtoint ptr %t_rbmblocks_delta to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %t_rbmblocks_delta, align 8
  %add92 = add i64 %49, %delta
  store i64 %add92, ptr %t_rbmblocks_delta, align 8
  br label %sw.epilog

sw.bb93:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %t_rblocks_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 23
  %50 = ptrtoint ptr %t_rblocks_delta to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %t_rblocks_delta, align 8
  %add94 = add i64 %51, %delta
  store i64 %add94, ptr %t_rblocks_delta, align 8
  br label %sw.epilog

sw.bb95:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %t_rextents_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 24
  %52 = ptrtoint ptr %t_rextents_delta to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %t_rextents_delta, align 8
  %add96 = add i64 %53, %delta
  store i64 %add96, ptr %t_rextents_delta, align 8
  br label %sw.epilog

sw.bb97:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %t_rextslog_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 25
  %54 = ptrtoint ptr %t_rextslog_delta to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %t_rextslog_delta, align 8
  %add98 = add i64 %55, %delta
  store i64 %add98, ptr %t_rextslog_delta, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef 461) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb97, %sw.bb95, %sw.bb93, %sw.bb91, %sw.bb89, %sw.bb87, %cond.end85, %sw.bb72, %cond.end70, %if.end57, %sw.bb36, %if.end30, %sw.bb1, %sw.bb
  %flags.0 = phi i32 [ 3, %sw.bb97 ], [ 3, %sw.bb95 ], [ 3, %sw.bb93 ], [ 3, %sw.bb91 ], [ 3, %sw.bb89 ], [ 3, %sw.bb87 ], [ 3, %cond.end85 ], [ 3, %sw.bb72 ], [ 3, %cond.end70 ], [ 3, %if.end57 ], [ %spec.select, %sw.bb ], [ %spec.select158, %sw.bb1 ], [ %spec.select159, %if.end30 ], [ %spec.select160, %sw.bb36 ]
  %t_flags99 = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %56 = ptrtoint ptr %t_flags99 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %t_flags99, align 4
  %or = or i32 %57, %flags.0
  store i32 %or, ptr %t_flags99, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_do_force_shutdown(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_unreserve_and_mod_sb(ptr nocapture noundef readonly %tp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %2 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t_flags, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp ne i32 %and, 0
  %t_blk_res = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 3
  %4 = ptrtoint ptr %t_blk_res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %t_blk_res, align 4
  %conv = zext i32 %5 to i64
  %t_fdblocks_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 14
  %6 = ptrtoint ptr %t_fdblocks_delta to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %t_fdblocks_delta, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp3.not = icmp eq i64 %7, 0
  br i1 %cmp3.not, label %entry.if.end10_crit_edge, label %land.lhs.true

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %8 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %9, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i = icmp eq i64 %and.i, 0
  %and7 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  %or.cond = select i1 %tobool.i, i1 %tobool.not, i1 false
  %add = select i1 %or.cond, i64 0, i64 %7
  %spec.select = add i64 %add, %conv
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %entry.if.end10_crit_edge
  %blkdelta.1 = phi i64 [ %conv, %entry.if.end10_crit_edge ], [ %spec.select, %land.lhs.true ]
  %t_rtx_res = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 5
  %10 = ptrtoint ptr %t_rtx_res to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t_rtx_res, align 4
  %conv15 = zext i32 %11 to i64
  %t_frextents_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 16
  %12 = ptrtoint ptr %t_frextents_delta to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %t_frextents_delta, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %cmp17.not = icmp eq i64 %13, 0
  %.pre = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool22.not = icmp eq i32 %.pre, 0
  %14 = select i1 %cmp17.not, i1 true, i1 %tobool22.not
  %spec.select184 = select i1 %14, i64 0, i64 %13
  %rtxdelta.1 = add i64 %spec.select184, %conv15
  %m_features.i185 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %15 = ptrtoint ptr %m_features.i185 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %m_features.i185, align 8
  %and.i186 = and i64 %16, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i186)
  %tobool.i187 = icmp eq i64 %and.i186, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool32.not = icmp eq i32 %.pre, 0
  %or.cond188 = select i1 %tobool.i187, i1 %tobool32.not, i1 false
  br i1 %or.cond188, label %if.end10.if.end34_crit_edge, label %if.then33

if.end10.if.end34_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then33:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %t_icount_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 12
  %17 = ptrtoint ptr %t_icount_delta to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %t_icount_delta, align 8
  %t_ifree_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 13
  %19 = ptrtoint ptr %t_ifree_delta to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %t_ifree_delta, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end10.if.end34_crit_edge
  %idelta.0 = phi i64 [ %18, %if.then33 ], [ 0, %if.end10.if.end34_crit_edge ]
  %ifreedelta.0 = phi i64 [ %20, %if.then33 ], [ 0, %if.end10.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %blkdelta.1)
  %tobool35.not = icmp eq i64 %blkdelta.1, 0
  br i1 %tobool35.not, label %if.end34.if.end43_crit_edge, label %if.then36

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then36:                                        ; preds = %if.end34
  %call38 = tail call i32 @xfs_mod_fdblocks(ptr noundef %1, i64 noundef %blkdelta.1, i1 noundef zeroext %cmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then36.if.end43_crit_edge, label %cond.false, !prof !111

if.then36.if.end43_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

cond.false:                                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str, i32 noundef 607) #8
  br label %if.end43

if.end43:                                         ; preds = %cond.false, %if.then36.if.end43_crit_edge, %if.end34.if.end43_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %idelta.0)
  %tobool44.not = icmp eq i64 %idelta.0, 0
  br i1 %tobool44.not, label %if.end43.if.end46_crit_edge, label %if.then45

if.end43.if.end46_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %m_icount = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 77
  tail call void @percpu_counter_add_batch(ptr noundef %m_icount, i64 noundef %idelta.0, i32 noundef 128) #8
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end43.if.end46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ifreedelta.0)
  %tobool47.not = icmp eq i64 %ifreedelta.0, 0
  br i1 %tobool47.not, label %if.end46.if.end49_crit_edge, label %if.then48

if.end46.if.end49_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %m_ifree = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %21 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %m_ifree, i64 noundef %ifreedelta.0, i32 noundef %21) #8
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end46.if.end49_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rtxdelta.1)
  %cmp50 = icmp eq i64 %rtxdelta.1, 0
  br i1 %cmp50, label %land.lhs.true52, label %if.end49.if.end57_crit_edge

if.end49.if.end57_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

land.lhs.true52:                                  ; preds = %if.end49
  %22 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %t_flags, align 4
  %and54 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %land.lhs.true52.cleanup_crit_edge, label %land.lhs.true52.if.end57_crit_edge

land.lhs.true52.if.end57_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

land.lhs.true52.cleanup_crit_edge:                ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end57:                                         ; preds = %land.lhs.true52.if.end57_crit_edge, %if.end49.if.end57_crit_edge
  %m_sb_lock = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 76
  tail call void @_raw_spin_lock(ptr noundef %m_sb_lock) #8
  %24 = ptrtoint ptr %t_fdblocks_delta to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %t_fdblocks_delta, align 8
  %t_res_fdblocks_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 15
  %26 = ptrtoint ptr %t_res_fdblocks_delta to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %t_res_fdblocks_delta, align 8
  %add59 = add i64 %27, %25
  %sb_fdblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 30
  %28 = ptrtoint ptr %sb_fdblocks to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %sb_fdblocks, align 16
  %add60 = add i64 %add59, %29
  store i64 %add60, ptr %sb_fdblocks, align 16
  %sb_icount = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 28
  %30 = ptrtoint ptr %sb_icount to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %sb_icount, align 128
  %add62 = add i64 %31, %idelta.0
  store i64 %add62, ptr %sb_icount, align 128
  %sb_ifree = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 29
  %32 = ptrtoint ptr %sb_ifree to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %sb_ifree, align 8
  %add64 = add i64 %33, %ifreedelta.0
  store i64 %add64, ptr %sb_ifree, align 8
  %sb_frextents = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 31
  %34 = ptrtoint ptr %sb_frextents to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %sb_frextents, align 8
  %add66 = add i64 %35, %rtxdelta.1
  store i64 %add66, ptr %sb_frextents, align 8
  %t_dblocks_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 18
  %36 = ptrtoint ptr %t_dblocks_delta to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %t_dblocks_delta, align 8
  %sb_dblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %sb_dblocks, align 8
  %add68 = add i64 %39, %37
  store i64 %add68, ptr %sb_dblocks, align 8
  %t_agcount_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 19
  %40 = ptrtoint ptr %t_agcount_delta to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %t_agcount_delta, align 8
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 12
  %42 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sb_agcount, align 8
  %44 = trunc i64 %41 to i32
  %conv72 = add i32 %43, %44
  store i32 %conv72, ptr %sb_agcount, align 8
  %t_imaxpct_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 20
  %45 = ptrtoint ptr %t_imaxpct_delta to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %t_imaxpct_delta, align 8
  %sb_imax_pct = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 27
  %47 = ptrtoint ptr %sb_imax_pct to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %sb_imax_pct, align 1
  %49 = trunc i64 %46 to i8
  %conv76 = add i8 %48, %49
  store i8 %conv76, ptr %sb_imax_pct, align 1
  %t_rextsize_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 21
  %50 = ptrtoint ptr %t_rextsize_delta to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %t_rextsize_delta, align 8
  %sb_rextsize = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 10
  %52 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sb_rextsize, align 16
  %54 = trunc i64 %51 to i32
  %conv80 = add i32 %53, %54
  store i32 %conv80, ptr %sb_rextsize, align 16
  %t_rbmblocks_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 22
  %55 = ptrtoint ptr %t_rbmblocks_delta to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %t_rbmblocks_delta, align 8
  %sb_rbmblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 13
  %57 = ptrtoint ptr %sb_rbmblocks to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sb_rbmblocks, align 4
  %59 = trunc i64 %56 to i32
  %conv84 = add i32 %58, %59
  store i32 %conv84, ptr %sb_rbmblocks, align 4
  %t_rblocks_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 23
  %60 = ptrtoint ptr %t_rblocks_delta to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %t_rblocks_delta, align 8
  %sb_rblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 3
  %62 = ptrtoint ptr %sb_rblocks to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %sb_rblocks, align 16
  %add86 = add i64 %63, %61
  store i64 %add86, ptr %sb_rblocks, align 16
  %t_rextents_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 24
  %64 = ptrtoint ptr %t_rextents_delta to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %t_rextents_delta, align 8
  %sb_rextents = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 4
  %66 = ptrtoint ptr %sb_rextents to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %sb_rextents, align 8
  %add88 = add i64 %67, %65
  store i64 %add88, ptr %sb_rextents, align 8
  %t_rextslog_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 25
  %68 = ptrtoint ptr %t_rextslog_delta to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %t_rextslog_delta, align 8
  %sb_rextslog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 25
  %70 = ptrtoint ptr %sb_rextslog to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %sb_rextslog, align 1
  %72 = trunc i64 %69 to i8
  %conv92 = add i8 %71, %72
  store i8 %conv92, ptr %sb_rextslog, align 1
  tail call void @_raw_spin_unlock(ptr noundef %m_sb_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %land.lhs.true52.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_mod_fdblocks(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_add_item(ptr noundef %tp, ptr noundef %lip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %li_mountp = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 3
  %0 = ptrtoint ptr %li_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %li_mountp, align 8
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %2 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_mountp, align 4
  %cmp = icmp eq ptr %1, %3
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !111

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef 651) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %li_ailp = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 4
  %4 = ptrtoint ptr %li_ailp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %li_ailp, align 4
  %6 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t_mountp, align 4
  %m_ail = getelementptr inbounds %struct.xfs_mount, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %m_ail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m_ail, align 4
  %cmp3 = icmp eq ptr %5, %9
  br i1 %cmp3, label %cond.end.cond.end12_crit_edge, label %cond.false11, !prof !111

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str, i32 noundef 652) #8
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.end.cond.end12_crit_edge
  %li_trans = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 1
  %10 = ptrtoint ptr %li_trans to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %li_trans, align 4
  %cmp.i.not = icmp eq ptr %11, %li_trans
  br i1 %cmp.i.not, label %cond.end12.cond.end22_crit_edge, label %cond.false21, !prof !111

cond.end12.cond.end22_crit_edge:                  ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end22

cond.false21:                                     ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str, i32 noundef 653) #8
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false21, %cond.end12.cond.end22_crit_edge
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 6
  %12 = ptrtoint ptr %li_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %li_flags, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool24.not = icmp eq i32 %14, 0
  br i1 %tobool24.not, label %cond.end22.cond.end35_crit_edge, label %cond.false34, !prof !111

cond.end22.cond.end35_crit_edge:                  ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end35

cond.false34:                                     ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str, i32 noundef 654) #8
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false34, %cond.end22.cond.end35_crit_edge
  %t_items = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 26
  %prev.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 26, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %li_trans, ptr noundef %16, ptr noundef %t_items) #8
  br i1 %call.i.i, label %if.end.i.i, label %cond.end35.list_add_tail.exit_crit_edge

cond.end35.list_add_tail.exit_crit_edge:          ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %li_trans, ptr %prev.i, align 4
  %18 = ptrtoint ptr %li_trans to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %t_items, ptr %li_trans, align 4
  %prev3.i.i = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %li_trans, ptr %16, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %cond.end35.list_add_tail.exit_crit_edge
  %21 = tail call ptr @llvm.returnaddress(i32 0)
  %22 = ptrtoint ptr %21 to i32
  tail call fastcc void @trace_xfs_trans_add_item(ptr noundef %tp, i32 noundef %22)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_add_item(ptr noundef %tp, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_add_item, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_add_item, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !117

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !122
  %call42 = tail call i32 @__traceiter_xfs_trans_add_item(ptr noundef null, ptr noundef %tp, i32 noundef %caller_ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !123
  %13 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_add_item, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_add_item, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_trans_add_item.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_trans_add_item.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 3576, ptr noundef nonnull @.str.20) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !121
  %31 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
define dso_local void @xfs_trans_del_item(ptr noundef %lip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %li_flags) #8
  %li_trans = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %li_trans) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %li_trans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %li_trans, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %li_trans to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %li_trans, ptr %li_trans, align 4
  %prev.i3.i = getelementptr inbounds %struct.xfs_log_item, ptr %lip, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %li_trans, ptr %prev.i3.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_trans_committed_bulk(ptr noundef %ailp, ptr noundef readonly %log_vector, i64 noundef %commit_lsn, i1 noundef zeroext %aborted) local_unnamed_addr #0 align 64 {
entry:
  %lip.addr.i = alloca ptr, align 4
  %log_items = alloca [32 x ptr], align 4
  %cur = alloca %struct.xfs_ail_cursor, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %log_items) #8
  %0 = call ptr @memset(ptr %log_items, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cur) #8
  %1 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %cur, align 4, !annotation !109
  %2 = getelementptr inbounds %struct.list_head, ptr %cur, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !109
  %4 = getelementptr inbounds %struct.xfs_ail_cursor, ptr %cur, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !109
  %ail_lock = getelementptr inbounds %struct.xfs_ail, ptr %ailp, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %ail_lock) #8
  %call = call ptr @xfs_trans_ail_cursor_last(ptr noundef %ailp, ptr noundef nonnull %cur, i64 noundef %commit_lsn) #8
  call void @_raw_spin_unlock(ptr noundef %ail_lock) #8
  %tobool.not131 = icmp eq ptr %log_vector, null
  br i1 %tobool.not131, label %entry.if.end54_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end54_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0133 = phi i32 [ %i.2, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %lv.0132 = phi ptr [ %44, %cleanup.for.body_crit_edge ], [ %log_vector, %entry.for.body_crit_edge ]
  %lv_item = getelementptr inbounds %struct.xfs_log_vec, ptr %lv.0132, i32 0, i32 3
  %6 = ptrtoint ptr %lv_item to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lv_item, align 4
  br i1 %aborted, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %7, i32 0, i32 6
  call void @_set_bit(i32 noundef 1, ptr noundef %li_flags) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %li_ops = getelementptr inbounds %struct.xfs_log_item, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %li_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %li_ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %iop_release = getelementptr inbounds %struct.xfs_item_ops, ptr %9, i32 0, i32 7
  %12 = ptrtoint ptr %iop_release to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iop_release, align 4
  call void %13(ptr noundef %7) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %iop_committed = getelementptr inbounds %struct.xfs_item_ops, ptr %9, i32 0, i32 8
  %14 = ptrtoint ptr %iop_committed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iop_committed, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %if.end6.if.end13_crit_edge, label %if.then9

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = call i64 %15(ptr noundef %7, i64 noundef %commit_lsn) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end6.if.end13_crit_edge
  %item_lsn.0 = phi i64 [ %call12, %if.then9 ], [ %commit_lsn, %if.end6.if.end13_crit_edge ]
  %16 = lshr i64 %item_lsn.0, 32
  %conv.i = trunc i64 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %conv.i, -1
  %conv11.i = trunc i64 %item_lsn.0 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %conv11.i)
  %cmp13.not.i = icmp eq i32 %conv11.i, -1
  %or.cond = select i1 %cmp.not.i, i1 %cmp13.not.i, i1 false
  br i1 %or.cond, label %if.end13.cleanup_crit_edge, label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  br i1 %aborted, label %if.then18, label %if.end28

if.then18:                                        ; preds = %if.end16
  %17 = ptrtoint ptr %ailp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ailp, align 8
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %18, i32 0, i32 66
  %19 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %m_opstate.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not = icmp eq i32 %21, 0
  br i1 %tobool.i.not, label %cond.false, label %if.then18.cond.end_crit_edge, !prof !114

if.then18.cond.end_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str, i32 noundef 778) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then18.cond.end_crit_edge
  %22 = ptrtoint ptr %li_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %li_ops, align 4
  %iop_unpin = getelementptr inbounds %struct.xfs_item_ops, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %iop_unpin to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iop_unpin, align 4
  %tobool23.not = icmp eq ptr %25, null
  br i1 %tobool23.not, label %cond.end.cleanup_crit_edge, label %if.then24

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then24:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  call void %25(ptr noundef %7, i32 noundef 1) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_cmp8(i64 %item_lsn.0, i64 %commit_lsn)
  %cmp29.not = icmp eq i64 %item_lsn.0, %commit_lsn
  br i1 %cmp29.not, label %if.end45, label %if.then30

if.then30:                                        ; preds = %if.end28
  call void @_raw_spin_lock(ptr noundef %ail_lock) #8
  %li_lsn = getelementptr inbounds %struct.xfs_log_item, ptr %7, i32 0, i32 2
  %26 = ptrtoint ptr %li_lsn to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %li_lsn, align 8
  %28 = lshr i64 %27, 32
  %conv2.i = trunc i64 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %conv2.i)
  %cmp.not.i99 = icmp eq i32 %conv.i, %conv2.i
  br i1 %cmp.not.i99, label %if.end.i106, label %if.then.i103

if.then.i103:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %conv2.i)
  %cmp8.i100 = icmp ult i32 %conv.i, %conv2.i
  br i1 %cmp8.i100, label %if.then.i103.if.else35_crit_edge, label %if.then.i103.if.then34_crit_edge

if.then.i103.if.then34_crit_edge:                 ; preds = %if.then.i103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.then.i103.if.else35_crit_edge:                 ; preds = %if.then.i103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else35

if.end.i106:                                      ; preds = %if.then30
  %conv12.i = trunc i64 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i, i32 %conv12.i)
  %.not = icmp ugt i32 %conv11.i, %conv12.i
  br i1 %.not, label %if.end.i106.if.then34_crit_edge, label %if.end.i106.if.else35_crit_edge

if.end.i106.if.else35_crit_edge:                  ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else35

if.end.i106.if.then34_crit_edge:                  ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.then34:                                        ; preds = %if.end.i106.if.then34_crit_edge, %if.then.i103.if.then34_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lip.addr.i)
  %29 = ptrtoint ptr %lip.addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %7, ptr %lip.addr.i, align 4
  call void @xfs_trans_ail_update_bulk(ptr noundef %ailp, ptr noundef null, ptr noundef nonnull %lip.addr.i, i32 noundef 1, i64 noundef %item_lsn.0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lip.addr.i)
  br label %if.end37

if.else35:                                        ; preds = %if.end.i106.if.else35_crit_edge, %if.then.i103.if.else35_crit_edge
  call void @_raw_spin_unlock(ptr noundef %ail_lock) #8
  br label %if.end37

if.end37:                                         ; preds = %if.else35, %if.then34
  %30 = ptrtoint ptr %li_ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %li_ops, align 4
  %iop_unpin39 = getelementptr inbounds %struct.xfs_item_ops, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %iop_unpin39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iop_unpin39, align 4
  %tobool40.not = icmp eq ptr %33, null
  br i1 %tobool40.not, label %if.end37.cleanup_crit_edge, label %if.then41

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  call void %33(ptr noundef %7, i32 noundef 0) #8
  br label %cleanup

if.end45:                                         ; preds = %if.end28
  %34 = ptrtoint ptr %lv_item to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lv_item, align 4
  %inc = add i32 %i.0133, 1
  %arrayidx = getelementptr [32 x ptr], ptr %log_items, i32 0, i32 %i.0133
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %inc)
  %cmp47 = icmp sgt i32 %inc, 31
  br i1 %cmp47, label %if.then48, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then48:                                        ; preds = %if.end45
  call void @_raw_spin_lock(ptr noundef %ail_lock) #8
  call void @xfs_trans_ail_update_bulk(ptr noundef %ailp, ptr noundef nonnull %cur, ptr noundef nonnull %log_items, i32 noundef 32, i64 noundef %commit_lsn) #8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i114.for.body.i_crit_edge, %if.then48
  %i.011.i = phi i32 [ %inc.i, %if.end.i114.for.body.i_crit_edge ], [ 0, %if.then48 ]
  %arrayidx.i = getelementptr ptr, ptr %log_items, i32 %i.011.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %li_ops.i = getelementptr inbounds %struct.xfs_log_item, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %li_ops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %li_ops.i, align 4
  %iop_unpin.i = getelementptr inbounds %struct.xfs_item_ops, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %iop_unpin.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iop_unpin.i, align 4
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i114_crit_edge, label %if.then.i113

for.body.i.if.end.i114_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i114

if.then.i113:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %42(ptr noundef %38, i32 noundef 0) #8
  br label %if.end.i114

if.end.i114:                                      ; preds = %if.then.i113, %for.body.i.if.end.i114_crit_edge
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %if.end.i114.cleanup_crit_edge, label %if.end.i114.for.body.i_crit_edge

if.end.i114.for.body.i_crit_edge:                 ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end.i114.cleanup_crit_edge:                    ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i114.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.then41, %if.end37.cleanup_crit_edge, %if.then24, %cond.end.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then4
  %i.2 = phi i32 [ %i.0133, %if.then4 ], [ %i.0133, %if.then24 ], [ %i.0133, %cond.end.cleanup_crit_edge ], [ %i.0133, %if.then41 ], [ %i.0133, %if.end37.cleanup_crit_edge ], [ %inc, %if.end45.cleanup_crit_edge ], [ %i.0133, %if.end13.cleanup_crit_edge ], [ 0, %if.end.i114.cleanup_crit_edge ]
  %43 = ptrtoint ptr %lv.0132 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lv.0132, align 4
  %tobool.not = icmp eq ptr %44, null
  br i1 %tobool.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2)
  %tobool51.not = icmp eq i32 %i.2, 0
  br i1 %tobool51.not, label %for.end.if.end54_crit_edge, label %if.then52

for.end.if.end54_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then52:                                        ; preds = %for.end
  call void @_raw_spin_lock(ptr noundef %ail_lock) #8
  call void @xfs_trans_ail_update_bulk(ptr noundef %ailp, ptr noundef nonnull %cur, ptr noundef nonnull %log_items, i32 noundef %i.2, i64 noundef %commit_lsn) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2)
  %cmp10.i = icmp sgt i32 %i.2, 0
  br i1 %cmp10.i, label %if.then52.for.body.i121_crit_edge, label %if.then52.if.end54_crit_edge

if.then52.if.end54_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then52.for.body.i121_crit_edge:                ; preds = %if.then52
  br label %for.body.i121

for.body.i121:                                    ; preds = %if.end.i125.for.body.i121_crit_edge, %if.then52.for.body.i121_crit_edge
  %i.011.i116 = phi i32 [ %inc.i123, %if.end.i125.for.body.i121_crit_edge ], [ 0, %if.then52.for.body.i121_crit_edge ]
  %arrayidx.i117 = getelementptr ptr, ptr %log_items, i32 %i.011.i116
  %45 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i117, align 4
  %li_ops.i118 = getelementptr inbounds %struct.xfs_log_item, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %li_ops.i118 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %li_ops.i118, align 4
  %iop_unpin.i119 = getelementptr inbounds %struct.xfs_item_ops, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %iop_unpin.i119 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iop_unpin.i119, align 4
  %tobool.not.i120 = icmp eq ptr %50, null
  br i1 %tobool.not.i120, label %for.body.i121.if.end.i125_crit_edge, label %if.then.i122

for.body.i121.if.end.i125_crit_edge:              ; preds = %for.body.i121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i125

if.then.i122:                                     ; preds = %for.body.i121
  call void @__sanitizer_cov_trace_pc() #10
  call void %50(ptr noundef %46, i32 noundef 0) #8
  br label %if.end.i125

if.end.i125:                                      ; preds = %if.then.i122, %for.body.i121.if.end.i125_crit_edge
  %inc.i123 = add nuw nsw i32 %i.011.i116, 1
  %exitcond.not.i124 = icmp eq i32 %inc.i123, %i.2
  br i1 %exitcond.not.i124, label %if.end.i125.if.end54_crit_edge, label %if.end.i125.for.body.i121_crit_edge

if.end.i125.for.body.i121_crit_edge:              ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i121

if.end.i125.if.end54_crit_edge:                   ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.end54:                                         ; preds = %if.end.i125.if.end54_crit_edge, %if.then52.if.end54_crit_edge, %for.end.if.end54_crit_edge, %entry.if.end54_crit_edge
  call void @_raw_spin_lock(ptr noundef %ail_lock) #8
  call void @xfs_trans_ail_cursor_done(ptr noundef nonnull %cur) #8
  call void @_raw_spin_unlock(ptr noundef %ail_lock) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cur) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %log_items) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_trans_ail_cursor_last(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ail_cursor_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_trans_commit(ptr noundef %tp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__xfs_trans_commit(ptr noundef %tp, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__xfs_trans_commit(ptr noundef %tp, i1 noundef zeroext %regrant) unnamed_addr #0 align 64 {
entry:
  %tp.addr = alloca ptr, align 4
  %commit_seq = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tp.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %tp, ptr %tp.addr, align 4
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %1 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %t_mountp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %commit_seq) #8
  %3 = ptrtoint ptr %commit_seq to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %commit_seq, align 8
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %4 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %t_flags, align 4
  %and = and i32 %5, 8
  %6 = tail call ptr @llvm.returnaddress(i32 0)
  %7 = ptrtoint ptr %6 to i32
  tail call fastcc void @trace_xfs_trans_commit(ptr noundef %tp, i32 noundef %7)
  %t_dfops = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 28
  %8 = ptrtoint ptr %t_dfops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %t_dfops, align 4
  %cmp.i.not = icmp eq ptr %9, %t_dfops
  br i1 %cmp.i.not, label %entry.if.end35_crit_edge, label %land.rhs

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.rhs:                                         ; preds = %entry
  %10 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t_flags, align 4
  %and2 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %land.rhs8, label %land.rhs.if.end35_crit_edge

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.rhs8:                                        ; preds = %land.rhs
  %.b198 = load i1, ptr @__xfs_trans_commit.__already_done, align 1
  br i1 %.b198, label %land.rhs8.if.end35_crit_edge, label %if.then, !prof !111

land.rhs8.if.end35_crit_edge:                     ; preds = %land.rhs8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then:                                          ; preds = %land.rhs8
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__xfs_trans_commit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 850, i32 noundef 9, ptr noundef null) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then, %land.rhs8.if.end35_crit_edge, %land.rhs.if.end35_crit_edge, %entry.if.end35_crit_edge
  br i1 %regrant, label %if.end35.if.end52_crit_edge, label %land.lhs.true

if.end35.if.end52_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

land.lhs.true:                                    ; preds = %if.end35
  %12 = ptrtoint ptr %tp.addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tp.addr, align 4
  %t_flags44 = getelementptr inbounds %struct.xfs_trans, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %t_flags44 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %t_flags44, align 4
  %and45 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %land.lhs.true.if.end52_crit_edge, label %if.then47

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then47:                                        ; preds = %land.lhs.true
  %call48 = call i32 @xfs_defer_finish_noroll(ptr noundef nonnull %tp.addr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then47.if.end52_crit_edge, label %if.then47.out_unreserve_crit_edge

if.then47.out_unreserve_crit_edge:                ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unreserve

if.then47.if.end52_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.end52:                                         ; preds = %if.then47.if.end52_crit_edge, %land.lhs.true.if.end52_crit_edge, %if.end35.if.end52_crit_edge
  %16 = ptrtoint ptr %tp.addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tp.addr, align 4
  %t_flags53 = getelementptr inbounds %struct.xfs_trans, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %t_flags53 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %t_flags53, align 4
  %and54 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end52.out_unreserve_crit_edge, label %if.end57

if.end52.out_unreserve_crit_edge:                 ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unreserve

if.end57:                                         ; preds = %if.end52
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 66
  %20 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %m_opstate.i, align 4
  %22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not = icmp eq i32 %22, 0
  br i1 %tobool.i.not, label %if.end60, label %if.end57.out_unreserve_crit_edge

if.end57.out_unreserve_crit_edge:                 ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unreserve

if.end60:                                         ; preds = %if.end57
  %t_ticket = getelementptr inbounds %struct.xfs_trans, ptr %17, i32 0, i32 9
  %23 = ptrtoint ptr %t_ticket to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %t_ticket, align 8
  %cmp.not = icmp eq ptr %24, null
  br i1 %cmp.not, label %cond.false, label %if.end60.cond.end_crit_edge, !prof !114

if.end60.cond.end_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str, i32 noundef 872) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end60.cond.end_crit_edge
  %25 = ptrtoint ptr %tp.addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tp.addr, align 4
  %t_flags67 = getelementptr inbounds %struct.xfs_trans, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %t_flags67 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %t_flags67, align 4
  %and68 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %cond.end.if.end71_crit_edge, label %if.then70

cond.end.if.end71_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then70:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @xfs_trans_apply_sb_deltas(ptr noundef %26)
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %cond.end.if.end71_crit_edge
  %29 = ptrtoint ptr %tp.addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tp.addr, align 4
  call void @xfs_trans_apply_dquot_deltas(ptr noundef %30) #8
  %m_log = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 8
  %31 = ptrtoint ptr %m_log to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %m_log, align 4
  %33 = ptrtoint ptr %tp.addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tp.addr, align 4
  call void @xlog_cil_commit(ptr noundef %32, ptr noundef %34, ptr noundef nonnull %commit_seq, i1 noundef zeroext %regrant) #8
  %35 = ptrtoint ptr %tp.addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tp.addr, align 4
  call fastcc void @xfs_trans_free(ptr noundef %36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool73.not = icmp eq i32 %and, 0
  br i1 %tobool73.not, label %do.body99, label %if.then74

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %commit_seq to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %commit_seq, align 8
  %call75 = call i32 @xfs_log_force_seq(ptr noundef %2, i64 noundef %38, i32 noundef 1, ptr noundef null) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %39 = load ptr, ptr @xfsstats, align 4
  %40 = ptrtoint ptr %39 to i32
  %41 = call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx, align 4
  %add = add i32 %46, %40
  %47 = inttoptr i32 %add to ptr
  %xs_trans_sync = getelementptr inbounds %struct.__xfsstats, ptr %47, i32 0, i32 23
  %48 = ptrtoint ptr %xs_trans_sync to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %xs_trans_sync, align 4
  %inc = add i32 %49, 1
  store i32 %inc, ptr %xs_trans_sync, align 4
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 92
  %50 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %m_stats, align 4
  %52 = ptrtoint ptr %51 to i32
  %53 = load i32, ptr %cpu, align 4
  %arrayidx92 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx92, align 4
  %add93 = add i32 %55, %52
  %56 = inttoptr i32 %add93 to ptr
  %xs_trans_sync94 = getelementptr inbounds %struct.__xfsstats, ptr %56, i32 0, i32 23
  %57 = ptrtoint ptr %xs_trans_sync94 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %xs_trans_sync94, align 4
  %inc95 = add i32 %58, 1
  store i32 %inc95, ptr %xs_trans_sync94, align 4
  br label %cleanup

do.body99:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %59 = load ptr, ptr @xfsstats, align 4
  %60 = ptrtoint ptr %59 to i32
  %61 = call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i200 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i200 to ptr
  %cpu107 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %cpu107 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cpu107, align 4
  %arrayidx108 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx108, align 4
  %add109 = add i32 %66, %60
  %67 = inttoptr i32 %add109 to ptr
  %xs_trans_async = getelementptr inbounds %struct.__xfsstats, ptr %67, i32 0, i32 24
  %68 = ptrtoint ptr %xs_trans_async to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %xs_trans_async, align 8
  %inc110 = add i32 %69, 1
  store i32 %inc110, ptr %xs_trans_async, align 8
  %m_stats117 = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 92
  %70 = ptrtoint ptr %m_stats117 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %m_stats117, align 4
  %72 = ptrtoint ptr %71 to i32
  %73 = load i32, ptr %cpu107, align 4
  %arrayidx122 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx122, align 4
  %add123 = add i32 %75, %72
  %76 = inttoptr i32 %add123 to ptr
  %xs_trans_async124 = getelementptr inbounds %struct.__xfsstats, ptr %76, i32 0, i32 24
  %77 = ptrtoint ptr %xs_trans_async124 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %xs_trans_async124, align 8
  %inc125 = add i32 %78, 1
  store i32 %inc125, ptr %xs_trans_async124, align 8
  br label %cleanup

out_unreserve:                                    ; preds = %if.end57.out_unreserve_crit_edge, %if.end52.out_unreserve_crit_edge, %if.then47.out_unreserve_crit_edge
  %error.2 = phi i32 [ 0, %if.end52.out_unreserve_crit_edge ], [ %call48, %if.then47.out_unreserve_crit_edge ], [ -5, %if.end57.out_unreserve_crit_edge ]
  %79 = ptrtoint ptr %tp.addr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tp.addr, align 4
  call void @xfs_trans_unreserve_and_mod_sb(ptr noundef %80)
  %81 = ptrtoint ptr %tp.addr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tp.addr, align 4
  call void @xfs_trans_unreserve_and_mod_dquots(ptr noundef %82) #8
  %83 = ptrtoint ptr %tp.addr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tp.addr, align 4
  %t_ticket129 = getelementptr inbounds %struct.xfs_trans, ptr %84, i32 0, i32 9
  %85 = ptrtoint ptr %t_ticket129 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %t_ticket129, align 8
  %tobool130.not = icmp eq ptr %86, null
  br i1 %tobool130.not, label %out_unreserve.if.end144_crit_edge, label %if.then131

out_unreserve.if.end144_crit_edge:                ; preds = %out_unreserve
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

if.then131:                                       ; preds = %out_unreserve
  br i1 %regrant, label %land.lhs.true133, label %if.then131.if.else139_crit_edge

if.then131.if.else139_crit_edge:                  ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else139

land.lhs.true133:                                 ; preds = %if.then131
  %m_log134 = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 8
  %87 = ptrtoint ptr %m_log134 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %m_log134, align 4
  %l_opstate.i = getelementptr inbounds %struct.xlog, ptr %88, i32 0, i32 6
  %89 = ptrtoint ptr %l_opstate.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %l_opstate.i, align 4
  %91 = and i32 %90, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.i201.not = icmp eq i32 %91, 0
  br i1 %tobool.i201.not, label %if.then136, label %land.lhs.true133.if.else139_crit_edge

land.lhs.true133.if.else139_crit_edge:            ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else139

if.then136:                                       ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #10
  call void @xfs_log_ticket_regrant(ptr noundef %88, ptr noundef nonnull %86) #8
  br label %if.end142

if.else139:                                       ; preds = %land.lhs.true133.if.else139_crit_edge, %if.then131.if.else139_crit_edge
  %m_log140 = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 8
  %92 = ptrtoint ptr %m_log140 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %m_log140, align 4
  call void @xfs_log_ticket_ungrant(ptr noundef %93, ptr noundef nonnull %86) #8
  br label %if.end142

if.end142:                                        ; preds = %if.else139, %if.then136
  %94 = ptrtoint ptr %tp.addr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tp.addr, align 4
  %t_ticket143 = getelementptr inbounds %struct.xfs_trans, ptr %95, i32 0, i32 9
  %96 = ptrtoint ptr %t_ticket143 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %t_ticket143, align 8
  br label %if.end144

if.end144:                                        ; preds = %if.end142, %out_unreserve.if.end144_crit_edge
  %97 = ptrtoint ptr %tp.addr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tp.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.2)
  %tobool145.not = icmp eq i32 %error.2, 0
  call fastcc void @trace_xfs_trans_free_items(ptr noundef %98, i32 noundef %7) #8
  %t_items.i = getelementptr inbounds %struct.xfs_trans, ptr %98, i32 0, i32 26
  %99 = ptrtoint ptr %t_items.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %t_items.i, align 8
  %cmp.not30.i = icmp eq ptr %100, %t_items.i
  br i1 %cmp.not30.i, label %if.end144.xfs_trans_free_items.exit_crit_edge, label %if.end144.for.body.i_crit_edge

if.end144.for.body.i_crit_edge:                   ; preds = %if.end144
  br label %for.body.i

if.end144.xfs_trans_free_items.exit_crit_edge:    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_trans_free_items.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end144.for.body.i_crit_edge
  %.pn.in31.i = phi ptr [ %.pn35.i, %for.inc.i.for.body.i_crit_edge ], [ %100, %if.end144.for.body.i_crit_edge ]
  %lip.034.i = getelementptr i8, ptr %.pn.in31.i, i32 -8
  %101 = ptrtoint ptr %.pn.in31.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %.pn35.i = load ptr, ptr %.pn.in31.i, align 8
  %li_flags.i.i = getelementptr i8, ptr %.pn.in31.i, i32 28
  call void @_clear_bit(i32 noundef 3, ptr noundef %li_flags.i.i) #8
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in31.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.xfs_trans_del_item.exit.i_crit_edge

for.body.i.xfs_trans_del_item.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_trans_del_item.exit.i

if.end.i.i.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in31.i, i32 4
  %102 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %prev.i.i.i.i, align 4
  %104 = ptrtoint ptr %.pn.in31.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %.pn.in31.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %103, ptr %prev1.i.i.i.i.i, align 4
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %105, ptr %103, align 4
  br label %xfs_trans_del_item.exit.i

xfs_trans_del_item.exit.i:                        ; preds = %if.end.i.i.i.i, %for.body.i.xfs_trans_del_item.exit.i_crit_edge
  %108 = ptrtoint ptr %.pn.in31.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %.pn.in31.i, ptr %.pn.in31.i, align 4
  %prev.i3.i.i.i = getelementptr i8, ptr %.pn.in31.i, i32 4
  %109 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %.pn.in31.i, ptr %prev.i3.i.i.i, align 4
  br i1 %tobool145.not, label %xfs_trans_del_item.exit.i.if.end.i_crit_edge, label %if.then.i

xfs_trans_del_item.exit.i.if.end.i_crit_edge:     ; preds = %xfs_trans_del_item.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %xfs_trans_del_item.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 1, ptr noundef %li_flags.i.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %xfs_trans_del_item.exit.i.if.end.i_crit_edge
  %li_ops.i = getelementptr i8, ptr %.pn.in31.i, i32 44
  %110 = ptrtoint ptr %li_ops.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %li_ops.i, align 4
  %iop_release.i = getelementptr inbounds %struct.xfs_item_ops, ptr %111, i32 0, i32 7
  %112 = ptrtoint ptr %iop_release.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %iop_release.i, align 4
  %tobool8.not.i = icmp eq ptr %113, null
  br i1 %tobool8.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then9.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %113(ptr noundef %lip.034.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then9.i, %if.end.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn35.i, %t_items.i
  br i1 %cmp.not.i, label %for.inc.i.xfs_trans_free_items.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.xfs_trans_free_items.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_trans_free_items.exit

xfs_trans_free_items.exit:                        ; preds = %for.inc.i.xfs_trans_free_items.exit_crit_edge, %if.end144.xfs_trans_free_items.exit_crit_edge
  %114 = ptrtoint ptr %tp.addr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %tp.addr, align 4
  call fastcc void @xfs_trans_free(ptr noundef %115)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %116 = load ptr, ptr @xfsstats, align 4
  %117 = ptrtoint ptr %116 to i32
  %118 = call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i202 = and i32 %118, -16384
  %119 = inttoptr i32 %and.i202 to ptr
  %cpu159 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %cpu159 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cpu159, align 4
  %arrayidx160 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %121
  %122 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx160, align 4
  %add161 = add i32 %123, %117
  %124 = inttoptr i32 %add161 to ptr
  %xs_trans_empty = getelementptr inbounds %struct.__xfsstats, ptr %124, i32 0, i32 25
  %125 = ptrtoint ptr %xs_trans_empty to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %xs_trans_empty, align 4
  %inc162 = add i32 %126, 1
  store i32 %inc162, ptr %xs_trans_empty, align 4
  %m_stats169 = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 92
  %127 = ptrtoint ptr %m_stats169 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %m_stats169, align 4
  %129 = ptrtoint ptr %128 to i32
  %130 = load i32, ptr %cpu159, align 4
  %arrayidx174 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %130
  %131 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx174, align 4
  %add175 = add i32 %132, %129
  %133 = inttoptr i32 %add175 to ptr
  %xs_trans_empty176 = getelementptr inbounds %struct.__xfsstats, ptr %133, i32 0, i32 25
  %134 = ptrtoint ptr %xs_trans_empty176 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %xs_trans_empty176, align 4
  %inc177 = add i32 %135, 1
  store i32 %inc177, ptr %xs_trans_empty176, align 4
  br label %cleanup

cleanup:                                          ; preds = %xfs_trans_free_items.exit, %do.body99, %if.then74
  %retval.0 = phi i32 [ %error.2, %xfs_trans_free_items.exit ], [ %call75, %if.then74 ], [ 0, %do.body99 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %commit_seq) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_cancel(ptr noundef %tp, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_cancel, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_cancel, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !117

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !124
  %call42 = tail call i32 @__traceiter_xfs_trans_cancel(ptr noundef null, ptr noundef %tp, i32 noundef %caller_ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !125
  %13 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_cancel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_cancel, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_trans_cancel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_trans_cancel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 3571, ptr noundef nonnull @.str.20) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !121
  %31 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
declare dso_local void @xfs_defer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_error_report(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_unreserve_and_mod_dquots(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_log_ticket_ungrant(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_trans_free(ptr noundef %tp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %t_busy = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 27
  tail call void @list_sort(ptr noundef null, ptr noundef %t_busy, ptr noundef nonnull @xfs_extent_busy_ag_cmp) #8
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %0 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_mountp, align 4
  tail call void @xfs_extent_busy_clear(ptr noundef %1, ptr noundef %t_busy, i1 noundef zeroext false) #8
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %3 = ptrtoint ptr %2 to i32
  tail call fastcc void @trace_xfs_trans_free(ptr noundef %tp, i32 noundef %3)
  %4 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 146
  %8 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %journal_info.i, align 4
  %cmp.i = icmp eq ptr %9, %tp
  br i1 %cmp.i, label %if.then.i, label %entry.xfs_trans_clear_context.exit_crit_edge

entry.xfs_trans_clear_context.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_trans_clear_context.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %t_pflags.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 29
  %10 = ptrtoint ptr %t_pflags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t_pflags.i, align 8
  %flags1.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags1.i.i, align 4
  %and.i5.i = and i32 %13, -262145
  %or.i.i = or i32 %and.i5.i, %11
  store i32 %or.i.i, ptr %flags1.i.i, align 4
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %journal_info3.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 146
  %16 = ptrtoint ptr %journal_info3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %journal_info3.i, align 4
  br label %xfs_trans_clear_context.exit

xfs_trans_clear_context.exit:                     ; preds = %if.then.i, %entry.xfs_trans_clear_context.exit_crit_edge
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %17 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %t_flags, align 4
  %and = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %xfs_trans_clear_context.exit.if.end_crit_edge

xfs_trans_clear_context.exit.if.end_crit_edge:    ; preds = %xfs_trans_clear_context.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %xfs_trans_clear_context.exit
  %19 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %t_mountp, align 4
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m_super, align 8
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %22, i32 0, i32 32, i32 2, i32 2
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %22, i32 0, i32 32, i32 2, i32 2, i32 5
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %3) #8
  %23 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %26, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !126
  %call.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.then.rcu_sync_is_idle.exit.i.i.i_crit_edge

if.then.rcu_sync_is_idle.exit.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 35, ptr noundef nonnull @.str.24) #8
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %if.then.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %27 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool7.not.i.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body3.i.i.i, label %do.end49.i.i.i, !prof !111

do.body3.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !112
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %22, i32 0, i32 32, i32 2, i32 2, i32 1
  %30 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_count.i.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %38, %32
  %39 = inttoptr i32 %add.i.i.i to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add17.i.i.i = add i32 %41, -1
  store i32 %add17.i.i.i, ptr %39, align 4
  %42 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !113
  %and.i.i.i.i.i = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.then37.i.i.i, label %do.body3.i.i.i.do.end39.i.i.i_crit_edge, !prof !114

do.body3.i.i.i.do.end39.i.i.i_crit_edge:          ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.i.i.i

if.then37.i.i.i:                                  ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end39.i.i.i

do.end39.i.i.i:                                   ; preds = %if.then37.i.i.i, %do.body3.i.i.i.do.end39.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #8, !srcloc !115
  br label %sb_end_intwrite.exit

do.end49.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !127
  %43 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !112
  %read_count75.i.i.i = getelementptr %struct.super_block, ptr %22, i32 0, i32 32, i32 2, i32 2, i32 1
  %44 = ptrtoint ptr %read_count75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read_count75.i.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i122.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i122.i.i.i to ptr
  %cpu78.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %cpu78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu78.i.i.i, align 4
  %arrayidx79.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx79.i.i.i, align 4
  %add80.i.i.i = add i32 %52, %46
  %53 = inttoptr i32 %add80.i.i.i to ptr
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %add81.i.i.i = add i32 %55, -1
  store i32 %add81.i.i.i, ptr %53, align 4
  %56 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !113
  %and.i.i123.i.i.i = and i32 %56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i.i)
  %tobool92.not.i.i.i = icmp eq i32 %and.i.i123.i.i.i, 0
  br i1 %tobool92.not.i.i.i, label %if.then101.i.i.i, label %do.end49.i.i.i.do.end104.i.i.i_crit_edge, !prof !114

do.end49.i.i.i.do.end104.i.i.i_crit_edge:         ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end104.i.i.i

if.then101.i.i.i:                                 ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end104.i.i.i

do.end104.i.i.i:                                  ; preds = %if.then101.i.i.i, %do.end49.i.i.i.do.end104.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %43) #8, !srcloc !115
  %writer.i.i.i = getelementptr %struct.super_block, ptr %22, i32 0, i32 32, i32 2, i32 2, i32 2
  %call111.i.i.i = tail call i32 @rcuwait_wake_up(ptr noundef %writer.i.i.i) #8
  br label %sb_end_intwrite.exit

sb_end_intwrite.exit:                             ; preds = %do.end104.i.i.i, %do.end39.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !128
  %57 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i120.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i120.i.i.i to ptr
  %preempt_count.i.i121.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i121.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i121.i.i.i, align 4
  %sub.i.i.i.i = add i32 %60, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i121.i.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %sb_end_intwrite.exit, %xfs_trans_clear_context.exit.if.end_crit_edge
  tail call void @xfs_trans_free_dqinfo(ptr noundef %tp) #8
  %61 = load ptr, ptr @xfs_trans_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %61, ptr noundef %tp) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_trans_roll(ptr nocapture noundef %tpp) local_unnamed_addr #0 align 64 {
entry:
  %tres = alloca %struct.xfs_trans_res, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpp, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tres) #8
  %2 = getelementptr inbounds %struct.xfs_trans_res, ptr %tres, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = ptrtoint ptr %3 to i32
  tail call fastcc void @trace_xfs_trans_roll(ptr noundef %1, i32 noundef %4)
  %t_log_res = getelementptr inbounds %struct.xfs_trans, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %t_log_res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %t_log_res, align 4
  %7 = ptrtoint ptr %tres to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tres, align 4
  %t_log_count = getelementptr inbounds %struct.xfs_trans, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %t_log_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %t_log_count, align 8
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %2, align 4
  %call = tail call fastcc ptr @xfs_trans_dup(ptr noundef %1)
  %11 = ptrtoint ptr %tpp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %tpp, align 4
  %call1 = tail call fastcc i32 @__xfs_trans_commit(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = getelementptr inbounds %struct.xfs_trans_res, ptr %tres, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %12, align 4
  %14 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tpp, align 4
  %call2 = call fastcc i32 @xfs_trans_reserve(ptr noundef %15, ptr noundef nonnull %tres, i32 noundef 0, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tres) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_roll(ptr noundef %tp, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_roll, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_roll, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !117

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !129
  %call42 = tail call i32 @__traceiter_xfs_trans_roll(ptr noundef null, ptr noundef %tp, i32 noundef %caller_ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !130
  %13 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_roll, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_roll, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_trans_roll.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_trans_roll.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 3575, ptr noundef nonnull @.str.20) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !121
  %31 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
define internal fastcc ptr @xfs_trans_dup(ptr noundef %tp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call fastcc void @trace_xfs_trans_dup(ptr noundef %tp, i32 noundef %1)
  %2 = load ptr, ptr @xfs_trans_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 36288) #8
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1414676814, ptr %call.i, align 8
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %4 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t_mountp, align 4
  %t_mountp1 = getelementptr inbounds %struct.xfs_trans, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %t_mountp1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %t_mountp1, align 4
  %t_items = getelementptr inbounds %struct.xfs_trans, ptr %call.i, i32 0, i32 26
  %7 = ptrtoint ptr %t_items to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %t_items, ptr %t_items, align 8
  %prev.i = getelementptr inbounds %struct.xfs_trans, ptr %call.i, i32 0, i32 26, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %t_items, ptr %prev.i, align 4
  %t_busy = getelementptr inbounds %struct.xfs_trans, ptr %call.i, i32 0, i32 27
  %9 = ptrtoint ptr %t_busy to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %t_busy, ptr %t_busy, align 8
  %prev.i80 = getelementptr inbounds %struct.xfs_trans, ptr %call.i, i32 0, i32 27, i32 1
  %10 = ptrtoint ptr %prev.i80 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %t_busy, ptr %prev.i80, align 4
  %t_dfops = getelementptr inbounds %struct.xfs_trans, ptr %call.i, i32 0, i32 28
  %11 = ptrtoint ptr %t_dfops to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %t_dfops, ptr %t_dfops, align 8
  %prev.i81 = getelementptr inbounds %struct.xfs_trans, ptr %call.i, i32 0, i32 28, i32 1
  %12 = ptrtoint ptr %prev.i81 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %t_dfops, ptr %prev.i81, align 4
  %t_firstblock = getelementptr inbounds %struct.xfs_trans, ptr %call.i, i32 0, i32 8
  %13 = ptrtoint ptr %t_firstblock to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %t_firstblock, align 8
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 7
  %14 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %t_flags, align 4
  %and = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !114

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 110) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %t_ticket = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 9
  %16 = ptrtoint ptr %t_ticket to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %t_ticket, align 8
  %cmp.not = icmp eq ptr %17, null
  br i1 %cmp.not, label %cond.false11, label %cond.end.cond.end12_crit_edge, !prof !114

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str, i32 noundef 111) #8
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.end.cond.end12_crit_edge
  %18 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %t_flags, align 4
  %or17 = and i32 %19, 224
  %or20 = or i32 %or17, 4
  %t_flags21 = getelementptr inbounds %struct.xfs_trans, ptr %call.i, i32 0, i32 7
  %20 = ptrtoint ptr %t_flags21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or20, ptr %t_flags21, align 4
  %or23 = or i32 %19, 64
  store i32 %or23, ptr %t_flags, align 4
  %21 = ptrtoint ptr %t_ticket to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %t_ticket, align 8
  %call25 = tail call ptr @xfs_log_ticket_get(ptr noundef %22) #8
  %t_ticket26 = getelementptr inbounds %struct.xfs_trans, ptr %call.i, i32 0, i32 9
  %23 = ptrtoint ptr %t_ticket26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call25, ptr %t_ticket26, align 8
  %t_blk_res = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 3
  %24 = ptrtoint ptr %t_blk_res to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %t_blk_res, align 4
  %t_blk_res_used = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 4
  %26 = ptrtoint ptr %t_blk_res_used to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %t_blk_res_used, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp27.not = icmp ult i32 %25, %27
  br i1 %cmp27.not, label %cond.false35, label %cond.end12.cond.end36_crit_edge, !prof !114

cond.end12.cond.end36_crit_edge:                  ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end36

cond.false35:                                     ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str, i32 noundef 121) #8
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false35, %cond.end12.cond.end36_crit_edge
  %28 = ptrtoint ptr %t_blk_res to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %t_blk_res, align 4
  %30 = ptrtoint ptr %t_blk_res_used to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %t_blk_res_used, align 8
  %sub = sub i32 %29, %31
  %t_blk_res39 = getelementptr inbounds %struct.xfs_trans, ptr %call.i, i32 0, i32 3
  %32 = ptrtoint ptr %t_blk_res39 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub, ptr %t_blk_res39, align 4
  store i32 %31, ptr %t_blk_res, align 4
  %t_rtx_res = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 5
  %33 = ptrtoint ptr %t_rtx_res to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %t_rtx_res, align 4
  %t_rtx_res_used = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 6
  %35 = ptrtoint ptr %t_rtx_res_used to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %t_rtx_res_used, align 8
  %sub42 = sub i32 %34, %36
  %t_rtx_res43 = getelementptr inbounds %struct.xfs_trans, ptr %call.i, i32 0, i32 5
  %37 = ptrtoint ptr %t_rtx_res43 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub42, ptr %t_rtx_res43, align 4
  store i32 %36, ptr %t_rtx_res, align 4
  %38 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 146
  %42 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %journal_info.i, align 4
  %cmp.i = icmp eq ptr %43, %tp
  br i1 %cmp.i, label %cond.end36.xfs_trans_switch_context.exit_crit_edge, label %cond.false.i, !prof !111

cond.end36.xfs_trans_switch_context.exit_crit_edge: ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_trans_switch_context.exit

cond.false.i:                                     ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.26, i32 noundef 287) #8
  br label %xfs_trans_switch_context.exit

xfs_trans_switch_context.exit:                    ; preds = %cond.false.i, %cond.end36.xfs_trans_switch_context.exit_crit_edge
  %t_pflags.i = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 29
  %44 = ptrtoint ptr %t_pflags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %t_pflags.i, align 8
  %t_pflags2.i = getelementptr inbounds %struct.xfs_trans, ptr %call.i, i32 0, i32 29
  %46 = ptrtoint ptr %t_pflags2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %t_pflags2.i, align 8
  store i32 0, ptr %t_pflags.i, align 8
  %47 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task.i, align 8
  %journal_info6.i = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 146
  %49 = ptrtoint ptr %journal_info6.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %journal_info6.i, align 4
  tail call void @xfs_defer_move(ptr noundef %call.i, ptr noundef %tp) #8
  tail call void @xfs_trans_dup_dqinfo(ptr noundef %tp, ptr noundef %call.i) #8
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_trans_alloc_inode(ptr noundef %ip, ptr nocapture noundef readonly %resv, i32 noundef %dblocks, i32 noundef %rblocks, i1 noundef zeroext %force, ptr nocapture noundef writeonly %tpp) local_unnamed_addr #0 align 64 {
entry:
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #8
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !109
  %1 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ip, align 8
  %sb_rextsize = getelementptr inbounds %struct.xfs_sb, ptr %2, i32 0, i32 10
  %cond = select i1 %force, i32 32, i32 0
  %3 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sb_rextsize, align 16
  %div48 = udiv i32 %rblocks, %4
  %call49 = call i32 @xfs_trans_alloc(ptr noundef %2, ptr noundef %resv, i32 noundef %dblocks, i32 noundef %div48, i32 noundef %cond, ptr noundef nonnull %tp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool1.not50 = icmp eq i32 %call49, 0
  br i1 %tobool1.not50, label %if.end.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %conv = zext i32 %dblocks to i64
  %conv8 = zext i32 %rblocks to i64
  tail call void @xfs_ilock(ptr noundef %ip, i32 noundef 4) #8
  %5 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tp, align 4
  tail call void @xfs_trans_ijoin(ptr noundef %6, ptr noundef %ip, i32 noundef 0) #8
  %call2 = tail call i32 @xfs_qm_dqattach_locked(ptr noundef %ip, i1 noundef zeroext false) #8
  %7 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %call2, label %if.end.lr.ph.out_cancel_crit_edge [
    i32 0, label %if.end7
    i32 -2, label %if.end.lr.ph.cond.false_crit_edge
  ], !prof !131

if.end.lr.ph.cond.false_crit_edge:                ; preds = %if.end.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

if.end.lr.ph.out_cancel_crit_edge:                ; preds = %if.end.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel

cond.false:                                       ; preds = %if.end.1.cond.false_crit_edge, %if.end.lr.ph.cond.false_crit_edge
  %.lcssa52 = phi ptr [ %6, %if.end.lr.ph.cond.false_crit_edge ], [ %12, %if.end.1.cond.false_crit_edge ]
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str, i32 noundef 1068) #8
  br label %out_cancel

if.end7:                                          ; preds = %if.end.lr.ph
  %call10 = tail call i32 @xfs_trans_reserve_quota_nblks(ptr noundef %6, ptr noundef %ip, i64 noundef %conv, i64 noundef %conv8, i1 noundef zeroext %force) #8
  %8 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call10, label %if.end7.out_cancel_crit_edge [
    i32 -122, label %if.end7.land.lhs.true_crit_edge
    i32 -28, label %if.end7.land.lhs.true_crit_edge56
    i32 0, label %if.end7.if.end21_crit_edge
  ]

if.end7.if.end21_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end7.land.lhs.true_crit_edge56:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end7.land.lhs.true_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end7.out_cancel_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel

land.lhs.true:                                    ; preds = %if.end7.land.lhs.true_crit_edge, %if.end7.land.lhs.true_crit_edge56
  tail call void @xfs_trans_cancel(ptr noundef %6)
  tail call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #8
  %call17 = tail call i32 @xfs_blockgc_free_quota(ptr noundef %ip, i32 noundef 0) #8
  %9 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sb_rextsize, align 16
  %div = udiv i32 %rblocks, %10
  %call = call i32 @xfs_trans_alloc(ptr noundef %2, ptr noundef %resv, i32 noundef %dblocks, i32 noundef %div, i32 noundef %cond, ptr noundef nonnull %tp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.1, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.1:                                         ; preds = %land.lhs.true
  tail call void @xfs_ilock(ptr noundef %ip, i32 noundef 4) #8
  %11 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tp, align 4
  tail call void @xfs_trans_ijoin(ptr noundef %12, ptr noundef %ip, i32 noundef 0) #8
  %call2.1 = tail call i32 @xfs_qm_dqattach_locked(ptr noundef %ip, i1 noundef zeroext false) #8
  %13 = zext i32 %call2.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call2.1, label %if.end.1.out_cancel_crit_edge [
    i32 0, label %if.end7.1
    i32 -2, label %if.end.1.cond.false_crit_edge
  ], !prof !131

if.end.1.cond.false_crit_edge:                    ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

if.end.1.out_cancel_crit_edge:                    ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel

if.end7.1:                                        ; preds = %if.end.1
  %call10.1 = tail call i32 @xfs_trans_reserve_quota_nblks(ptr noundef %12, ptr noundef %ip, i64 noundef %conv, i64 noundef %conv8, i1 noundef zeroext %force) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1)
  %cond55 = icmp eq i32 %call10.1, 0
  br i1 %cond55, label %if.end7.1.if.end21_crit_edge, label %if.end7.1.out_cancel_crit_edge

if.end7.1.out_cancel_crit_edge:                   ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel

if.end7.1.if.end21_crit_edge:                     ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21:                                         ; preds = %if.end7.1.if.end21_crit_edge, %if.end7.if.end21_crit_edge
  %.lcssa53 = phi ptr [ %6, %if.end7.if.end21_crit_edge ], [ %12, %if.end7.1.if.end21_crit_edge ]
  %14 = ptrtoint ptr %tpp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %.lcssa53, ptr %tpp, align 4
  br label %cleanup

out_cancel:                                       ; preds = %if.end7.1.out_cancel_crit_edge, %if.end.1.out_cancel_crit_edge, %if.end7.out_cancel_crit_edge, %cond.false, %if.end.lr.ph.out_cancel_crit_edge
  %15 = phi ptr [ %.lcssa52, %cond.false ], [ %6, %if.end.lr.ph.out_cancel_crit_edge ], [ %6, %if.end7.out_cancel_crit_edge ], [ %12, %if.end.1.out_cancel_crit_edge ], [ %12, %if.end7.1.out_cancel_crit_edge ]
  %error.0 = phi i32 [ -2, %cond.false ], [ %call2, %if.end.lr.ph.out_cancel_crit_edge ], [ %call10, %if.end7.out_cancel_crit_edge ], [ %call2.1, %if.end.1.out_cancel_crit_edge ], [ %call10.1, %if.end7.1.out_cancel_crit_edge ]
  tail call void @xfs_trans_cancel(ptr noundef %15)
  tail call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %out_cancel, %if.end21, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_cancel ], [ 0, %if.end21 ], [ %call49, %entry.cleanup_crit_edge ], [ %call, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ijoin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_dqattach_locked(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_reserve_quota_nblks(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_blockgc_free_quota(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_trans_alloc_icreate(ptr noundef %mp, ptr nocapture noundef readonly %resv, ptr noundef %udqp, ptr noundef %gdqp, ptr noundef %pdqp, i32 noundef %dblocks, ptr nocapture noundef writeonly %tpp) local_unnamed_addr #0 align 64 {
entry:
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #8
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !109
  %call28 = call i32 @xfs_trans_alloc(ptr noundef %mp, ptr noundef %resv, i32 noundef %dblocks, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool.not29 = icmp eq i32 %call28, 0
  br i1 %tobool.not29, label %if.end.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %conv = zext i32 %dblocks to i64
  %1 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tp, align 4
  %call1 = tail call i32 @xfs_trans_reserve_quota_icreate(ptr noundef %2, ptr noundef %udqp, ptr noundef %gdqp, ptr noundef %pdqp, i64 noundef %conv) #8
  %3 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %call1, label %if.end.lr.ph.if.then10_crit_edge [
    i32 -122, label %if.end.lr.ph.land.lhs.true_crit_edge
    i32 -28, label %if.end.lr.ph.land.lhs.true_crit_edge35
    i32 0, label %if.end.lr.ph.if.end11_crit_edge
  ]

if.end.lr.ph.if.end11_crit_edge:                  ; preds = %if.end.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end.lr.ph.land.lhs.true_crit_edge35:           ; preds = %if.end.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end.lr.ph.land.lhs.true_crit_edge:             ; preds = %if.end.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end.lr.ph.if.then10_crit_edge:                 ; preds = %if.end.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

land.lhs.true:                                    ; preds = %if.end.lr.ph.land.lhs.true_crit_edge, %if.end.lr.ph.land.lhs.true_crit_edge35
  tail call void @xfs_trans_cancel(ptr noundef %2)
  %call7 = tail call i32 @xfs_blockgc_free_dquots(ptr noundef %mp, ptr noundef %udqp, ptr noundef %gdqp, ptr noundef %pdqp, i32 noundef 0) #8
  %call = call i32 @xfs_trans_alloc(ptr noundef %mp, ptr noundef %resv, i32 noundef %dblocks, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.1, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.1:                                         ; preds = %land.lhs.true
  %4 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tp, align 4
  %call1.1 = tail call i32 @xfs_trans_reserve_quota_icreate(ptr noundef %5, ptr noundef %udqp, ptr noundef %gdqp, ptr noundef %pdqp, i64 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cond = icmp eq i32 %call1.1, 0
  br i1 %cond, label %if.end.1.if.end11_crit_edge, label %if.end.1.if.then10_crit_edge

if.end.1.if.then10_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.end.1.if.end11_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %if.end.1.if.then10_crit_edge, %if.end.lr.ph.if.then10_crit_edge
  %.lcssa = phi ptr [ %2, %if.end.lr.ph.if.then10_crit_edge ], [ %5, %if.end.1.if.then10_crit_edge ]
  %call1.lcssa = phi i32 [ %call1, %if.end.lr.ph.if.then10_crit_edge ], [ %call1.1, %if.end.1.if.then10_crit_edge ]
  tail call void @xfs_trans_cancel(ptr noundef %.lcssa)
  br label %cleanup

if.end11:                                         ; preds = %if.end.1.if.end11_crit_edge, %if.end.lr.ph.if.end11_crit_edge
  %.lcssa33 = phi ptr [ %2, %if.end.lr.ph.if.end11_crit_edge ], [ %5, %if.end.1.if.end11_crit_edge ]
  %6 = ptrtoint ptr %tpp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %.lcssa33, ptr %tpp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.lcssa, %if.then10 ], [ 0, %if.end11 ], [ %call28, %entry.cleanup_crit_edge ], [ %call, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_reserve_quota_icreate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_blockgc_free_dquots(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_trans_alloc_ichange(ptr noundef %ip, ptr noundef %new_udqp, ptr noundef %new_gdqp, ptr noundef %new_pdqp, i1 noundef zeroext %force, ptr nocapture noundef writeonly %tpp) local_unnamed_addr #0 align 64 {
entry:
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #8
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !109
  %1 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ip, align 8
  %tr_ichange = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 65, i32 10
  %call90 = call i32 @xfs_trans_alloc(ptr noundef %2, ptr noundef %tr_ichange, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool.not91 = icmp eq i32 %call90, 0
  br i1 %tobool.not91, label %if.end.lr.ph, label %entry.cleanup41_crit_edge

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup41

if.end.lr.ph:                                     ; preds = %entry
  %i_udquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 1
  %i_gdquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 2
  %i_pdquot = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 3
  %spec.select79 = select i1 %force, i32 65552, i32 65536
  %i_nblocks = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 19
  %i_delayed_blks = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 17
  tail call void @xfs_ilock(ptr noundef %ip, i32 noundef 4) #8
  %3 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tp, align 4
  tail call void @xfs_trans_ijoin(ptr noundef %4, ptr noundef %ip, i32 noundef 4) #8
  %call1 = tail call i32 @xfs_qm_dqattach_locked(ptr noundef %ip, i1 noundef zeroext false) #8
  %5 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %call1, label %if.end.lr.ph.out_cancel_crit_edge [
    i32 0, label %if.end6
    i32 -2, label %if.end.lr.ph.cond.false_crit_edge
  ], !prof !131

if.end.lr.ph.cond.false_crit_edge:                ; preds = %if.end.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

if.end.lr.ph.out_cancel_crit_edge:                ; preds = %if.end.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel

cond.false:                                       ; preds = %if.end.1.cond.false_crit_edge, %if.end.lr.ph.cond.false_crit_edge
  %.lcssa93 = phi ptr [ %4, %if.end.lr.ph.cond.false_crit_edge ], [ %18, %if.end.1.cond.false_crit_edge ]
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str, i32 noundef 1168) #8
  br label %out_cancel

if.end6:                                          ; preds = %if.end.lr.ph
  %6 = ptrtoint ptr %i_udquot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_udquot, align 4
  %cmp7.not = icmp eq ptr %7, %new_udqp
  %spec.select = select i1 %cmp7.not, ptr null, ptr %new_udqp
  %8 = ptrtoint ptr %i_gdquot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_gdquot, align 8
  %cmp11.not = icmp eq ptr %9, %new_gdqp
  %cond15 = select i1 %cmp11.not, ptr null, ptr %new_gdqp
  %10 = ptrtoint ptr %i_pdquot to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_pdquot, align 4
  %cmp16.not = icmp eq ptr %11, %new_pdqp
  %cond20 = select i1 %cmp16.not, ptr null, ptr %new_pdqp
  %tobool21.not = icmp eq ptr %spec.select, null
  %tobool22.not = icmp eq ptr %cond15, null
  %or.cond = select i1 %tobool21.not, i1 %tobool22.not, i1 false
  %tobool24.not = icmp eq ptr %cond20, null
  %or.cond78 = select i1 %or.cond, i1 %tobool24.not, i1 false
  br i1 %or.cond78, label %if.end6.if.end40_crit_edge, label %if.then25

if.end6.if.end40_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then25:                                        ; preds = %if.end6
  %12 = ptrtoint ptr %i_nblocks to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_nblocks, align 8
  %14 = ptrtoint ptr %i_delayed_blks to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_delayed_blks, align 8
  %add = add i64 %15, %13
  %call29 = tail call i32 @xfs_trans_reserve_quota_bydquots(ptr noundef %4, ptr noundef %2, ptr noundef %spec.select, ptr noundef %cond15, ptr noundef %cond20, i64 noundef %add, i32 noundef 1, i32 noundef %spec.select79) #8
  %16 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %call29, label %if.then25.out_cancel_crit_edge [
    i32 -122, label %if.then25.land.lhs.true_crit_edge
    i32 -28, label %if.then25.land.lhs.true_crit_edge96
    i32 0, label %if.then25.if.end40_crit_edge
  ]

if.then25.if.end40_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then25.land.lhs.true_crit_edge96:              ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then25.land.lhs.true_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then25.out_cancel_crit_edge:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel

land.lhs.true:                                    ; preds = %if.then25.land.lhs.true_crit_edge, %if.then25.land.lhs.true_crit_edge96
  tail call void @xfs_trans_cancel(ptr noundef %4)
  %call35 = tail call i32 @xfs_blockgc_free_dquots(ptr noundef %2, ptr noundef %spec.select, ptr noundef %cond15, ptr noundef %cond20, i32 noundef 0) #8
  %call = call i32 @xfs_trans_alloc(ptr noundef %2, ptr noundef %tr_ichange, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.1, label %land.lhs.true.cleanup41_crit_edge

land.lhs.true.cleanup41_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup41

if.end.1:                                         ; preds = %land.lhs.true
  tail call void @xfs_ilock(ptr noundef %ip, i32 noundef 4) #8
  %17 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tp, align 4
  tail call void @xfs_trans_ijoin(ptr noundef %18, ptr noundef %ip, i32 noundef 4) #8
  %call1.1 = tail call i32 @xfs_qm_dqattach_locked(ptr noundef %ip, i1 noundef zeroext false) #8
  %19 = zext i32 %call1.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call1.1, label %if.end.1.out_cancel_crit_edge [
    i32 0, label %if.end6.1
    i32 -2, label %if.end.1.cond.false_crit_edge
  ], !prof !131

if.end.1.cond.false_crit_edge:                    ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

if.end.1.out_cancel_crit_edge:                    ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel

if.end6.1:                                        ; preds = %if.end.1
  %20 = ptrtoint ptr %i_udquot to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_udquot, align 4
  %cmp7.not.1 = icmp eq ptr %21, %new_udqp
  %spec.select.1 = select i1 %cmp7.not.1, ptr null, ptr %new_udqp
  %22 = ptrtoint ptr %i_gdquot to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_gdquot, align 8
  %cmp11.not.1 = icmp eq ptr %23, %new_gdqp
  %cond15.1 = select i1 %cmp11.not.1, ptr null, ptr %new_gdqp
  %24 = ptrtoint ptr %i_pdquot to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_pdquot, align 4
  %cmp16.not.1 = icmp eq ptr %25, %new_pdqp
  %cond20.1 = select i1 %cmp16.not.1, ptr null, ptr %new_pdqp
  %tobool21.not.1 = icmp eq ptr %spec.select.1, null
  %tobool22.not.1 = icmp eq ptr %cond15.1, null
  %or.cond.1 = select i1 %tobool21.not.1, i1 %tobool22.not.1, i1 false
  %tobool24.not.1 = icmp eq ptr %cond20.1, null
  %or.cond78.1 = select i1 %or.cond.1, i1 %tobool24.not.1, i1 false
  br i1 %or.cond78.1, label %if.end6.1.if.end40_crit_edge, label %if.then25.1

if.end6.1.if.end40_crit_edge:                     ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then25.1:                                      ; preds = %if.end6.1
  %26 = ptrtoint ptr %i_nblocks to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %i_nblocks, align 8
  %28 = ptrtoint ptr %i_delayed_blks to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_delayed_blks, align 8
  %add.1 = add i64 %29, %27
  %call29.1 = tail call i32 @xfs_trans_reserve_quota_bydquots(ptr noundef %18, ptr noundef %2, ptr noundef %spec.select.1, ptr noundef %cond15.1, ptr noundef %cond20.1, i64 noundef %add.1, i32 noundef 1, i32 noundef %spec.select79) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.1)
  %cond = icmp eq i32 %call29.1, 0
  br i1 %cond, label %if.then25.1.if.end40_crit_edge, label %if.then25.1.out_cancel_crit_edge

if.then25.1.out_cancel_crit_edge:                 ; preds = %if.then25.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_cancel

if.then25.1.if.end40_crit_edge:                   ; preds = %if.then25.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.end40:                                         ; preds = %if.then25.1.if.end40_crit_edge, %if.end6.1.if.end40_crit_edge, %if.then25.if.end40_crit_edge, %if.end6.if.end40_crit_edge
  %.lcssa94 = phi ptr [ %4, %if.then25.if.end40_crit_edge ], [ %4, %if.end6.if.end40_crit_edge ], [ %18, %if.end6.1.if.end40_crit_edge ], [ %18, %if.then25.1.if.end40_crit_edge ]
  %30 = ptrtoint ptr %tpp to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %.lcssa94, ptr %tpp, align 4
  br label %cleanup41

out_cancel:                                       ; preds = %if.then25.1.out_cancel_crit_edge, %if.end.1.out_cancel_crit_edge, %if.then25.out_cancel_crit_edge, %cond.false, %if.end.lr.ph.out_cancel_crit_edge
  %31 = phi ptr [ %.lcssa93, %cond.false ], [ %4, %if.end.lr.ph.out_cancel_crit_edge ], [ %4, %if.then25.out_cancel_crit_edge ], [ %18, %if.end.1.out_cancel_crit_edge ], [ %18, %if.then25.1.out_cancel_crit_edge ]
  %error.0 = phi i32 [ -2, %cond.false ], [ %call1, %if.end.lr.ph.out_cancel_crit_edge ], [ %call29, %if.then25.out_cancel_crit_edge ], [ %call1.1, %if.end.1.out_cancel_crit_edge ], [ %call29.1, %if.then25.1.out_cancel_crit_edge ]
  tail call void @xfs_trans_cancel(ptr noundef %31)
  br label %cleanup41

cleanup41:                                        ; preds = %out_cancel, %if.end40, %land.lhs.true.cleanup41_crit_edge, %entry.cleanup41_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_cancel ], [ 0, %if.end40 ], [ %call90, %entry.cleanup41_crit_edge ], [ %call, %land.lhs.true.cleanup41_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_reserve_quota_bydquots(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_resv_calc(ptr noundef %mp, i32 noundef %type, ptr noundef %res) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_resv_calc, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_resv_calc, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !117

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !132
  %call42 = tail call i32 @__traceiter_xfs_trans_resv_calc(ptr noundef null, ptr noundef %mp, i32 noundef %type, ptr noundef %res) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !133
  %13 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_resv_calc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_resv_calc, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_trans_resv_calc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_trans_resv_calc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 3540, ptr noundef nonnull @.str.20) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !121
  %31 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
declare dso_local void @xfs_log_get_max_trans_res(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_resv_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_log_regrant(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_log_reserve(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_mod_frextents(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_add_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ail_update_bulk(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_commit(ptr noundef %tp, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_commit, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_commit, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !117

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !134
  %call42 = tail call i32 @__traceiter_xfs_trans_commit(ptr noundef null, ptr noundef %tp, i32 noundef %caller_ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !135
  %13 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_commit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_commit, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_trans_commit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_trans_commit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 3572, ptr noundef nonnull @.str.20) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !121
  %31 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
declare dso_local i32 @xfs_defer_finish_noroll(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_trans_apply_sb_deltas(ptr noundef %tp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xfs_trans_getsb(ptr noundef %tp) #8
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %call, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %2 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_mountp, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %5, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then:                                          ; preds = %entry
  %t_icount_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 12
  %6 = ptrtoint ptr %t_icount_delta to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %t_icount_delta, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sb_icount = getelementptr inbounds %struct.xfs_dsb, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %sb_icount to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sb_icount, align 8
  %add.i = add i64 %9, %7
  store i64 %add.i, ptr %sb_icount, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %t_ifree_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 13
  %10 = ptrtoint ptr %t_ifree_delta to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %t_ifree_delta, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool4.not = icmp eq i64 %11, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sb_ifree = getelementptr inbounds %struct.xfs_dsb, ptr %1, i32 0, i32 29
  %12 = ptrtoint ptr %sb_ifree to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sb_ifree, align 8
  %add.i130 = add i64 %13, %11
  store i64 %add.i130, ptr %sb_ifree, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %t_fdblocks_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 14
  %14 = ptrtoint ptr %t_fdblocks_delta to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %t_fdblocks_delta, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool8.not = icmp eq i64 %15, 0
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %sb_fdblocks = getelementptr inbounds %struct.xfs_dsb, ptr %1, i32 0, i32 30
  %16 = ptrtoint ptr %sb_fdblocks to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %sb_fdblocks, align 8
  %add.i131 = add i64 %17, %15
  store i64 %add.i131, ptr %sb_fdblocks, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %t_res_fdblocks_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 15
  %18 = ptrtoint ptr %t_res_fdblocks_delta to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %t_res_fdblocks_delta, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool12.not = icmp eq i64 %19, 0
  br i1 %tobool12.not, label %if.end11.if.end17_crit_edge, label %if.then13

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %sb_fdblocks14 = getelementptr inbounds %struct.xfs_dsb, ptr %1, i32 0, i32 30
  %20 = ptrtoint ptr %sb_fdblocks14 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %sb_fdblocks14, align 8
  %add.i132 = add i64 %21, %19
  store i64 %add.i132, ptr %sb_fdblocks14, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end11.if.end17_crit_edge, %entry.if.end17_crit_edge
  %t_frextents_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 16
  %22 = ptrtoint ptr %t_frextents_delta to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %t_frextents_delta, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool18.not = icmp eq i64 %23, 0
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %sb_frextents = getelementptr inbounds %struct.xfs_dsb, ptr %1, i32 0, i32 31
  %24 = ptrtoint ptr %sb_frextents to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %sb_frextents, align 8
  %add.i133 = add i64 %25, %23
  store i64 %add.i133, ptr %sb_frextents, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  %t_res_frextents_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 17
  %26 = ptrtoint ptr %t_res_frextents_delta to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %t_res_frextents_delta, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool22.not = icmp eq i64 %27, 0
  br i1 %tobool22.not, label %if.end21.if.end26_crit_edge, label %if.then23

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %sb_frextents24 = getelementptr inbounds %struct.xfs_dsb, ptr %1, i32 0, i32 31
  %28 = ptrtoint ptr %sb_frextents24 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %sb_frextents24, align 8
  %add.i134 = add i64 %29, %27
  store i64 %add.i134, ptr %sb_frextents24, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end21.if.end26_crit_edge
  %t_dblocks_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 18
  %30 = ptrtoint ptr %t_dblocks_delta to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %t_dblocks_delta, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool27.not = icmp eq i64 %31, 0
  br i1 %tobool27.not, label %if.end26.if.end30_crit_edge, label %if.then28

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %sb_dblocks = getelementptr inbounds %struct.xfs_dsb, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %sb_dblocks, align 8
  %add.i135 = add i64 %33, %31
  store i64 %add.i135, ptr %sb_dblocks, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26.if.end30_crit_edge
  %whole.0 = phi i32 [ 1, %if.then28 ], [ 0, %if.end26.if.end30_crit_edge ]
  %t_agcount_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 19
  %34 = ptrtoint ptr %t_agcount_delta to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %t_agcount_delta, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %tobool31.not = icmp eq i64 %35, 0
  br i1 %tobool31.not, label %if.end30.if.end34_crit_edge, label %if.then32

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %sb_agcount = getelementptr inbounds %struct.xfs_dsb, ptr %1, i32 0, i32 12
  %conv = trunc i64 %35 to i32
  %36 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sb_agcount, align 4
  %add.i136 = add i32 %37, %conv
  store i32 %add.i136, ptr %sb_agcount, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end30.if.end34_crit_edge
  %whole.1 = phi i32 [ 1, %if.then32 ], [ %whole.0, %if.end30.if.end34_crit_edge ]
  %t_imaxpct_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 20
  %38 = ptrtoint ptr %t_imaxpct_delta to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %t_imaxpct_delta, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %tobool35.not = icmp eq i64 %39, 0
  br i1 %tobool35.not, label %if.end34.if.end40_crit_edge, label %if.then36

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %sb_imax_pct = getelementptr inbounds %struct.xfs_dsb, ptr %1, i32 0, i32 27
  %40 = ptrtoint ptr %sb_imax_pct to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sb_imax_pct, align 1
  %42 = trunc i64 %39 to i8
  %conv39 = add i8 %41, %42
  store i8 %conv39, ptr %sb_imax_pct, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end34.if.end40_crit_edge
  %whole.2 = phi i32 [ 1, %if.then36 ], [ %whole.1, %if.end34.if.end40_crit_edge ]
  %t_rextsize_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 21
  %43 = ptrtoint ptr %t_rextsize_delta to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %t_rextsize_delta, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %44)
  %tobool41.not = icmp eq i64 %44, 0
  br i1 %tobool41.not, label %if.end40.if.end45_crit_edge, label %if.then42

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %sb_rextsize = getelementptr inbounds %struct.xfs_dsb, ptr %1, i32 0, i32 10
  %conv44 = trunc i64 %44 to i32
  %45 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sb_rextsize, align 4
  %add.i137 = add i32 %46, %conv44
  store i32 %add.i137, ptr %sb_rextsize, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end40.if.end45_crit_edge
  %whole.3 = phi i32 [ 1, %if.then42 ], [ %whole.2, %if.end40.if.end45_crit_edge ]
  %t_rbmblocks_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 22
  %47 = ptrtoint ptr %t_rbmblocks_delta to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %t_rbmblocks_delta, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %48)
  %tobool46.not = icmp eq i64 %48, 0
  br i1 %tobool46.not, label %if.end45.if.end50_crit_edge, label %if.then47

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %sb_rbmblocks = getelementptr inbounds %struct.xfs_dsb, ptr %1, i32 0, i32 13
  %conv49 = trunc i64 %48 to i32
  %49 = ptrtoint ptr %sb_rbmblocks to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sb_rbmblocks, align 4
  %add.i138 = add i32 %50, %conv49
  store i32 %add.i138, ptr %sb_rbmblocks, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end45.if.end50_crit_edge
  %whole.4 = phi i32 [ 1, %if.then47 ], [ %whole.3, %if.end45.if.end50_crit_edge ]
  %t_rblocks_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 23
  %51 = ptrtoint ptr %t_rblocks_delta to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %t_rblocks_delta, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %52)
  %tobool51.not = icmp eq i64 %52, 0
  br i1 %tobool51.not, label %if.end50.if.end54_crit_edge, label %if.then52

if.end50.if.end54_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %sb_rblocks = getelementptr inbounds %struct.xfs_dsb, ptr %1, i32 0, i32 3
  %53 = ptrtoint ptr %sb_rblocks to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %sb_rblocks, align 8
  %add.i139 = add i64 %54, %52
  store i64 %add.i139, ptr %sb_rblocks, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end50.if.end54_crit_edge
  %whole.5 = phi i32 [ 1, %if.then52 ], [ %whole.4, %if.end50.if.end54_crit_edge ]
  %t_rextents_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 24
  %55 = ptrtoint ptr %t_rextents_delta to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %t_rextents_delta, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %56)
  %tobool55.not = icmp eq i64 %56, 0
  br i1 %tobool55.not, label %if.end54.if.end58_crit_edge, label %if.then56

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %sb_rextents = getelementptr inbounds %struct.xfs_dsb, ptr %1, i32 0, i32 4
  %57 = ptrtoint ptr %sb_rextents to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %sb_rextents, align 8
  %add.i140 = add i64 %58, %56
  store i64 %add.i140, ptr %sb_rextents, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end54.if.end58_crit_edge
  %whole.6 = phi i32 [ 1, %if.then56 ], [ %whole.5, %if.end54.if.end58_crit_edge ]
  %t_rextslog_delta = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 25
  %59 = ptrtoint ptr %t_rextslog_delta to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %t_rextslog_delta, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %60)
  %tobool59.not = icmp eq i64 %60, 0
  br i1 %tobool59.not, label %if.end65, label %if.end65.thread

if.end65.thread:                                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %sb_rextslog = getelementptr inbounds %struct.xfs_dsb, ptr %1, i32 0, i32 25
  %61 = ptrtoint ptr %sb_rextslog to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %sb_rextslog, align 1
  %63 = trunc i64 %60 to i8
  %conv64 = add i8 %62, %63
  store i8 %conv64, ptr %sb_rextslog, align 1
  tail call void @xfs_trans_buf_set_type(ptr noundef %tp, ptr noundef %call, i32 noundef 18) #8
  br label %if.then67

if.end65:                                         ; preds = %if.end58
  tail call void @xfs_trans_buf_set_type(ptr noundef %tp, ptr noundef %call, i32 noundef 18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %whole.6)
  %tobool66.not = icmp eq i32 %whole.6, 0
  br i1 %tobool66.not, label %if.else, label %if.end65.if.then67_crit_edge

if.end65.if.then67_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67

if.then67:                                        ; preds = %if.end65.if.then67_crit_edge, %if.end65.thread
  tail call void @xfs_trans_log_buf(ptr noundef %tp, ptr noundef %call, i32 noundef 0, i32 noundef 263) #8
  br label %if.end68

if.else:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xfs_trans_log_buf(ptr noundef %tp, ptr noundef %call, i32 noundef 128, i32 noundef 159) #8
  br label %if.end68

if.end68:                                         ; preds = %if.else, %if.then67
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_apply_dquot_deltas(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xlog_cil_commit(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_log_force_seq(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_log_ticket_regrant(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_commit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_trans_getsb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_buf_set_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_cancel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_free_items(ptr noundef %tp, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_free_items, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_free_items, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !117

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !136
  %call42 = tail call i32 @__traceiter_xfs_trans_free_items(ptr noundef null, ptr noundef %tp, i32 noundef %caller_ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !137
  %13 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_free_items, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_free_items, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_trans_free_items.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_trans_free_items.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 3578, ptr noundef nonnull @.str.20) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !121
  %31 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
declare dso_local i32 @__traceiter_xfs_trans_free_items(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_extent_busy_clear(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_free(ptr noundef %tp, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_free, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_free, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !117

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !138
  %call42 = tail call i32 @__traceiter_xfs_trans_free(ptr noundef null, ptr noundef %tp, i32 noundef %caller_ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !139
  %13 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_free, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_free, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_trans_free.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_trans_free.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 3574, ptr noundef nonnull @.str.20) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !121
  %31 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
declare dso_local void @xfs_trans_free_dqinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_extent_busy_ag_cmp(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_roll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_trans_dup(ptr noundef %tp, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_dup, i32 0, i32 1), ptr blockaddress(@trace_xfs_trans_dup, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !117

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !140
  %call42 = tail call i32 @__traceiter_xfs_trans_dup(ptr noundef null, ptr noundef %tp, i32 noundef %caller_ip) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !141
  %13 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !99) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_dup, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_trans_dup, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_trans_dup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xfs_trans_dup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 3573, ptr noundef nonnull @.str.20) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !121
  %31 = tail call i32 @llvm.read_register.i32(metadata !99) #8
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
declare dso_local ptr @xfs_log_ticket_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_defer_move(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_dup_dqinfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_trans_dup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !47, !48, !50, !52, !53, !54, !56, !57, !59, !61, !63, !65, !67, !69, !70, !72, !73, !75, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !96, !97}
!llvm.named.register.sp = !{!99}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_trans.c", i32 275, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/xfs/xfs_trans.c", i32 277, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/xfs/xfs_trans.c", i32 422, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/xfs/xfs_trans.c", i32 432, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/xfs/xfs_trans.c", i32 439, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/xfs/xfs_trans.c", i32 461, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/xfs/xfs_trans.c", i32 607, i32 3}
!14 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/xfs/xfs_trans.c", i32 640, i32 2}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/xfs/xfs_trans.c", i32 641, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/xfs/xfs_trans.c", i32 651, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/xfs/xfs_trans.c", i32 652, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/xfs/xfs_trans.c", i32 653, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/xfs/xfs_trans.c", i32 654, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/xfs/xfs_trans.c", i32 778, i32 4}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/xfs/xfs_trans.c", i32 951, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/xfs/xfs_trans.c", i32 952, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/xfs/xfs_trans.c", i32 963, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/xfs/xfs_trans.c", i32 971, i32 4}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/xfs/xfs_trans.c", i32 1068, i32 3}
!38 = !{ptr @xfs_trans_cache, !39, !"xfs_trans_cache", i1 false, i1 false}
!39 = !{!"../fs/xfs/xfs_trans.c", i32 28, i32 20}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../fs/xfs/xfs_trace.h", i32 3516, i32 1}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!44 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/xfs/xfs_trans.h", i32 267, i32 2}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/xfs/xfs_trans.c", i32 180, i32 3}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/xfs/xfs_trans.c", i32 182, i32 3}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/xfs/xfs_trans.c", i32 189, i32 4}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/xfs/xfs_trans.c", i32 190, i32 4}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/xfs/xfs_trans.c", i32 194, i32 4}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../fs/xfs/xfs_trace.h", i32 3570, i32 1}
!69 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../fs/xfs/xfs_trace.h", i32 3576, i32 1}
!72 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../fs/xfs/xfs_trans.c", i32 849, i32 2}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/xfs/xfs_trans.c", i32 872, i32 2}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../fs/xfs/xfs_trace.h", i32 3572, i32 1}
!79 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../fs/xfs/xfs_trace.h", i32 3571, i32 1}
!82 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../fs/xfs/xfs_trace.h", i32 3578, i32 1}
!85 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../fs/xfs/xfs_trace.h", i32 3574, i32 1}
!88 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../fs/xfs/xfs_trace.h", i32 3575, i32 1}
!91 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/xfs/xfs_trans.c", i32 121, i32 2}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../fs/xfs/xfs_trace.h", i32 3573, i32 1}
!96 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/xfs/xfs_trans.h", i32 287, i32 2}
!99 = !{!"sp"}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{!"auto-init"}
!110 = !{i64 2152990162}
!111 = !{!"branch_weights", i32 2000, i32 1}
!112 = !{i64 1053081, i64 1053142}
!113 = !{i64 1055813}
!114 = !{!"branch_weights", i32 1, i32 2000}
!115 = !{i64 1056098}
!116 = !{i64 2152999012}
!117 = !{i64 2148276389, i64 2148276394, i64 2148276407, i64 2148276451, i64 2148276485, i64 2148276506}
!118 = !{i64 2165198990}
!119 = !{i64 2165199209}
!120 = !{i64 2149978482}
!121 = !{i64 2149979518}
!122 = !{i64 2165303176}
!123 = !{i64 2165303401}
!124 = !{i64 2165215728}
!125 = !{i64 2165215949}
!126 = !{i64 2153008966}
!127 = !{i64 2153018461}
!128 = !{i64 2153027938}
!129 = !{i64 2165286414}
!130 = !{i64 2165286631}
!131 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!132 = !{i64 2165182027}
!133 = !{i64 2165182254}
!134 = !{i64 2165232520}
!135 = !{i64 2165232741}
!136 = !{i64 2165341643}
!137 = !{i64 2165341872}
!138 = !{i64 2165269808}
!139 = !{i64 2165270025}
!140 = !{i64 2165253256}
!141 = !{i64 2165253471}
