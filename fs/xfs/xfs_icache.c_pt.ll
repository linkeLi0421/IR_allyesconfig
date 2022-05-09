; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_icache.c_pt.bc'
source_filename = "../fs/xfs/xfs_icache.c"
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
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.xfs_param = type { %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val }
%struct.xfs_sysctl_val = type { i32, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.91, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.90, i16, i8, i32 }
%union.anon.90 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.llist_node = type { ptr }
%union.anon.91 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__xfsstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.xfs_inodegc = type { %struct.llist_head, %struct.work_struct, i32, i32 }
%struct.llist_head = type { ptr }
%struct.xfs_icwalk = type { i32, %struct.kuid_t, %struct.kgid_t, i32, i64, i32 }
%struct.xfs_inode_log_item = type { %struct.xfs_log_item, ptr, i16, %struct.spinlock, i32, i32, i32, i64, i64 }
%struct.xfs_dquot = type { %struct.list_head, ptr, i8, i16, i32, i32, i32, i64, i64, %struct.xfs_dquot_res, %struct.xfs_dquot_res, %struct.xfs_dquot_res, %struct.xfs_dq_logitem, i64, i64, [3 x i64], %struct.mutex, %struct.completion, %struct.atomic_t, %struct.wait_queue_head }
%struct.xfs_dquot_res = type { i64, i64, i64, i64, i64, i16 }
%struct.xfs_dq_logitem = type { %struct.xfs_log_item, ptr, i64 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.xfs_iext_cursor = type { ptr, i32 }

@xfs_inode_cache = external dso_local local_unnamed_addr global ptr, align 4
@xfsstats = external dso_local local_unnamed_addr global %struct.xstats, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"atomic_read(&ip->i_pincount) == 0\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/xfs/xfs_icache.c\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ip->i_ino == 0\00", [17 x i8] zeroinitializer }, align 32
@xfs_inode_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&ip->i_ioend_work)\00", [59 x i8] zeroinitializer }, align 32
@xfs_inode_alloc.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ip->i_ioend_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"!xfs_iflags_test(ip, XFS_IFLUSHING)\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"(lock_flags & (XFS_IOLOCK_EXCL | XFS_IOLOCK_SHARED)) == 0\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"AG %u preallocation gc worker failed, err=%d\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"!xfs_iflags_test(ip, XFS_ALL_IRECLAIM_FLAGS)\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"!ip->i_itemp || list_empty(&ip->i_itemp->ili_item.li_bio_list)\00", [33 x i8] zeroinitializer }, align 32
@xfs_ifork_cache = external dso_local local_unnamed_addr global ptr, align 4
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"!test_bit(XFS_LI_IN_AIL, &ip->i_itemp->ili_item.li_flags)\00", [38 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Corruption detected! Free inode 0x%llx not marked free! (mode 0x%x)\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Corruption detected! Free inode 0x%llx has blocks allocated!\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"!rwsem_is_locked(&inode->i_rwsem)\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ip->i_flags & XFS_IRECLAIMABLE\00", [33 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_iget_recycle = external dso_local global %struct.tracepoint, align 4
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_iget_recycle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_iget_recycle_fail = external dso_local global %struct.tracepoint, align 4
@trace_xfs_iget_recycle_fail.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tag == XFS_ICI_RECLAIM_TAG\00", [37 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_perag_clear_inode_tag = external dso_local global %struct.tracepoint, align 4
@trace_xfs_perag_clear_inode_tag.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_iget_hit = external dso_local global %struct.tracepoint, align 4
@trace_xfs_iget_hit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_iget_skip = external dso_local global %struct.tracepoint, align 4
@trace_xfs_iget_skip.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_iget_miss = external dso_local global %struct.tracepoint, align 4
@trace_xfs_iget_miss.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@xfs_params = external dso_local local_unnamed_addr global %struct.xfs_param, align 4
@__tracepoint_xfs_inode_set_eofblocks_tag = external dso_local global %struct.tracepoint, align 4
@trace_xfs_inode_set_eofblocks_tag.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(iflag & ~(XFS_IEOFBLOCKS | XFS_ICOWBLOCKS)) == 0\00", [46 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_perag_set_inode_tag = external dso_local global %struct.tracepoint, align 4
@trace_xfs_perag_set_inode_tag.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_inode_clear_eofblocks_tag = external dso_local global %struct.tracepoint, align 4
@trace_xfs_inode_clear_eofblocks_tag.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_inode_set_cowblocks_tag = external dso_local global %struct.tracepoint, align 4
@trace_xfs_inode_set_cowblocks_tag.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_inode_clear_cowblocks_tag = external dso_local global %struct.tracepoint, align 4
@trace_xfs_inode_clear_cowblocks_tag.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_blockgc_stop = external dso_local global %struct.tracepoint, align 4
@trace_xfs_blockgc_stop.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_blockgc_start = external dso_local global %struct.tracepoint, align 4
@trace_xfs_blockgc_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_blockgc_worker = external dso_local global %struct.tracepoint, align 4
@trace_xfs_blockgc_worker.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_blockgc_free_space = external dso_local global %struct.tracepoint, align 4
@trace_xfs_blockgc_free_space.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_blockgc_flush_all = external dso_local global %struct.tracepoint, align 4
@trace_xfs_blockgc_flush_all.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rcu_read_lock_held()\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_inode_free_eofblocks_invalid = external dso_local global %struct.tracepoint, align 4
@trace_xfs_inode_free_eofblocks_invalid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_inode_free_cowblocks_invalid = external dso_local global %struct.tracepoint, align 4
@trace_xfs_inode_free_cowblocks_invalid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"!ip->i_udquot && !ip->i_gdquot && !ip->i_pdquot\00", [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xfs_inode_clean(ip)\00", [44 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_inode_reclaiming = external dso_local global %struct.tracepoint, align 4
@trace_xfs_inode_reclaiming.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_inodegc_worker = external dso_local global %struct.tracepoint, align 4
@trace_xfs_inodegc_worker.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_inode_inactivating = external dso_local global %struct.tracepoint, align 4
@trace_xfs_inode_inactivating.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_inodegc_flush = external dso_local global %struct.tracepoint, align 4
@trace_xfs_inodegc_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_inodegc_stop = external dso_local global %struct.tracepoint, align 4
@trace_xfs_inodegc_stop.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_inodegc_start = external dso_local global %struct.tracepoint, align 4
@trace_xfs_inodegc_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_inodegc_queue = external dso_local global %struct.tracepoint, align 4
@trace_xfs_inodegc_queue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_inode_set_need_inactive = external dso_local global %struct.tracepoint, align 4
@trace_xfs_inode_set_need_inactive.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_inodegc_throttle = external dso_local global %struct.tracepoint, align 4
@trace_xfs_inodegc_throttle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ino %llx %s fork has delalloc extent at [0x%llx:0x%llx]\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cow\00", [28 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_inode_set_reclaimable = external dso_local global %struct.tracepoint, align 4
@trace_xfs_inode_set_reclaimable.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_inodegc_shrinker_scan = external dso_local global %struct.tracepoint, align 4
@trace_xfs_inodegc_shrinker_scan.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 93, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 94, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 110, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 112, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 166, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 714, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1450, i32 16 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 2095, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 156, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 141, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 695, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 410, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 417, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 354, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 364, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 747, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 108, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 277, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 723, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 36, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1164, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1388, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 920, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 933, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 935, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1778, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1780, i32 34 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [23 x i8] c"../fs/xfs/xfs_icache.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1780, i32 43 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @xfs_inode_alloc.__key, ptr @.str.3, ptr @xfs_inode_alloc.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_inode_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_inode_alloc.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_inode_alloc(ptr noundef %mp, i64 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_inode_cache to i32))
  %0 = load ptr, ptr @xfs_inode_cache, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 36032) #12
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %1 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %m_super, align 8
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %call, i32 0, i32 27
  %call2 = tail call i32 @inode_init_always(ptr noundef %2, ptr noundef %i_vnode.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_inode_cache to i32))
  %3 = load ptr, ptr @xfs_inode_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %3, ptr noundef %call) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %i_vnode.i, align 8
  %i_state = getelementptr inbounds %struct.xfs_inode, ptr %call, i32 0, i32 27, i32 24
  %5 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %i_state, align 8
  %i_mapping = getelementptr inbounds %struct.xfs_inode, ptr %call, i32 0, i32 27, i32 9
  %6 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_mapping, align 8
  %flags.i = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %or.i.i = or i32 %9, 64
  store i32 %or.i.i, ptr %flags.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %10 = load ptr, ptr @xfsstats, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %add = add i32 %17, %11
  %18 = inttoptr i32 %add to ptr
  %vn_active = getelementptr inbounds %struct.__xfsstats, ptr %18, i32 0, i32 59
  %19 = ptrtoint ptr %vn_active to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vn_active, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %vn_active, align 4
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 92
  %21 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m_stats, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = load i32, ptr %cpu, align 4
  %arrayidx18 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx18, align 4
  %add19 = add i32 %26, %23
  %27 = inttoptr i32 %add19 to ptr
  %vn_active20 = getelementptr inbounds %struct.__xfsstats, ptr %27, i32 0, i32 59
  %28 = ptrtoint ptr %vn_active20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vn_active20, align 4
  %inc21 = add i32 %29, 1
  store i32 %inc21, ptr %vn_active20, align 4
  %i_pincount = getelementptr inbounds %struct.xfs_inode, ptr %call, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_pincount, i32 noundef 4) #12
  %30 = ptrtoint ptr %i_pincount to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %i_pincount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp = icmp eq i32 %31, 0
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %cond.false, !prof !162

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 93) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %call, i32 0, i32 4
  %32 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %cmp27 = icmp eq i64 %33, 0
  br i1 %cmp27, label %cond.end.cond.end36_crit_edge, label %cond.false35, !prof !162

cond.end.cond.end36_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end36

cond.false35:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 94) #12
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false35, %cond.end.cond.end36_crit_edge
  %34 = ptrtoint ptr %i_ino to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %ino, ptr %i_ino, align 8
  %35 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %mp, ptr %call, align 8
  %i_imap = getelementptr inbounds %struct.xfs_inode, ptr %call, i32 0, i32 5
  %i_flags = getelementptr inbounds %struct.xfs_inode, ptr %call, i32 0, i32 16
  %36 = ptrtoint ptr %i_flags to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %i_flags, align 8
  %i_delayed_blks = getelementptr inbounds %struct.xfs_inode, ptr %call, i32 0, i32 17
  %37 = ptrtoint ptr %i_delayed_blks to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 0, ptr %i_delayed_blks, align 8
  %new_diflags2 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 17
  %38 = call ptr @memset(ptr %i_imap, i32 0, i32 56)
  %39 = ptrtoint ptr %new_diflags2 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %new_diflags2, align 16
  %i_diflags2 = getelementptr inbounds %struct.xfs_inode, ptr %call, i32 0, i32 25
  %41 = ptrtoint ptr %i_diflags2 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %i_diflags2, align 8
  %i_nblocks = getelementptr inbounds %struct.xfs_inode, ptr %call, i32 0, i32 19
  %42 = ptrtoint ptr %i_nblocks to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 0, ptr %i_nblocks, align 8
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %call, i32 0, i32 23
  %43 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %i_forkoff, align 4
  %i_sick = getelementptr inbounds %struct.xfs_inode, ptr %call, i32 0, i32 14
  %44 = ptrtoint ptr %i_sick to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %i_sick, align 2
  %i_checked = getelementptr inbounds %struct.xfs_inode, ptr %call, i32 0, i32 13
  %45 = ptrtoint ptr %i_checked to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %i_checked, align 8
  %i_ioend_work = getelementptr inbounds %struct.xfs_inode, ptr %call, i32 0, i32 29
  tail call void @__init_work(ptr noundef %i_ioend_work, i32 noundef 0) #12
  %46 = ptrtoint ptr %i_ioend_work to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -64, ptr %i_ioend_work, align 4
  %lockdep_map = getelementptr inbounds %struct.xfs_inode, ptr %call, i32 0, i32 29, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @xfs_inode_alloc.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry42 = getelementptr inbounds %struct.xfs_inode, ptr %call, i32 0, i32 29, i32 1
  %47 = ptrtoint ptr %entry42 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %entry42, ptr %entry42, align 8
  %prev.i = getelementptr inbounds %struct.xfs_inode, ptr %call, i32 0, i32 29, i32 1, i32 1
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %entry42, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.xfs_inode, ptr %call, i32 0, i32 29, i32 2
  %49 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @xfs_end_io, ptr %func, align 8
  %i_ioend_list = getelementptr inbounds %struct.xfs_inode, ptr %call, i32 0, i32 30
  %50 = ptrtoint ptr %i_ioend_list to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %i_ioend_list, ptr %i_ioend_list, align 8
  %prev.i83 = getelementptr inbounds %struct.xfs_inode, ptr %call, i32 0, i32 30, i32 1
  %51 = ptrtoint ptr %prev.i83 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %i_ioend_list, ptr %prev.i83, align 4
  %i_ioend_lock = getelementptr inbounds %struct.xfs_inode, ptr %call, i32 0, i32 28
  tail call void @__raw_spin_lock_init(ptr noundef %i_ioend_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @xfs_inode_alloc.__key.4, i16 noundef signext 3) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.end36, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %call, %cond.end36 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_init_always(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_end_io(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_inode_free(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags_lock.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #12
  %i_flags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 16
  %0 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags.i.i, align 8
  %and.i.i = and i32 %1, 128
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.false, !prof !162

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 166) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #12
  %2 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %i_flags.i.i, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %3 = ptrtoint ptr %i_ino to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %i_ino, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #12
  tail call fastcc void @__xfs_inode_free(ptr noundef %ip)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__xfs_inode_free(ptr noundef %ip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_pincount = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_pincount, i32 noundef 4) #12
  %0 = ptrtoint ptr %i_pincount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_pincount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !162

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 155) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %i_itemp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 9
  %2 = ptrtoint ptr %i_itemp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_itemp, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %cond.end.do.body15_crit_edge, label %lor.rhs

cond.end.do.body15_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body15

lor.rhs:                                          ; preds = %cond.end
  %li_bio_list = getelementptr inbounds %struct.xfs_log_item, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %li_bio_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %li_bio_list, align 4
  %cmp.i = icmp eq ptr %5, %li_bio_list
  br i1 %cmp.i, label %lor.rhs.do.body15_crit_edge, label %cond.false13, !prof !162

lor.rhs.do.body15_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body15

cond.false13:                                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 156) #12
  br label %do.body15

do.body15:                                        ; preds = %cond.false13, %lor.rhs.do.body15_crit_edge, %cond.end.do.body15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %6 = load ptr, ptr @xfsstats, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add = add i32 %13, %7
  %14 = inttoptr i32 %add to ptr
  %vn_active = getelementptr inbounds %struct.__xfsstats, ptr %14, i32 0, i32 59
  %15 = ptrtoint ptr %vn_active to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vn_active, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %vn_active, align 4
  %17 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ip, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %18, i32 0, i32 92
  %19 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %m_stats, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = load i32, ptr %cpu, align 4
  %arrayidx26 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx26, align 4
  %add27 = add i32 %24, %21
  %25 = inttoptr i32 %add27 to ptr
  %vn_active28 = getelementptr inbounds %struct.__xfsstats, ptr %25, i32 0, i32 59
  %26 = ptrtoint ptr %vn_active28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vn_active28, align 4
  %dec29 = add i32 %27, -1
  store i32 %dec29, ptr %vn_active28, align 4
  %28 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 37
  tail call void @call_rcu(ptr noundef %28, ptr noundef nonnull @xfs_inode_free_callback) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_iget(ptr noundef %mp, ptr noundef %tp, i64 noundef %ino, i32 noundef %flags, i32 noundef %lock_flags, ptr nocapture noundef writeonly %ipp) local_unnamed_addr #0 align 64 {
entry:
  %bp.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %lock_flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !162

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 714) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ino)
  %tobool2.not = icmp eq i64 %ino, 0
  br i1 %tobool2.not, label %cond.end.cleanup_crit_edge, label %lor.lhs.false

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %cond.end
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 15
  %0 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %1 to i64
  %shr = lshr i64 %ino, %sh_prom
  %conv = trunc i64 %shr to i32
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %2 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_agcount, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp3.not = icmp ugt i32 %3, %conv
  br i1 %cmp3.not, label %do.body5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body5:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %4 = load ptr, ptr @xfsstats, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, %5
  %12 = inttoptr i32 %add to ptr
  %xs_ig_attempts = getelementptr inbounds %struct.__xfsstats, ptr %12, i32 0, i32 26
  %13 = ptrtoint ptr %xs_ig_attempts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xs_ig_attempts, align 8
  %inc = add i32 %14, 1
  store i32 %inc, ptr %xs_ig_attempts, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 92
  %15 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m_stats, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = load i32, ptr %cpu, align 4
  %arrayidx16 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %20, %17
  %21 = inttoptr i32 %add17 to ptr
  %xs_ig_attempts18 = getelementptr inbounds %struct.__xfsstats, ptr %21, i32 0, i32 26
  %22 = ptrtoint ptr %xs_ig_attempts18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xs_ig_attempts18, align 8
  %inc19 = add i32 %23, 1
  store i32 %inc19, ptr %xs_ig_attempts18, align 8
  %24 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %agino_log, align 8
  %sh_prom24 = zext i32 %25 to i64
  %shr25 = lshr i64 %ino, %sh_prom24
  %conv26 = trunc i64 %shr25 to i32
  %call27 = tail call ptr @xfs_perag_get(ptr noundef %mp, i32 noundef %conv26) #12
  %conv28 = trunc i64 %ino to i32
  %26 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %agino_log, align 8
  %sh_prom31 = zext i32 %27 to i64
  %notmask = shl nsw i64 -1, %sh_prom31
  %28 = trunc i64 %notmask to i32
  %conv32 = xor i32 %28, -1
  %and33 = and i32 %conv32, %conv28
  %pag_ici_root = getelementptr inbounds %struct.xfs_perag, ptr %call27, i32 0, i32 32
  %and.i.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and16.i = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock_flags)
  %tobool39.not.i = icmp eq i32 %lock_flags, 0
  %and49.i = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  %pag_ici_lock.i = getelementptr inbounds %struct.xfs_perag, ptr %call27, i32 0, i32 31
  br label %again

again:                                            ; preds = %if.then93, %do.body5
  %29 = call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %32, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !163
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %again.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

again.rcu_read_lock.exit_crit_edge:               ; preds = %again
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %again
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #12
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %again.rcu_read_lock.exit_crit_edge
  %call34 = call ptr @radix_tree_lookup(ptr noundef %pag_ici_root, i32 noundef %and33) #12
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %rcu_read_lock.exit
  %i_vnode.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call34, i32 0, i32 27
  %33 = ptrtoint ptr %call34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call34, align 8
  %i_flags_lock.i = getelementptr inbounds %struct.xfs_inode, ptr %call34, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #12
  %i_ino.i = getelementptr inbounds %struct.xfs_inode, ptr %call34, i32 0, i32 4
  %35 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_ino.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %ino)
  %cmp.not.i = icmp eq i64 %36, %ino
  br i1 %cmp.not.i, label %if.end.i, label %if.then36.out_skip.i_crit_edge

if.then36.out_skip.i_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_skip.i

if.end.i:                                         ; preds = %if.then36
  %i_flags.i = getelementptr inbounds %struct.xfs_inode, ptr %call34, i32 0, i32 16
  %37 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_flags.i, align 8
  %and.i122 = and i32 %38, 8201
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i122)
  %tobool.not.i123 = icmp eq i32 %and.i122, 0
  br i1 %tobool.not.i123, label %if.end2.i, label %if.end.i.out_skip.i_crit_edge

if.end.i.out_skip.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_skip.i

if.end2.i:                                        ; preds = %if.end.i
  %and4.i = and i32 %38, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end11.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end2.i
  %39 = getelementptr inbounds %struct.xfs_inode, ptr %call34, i32 0, i32 27, i32 12
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp8.i = icmp eq i32 %41, 0
  br i1 %cmp8.i, label %if.then6.i.out_error.i_crit_edge, label %out_inodegc_flush.i

if.then6.i.out_error.i_crit_edge:                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_error.i

if.end11.i:                                       ; preds = %if.end2.i
  %42 = ptrtoint ptr %i_vnode.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %i_vnode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp16.i.i = icmp eq i16 %43, 0
  br i1 %tobool.not.i.i, label %if.end12.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end11.i
  br i1 %cmp16.i.i, label %if.end.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %call34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call34, align 8
  %conv5.i.i = zext i16 %43 to i32
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %45, ptr noundef nonnull @.str.14, i64 noundef %ino, i32 noundef %conv5.i.i) #12
  br label %out_error.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %i_nblocks.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call34, i32 0, i32 19
  %46 = ptrtoint ptr %i_nblocks.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %i_nblocks.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %cmp6.not.i.i = icmp eq i64 %47, 0
  br i1 %cmp6.not.i.i, label %if.end.i.i.if.end15.i_crit_edge, label %if.then8.i.i

if.end.i.i.if.end15.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %call34 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call34, align 8
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %49, ptr noundef nonnull @.str.15, i64 noundef %ino) #12
  br label %out_error.i

if.end12.i.i:                                     ; preds = %if.end11.i
  br i1 %cmp16.i.i, label %if.end12.i.i.out_error.i_crit_edge, label %if.end12.i.i.if.end15.i_crit_edge

if.end12.i.i.if.end15.i_crit_edge:                ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.end12.i.i.out_error.i_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_error.i

if.end15.i:                                       ; preds = %if.end12.i.i.if.end15.i_crit_edge, %if.end.i.i.if.end15.i_crit_edge
  %and19.i = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %or.cond229 = select i1 %tobool17.not.i, i1 true, i1 %tobool20.not.i
  br i1 %or.cond229, label %if.end22.i, label %if.end15.i.out_skip.i_crit_edge

if.end15.i.out_skip.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_skip.i

if.end22.i:                                       ; preds = %if.end15.i
  br i1 %tobool20.not.i, label %if.else.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end22.i
  %50 = ptrtoint ptr %call34 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call34, align 8
  call fastcc void @trace_xfs_iget_recycle(ptr noundef nonnull %call34) #12
  %52 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %i_flags.i, align 8
  %or.i = or i32 %53, 1
  store i32 %or.i, ptr %i_flags.i, align 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #12
  %call.i53.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i53.i, label %if.then26.i.rcu_read_unlock.exit.i188_crit_edge, label %land.lhs.true.i56.i

if.then26.i.rcu_read_unlock.exit.i188_crit_edge:  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i188

land.lhs.true.i56.i:                              ; preds = %if.then26.i
  %call1.i54.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54.i)
  %tobool.not.i55.i = icmp eq i32 %call1.i54.i, 0
  br i1 %tobool.not.i55.i, label %land.lhs.true.i56.i.rcu_read_unlock.exit.i188_crit_edge, label %land.lhs.true2.i58.i

land.lhs.true.i56.i.rcu_read_unlock.exit.i188_crit_edge: ; preds = %land.lhs.true.i56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i188

land.lhs.true2.i58.i:                             ; preds = %land.lhs.true.i56.i
  %.b4.i57.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i57.i, label %land.lhs.true2.i58.i.rcu_read_unlock.exit.i188_crit_edge, label %if.then.i59.i

land.lhs.true2.i58.i.rcu_read_unlock.exit.i188_crit_edge: ; preds = %land.lhs.true2.i58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i188

if.then.i59.i:                                    ; preds = %land.lhs.true2.i58.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.22) #12
  br label %rcu_read_unlock.exit.i188

rcu_read_unlock.exit.i188:                        ; preds = %if.then.i59.i, %land.lhs.true2.i58.i.rcu_read_unlock.exit.i188_crit_edge, %land.lhs.true.i56.i.rcu_read_unlock.exit.i188_crit_edge, %if.then26.i.rcu_read_unlock.exit.i188_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !164
  %54 = call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i.i60.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i60.i to ptr
  %preempt_count.i.i.i.i61.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i61.i, align 4
  %sub.i.i.i.i187 = add i32 %57, -1
  store volatile i32 %sub.i.i.i.i187, ptr %preempt_count.i.i.i.i61.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %i_rwsem.i = getelementptr inbounds %struct.xfs_inode, ptr %call34, i32 0, i32 27, i32 25
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i, i32 noundef 4) #12
  %58 = ptrtoint ptr %i_rwsem.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %i_rwsem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i.not.i = icmp eq i32 %59, 0
  br i1 %cmp.i.not.i, label %rcu_read_unlock.exit.i188.cond.end.i_crit_edge, label %cond.false.i, !prof !162

rcu_read_unlock.exit.i188.cond.end.i_crit_edge:   ; preds = %rcu_read_unlock.exit.i188
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.false.i:                                     ; preds = %rcu_read_unlock.exit.i188
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 354) #12
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %rcu_read_unlock.exit.i188.cond.end.i_crit_edge
  %60 = getelementptr inbounds %struct.xfs_inode, ptr %call34, i32 0, i32 27, i32 12
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %i_generation.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call34, i32 0, i32 27, i32 49
  %63 = ptrtoint ptr %i_generation.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %i_generation.i.i, align 8
  %i_version.i.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call34, i32 0, i32 27, i32 38
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i.i, i32 noundef 8) #12
  %call.i.i.i.i.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i.i) #12
  %65 = ptrtoint ptr %i_vnode.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %i_vnode.i.i, align 8
  %i_rdev.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call34, i32 0, i32 27, i32 13
  %67 = ptrtoint ptr %i_rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %i_rdev.i.i, align 8
  %i_uid.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call34, i32 0, i32 27, i32 2
  %69 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %uid.sroa.0.0.copyload.i.i = load i32, ptr %i_uid.i.i, align 4
  %i_gid.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call34, i32 0, i32 27, i32 3
  %70 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %gid.sroa.0.0.copyload.i.i = load i32, ptr %i_gid.i.i, align 8
  %m_super.i.i = getelementptr inbounds %struct.xfs_mount, ptr %51, i32 0, i32 1
  %71 = ptrtoint ptr %m_super.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %m_super.i.i, align 8
  %call1.i62.i = call i32 @inode_init_always(ptr noundef %72, ptr noundef %i_vnode.i.i) #12
  call void @set_nlink(ptr noundef %i_vnode.i.i, i32 noundef %62) #12
  %73 = ptrtoint ptr %i_generation.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %64, ptr %i_generation.i.i, align 8
  %or.i.i.i189 = or i64 %call.i.i.i.i.i, 1
  %call.i.i.i.i25.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i.i, i32 noundef 8) #12
  call void @generic_atomic64_set(ptr noundef %i_version.i.i.i.i, i64 noundef %or.i.i.i189) #12
  %74 = ptrtoint ptr %i_vnode.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %66, ptr %i_vnode.i.i, align 8
  %75 = ptrtoint ptr %i_rdev.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %68, ptr %i_rdev.i.i, align 8
  %76 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %uid.sroa.0.0.copyload.i.i, ptr %i_uid.i.i, align 4
  %77 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %gid.sroa.0.0.copyload.i.i, ptr %i_gid.i.i, align 8
  %i_mapping.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call34, i32 0, i32 27, i32 9
  %78 = ptrtoint ptr %i_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %i_mapping.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.address_space, ptr %79, i32 0, i32 10
  %80 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags.i.i.i, align 4
  %or.i.i.i.i = or i32 %81, 64
  store i32 %or.i.i.i.i, ptr %flags.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i62.i)
  %tobool6.not.i = icmp eq i32 %call1.i62.i, 0
  br i1 %tobool6.not.i, label %xfs_iget_recycle.exit.thread, label %if.then.i193

if.then.i193:                                     ; preds = %cond.end.i
  %82 = call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i.i.i190 = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i.i190 to ptr
  %preempt_count.i.i.i.i.i191 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i.i.i.i191 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i.i.i.i191, align 4
  %add.i.i.i.i = add i32 %85, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i191, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !163
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i192 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i192, label %if.then.i193.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i196

if.then.i193.rcu_read_lock.exit.i_crit_edge:      ; preds = %if.then.i193
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i196:                             ; preds = %if.then.i193
  %call1.i.i194 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i194)
  %tobool.not.i.i195 = icmp eq i32 %call1.i.i194, 0
  br i1 %tobool.not.i.i195, label %land.lhs.true.i.i196.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i198

land.lhs.true.i.i196.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i196
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i198:                            ; preds = %land.lhs.true.i.i196
  %.b4.i.i197 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i197, label %land.lhs.true2.i.i198.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i199

land.lhs.true2.i.i198.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i198
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i199:                                   ; preds = %land.lhs.true2.i.i198
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i199, %land.lhs.true2.i.i198.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i196.rcu_read_lock.exit.i_crit_edge, %if.then.i193.rcu_read_lock.exit.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #12
  %86 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %i_flags.i, align 8
  %and.i200 = and i32 %87, -10
  store i32 %and.i200, ptr %i_flags.i, align 8
  %and10.i = and i32 %87, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %cond.false19.i, label %rcu_read_lock.exit.i.cond.end20.i_crit_edge, !prof !165

rcu_read_lock.exit.i.cond.end20.i_crit_edge:      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end20.i

cond.false19.i:                                   ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 364) #12
  br label %cond.end20.i

cond.end20.i:                                     ; preds = %cond.false19.i, %rcu_read_lock.exit.i.cond.end20.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #12
  %call.i63.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i63.i, label %cond.end20.i.xfs_iget_recycle.exit_crit_edge, label %land.lhs.true.i66.i

cond.end20.i.xfs_iget_recycle.exit_crit_edge:     ; preds = %cond.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_iget_recycle.exit

land.lhs.true.i66.i:                              ; preds = %cond.end20.i
  %call1.i64.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i64.i)
  %tobool.not.i65.i = icmp eq i32 %call1.i64.i, 0
  br i1 %tobool.not.i65.i, label %land.lhs.true.i66.i.xfs_iget_recycle.exit_crit_edge, label %land.lhs.true2.i68.i

land.lhs.true.i66.i.xfs_iget_recycle.exit_crit_edge: ; preds = %land.lhs.true.i66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_iget_recycle.exit

land.lhs.true2.i68.i:                             ; preds = %land.lhs.true.i66.i
  %.b4.i67.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i67.i, label %land.lhs.true2.i68.i.xfs_iget_recycle.exit_crit_edge, label %if.then.i69.i

land.lhs.true2.i68.i.xfs_iget_recycle.exit_crit_edge: ; preds = %land.lhs.true2.i68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_iget_recycle.exit

if.then.i69.i:                                    ; preds = %land.lhs.true2.i68.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.22) #12
  br label %xfs_iget_recycle.exit

xfs_iget_recycle.exit.thread:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_lock(ptr noundef %pag_ici_lock.i) #12
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #12
  %88 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %i_flags.i, align 8
  %and24.i202 = and i32 %89, -9326
  %or26.i = or i32 %and24.i202, 8
  store i32 %or26.i, ptr %i_flags.i, align 8
  %90 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %i_ino.i, align 8
  %conv.i204 = trunc i64 %91 to i32
  %agino_log.i205 = getelementptr inbounds %struct.xfs_mount, ptr %51, i32 0, i32 64, i32 15
  %92 = ptrtoint ptr %agino_log.i205 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %agino_log.i205, align 8
  %sh_prom.i206 = zext i32 %93 to i64
  %notmask.i207 = shl nsw i64 -1, %sh_prom.i206
  %94 = trunc i64 %notmask.i207 to i32
  %conv27.i = xor i32 %94, -1
  %and28.i = and i32 %conv27.i, %conv.i204
  call fastcc void @xfs_perag_clear_inode_tag(ptr noundef %call27, i32 noundef %and28.i, i32 noundef 0) #12
  %i_state.i = getelementptr inbounds %struct.xfs_inode, ptr %call34, i32 0, i32 27, i32 24
  %95 = ptrtoint ptr %i_state.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 8, ptr %i_state.i, align 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #12
  call void @_raw_spin_unlock(ptr noundef %pag_ici_lock.i) #12
  br label %if.end36.i

xfs_iget_recycle.exit:                            ; preds = %if.then.i69.i, %land.lhs.true2.i68.i.xfs_iget_recycle.exit_crit_edge, %land.lhs.true.i66.i.xfs_iget_recycle.exit_crit_edge, %cond.end20.i.xfs_iget_recycle.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !164
  %96 = call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i.i70.i = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i.i.i70.i to ptr
  %preempt_count.i.i.i.i71.i = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %preempt_count.i.i.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %preempt_count.i.i.i.i71.i, align 4
  %sub.i.i.i72.i = add i32 %99, -1
  store volatile i32 %sub.i.i.i72.i, ptr %preempt_count.i.i.i.i71.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call fastcc void @trace_xfs_iget_recycle_fail(ptr noundef nonnull %call34) #12
  br label %out_error_or_again

if.else.i:                                        ; preds = %if.end22.i
  %call31.i = call ptr @igrab(ptr noundef %i_vnode.i.i) #12
  %tobool32.not.i = icmp eq ptr %call31.i, null
  br i1 %tobool32.not.i, label %if.else.i.out_skip.i_crit_edge, label %if.end34.i

if.else.i.out_skip.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_skip.i

if.end34.i:                                       ; preds = %if.else.i
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #12
  %call.i173 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i173, label %if.end34.i.rcu_read_unlock.exit183_crit_edge, label %land.lhs.true.i176

if.end34.i.rcu_read_unlock.exit183_crit_edge:     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit183

land.lhs.true.i176:                               ; preds = %if.end34.i
  %call1.i174 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i174)
  %tobool.not.i175 = icmp eq i32 %call1.i174, 0
  br i1 %tobool.not.i175, label %land.lhs.true.i176.rcu_read_unlock.exit183_crit_edge, label %land.lhs.true2.i178

land.lhs.true.i176.rcu_read_unlock.exit183_crit_edge: ; preds = %land.lhs.true.i176
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit183

land.lhs.true2.i178:                              ; preds = %land.lhs.true.i176
  %.b4.i177 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i177, label %land.lhs.true2.i178.rcu_read_unlock.exit183_crit_edge, label %if.then.i179

land.lhs.true2.i178.rcu_read_unlock.exit183_crit_edge: ; preds = %land.lhs.true2.i178
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit183

if.then.i179:                                     ; preds = %land.lhs.true2.i178
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.22) #12
  br label %rcu_read_unlock.exit183

rcu_read_unlock.exit183:                          ; preds = %if.then.i179, %land.lhs.true2.i178.rcu_read_unlock.exit183_crit_edge, %land.lhs.true.i176.rcu_read_unlock.exit183_crit_edge, %if.end34.i.rcu_read_unlock.exit183_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !164
  %100 = call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i.i180 = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i.i.i.i180 to ptr
  %preempt_count.i.i.i.i181 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %preempt_count.i.i.i.i181 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %preempt_count.i.i.i.i181, align 4
  %sub.i.i.i182 = add i32 %103, -1
  store volatile i32 %sub.i.i.i182, ptr %preempt_count.i.i.i.i181, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call fastcc void @trace_xfs_iget_hit(ptr noundef nonnull %call34) #12
  br label %if.end36.i

if.end36.i:                                       ; preds = %rcu_read_unlock.exit183, %xfs_iget_recycle.exit.thread
  br i1 %tobool39.not.i, label %if.end36.i.if.end39.i_crit_edge, label %if.then38.i

if.end36.i.if.end39.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i

if.then38.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @xfs_ilock(ptr noundef nonnull %call34, i32 noundef %lock_flags) #12
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then38.i, %if.end36.i.if.end39.i_crit_edge
  br i1 %tobool17.not.i, label %if.then42.i, label %if.end39.i.xfs_iget_cache_hit.exit_crit_edge

if.end39.i.xfs_iget_cache_hit.exit_crit_edge:     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_iget_cache_hit.exit

if.then42.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #12
  %104 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %i_flags.i, align 8
  %and.i172 = and i32 %105, -3
  store i32 %and.i172, ptr %i_flags.i, align 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #12
  br label %xfs_iget_cache_hit.exit

out_skip.i:                                       ; preds = %if.else.i.out_skip.i_crit_edge, %if.end15.i.out_skip.i_crit_edge, %if.end.i.out_skip.i_crit_edge, %if.then36.out_skip.i_crit_edge
  call fastcc void @trace_xfs_iget_skip(ptr noundef nonnull %call34) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %106 = load ptr, ptr @xfsstats, align 4
  %107 = ptrtoint ptr %106 to i32
  %108 = call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i127.i = and i32 %108, -16384
  %109 = inttoptr i32 %and.i127.i to ptr
  %cpu71.i = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 3
  %110 = ptrtoint ptr %cpu71.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cpu71.i, align 4
  %arrayidx72.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %111
  %112 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx72.i, align 4
  %add73.i = add i32 %113, %107
  %114 = inttoptr i32 %add73.i to ptr
  %xs_ig_frecycle.i = getelementptr inbounds %struct.__xfsstats, ptr %114, i32 0, i32 28
  %115 = ptrtoint ptr %xs_ig_frecycle.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %xs_ig_frecycle.i, align 8
  %inc74.i = add i32 %116, 1
  store i32 %inc74.i, ptr %xs_ig_frecycle.i, align 8
  %m_stats81.i = getelementptr inbounds %struct.xfs_mount, ptr %34, i32 0, i32 92
  %117 = ptrtoint ptr %m_stats81.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %m_stats81.i, align 4
  %119 = ptrtoint ptr %118 to i32
  %120 = load i32, ptr %cpu71.i, align 4
  %arrayidx86.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %120
  %121 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx86.i, align 4
  %add87.i = add i32 %122, %119
  %123 = inttoptr i32 %add87.i to ptr
  %xs_ig_frecycle88.i = getelementptr inbounds %struct.__xfsstats, ptr %123, i32 0, i32 28
  %124 = ptrtoint ptr %xs_ig_frecycle88.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %xs_ig_frecycle88.i, align 8
  %inc89.i = add i32 %125, 1
  store i32 %inc89.i, ptr %xs_ig_frecycle88.i, align 8
  br label %out_error.i

out_error.i:                                      ; preds = %out_skip.i, %if.end12.i.i.out_error.i_crit_edge, %if.then8.i.i, %if.then2.i.i, %if.then6.i.out_error.i_crit_edge
  %error.0.i = phi i32 [ -11, %out_skip.i ], [ -2, %if.then6.i.out_error.i_crit_edge ], [ -117, %if.then8.i.i ], [ -117, %if.then2.i.i ], [ -2, %if.end12.i.i.out_error.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #12
  %call.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %out_error.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i.i

out_error.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %out_error.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i.i:                                ; preds = %out_error.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i128.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i128.i, label %land.lhs.true.i.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i129.i

land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i129.i:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.22) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i129.i, %land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_unlock.exit.i_crit_edge, %out_error.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !164
  %126 = call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i.i.i = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %129, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %out_error_or_again

out_inodegc_flush.i:                              ; preds = %if.then6.i
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #12
  %call.i130.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i130.i, label %out_inodegc_flush.i.rcu_read_unlock.exit140.i_crit_edge, label %land.lhs.true.i133.i

out_inodegc_flush.i.rcu_read_unlock.exit140.i_crit_edge: ; preds = %out_inodegc_flush.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit140.i

land.lhs.true.i133.i:                             ; preds = %out_inodegc_flush.i
  %call1.i131.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131.i)
  %tobool.not.i132.i = icmp eq i32 %call1.i131.i, 0
  br i1 %tobool.not.i132.i, label %land.lhs.true.i133.i.rcu_read_unlock.exit140.i_crit_edge, label %land.lhs.true2.i135.i

land.lhs.true.i133.i.rcu_read_unlock.exit140.i_crit_edge: ; preds = %land.lhs.true.i133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit140.i

land.lhs.true2.i135.i:                            ; preds = %land.lhs.true.i133.i
  %.b4.i134.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i134.i, label %land.lhs.true2.i135.i.rcu_read_unlock.exit140.i_crit_edge, label %if.then.i136.i

land.lhs.true2.i135.i.rcu_read_unlock.exit140.i_crit_edge: ; preds = %land.lhs.true2.i135.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit140.i

if.then.i136.i:                                   ; preds = %land.lhs.true2.i135.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.22) #12
  br label %rcu_read_unlock.exit140.i

rcu_read_unlock.exit140.i:                        ; preds = %if.then.i136.i, %land.lhs.true2.i135.i.rcu_read_unlock.exit140.i_crit_edge, %land.lhs.true.i133.i.rcu_read_unlock.exit140.i_crit_edge, %out_inodegc_flush.i.rcu_read_unlock.exit140.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !164
  %130 = call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i.i137.i = and i32 %130, -16384
  %131 = inttoptr i32 %and.i.i.i.i.i137.i to ptr
  %preempt_count.i.i.i.i138.i = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %preempt_count.i.i.i.i138.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %preempt_count.i.i.i.i138.i, align 4
  %sub.i.i.i139.i = add i32 %133, -1
  store volatile i32 %sub.i.i.i139.i, ptr %preempt_count.i.i.i.i138.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %m_opstate.i.i = getelementptr inbounds %struct.xfs_mount, ptr %34, i32 0, i32 66
  %134 = ptrtoint ptr %m_opstate.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %m_opstate.i.i, align 4
  %136 = and i32 %135, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool.i.not.i = icmp eq i32 %136, 0
  br i1 %tobool.i.not.i, label %rcu_read_unlock.exit140.i.out_error_or_again_crit_edge, label %if.then95.i

rcu_read_unlock.exit140.i.out_error_or_again_crit_edge: ; preds = %rcu_read_unlock.exit140.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_error_or_again

if.then95.i:                                      ; preds = %rcu_read_unlock.exit140.i
  %call9.i.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %137 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i.i, i32 %137)
  %cmp10.i.i = icmp ult i32 %call9.i.i, %137
  br i1 %cmp10.i.i, label %do.body.lr.ph.i.i, label %if.then95.i.out_error_or_again_crit_edge

if.then95.i.out_error_or_again_crit_edge:         ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_error_or_again

do.body.lr.ph.i.i:                                ; preds = %if.then95.i
  %m_inodegc.i.i = getelementptr inbounds %struct.xfs_mount, ptr %34, i32 0, i32 17
  %m_inodegc_wq.i.i = getelementptr inbounds %struct.xfs_mount, ptr %34, i32 0, i32 25
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i143.i.do.body.i.i_crit_edge, %do.body.lr.ph.i.i
  %call11.i.i = phi i32 [ %call9.i.i, %do.body.lr.ph.i.i ], [ %call.i142.i, %if.end.i143.i.do.body.i.i_crit_edge ]
  %138 = ptrtoint ptr %m_inodegc.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %m_inodegc.i.i, align 4
  %140 = ptrtoint ptr %139 to i32
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call11.i.i
  %141 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %142, %140
  %143 = inttoptr i32 %add.i.i to ptr
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile ptr, ptr %143, align 4
  %cmp.i.i.i = icmp eq ptr %145, null
  br i1 %cmp.i.i.i, label %do.body.i.i.if.end.i143.i_crit_edge, label %if.then.i141.i

do.body.i.i.if.end.i143.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i143.i

if.then.i141.i:                                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %146 = ptrtoint ptr %m_inodegc_wq.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %m_inodegc_wq.i.i, align 4
  %work.i.i = getelementptr inbounds %struct.xfs_inodegc, ptr %143, i32 0, i32 1
  %call3.i.i = call zeroext i1 @queue_work_on(i32 noundef %call11.i.i, ptr noundef %147, ptr noundef %work.i.i) #12
  br label %if.end.i143.i

if.end.i143.i:                                    ; preds = %if.then.i141.i, %do.body.i.i.if.end.i143.i_crit_edge
  %call.i142.i = call i32 @cpumask_next(i32 noundef %call11.i.i, ptr noundef nonnull @__cpu_online_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %148 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i = icmp ult i32 %call.i142.i, %148
  br i1 %cmp.i.i, label %if.end.i143.i.do.body.i.i_crit_edge, label %if.end.i143.i.out_error_or_again_crit_edge

if.end.i143.i.out_error_or_again_crit_edge:       ; preds = %if.end.i143.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_error_or_again

if.end.i143.i.do.body.i.i_crit_edge:              ; preds = %if.end.i143.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

xfs_iget_cache_hit.exit:                          ; preds = %if.then42.i, %if.end39.i.xfs_iget_cache_hit.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %149 = load ptr, ptr @xfsstats, align 4
  %150 = ptrtoint ptr %149 to i32
  %151 = call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i126.i = and i32 %151, -16384
  %152 = inttoptr i32 %and.i126.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %152, i32 0, i32 3
  %153 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %154
  %155 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %156, %150
  %157 = inttoptr i32 %add.i to ptr
  %xs_ig_found.i = getelementptr inbounds %struct.__xfsstats, ptr %157, i32 0, i32 27
  %158 = ptrtoint ptr %xs_ig_found.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %xs_ig_found.i, align 4
  %inc.i = add i32 %159, 1
  store i32 %inc.i, ptr %xs_ig_found.i, align 4
  %m_stats.i = getelementptr inbounds %struct.xfs_mount, ptr %34, i32 0, i32 92
  %160 = ptrtoint ptr %m_stats.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %m_stats.i, align 4
  %162 = ptrtoint ptr %161 to i32
  %163 = load i32, ptr %cpu.i, align 4
  %arrayidx56.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %163
  %164 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx56.i, align 4
  %add57.i = add i32 %165, %162
  %166 = inttoptr i32 %add57.i to ptr
  %xs_ig_found58.i = getelementptr inbounds %struct.__xfsstats, ptr %166, i32 0, i32 27
  %167 = ptrtoint ptr %xs_ig_found58.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %xs_ig_found58.i, align 4
  %inc59.i = add i32 %168, 1
  store i32 %inc59.i, ptr %xs_ig_found58.i, align 4
  br label %if.end79

if.else:                                          ; preds = %rcu_read_lock.exit
  %call.i125 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i125, label %if.else.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i128

if.else.rcu_read_unlock.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i128:                               ; preds = %if.else
  %call1.i126 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i126)
  %tobool.not.i127 = icmp eq i32 %call1.i126, 0
  br i1 %tobool.not.i127, label %land.lhs.true.i128.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i130

land.lhs.true.i128.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i128
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i130:                              ; preds = %land.lhs.true.i128
  %.b4.i129 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i129, label %land.lhs.true2.i130.rcu_read_unlock.exit_crit_edge, label %if.then.i131

land.lhs.true2.i130.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i130
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i131:                                     ; preds = %land.lhs.true2.i130
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.22) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i131, %land.lhs.true2.i130.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i128.rcu_read_unlock.exit_crit_edge, %if.else.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !164
  %169 = call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i.i132 = and i32 %169, -16384
  %170 = inttoptr i32 %and.i.i.i.i.i132 to ptr
  %preempt_count.i.i.i.i133 = getelementptr inbounds %struct.thread_info, ptr %170, i32 0, i32 1
  %171 = ptrtoint ptr %preempt_count.i.i.i.i133 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile i32, ptr %preempt_count.i.i.i.i133, align 4
  %sub.i.i.i = add i32 %172, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i133, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br i1 %tobool17.not.i, label %do.body46, label %rcu_read_unlock.exit.if.end94_crit_edge

rcu_read_unlock.exit.if.end94_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

do.body46:                                        ; preds = %rcu_read_unlock.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %173 = load ptr, ptr @xfsstats, align 4
  %174 = ptrtoint ptr %173 to i32
  %175 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %cpu, align 4
  %arrayidx55 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %176
  %177 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx55, align 4
  %add56 = add i32 %178, %174
  %179 = inttoptr i32 %add56 to ptr
  %xs_ig_missed = getelementptr inbounds %struct.__xfsstats, ptr %179, i32 0, i32 29
  %180 = ptrtoint ptr %xs_ig_missed to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %xs_ig_missed, align 4
  %inc57 = add i32 %181, 1
  store i32 %inc57, ptr %xs_ig_missed, align 4
  %182 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %m_stats, align 4
  %184 = ptrtoint ptr %183 to i32
  %185 = load i32, ptr %cpu, align 4
  %arrayidx69 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %185
  %186 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx69, align 4
  %add70 = add i32 %187, %184
  %188 = inttoptr i32 %add70 to ptr
  %xs_ig_missed71 = getelementptr inbounds %struct.__xfsstats, ptr %188, i32 0, i32 29
  %189 = ptrtoint ptr %xs_ig_missed71 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %xs_ig_missed71, align 4
  %inc72 = add i32 %190, 1
  store i32 %inc72, ptr %xs_ig_missed71, align 4
  %191 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %agino_log, align 8
  %sh_prom.i = zext i32 %192 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %193 = trunc i64 %notmask.i to i32
  %conv1.i = xor i32 %193, -1
  %and.i134 = and i32 %conv1.i, %conv28
  %call.i135 = call ptr @xfs_inode_alloc(ptr noundef %mp, i64 noundef %ino) #12
  %tobool.not.i136 = icmp eq ptr %call.i135, null
  br i1 %tobool.not.i136, label %do.body46.if.end94_crit_edge, label %if.end.i138

do.body46.if.end94_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

if.end.i138:                                      ; preds = %do.body46
  %i_ino.i137 = getelementptr inbounds %struct.xfs_inode, ptr %call.i135, i32 0, i32 4
  %194 = ptrtoint ptr %i_ino.i137 to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %i_ino.i137, align 8
  %i_imap.i = getelementptr inbounds %struct.xfs_inode, ptr %call.i135, i32 0, i32 5
  %call2.i = call i32 @xfs_imap(ptr noundef %mp, ptr noundef %tp, i64 noundef %195, ptr noundef %i_imap.i, i32 noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i138.out_destroy.i_crit_edge

if.end.i138.out_destroy.i_crit_edge:              ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_destroy.i

if.end5.i:                                        ; preds = %if.end.i138
  %196 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %m_features.i.i, align 8
  %and.i.i139 = and i64 %197, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i139)
  %tobool.i.not.i140 = icmp eq i64 %and.i.i139, 0
  %or.cond.i = or i1 %tobool.not.i.i, %tobool.i.not.i140
  %and.i169.i = and i64 %197, 144115188075855872
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i169.i)
  %tobool.i170.i = icmp ne i64 %and.i169.i, 0
  %or.cond183.i = select i1 %or.cond.i, i1 true, i1 %tobool.i170.i
  br i1 %or.cond183.i, label %if.else.i142, label %if.then12.i

if.then12.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i = call i32 @prandom_u32() #12
  %i_generation.i = getelementptr inbounds %struct.xfs_inode, ptr %call.i135, i32 0, i32 27, i32 49
  %198 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %call13.i, ptr %i_generation.i, align 8
  br label %if.end30.i

if.else.i142:                                     ; preds = %if.end5.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp.i) #12
  %199 = ptrtoint ptr %bp.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp.i, align 4, !annotation !166
  %call16.i = call i32 @xfs_imap_to_bp(ptr noundef %mp, ptr noundef %tp, ptr noundef %i_imap.i, ptr noundef nonnull %bp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i141 = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i141, label %if.end19.i, label %if.else.i142.cleanup.thread.i_crit_edge

if.else.i142.cleanup.thread.i_crit_edge:          ; preds = %if.else.i142
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

if.end19.i:                                       ; preds = %if.else.i142
  %200 = ptrtoint ptr %bp.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %bp.i, align 4
  %im_boffset.i = getelementptr inbounds %struct.xfs_inode, ptr %call.i135, i32 0, i32 5, i32 2
  %202 = ptrtoint ptr %im_boffset.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %im_boffset.i, align 2
  %conv21.i = zext i16 %203 to i32
  %call22.i = call ptr @xfs_buf_offset(ptr noundef %201, i32 noundef %conv21.i) #12
  %call23.i = call i32 @xfs_inode_from_disk(ptr noundef nonnull %call.i135, ptr noundef %call22.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  %204 = ptrtoint ptr %bp.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %bp.i, align 4
  br i1 %tobool24.not.i, label %cleanup.i, label %if.end26.i

if.end26.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %205) #12
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end26.i, %if.else.i142.cleanup.thread.i_crit_edge
  %error.0.ph.i = phi i32 [ %call23.i, %if.end26.i ], [ %call16.i, %if.else.i142.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp.i) #12
  br label %out_destroy.i

cleanup.i:                                        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @xfs_buf_set_ref(ptr noundef %205, i32 noundef 2) #12
  %206 = ptrtoint ptr %bp.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %bp.i, align 4
  call void @xfs_trans_brelse(ptr noundef %tp, ptr noundef %207) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp.i) #12
  br label %if.end30.i

if.end30.i:                                       ; preds = %cleanup.i, %if.then12.i
  call fastcc void @trace_xfs_iget_miss(ptr noundef nonnull %call.i135) #12
  %i_vnode.i28.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call.i135, i32 0, i32 27
  %208 = ptrtoint ptr %i_vnode.i28.i.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %i_vnode.i28.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %209)
  %cmp16.i.i143 = icmp eq i16 %209, 0
  br i1 %tobool.not.i.i, label %if.end12.i.i151, label %if.then.i.i144

if.then.i.i144:                                   ; preds = %if.end30.i
  br i1 %cmp16.i.i143, label %if.end.i.i149, label %if.then2.i.i146

if.then2.i.i146:                                  ; preds = %if.then.i.i144
  call void @__sanitizer_cov_trace_pc() #14
  %210 = ptrtoint ptr %call.i135 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %call.i135, align 8
  %212 = ptrtoint ptr %i_ino.i137 to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %i_ino.i137, align 8
  %conv5.i.i145 = zext i16 %209 to i32
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %211, ptr noundef nonnull @.str.14, i64 noundef %213, i32 noundef %conv5.i.i145) #12
  br label %out_destroy.i

if.end.i.i149:                                    ; preds = %if.then.i.i144
  %i_nblocks.i.i147 = getelementptr inbounds %struct.xfs_inode, ptr %call.i135, i32 0, i32 19
  %214 = ptrtoint ptr %i_nblocks.i.i147 to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %i_nblocks.i.i147, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %215)
  %cmp6.not.i.i148 = icmp eq i64 %215, 0
  br i1 %cmp6.not.i.i148, label %if.end.i.i149.if.end34.i152_crit_edge, label %if.then8.i.i150

if.end.i.i149.if.end34.i152_crit_edge:            ; preds = %if.end.i.i149
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i152

if.then8.i.i150:                                  ; preds = %if.end.i.i149
  call void @__sanitizer_cov_trace_pc() #14
  %216 = ptrtoint ptr %call.i135 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %call.i135, align 8
  %218 = ptrtoint ptr %i_ino.i137 to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %i_ino.i137, align 8
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %217, ptr noundef nonnull @.str.15, i64 noundef %219) #12
  br label %out_destroy.i

if.end12.i.i151:                                  ; preds = %if.end30.i
  br i1 %cmp16.i.i143, label %if.end12.i.i151.out_destroy.i_crit_edge, label %if.end12.i.i151.if.end34.i152_crit_edge

if.end12.i.i151.if.end34.i152_crit_edge:          ; preds = %if.end12.i.i151
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i152

if.end12.i.i151.out_destroy.i_crit_edge:          ; preds = %if.end12.i.i151
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_destroy.i

if.end34.i152:                                    ; preds = %if.end12.i.i151.if.end34.i152_crit_edge, %if.end.i.i149.if.end34.i152_crit_edge
  %call35.i = call i32 @radix_tree_preload(i32 noundef 3136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.end34.i152.out_destroy.i_crit_edge

if.end34.i152.out_destroy.i_crit_edge:            ; preds = %if.end34.i152
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_destroy.i

if.end38.i:                                       ; preds = %if.end34.i152
  br i1 %tobool39.not.i, label %if.end38.i.if.end48.i_crit_edge, label %if.then40.i

if.end38.i.if.end48.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i

if.then40.i:                                      ; preds = %if.end38.i
  %call41.i = call i32 @xfs_ilock_nowait(ptr noundef nonnull %call.i135, i32 noundef %lock_flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %do.body.i, label %if.then40.i.if.end48.i_crit_edge

if.then40.i.if.end48.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i

do.body.i:                                        ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/xfs/xfs_icache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 642, 0\0A.popsection", ""() #12, !srcloc !167
  unreachable

if.end48.i:                                       ; preds = %if.then40.i.if.end48.i_crit_edge, %if.end38.i.if.end48.i_crit_edge
  br i1 %tobool50.not.i, label %if.end48.i.if.end53.i_crit_edge, label %if.then51.i

if.end48.i.if.end53.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i

if.then51.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @d_mark_dontcache(ptr noundef %i_vnode.i28.i.i) #12
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then51.i, %if.end48.i.if.end53.i_crit_edge
  %i_udquot.i = getelementptr inbounds %struct.xfs_inode, ptr %call.i135, i32 0, i32 1
  %220 = ptrtoint ptr %i_udquot.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr null, ptr %i_udquot.i, align 4
  %i_gdquot.i = getelementptr inbounds %struct.xfs_inode, ptr %call.i135, i32 0, i32 2
  %221 = ptrtoint ptr %i_gdquot.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr null, ptr %i_gdquot.i, align 8
  %i_pdquot.i = getelementptr inbounds %struct.xfs_inode, ptr %call.i135, i32 0, i32 3
  %222 = ptrtoint ptr %i_pdquot.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr null, ptr %i_pdquot.i, align 4
  %i_flags_lock.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call.i135, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i.i) #12
  %i_flags.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call.i135, i32 0, i32 16
  %223 = ptrtoint ptr %i_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %i_flags.i.i.i, align 8
  %or.i.i.i = or i32 %224, 8
  store i32 %or.i.i.i, ptr %i_flags.i.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i.i) #12
  call void @_raw_spin_lock(ptr noundef %pag_ici_lock.i) #12
  %call55.i = call i32 @radix_tree_insert(ptr noundef %pag_ici_root, i32 noundef %and.i134, ptr noundef nonnull %call.i135) #12
  %225 = zext i32 %call55.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %225, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call55.i, label %do.end76.i [
    i32 0, label %xfs_iget_cache_miss.exit
    i32 -17, label %if.end53.i.if.end82.i_crit_edge
  ], !prof !168

if.end53.i.if.end82.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82.i

do.end76.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 666, i32 noundef 9, ptr noundef null) #12
  br label %if.end82.i

if.end82.i:                                       ; preds = %do.end76.i, %if.end53.i.if.end82.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %226 = load ptr, ptr @xfsstats, align 4
  %227 = ptrtoint ptr %226 to i32
  %228 = call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i173.i = and i32 %228, -16384
  %229 = inttoptr i32 %and.i173.i to ptr
  %cpu.i153 = getelementptr inbounds %struct.thread_info, ptr %229, i32 0, i32 3
  %230 = ptrtoint ptr %cpu.i153 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %cpu.i153, align 4
  %arrayidx.i154 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %231
  %232 = ptrtoint ptr %arrayidx.i154 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx.i154, align 4
  %add.i155 = add i32 %233, %227
  %234 = inttoptr i32 %add.i155 to ptr
  %xs_ig_dup.i = getelementptr inbounds %struct.__xfsstats, ptr %234, i32 0, i32 30
  %235 = ptrtoint ptr %xs_ig_dup.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %xs_ig_dup.i, align 8
  %inc.i156 = add i32 %236, 1
  store i32 %inc.i156, ptr %xs_ig_dup.i, align 8
  %237 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %m_stats, align 4
  %239 = ptrtoint ptr %238 to i32
  %240 = load i32, ptr %cpu.i153, align 4
  %arrayidx105.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %240
  %241 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx105.i, align 4
  %add106.i = add i32 %242, %239
  %243 = inttoptr i32 %add106.i to ptr
  %xs_ig_dup107.i = getelementptr inbounds %struct.__xfsstats, ptr %243, i32 0, i32 30
  %244 = ptrtoint ptr %xs_ig_dup107.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %xs_ig_dup107.i, align 8
  %inc108.i = add i32 %245, 1
  store i32 %inc108.i, ptr %xs_ig_dup107.i, align 8
  call void @_raw_spin_unlock(ptr noundef %pag_ici_lock.i) #12
  call fastcc void @radix_tree_preload_end() #12
  br i1 %tobool39.not.i, label %if.end82.i.out_destroy.i_crit_edge, label %if.then115.i

if.end82.i.out_destroy.i_crit_edge:               ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_destroy.i

if.then115.i:                                     ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @xfs_iunlock(ptr noundef nonnull %call.i135, i32 noundef %lock_flags) #12
  br label %out_destroy.i

out_destroy.i:                                    ; preds = %if.then115.i, %if.end82.i.out_destroy.i_crit_edge, %if.end34.i152.out_destroy.i_crit_edge, %if.end12.i.i151.out_destroy.i_crit_edge, %if.then8.i.i150, %if.then2.i.i146, %cleanup.thread.i, %if.end.i138.out_destroy.i_crit_edge
  %error.1.i = phi i32 [ %call2.i, %if.end.i138.out_destroy.i_crit_edge ], [ -11, %if.then115.i ], [ -11, %if.end82.i.out_destroy.i_crit_edge ], [ -11, %if.end34.i152.out_destroy.i_crit_edge ], [ %error.0.ph.i, %cleanup.thread.i ], [ -117, %if.then8.i.i150 ], [ -117, %if.then2.i.i146 ], [ -2, %if.end12.i.i151.out_destroy.i_crit_edge ]
  %i_vnode.i174.i = getelementptr inbounds %struct.xfs_inode, ptr %call.i135, i32 0, i32 27
  call void @__destroy_inode(ptr noundef %i_vnode.i174.i) #12
  %i_flags_lock.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call.i135, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i.i.i) #12
  %i_flags.i.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %call.i135, i32 0, i32 16
  %246 = ptrtoint ptr %i_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %i_flags.i.i.i.i, align 8
  %and.i.i.i.i = and i32 %247, 128
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i175.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i175.i, label %out_destroy.i.xfs_inode_free.exit.i_crit_edge, label %cond.false.i.i, !prof !162

out_destroy.i.xfs_inode_free.exit.i_crit_edge:    ; preds = %out_destroy.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_inode_free.exit.i

cond.false.i.i:                                   ; preds = %out_destroy.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 166) #12
  br label %xfs_inode_free.exit.i

xfs_inode_free.exit.i:                            ; preds = %cond.false.i.i, %out_destroy.i.xfs_inode_free.exit.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i.i.i) #12
  %248 = ptrtoint ptr %i_flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 1, ptr %i_flags.i.i.i.i, align 8
  %249 = ptrtoint ptr %i_ino.i137 to i32
  call void @__asan_store8_noabort(i32 %249)
  store i64 0, ptr %i_ino.i137, align 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i.i.i) #12
  call fastcc void @__xfs_inode_free(ptr noundef nonnull %call.i135) #12
  br label %out_error_or_again

xfs_iget_cache_miss.exit:                         ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef %pag_ici_lock.i) #12
  %250 = call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %250, -16384
  %251 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %251, i32 0, i32 3
  %252 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i158 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %253
  %254 = ptrtoint ptr %arrayidx.i.i158 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx.i.i158, align 4
  %add.i.i159 = add i32 %255, ptrtoint (ptr @radix_tree_preloads to i32)
  %256 = inttoptr i32 %add.i.i159 to ptr
  call fastcc void @local_lock_release(ptr noundef %256) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !169
  %257 = call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i.i160 = and i32 %257, -16384
  %258 = inttoptr i32 %and.i.i.i.i.i160 to ptr
  %preempt_count.i.i.i.i161 = getelementptr inbounds %struct.thread_info, ptr %258, i32 0, i32 1
  %259 = ptrtoint ptr %preempt_count.i.i.i.i161 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load volatile i32, ptr %preempt_count.i.i.i.i161, align 4
  %sub.i.i.i162 = add i32 %260, -1
  store volatile i32 %sub.i.i.i162, ptr %preempt_count.i.i.i.i161, align 4
  br label %if.end79

if.end79:                                         ; preds = %xfs_iget_cache_miss.exit, %xfs_iget_cache_hit.exit
  %ip.1 = phi ptr [ %call.i135, %xfs_iget_cache_miss.exit ], [ %call34, %xfs_iget_cache_hit.exit ]
  call void @xfs_perag_put(ptr noundef %call27) #12
  %261 = ptrtoint ptr %ipp to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %ip.1, ptr %ipp, align 4
  %i_flags_lock.i164 = getelementptr inbounds %struct.xfs_inode, ptr %ip.1, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i164) #12
  %i_flags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip.1, i32 0, i32 16
  %262 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %i_flags.i.i, align 8
  %and.i.i165 = and i32 %263, 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i164) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i165)
  %tobool81.not = icmp eq i32 %and.i.i165, 0
  br i1 %tobool81.not, label %if.end79.cleanup_crit_edge, label %land.lhs.true

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end79
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip.1, i32 0, i32 27
  %264 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %i_vnode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %265)
  %cmp84.not = icmp eq i16 %265, 0
  br i1 %cmp84.not, label %land.lhs.true.cleanup_crit_edge, label %if.then86

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then86:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void @xfs_setup_inode(ptr noundef nonnull %ip.1) #12
  call void @xfs_setup_iops(ptr noundef nonnull %ip.1) #12
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i164) #12
  %266 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %i_flags.i.i, align 8
  %and.i.i.i168 = and i32 %267, -9
  store i32 %and.i.i.i168, ptr %i_flags.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i164) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !170
  call void @unlock_new_inode(ptr noundef %i_vnode.i) #12
  br label %cleanup

out_error_or_again:                               ; preds = %xfs_inode_free.exit.i, %if.end.i143.i.out_error_or_again_crit_edge, %if.then95.i.out_error_or_again_crit_edge, %rcu_read_unlock.exit140.i.out_error_or_again_crit_edge, %rcu_read_unlock.exit.i, %xfs_iget_recycle.exit
  %error.0 = phi i32 [ -11, %if.then95.i.out_error_or_again_crit_edge ], [ -11, %rcu_read_unlock.exit140.i.out_error_or_again_crit_edge ], [ %call1.i62.i, %xfs_iget_recycle.exit ], [ %error.0.i, %rcu_read_unlock.exit.i ], [ %error.1.i, %xfs_inode_free.exit.i ], [ -11, %if.end.i143.i.out_error_or_again_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %error.0)
  %cmp91 = icmp eq i32 %error.0, -11
  %or.cond = select i1 %tobool17.not.i, i1 %cmp91, i1 false
  br i1 %or.cond, label %if.then93, label %out_error_or_again.if.end94_crit_edge

out_error_or_again.if.end94_crit_edge:            ; preds = %out_error_or_again
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

if.then93:                                        ; preds = %out_error_or_again
  call void @__sanitizer_cov_trace_pc() #14
  %call.i169 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #12
  br label %again

if.end94:                                         ; preds = %out_error_or_again.if.end94_crit_edge, %do.body46.if.end94_crit_edge, %rcu_read_unlock.exit.if.end94_crit_edge
  %error.0222 = phi i32 [ %error.0, %out_error_or_again.if.end94_crit_edge ], [ -61, %rcu_read_unlock.exit.if.end94_crit_edge ], [ -12, %do.body46.if.end94_crit_edge ]
  call void @xfs_perag_put(ptr noundef %call27) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.then86, %land.lhs.true.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0222, %if.end94 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %cond.end.cleanup_crit_edge ], [ 0, %if.then86 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end79.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_perag_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_perag_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_icache_inode_is_allocated(ptr noundef %mp, ptr noundef %tp, i64 noundef %ino, ptr nocapture noundef writeonly %inuse) local_unnamed_addr #0 align 64 {
entry:
  %ip = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip) #12
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ip, align 4, !annotation !166
  %call = call i32 @xfs_iget(ptr noundef %mp, ptr noundef %tp, i64 noundef %ino, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %ip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ip, align 4
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %i_vnode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool2 = icmp ne i16 %4, 0
  %frombool = zext i1 %tobool2 to i8
  %5 = ptrtoint ptr %inuse to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %inuse, align 1
  tail call void @xfs_irele(ptr noundef %2) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_irele(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_reclaim_inodes(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  %icw = alloca %struct.xfs_icwalk, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %icw) #12
  %0 = call ptr @memset(ptr %icw, i32 0, i32 32)
  %m_opstate.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %1 = ptrtoint ptr %m_opstate.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %m_opstate.i.i, align 4
  %and1.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false.i:                                  ; preds = %entry
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %3 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %4, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i5.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i5.not.i, label %xfs_want_reclaim_sick.exit, label %lor.lhs.false.i.if.then_crit_edge

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

xfs_want_reclaim_sick.exit:                       ; preds = %lor.lhs.false.i
  %5 = ptrtoint ptr %m_opstate.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %m_opstate.i.i, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i7.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i7.i.not, label %xfs_want_reclaim_sick.exit.if.end_crit_edge, label %xfs_want_reclaim_sick.exit.if.then_crit_edge

xfs_want_reclaim_sick.exit.if.then_crit_edge:     ; preds = %xfs_want_reclaim_sick.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

xfs_want_reclaim_sick.exit.if.end_crit_edge:      ; preds = %xfs_want_reclaim_sick.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %xfs_want_reclaim_sick.exit.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %icw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %icw, align 8
  %or = or i32 %9, 134217728
  store i32 %or, ptr %icw, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %xfs_want_reclaim_sick.exit.if.end_crit_edge
  %m_perag_tree = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 82
  %call17 = call i32 @radix_tree_tagged(ptr noundef %m_perag_tree, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not8 = icmp eq i32 %call17, 0
  br i1 %tobool.not8, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %m_ail = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %xfs_icwalk.exit.while.body_crit_edge, %while.body.lr.ph
  %10 = ptrtoint ptr %m_ail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m_ail, align 4
  call void @xfs_ail_push_all_sync(ptr noundef %11) #12
  %call.i = call ptr @xfs_perag_get_tag(ptr noundef %mp, i32 noundef 0, i32 noundef 0) #12
  %cmp.not17.i = icmp eq ptr %call.i, null
  br i1 %cmp.not17.i, label %while.body.xfs_icwalk.exit_crit_edge, label %while.body.for.body.i_crit_edge

while.body.for.body.i_crit_edge:                  ; preds = %while.body
  br label %for.body.i

while.body.xfs_icwalk.exit_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_icwalk.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.body.for.body.i_crit_edge
  %pag.018.i = phi ptr [ %call5.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %while.body.for.body.i_crit_edge ]
  %call1.i = call fastcc i32 @xfs_icwalk_ag(ptr noundef nonnull %pag.018.i, i32 noundef 0, ptr noundef nonnull %icw) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %call1.i)
  %cond = icmp eq i32 %call1.i, -117
  br i1 %cond, label %if.then3.i, label %for.inc.i

if.then3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @xfs_perag_put(ptr noundef nonnull %pag.018.i) #12
  br label %xfs_icwalk.exit

for.inc.i:                                        ; preds = %for.body.i
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %pag.018.i, i32 0, i32 1
  %12 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pag_agno.i, align 4
  %add.i = add i32 %13, 1
  call void @xfs_perag_put(ptr noundef nonnull %pag.018.i) #12
  %call5.i = call ptr @xfs_perag_get_tag(ptr noundef %mp, i32 noundef %add.i, i32 noundef 0) #12
  %cmp.not.i = icmp eq ptr %call5.i, null
  br i1 %cmp.not.i, label %for.inc.i.xfs_icwalk.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.xfs_icwalk.exit_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_icwalk.exit

xfs_icwalk.exit:                                  ; preds = %for.inc.i.xfs_icwalk.exit_crit_edge, %if.then3.i, %while.body.xfs_icwalk.exit_crit_edge
  %call1 = call i32 @radix_tree_tagged(ptr noundef %m_perag_tree, i32 noundef 0) #12
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %xfs_icwalk.exit.while.end_crit_edge, label %xfs_icwalk.exit.while.body_crit_edge

xfs_icwalk.exit.while.body_crit_edge:             ; preds = %xfs_icwalk.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

xfs_icwalk.exit.while.end_crit_edge:              ; preds = %xfs_icwalk.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %xfs_icwalk.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %icw) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_tagged(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ail_push_all_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_reclaim_inodes_nr(ptr noundef %mp, i32 noundef %nr_to_scan) local_unnamed_addr #0 align 64 {
entry:
  %icw = alloca %struct.xfs_icwalk, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %icw) #12
  %0 = call ptr @memset(ptr %icw, i32 0, i32 32)
  %1 = ptrtoint ptr %icw to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 268435456, ptr %icw, align 8
  %icw_scan_limit = getelementptr inbounds %struct.xfs_icwalk, ptr %icw, i32 0, i32 5
  %2 = tail call i32 @llvm.umin.i32(i32 %nr_to_scan, i32 2147483647)
  %3 = ptrtoint ptr %icw_scan_limit to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %icw_scan_limit, align 8
  %m_opstate.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %4 = ptrtoint ptr %m_opstate.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %m_opstate.i.i, align 4
  %and1.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false.i:                                  ; preds = %entry
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %6 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %7, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i5.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i5.not.i, label %xfs_want_reclaim_sick.exit, label %lor.lhs.false.i.if.then_crit_edge

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

xfs_want_reclaim_sick.exit:                       ; preds = %lor.lhs.false.i
  %8 = ptrtoint ptr %m_opstate.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %m_opstate.i.i, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i7.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i7.i.not, label %xfs_want_reclaim_sick.exit.if.end_crit_edge, label %xfs_want_reclaim_sick.exit.if.then_crit_edge

xfs_want_reclaim_sick.exit.if.then_crit_edge:     ; preds = %xfs_want_reclaim_sick.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

xfs_want_reclaim_sick.exit.if.end_crit_edge:      ; preds = %xfs_want_reclaim_sick.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %xfs_want_reclaim_sick.exit.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %entry.if.then_crit_edge
  %11 = ptrtoint ptr %icw to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 402653184, ptr %icw, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %xfs_want_reclaim_sick.exit.if.end_crit_edge
  tail call fastcc void @xfs_reclaim_work_queue(ptr noundef %mp)
  %m_ail = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 2
  %12 = ptrtoint ptr %m_ail to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m_ail, align 4
  tail call void @xfs_ail_push_all(ptr noundef %13) #12
  %call.i = tail call ptr @xfs_perag_get_tag(ptr noundef %mp, i32 noundef 0, i32 noundef 0) #12
  %cmp.not17.i = icmp eq ptr %call.i, null
  br i1 %cmp.not17.i, label %if.end.xfs_icwalk.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.xfs_icwalk.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_icwalk.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %pag.018.i = phi ptr [ %call5.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %if.end.for.body.i_crit_edge ]
  %call1.i = call fastcc i32 @xfs_icwalk_ag(ptr noundef nonnull %pag.018.i, i32 noundef 0, ptr noundef nonnull %icw) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %call1.i)
  %cond = icmp eq i32 %call1.i, -117
  br i1 %cond, label %if.then3.i, label %for.inc.i

if.then3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @xfs_perag_put(ptr noundef nonnull %pag.018.i) #12
  br label %xfs_icwalk.exit

for.inc.i:                                        ; preds = %for.body.i
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %pag.018.i, i32 0, i32 1
  %14 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pag_agno.i, align 4
  %add.i = add i32 %15, 1
  call void @xfs_perag_put(ptr noundef nonnull %pag.018.i) #12
  %call5.i = call ptr @xfs_perag_get_tag(ptr noundef %mp, i32 noundef %add.i, i32 noundef 0) #12
  %cmp.not.i = icmp eq ptr %call5.i, null
  br i1 %cmp.not.i, label %for.inc.i.xfs_icwalk.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.xfs_icwalk.exit_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_icwalk.exit

xfs_icwalk.exit:                                  ; preds = %for.inc.i.xfs_icwalk.exit_crit_edge, %if.then3.i, %if.end.xfs_icwalk.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %icw) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_reclaim_work_queue(ptr noundef %mp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !163
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %m_perag_tree = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 82
  %call = tail call i32 @radix_tree_tagged(ptr noundef %m_perag_tree, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end_crit_edge, label %if.then

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %m_reclaim_workqueue = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 22
  %4 = ptrtoint ptr %m_reclaim_workqueue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_reclaim_workqueue, align 32
  %m_reclaim_work = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 4, i32 1) to i32))
  %6 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 4, i32 1), align 4
  %div = sdiv i32 %6, 6
  %mul = mul i32 %div, 10
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #12
  %call.i6 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %m_reclaim_work, i32 noundef %call2.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %rcu_read_lock.exit.if.end_crit_edge
  %call.i7 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i7, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i10

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i10:                                ; preds = %if.end
  %call1.i8 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.22) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !164
  %7 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i.i14 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i14 to ptr
  %preempt_count.i.i.i.i15 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i15, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i15, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ail_push_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_reclaim_inodes_count(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call5 = tail call ptr @xfs_perag_get_tag(ptr noundef %mp, i32 noundef 0, i32 noundef 0) #12
  %tobool.not6 = icmp eq ptr %call5, null
  br i1 %tobool.not6, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call8 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call5, %entry.while.body_crit_edge ]
  %reclaimable.07 = phi i32 [ %add1, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %call8, i32 0, i32 1
  %0 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pag_agno, align 4
  %add = add i32 %1, 1
  %pag_ici_reclaimable = getelementptr inbounds %struct.xfs_perag, ptr %call8, i32 0, i32 33
  %2 = ptrtoint ptr %pag_ici_reclaimable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pag_ici_reclaimable, align 4
  %add1 = add i32 %3, %reclaimable.07
  tail call void @xfs_perag_put(ptr noundef nonnull %call8) #12
  %call = tail call ptr @xfs_perag_get_tag(ptr noundef %mp, i32 noundef %add, i32 noundef 0) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %reclaimable.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %add1, %while.body.while.end_crit_edge ]
  ret i32 %reclaimable.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_perag_get_tag(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_reclaim_worker(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1616
  %call.i = tail call ptr @xfs_perag_get_tag(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 0) #12
  %cmp.not17.i = icmp eq ptr %call.i, null
  br i1 %cmp.not17.i, label %entry.xfs_icwalk.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.xfs_icwalk.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_icwalk.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %pag.018.i = phi ptr [ %call5.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %call1.i = tail call fastcc i32 @xfs_icwalk_ag(ptr noundef nonnull %pag.018.i, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %call1.i)
  %cond = icmp eq i32 %call1.i, -117
  br i1 %cond, label %if.then3.i, label %for.inc.i

if.then3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @xfs_perag_put(ptr noundef nonnull %pag.018.i) #12
  br label %xfs_icwalk.exit

for.inc.i:                                        ; preds = %for.body.i
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %pag.018.i, i32 0, i32 1
  %0 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pag_agno.i, align 4
  %add.i = add i32 %1, 1
  tail call void @xfs_perag_put(ptr noundef nonnull %pag.018.i) #12
  %call5.i = tail call ptr @xfs_perag_get_tag(ptr noundef %add.ptr, i32 noundef %add.i, i32 noundef 0) #12
  %cmp.not.i = icmp eq ptr %call5.i, null
  br i1 %cmp.not.i, label %for.inc.i.xfs_icwalk.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.xfs_icwalk.exit_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_icwalk.exit

xfs_icwalk.exit:                                  ; preds = %for.inc.i.xfs_icwalk.exit_crit_edge, %if.then3.i, %entry.xfs_icwalk.exit_crit_edge
  tail call fastcc void @xfs_reclaim_work_queue(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_inode_set_eofblocks_tag(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_xfs_inode_set_eofblocks_tag(ptr noundef %ip)
  tail call fastcc void @xfs_blockgc_set_iflag(ptr noundef %ip, i32 noundef 512)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_inode_set_eofblocks_tag(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_set_eofblocks_tag, i32 0, i32 1), ptr blockaddress(@trace_xfs_inode_set_eofblocks_tag, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !172
  %call42 = tail call i32 @__traceiter_xfs_inode_set_eofblocks_tag(ptr noundef null, ptr noundef %ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !173
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_set_eofblocks_tag, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_set_eofblocks_tag, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_inode_set_eofblocks_tag.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_inode_set_eofblocks_tag.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 777, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
define internal fastcc void @xfs_blockgc_set_iflag(ptr noundef %ip, i32 noundef %iflag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %and = and i32 %iflag, -4609
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !162

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 1164) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %i_flags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 16
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 8
  %and2 = and i32 %3, %iflag
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %i_flags_lock = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock) #12
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 8
  %or = or i32 %5, %iflag
  store i32 %or, ptr %i_flags, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock) #12
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_ino, align 8
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 15
  %8 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %9 to i64
  %shr = lshr i64 %7, %sh_prom
  %conv = trunc i64 %shr to i32
  %call = tail call ptr @xfs_perag_get(ptr noundef %1, i32 noundef %conv) #12
  %pag_ici_lock = getelementptr inbounds %struct.xfs_perag, ptr %call, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %pag_ici_lock) #12
  %10 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_ino, align 8
  %conv7 = trunc i64 %11 to i32
  %12 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %agino_log, align 8
  %sh_prom10 = zext i32 %13 to i64
  %notmask = shl nsw i64 -1, %sh_prom10
  %14 = trunc i64 %notmask to i32
  %conv11 = xor i32 %14, -1
  %and12 = and i32 %conv11, %conv7
  tail call fastcc void @xfs_perag_set_inode_tag(ptr noundef %call, i32 noundef %and12, i32 noundef 1)
  tail call void @_raw_spin_unlock(ptr noundef %pag_ici_lock) #12
  tail call void @xfs_perag_put(ptr noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_inode_clear_eofblocks_tag(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_xfs_inode_clear_eofblocks_tag(ptr noundef %ip)
  tail call fastcc void @xfs_blockgc_clear_iflag(ptr noundef %ip, i32 noundef 512)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_inode_clear_eofblocks_tag(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_clear_eofblocks_tag, i32 0, i32 1), ptr blockaddress(@trace_xfs_inode_clear_eofblocks_tag, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !176
  %call42 = tail call i32 @__traceiter_xfs_inode_clear_eofblocks_tag(ptr noundef null, ptr noundef %ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !177
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_clear_eofblocks_tag, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_clear_eofblocks_tag, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_inode_clear_eofblocks_tag.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_inode_clear_eofblocks_tag.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 778, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
define internal fastcc void @xfs_blockgc_clear_iflag(ptr noundef %ip, i32 noundef %iflag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %and = and i32 %iflag, -4609
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !162

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 1203) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %i_flags_lock = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock) #12
  %neg = xor i32 %iflag, -1
  %i_flags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 16
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 8
  %and2 = and i32 %3, %neg
  store i32 %and2, ptr %i_flags, align 8
  %and4 = and i32 %and2, 4608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp5 = icmp eq i32 %and4, 0
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock) #12
  br i1 %cmp5, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_ino, align 8
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 15
  %6 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %7 to i64
  %shr = lshr i64 %5, %sh_prom
  %conv = trunc i64 %shr to i32
  %call = tail call ptr @xfs_perag_get(ptr noundef %1, i32 noundef %conv) #12
  %pag_ici_lock = getelementptr inbounds %struct.xfs_perag, ptr %call, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %pag_ici_lock) #12
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_ino, align 8
  %conv9 = trunc i64 %9 to i32
  %10 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %agino_log, align 8
  %sh_prom12 = zext i32 %11 to i64
  %notmask = shl nsw i64 -1, %sh_prom12
  %12 = trunc i64 %notmask to i32
  %conv13 = xor i32 %12, -1
  %and14 = and i32 %conv13, %conv9
  tail call fastcc void @xfs_perag_clear_inode_tag(ptr noundef %call, i32 noundef %and14, i32 noundef 1)
  tail call void @_raw_spin_unlock(ptr noundef %pag_ici_lock) #12
  tail call void @xfs_perag_put(ptr noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_inode_set_cowblocks_tag(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_xfs_inode_set_cowblocks_tag(ptr noundef %ip)
  tail call fastcc void @xfs_blockgc_set_iflag(ptr noundef %ip, i32 noundef 4096)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_inode_set_cowblocks_tag(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_set_cowblocks_tag, i32 0, i32 1), ptr blockaddress(@trace_xfs_inode_set_cowblocks_tag, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !178
  %call42 = tail call i32 @__traceiter_xfs_inode_set_cowblocks_tag(ptr noundef null, ptr noundef %ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !179
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_set_cowblocks_tag, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_set_cowblocks_tag, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_inode_set_cowblocks_tag.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_inode_set_cowblocks_tag.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 780, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
define dso_local void @xfs_inode_clear_cowblocks_tag(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_xfs_inode_clear_cowblocks_tag(ptr noundef %ip)
  tail call fastcc void @xfs_blockgc_clear_iflag(ptr noundef %ip, i32 noundef 4096)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_inode_clear_cowblocks_tag(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_clear_cowblocks_tag, i32 0, i32 1), ptr blockaddress(@trace_xfs_inode_clear_cowblocks_tag, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !180
  %call42 = tail call i32 @__traceiter_xfs_inode_clear_cowblocks_tag(ptr noundef null, ptr noundef %ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !181
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_clear_cowblocks_tag, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_clear_cowblocks_tag, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_inode_clear_cowblocks_tag.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_inode_clear_cowblocks_tag.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 781, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
define dso_local void @xfs_blockgc_stop(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %m_opstate.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @xfs_perag_get(ptr noundef %mp, i32 noundef 0) #12
  %cmp.not11 = icmp eq ptr %call1, null
  br i1 %cmp.not11, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %xfs_perag_next.exit.for.body_crit_edge, %for.body.lr.ph
  %pag.012 = phi ptr [ %call1, %for.body.lr.ph ], [ %call.i10, %xfs_perag_next.exit.for.body_crit_edge ]
  %pag_blockgc_work = getelementptr inbounds %struct.xfs_perag, ptr %pag.012, i32 0, i32 37
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %pag_blockgc_work) #12
  %0 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sb_agcount, align 8
  %sub = add i32 %1, -1
  %2 = ptrtoint ptr %pag.012 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pag.012, align 4
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %pag.012, i32 0, i32 1
  %4 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pag_agno.i, align 4
  %add.i = add i32 %5, 1
  tail call void @xfs_perag_put(ptr noundef nonnull %pag.012) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub)
  %cmp.i = icmp ugt i32 %add.i, %sub
  br i1 %cmp.i, label %for.body.for.end_crit_edge, label %xfs_perag_next.exit

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

xfs_perag_next.exit:                              ; preds = %for.body
  %call.i10 = tail call ptr @xfs_perag_get(ptr noundef %3, i32 noundef %add.i) #12
  %cmp.not = icmp eq ptr %call.i10, null
  br i1 %cmp.not, label %xfs_perag_next.exit.for.end_crit_edge, label %xfs_perag_next.exit.for.body_crit_edge

xfs_perag_next.exit.for.body_crit_edge:           ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

xfs_perag_next.exit.for.end_crit_edge:            ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %xfs_perag_next.exit.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %6 = tail call ptr @llvm.returnaddress(i32 0)
  tail call fastcc void @trace_xfs_blockgc_stop(ptr noundef %mp, ptr noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_blockgc_stop(ptr noundef %mp, ptr noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_blockgc_stop, i32 0, i32 1), ptr blockaddress(@trace_xfs_blockgc_stop, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !182
  %call42 = tail call i32 @__traceiter_xfs_blockgc_stop(ptr noundef null, ptr noundef %mp, ptr noundef %caller_ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !183
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_blockgc_stop, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_blockgc_stop, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_blockgc_stop.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_blockgc_stop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 249, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
define dso_local void @xfs_blockgc_start(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %m_opstate.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  tail call fastcc void @trace_xfs_blockgc_start(ptr noundef %mp, ptr noundef %0)
  %call1 = tail call ptr @xfs_perag_get_tag(ptr noundef %mp, i32 noundef 0, i32 noundef 1) #12
  %cmp.not10 = icmp eq ptr %call1, null
  br i1 %cmp.not10, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %pag.011 = phi ptr [ %call2, %for.body.for.body_crit_edge ], [ %call1, %if.end.for.body_crit_edge ]
  tail call fastcc void @xfs_blockgc_queue(ptr noundef nonnull %pag.011)
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag.011, i32 0, i32 1
  %1 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pag_agno, align 4
  %add = add i32 %2, 1
  tail call void @xfs_perag_put(ptr noundef nonnull %pag.011) #12
  %call2 = tail call ptr @xfs_perag_get_tag(ptr noundef %mp, i32 noundef %add, i32 noundef 1) #12
  %cmp.not = icmp eq ptr %call2, null
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_blockgc_start(ptr noundef %mp, ptr noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_blockgc_start, i32 0, i32 1), ptr blockaddress(@trace_xfs_blockgc_start, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !184
  %call42 = tail call i32 @__traceiter_xfs_blockgc_start(ptr noundef null, ptr noundef %mp, ptr noundef %caller_ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !185
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_blockgc_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_blockgc_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_blockgc_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_blockgc_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 248, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
define internal fastcc void @xfs_blockgc_queue(ptr noundef %pag) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %pag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pag, align 4
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %2 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %m_opstate.i, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !163
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %pag_ici_root = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 32
  %call1 = tail call i32 @radix_tree_tagged(ptr noundef %pag_ici_root, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end6_crit_edge, label %if.then2

rcu_read_lock.exit.if.end6_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then2:                                         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %pag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pag, align 4
  %m_blockgc_wq = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 24
  %11 = ptrtoint ptr %m_blockgc_wq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m_blockgc_wq, align 8
  %pag_blockgc_work = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 15, i32 1) to i32))
  %13 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 15, i32 1), align 4
  %mul = mul i32 %13, 1000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #12
  %call.i11 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %pag_blockgc_work, i32 noundef %call2.i) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %rcu_read_lock.exit.if.end6_crit_edge
  %call.i12 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i12, label %if.end6.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i15

if.end6.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i15:                                ; preds = %if.end6
  %call1.i13 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool.not.i14 = icmp eq i32 %call1.i13, 0
  br i1 %tobool.not.i14, label %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i17

land.lhs.true.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i17:                               ; preds = %land.lhs.true.i15
  %.b4.i16 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i16, label %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, label %if.then.i18

land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i18:                                      ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.22) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i18, %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, %if.end6.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !164
  %14 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i.i19 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i19 to ptr
  %preempt_count.i.i.i.i20 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i20, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i20, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_blockgc_worker(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -628
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  tail call fastcc void @trace_xfs_blockgc_worker(ptr noundef %1, ptr noundef %2)
  %call1 = tail call fastcc i32 @xfs_icwalk_ag(ptr noundef %add.ptr, i32 noundef 1, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pag_agno = getelementptr i8, ptr %work, i32 -624
  %3 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pag_agno, align 4
  tail call void (ptr, ptr, ...) @xfs_info(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %4, i32 noundef %call1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @xfs_blockgc_queue(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_blockgc_worker(ptr noundef %mp, ptr noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_blockgc_worker, i32 0, i32 1), ptr blockaddress(@trace_xfs_blockgc_worker, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !186
  %call42 = tail call i32 @__traceiter_xfs_blockgc_worker(ptr noundef null, ptr noundef %mp, ptr noundef %caller_ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !187
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_blockgc_worker, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_blockgc_worker, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_blockgc_worker.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_blockgc_worker.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 250, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
define internal fastcc i32 @xfs_icwalk_ag(ptr noundef %pag, i32 noundef %goal, ptr noundef %icw) unnamed_addr #0 align 64 {
entry:
  %lockflags.i.i = alloca i32, align 4
  %batch = alloca [32 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %goal)
  %cmp = icmp eq i32 %goal, 0
  %pag_ici_root = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 32
  %tobool9.not.i.i = icmp eq ptr %icw, null
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 15
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %pag_ici_lock.i.i = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 31
  %icw_scan_limit = getelementptr inbounds %struct.xfs_icwalk, ptr %icw, i32 0, i32 5
  %pag_ici_reclaim_cursor = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 34
  br label %restart

restart:                                          ; preds = %if.then101, %entry
  %last_error.0 = phi i32 [ 0, %entry ], [ %last_error.4211, %if.then101 ]
  br i1 %cmp, label %do.end, label %restart.do.body1.preheader_crit_edge

restart.do.body1.preheader_crit_edge:             ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1.preheader

do.end:                                           ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %pag_ici_reclaim_cursor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %pag_ici_reclaim_cursor, align 4
  br label %do.body1.preheader

do.body1.preheader:                               ; preds = %do.end, %restart.do.body1.preheader_crit_edge
  %first_index.1.ph = phi i32 [ %3, %do.end ], [ 0, %restart.do.body1.preheader_crit_edge ]
  br label %do.body1

do.body1:                                         ; preds = %cleanup74.do.body1_crit_edge, %do.body1.preheader
  %last_error.1 = phi i32 [ %last_error.2.lcssa258, %cleanup74.do.body1_crit_edge ], [ %last_error.0, %do.body1.preheader ]
  %skipped.0 = phi i32 [ %skipped.1.lcssa260, %cleanup74.do.body1_crit_edge ], [ 0, %do.body1.preheader ]
  %first_index.1 = phi i32 [ %first_index.2.lcssa, %cleanup74.do.body1_crit_edge ], [ %first_index.1.ph, %do.body1.preheader ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %batch) #12
  %4 = call ptr @memset(ptr %batch, i32 255, i32 128)
  %5 = call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !163
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %do.body1.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.body1.rcu_read_lock.exit_crit_edge:            ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.body1
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #12
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.body1.rcu_read_lock.exit_crit_edge
  %call = call i32 @radix_tree_gang_lookup_tag(ptr noundef %pag_ici_root, ptr noundef nonnull %batch, i32 noundef %first_index.1, i32 noundef 32, i32 noundef %goal) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then2, label %for.cond.preheader

for.cond.preheader:                               ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4226 = icmp sgt i32 %call, 0
  br i1 %cmp4226, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then2:                                         ; preds = %rcu_read_lock.exit
  %call.i158 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i158, label %if.then2.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i161

if.then2.rcu_read_unlock.exit_crit_edge:          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i161:                               ; preds = %if.then2
  %call1.i159 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i159)
  %tobool.not.i160 = icmp eq i32 %call1.i159, 0
  br i1 %tobool.not.i160, label %land.lhs.true.i161.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i163

land.lhs.true.i161.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i161
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i163:                              ; preds = %land.lhs.true.i161
  %.b4.i162 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i162, label %land.lhs.true2.i163.rcu_read_unlock.exit_crit_edge, label %if.then.i164

land.lhs.true2.i163.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i163
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i164:                                     ; preds = %land.lhs.true2.i163
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.22) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i164, %land.lhs.true2.i163.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i161.rcu_read_unlock.exit_crit_edge, %if.then2.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !164
  %9 = call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i.i165 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i165 to ptr
  %preempt_count.i.i.i.i166 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i166, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i166, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup74.thread

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0229 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %first_index.2228 = phi i32 [ %first_index.3, %cleanup.for.body_crit_edge ], [ %first_index.1, %for.cond.preheader.for.body_crit_edge ]
  %brmerge156227 = phi i1 [ %done.3.off0, %cleanup.for.body_crit_edge ], [ false, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr %batch, i32 0, i32 %i.0229
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  br i1 %brmerge156227, label %for.body.if.then7_crit_edge, label %lor.lhs.false

for.body.if.then7_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

lor.lhs.false:                                    ; preds = %for.body
  %15 = zext i32 %goal to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %goal, label %lor.lhs.false.if.then7_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb1.i
  ]

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

sw.bb.i:                                          ; preds = %lor.lhs.false
  %i_vnode.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %14, i32 0, i32 27
  %call1.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %sw.bb.i.cond.end.i.i_crit_edge, !prof !165

sw.bb.i.cond.end.i.i_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 1388) #12
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %sw.bb.i.cond.end.i.i_crit_edge
  %i_flags_lock.i.i = getelementptr inbounds %struct.xfs_inode, ptr %14, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i.i) #12
  %i_ino.i.i = getelementptr inbounds %struct.xfs_inode, ptr %14, i32 0, i32 4
  %16 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_ino.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool4.not.i.i = icmp eq i64 %17, 0
  br i1 %tobool4.not.i.i, label %cond.end.i.i.if.then7.sink.split_crit_edge, label %if.end.i.i

cond.end.i.i.if.then7.sink.split_crit_edge:       ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.sink.split

if.end.i.i:                                       ; preds = %cond.end.i.i
  %i_flags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %14, i32 0, i32 16
  %18 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_flags.i.i, align 8
  %and.i.i = and i32 %19, 9229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %if.end.i.i.if.then7.sink.split_crit_edge

if.end.i.i.if.then7.sink.split_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.sink.split

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i.i) #12
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %14, align 8
  %m_opstate.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %21, i32 0, i32 66
  %22 = ptrtoint ptr %m_opstate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %m_opstate.i.i.i, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i.i, label %xfs_icwalk_igrab.exit, label %if.end7.i.i.if.then7_crit_edge

if.end7.i.i.if.then7_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

sw.bb1.i:                                         ; preds = %lor.lhs.false
  %call.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i4.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i4.i, label %cond.false.i5.i, label %sw.bb1.i.cond.end.i7.i_crit_edge, !prof !165

sw.bb1.i.cond.end.i7.i_crit_edge:                 ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i7.i

cond.false.i5.i:                                  ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 830) #12
  br label %cond.end.i7.i

cond.end.i7.i:                                    ; preds = %cond.false.i5.i, %sw.bb1.i.cond.end.i7.i_crit_edge
  %i_flags_lock.i6.i = getelementptr inbounds %struct.xfs_inode, ptr %14, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i6.i) #12
  %i_flags.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %14, i32 0, i32 16
  %25 = ptrtoint ptr %i_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_flags.i.i.i, align 8
  %27 = and i32 %26, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %if.end.i8.i, label %cond.end.i7.i.if.then7.sink.split_crit_edge

cond.end.i7.i.if.then7.sink.split_crit_edge:      ; preds = %cond.end.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.sink.split

if.end.i8.i:                                      ; preds = %cond.end.i7.i
  %i_sick.i.i = getelementptr inbounds %struct.xfs_inode, ptr %14, i32 0, i32 14
  %29 = ptrtoint ptr %i_sick.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %i_sick.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool8.not.i.i = icmp eq i16 %30, 0
  br i1 %tobool8.not.i.i, label %if.end.i8.i.xfs_reclaim_igrab.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i8.i.xfs_reclaim_igrab.exit.i_crit_edge:   ; preds = %if.end.i8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_reclaim_igrab.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i8.i
  br i1 %tobool9.not.i.i, label %land.lhs.true.i.i.if.then7.sink.split_crit_edge, label %lor.lhs.false10.i.i

land.lhs.true.i.i.if.then7.sink.split_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.sink.split

lor.lhs.false10.i.i:                              ; preds = %land.lhs.true.i.i
  %31 = ptrtoint ptr %icw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %icw, align 8
  %and.i9.i = and i32 %32, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9.i)
  %tobool11.not.i.i = icmp eq i32 %and.i9.i, 0
  br i1 %tobool11.not.i.i, label %lor.lhs.false10.i.i.if.then7.sink.split_crit_edge, label %lor.lhs.false10.i.i.xfs_reclaim_igrab.exit.i_crit_edge

lor.lhs.false10.i.i.xfs_reclaim_igrab.exit.i_crit_edge: ; preds = %lor.lhs.false10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_reclaim_igrab.exit.i

lor.lhs.false10.i.i.if.then7.sink.split_crit_edge: ; preds = %lor.lhs.false10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.sink.split

xfs_reclaim_igrab.exit.i:                         ; preds = %lor.lhs.false10.i.i.xfs_reclaim_igrab.exit.i_crit_edge, %if.end.i8.i.xfs_reclaim_igrab.exit.i_crit_edge
  %or.i.i.i = or i32 %26, 1
  %33 = ptrtoint ptr %i_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i.i.i, ptr %i_flags.i.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i6.i) #12
  br label %if.end9

xfs_icwalk_igrab.exit:                            ; preds = %if.end7.i.i
  %call12.i.i = call ptr @igrab(ptr noundef %i_vnode.i.i.i) #12
  %tobool13.not.i.i.not = icmp eq ptr %call12.i.i, null
  br i1 %tobool13.not.i.i.not, label %xfs_icwalk_igrab.exit.if.then7_crit_edge, label %xfs_icwalk_igrab.exit.if.end9_crit_edge

xfs_icwalk_igrab.exit.if.end9_crit_edge:          ; preds = %xfs_icwalk_igrab.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

xfs_icwalk_igrab.exit.if.then7_crit_edge:         ; preds = %xfs_icwalk_igrab.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.then7.sink.split:                              ; preds = %lor.lhs.false10.i.i.if.then7.sink.split_crit_edge, %land.lhs.true.i.i.if.then7.sink.split_crit_edge, %cond.end.i7.i.if.then7.sink.split_crit_edge, %if.end.i.i.if.then7.sink.split_crit_edge, %cond.end.i.i.if.then7.sink.split_crit_edge
  %i_flags_lock.i.i.sink = phi ptr [ %i_flags_lock.i.i, %if.end.i.i.if.then7.sink.split_crit_edge ], [ %i_flags_lock.i.i, %cond.end.i.i.if.then7.sink.split_crit_edge ], [ %i_flags_lock.i6.i, %cond.end.i7.i.if.then7.sink.split_crit_edge ], [ %i_flags_lock.i6.i, %lor.lhs.false10.i.i.if.then7.sink.split_crit_edge ], [ %i_flags_lock.i6.i, %land.lhs.true.i.i.if.then7.sink.split_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i.i.sink) #12
  br label %if.then7

if.then7:                                         ; preds = %if.then7.sink.split, %xfs_icwalk_igrab.exit.if.then7_crit_edge, %if.end7.i.i.if.then7_crit_edge, %lor.lhs.false.if.then7_crit_edge, %for.body.if.then7_crit_edge
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %xfs_icwalk_igrab.exit.if.end9_crit_edge, %xfs_reclaim_igrab.exit.i
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %14, i32 0, i32 4
  %35 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_ino, align 8
  %37 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %38 to i64
  %shr = lshr i64 %36, %sh_prom
  %conv = trunc i64 %shr to i32
  %39 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pag_agno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv)
  %cmp10.not = icmp eq i32 %40, %conv
  br i1 %cmp10.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %41 = trunc i64 %36 to i32
  %conv15 = add i32 %41, 1
  %notmask = shl nsw i64 -1, %sh_prom
  %42 = trunc i64 %notmask to i32
  %conv19 = xor i32 %42, -1
  %and = and i32 %conv15, %conv19
  %and28 = and i32 %conv19, %41
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and28)
  %cmp29 = icmp ult i32 %and, %and28
  %spec.select = select i1 %cmp29, i1 true, i1 %brmerge156227
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge
  %done.3.off0 = phi i1 [ %spec.select, %if.end13 ], [ %brmerge156227, %if.end9.cleanup_crit_edge ]
  %first_index.3 = phi i32 [ %and, %if.end13 ], [ %first_index.2228, %if.end9.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.0229, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %brmerge156.lcssa = phi i1 [ false, %for.cond.preheader.for.end_crit_edge ], [ %done.3.off0, %cleanup.for.end_crit_edge ]
  %first_index.2.lcssa = phi i32 [ %first_index.1, %for.cond.preheader.for.end_crit_edge ], [ %first_index.3, %cleanup.for.end_crit_edge ]
  %call.i167 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i167, label %for.end.rcu_read_unlock.exit177_crit_edge, label %land.lhs.true.i170

for.end.rcu_read_unlock.exit177_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit177

land.lhs.true.i170:                               ; preds = %for.end
  %call1.i168 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i168)
  %tobool.not.i169 = icmp eq i32 %call1.i168, 0
  br i1 %tobool.not.i169, label %land.lhs.true.i170.rcu_read_unlock.exit177_crit_edge, label %land.lhs.true2.i172

land.lhs.true.i170.rcu_read_unlock.exit177_crit_edge: ; preds = %land.lhs.true.i170
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit177

land.lhs.true2.i172:                              ; preds = %land.lhs.true.i170
  %.b4.i171 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i171, label %land.lhs.true2.i172.rcu_read_unlock.exit177_crit_edge, label %if.then.i173

land.lhs.true2.i172.rcu_read_unlock.exit177_crit_edge: ; preds = %land.lhs.true2.i172
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit177

if.then.i173:                                     ; preds = %land.lhs.true2.i172
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.22) #12
  br label %rcu_read_unlock.exit177

rcu_read_unlock.exit177:                          ; preds = %if.then.i173, %land.lhs.true2.i172.rcu_read_unlock.exit177_crit_edge, %land.lhs.true.i170.rcu_read_unlock.exit177_crit_edge, %for.end.rcu_read_unlock.exit177_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !164
  %43 = call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i.i174 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i174 to ptr
  %preempt_count.i.i.i.i175 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i175, align 4
  %sub.i.i.i176 = add i32 %46, -1
  store volatile i32 %sub.i.i.i176, ptr %preempt_count.i.i.i.i175, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br i1 %cmp4226, label %rcu_read_unlock.exit177.for.body36_crit_edge, label %rcu_read_unlock.exit177.if.end59_crit_edge

rcu_read_unlock.exit177.if.end59_crit_edge:       ; preds = %rcu_read_unlock.exit177
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

rcu_read_unlock.exit177.for.body36_crit_edge:     ; preds = %rcu_read_unlock.exit177
  br label %for.body36

for.body36:                                       ; preds = %for.inc53.for.body36_crit_edge, %rcu_read_unlock.exit177.for.body36_crit_edge
  %i.1239 = phi i32 [ %inc54, %for.inc53.for.body36_crit_edge ], [ 0, %rcu_read_unlock.exit177.for.body36_crit_edge ]
  %error.0238 = phi i32 [ %error.1, %for.inc53.for.body36_crit_edge ], [ 0, %rcu_read_unlock.exit177.for.body36_crit_edge ]
  %skipped.1235 = phi i32 [ %skipped.2, %for.inc53.for.body36_crit_edge ], [ %skipped.0, %rcu_read_unlock.exit177.for.body36_crit_edge ]
  %last_error.2232 = phi i32 [ %last_error.3, %for.inc53.for.body36_crit_edge ], [ %last_error.1, %rcu_read_unlock.exit177.for.body36_crit_edge ]
  %arrayidx37 = getelementptr [32 x ptr], ptr %batch, i32 0, i32 %i.1239
  %47 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx37, align 4
  %tobool38.not = icmp eq ptr %48, null
  br i1 %tobool38.not, label %for.body36.for.inc53_crit_edge, label %if.end40

for.body36.for.inc53_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc53

if.end40:                                         ; preds = %for.body36
  %49 = zext i32 %goal to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %goal, label %if.end40.for.inc53_crit_edge [
    i32 1, label %sw.bb.i180
    i32 0, label %sw.bb1.i185
  ]

if.end40.for.inc53_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc53

sw.bb.i180:                                       ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lockflags.i.i) #12
  %50 = ptrtoint ptr %lockflags.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %lockflags.i.i, align 4
  %call.i.i178 = call fastcc i32 @xfs_inode_free_eofblocks(ptr noundef nonnull %48, ptr noundef %icw, ptr noundef nonnull %lockflags.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i178)
  %tobool.not.i.i179 = icmp eq i32 %call.i.i178, 0
  br i1 %tobool.not.i.i179, label %if.end.i.i182, label %sw.bb.i180.unlock.i.i_crit_edge

sw.bb.i180.unlock.i.i_crit_edge:                  ; preds = %sw.bb.i180
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock.i.i

if.end.i.i182:                                    ; preds = %sw.bb.i180
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i181 = call fastcc i32 @xfs_inode_free_cowblocks(ptr noundef nonnull %48, ptr noundef %icw, ptr noundef nonnull %lockflags.i.i) #12
  br label %unlock.i.i

unlock.i.i:                                       ; preds = %if.end.i.i182, %sw.bb.i180.unlock.i.i_crit_edge
  %error.0.i.i = phi i32 [ %call.i.i178, %sw.bb.i180.unlock.i.i_crit_edge ], [ %call1.i.i181, %if.end.i.i182 ]
  %51 = ptrtoint ptr %lockflags.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %lockflags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool2.not.i.i = icmp eq i32 %52, 0
  br i1 %tobool2.not.i.i, label %unlock.i.i.xfs_icwalk_process_inode.exit_crit_edge, label %if.then3.i.i

unlock.i.i.xfs_icwalk_process_inode.exit_crit_edge: ; preds = %unlock.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_icwalk_process_inode.exit

if.then3.i.i:                                     ; preds = %unlock.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @xfs_iunlock(ptr noundef nonnull %48, i32 noundef %52) #12
  br label %xfs_icwalk_process_inode.exit

sw.bb1.i185:                                      ; preds = %if.end40
  %i_ino.i.i183 = getelementptr inbounds %struct.xfs_inode, ptr %48, i32 0, i32 4
  %53 = ptrtoint ptr %i_ino.i.i183 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %i_ino.i.i183, align 8
  %call.i3.i = call i32 @xfs_ilock_nowait(ptr noundef nonnull %48, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool.not.i4.i184 = icmp eq i32 %call.i3.i, 0
  br i1 %tobool.not.i4.i184, label %sw.bb1.i185.out.i.i_crit_edge, label %if.end.i5.i

sw.bb1.i185.out.i.i_crit_edge:                    ; preds = %sw.bb1.i185
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i

if.end.i5.i:                                      ; preds = %sw.bb1.i185
  %i_flags_lock.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %48, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i.i.i) #12
  %i_flags.i.i.i186 = getelementptr inbounds %struct.xfs_inode, ptr %48, i32 0, i32 16
  %55 = ptrtoint ptr %i_flags.i.i.i186 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i_flags.i.i.i186, align 8
  %and.i.i.i = and i32 %56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end4.i.i, label %if.end.i5.i.out_iunlock.i.i_crit_edge

if.end.i5.i.out_iunlock.i.i_crit_edge:            ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_iunlock.i.i

if.end4.i.i:                                      ; preds = %if.end.i5.i
  %or.i.i.i187 = or i32 %56, 128
  %57 = ptrtoint ptr %i_flags.i.i.i186 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or.i.i.i187, ptr %i_flags.i.i.i186, align 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i.i.i) #12
  %58 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %48, align 8
  %m_opstate.i.i.i188 = getelementptr inbounds %struct.xfs_mount, ptr %59, i32 0, i32 66
  %60 = ptrtoint ptr %m_opstate.i.i.i188 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %m_opstate.i.i.i188, align 4
  %62 = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.i.not.i.i189 = icmp eq i32 %62, 0
  br i1 %tobool.i.not.i.i189, label %if.end7.i.i191, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @xfs_iunpin_wait(ptr noundef nonnull %48) #12
  call void @xfs_iflush_abort(ptr noundef nonnull %48) #12
  br label %reclaim.i.i

if.end7.i.i191:                                   ; preds = %if.end4.i.i
  %i_pincount.i.i = getelementptr inbounds %struct.xfs_inode, ptr %48, i32 0, i32 11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_pincount.i.i, i32 noundef 4) #12
  %63 = ptrtoint ptr %i_pincount.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %i_pincount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool9.not.i.i190 = icmp eq i32 %64, 0
  br i1 %tobool9.not.i.i190, label %if.end11.i.i192, label %if.end7.i.i191.out_clear_flush.i.i_crit_edge

if.end7.i.i191.out_clear_flush.i.i_crit_edge:     ; preds = %if.end7.i.i191
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_clear_flush.i.i

if.end11.i.i192:                                  ; preds = %if.end7.i.i191
  %i_itemp.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %48, i32 0, i32 9
  %65 = ptrtoint ptr %i_itemp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_itemp.i.i.i, align 8
  %tobool.not.i93.i.i = icmp eq ptr %66, null
  br i1 %tobool.not.i93.i.i, label %if.end11.i.i192.if.end15.i.i_crit_edge, label %xfs_inode_clean.exit.i.i

if.end11.i.i192.if.end15.i.i_crit_edge:           ; preds = %if.end11.i.i192
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i.i

xfs_inode_clean.exit.i.i:                         ; preds = %if.end11.i.i192
  %ili_fields.i.i.i = getelementptr inbounds %struct.xfs_inode_log_item, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %ili_fields.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ili_fields.i.i.i, align 8
  %and.i94.i.i = and i32 %68, 18399
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94.i.i)
  %tobool2.not.i.not.i.i = icmp eq i32 %and.i94.i.i, 0
  br i1 %tobool2.not.i.not.i.i, label %xfs_inode_clean.exit.i.i.if.end15.i.i_crit_edge, label %xfs_inode_clean.exit.i.i.out_clear_flush.i.i_crit_edge

xfs_inode_clean.exit.i.i.out_clear_flush.i.i_crit_edge: ; preds = %xfs_inode_clean.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_clear_flush.i.i

xfs_inode_clean.exit.i.i.if.end15.i.i_crit_edge:  ; preds = %xfs_inode_clean.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %xfs_inode_clean.exit.i.i.if.end15.i.i_crit_edge, %if.end11.i.i192.if.end15.i.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i.i.i) #12
  %69 = ptrtoint ptr %i_flags.i.i.i186 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %i_flags.i.i.i186, align 8
  %and.i97.i.i = and i32 %70, -129
  store i32 %and.i97.i.i, ptr %i_flags.i.i.i186, align 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i.i.i) #12
  br label %reclaim.i.i

reclaim.i.i:                                      ; preds = %if.end15.i.i, %if.then6.i.i
  call fastcc void @trace_xfs_inode_reclaiming(ptr noundef nonnull %48) #12
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i.i.i) #12
  %71 = ptrtoint ptr %i_flags.i.i.i186 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %i_flags.i.i.i186, align 8
  %72 = ptrtoint ptr %i_ino.i.i183 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 0, ptr %i_ino.i.i183, align 8
  %i_sick.i.i193 = getelementptr inbounds %struct.xfs_inode, ptr %48, i32 0, i32 14
  %73 = ptrtoint ptr %i_sick.i.i193 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %i_sick.i.i193, align 2
  %i_checked.i.i = getelementptr inbounds %struct.xfs_inode, ptr %48, i32 0, i32 13
  %74 = ptrtoint ptr %i_checked.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %i_checked.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i.i.i) #12
  call void @xfs_iunlock(ptr noundef nonnull %48, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %75 = load ptr, ptr @xfsstats, align 4
  %76 = ptrtoint ptr %75 to i32
  %77 = call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i98.i.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i98.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %80
  %81 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %82, %76
  %83 = inttoptr i32 %add.i.i to ptr
  %xs_ig_reclaims.i.i = getelementptr inbounds %struct.__xfsstats, ptr %83, i32 0, i32 31
  %84 = ptrtoint ptr %xs_ig_reclaims.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %xs_ig_reclaims.i.i, align 4
  %inc.i.i = add i32 %85, 1
  store i32 %inc.i.i, ptr %xs_ig_reclaims.i.i, align 4
  %86 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %48, align 8
  %m_stats.i.i = getelementptr inbounds %struct.xfs_mount, ptr %87, i32 0, i32 92
  %88 = ptrtoint ptr %m_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %m_stats.i.i, align 4
  %90 = ptrtoint ptr %89 to i32
  %91 = load i32, ptr %cpu.i.i, align 4
  %arrayidx31.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %91
  %92 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx31.i.i, align 4
  %add32.i.i = add i32 %93, %90
  %94 = inttoptr i32 %add32.i.i to ptr
  %xs_ig_reclaims33.i.i = getelementptr inbounds %struct.__xfsstats, ptr %94, i32 0, i32 31
  %95 = ptrtoint ptr %xs_ig_reclaims33.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %xs_ig_reclaims33.i.i, align 4
  %inc34.i.i = add i32 %96, 1
  store i32 %inc34.i.i, ptr %xs_ig_reclaims33.i.i, align 4
  call void @_raw_spin_lock(ptr noundef %pag_ici_lock.i.i) #12
  %conv.i.i = trunc i64 %54 to i32
  %97 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %48, align 8
  %agino_log.i.i = getelementptr inbounds %struct.xfs_mount, ptr %98, i32 0, i32 64, i32 15
  %99 = ptrtoint ptr %agino_log.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %agino_log.i.i, align 8
  %sh_prom.i.i = zext i32 %100 to i64
  %notmask.i.i = shl nsw i64 -1, %sh_prom.i.i
  %101 = trunc i64 %notmask.i.i to i32
  %conv38.i.i = xor i32 %101, -1
  %and.i.i194 = and i32 %conv38.i.i, %conv.i.i
  %call39.i.i = call ptr @radix_tree_delete(ptr noundef %pag_ici_root, i32 noundef %and.i.i194) #12
  %tobool40.not.i.i = icmp eq ptr %call39.i.i, null
  br i1 %tobool40.not.i.i, label %if.then41.i.i, label %reclaim.i.i.if.end42.i.i_crit_edge

reclaim.i.i.if.end42.i.i_crit_edge:               ; preds = %reclaim.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i.i

if.then41.i.i:                                    ; preds = %reclaim.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 920) #12
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then41.i.i, %reclaim.i.i.if.end42.i.i_crit_edge
  call fastcc void @xfs_perag_clear_inode_tag(ptr noundef %pag, i32 noundef -1, i32 noundef 0) #12
  call void @_raw_spin_unlock(ptr noundef %pag_ici_lock.i.i) #12
  call void @xfs_ilock(ptr noundef nonnull %48, i32 noundef 4) #12
  %i_udquot.i.i = getelementptr inbounds %struct.xfs_inode, ptr %48, i32 0, i32 1
  %102 = ptrtoint ptr %i_udquot.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %i_udquot.i.i, align 4
  %tobool44.not.i.i = icmp eq ptr %103, null
  br i1 %tobool44.not.i.i, label %land.lhs.true.i.i195, label %if.end42.i.i.cond.false.i.i196_crit_edge, !prof !162

if.end42.i.i.cond.false.i.i196_crit_edge:         ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false.i.i196

land.lhs.true.i.i195:                             ; preds = %if.end42.i.i
  %i_gdquot.i.i = getelementptr inbounds %struct.xfs_inode, ptr %48, i32 0, i32 2
  %104 = ptrtoint ptr %i_gdquot.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %i_gdquot.i.i, align 8
  %tobool45.not.i.i = icmp eq ptr %105, null
  br i1 %tobool45.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i195.cond.false.i.i196_crit_edge, !prof !162

land.lhs.true.i.i195.cond.false.i.i196_crit_edge: ; preds = %land.lhs.true.i.i195
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false.i.i196

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i195
  %i_pdquot.i.i = getelementptr inbounds %struct.xfs_inode, ptr %48, i32 0, i32 3
  %106 = ptrtoint ptr %i_pdquot.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %i_pdquot.i.i, align 4
  %tobool46.not.i.i = icmp eq ptr %107, null
  br i1 %tobool46.not.i.i, label %land.rhs.i.i.cond.end.i.i197_crit_edge, label %land.rhs.i.i.cond.false.i.i196_crit_edge, !prof !162

land.rhs.i.i.cond.false.i.i196_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false.i.i196

land.rhs.i.i.cond.end.i.i197_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i197

cond.false.i.i196:                                ; preds = %land.rhs.i.i.cond.false.i.i196_crit_edge, %land.lhs.true.i.i195.cond.false.i.i196_crit_edge, %if.end42.i.i.cond.false.i.i196_crit_edge
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 933) #12
  br label %cond.end.i.i197

cond.end.i.i197:                                  ; preds = %cond.false.i.i196, %land.rhs.i.i.cond.end.i.i197_crit_edge
  call void @xfs_iunlock(ptr noundef nonnull %48, i32 noundef 4) #12
  %i_itemp.i99.i.i = getelementptr inbounds %struct.xfs_inode, ptr %48, i32 0, i32 9
  %108 = ptrtoint ptr %i_itemp.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %i_itemp.i99.i.i, align 8
  %tobool.not.i100.i.i = icmp eq ptr %109, null
  br i1 %tobool.not.i100.i.i, label %cond.end.i.i197.cond.end60.i.i_crit_edge, label %xfs_inode_clean.exit106.i.i

cond.end.i.i197.cond.end60.i.i_crit_edge:         ; preds = %cond.end.i.i197
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end60.i.i

xfs_inode_clean.exit106.i.i:                      ; preds = %cond.end.i.i197
  %ili_fields.i101.i.i = getelementptr inbounds %struct.xfs_inode_log_item, ptr %109, i32 0, i32 5
  %110 = ptrtoint ptr %ili_fields.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ili_fields.i101.i.i, align 8
  %and.i102.i.i = and i32 %111, 18399
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i102.i.i)
  %tobool2.not.i103.not.i.i = icmp eq i32 %and.i102.i.i, 0
  br i1 %tobool2.not.i103.not.i.i, label %xfs_inode_clean.exit106.i.i.cond.end60.i.i_crit_edge, label %cond.false59.i.i, !prof !162

xfs_inode_clean.exit106.i.i.cond.end60.i.i_crit_edge: ; preds = %xfs_inode_clean.exit106.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end60.i.i

cond.false59.i.i:                                 ; preds = %xfs_inode_clean.exit106.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 935) #12
  br label %cond.end60.i.i

cond.end60.i.i:                                   ; preds = %cond.false59.i.i, %xfs_inode_clean.exit106.i.i.cond.end60.i.i_crit_edge, %cond.end.i.i197.cond.end60.i.i_crit_edge
  call fastcc void @__xfs_inode_free(ptr noundef nonnull %48) #12
  br label %for.inc53

out_clear_flush.i.i:                              ; preds = %xfs_inode_clean.exit.i.i.out_clear_flush.i.i_crit_edge, %if.end7.i.i191.out_clear_flush.i.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i.i.i) #12
  %112 = ptrtoint ptr %i_flags.i.i.i186 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %i_flags.i.i.i186, align 8
  %and.i109.i.i = and i32 %113, -129
  store i32 %and.i109.i.i, ptr %i_flags.i.i.i186, align 8
  br label %out_iunlock.i.i

out_iunlock.i.i:                                  ; preds = %out_clear_flush.i.i, %if.end.i5.i.out_iunlock.i.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i.i.i) #12
  call void @xfs_iunlock(ptr noundef nonnull %48, i32 noundef 4) #12
  br label %out.i.i

out.i.i:                                          ; preds = %out_iunlock.i.i, %sw.bb1.i185.out.i.i_crit_edge
  %i_flags_lock.i110.i.i = getelementptr inbounds %struct.xfs_inode, ptr %48, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %i_flags_lock.i110.i.i) #12
  %i_flags.i111.i.i = getelementptr inbounds %struct.xfs_inode, ptr %48, i32 0, i32 16
  %114 = ptrtoint ptr %i_flags.i111.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %i_flags.i111.i.i, align 8
  %and.i112.i.i = and i32 %115, -2
  store i32 %and.i112.i.i, ptr %i_flags.i111.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i110.i.i) #12
  br label %for.inc53

xfs_icwalk_process_inode.exit:                    ; preds = %if.then3.i.i, %unlock.i.i.xfs_icwalk_process_inode.exit_crit_edge
  call void @xfs_irele(ptr noundef nonnull %48) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lockflags.i.i) #12
  %116 = zext i32 %error.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %error.0.i.i, label %land.lhs.true [
    i32 -11, label %if.then45
    i32 0, label %xfs_icwalk_process_inode.exit.for.inc53_crit_edge
  ]

xfs_icwalk_process_inode.exit.for.inc53_crit_edge: ; preds = %xfs_icwalk_process_inode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc53

if.then45:                                        ; preds = %xfs_icwalk_process_inode.exit
  call void @__sanitizer_cov_trace_pc() #14
  %inc46 = add i32 %skipped.1235, 1
  br label %for.inc53

land.lhs.true:                                    ; preds = %xfs_icwalk_process_inode.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %last_error.2232)
  %cmp49.not = icmp eq i32 %last_error.2232, -117
  %spec.select155 = select i1 %cmp49.not, i32 -117, i32 %error.0.i.i
  br label %for.inc53

for.inc53:                                        ; preds = %land.lhs.true, %if.then45, %xfs_icwalk_process_inode.exit.for.inc53_crit_edge, %out.i.i, %cond.end60.i.i, %if.end40.for.inc53_crit_edge, %for.body36.for.inc53_crit_edge
  %last_error.3 = phi i32 [ %last_error.2232, %if.then45 ], [ %last_error.2232, %for.body36.for.inc53_crit_edge ], [ %last_error.2232, %xfs_icwalk_process_inode.exit.for.inc53_crit_edge ], [ %spec.select155, %land.lhs.true ], [ %last_error.2232, %if.end40.for.inc53_crit_edge ], [ %last_error.2232, %cond.end60.i.i ], [ %last_error.2232, %out.i.i ]
  %skipped.2 = phi i32 [ %inc46, %if.then45 ], [ %skipped.1235, %for.body36.for.inc53_crit_edge ], [ %skipped.1235, %xfs_icwalk_process_inode.exit.for.inc53_crit_edge ], [ %skipped.1235, %land.lhs.true ], [ %skipped.1235, %if.end40.for.inc53_crit_edge ], [ %skipped.1235, %cond.end60.i.i ], [ %skipped.1235, %out.i.i ]
  %error.1 = phi i32 [ -11, %if.then45 ], [ %error.0238, %for.body36.for.inc53_crit_edge ], [ %error.0.i.i, %xfs_icwalk_process_inode.exit.for.inc53_crit_edge ], [ %error.0.i.i, %land.lhs.true ], [ 0, %if.end40.for.inc53_crit_edge ], [ 0, %cond.end60.i.i ], [ 0, %out.i.i ]
  %inc54 = add nuw nsw i32 %i.1239, 1
  %exitcond253.not = icmp eq i32 %inc54, %call
  br i1 %exitcond253.not, label %for.end55, label %for.inc53.for.body36_crit_edge

for.inc53.for.body36_crit_edge:                   ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body36

for.end55:                                        ; preds = %for.inc53
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %error.1)
  %cmp56 = icmp eq i32 %error.1, -117
  br i1 %cmp56, label %for.end55.cleanup74.thread_crit_edge, label %for.end55.if.end59_crit_edge

for.end55.if.end59_crit_edge:                     ; preds = %for.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

for.end55.cleanup74.thread_crit_edge:             ; preds = %for.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74.thread

if.end59:                                         ; preds = %for.end55.if.end59_crit_edge, %rcu_read_unlock.exit177.if.end59_crit_edge
  %skipped.1.lcssa260 = phi i32 [ %skipped.2, %for.end55.if.end59_crit_edge ], [ %skipped.0, %rcu_read_unlock.exit177.if.end59_crit_edge ]
  %last_error.2.lcssa258 = phi i32 [ %last_error.3, %for.end55.if.end59_crit_edge ], [ %last_error.1, %rcu_read_unlock.exit177.if.end59_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 1715, i32 noundef 0) #12
  %call.i198 = call i32 @__cond_resched() #12
  br i1 %tobool9.not.i.i, label %if.end59.cleanup74_crit_edge, label %land.lhs.true63

if.end59.cleanup74_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

land.lhs.true63:                                  ; preds = %if.end59
  %117 = ptrtoint ptr %icw to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %icw, align 8
  %and64 = and i32 %118, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %land.lhs.true63.cleanup74_crit_edge, label %if.then66

land.lhs.true63.cleanup74_crit_edge:              ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

if.then66:                                        ; preds = %land.lhs.true63
  %119 = ptrtoint ptr %icw_scan_limit to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %icw_scan_limit, align 8
  %sub67 = add i32 %120, -32
  store i32 %sub67, ptr %icw_scan_limit, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub67)
  %cmp69 = icmp slt i32 %sub67, 1
  br i1 %cmp69, label %if.then66.cleanup74.thread_crit_edge, label %if.then66.cleanup74_crit_edge

if.then66.cleanup74_crit_edge:                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

if.then66.cleanup74.thread_crit_edge:             ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74.thread

cleanup74.thread:                                 ; preds = %if.then66.cleanup74.thread_crit_edge, %for.end55.cleanup74.thread_crit_edge, %rcu_read_unlock.exit
  %last_error.4.ph = phi i32 [ %last_error.1, %rcu_read_unlock.exit ], [ %last_error.3, %for.end55.cleanup74.thread_crit_edge ], [ %last_error.2.lcssa258, %if.then66.cleanup74.thread_crit_edge ]
  %skipped.3.ph = phi i32 [ %skipped.0, %rcu_read_unlock.exit ], [ %skipped.2, %for.end55.cleanup74.thread_crit_edge ], [ %skipped.1.lcssa260, %if.then66.cleanup74.thread_crit_edge ]
  %done.4.off0.ph = phi i1 [ true, %rcu_read_unlock.exit ], [ %brmerge156.lcssa, %if.then66.cleanup74.thread_crit_edge ], [ %brmerge156.lcssa, %for.end55.cleanup74.thread_crit_edge ]
  %first_index.4.ph = phi i32 [ %first_index.1, %rcu_read_unlock.exit ], [ %first_index.2.lcssa, %if.then66.cleanup74.thread_crit_edge ], [ %first_index.2.lcssa, %for.end55.cleanup74.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %batch) #12
  br label %do.end82

cleanup74:                                        ; preds = %if.then66.cleanup74_crit_edge, %land.lhs.true63.cleanup74_crit_edge, %if.end59.cleanup74_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %batch) #12
  br i1 %brmerge156.lcssa, label %cleanup74.do.end82_crit_edge, label %cleanup74.do.body1_crit_edge

cleanup74.do.body1_crit_edge:                     ; preds = %cleanup74
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1

cleanup74.do.end82_crit_edge:                     ; preds = %cleanup74
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end82

do.end82:                                         ; preds = %cleanup74.do.end82_crit_edge, %cleanup74.thread
  %first_index.4214 = phi i32 [ %first_index.4.ph, %cleanup74.thread ], [ %first_index.2.lcssa, %cleanup74.do.end82_crit_edge ]
  %done.4.off0213 = phi i1 [ %done.4.off0.ph, %cleanup74.thread ], [ true, %cleanup74.do.end82_crit_edge ]
  %skipped.3212 = phi i32 [ %skipped.3.ph, %cleanup74.thread ], [ %skipped.1.lcssa260, %cleanup74.do.end82_crit_edge ]
  %last_error.4211 = phi i32 [ %last_error.4.ph, %cleanup74.thread ], [ %last_error.2.lcssa258, %cleanup74.do.end82_crit_edge ]
  br i1 %cmp, label %if.then85, label %do.end82.if.end99_crit_edge

do.end82.if.end99_crit_edge:                      ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.then85:                                        ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #14
  %spec.select157 = select i1 %done.4.off0213, i32 0, i32 %first_index.4214
  %121 = ptrtoint ptr %pag_ici_reclaim_cursor to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile i32 %spec.select157, ptr %pag_ici_reclaim_cursor, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then85, %do.end82.if.end99_crit_edge
  %tobool100.not = icmp eq i32 %skipped.3212, 0
  br i1 %tobool100.not, label %if.end102, label %if.then101

if.then101:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  %call.i199 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #12
  br label %restart

if.end102:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  ret i32 %last_error.4211
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_blockgc_free_space(ptr noundef %mp, ptr noundef %icw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call fastcc void @trace_xfs_blockgc_free_space(ptr noundef %mp, ptr noundef %icw, i32 noundef %1)
  %call.i = tail call ptr @xfs_perag_get_tag(ptr noundef %mp, i32 noundef 0, i32 noundef 1) #12
  %cmp.not17.i = icmp eq ptr %call.i, null
  br i1 %cmp.not17.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %last_error.019.i = phi i32 [ %last_error.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %pag.018.i = phi ptr [ %call5.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %call1.i = tail call fastcc i32 @xfs_icwalk_ag(ptr noundef nonnull %pag.018.i, i32 noundef 1, ptr noundef %icw) #12
  %2 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call1.i, label %for.inc.fold.split.i [
    i32 0, label %for.body.i.for.inc.i_crit_edge
    i32 -117, label %xfs_icwalk.exit.thread7
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

xfs_icwalk.exit.thread7:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @xfs_perag_put(ptr noundef nonnull %pag.018.i) #12
  br label %cleanup

for.inc.fold.split.i:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.fold.split.i, %for.body.i.for.inc.i_crit_edge
  %last_error.1.i = phi i32 [ %last_error.019.i, %for.body.i.for.inc.i_crit_edge ], [ %call1.i, %for.inc.fold.split.i ]
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %pag.018.i, i32 0, i32 1
  %3 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pag_agno.i, align 4
  %add.i = add i32 %4, 1
  tail call void @xfs_perag_put(ptr noundef nonnull %pag.018.i) #12
  %call5.i = tail call ptr @xfs_perag_get_tag(ptr noundef %mp, i32 noundef %add.i, i32 noundef 1) #12
  %cmp.not.i = icmp eq ptr %call5.i, null
  br i1 %cmp.not.i, label %xfs_icwalk.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

xfs_icwalk.exit:                                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_error.1.i)
  %tobool.not = icmp eq i32 %last_error.1.i, 0
  br i1 %tobool.not, label %xfs_icwalk.exit.if.end_crit_edge, label %xfs_icwalk.exit.cleanup_crit_edge

xfs_icwalk.exit.cleanup_crit_edge:                ; preds = %xfs_icwalk.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

xfs_icwalk.exit.if.end_crit_edge:                 ; preds = %xfs_icwalk.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %xfs_icwalk.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @xfs_inodegc_flush(ptr noundef %mp)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %xfs_icwalk.exit.cleanup_crit_edge, %xfs_icwalk.exit.thread7
  %retval.0 = phi i32 [ 0, %if.end ], [ %last_error.1.i, %xfs_icwalk.exit.cleanup_crit_edge ], [ -117, %xfs_icwalk.exit.thread7 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_blockgc_free_space(ptr noundef %mp, ptr noundef %icw, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_blockgc_free_space, i32 0, i32 1), ptr blockaddress(@trace_xfs_blockgc_free_space, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !188
  %call42 = tail call i32 @__traceiter_xfs_blockgc_free_space(ptr noundef null, ptr noundef %mp, ptr noundef %icw, i32 noundef %caller_ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !189
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_blockgc_free_space, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_blockgc_free_space, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_blockgc_free_space.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_blockgc_free_space.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 4051, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
define dso_local void @xfs_inodegc_flush(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %0 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %m_opstate.i, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  tail call fastcc void @trace_xfs_inodegc_flush(ptr noundef %mp, ptr noundef %3)
  %call9.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i, i32 %4)
  %cmp10.i = icmp ult i32 %call9.i, %4
  br i1 %cmp10.i, label %do.body.lr.ph.i, label %if.end.xfs_inodegc_queue_all.exit_crit_edge

if.end.xfs_inodegc_queue_all.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_inodegc_queue_all.exit

do.body.lr.ph.i:                                  ; preds = %if.end
  %m_inodegc.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 17
  %m_inodegc_wq.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 25
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %call11.i = phi i32 [ %call9.i, %do.body.lr.ph.i ], [ %call.i, %if.end.i.do.body.i_crit_edge ]
  %5 = ptrtoint ptr %m_inodegc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_inodegc.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call11.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, %7
  %10 = inttoptr i32 %add.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %10, align 4
  %cmp.i.i = icmp eq ptr %12, null
  br i1 %cmp.i.i, label %do.body.i.if.end.i_crit_edge, label %if.then.i

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %m_inodegc_wq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m_inodegc_wq.i, align 4
  %work.i = getelementptr inbounds %struct.xfs_inodegc, ptr %10, i32 0, i32 1
  %call3.i = tail call zeroext i1 @queue_work_on(i32 noundef %call11.i, ptr noundef %14, ptr noundef %work.i) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body.i.if.end.i_crit_edge
  %call.i = tail call i32 @cpumask_next(i32 noundef %call11.i, ptr noundef nonnull @__cpu_online_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %15
  br i1 %cmp.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.xfs_inodegc_queue_all.exit_crit_edge

if.end.i.xfs_inodegc_queue_all.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_inodegc_queue_all.exit

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

xfs_inodegc_queue_all.exit:                       ; preds = %if.end.i.xfs_inodegc_queue_all.exit_crit_edge, %if.end.xfs_inodegc_queue_all.exit_crit_edge
  %m_inodegc_wq = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 25
  %16 = ptrtoint ptr %m_inodegc_wq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m_inodegc_wq, align 4
  tail call void @flush_workqueue(ptr noundef %17) #12
  br label %return

return:                                           ; preds = %xfs_inodegc_queue_all.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_blockgc_flush_all(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  tail call fastcc void @trace_xfs_blockgc_flush_all(ptr noundef %mp, ptr noundef %0)
  %call = tail call ptr @xfs_perag_get_tag(ptr noundef %mp, i32 noundef 0, i32 noundef 1) #12
  %cmp.not28 = icmp eq ptr %call, null
  br i1 %cmp.not28, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %pag.029 = phi ptr [ %call2, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %pag.029 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pag.029, align 4
  %m_blockgc_wq = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 24
  %3 = ptrtoint ptr %m_blockgc_wq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m_blockgc_wq, align 8
  %pag_blockgc_work = getelementptr inbounds %struct.xfs_perag, ptr %pag.029, i32 0, i32 37
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %pag_blockgc_work, i32 noundef 0) #12
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag.029, i32 0, i32 1
  %5 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pag_agno, align 4
  %add = add i32 %6, 1
  tail call void @xfs_perag_put(ptr noundef nonnull %pag.029) #12
  %call2 = tail call ptr @xfs_perag_get_tag(ptr noundef %mp, i32 noundef %add, i32 noundef 1) #12
  %cmp.not = icmp eq ptr %call2, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call3 = tail call ptr @xfs_perag_get_tag(ptr noundef %mp, i32 noundef 0, i32 noundef 1) #12
  %cmp5.not30 = icmp eq ptr %call3, null
  br i1 %cmp5.not30, label %for.end.for.end13_crit_edge, label %for.end.for.body6_crit_edge

for.end.for.body6_crit_edge:                      ; preds = %for.end
  br label %for.body6

for.end.for.end13_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end13

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.end.for.body6_crit_edge
  %pag.131 = phi ptr [ %call12, %for.body6.for.body6_crit_edge ], [ %call3, %for.end.for.body6_crit_edge ]
  %pag_blockgc_work7 = getelementptr inbounds %struct.xfs_perag, ptr %pag.131, i32 0, i32 37
  %call8 = tail call zeroext i1 @flush_delayed_work(ptr noundef %pag_blockgc_work7) #12
  %pag_agno10 = getelementptr inbounds %struct.xfs_perag, ptr %pag.131, i32 0, i32 1
  %7 = ptrtoint ptr %pag_agno10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pag_agno10, align 4
  %add11 = add i32 %8, 1
  tail call void @xfs_perag_put(ptr noundef nonnull %pag.131) #12
  %call12 = tail call ptr @xfs_perag_get_tag(ptr noundef %mp, i32 noundef %add11, i32 noundef 1) #12
  %cmp5.not = icmp eq ptr %call12, null
  br i1 %cmp5.not, label %for.body6.for.end13_crit_edge, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body6

for.body6.for.end13_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end13

for.end13:                                        ; preds = %for.body6.for.end13_crit_edge, %for.end.for.end13_crit_edge
  tail call void @xfs_inodegc_flush(ptr noundef %mp)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_blockgc_flush_all(ptr noundef %mp, ptr noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_blockgc_flush_all, i32 0, i32 1), ptr blockaddress(@trace_xfs_blockgc_flush_all, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !190
  %call42 = tail call i32 @__traceiter_xfs_blockgc_flush_all(ptr noundef null, ptr noundef %mp, ptr noundef %caller_ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !191
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_blockgc_flush_all, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_blockgc_flush_all, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_blockgc_flush_all.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_blockgc_flush_all.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 251, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_blockgc_free_dquots(ptr noundef %mp, ptr noundef readonly %udqp, ptr noundef readonly %gdqp, ptr noundef readonly %pdqp, i32 noundef %iwalk_flags) local_unnamed_addr #0 align 64 {
entry:
  %icw = alloca %struct.xfs_icwalk, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %icw) #12
  %0 = call ptr @memset(ptr %icw, i32 0, i32 32)
  %tobool.not = icmp eq ptr %udqp, null
  %tobool1.not = icmp eq ptr %gdqp, null
  %or.cond = and i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %pdqp, null
  %or.cond66 = and i1 %or.cond, %tobool3.not
  br i1 %or.cond66, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %or = or i32 %iwalk_flags, 67108864
  %1 = ptrtoint ptr %icw to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or, ptr %icw, align 8
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %2 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_qflags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %brmerge = or i1 %tobool.not, %tobool4.not
  br i1 %brmerge, label %if.end.if.end12_crit_edge, label %land.lhs.true7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true7:                                   ; preds = %if.end
  %q_blk.i = getelementptr inbounds %struct.xfs_dquot, ptr %udqp, i32 0, i32 9
  %hardlimit.i = getelementptr inbounds %struct.xfs_dquot, ptr %udqp, i32 0, i32 9, i32 2
  %4 = ptrtoint ptr %hardlimit.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %hardlimit.i, align 8
  %6 = ptrtoint ptr %q_blk.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %q_blk.i, align 8
  %sub.i = sub i64 %5, %7
  %q_low_space.i = getelementptr inbounds %struct.xfs_dquot, ptr %udqp, i32 0, i32 15
  %8 = ptrtoint ptr %q_low_space.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %q_low_space.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %9)
  %cmp.i = icmp slt i64 %sub.i, %9
  br i1 %cmp.i, label %if.then8, label %land.lhs.true7.if.end12_crit_edge

land.lhs.true7.if.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then8:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  %icw_uid = getelementptr inbounds %struct.xfs_icwalk, ptr %icw, i32 0, i32 1
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %10 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m_super, align 8
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 53
  %12 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_user_ns, align 8
  %q_id = getelementptr inbounds %struct.xfs_dquot, ptr %udqp, i32 0, i32 4
  %14 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %q_id, align 8
  %call9 = tail call i32 @make_kuid(ptr noundef %13, i32 noundef %15) #12
  %16 = ptrtoint ptr %icw_uid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call9, ptr %icw_uid, align 4
  %17 = ptrtoint ptr %icw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %icw, align 8
  %or11 = or i32 %18, 2
  store i32 %or11, ptr %icw, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %land.lhs.true7.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %do_work.0.off0 = phi i1 [ true, %if.then8 ], [ false, %land.lhs.true7.if.end12_crit_edge ], [ false, %if.end.if.end12_crit_edge ]
  %19 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %m_qflags, align 4
  %and14 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %or.cond67 = or i1 %tobool1.not, %tobool15.not
  br i1 %or.cond67, label %if.end12.if.end29_crit_edge, label %land.lhs.true18

if.end12.if.end29_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true18:                                  ; preds = %if.end12
  %q_blk.i69 = getelementptr inbounds %struct.xfs_dquot, ptr %gdqp, i32 0, i32 9
  %hardlimit.i70 = getelementptr inbounds %struct.xfs_dquot, ptr %gdqp, i32 0, i32 9, i32 2
  %21 = ptrtoint ptr %hardlimit.i70 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %hardlimit.i70, align 8
  %23 = ptrtoint ptr %q_blk.i69 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %q_blk.i69, align 8
  %sub.i71 = sub i64 %22, %24
  %q_low_space.i72 = getelementptr inbounds %struct.xfs_dquot, ptr %gdqp, i32 0, i32 15
  %25 = ptrtoint ptr %q_low_space.i72 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %q_low_space.i72, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i71, i64 %26)
  %cmp.i73 = icmp slt i64 %sub.i71, %26
  br i1 %cmp.i73, label %if.then20, label %land.lhs.true18.if.end29_crit_edge

land.lhs.true18.if.end29_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  %icw_gid = getelementptr inbounds %struct.xfs_icwalk, ptr %icw, i32 0, i32 2
  %m_super22 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %27 = ptrtoint ptr %m_super22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %m_super22, align 8
  %s_user_ns23 = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 53
  %29 = ptrtoint ptr %s_user_ns23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_user_ns23, align 8
  %q_id24 = getelementptr inbounds %struct.xfs_dquot, ptr %gdqp, i32 0, i32 4
  %31 = ptrtoint ptr %q_id24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %q_id24, align 8
  %call25 = tail call i32 @make_kgid(ptr noundef %30, i32 noundef %32) #12
  %33 = ptrtoint ptr %icw_gid to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call25, ptr %icw_gid, align 8
  %34 = ptrtoint ptr %icw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %icw, align 8
  %or28 = or i32 %35, 4
  store i32 %or28, ptr %icw, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then20, %land.lhs.true18.if.end29_crit_edge, %if.end12.if.end29_crit_edge
  %do_work.1.off0 = phi i1 [ true, %if.then20 ], [ %do_work.0.off0, %land.lhs.true18.if.end29_crit_edge ], [ %do_work.0.off0, %if.end12.if.end29_crit_edge ]
  %36 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %m_qflags, align 4
  %and31 = and i32 %37, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %or.cond68 = or i1 %tobool3.not, %tobool32.not
  br i1 %or.cond68, label %if.end29.if.end41_crit_edge, label %land.lhs.true35

if.end29.if.end41_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

land.lhs.true35:                                  ; preds = %if.end29
  %q_blk.i74 = getelementptr inbounds %struct.xfs_dquot, ptr %pdqp, i32 0, i32 9
  %hardlimit.i75 = getelementptr inbounds %struct.xfs_dquot, ptr %pdqp, i32 0, i32 9, i32 2
  %38 = ptrtoint ptr %hardlimit.i75 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %hardlimit.i75, align 8
  %40 = ptrtoint ptr %q_blk.i74 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %q_blk.i74, align 8
  %sub.i76 = sub i64 %39, %41
  %q_low_space.i77 = getelementptr inbounds %struct.xfs_dquot, ptr %pdqp, i32 0, i32 15
  %42 = ptrtoint ptr %q_low_space.i77 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %q_low_space.i77, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i76, i64 %43)
  %cmp.i78 = icmp slt i64 %sub.i76, %43
  br i1 %cmp.i78, label %if.then37, label %land.lhs.true35.if.end41_crit_edge

land.lhs.true35.if.end41_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then37:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  %q_id38 = getelementptr inbounds %struct.xfs_dquot, ptr %pdqp, i32 0, i32 4
  %44 = ptrtoint ptr %q_id38 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %q_id38, align 8
  %icw_prid = getelementptr inbounds %struct.xfs_icwalk, ptr %icw, i32 0, i32 3
  %46 = ptrtoint ptr %icw_prid to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %icw_prid, align 4
  %47 = ptrtoint ptr %icw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %icw, align 8
  %or40 = or i32 %48, 8
  store i32 %or40, ptr %icw, align 8
  br label %if.end44

if.end41:                                         ; preds = %land.lhs.true35.if.end41_crit_edge, %if.end29.if.end41_crit_edge
  br i1 %do_work.1.off0, label %if.end41.if.end44_crit_edge, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end41.if.end44_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.end44:                                         ; preds = %if.end41.if.end44_crit_edge, %if.then37
  %call45 = call i32 @xfs_blockgc_free_space(ptr noundef %mp, ptr noundef nonnull %icw)
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end41.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call45, %if.end44 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %icw) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_blockgc_free_quota(ptr nocapture noundef readonly %ip, i32 noundef %iwalk_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %i_udquot.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 1
  %2 = ptrtoint ptr %i_udquot.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_udquot.i, align 4
  %i_gdquot.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 2
  %4 = ptrtoint ptr %i_gdquot.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_gdquot.i, align 8
  %i_pdquot.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 3
  %6 = ptrtoint ptr %i_pdquot.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_pdquot.i, align 4
  %call3 = tail call i32 @xfs_blockgc_free_dquots(ptr noundef %1, ptr noundef %3, ptr noundef %5, ptr noundef %7, i32 noundef %iwalk_flags)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_inodegc_worker(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !192
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %add.ptr) #12, !srcloc !193
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !194
  %items = getelementptr i8, ptr %work, i32 44
  %1 = ptrtoint ptr %items to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %items, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = inttoptr i32 %asmresult.i.i to ptr
  %add.ptr9 = getelementptr i8, ptr %2, i32 -188
  %3 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr9, align 8
  %shrinker_hits = getelementptr i8, ptr %work, i32 48
  %5 = ptrtoint ptr %shrinker_hits to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %shrinker_hits, align 4
  tail call fastcc void @trace_xfs_inodegc_worker(ptr noundef %4, i32 noundef %6)
  %7 = ptrtoint ptr %shrinker_hits to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %shrinker_hits, align 4
  %cmp.not42 = icmp eq ptr %add.ptr9, inttoptr (i32 -188 to ptr)
  br i1 %cmp.not42, label %if.end.cleanup_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %ip.043 = phi ptr [ %add.ptr29, %land.rhs.land.rhs_crit_edge ], [ %add.ptr9, %if.end.land.rhs_crit_edge ]
  %i_gclist = getelementptr inbounds %struct.xfs_inode, ptr %ip.043, i32 0, i32 12
  %8 = ptrtoint ptr %i_gclist to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_gclist, align 4
  %add.ptr29 = getelementptr i8, ptr %9, i32 -188
  %i_flags_lock.i = getelementptr inbounds %struct.xfs_inode, ptr %ip.043, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #12
  %i_flags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip.043, i32 0, i32 16
  %10 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_flags.i.i, align 8
  %or.i.i = or i32 %11, 8192
  store i32 %or.i.i, ptr %i_flags.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #12
  tail call fastcc void @trace_xfs_inode_inactivating(ptr noundef %ip.043) #12
  tail call void @xfs_inactive(ptr noundef %ip.043) #12
  tail call fastcc void @xfs_inodegc_set_reclaimable(ptr noundef %ip.043) #12
  %cmp.not = icmp eq ptr %add.ptr29, inttoptr (i32 -188 to ptr)
  br i1 %cmp.not, label %land.rhs.cleanup_crit_edge, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %land.rhs.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_inodegc_worker(ptr noundef %mp, i32 noundef %shrinker_hits) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inodegc_worker, i32 0, i32 1), ptr blockaddress(@trace_xfs_inodegc_worker, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !195
  %call42 = tail call i32 @__traceiter_xfs_inodegc_worker(ptr noundef null, ptr noundef %mp, i32 noundef %shrinker_hits) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !196
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inodegc_worker, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inodegc_worker, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_inodegc_worker.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_inodegc_worker.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 209, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
define internal fastcc void @trace_xfs_inodegc_flush(ptr noundef %mp, ptr noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inodegc_flush, i32 0, i32 1), ptr blockaddress(@trace_xfs_inodegc_flush, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !197
  %call42 = tail call i32 @__traceiter_xfs_inodegc_flush(ptr noundef null, ptr noundef %mp, ptr noundef %caller_ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !198
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inodegc_flush, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inodegc_flush, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_inodegc_flush.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_inodegc_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 242, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_inodegc_stop(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %m_opstate.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %call9.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i, i32 %0)
  %cmp10.i = icmp ult i32 %call9.i, %0
  br i1 %cmp10.i, label %do.body.lr.ph.i, label %if.end.xfs_inodegc_queue_all.exit_crit_edge

if.end.xfs_inodegc_queue_all.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_inodegc_queue_all.exit

do.body.lr.ph.i:                                  ; preds = %if.end
  %m_inodegc.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 17
  %m_inodegc_wq.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 25
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %call11.i = phi i32 [ %call9.i, %do.body.lr.ph.i ], [ %call.i4, %if.end.i.do.body.i_crit_edge ]
  %1 = ptrtoint ptr %m_inodegc.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %m_inodegc.i, align 4
  %3 = ptrtoint ptr %2 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call11.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, %3
  %6 = inttoptr i32 %add.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %6, align 4
  %cmp.i.i = icmp eq ptr %8, null
  br i1 %cmp.i.i, label %do.body.i.if.end.i_crit_edge, label %if.then.i

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %m_inodegc_wq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m_inodegc_wq.i, align 4
  %work.i = getelementptr inbounds %struct.xfs_inodegc, ptr %6, i32 0, i32 1
  %call3.i = tail call zeroext i1 @queue_work_on(i32 noundef %call11.i, ptr noundef %10, ptr noundef %work.i) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body.i.if.end.i_crit_edge
  %call.i4 = tail call i32 @cpumask_next(i32 noundef %call11.i, ptr noundef nonnull @__cpu_online_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i4, %11
  br i1 %cmp.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.xfs_inodegc_queue_all.exit_crit_edge

if.end.i.xfs_inodegc_queue_all.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xfs_inodegc_queue_all.exit

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

xfs_inodegc_queue_all.exit:                       ; preds = %if.end.i.xfs_inodegc_queue_all.exit_crit_edge, %if.end.xfs_inodegc_queue_all.exit_crit_edge
  %m_inodegc_wq = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 25
  %12 = ptrtoint ptr %m_inodegc_wq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m_inodegc_wq, align 4
  tail call void @drain_workqueue(ptr noundef %13) #12
  %14 = tail call ptr @llvm.returnaddress(i32 0)
  tail call fastcc void @trace_xfs_inodegc_stop(ptr noundef %mp, ptr noundef %14)
  br label %return

return:                                           ; preds = %xfs_inodegc_queue_all.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drain_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_inodegc_stop(ptr noundef %mp, ptr noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inodegc_stop, i32 0, i32 1), ptr blockaddress(@trace_xfs_inodegc_stop, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !199
  %call42 = tail call i32 @__traceiter_xfs_inodegc_stop(ptr noundef null, ptr noundef %mp, ptr noundef %caller_ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !200
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inodegc_stop, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inodegc_stop, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_inodegc_stop.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_inodegc_stop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 244, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
define dso_local void @xfs_inodegc_start(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %m_opstate.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  tail call fastcc void @trace_xfs_inodegc_start(ptr noundef %mp, ptr noundef %0)
  %call9.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i, i32 %1)
  %cmp10.i = icmp ult i32 %call9.i, %1
  br i1 %cmp10.i, label %do.body.lr.ph.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.body.lr.ph.i:                                  ; preds = %if.end
  %m_inodegc.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 17
  %m_inodegc_wq.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 25
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %call11.i = phi i32 [ %call9.i, %do.body.lr.ph.i ], [ %call.i3, %if.end.i.do.body.i_crit_edge ]
  %2 = ptrtoint ptr %m_inodegc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_inodegc.i, align 4
  %4 = ptrtoint ptr %3 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call11.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %6, %4
  %7 = inttoptr i32 %add.i to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %7, align 4
  %cmp.i.i = icmp eq ptr %9, null
  br i1 %cmp.i.i, label %do.body.i.if.end.i_crit_edge, label %if.then.i

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %m_inodegc_wq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m_inodegc_wq.i, align 4
  %work.i = getelementptr inbounds %struct.xfs_inodegc, ptr %7, i32 0, i32 1
  %call3.i = tail call zeroext i1 @queue_work_on(i32 noundef %call11.i, ptr noundef %11, ptr noundef %work.i) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body.i.if.end.i_crit_edge
  %call.i3 = tail call i32 @cpumask_next(i32 noundef %call11.i, ptr noundef nonnull @__cpu_online_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i3, %12
  br i1 %cmp.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

return:                                           ; preds = %if.end.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_inodegc_start(ptr noundef %mp, ptr noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inodegc_start, i32 0, i32 1), ptr blockaddress(@trace_xfs_inodegc_start, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !201
  %call42 = tail call i32 @__traceiter_xfs_inodegc_start(ptr noundef null, ptr noundef %mp, ptr noundef %caller_ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !202
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inodegc_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inodegc_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_inodegc_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_inodegc_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 243, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
define dso_local void @xfs_inodegc_cpu_dead(ptr noundef %mp, i32 noundef %dead_cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %m_inodegc = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 17
  %0 = ptrtoint ptr %m_inodegc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_inodegc, align 4
  %2 = ptrtoint ptr %1 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %dead_cpu
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %4, %2
  %5 = inttoptr i32 %add to ptr
  %work = getelementptr inbounds %struct.xfs_inodegc, ptr %5, i32 0, i32 1
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #12
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %5, align 4
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry.while.cond_crit_edge
  %count.0 = phi i32 [ %inc, %while.cond.while.cond_crit_edge ], [ 0, %entry.while.cond_crit_edge ]
  %last.0 = phi ptr [ %9, %while.cond.while.cond_crit_edge ], [ %7, %entry.while.cond_crit_edge ]
  %8 = ptrtoint ptr %last.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %last.0, align 4
  %tobool.not = icmp eq ptr %9, null
  %inc = add i32 %count.0, 1
  br i1 %tobool.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %5, align 4
  %items = getelementptr inbounds %struct.xfs_inodegc, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %items to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %items, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %15, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !203
  %16 = ptrtoint ptr %m_inodegc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m_inodegc, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu, align 4
  %arrayidx21 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx21, align 4
  %add22 = add i32 %24, %18
  %25 = inttoptr i32 %add22 to ptr
  %call24 = tail call zeroext i1 @llist_add_batch(ptr noundef nonnull %7, ptr noundef nonnull %last.0, ptr noundef %25) #12
  %items29 = getelementptr inbounds %struct.xfs_inodegc, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %items29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %items29, align 4
  %add30 = add i32 %27, %count.0
  store volatile i32 %add30, ptr %items29, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !204
  %28 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i73 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %31, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %32 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %m_opstate.i, align 4
  %34 = and i32 %33, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.not = icmp eq i32 %34, 0
  br i1 %tobool.i.not, label %while.end.cleanup_crit_edge, label %if.then48

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then48:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %35 = tail call ptr @llvm.returnaddress(i32 0)
  tail call fastcc void @trace_xfs_inodegc_queue(ptr noundef %mp, ptr noundef %35)
  %m_inodegc_wq = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 25
  %36 = ptrtoint ptr %m_inodegc_wq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %m_inodegc_wq, align 4
  %work49 = getelementptr inbounds %struct.xfs_inodegc, ptr %25, i32 0, i32 1
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %37, ptr noundef %work49) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_inodegc_queue(ptr noundef %mp, ptr noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inodegc_queue, i32 0, i32 1), ptr blockaddress(@trace_xfs_inodegc_queue, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !205
  %call42 = tail call i32 @__traceiter_xfs_inodegc_queue(ptr noundef null, ptr noundef %mp, ptr noundef %caller_ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !206
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inodegc_queue, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inodegc_queue, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_inodegc_queue.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_inodegc_queue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 245, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
define dso_local void @xfs_inode_mark_reclaimable(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %2 = load ptr, ptr @xfsstats, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %vn_reclaim = getelementptr inbounds %struct.__xfsstats, ptr %10, i32 0, i32 64
  %11 = ptrtoint ptr %vn_reclaim to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vn_reclaim, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %vn_reclaim, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 92
  %13 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m_stats, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = load i32, ptr %cpu, align 4
  %arrayidx12 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx12, align 4
  %add13 = add i32 %18, %15
  %19 = inttoptr i32 %add13 to ptr
  %vn_reclaim14 = getelementptr inbounds %struct.__xfsstats, ptr %19, i32 0, i32 64
  %20 = ptrtoint ptr %vn_reclaim14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vn_reclaim14, align 8
  %inc15 = add i32 %21, 1
  store i32 %inc15, ptr %vn_reclaim14, align 8
  %i_flags_lock.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #12
  %i_flags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 16
  %22 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_flags.i.i, align 8
  %and.i.i = and i32 %23, 9221
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.false, !prof !162

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 2095) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %call22 = tail call zeroext i1 @xfs_inode_needs_inactive(ptr noundef %ip) #12
  br i1 %call22, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %24 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ip, align 8
  tail call fastcc void @trace_xfs_inode_set_need_inactive(ptr noundef %ip) #12
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #12
  %26 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_flags.i.i, align 8
  %or.i = or i32 %27, 1024
  store i32 %or.i, ptr %i_flags.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #12
  %28 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %31, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !207
  %m_inodegc.i = getelementptr inbounds %struct.xfs_mount, ptr %25, i32 0, i32 17
  %32 = ptrtoint ptr %m_inodegc.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %m_inodegc.i, align 4
  %34 = ptrtoint ptr %33 to i32
  %35 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i31 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i31 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %40, %34
  %41 = inttoptr i32 %add.i to ptr
  %i_gclist.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @llist_add_batch(ptr noundef %i_gclist.i, ptr noundef %i_gclist.i, ptr noundef %41) #12
  %items12.i = getelementptr inbounds %struct.xfs_inodegc, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %items12.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %items12.i, align 4
  %add18.i = add i32 %43, 1
  store volatile i32 %add18.i, ptr %items12.i, align 4
  %shrinker_hits28.i = getelementptr inbounds %struct.xfs_inodegc, ptr %41, i32 0, i32 3
  %44 = ptrtoint ptr %shrinker_hits28.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %shrinker_hits28.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !208
  %46 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i67.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i67.i to ptr
  %preempt_count.i.i68.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i68.i, align 4
  %sub.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i68.i, align 4
  %m_opstate.i.i = getelementptr inbounds %struct.xfs_mount, ptr %25, i32 0, i32 66
  %50 = ptrtoint ptr %m_opstate.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %m_opstate.i.i, align 4
  %52 = and i32 %51, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.i.not.i = icmp eq i32 %52, 0
  br i1 %tobool.i.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %53 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ip, align 8
  %inodes_per_cluster.i.i = getelementptr inbounds %struct.xfs_mount, ptr %54, i32 0, i32 64, i32 3
  %55 = ptrtoint ptr %inodes_per_cluster.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %inodes_per_cluster.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %43)
  %cmp.i.i = icmp ult i32 %56, %43
  br i1 %cmp.i.i, label %if.end.i.if.then37.i_crit_edge, label %if.end.i.i

if.end.i.if.then37.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37.i

if.end.i.i:                                       ; preds = %if.end.i
  %m_fdblocks.i.i = getelementptr inbounds %struct.xfs_mount, ptr %54, i32 0, i32 79
  %arrayidx.i.i = getelementptr %struct.xfs_mount, ptr %54, i32 0, i32 62, i32 4
  %57 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx.i.i, align 32
  %call.i69.i = tail call i32 @__percpu_counter_compare(ptr noundef %m_fdblocks.i.i, i64 noundef %58, i32 noundef 1024) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69.i)
  %cmp1.i.i = icmp slt i32 %call.i69.i, 0
  br i1 %cmp1.i.i, label %if.end.i.i.if.then37.i_crit_edge, label %if.end3.i.i

if.end.i.i.if.then37.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %59 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ip, align 8
  %i_diflags.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %61 = ptrtoint ptr %i_diflags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %i_diflags.i.i.i, align 2
  %63 = and i16 %62, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool.not.i.i.i = icmp eq i16 %63, 0
  br i1 %tobool.not.i.i.i, label %if.end3.i.i.if.end6.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end3.i.i.if.end6.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end3.i.i
  %m_rtdev_targp.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %60, i32 0, i32 15
  %64 = ptrtoint ptr %m_rtdev_targp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %m_rtdev_targp.i.i.i, align 64
  %tobool2.not.i.i.i = icmp eq ptr %65, null
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.if.end6.i.i_crit_edge, label %xfs_inodegc_want_queue_rt_file.exit.i.i

land.lhs.true.i.i.i.if.end6.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i.i

xfs_inodegc_want_queue_rt_file.exit.i.i:          ; preds = %land.lhs.true.i.i.i
  %sb_frextents.i.i.i = getelementptr inbounds %struct.xfs_sb, ptr %60, i32 0, i32 31
  %66 = ptrtoint ptr %sb_frextents.i.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load volatile i64, ptr %sb_frextents.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.xfs_mount, ptr %60, i32 0, i32 63, i32 4
  %68 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %67, i64 %69)
  %cmp.i.i.i = icmp ult i64 %67, %69
  br i1 %cmp.i.i.i, label %xfs_inodegc_want_queue_rt_file.exit.i.i.if.then37.i_crit_edge, label %xfs_inodegc_want_queue_rt_file.exit.i.i.if.end6.i.i_crit_edge

xfs_inodegc_want_queue_rt_file.exit.i.i.if.end6.i.i_crit_edge: ; preds = %xfs_inodegc_want_queue_rt_file.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i.i

xfs_inodegc_want_queue_rt_file.exit.i.i.if.then37.i_crit_edge: ; preds = %xfs_inodegc_want_queue_rt_file.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37.i

if.end6.i.i:                                      ; preds = %xfs_inodegc_want_queue_rt_file.exit.i.i.if.end6.i.i_crit_edge, %land.lhs.true.i.i.i.if.end6.i.i_crit_edge, %if.end3.i.i.if.end6.i.i_crit_edge
  %call7.i.i = tail call zeroext i1 @xfs_inode_near_dquot_enforcement(ptr noundef %ip, i8 noundef zeroext 1) #12
  br i1 %call7.i.i, label %if.end6.i.i.if.then37.i_crit_edge, label %if.end9.i.i

if.end6.i.i.if.then37.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37.i

if.end9.i.i:                                      ; preds = %if.end6.i.i
  %call10.i.i = tail call zeroext i1 @xfs_inode_near_dquot_enforcement(ptr noundef %ip, i8 noundef zeroext 4) #12
  br i1 %call10.i.i, label %if.end9.i.i.if.then37.i_crit_edge, label %xfs_inodegc_want_queue_work.exit.i

if.end9.i.i.if.then37.i_crit_edge:                ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37.i

xfs_inodegc_want_queue_work.exit.i:               ; preds = %if.end9.i.i
  %call13.i.i = tail call zeroext i1 @xfs_inode_near_dquot_enforcement(ptr noundef %ip, i8 noundef zeroext 2) #12
  br i1 %call13.i.i, label %xfs_inodegc_want_queue_work.exit.i.if.then37.i_crit_edge, label %xfs_inodegc_want_queue_work.exit.i.if.end39.i_crit_edge

xfs_inodegc_want_queue_work.exit.i.if.end39.i_crit_edge: ; preds = %xfs_inodegc_want_queue_work.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i

xfs_inodegc_want_queue_work.exit.i.if.then37.i_crit_edge: ; preds = %xfs_inodegc_want_queue_work.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37.i

if.then37.i:                                      ; preds = %xfs_inodegc_want_queue_work.exit.i.if.then37.i_crit_edge, %if.end9.i.i.if.then37.i_crit_edge, %if.end6.i.i.if.then37.i_crit_edge, %xfs_inodegc_want_queue_rt_file.exit.i.i.if.then37.i_crit_edge, %if.end.i.i.if.then37.i_crit_edge, %if.end.i.if.then37.i_crit_edge
  %70 = tail call ptr @llvm.returnaddress(i32 0) #12
  tail call fastcc void @trace_xfs_inodegc_queue(ptr noundef %25, ptr noundef %70) #12
  %m_inodegc_wq.i = getelementptr inbounds %struct.xfs_mount, ptr %25, i32 0, i32 25
  %71 = ptrtoint ptr %m_inodegc_wq.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %m_inodegc_wq.i, align 4
  %work.i = getelementptr inbounds %struct.xfs_inodegc, ptr %41, i32 0, i32 1
  %call.i70.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %72, ptr noundef %work.i) #12
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then37.i, %xfs_inodegc_want_queue_work.exit.i.if.end39.i_crit_edge
  %73 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task.i.i, align 8
  %journal_info.i.i = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 146
  %77 = ptrtoint ptr %journal_info.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %journal_info.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %78, null
  br i1 %tobool.not.i.i, label %xfs_inodegc_want_flush_work.exit.i, label %if.end39.i.cleanup_crit_edge

if.end39.i.cleanup_crit_edge:                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

xfs_inodegc_want_flush_work.exit.i:               ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.not.i.i = icmp ne i32 %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %43)
  %cmp3.i.i = icmp ugt i32 %43, 256
  %spec.select.i.i = or i1 %cmp3.i.i, %cmp.not.i.i
  br i1 %spec.select.i.i, label %if.then41.i, label %xfs_inodegc_want_flush_work.exit.i.cleanup_crit_edge

xfs_inodegc_want_flush_work.exit.i.cleanup_crit_edge: ; preds = %xfs_inodegc_want_flush_work.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then41.i:                                      ; preds = %xfs_inodegc_want_flush_work.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %79 = tail call ptr @llvm.returnaddress(i32 0) #12
  tail call fastcc void @trace_xfs_inodegc_throttle(ptr noundef %25, ptr noundef %79) #12
  %work42.i = getelementptr inbounds %struct.xfs_inodegc, ptr %41, i32 0, i32 1
  %call43.i = tail call zeroext i1 @flush_work(ptr noundef %work42.i) #12
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @xfs_qm_dqdetach(ptr noundef %ip) #12
  tail call fastcc void @xfs_inodegc_set_reclaimable(ptr noundef %ip)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then41.i, %xfs_inodegc_want_flush_work.exit.i.cleanup_crit_edge, %if.end39.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_inode_needs_inactive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_qm_dqdetach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_inodegc_set_reclaimable(ptr noundef %ip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %2 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %m_opstate.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_delayed_blks = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 17
  %5 = ptrtoint ptr %i_delayed_blks to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_delayed_blks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not = icmp eq i64 %6, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @xfs_check_delalloc(ptr noundef %ip, i32 noundef 0)
  tail call fastcc void @xfs_check_delalloc(ptr noundef %ip, i32 noundef 2)
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 1800) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %7 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_ino, align 8
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 64, i32 15
  %9 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %10 to i64
  %shr = lshr i64 %8, %sh_prom
  %conv = trunc i64 %shr to i32
  %call1 = tail call ptr @xfs_perag_get(ptr noundef %1, i32 noundef %conv) #12
  %pag_ici_lock = getelementptr inbounds %struct.xfs_perag, ptr %call1, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %pag_ici_lock) #12
  %i_flags_lock = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock) #12
  tail call fastcc void @trace_xfs_inode_set_reclaimable(ptr noundef %ip)
  %i_flags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 16
  %11 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_flags, align 8
  %and = and i32 %12, -9221
  %or = or i32 %and, 4
  store i32 %or, ptr %i_flags, align 8
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_ino, align 8
  %conv4 = trunc i64 %14 to i32
  %15 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %agino_log, align 8
  %sh_prom7 = zext i32 %16 to i64
  %notmask = shl nsw i64 -1, %sh_prom7
  %17 = trunc i64 %notmask to i32
  %conv8 = xor i32 %17, -1
  %and9 = and i32 %conv8, %conv4
  tail call fastcc void @xfs_perag_set_inode_tag(ptr noundef %call1, i32 noundef %and9, i32 noundef 0)
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock) #12
  tail call void @_raw_spin_unlock(ptr noundef %pag_ici_lock) #12
  tail call void @xfs_perag_put(ptr noundef %call1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_inodegc_register_shrinker(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %m_inodegc_shrinker = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 96
  %0 = ptrtoint ptr %m_inodegc_shrinker to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @xfs_inodegc_shrinker_count, ptr %m_inodegc_shrinker, align 4
  %scan_objects = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 96, i32 1
  %1 = ptrtoint ptr %scan_objects to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @xfs_inodegc_shrinker_scan, ptr %scan_objects, align 4
  %seeks = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 96, i32 3
  %2 = ptrtoint ptr %seeks to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %seeks, align 4
  %flags = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 96, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %flags, align 4
  %batch = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 96, i32 2
  %4 = ptrtoint ptr %batch to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2049, ptr %batch, align 4
  %call = tail call i32 @register_shrinker(ptr noundef %m_inodegc_shrinker) #12
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_inodegc_shrinker_count(ptr noundef %shrink, ptr nocapture noundef readnone %sc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %m_opstate.i = getelementptr i8, ptr %shrink, i32 -2316
  %0 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %m_opstate.i, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %m_inodegc = getelementptr i8, ptr %shrink, i32 -3008
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  br label %for.cond

for.cond:                                         ; preds = %do.body.for.cond_crit_edge, %for.cond.preheader
  %cpu.0 = phi i32 [ %call1, %do.body.for.cond_crit_edge ], [ -1, %for.cond.preheader ]
  %call1 = tail call i32 @cpumask_next(i32 noundef %cpu.0, ptr noundef nonnull @__cpu_online_mask) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %3)
  %cmp = icmp ult i32 %call1, %3
  br i1 %cmp, label %do.body, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %for.cond
  %4 = ptrtoint ptr %m_inodegc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_inodegc, align 4
  %6 = ptrtoint ptr %5 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %6
  %9 = inttoptr i32 %add to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %9, align 4
  %cmp.i = icmp eq ptr %11, null
  br i1 %cmp.i, label %do.body.for.cond_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.for.cond_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 4096, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_inodegc_shrinker_scan(ptr noundef %shrink, ptr noundef %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %m_opstate.i = getelementptr i8, ptr %shrink, i32 -2316
  %0 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %m_opstate.i, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %shrink, i32 -3340
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  tail call fastcc void @trace_xfs_inodegc_shrinker_scan(ptr noundef %add.ptr, ptr noundef %sc, ptr noundef %3)
  %call138 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call138, i32 %4)
  %cmp39 = icmp ult i32 %call138, %4
  br i1 %cmp39, label %do.body.lr.ph, label %if.end.for.end.thread_crit_edge

if.end.for.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

do.body.lr.ph:                                    ; preds = %if.end
  %m_inodegc = getelementptr i8, ptr %shrink, i32 -3008
  %m_inodegc_wq = getelementptr i8, ptr %shrink, i32 -2976
  br label %do.body

do.body:                                          ; preds = %if.end22.do.body_crit_edge, %do.body.lr.ph
  %call141 = phi i32 [ %call138, %do.body.lr.ph ], [ %call1, %if.end22.do.body_crit_edge ]
  %no_items.0.off040 = phi i1 [ true, %do.body.lr.ph ], [ %no_items.1.off0, %if.end22.do.body_crit_edge ]
  %5 = ptrtoint ptr %m_inodegc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_inodegc, align 4
  %7 = ptrtoint ptr %6 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call141
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %7
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %10, align 4
  %cmp.i = icmp eq ptr %12, null
  br i1 %cmp.i, label %do.body.if.end22_crit_edge, label %if.then5

do.body.if.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %shrinker_hits = getelementptr inbounds %struct.xfs_inodegc, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %shrinker_hits to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %shrinker_hits, align 4
  %add15 = add i32 %14, 1
  store volatile i32 %add15, ptr %shrinker_hits, align 4
  %15 = ptrtoint ptr %m_inodegc_wq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m_inodegc_wq, align 4
  %work = getelementptr inbounds %struct.xfs_inodegc, ptr %10, i32 0, i32 1
  %call21 = tail call zeroext i1 @queue_work_on(i32 noundef %call141, ptr noundef %16, ptr noundef %work) #12
  br label %if.end22

if.end22:                                         ; preds = %if.then5, %do.body.if.end22_crit_edge
  %no_items.1.off0 = phi i1 [ %no_items.0.off040, %do.body.if.end22_crit_edge ], [ false, %if.then5 ]
  %call1 = tail call i32 @cpumask_next(i32 noundef %call141, ptr noundef nonnull @__cpu_online_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %17
  br i1 %cmp, label %if.end22.do.body_crit_edge, label %for.end

if.end22.do.body_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.end:                                          ; preds = %if.end22
  br i1 %no_items.1.off0, label %for.end.for.end.thread_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.end.for.end.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end.thread, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 2147483647, %for.end.thread ], [ -1, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_inode_free_callback(ptr noundef %head) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %head, i32 -672
  %i_vnode.i = getelementptr i8, ptr %head, i32 -360
  %0 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %i_vnode.i, align 8
  %2 = and i16 %1, -4096
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.38)
  switch i16 %2, label %entry.sw.epilog_crit_edge [
    i16 -32768, label %entry.sw.bb_crit_edge
    i16 16384, label %entry.sw.bb_crit_edge33
    i16 -24576, label %entry.sw.bb_crit_edge34
  ]

entry.sw.bb_crit_edge34:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge33:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge33, %entry.sw.bb_crit_edge34
  %i_df = getelementptr i8, ptr %head, i32 -624
  tail call void @xfs_idestroy_fork(ptr noundef %i_df) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %i_afp = getelementptr i8, ptr %head, i32 -632
  %4 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_afp, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @xfs_idestroy_fork(ptr noundef nonnull %5) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_ifork_cache to i32))
  %6 = load ptr, ptr @xfs_ifork_cache, align 4
  %7 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_afp, align 8
  tail call void @kmem_cache_free(ptr noundef %6, ptr noundef %8) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %i_cowfp = getelementptr i8, ptr %head, i32 -628
  %9 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_cowfp, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @xfs_idestroy_fork(ptr noundef nonnull %10) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_ifork_cache to i32))
  %11 = load ptr, ptr @xfs_ifork_cache, align 4
  %12 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_cowfp, align 4
  tail call void @kmem_cache_free(ptr noundef %11, ptr noundef %13) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %i_itemp = getelementptr i8, ptr %head, i32 -592
  %14 = ptrtoint ptr %i_itemp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_itemp, align 8
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %if.end8.if.end18_crit_edge, label %if.then10

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then10:                                        ; preds = %if.end8
  %li_flags = getelementptr inbounds %struct.xfs_log_item, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %li_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %li_flags, align 4
  %and1.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool13.not = icmp eq i32 %and1.i, 0
  br i1 %tobool13.not, label %if.then10.cond.end_crit_edge, label %cond.false, !prof !162

if.then10.cond.end_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 142) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then10.cond.end_crit_edge
  tail call void @xfs_inode_item_destroy(ptr noundef %add.ptr.i) #12
  %18 = ptrtoint ptr %i_itemp to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %i_itemp, align 8
  br label %if.end18

if.end18:                                         ; preds = %cond.end, %if.end8.if.end18_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_inode_cache to i32))
  %19 = load ptr, ptr @xfs_inode_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %19, ptr noundef %add.ptr.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_idestroy_fork(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inode_item_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_iget_hit(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iget_hit, i32 0, i32 1), ptr blockaddress(@trace_xfs_iget_hit, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !209
  %call42 = tail call i32 @__traceiter_xfs_iget_hit(ptr noundef null, ptr noundef %ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !210
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iget_hit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iget_hit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_iget_hit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_iget_hit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 749, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_iget_skip(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iget_skip, i32 0, i32 1), ptr blockaddress(@trace_xfs_iget_skip, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !211
  %call42 = tail call i32 @__traceiter_xfs_iget_skip(ptr noundef null, ptr noundef %ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !212
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iget_skip, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iget_skip, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_iget_skip.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_iget_skip.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 746, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
declare dso_local void @xfs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_iget_recycle(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iget_recycle, i32 0, i32 1), ptr blockaddress(@trace_xfs_iget_recycle, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !213
  %call42 = tail call i32 @__traceiter_xfs_iget_recycle(ptr noundef null, ptr noundef %ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !214
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iget_recycle, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iget_recycle, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_iget_recycle.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_iget_recycle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 747, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
define internal fastcc void @trace_xfs_iget_recycle_fail(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iget_recycle_fail, i32 0, i32 1), ptr blockaddress(@trace_xfs_iget_recycle_fail, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !215
  %call42 = tail call i32 @__traceiter_xfs_iget_recycle_fail(ptr noundef null, ptr noundef %ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !216
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iget_recycle_fail, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iget_recycle_fail, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_iget_recycle_fail.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_iget_recycle_fail.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 748, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
define internal fastcc void @xfs_perag_clear_inode_tag(ptr noundef %pag, i32 noundef %agino, i32 noundef %tag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pag, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 31, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !165

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 268, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %agino)
  %cmp24.not = icmp eq i32 %agino, -1
  br i1 %cmp24.not, label %if.else, label %if.end34

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tag)
  %cond = icmp eq i32 %tag, 0
  br i1 %cond, label %if.else.if.then36_crit_edge, label %if.end34.thread, !prof !162

if.else.if.then36_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

if.end34.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 277) #12
  br label %if.end37

if.end34:                                         ; preds = %if.end
  %pag_ici_root = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 32
  %call26 = tail call ptr @radix_tree_tag_clear(ptr noundef %pag_ici_root, i32 noundef %agino, i32 noundef %tag) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tag)
  %cmp35 = icmp eq i32 %tag, 0
  br i1 %cmp35, label %if.end34.if.then36_crit_edge, label %if.end34.if.end37_crit_edge

if.end34.if.end37_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.end34.if.then36_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

if.then36:                                        ; preds = %if.end34.if.then36_crit_edge, %if.else.if.then36_crit_edge
  %pag_ici_reclaimable = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 33
  %3 = ptrtoint ptr %pag_ici_reclaimable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pag_ici_reclaimable, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %pag_ici_reclaimable, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end34.if.end37_crit_edge, %if.end34.thread
  %pag_ici_root38 = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 32
  %call39 = tail call i32 @radix_tree_tagged(ptr noundef %pag_ici_root38, i32 noundef %tag) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %m_perag_lock = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 83
  tail call void @_raw_spin_lock(ptr noundef %m_perag_lock) #12
  %m_perag_tree = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 82
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %5 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pag_agno, align 4
  %call43 = tail call ptr @radix_tree_tag_clear(ptr noundef %m_perag_tree, i32 noundef %6, i32 noundef %tag) #12
  tail call void @_raw_spin_unlock(ptr noundef %m_perag_lock) #12
  %7 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pag_agno, align 4
  %9 = tail call ptr @llvm.returnaddress(i32 0)
  %10 = ptrtoint ptr %9 to i32
  tail call fastcc void @trace_xfs_perag_clear_inode_tag(ptr noundef %1, i32 noundef %8, i32 noundef %tag, i32 noundef %10)
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end37.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_iget_recycle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_iget_recycle_fail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_tag_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_perag_clear_inode_tag(ptr noundef %mp, i32 noundef %agno, i32 noundef %refcount, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_perag_clear_inode_tag, i32 0, i32 1), ptr blockaddress(@trace_xfs_perag_clear_inode_tag, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !217
  %call42 = tail call i32 @__traceiter_xfs_perag_clear_inode_tag(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %refcount, i32 noundef %caller_ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !218
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_perag_clear_inode_tag, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_perag_clear_inode_tag, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_perag_clear_inode_tag.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_perag_clear_inode_tag.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 193, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_perag_clear_inode_tag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_iget_hit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_iget_skip(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
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
declare dso_local i32 @xfs_imap(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_imap_to_bp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_inode_from_disk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_buf_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_set_ref(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_brelse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_iget_miss(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iget_miss, i32 0, i32 1), ptr blockaddress(@trace_xfs_iget_miss, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !219
  %call42 = tail call i32 @__traceiter_xfs_iget_miss(ptr noundef null, ptr noundef %ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !220
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iget_miss, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_iget_miss, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_iget_miss.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_iget_miss.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 750, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
declare dso_local i32 @radix_tree_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ilock_nowait(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_mark_dontcache(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radix_tree_preload_end() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @radix_tree_preloads to i32)
  %6 = inttoptr i32 %add to ptr
  tail call fastcc void @local_lock_release(ptr noundef %6)
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !169
  %7 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %10, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__destroy_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_iget_miss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !162

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #12
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_setup_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_setup_iops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_inode_set_eofblocks_tag(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_perag_set_inode_tag(ptr noundef %pag, i32 noundef %agino, i32 noundef %tag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pag, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 31, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !165

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %pag_ici_root = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 32
  %call24 = tail call i32 @radix_tree_tagged(ptr noundef %pag_ici_root, i32 noundef %tag) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  %call27 = tail call ptr @radix_tree_tag_set(ptr noundef %pag_ici_root, i32 noundef %agino, i32 noundef %tag) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tag)
  %cmp28 = icmp eq i32 %tag, 0
  br i1 %cmp28, label %if.then29, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pag_ici_reclaimable = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 33
  %3 = ptrtoint ptr %pag_ici_reclaimable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pag_ici_reclaimable, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %pag_ici_reclaimable, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end.if.end30_crit_edge
  br i1 %tobool25.not, label %if.end33, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end33:                                         ; preds = %if.end30
  %m_perag_lock = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 83
  tail call void @_raw_spin_lock(ptr noundef %m_perag_lock) #12
  %m_perag_tree = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 82
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %5 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pag_agno, align 4
  %call34 = tail call ptr @radix_tree_tag_set(ptr noundef %m_perag_tree, i32 noundef %6, i32 noundef %tag) #12
  tail call void @_raw_spin_unlock(ptr noundef %m_perag_lock) #12
  %7 = zext i32 %tag to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %tag, label %if.end33.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb36
  ]

if.end33.sw.epilog_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @xfs_reclaim_work_queue(ptr noundef %1)
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @xfs_blockgc_queue(ptr noundef %pag)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb36, %sw.bb, %if.end33.sw.epilog_crit_edge
  %8 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pag_agno, align 4
  %10 = tail call ptr @llvm.returnaddress(i32 0)
  %11 = ptrtoint ptr %10 to i32
  tail call fastcc void @trace_xfs_perag_set_inode_tag(ptr noundef %1, i32 noundef %9, i32 noundef %tag, i32 noundef %11)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end30.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_tag_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_perag_set_inode_tag(ptr noundef %mp, i32 noundef %agno, i32 noundef %refcount, i32 noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_perag_set_inode_tag, i32 0, i32 1), ptr blockaddress(@trace_xfs_perag_set_inode_tag, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !221
  %call42 = tail call i32 @__traceiter_xfs_perag_set_inode_tag(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %refcount, i32 noundef %caller_ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !222
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_perag_set_inode_tag, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_perag_set_inode_tag, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_perag_set_inode_tag.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_perag_set_inode_tag.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 192, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
declare dso_local i32 @__traceiter_xfs_perag_set_inode_tag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_inode_clear_eofblocks_tag(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_inode_set_cowblocks_tag(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_inode_clear_cowblocks_tag(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_blockgc_stop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_blockgc_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_blockgc_worker(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_blockgc_free_space(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_blockgc_flush_all(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_gang_lookup_tag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_inode_free_eofblocks(ptr noundef %ip, ptr noundef %icw, ptr nocapture noundef %lockflags) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %icw, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %icw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %icw, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %2 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool1, %land.rhs ]
  %i_flags_lock.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #12
  %i_flags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 16
  %3 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_flags.i.i, align 8
  %and.i.i = and i32 %4, 512
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not, label %land.end.cleanup_crit_edge, label %if.end

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.end
  br i1 %2, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %i_mapping = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %5 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_mapping, align 8
  %xa_flags.i.i = getelementptr inbounds %struct.address_space, ptr %6, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %xa_flags.i.i, align 4
  %and.i.i32 = and i32 %8, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i32)
  %tobool.i.i.not = icmp eq i32 %and.i.i32, 0
  br i1 %tobool.i.i.not, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %call8 = tail call fastcc zeroext i1 @xfs_icwalk_match(ptr noundef %ip, ptr noundef %icw)
  br i1 %call8, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %call11 = tail call i32 @xfs_ilock_nowait(ptr noundef %ip, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %. = select i1 %2, i32 -11, i32 0
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %lockflags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lockflags, align 4
  %or = or i32 %10, 1
  store i32 %or, ptr %lockflags, align 4
  %call18 = tail call zeroext i1 @xfs_can_free_eofblocks(ptr noundef %ip, i1 noundef zeroext false) #12
  br i1 %call18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %call20 = tail call i32 @xfs_free_eofblocks(ptr noundef %ip) #12
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @trace_xfs_inode_free_eofblocks_invalid(ptr noundef %ip)
  tail call fastcc void @trace_xfs_inode_clear_eofblocks_tag(ptr noundef %ip) #12
  tail call fastcc void @xfs_blockgc_clear_iflag(ptr noundef %ip, i32 noundef 512) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then19, %if.then13, %if.end7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.then19 ], [ 0, %if.end21 ], [ 0, %land.end.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ %., %if.then13 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_inode_free_cowblocks(ptr noundef %ip, ptr noundef %icw, ptr nocapture noundef %lockflags) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %icw, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %icw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %icw, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %phi.sel = select i1 %tobool1.not, i32 0, i32 -11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %2 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  %i_flags_lock.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #12
  %i_flags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 16
  %3 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_flags.i.i, align 8
  %and.i.i = and i32 %4, 4096
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not, label %land.end.cleanup_crit_edge, label %if.end

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.end
  %i_cowfp.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %5 = ptrtoint ptr %i_cowfp.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_cowfp.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.if.then.i_crit_edge, label %xfs_inode_has_cow_data.exit.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

xfs_inode_has_cow_data.exit.i:                    ; preds = %if.end
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool2.i.not.i = icmp eq i64 %8, 0
  br i1 %tobool2.i.not.i, label %xfs_inode_has_cow_data.exit.i.if.then.i_crit_edge, label %if.end.i

xfs_inode_has_cow_data.exit.i.if.then.i_crit_edge: ; preds = %xfs_inode_has_cow_data.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %xfs_inode_has_cow_data.exit.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  tail call fastcc void @trace_xfs_inode_free_cowblocks_invalid(ptr noundef %ip) #12
  tail call fastcc void @trace_xfs_inode_clear_cowblocks_tag(ptr noundef %ip) #12
  tail call fastcc void @xfs_blockgc_clear_iflag(ptr noundef %ip, i32 noundef 4096) #12
  br label %cleanup

if.end.i:                                         ; preds = %xfs_inode_has_cow_data.exit.i
  %i_state.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 24
  %9 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_state.i, align 8
  %and.i = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i
  %i_mapping.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %11 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_mapping.i, align 8
  %xa_flags.i.i.i = getelementptr inbounds %struct.address_space, ptr %12, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xa_flags.i.i.i, align 4
  %15 = and i32 %14, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %.not.i = icmp eq i32 %15, 0
  br i1 %.not.i, label %xfs_prep_free_cowblocks.exit, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

xfs_prep_free_cowblocks.exit:                     ; preds = %lor.lhs.false.i
  %i_dio_count.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 41
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_dio_count.i, i32 noundef 4) #12
  %16 = ptrtoint ptr %i_dio_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %i_dio_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool11.not.i = icmp eq i32 %17, 0
  br i1 %tobool11.not.i, label %if.end5, label %xfs_prep_free_cowblocks.exit.cleanup_crit_edge

xfs_prep_free_cowblocks.exit.cleanup_crit_edge:   ; preds = %xfs_prep_free_cowblocks.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %xfs_prep_free_cowblocks.exit
  %call6 = tail call fastcc zeroext i1 @xfs_icwalk_match(ptr noundef %ip, ptr noundef %icw)
  br i1 %call6, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %18 = ptrtoint ptr %lockflags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lockflags, align 4
  %and9 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %land.lhs.true, label %if.end8.if.end17_crit_edge

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end8
  %call11 = tail call i32 @xfs_ilock_nowait(ptr noundef %ip, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end8.if.end17_crit_edge
  %20 = ptrtoint ptr %lockflags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lockflags, align 4
  %or = or i32 %21, 1
  store i32 %or, ptr %lockflags, align 4
  %call18 = tail call i32 @xfs_ilock_nowait(ptr noundef %ip, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end24

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %22 = ptrtoint ptr %lockflags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lockflags, align 4
  %or25 = or i32 %23, 16
  store i32 %or25, ptr %lockflags, align 4
  %24 = ptrtoint ptr %i_cowfp.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_cowfp.i.i, align 4
  %tobool.not.i.i44 = icmp eq ptr %25, null
  br i1 %tobool.not.i.i44, label %if.end24.if.then.i47_crit_edge, label %xfs_inode_has_cow_data.exit.i46

if.end24.if.then.i47_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i47

xfs_inode_has_cow_data.exit.i46:                  ; preds = %if.end24
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %25, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool2.i.not.i45 = icmp eq i64 %27, 0
  br i1 %tobool2.i.not.i45, label %xfs_inode_has_cow_data.exit.i46.if.then.i47_crit_edge, label %if.end.i51

xfs_inode_has_cow_data.exit.i46.if.then.i47_crit_edge: ; preds = %xfs_inode_has_cow_data.exit.i46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i47

if.then.i47:                                      ; preds = %xfs_inode_has_cow_data.exit.i46.if.then.i47_crit_edge, %if.end24.if.then.i47_crit_edge
  tail call fastcc void @trace_xfs_inode_free_cowblocks_invalid(ptr noundef %ip) #12
  tail call fastcc void @trace_xfs_inode_clear_cowblocks_tag(ptr noundef %ip) #12
  tail call fastcc void @xfs_blockgc_clear_iflag(ptr noundef %ip, i32 noundef 4096) #12
  br label %cleanup

if.end.i51:                                       ; preds = %xfs_inode_has_cow_data.exit.i46
  %28 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_state.i, align 8
  %and.i49 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %tobool.not.i50 = icmp eq i32 %and.i49, 0
  br i1 %tobool.not.i50, label %lor.lhs.false.i55, label %if.end.i51.cleanup_crit_edge

if.end.i51.cleanup_crit_edge:                     ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i55:                                ; preds = %if.end.i51
  %30 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_mapping.i, align 8
  %xa_flags.i.i.i53 = getelementptr inbounds %struct.address_space, ptr %31, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %xa_flags.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %xa_flags.i.i.i53, align 4
  %34 = and i32 %33, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %.not.i54 = icmp eq i32 %34, 0
  br i1 %.not.i54, label %xfs_prep_free_cowblocks.exit61, label %lor.lhs.false.i55.cleanup_crit_edge

lor.lhs.false.i55.cleanup_crit_edge:              ; preds = %lor.lhs.false.i55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

xfs_prep_free_cowblocks.exit61:                   ; preds = %lor.lhs.false.i55
  %call.i.i.i57 = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_dio_count.i, i32 noundef 4) #12
  %35 = ptrtoint ptr %i_dio_count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %i_dio_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool11.not.i58 = icmp eq i32 %36, 0
  br i1 %tobool11.not.i58, label %if.then27, label %xfs_prep_free_cowblocks.exit61.cleanup_crit_edge

xfs_prep_free_cowblocks.exit61.cleanup_crit_edge: ; preds = %xfs_prep_free_cowblocks.exit61
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then27:                                        ; preds = %xfs_prep_free_cowblocks.exit61
  call void @__sanitizer_cov_trace_pc() #14
  %call28 = tail call i32 @xfs_reflink_cancel_cow_range(ptr noundef %ip, i64 noundef 0, i64 noundef -1, i1 noundef zeroext false) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %xfs_prep_free_cowblocks.exit61.cleanup_crit_edge, %lor.lhs.false.i55.cleanup_crit_edge, %if.end.i51.cleanup_crit_edge, %if.then.i47, %if.end17.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %xfs_prep_free_cowblocks.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.end.cleanup_crit_edge ], [ 0, %xfs_prep_free_cowblocks.exit.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %call28, %if.then27 ], [ 0, %xfs_prep_free_cowblocks.exit61.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then.i47 ], [ 0, %lor.lhs.false.i55.cleanup_crit_edge ], [ 0, %if.end.i51.cleanup_crit_edge ], [ %2, %land.lhs.true.cleanup_crit_edge ], [ %2, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @xfs_icwalk_match(ptr noundef %ip, ptr noundef readonly %icw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %icw, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %icw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %icw, align 8
  %and = and i32 %1, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = tail call fastcc zeroext i1 @xfs_icwalk_match_id_union(ptr noundef %ip, ptr noundef nonnull %icw)
  br i1 %call, label %if.then2.if.end8_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end5:                                          ; preds = %if.end
  %call3 = tail call fastcc zeroext i1 @xfs_icwalk_match_id(ptr noundef %ip, ptr noundef nonnull %icw)
  br i1 %call3, label %if.end5.if.end8_crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end8:                                          ; preds = %if.end5.if.end8_crit_edge, %if.then2.if.end8_crit_edge
  %and10 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end14_crit_edge, label %land.lhs.true

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end8
  %i_vnode.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %2 = ptrtoint ptr %i_vnode.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_vnode.i.i, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %4)
  %cmp.i = icmp eq i16 %4, -32768
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true
  %i_size_seqcount.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 23
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 23, i32 1
  %i_size18.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 14
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !223
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %6 = tail call ptr @llvm.returnaddress(i32 0) #12
  %7 = ptrtoint ptr %6 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %7) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %7) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call ptr @llvm.returnaddress(i32 0) #12
  %9 = ptrtoint ptr %8 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %9) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %9) #12
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !224
  %and.i.i.i.i.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !165

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #12, !srcloc !225
  %11 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and29.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool.not30.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool.not30.i.i, label %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !226
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !227
  %13 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and.i.i = and i32 %14, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.while.end.i.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

do.end.i.i.while.end.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end.i.i.while.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %12, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge ], [ %14, %do.end.i.i.while.end.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !228
  %15 = ptrtoint ptr %i_size18.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_size18.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !229
  %17 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq i32 %18, %.lcssa.i.i
  br i1 %cmp.i.i.not.i.i, label %while.end.i.i.XFS_ISIZE.exit_crit_edge, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

while.end.i.i.XFS_ISIZE.exit_crit_edge:           ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %XFS_ISIZE.exit

if.end.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %i_disk_size.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %19 = ptrtoint ptr %i_disk_size.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i_disk_size.i, align 8
  br label %XFS_ISIZE.exit

XFS_ISIZE.exit:                                   ; preds = %if.end.i, %while.end.i.i.XFS_ISIZE.exit_crit_edge
  %retval.0.i = phi i64 [ %20, %if.end.i ], [ %16, %while.end.i.i.XFS_ISIZE.exit_crit_edge ]
  %icw_min_file_size = getelementptr inbounds %struct.xfs_icwalk, ptr %icw, i32 0, i32 4
  %21 = ptrtoint ptr %icw_min_file_size to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %icw_min_file_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i, i64 %22)
  %cmp = icmp ult i64 %retval.0.i, %22
  br i1 %cmp, label %XFS_ISIZE.exit.cleanup_crit_edge, label %XFS_ISIZE.exit.if.end14_crit_edge

XFS_ISIZE.exit.if.end14_crit_edge:                ; preds = %XFS_ISIZE.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

XFS_ISIZE.exit.cleanup_crit_edge:                 ; preds = %XFS_ISIZE.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %XFS_ISIZE.exit.if.end14_crit_edge, %if.end8.if.end14_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %XFS_ISIZE.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end14 ], [ true, %entry.cleanup_crit_edge ], [ false, %if.end5.cleanup_crit_edge ], [ false, %XFS_ISIZE.exit.cleanup_crit_edge ], [ false, %if.then2.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_can_free_eofblocks(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_free_eofblocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_inode_free_eofblocks_invalid(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_free_eofblocks_invalid, i32 0, i32 1), ptr blockaddress(@trace_xfs_inode_free_eofblocks_invalid, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !230
  %call42 = tail call i32 @__traceiter_xfs_inode_free_eofblocks_invalid(ptr noundef null, ptr noundef %ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !231
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_free_eofblocks_invalid, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_free_eofblocks_invalid, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_inode_free_eofblocks_invalid.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_inode_free_eofblocks_invalid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 779, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @xfs_icwalk_match_id_union(ptr nocapture noundef readonly %ip, ptr nocapture noundef readonly %icw) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %icw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %icw, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_uid = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 2
  %icw_uid = getelementptr inbounds %struct.xfs_icwalk, ptr %icw, i32 0, i32 1
  %2 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack27 = load i32, ptr %i_uid, align 4
  %3 = ptrtoint ptr %icw_uid to i32
  call void @__asan_load4_noabort(i32 %3)
  %.unpack28 = load i32, ptr %icw_uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack27, i32 %.unpack28)
  %cmp.i = icmp eq i32 %.unpack27, %.unpack28
  br i1 %cmp.i, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and4 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end12_crit_edge, label %land.lhs.true6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true6:                                   ; preds = %if.end
  %i_gid = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 3
  %icw_gid = getelementptr inbounds %struct.xfs_icwalk, ptr %icw, i32 0, i32 2
  %4 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %i_gid, align 8
  %5 = ptrtoint ptr %icw_gid to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack26 = load i32, ptr %icw_gid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack26)
  %cmp.i30 = icmp eq i32 %.unpack, %.unpack26
  br i1 %cmp.i30, label %land.lhs.true6.return_crit_edge, label %land.lhs.true6.if.end12_crit_edge

land.lhs.true6.if.end12_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true6.return_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end12:                                         ; preds = %land.lhs.true6.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %and14 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.if.end18_crit_edge, label %land.lhs.true16

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true16:                                  ; preds = %if.end12
  %i_projid = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 20
  %6 = ptrtoint ptr %i_projid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_projid, align 8
  %icw_prid = getelementptr inbounds %struct.xfs_icwalk, ptr %icw, i32 0, i32 3
  %8 = ptrtoint ptr %icw_prid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %icw_prid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %land.lhs.true16.return_crit_edge, label %land.lhs.true16.if.end18_crit_edge

land.lhs.true16.if.end18_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true16.return_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end18:                                         ; preds = %land.lhs.true16.if.end18_crit_edge, %if.end12.if.end18_crit_edge
  br label %return

return:                                           ; preds = %if.end18, %land.lhs.true16.return_crit_edge, %land.lhs.true6.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end18 ], [ true, %land.lhs.true.return_crit_edge ], [ true, %land.lhs.true6.return_crit_edge ], [ true, %land.lhs.true16.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @xfs_icwalk_match_id(ptr nocapture noundef readonly %ip, ptr nocapture noundef readonly %icw) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %icw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %icw, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_uid = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 2
  %icw_uid = getelementptr inbounds %struct.xfs_icwalk, ptr %icw, i32 0, i32 1
  %2 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack27 = load i32, ptr %i_uid, align 4
  %3 = ptrtoint ptr %icw_uid to i32
  call void @__asan_load4_noabort(i32 %3)
  %.unpack28 = load i32, ptr %icw_uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack27, i32 %.unpack28)
  %cmp.i = icmp eq i32 %.unpack27, %.unpack28
  br i1 %cmp.i, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and4 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end12_crit_edge, label %land.lhs.true6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true6:                                   ; preds = %if.end
  %i_gid = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 3
  %icw_gid = getelementptr inbounds %struct.xfs_icwalk, ptr %icw, i32 0, i32 2
  %4 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %i_gid, align 8
  %5 = ptrtoint ptr %icw_gid to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack26 = load i32, ptr %icw_gid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack26)
  %cmp.i30 = icmp eq i32 %.unpack, %.unpack26
  br i1 %cmp.i30, label %land.lhs.true6.if.end12_crit_edge, label %land.lhs.true6.return_crit_edge

land.lhs.true6.return_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true6.if.end12_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true6.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %and14 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.if.end18_crit_edge, label %land.lhs.true16

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true16:                                  ; preds = %if.end12
  %i_projid = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 20
  %6 = ptrtoint ptr %i_projid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_projid, align 8
  %icw_prid = getelementptr inbounds %struct.xfs_icwalk, ptr %icw, i32 0, i32 3
  %8 = ptrtoint ptr %icw_prid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %icw_prid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp eq i32 %7, %9
  br i1 %cmp.not, label %land.lhs.true16.if.end18_crit_edge, label %land.lhs.true16.return_crit_edge

land.lhs.true16.return_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true16.if.end18_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true16.if.end18_crit_edge, %if.end12.if.end18_crit_edge
  br label %return

return:                                           ; preds = %if.end18, %land.lhs.true16.return_crit_edge, %land.lhs.true6.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end18 ], [ false, %land.lhs.true.return_crit_edge ], [ false, %land.lhs.true6.return_crit_edge ], [ false, %land.lhs.true16.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_inode_free_eofblocks_invalid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_reflink_cancel_cow_range(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_inode_free_cowblocks_invalid(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_free_cowblocks_invalid, i32 0, i32 1), ptr blockaddress(@trace_xfs_inode_free_cowblocks_invalid, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !232
  %call42 = tail call i32 @__traceiter_xfs_inode_free_cowblocks_invalid(ptr noundef null, ptr noundef %ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !233
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_free_cowblocks_invalid, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_free_cowblocks_invalid, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_inode_free_cowblocks_invalid.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_inode_free_cowblocks_invalid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 782, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
declare dso_local i32 @__traceiter_xfs_inode_free_cowblocks_invalid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunpin_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iflush_abort(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_inode_reclaiming(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_reclaiming, i32 0, i32 1), ptr blockaddress(@trace_xfs_inode_reclaiming, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !234
  %call42 = tail call i32 @__traceiter_xfs_inode_reclaiming(ptr noundef null, ptr noundef %ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !235
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_reclaiming, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_reclaiming, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_inode_reclaiming.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_inode_reclaiming.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 784, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_inode_reclaiming(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_inodegc_worker(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_inode_inactivating(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_inactivating, i32 0, i32 1), ptr blockaddress(@trace_xfs_inode_inactivating, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !236
  %call42 = tail call i32 @__traceiter_xfs_inode_inactivating(ptr noundef null, ptr noundef %ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !237
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_inactivating, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_inactivating, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_inode_inactivating.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_inode_inactivating.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 786, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
declare dso_local void @xfs_inactive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_inode_inactivating(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_inodegc_flush(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_inodegc_stop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_inodegc_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_inodegc_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_inode_set_need_inactive(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_set_need_inactive, i32 0, i32 1), ptr blockaddress(@trace_xfs_inode_set_need_inactive, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !238
  %call42 = tail call i32 @__traceiter_xfs_inode_set_need_inactive(ptr noundef null, ptr noundef %ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !239
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_set_need_inactive, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_set_need_inactive, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_inode_set_need_inactive.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_inode_set_need_inactive.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 785, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
define internal fastcc void @trace_xfs_inodegc_throttle(ptr noundef %mp, ptr noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inodegc_throttle, i32 0, i32 1), ptr blockaddress(@trace_xfs_inodegc_throttle, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !240
  %call42 = tail call i32 @__traceiter_xfs_inodegc_throttle(ptr noundef null, ptr noundef %mp, ptr noundef %caller_ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !241
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inodegc_throttle, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inodegc_throttle, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_inodegc_throttle.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_inodegc_throttle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 246, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_inode_set_need_inactive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_compare(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_inode_near_dquot_enforcement(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_inodegc_throttle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_check_delalloc(ptr noundef %ip, i32 noundef %whichfork) unnamed_addr #0 align 64 {
entry:
  %got = alloca %struct.xfs_bmbt_irec, align 8
  %icur = alloca %struct.xfs_iext_cursor, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %whichfork)
  %cmp = icmp eq i32 %whichfork, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  br label %cond.end4

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp1 = icmp eq i32 %whichfork, 1
  br i1 %cmp1, label %cond.true2, label %cond.false3

cond.true2:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %0 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_afp, align 8
  br label %cond.end4

cond.false3:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %2 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_cowfp, align 4
  br label %cond.end4

cond.end4:                                        ; preds = %cond.false3, %cond.true2, %cond.true
  %cond5 = phi ptr [ %i_df, %cond.true ], [ %1, %cond.true2 ], [ %3, %cond.false3 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %got) #12
  %4 = call ptr @memset(ptr %got, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur) #12
  %5 = ptrtoint ptr %icur to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur, align 4, !annotation !166
  %6 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !166
  %tobool.not = icmp eq ptr %cond5, null
  br i1 %tobool.not, label %cond.end4.cleanup_crit_edge, label %lor.lhs.false

cond.end4.cleanup_crit_edge:                      ; preds = %cond.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %cond.end4
  %call = call zeroext i1 @xfs_iext_lookup_extent(ptr noundef %ip, ptr noundef nonnull %cond5, i64 noundef 0, ptr noundef nonnull %icur, ptr noundef nonnull %got) #12
  br i1 %call, label %do.body.preheader, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.preheader:                                ; preds = %lor.lhs.false
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %got, i32 0, i32 1
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %cond10 = select i1 %cmp, ptr @.str.32, ptr @.str.33
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %got, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %8 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %br_startblock, align 8
  %and.i = and i64 %9, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i)
  %cmp.i.not = icmp eq i64 %and.i, 4503599627239424
  br i1 %cmp.i.not, label %if.then8, label %do.body.do.cond_crit_edge

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ip, align 8
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_ino, align 8
  %14 = ptrtoint ptr %got to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %got, align 8
  %16 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %br_blockcount, align 8
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %11, ptr noundef nonnull @.str.31, i64 noundef %13, ptr noundef nonnull %cond10, i64 noundef %15, i64 noundef %17) #12
  br label %do.cond

do.cond:                                          ; preds = %if.then8, %do.body.do.cond_crit_edge
  call void @xfs_iext_next(ptr noundef nonnull %cond5, ptr noundef nonnull %icur) #12
  %call.i = call zeroext i1 @xfs_iext_get_extent(ptr noundef nonnull %cond5, ptr noundef nonnull %icur, ptr noundef nonnull %got) #12
  br i1 %call.i, label %do.cond.do.body_crit_edge, label %do.cond.cleanup_crit_edge

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %cond.end4.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %got) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_inode_set_reclaimable(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_set_reclaimable, i32 0, i32 1), ptr blockaddress(@trace_xfs_inode_set_reclaimable, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !242
  %call42 = tail call i32 @__traceiter_xfs_inode_set_reclaimable(ptr noundef null, ptr noundef %ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !243
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_set_reclaimable, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inode_set_reclaimable, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_inode_set_reclaimable.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_inode_set_reclaimable.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 783, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
declare dso_local zeroext i1 @xfs_iext_lookup_extent(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iext_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_iext_get_extent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_inode_set_reclaimable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_inodegc_shrinker_scan(ptr noundef %mp, ptr noundef %sc, ptr noundef %caller_ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inodegc_shrinker_scan, i32 0, i32 1), ptr blockaddress(@trace_xfs_inodegc_shrinker_scan, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !171

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !162

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !244
  %call42 = tail call i32 @__traceiter_xfs_inodegc_shrinker_scan(ptr noundef null, ptr noundef %mp, ptr noundef %sc, ptr noundef %caller_ip) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !245
  %13 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !162

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !152) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inodegc_shrinker_scan, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_inodegc_shrinker_scan, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_inodegc_shrinker_scan.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_xfs_inodegc_shrinker_scan.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 271, ptr noundef nonnull @.str.19) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %31 = tail call i32 @llvm.read_register.i32(metadata !152) #12
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
declare dso_local i32 @__traceiter_xfs_inodegc_shrinker_scan(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !45, !46, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !67, !69, !70, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !103, !104, !106, !107, !109, !111, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !144, !146, !148, !149, !151}
!llvm.named.register.sp = !{!152}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_icache.c", i32 93, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_icache.c", i32 94, i32 2}
!5 = !{ptr @xfs_inode_alloc.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_icache.c", i32 110, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @xfs_inode_alloc.__key.4, !9, !"__key", i1 false, i1 false}
!9 = !{!"../fs/xfs/xfs_icache.c", i32 112, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/xfs_icache.c", i32 166, i32 2}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_icache.c", i32 714, i32 2}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_icache.c", i32 1450, i32 16}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_icache.c", i32 2095, i32 2}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_icache.c", i32 156, i32 2}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/xfs_icache.c", i32 141, i32 3}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/xfs_icache.c", i32 410, i32 1}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/xfs_icache.c", i32 417, i32 1}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/xfs_icache.c", i32 354, i32 2}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/xfs/xfs_icache.c", i32 364, i32 3}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../fs/xfs/xfs_trace.h", i32 747, i32 1}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!39 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../fs/xfs/xfs_trace.h", i32 748, i32 1}
!45 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/xfs/xfs_icache.c", i32 277, i32 3}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../fs/xfs/xfs_trace.h", i32 193, i32 1}
!50 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../fs/xfs/xfs_trace.h", i32 749, i32 1}
!53 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../fs/xfs/xfs_trace.h", i32 746, i32 1}
!56 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!59 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../fs/xfs/xfs_trace.h", i32 750, i32 1}
!62 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!65 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../fs/xfs/xfs_trace.h", i32 777, i32 1}
!69 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/xfs/xfs_icache.c", i32 1164, i32 2}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../fs/xfs/xfs_trace.h", i32 192, i32 1}
!74 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../fs/xfs/xfs_trace.h", i32 778, i32 1}
!77 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../fs/xfs/xfs_trace.h", i32 780, i32 1}
!80 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../fs/xfs/xfs_trace.h", i32 781, i32 1}
!83 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../fs/xfs/xfs_trace.h", i32 249, i32 1}
!86 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../fs/xfs/xfs_trace.h", i32 248, i32 1}
!89 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../fs/xfs/xfs_trace.h", i32 250, i32 1}
!92 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../fs/xfs/xfs_trace.h", i32 4051, i32 1}
!95 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../fs/xfs/xfs_trace.h", i32 251, i32 1}
!98 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!99 = !{ptr @.str.27, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/xfs/xfs_icache.c", i32 1388, i32 2}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../fs/xfs/xfs_trace.h", i32 779, i32 1}
!103 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../fs/xfs/xfs_trace.h", i32 782, i32 1}
!106 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!107 = !{ptr @.str.28, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/xfs/xfs_icache.c", i32 920, i32 3}
!109 = !{ptr @.str.29, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/xfs/xfs_icache.c", i32 933, i32 2}
!111 = !{ptr @.str.30, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/xfs/xfs_icache.c", i32 935, i32 2}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../fs/xfs/xfs_trace.h", i32 784, i32 1}
!115 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!116 = distinct !{null, !117, !"__already_done", i1 false, i1 false}
!117 = !{!"../fs/xfs/xfs_trace.h", i32 195, i32 1}
!118 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../fs/xfs/xfs_trace.h", i32 786, i32 1}
!121 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!122 = distinct !{null, !123, !"__already_done", i1 false, i1 false}
!123 = !{!"../fs/xfs/xfs_trace.h", i32 242, i32 1}
!124 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../fs/xfs/xfs_trace.h", i32 244, i32 1}
!127 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../fs/xfs/xfs_trace.h", i32 243, i32 1}
!130 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../fs/xfs/xfs_trace.h", i32 245, i32 1}
!133 = distinct !{null, !132, !"__warned", i1 false, i1 false}
!134 = distinct !{null, !135, !"__already_done", i1 false, i1 false}
!135 = !{!"../fs/xfs/xfs_trace.h", i32 785, i32 1}
!136 = distinct !{null, !135, !"__warned", i1 false, i1 false}
!137 = distinct !{null, !138, !"__already_done", i1 false, i1 false}
!138 = !{!"../fs/xfs/xfs_trace.h", i32 246, i32 1}
!139 = distinct !{null, !138, !"__warned", i1 false, i1 false}
!140 = !{ptr @.str.31, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/xfs/xfs_icache.c", i32 1778, i32 2}
!142 = !{ptr @.str.32, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/xfs/xfs_icache.c", i32 1780, i32 34}
!144 = !{ptr @.str.33, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/xfs/xfs_icache.c", i32 1780, i32 43}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../fs/xfs/xfs_trace.h", i32 783, i32 1}
!148 = distinct !{null, !147, !"__warned", i1 false, i1 false}
!149 = distinct !{null, !150, !"__already_done", i1 false, i1 false}
!150 = !{!"../fs/xfs/xfs_trace.h", i32 253, i32 1}
!151 = distinct !{null, !150, !"__warned", i1 false, i1 false}
!152 = !{!"sp"}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{!"branch_weights", i32 2000, i32 1}
!163 = !{i64 2149992217}
!164 = !{i64 2149992483}
!165 = !{!"branch_weights", i32 1, i32 2000}
!166 = !{!"auto-init"}
!167 = !{i64 2166368911, i64 2166369395, i64 2166368948, i64 2166369004, i64 2166369038, i64 2166369062, i64 2166369103, i64 2166369124, i64 2166369152, i64 2166369186}
!168 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!169 = !{i64 2152680321}
!170 = !{i64 2155734710}
!171 = !{i64 2148298683, i64 2148298688, i64 2148298701, i64 2148298745, i64 2148298779, i64 2148298800}
!172 = !{i64 2158190479}
!173 = !{i64 2158190700}
!174 = !{i64 2150000776}
!175 = !{i64 2150001812}
!176 = !{i64 2158207734}
!177 = !{i64 2158207959}
!178 = !{i64 2158246722}
!179 = !{i64 2158246943}
!180 = !{i64 2158263977}
!181 = !{i64 2158264202}
!182 = !{i64 2156380723}
!183 = !{i64 2156380944}
!184 = !{i64 2156364027}
!185 = !{i64 2156364250}
!186 = !{i64 2156397443}
!187 = !{i64 2156397668}
!188 = !{i64 2165888808}
!189 = !{i64 2165889051}
!190 = !{i64 2156414388}
!191 = !{i64 2156414619}
!192 = !{i64 2149273356}
!193 = !{i64 1177463, i64 1177480, i64 1177504, i64 1177530, i64 1177548}
!194 = !{i64 2149273709}
!195 = !{i64 2156238745}
!196 = !{i64 2156238978}
!197 = !{i64 2156255588}
!198 = !{i64 2156255811}
!199 = !{i64 2156293080}
!200 = !{i64 2156293301}
!201 = !{i64 2156272323}
!202 = !{i64 2156272546}
!203 = !{i64 2166430302}
!204 = !{i64 2166436150}
!205 = !{i64 2156309761}
!206 = !{i64 2156309984}
!207 = !{i64 2166420384}
!208 = !{i64 2166429203}
!209 = !{i64 2157794730}
!210 = !{i64 2157794921}
!211 = !{i64 2157746121}
!212 = !{i64 2157746314}
!213 = !{i64 2157762113}
!214 = !{i64 2157762312}
!215 = !{i64 2157778462}
!216 = !{i64 2157778671}
!217 = !{i64 2156221262}
!218 = !{i64 2156221533}
!219 = !{i64 2157814612}
!220 = !{i64 2157814805}
!221 = !{i64 2156198723}
!222 = !{i64 2156198990}
!223 = !{i64 1075375, i64 1075436}
!224 = !{i64 1078107}
!225 = !{i64 1078392}
!226 = !{i64 2153170895}
!227 = !{i64 2153170737}
!228 = !{i64 2153171065}
!229 = !{i64 2149834745}
!230 = !{i64 2158229275}
!231 = !{i64 2158229506}
!232 = !{i64 2158285518}
!233 = !{i64 2158285749}
!234 = !{i64 2158319683}
!235 = !{i64 2158319890}
!236 = !{i64 2158357525}
!237 = !{i64 2158357736}
!238 = !{i64 2158340543}
!239 = !{i64 2158340764}
!240 = !{i64 2156326613}
!241 = !{i64 2156326842}
!242 = !{i64 2158302887}
!243 = !{i64 2158303104}
!244 = !{i64 2156436024}
!245 = !{i64 2156436271}
