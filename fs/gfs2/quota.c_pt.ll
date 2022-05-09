; ModuleID = '/llk/IR_all_yes/fs/gfs2/quota.c_pt.bc'
source_filename = "../fs/gfs2/quota.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.33 }
%union.anon.33 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.hlist_bl_head = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.quotactl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%union.anon.72 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.gfs2_glock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }
%struct.gfs2_glock = type { i32, %struct.lm_lockname, %struct.lockref, i16, i32, i32, %struct.list_head, ptr, i64, %struct.gfs2_lkstats, %struct.dlm_lksb, i32, ptr, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.anon.80, %struct.callback_head, %struct.rhash_head }
%struct.lm_lockname = type { i64, ptr, i32 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%struct.gfs2_lkstats = type { [8 x i64] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.80 = type { %struct.delayed_work, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.rhash_head = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.gfs2_sbd = type { ptr, ptr, %struct.kobject, %struct.completion, i32, %struct.gfs2_sb_host, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [11 x i64], i32, %struct.gfs2_args, %struct.gfs2_tune, %struct.lm_lockstruct, %struct.gfs2_holder, ptr, ptr, %struct.work_struct, %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.completion, %struct.completion, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, %struct.spinlock, %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host, i32, i32, %struct.spinlock, %struct.rb_root, i32, i32, %struct.list_head, %struct.spinlock, %struct.mutex, i32, ptr, %struct.gfs2_holder, %struct.gfs2_holder, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.completion, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.mutex, %struct.mutex, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i32, ptr, %struct.spinlock, i64, %struct.address_space, %struct.spinlock, ptr, i32, %struct.atomic_t, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, i64, i32, %struct.rw_semaphore, %struct.atomic_t, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.gfs2_holder, %struct.atomic_t, %struct.mutex, [270 x i8], [256 x i8], [256 x i8], i32, ptr, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.gfs2_sb_host = type { i32, i32, i32, i32, i32, i32, %struct.gfs2_inum_host, %struct.gfs2_inum_host, [64 x i8], [64 x i8] }
%struct.gfs2_inum_host = type { i64, i64 }
%struct.gfs2_args = type { [64 x i8], [64 x i8], [64 x i8], i24, i32, i32, i32, i32 }
%struct.gfs2_tune = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lm_lockstruct = type { i32, i32, ptr, ptr, i32, i32, %struct.dlm_lksb, %struct.dlm_lksb, [32 x i8], %struct.completion, ptr, %struct.spinlock, i32, i32, i32, i32, i32, ptr, ptr }
%struct.gfs2_statfs_change_host = type { i64, i64, i64 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.gfs2_holder = type { %struct.list_head, ptr, ptr, i16, i16, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.77 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%union.anon.79 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.gfs2_inode = type { %struct.inode, i64, i64, i64, i64, i32, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.gfs2_blkreserv, i64, %struct.atomic_t, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr, i32, i32, i8, i8, i16 }
%struct.gfs2_blkreserv = type { %struct.rb_node, ptr, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.gfs2_qadata = type { [4 x ptr], [4 x %struct.gfs2_holder], i32, i32 }
%struct.gfs2_quota_data = type { %struct.hlist_bl_node, %struct.list_head, %struct.kqid, ptr, %struct.lockref, %struct.list_head, i32, i32, i64, i64, i32, i32, ptr, ptr, i32, ptr, %struct.gfs2_quota_lvb, i64, i32, %struct.callback_head }
%struct.kqid = type { %union.anon.73, i32 }
%union.anon.73 = type { %struct.kuid_t }
%struct.gfs2_quota_lvb = type { i32, i32, i64, i64, i64 }
%struct.gfs2_quota = type { i64, i64, i64, [64 x i8] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.gfs2_meta_header = type { i32, i32, i64, i32, %union.anon.83 }
%union.anon.83 = type { i32 }
%struct.gfs2_alloc_parms = type { i64, i32, i32, i64 }
%struct.gfs2_rgrpd = type { %struct.rb_node, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.rb_root }
%struct.gfs2_quota_change = type { i64, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.page = type { i32, %union.anon.6, %union.anon.70, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }

@gfs2_qd_shrinker = dso_local global { %struct.shrinker, [60 x i8] } { %struct.shrinker { ptr @gfs2_qd_shrink_count, ptr @gfs2_qd_shrink_scan, i32 0, i32 2, i32 2, %struct.list_head zeroinitializer, i32 0, ptr null }, [60 x i8] zeroinitializer }, align 32
@gfs2_qadata_cachep = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"!ip->i_qadata->qa_qd_num\00", [39 x i8] zeroinitializer }, align 32
@__func__.gfs2_quota_hold = private unnamed_addr constant [16 x i8] c"gfs2_quota_hold\00", align 1
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/gfs2/quota.c\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"!test_bit(GIF_QD_LOCKED, &ip->i_flags)\00", [57 x i8] zeroinitializer }, align 32
@__func__.gfs2_quota_unhold = private unnamed_addr constant [18 x i8] c"gfs2_quota_unhold\00", align 1
@qd_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qd->qd_change_sync\00", [45 x i8] zeroinitializer }, align 32
@__func__.gfs2_quota_unlock = private unnamed_addr constant [18 x i8] c"gfs2_quota_unlock\00", align 1
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"exceeded\00", [23 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"warning\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"change\00", [25 x i8] zeroinitializer }, align 32
@__func__.gfs2_quota_change = private unnamed_addr constant [18 x i8] c"gfs2_quota_change\00", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ip->i_qadata && ip->i_qadata->qa_ref > 0\00", [55 x i8] zeroinitializer }, align 32
@__func__.gfs2_quota_init = private unnamed_addr constant [16 x i8] c"gfs2_quota_init\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@qd_hash_table = internal global { [4096 x %struct.hlist_bl_head], [4096 x i8] } zeroinitializer, align 32
@gfs2_quota_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.gfs2_quota_init, ptr @.str.1, i32 1437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016gfs2: fsid=%s: found %u quota changes\0A\00", [55 x i8] zeroinitializer }, align 32
@gfs2_quota_init._entry_ptr = internal global ptr @gfs2_quota_init._entry, section ".printk_index", align 4
@gfs2_qd_lru = dso_local global { %struct.list_lru, [44 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"!qd->qd_change\00", [17 x i8] zeroinitializer }, align 32
@__func__.gfs2_quota_cleanup = private unnamed_addr constant [19 x i8] c"gfs2_quota_cleanup\00", align 1
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"!qd->qd_slot_count\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"!qd->qd_bh_count\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"!atomic_read(&sdp->sd_quota_count)\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"statfs\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@gfs2_quotactl_ops = dso_local constant { %struct.quotactl_ops, [52 x i8] } { %struct.quotactl_ops { ptr null, ptr null, ptr null, ptr null, ptr @gfs2_quota_sync, ptr null, ptr @gfs2_get_dqblk, ptr null, ptr @gfs2_set_dqblk, ptr @gfs2_quota_get_state, ptr null }, [52 x i8] zeroinitializer }, align 32
@sysctl_vfs_cache_pressure = external dso_local local_unnamed_addr global i32, align 4
@__func__.gfs2_qd_dispose = private unnamed_addr constant [16 x i8] c"gfs2_qd_dispose\00", align 1
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qd_lock\00", [24 x i8] zeroinitializer }, align 32
@__func__.bh_get = private unnamed_addr constant [7 x i8] c"bh_get\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"test_bit(QDF_LOCKED, &qd->qd_flags)\00", [60 x i8] zeroinitializer }, align 32
@__func__.qd_unlock = private unnamed_addr constant [10 x i8] c"qd_unlock\00", align 1
@print_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.1, i32 1176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016gfs2: fsid=%s: quota %s for %s %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"print_message\00", [18 x i8] zeroinitializer }, align 32
@print_message._entry_ptr = internal global ptr @print_message._entry, section ".printk_index", align 4
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"user\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"group\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"test_bit(QDF_CHANGE, &qd->qd_flags)\00", [60 x i8] zeroinitializer }, align 32
@__func__.do_qc = private unnamed_addr constant [6 x i8] c"do_qc\00", align 1
@__func__.qd_fish = private unnamed_addr constant [8 x i8] c"qd_fish\00", align 1
@gfs2_quotad_cachep = external dso_local local_unnamed_addr global ptr, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@hlist_bl_first_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rculist_bl.h\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__func__.gfs2_check_internal_file_size = private unnamed_addr constant [30 x i8] c"gfs2_check_internal_file_size\00", align 1
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/gfs2/inode.h\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"magic number\00", [19 x i8] zeroinitializer }, align 32
@qd_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&qd->qd_lockref.lock\00", [43 x i8] zeroinitializer }, align 32
@gfs2_quota_glops = external dso_local constant %struct.gfs2_glock_operations, align 4
@quotad_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.1, i32 1489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013gfs2: fsid=%s: gfs2_quotad: %s error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"quotad_error\00", [19 x i8] zeroinitializer }, align 32
@quotad_error._entry_ptr = internal global ptr @quotad_error._entry, section ".printk_index", align 4
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967266]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"gfs2_qd_shrinker\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 186, i32 17 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 579, i32 6 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 580, i32 6 }
@___asan_gen_.52 = private unnamed_addr constant [8 x i8] c"qd_lock\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1147, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1234, i32 24 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1248, i32 30 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1263, i32 6 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1268, i32 6 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"qd_hash_table\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 83, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1437, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [12 x i8] c"gfs2_qd_lru\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 81, i32 17 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1466, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1467, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1468, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1477, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1558, i32 22 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1567, i32 27 }
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"gfs2_quotactl_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1765, i32 27 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 80, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 452, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 260, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 354, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 717, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 271, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 486, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1173, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 678, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 695, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [30 x i8] c"../include/linux/rculist_bl.h\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 24, i32 19 }
@___asan_gen_.155 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 723, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [19 x i8] c"../fs/gfs2/inode.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 87, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [18 x i8] c"../fs/gfs2/util.h\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 126, i32 38 }
@___asan_gen_.163 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 222, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.176 = private constant [19 x i8] c"../fs/gfs2/quota.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1489, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 57, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @gfs2_quota_init._entry, ptr @gfs2_quota_init._entry_ptr, ptr @print_message._entry, ptr @print_message._entry_ptr, ptr @quotad_error._entry, ptr @quotad_error._entry_ptr, ptr @gfs2_qd_shrinker, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @qd_lock, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @qd_hash_table, ptr @.str.8, ptr @gfs2_qd_lru, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @gfs2_quotactl_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @qd_alloc.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_qd_shrinker to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qd_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qd_hash_table to i32), i32 16384, i32 20480, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_quota_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_qd_lru to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_quotactl_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qd_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quotad_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_qd_shrink_count(ptr nocapture noundef readnone %shrink, ptr nocapture noundef readonly %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nid.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nid.i, align 4
  %memcg.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 4
  %2 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memcg.i, align 4
  %call.i = tail call i32 @list_lru_count_one(ptr noundef nonnull @gfs2_qd_lru, i32 noundef %1, ptr noundef %3) #12
  %call.i.frozen = freeze i32 %call.i
  %div.i = udiv i32 %call.i.frozen, 100
  %4 = mul i32 %div.i, 100
  %rem1.i.decomposed = sub i32 %call.i.frozen, %4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_vfs_cache_pressure to i32))
  %5 = load i32, ptr @sysctl_vfs_cache_pressure, align 4
  %mul.i = mul i32 %5, %div.i
  %mul2.i = mul i32 %5, %rem1.i.decomposed
  %div3.i = udiv i32 %mul2.i, 100
  %add.i = add i32 %div3.i, %mul.i
  ret i32 %add.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_qd_shrink_scan(ptr nocapture noundef readnone %shrink, ptr noundef %sc) #0 align 64 {
entry:
  %dispose = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dispose) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %dispose, i32 0, i32 1
  %1 = ptrtoint ptr %dispose to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dispose, ptr %dispose, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dispose, ptr %0, align 4
  %3 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sc, align 4
  %and = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %nid.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 1
  %5 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nid.i, align 4
  %memcg.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 4
  %7 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %memcg.i, align 4
  %nr_to_scan.i = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 2
  %call.i = call i32 @list_lru_walk_one(ptr noundef nonnull @gfs2_qd_lru, i32 noundef %6, ptr noundef %8, ptr noundef nonnull @gfs2_qd_isolate, ptr noundef nonnull %dispose, ptr noundef %nr_to_scan.i) #12
  %9 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %dispose, align 4
  %cmp.i.not86.i = icmp eq ptr %10, %dispose
  br i1 %cmp.i.not86.i, label %if.end.cleanup_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.i:                                     ; preds = %if.end48.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %11 = phi ptr [ %84, %if.end48.i.while.body.i_crit_edge ], [ %10, %if.end.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %11, i32 -76
  %qd_gl.i = getelementptr i8, ptr %11, i32 56
  %12 = ptrtoint ptr %qd_gl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qd_gl.i, align 4
  %ln_sbd.i = getelementptr inbounds %struct.gfs2_glock, ptr %13, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %ln_sbd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ln_sbd.i, align 8
  %call.i.i71.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #12
  br i1 %call.i.i71.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @qd_lock) #12
  %qd_list.i = getelementptr i8, ptr %11, i32 -68
  %call.i.i72.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %qd_list.i) #12
  br i1 %call.i.i72.i, label %if.end.i.i75.i, label %list_del.exit.i.list_del.exit77.i_crit_edge

list_del.exit.i.list_del.exit77.i_crit_edge:      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit77.i

if.end.i.i75.i:                                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i73.i = getelementptr i8, ptr %11, i32 -64
  %24 = ptrtoint ptr %prev.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i73.i, align 4
  %26 = ptrtoint ptr %qd_list.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qd_list.i, align 4
  %prev1.i.i.i74.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i74.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i74.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit77.i

list_del.exit77.i:                                ; preds = %if.end.i.i75.i, %list_del.exit.i.list_del.exit77.i_crit_edge
  %30 = ptrtoint ptr %qd_list.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %qd_list.i, align 4
  %prev.i76.i = getelementptr i8, ptr %11, i32 -64
  %31 = ptrtoint ptr %prev.i76.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i76.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @qd_lock) #12
  %qd_hash.i = getelementptr i8, ptr %11, i32 8
  %32 = ptrtoint ptr %qd_hash.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %qd_hash.i, align 4
  %arrayidx.i.i = getelementptr [4096 x %struct.hlist_bl_head], ptr @qd_hash_table, i32 0, i32 %33
  %34 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %37, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !118
  br label %while.cond.i.i.i.i

while.cond.i.i.i.i:                               ; preds = %do.body14.i.i.i.i, %list_del.exit77.i
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i, i32 noundef 4) #12
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i.i.i.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %test_and_set_bit_lock.exit.i.i.i.i, label %while.cond.i.i.i.i.do.body2.i.i.i.i_crit_edge, !prof !119

while.cond.i.i.i.i.do.body2.i.i.i.i_crit_edge:    ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i.i.i.i

test_and_set_bit_lock.exit.i.i.i.i:               ; preds = %while.cond.i.i.i.i
  call void @llvm.prefetch.p0(ptr %arrayidx.i.i, i32 1, i32 3, i32 1) #12
  %40 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i, ptr %arrayidx.i.i, i32 1, ptr elementtype(i32) %arrayidx.i.i) #12, !srcloc !120
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !121
  %and1.i.i.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %phi.cmp.i.not.i.i.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %phi.cmp.i.not.i.i.i.i, label %spin_lock_bucket.exit.i, label %test_and_set_bit_lock.exit.i.i.i.i.do.body2.i.i.i.i_crit_edge, !prof !122

test_and_set_bit_lock.exit.i.i.i.i.do.body2.i.i.i.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i.i.i.i

do.body2.i.i.i.i:                                 ; preds = %test_and_set_bit_lock.exit.i.i.i.i.do.body2.i.i.i.i_crit_edge, %while.cond.i.i.i.i.do.body2.i.i.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !123
  %41 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i1.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %preempt_count.i.i2.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i2.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i2.i.i.i.i, align 4
  br label %do.body4.i.i.i.i

do.body4.i.i.i.i:                                 ; preds = %do.body4.i.i.i.i.do.body4.i.i.i.i_crit_edge, %do.body2.i.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !124
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !125
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and1.i.i.i.i.i = and i32 %46, 1
  %tobool12.not.i.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool12.not.i.i.i.i, label %do.body14.i.i.i.i, label %do.body4.i.i.i.i.do.body4.i.i.i.i_crit_edge

do.body4.i.i.i.i.do.body4.i.i.i.i_crit_edge:      ; preds = %do.body4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i.i.i.i

do.body14.i.i.i.i:                                ; preds = %do.body4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i3.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i3.i.i.i.i to ptr
  %preempt_count.i.i4.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i4.i.i.i.i, align 4
  %add.i5.i.i.i.i = add i32 %50, 1
  store volatile i32 %add.i5.i.i.i.i, ptr %preempt_count.i.i4.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !126
  br label %while.cond.i.i.i.i

spin_lock_bucket.exit.i:                          ; preds = %test_and_set_bit_lock.exit.i.i.i.i
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr.i, align 4
  %pprev2.i.i.i = getelementptr i8, ptr %11, i32 -72
  %53 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pprev2.i.i.i, align 4
  %55 = ptrtoint ptr %add.ptr.i to i32
  %and.i.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body15.i.i.i, label %do.body5.i.i.i, !prof !122

do.body5.i.i.i:                                   ; preds = %spin_lock_bucket.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/list_bl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 120, 0\0A.popsection", ""() #12, !srcloc !127
  unreachable

do.body15.i.i.i:                                  ; preds = %spin_lock_bucket.exit.i
  %56 = ptrtoint ptr %52 to i32
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %54, align 4
  %59 = ptrtoint ptr %58 to i32
  %and16.i.i.i = and i32 %59, 1
  %or.i.i.i = or i32 %and16.i.i.i, %56
  %60 = inttoptr i32 %or.i.i.i to ptr
  store volatile ptr %60, ptr %54, align 4
  %tobool21.not.i.i.i = icmp eq ptr %52, null
  br i1 %tobool21.not.i.i.i, label %do.body15.i.i.i.hlist_bl_del_rcu.exit.i_crit_edge, label %if.then22.i.i.i

do.body15.i.i.i.hlist_bl_del_rcu.exit.i_crit_edge: ; preds = %do.body15.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_bl_del_rcu.exit.i

if.then22.i.i.i:                                  ; preds = %do.body15.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev23.i.i.i = getelementptr inbounds %struct.hlist_bl_node, ptr %52, i32 0, i32 1
  %61 = ptrtoint ptr %pprev23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %54, ptr %pprev23.i.i.i, align 4
  br label %hlist_bl_del_rcu.exit.i

hlist_bl_del_rcu.exit.i:                          ; preds = %if.then22.i.i.i, %do.body15.i.i.i.hlist_bl_del_rcu.exit.i_crit_edge
  %62 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %63 = ptrtoint ptr %qd_hash.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %qd_hash.i, align 4
  %arrayidx.i78.i = getelementptr [4096 x %struct.hlist_bl_head], ptr @qd_hash_table, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx.i78.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %arrayidx.i78.i, align 4
  %and1.i.i.i.i79.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i79.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and1.i.i.i.i79.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body4.i.i.i80.i, label %spin_unlock_bucket.exit.i, !prof !128

do.body4.i.i.i80.i:                               ; preds = %hlist_bl_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #12, !srcloc !129
  unreachable

spin_unlock_bucket.exit.i:                        ; preds = %hlist_bl_del_rcu.exit.i
  %call.i.i.i.i.i81.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i78.i, i32 noundef 4) #12
  %67 = ptrtoint ptr %arrayidx.i78.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %arrayidx.i78.i, align 4
  %and.i.i.i.i.i82.i = and i32 %68, -2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !130
  %69 = ptrtoint ptr %arrayidx.i78.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 %and.i.i.i.i.i82.i, ptr %arrayidx.i78.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !131
  %70 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i.i.i83.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i.i83.i to ptr
  %preempt_count.i.i.i.i.i84.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i.i.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i.i.i.i84.i, align 4
  %sub.i.i.i.i85.i = add i32 %73, -1
  store volatile i32 %sub.i.i.i.i85.i, ptr %preempt_count.i.i.i.i.i84.i, align 4
  %qd_change.i = getelementptr i8, ptr %11, i32 20
  %74 = ptrtoint ptr %qd_change.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %qd_change.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %75)
  %tobool2.not.i = icmp eq i64 %75, 0
  br i1 %tobool2.not.i, label %spin_unlock_bucket.exit.i.if.end.i_crit_edge, label %if.then.i, !prof !122

spin_unlock_bucket.exit.i.if.end.i_crit_edge:     ; preds = %spin_unlock_bucket.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %spin_unlock_bucket.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_assert_warn_i(ptr noundef %15, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.gfs2_qd_dispose, ptr noundef nonnull @.str.1, i32 noundef 132) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %spin_unlock_bucket.exit.i.if.end.i_crit_edge
  %qd_slot_count.i = getelementptr i8, ptr %11, i32 40
  %76 = ptrtoint ptr %qd_slot_count.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %qd_slot_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool14.not.i = icmp eq i32 %77, 0
  br i1 %tobool14.not.i, label %if.end.i.if.end28.i_crit_edge, label %if.then27.i, !prof !122

if.end.i.if.end28.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.then27.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_assert_warn_i(ptr noundef %15, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.gfs2_qd_dispose, ptr noundef nonnull @.str.1, i32 noundef 133) #12
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then27.i, %if.end.i.if.end28.i_crit_edge
  %qd_bh_count.i = getelementptr i8, ptr %11, i32 52
  %78 = ptrtoint ptr %qd_bh_count.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %qd_bh_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool34.not.i = icmp eq i32 %79, 0
  br i1 %tobool34.not.i, label %if.end28.i.if.end48.i_crit_edge, label %if.then47.i, !prof !122

if.end28.i.if.end48.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i

if.then47.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_assert_warn_i(ptr noundef %15, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.gfs2_qd_dispose, ptr noundef nonnull @.str.1, i32 noundef 134) #12
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then47.i, %if.end28.i.if.end48.i_crit_edge
  %80 = ptrtoint ptr %qd_gl.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %qd_gl.i, align 4
  call void @gfs2_glock_put(ptr noundef %81) #12
  %sd_quota_count.i = getelementptr inbounds %struct.gfs2_sbd, ptr %15, i32 0, i32 67
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sd_quota_count.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %sd_quota_count.i, i32 1, i32 3, i32 1) #12
  %82 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sd_quota_count.i, ptr %sd_quota_count.i, i32 1, ptr elementtype(i32) %sd_quota_count.i) #12, !srcloc !132
  %qd_rcu.i = getelementptr i8, ptr %11, i32 104
  call void @call_rcu(ptr noundef %qd_rcu.i, ptr noundef nonnull @gfs2_qd_dealloc) #12
  %83 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %dispose, align 4
  %cmp.i.not.i = icmp eq ptr %84, %dispose
  br i1 %cmp.i.not.i, label %if.end48.i.cleanup_crit_edge, label %if.end48.i.while.body.i_crit_edge

if.end48.i.while.body.i_crit_edge:                ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end48.i.cleanup_crit_edge:                     ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end48.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i, %if.end48.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dispose) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_qa_get(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %ar_quota = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 21, i32 3
  %4 = ptrtoint ptr %ar_quota to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %ar_quota, align 4
  %5 = and i32 %bf.load, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_rw_mutex = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 13
  tail call void @down_write(ptr noundef %i_rw_mutex) #12
  %i_qadata = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 8
  %6 = ptrtoint ptr %i_qadata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_qadata, align 8
  %cmp1 = icmp eq ptr %7, null
  br i1 %cmp1, label %if.then2, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then2:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_qadata_cachep to i32))
  %8 = load ptr, ptr @gfs2_qadata_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %8, i32 noundef 3392) #12
  %9 = ptrtoint ptr %i_qadata to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %i_qadata, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then2.out_crit_edge, label %if.then2.if.end8_crit_edge

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then2.out_crit_edge:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %10 = ptrtoint ptr %i_qadata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_qadata, align 8
  %qa_ref = getelementptr inbounds %struct.gfs2_qadata, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %qa_ref to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qa_ref, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %qa_ref, align 4
  br label %out

out:                                              ; preds = %if.end8, %if.then2.out_crit_edge
  %error.0 = phi i32 [ 0, %if.end8 ], [ -12, %if.then2.out_crit_edge ]
  tail call void @up_write(ptr noundef %i_rw_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_qa_put(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rw_mutex = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 13
  tail call void @down_write(ptr noundef %i_rw_mutex) #12
  %i_qadata = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_qadata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_qadata, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %qa_ref = getelementptr inbounds %struct.gfs2_qadata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %qa_ref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qa_ref, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %qa_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_qadata_cachep to i32))
  %4 = load ptr, ptr @gfs2_qadata_cachep, align 4
  %5 = ptrtoint ptr %i_qadata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_qadata, align 8
  tail call void @kmem_cache_free(ptr noundef %4, ptr noundef %6) #12
  %7 = ptrtoint ptr %i_qadata to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %i_qadata, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @up_write(ptr noundef %i_rw_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_quota_hold(ptr noundef %ip, [1 x i32] %uid.coerce, [1 x i32] %gid.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %ar_quota = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 21, i32 3
  %4 = ptrtoint ptr %ar_quota to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %ar_quota, align 4
  %5 = and i32 %bf.load, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %i_rw_mutex.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 13
  tail call void @down_write(ptr noundef %i_rw_mutex.i) #12
  %i_qadata.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 8
  %6 = ptrtoint ptr %i_qadata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_qadata.i, align 8
  %cmp1.i = icmp eq ptr %7, null
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.if.end4_crit_edge

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then2.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_qadata_cachep to i32))
  %8 = load ptr, ptr @gfs2_qadata_cachep, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %8, i32 noundef 3392) #12
  %9 = ptrtoint ptr %i_qadata.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i, ptr %i_qadata.i, align 8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %gfs2_qa_get.exit, label %if.then2.i.if.end4_crit_edge

if.then2.i.if.end4_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

gfs2_qa_get.exit:                                 ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @up_write(ptr noundef %i_rw_mutex.i) #12
  br label %cleanup

if.end4:                                          ; preds = %if.then2.i.if.end4_crit_edge, %if.end.i.if.end4_crit_edge
  %10 = ptrtoint ptr %i_qadata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_qadata.i, align 8
  %qa_ref.i = getelementptr inbounds %struct.gfs2_qadata, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %qa_ref.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qa_ref.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %qa_ref.i, align 4
  tail call void @up_write(ptr noundef %i_rw_mutex.i) #12
  %14 = ptrtoint ptr %i_qadata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_qadata.i, align 8
  %qa_qd_num = getelementptr inbounds %struct.gfs2_qadata, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %qa_qd_num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qa_qd_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool6.not = icmp eq i32 %17, 0
  br i1 %tobool6.not, label %lor.lhs.false.critedge, label %if.then12, !prof !122

if.then12:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_warn_i(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.gfs2_quota_hold, ptr noundef nonnull @.str.1, i32 noundef 579) #12
  br label %cleanup

lor.lhs.false.critedge:                           ; preds = %if.end4
  %i_flags = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 5
  %18 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %i_flags, align 4
  %20 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool20.not = icmp eq i32 %20, 0
  br i1 %tobool20.not, label %if.end41, label %if.then33, !prof !122

if.then33:                                        ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_warn_i(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.gfs2_quota_hold, ptr noundef nonnull @.str.1, i32 noundef 580) #12
  br label %cleanup

if.end41:                                         ; preds = %lor.lhs.false.critedge
  %i_uid = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 2
  %21 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack = load i32, ptr %i_uid, align 4
  %.fca.0.insert129 = insertvalue [2 x i32] poison, i32 %.unpack, 0
  %.fca.1.insert132 = insertvalue [2 x i32] %.fca.0.insert129, i32 0, 1
  %call44 = tail call fastcc i32 @qdsb_get(ptr noundef %3, [2 x i32] %.fca.1.insert132, ptr noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end41.if.then105_crit_edge

if.end41.if.then105_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then105

if.end47:                                         ; preds = %if.end41
  %22 = ptrtoint ptr %i_qadata.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_qadata.i, align 8
  %qa_qd_num49 = getelementptr inbounds %struct.gfs2_qadata, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %qa_qd_num49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qa_qd_num49, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %qa_qd_num49, align 4
  %incdec.ptr = getelementptr ptr, ptr %15, i32 1
  %i_gid = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 3
  %26 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack190 = load i32, ptr %i_gid, align 8
  %.fca.0.insert123 = insertvalue [2 x i32] poison, i32 %.unpack190, 0
  %.fca.1.insert126 = insertvalue [2 x i32] %.fca.0.insert123, i32 1, 1
  %call53 = tail call fastcc i32 @qdsb_get(ptr noundef %3, [2 x i32] %.fca.1.insert126, ptr noundef %incdec.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end47.if.then105_crit_edge

if.end47.if.then105_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then105

if.end56:                                         ; preds = %if.end47
  %27 = ptrtoint ptr %i_qadata.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_qadata.i, align 8
  %qa_qd_num58 = getelementptr inbounds %struct.gfs2_qadata, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %qa_qd_num58 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qa_qd_num58, align 4
  %inc59 = add i32 %30, 1
  store i32 %inc59, ptr %qa_qd_num58, align 4
  %incdec.ptr60 = getelementptr ptr, ptr %15, i32 2
  %uid.coerce.fca.0.extract.i.i = extractvalue [1 x i32] %uid.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.coerce.fca.0.extract.i.i)
  %cmp.i194 = icmp eq i32 %uid.coerce.fca.0.extract.i.i, -1
  br i1 %cmp.i194, label %if.end56.if.end80_crit_edge, label %land.lhs.true

if.end56.if.end80_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

land.lhs.true:                                    ; preds = %if.end56
  %31 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack191 = load i32, ptr %i_uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %uid.coerce.fca.0.extract.i.i, i32 %.unpack191)
  %cmp.i196 = icmp eq i32 %uid.coerce.fca.0.extract.i.i, %.unpack191
  br i1 %cmp.i196, label %land.lhs.true.if.end80_crit_edge, label %if.then69

land.lhs.true.if.end80_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then69:                                        ; preds = %land.lhs.true
  %.fca.0.insert114 = insertvalue [2 x i32] poison, i32 %uid.coerce.fca.0.extract.i.i, 0
  %.fca.1.insert117 = insertvalue [2 x i32] %.fca.0.insert114, i32 0, 1
  %call72 = tail call fastcc i32 @qdsb_get(ptr noundef %3, [2 x i32] %.fca.1.insert117, ptr noundef %incdec.ptr60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.then69.if.then105_crit_edge

if.then69.if.then105_crit_edge:                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then105

if.end75:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %i_qadata.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_qadata.i, align 8
  %qa_qd_num77 = getelementptr inbounds %struct.gfs2_qadata, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %qa_qd_num77 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qa_qd_num77, align 4
  %inc78 = add i32 %35, 1
  store i32 %inc78, ptr %qa_qd_num77, align 4
  %incdec.ptr79 = getelementptr ptr, ptr %15, i32 3
  br label %if.end80

if.end80:                                         ; preds = %if.end75, %land.lhs.true.if.end80_crit_edge, %if.end56.if.end80_crit_edge
  %qd.0 = phi ptr [ %incdec.ptr60, %if.end56.if.end80_crit_edge ], [ %incdec.ptr60, %land.lhs.true.if.end80_crit_edge ], [ %incdec.ptr79, %if.end75 ]
  %gid.coerce.fca.0.extract.i.i = extractvalue [1 x i32] %gid.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.coerce.fca.0.extract.i.i)
  %cmp.i197 = icmp eq i32 %gid.coerce.fca.0.extract.i.i, -1
  br i1 %cmp.i197, label %if.end80.cleanup_crit_edge, label %land.lhs.true86

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true86:                                  ; preds = %if.end80
  %36 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack192 = load i32, ptr %i_gid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %gid.coerce.fca.0.extract.i.i, i32 %.unpack192)
  %cmp.i199 = icmp eq i32 %gid.coerce.fca.0.extract.i.i, %.unpack192
  br i1 %cmp.i199, label %land.lhs.true86.cleanup_crit_edge, label %if.then92

land.lhs.true86.cleanup_crit_edge:                ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then92:                                        ; preds = %land.lhs.true86
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %gid.coerce.fca.0.extract.i.i, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 1, 1
  %call95 = tail call fastcc i32 @qdsb_get(ptr noundef %3, [2 x i32] %.fca.1.insert, ptr noundef %qd.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.then92.if.then105_crit_edge

if.then92.if.then105_crit_edge:                   ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then105

if.end98:                                         ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %i_qadata.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_qadata.i, align 8
  %qa_qd_num100 = getelementptr inbounds %struct.gfs2_qadata, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %qa_qd_num100 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qa_qd_num100, align 4
  %inc101 = add i32 %40, 1
  store i32 %inc101, ptr %qa_qd_num100, align 4
  br label %cleanup

if.then105:                                       ; preds = %if.then92.if.then105_crit_edge, %if.then69.if.then105_crit_edge, %if.end47.if.then105_crit_edge, %if.end41.if.then105_crit_edge
  %error.1.ph = phi i32 [ %call72, %if.then69.if.then105_crit_edge ], [ %call95, %if.then92.if.then105_crit_edge ], [ %call53, %if.end47.if.then105_crit_edge ], [ %call44, %if.end41.if.then105_crit_edge ]
  tail call void @gfs2_quota_unhold(ptr noundef %ip)
  br label %cleanup

cleanup:                                          ; preds = %if.then105, %if.end98, %land.lhs.true86.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %if.then33, %if.then12, %gfs2_qa_get.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %gfs2_qa_get.exit ], [ %error.1.ph, %if.then105 ], [ -5, %if.then33 ], [ -5, %if.then12 ], [ 0, %if.end80.cleanup_crit_edge ], [ 0, %land.lhs.true86.cleanup_crit_edge ], [ 0, %if.end98 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_warn_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qdsb_get(ptr noundef %sdp, [2 x i32] %qid.coerce, ptr nocapture noundef %qdp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qd_get(ptr noundef %sdp, [2 x i32] %qid.coerce, ptr noundef %qdp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %qdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdp, align 4
  %qd_sbd.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %qd_sbd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qd_sbd.i, align 8
  %sd_bitmap_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 75
  tail call void @_raw_spin_lock(ptr noundef %sd_bitmap_lock.i) #12
  %qd_slot_count.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %qd_slot_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qd_slot_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end.i:                                         ; preds = %if.end
  %sd_quota_bitmap.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 74
  %6 = ptrtoint ptr %sd_quota_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_quota_bitmap.i, align 8
  %sd_quota_slots.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 73
  %8 = ptrtoint ptr %sd_quota_slots.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sd_quota_slots.i, align 4
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %7, i32 noundef %9) #12
  %10 = ptrtoint ptr %sd_quota_slots.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sd_quota_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %11)
  %cmp2.i = icmp ult i32 %call.i, %11
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.fail_crit_edge

if.end.i.fail_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %sd_quota_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sd_quota_bitmap.i, align 8
  tail call void @_set_bit(i32 noundef %call.i, ptr noundef %13) #12
  %qd_slot.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %qd_slot.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i, ptr %qd_slot.i, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3.i, %if.end.if.end4_crit_edge
  %15 = ptrtoint ptr %qd_slot_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qd_slot_count.i, align 4
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %qd_slot_count.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %sd_bitmap_lock.i) #12
  %17 = ptrtoint ptr %qdp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %qdp, align 4
  %call5 = tail call fastcc i32 @bh_get(ptr noundef %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %fail_slot

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

fail_slot:                                        ; preds = %if.end4
  %19 = ptrtoint ptr %qdp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qdp, align 4
  %qd_sbd.i17 = getelementptr inbounds %struct.gfs2_quota_data, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %qd_sbd.i17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %qd_sbd.i17, align 8
  %sd_bitmap_lock.i18 = getelementptr inbounds %struct.gfs2_sbd, ptr %22, i32 0, i32 75
  tail call void @_raw_spin_lock(ptr noundef %sd_bitmap_lock.i18) #12
  %qd_slot_count.i19 = getelementptr inbounds %struct.gfs2_quota_data, ptr %20, i32 0, i32 11
  %23 = ptrtoint ptr %qd_slot_count.i19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qd_slot_count.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end9.i, !prof !128

if.then.i:                                        ; preds = %fail_slot
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_i(ptr noundef %22) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/quota.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 357, 0\0A.popsection", ""() #12, !srcloc !133
  unreachable

do.end9.i:                                        ; preds = %fail_slot
  %dec.i = add i32 %24, -1
  %25 = ptrtoint ptr %qd_slot_count.i19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %dec.i, ptr %qd_slot_count.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool11.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool11.not.i, label %do.body13.i, label %do.end9.i.fail_crit_edge

do.end9.i.fail_crit_edge:                         ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

do.body13.i:                                      ; preds = %do.end9.i
  %qd_slot.i20 = getelementptr inbounds %struct.gfs2_quota_data, ptr %20, i32 0, i32 10
  %26 = ptrtoint ptr %qd_slot.i20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qd_slot.i20, align 8
  %sd_quota_bitmap.i21 = getelementptr inbounds %struct.gfs2_sbd, ptr %22, i32 0, i32 74
  %28 = ptrtoint ptr %sd_quota_bitmap.i21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sd_quota_bitmap.i21, align 8
  %call.i22 = tail call i32 @_test_and_clear_bit(i32 noundef %27, ptr noundef %29) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool14.not.i = icmp eq i32 %call.i22, 0
  br i1 %tobool14.not.i, label %do.body24.i, label %do.end32.i, !prof !128

do.body24.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/quota.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 359, 0\0A.popsection", ""() #12, !srcloc !134
  unreachable

do.end32.i:                                       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %qd_slot.i20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %qd_slot.i20, align 8
  br label %fail

fail:                                             ; preds = %do.end32.i, %do.end9.i.fail_crit_edge, %if.end.i.fail_crit_edge
  %sd_bitmap_lock.i.sink = phi ptr [ %sd_bitmap_lock.i, %if.end.i.fail_crit_edge ], [ %sd_bitmap_lock.i18, %do.end9.i.fail_crit_edge ], [ %sd_bitmap_lock.i18, %do.end32.i ]
  %error.0 = phi i32 [ -28, %if.end.i.fail_crit_edge ], [ %call5, %do.end9.i.fail_crit_edge ], [ %call5, %do.end32.i ]
  tail call void @_raw_spin_unlock(ptr noundef %sd_bitmap_lock.i.sink) #12
  %31 = ptrtoint ptr %qdp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %qdp, align 4
  %qd_lockref.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %32, i32 0, i32 4
  %call.i23 = tail call i32 @lockref_put_or_lock(ptr noundef %qd_lockref.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool.not.i24 = icmp eq i32 %call.i23, 0
  br i1 %tobool.not.i24, label %if.end.i25, label %fail.cleanup_crit_edge

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i25:                                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #14
  %count.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %32, i32 0, i32 4, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %count.i, align 4
  %qd_lru.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %32, i32 0, i32 5
  %call2.i = tail call zeroext i1 @list_lru_add(ptr noundef nonnull @gfs2_qd_lru, ptr noundef %qd_lru.i) #12
  tail call void @_raw_spin_unlock(ptr noundef %qd_lockref.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i25, %fail.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %error.0, %fail.cleanup_crit_edge ], [ %error.0, %if.end.i25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_quota_unhold(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_qadata = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 8
  %4 = ptrtoint ptr %i_qadata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_qadata, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_flags = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 5
  %6 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then7, !prof !122

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_warn_i(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.gfs2_quota_unhold, ptr noundef nonnull @.str.1, i32 noundef 630) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %9 = ptrtoint ptr %i_qadata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_qadata, align 8
  %qa_qd_num40 = getelementptr inbounds %struct.gfs2_qadata, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %qa_qd_num40 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qa_qd_num40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1341.not = icmp eq i32 %12, 0
  br i1 %cmp1341.not, label %if.end8.for.end_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %qdsb_put.exit.for.body_crit_edge, %if.end8.for.body_crit_edge
  %13 = phi ptr [ %41, %qdsb_put.exit.for.body_crit_edge ], [ %10, %if.end8.for.body_crit_edge ]
  %x.042 = phi i32 [ %inc, %qdsb_put.exit.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr %13, i32 0, i32 %x.042
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %qd_gl.i.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %qd_gl.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qd_gl.i.i, align 4
  %ln_sbd.i.i = getelementptr inbounds %struct.gfs2_glock, ptr %17, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %ln_sbd.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ln_sbd.i.i, align 8
  %sd_quota_mutex.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %19, i32 0, i32 68
  tail call void @mutex_lock_nested(ptr noundef %sd_quota_mutex.i.i, i32 noundef 0) #12
  %qd_bh_count.i.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %15, i32 0, i32 14
  %20 = ptrtoint ptr %qd_bh_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qd_bh_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.end9.i.i, !prof !128

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_i(ptr noundef %19) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/quota.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #12, !srcloc !135
  unreachable

do.end9.i.i:                                      ; preds = %for.body
  %dec.i.i = add i32 %21, -1
  %22 = ptrtoint ptr %qd_bh_count.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %dec.i.i, ptr %qd_bh_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool11.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %do.end9.i.i.bh_put.exit.i_crit_edge

do.end9.i.i.bh_put.exit.i_crit_edge:              ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bh_put.exit.i

if.then12.i.i:                                    ; preds = %do.end9.i.i
  %qd_bh.i.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %15, i32 0, i32 12
  %23 = ptrtoint ptr %qd_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %qd_bh.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.i, label %if.then12.i.i.brelse.exit.i.i_crit_edge, label %if.then.i.i.i

if.then12.i.i.brelse.exit.i.i_crit_edge:          ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %24) #12
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i.i.i, %if.then12.i.i.brelse.exit.i.i_crit_edge
  %25 = ptrtoint ptr %qd_bh.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %qd_bh.i.i, align 8
  %qd_bh_qc.i.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %15, i32 0, i32 13
  %26 = ptrtoint ptr %qd_bh_qc.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %qd_bh_qc.i.i, align 4
  br label %bh_put.exit.i

bh_put.exit.i:                                    ; preds = %brelse.exit.i.i, %do.end9.i.i.bh_put.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %sd_quota_mutex.i.i) #12
  %qd_sbd.i.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %15, i32 0, i32 3
  %27 = ptrtoint ptr %qd_sbd.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %qd_sbd.i.i, align 8
  %sd_bitmap_lock.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %28, i32 0, i32 75
  tail call void @_raw_spin_lock(ptr noundef %sd_bitmap_lock.i.i) #12
  %qd_slot_count.i.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %15, i32 0, i32 11
  %29 = ptrtoint ptr %qd_slot_count.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qd_slot_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i3.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i3.i, label %if.then.i4.i, label %do.end9.i7.i, !prof !128

if.then.i4.i:                                     ; preds = %bh_put.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_i(ptr noundef %28) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/quota.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 357, 0\0A.popsection", ""() #12, !srcloc !133
  unreachable

do.end9.i7.i:                                     ; preds = %bh_put.exit.i
  %dec.i5.i = add i32 %30, -1
  %31 = ptrtoint ptr %qd_slot_count.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %dec.i5.i, ptr %qd_slot_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i5.i)
  %tobool11.not.i6.i = icmp eq i32 %dec.i5.i, 0
  br i1 %tobool11.not.i6.i, label %do.body13.i.i, label %do.end9.i7.i.slot_put.exit.i_crit_edge

do.end9.i7.i.slot_put.exit.i_crit_edge:           ; preds = %do.end9.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slot_put.exit.i

do.body13.i.i:                                    ; preds = %do.end9.i7.i
  %qd_slot.i.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %15, i32 0, i32 10
  %32 = ptrtoint ptr %qd_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %qd_slot.i.i, align 8
  %sd_quota_bitmap.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %28, i32 0, i32 74
  %34 = ptrtoint ptr %sd_quota_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sd_quota_bitmap.i.i, align 8
  %call.i.i = tail call i32 @_test_and_clear_bit(i32 noundef %33, ptr noundef %35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool14.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool14.not.i.i, label %do.body24.i.i, label %do.end32.i.i, !prof !128

do.body24.i.i:                                    ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/quota.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 359, 0\0A.popsection", ""() #12, !srcloc !134
  unreachable

do.end32.i.i:                                     ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %qd_slot.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %qd_slot.i.i, align 8
  br label %slot_put.exit.i

slot_put.exit.i:                                  ; preds = %do.end32.i.i, %do.end9.i7.i.slot_put.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_bitmap_lock.i.i) #12
  %qd_lockref.i.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %15, i32 0, i32 4
  %call.i8.i = tail call i32 @lockref_put_or_lock(ptr noundef %qd_lockref.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %tobool.not.i9.i = icmp eq i32 %call.i8.i, 0
  br i1 %tobool.not.i9.i, label %if.end.i.i, label %slot_put.exit.i.qdsb_put.exit_crit_edge

slot_put.exit.i.qdsb_put.exit_crit_edge:          ; preds = %slot_put.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %qdsb_put.exit

if.end.i.i:                                       ; preds = %slot_put.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %count.i.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %15, i32 0, i32 4, i32 0, i32 0, i32 1
  %37 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %count.i.i, align 4
  %qd_lru.i.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %15, i32 0, i32 5
  %call2.i.i = tail call zeroext i1 @list_lru_add(ptr noundef nonnull @gfs2_qd_lru, ptr noundef %qd_lru.i.i) #12
  tail call void @_raw_spin_unlock(ptr noundef %qd_lockref.i.i) #12
  br label %qdsb_put.exit

qdsb_put.exit:                                    ; preds = %if.end.i.i, %slot_put.exit.i.qdsb_put.exit_crit_edge
  %38 = ptrtoint ptr %i_qadata to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_qadata, align 8
  %arrayidx17 = getelementptr [4 x ptr], ptr %39, i32 0, i32 %x.042
  %40 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx17, align 4
  %inc = add nuw i32 %x.042, 1
  %41 = load ptr, ptr %i_qadata, align 8
  %qa_qd_num = getelementptr inbounds %struct.gfs2_qadata, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %qa_qd_num to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %qa_qd_num, align 4
  %cmp13 = icmp ult i32 %inc, %43
  br i1 %cmp13, label %qdsb_put.exit.for.body_crit_edge, label %qdsb_put.exit.for.end_crit_edge

qdsb_put.exit.for.end_crit_edge:                  ; preds = %qdsb_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

qdsb_put.exit.for.body_crit_edge:                 ; preds = %qdsb_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %qdsb_put.exit.for.end_crit_edge, %if.end8.for.end_crit_edge
  %.lcssa39 = phi ptr [ %10, %if.end8.for.end_crit_edge ], [ %41, %qdsb_put.exit.for.end_crit_edge ]
  %qa_qd_num.le = getelementptr inbounds %struct.gfs2_qadata, ptr %.lcssa39, i32 0, i32 2
  %44 = ptrtoint ptr %qa_qd_num.le to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %qa_qd_num.le, align 4
  %i_rw_mutex.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 13
  tail call void @down_write(ptr noundef %i_rw_mutex.i) #12
  %45 = ptrtoint ptr %i_qadata to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_qadata, align 8
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %for.end.gfs2_qa_put.exit_crit_edge, label %land.lhs.true.i

for.end.gfs2_qa_put.exit_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_qa_put.exit

land.lhs.true.i:                                  ; preds = %for.end
  %qa_ref.i = getelementptr inbounds %struct.gfs2_qadata, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %qa_ref.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %qa_ref.i, align 4
  %dec.i = add i32 %48, -1
  store i32 %dec.i, ptr %qa_ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.gfs2_qa_put.exit_crit_edge

land.lhs.true.i.gfs2_qa_put.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_qa_put.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_qadata_cachep to i32))
  %49 = load ptr, ptr @gfs2_qadata_cachep, align 4
  %50 = ptrtoint ptr %i_qadata to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_qadata, align 8
  tail call void @kmem_cache_free(ptr noundef %49, ptr noundef %51) #12
  %52 = ptrtoint ptr %i_qadata to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %i_qadata, align 8
  br label %gfs2_qa_put.exit

gfs2_qa_put.exit:                                 ; preds = %if.then.i, %land.lhs.true.i.gfs2_qa_put.exit_crit_edge, %for.end.gfs2_qa_put.exit_crit_edge
  tail call void @up_write(ptr noundef %i_rw_mutex.i) #12
  br label %cleanup

cleanup:                                          ; preds = %gfs2_qa_put.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_quota_lock(ptr noundef %ip, [1 x i32] %uid.coerce, [1 x i32] %gid.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %ar_quota = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 21, i32 3
  %4 = ptrtoint ptr %ar_quota to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %ar_quota, align 4
  %5 = and i32 %bf.load, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %5)
  %cmp.not = icmp eq i32 %5, 134217728
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @gfs2_quota_hold(ptr noundef %ip, [1 x i32] %uid.coerce, [1 x i32] %gid.coerce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %i_qadata = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 8
  %6 = ptrtoint ptr %i_qadata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_qadata, align 8
  %qa_qd_num = getelementptr inbounds %struct.gfs2_qadata, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %qa_qd_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qa_qd_num, align 4
  tail call void @sort(ptr noundef %7, i32 noundef %9, i32 noundef 4, ptr noundef nonnull @sort_qd, ptr noundef null) #12
  %10 = ptrtoint ptr %i_qadata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_qadata, align 8
  %qa_qd_num952 = getelementptr inbounds %struct.gfs2_qadata, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %qa_qd_num952 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qa_qd_num952, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1053.not = icmp eq i32 %13, 0
  br i1 %cmp1053.not, label %if.end6.if.then20_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.if.then20_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6.for.body_crit_edge
  %14 = phi ptr [ %18, %for.inc.for.body_crit_edge ], [ %11, %if.end6.for.body_crit_edge ]
  %x.054 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr %14, i32 0, i32 %x.054
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %arrayidx14 = getelementptr %struct.gfs2_qadata, ptr %14, i32 0, i32 1, i32 %x.054
  %call15 = tail call fastcc i32 @do_glock(ptr noundef %16, i32 noundef 0, ptr noundef %arrayidx14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %for.inc, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x.054)
  %tobool21.not55 = icmp eq i32 %x.054, 0
  br i1 %tobool21.not55, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %x.054, 1
  %17 = ptrtoint ptr %i_qadata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_qadata, align 8
  %qa_qd_num9 = getelementptr inbounds %struct.gfs2_qadata, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %qa_qd_num9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qa_qd_num9, align 4
  %cmp10 = icmp ult i32 %inc, %20
  br i1 %cmp10, label %for.inc.for.body_crit_edge, label %for.inc.if.then20_crit_edge

for.inc.if.then20_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.then20:                                        ; preds = %for.inc.if.then20_crit_edge, %if.end6.if.then20_crit_edge
  %i_flags = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %i_flags) #12
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %x.156 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %x.054, %while.cond.preheader.while.body_crit_edge ]
  %dec = add i32 %x.156, -1
  %21 = ptrtoint ptr %i_qadata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_qadata, align 8
  %arrayidx24 = getelementptr %struct.gfs2_qadata, ptr %22, i32 0, i32 1, i32 %dec
  tail call void @gfs2_glock_dq_uninit(ptr noundef %arrayidx24) #12
  %tobool21.not = icmp eq i32 %dec, 0
  br i1 %tobool21.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @gfs2_quota_unhold(ptr noundef %ip)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call15, %while.end ], [ 0, %if.then20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sort_qd(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a, align 4
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b, align 4
  %qd_id = getelementptr inbounds %struct.gfs2_quota_data, ptr %1, i32 0, i32 2
  %qd_id1 = getelementptr inbounds %struct.gfs2_quota_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %qd_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %qd_id, align 8
  %5 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt10 = getelementptr inbounds %struct.gfs2_quota_data, ptr %1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %.elt10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack11 = load i32, ptr %.elt10, align 4
  %7 = insertvalue [2 x i32] %5, i32 %.unpack11, 1
  %8 = ptrtoint ptr %qd_id1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack12 = load i32, ptr %qd_id1, align 8
  %9 = insertvalue [2 x i32] undef, i32 %.unpack12, 0
  %.elt13 = getelementptr inbounds %struct.gfs2_quota_data, ptr %3, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %.elt13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack14 = load i32, ptr %.elt13, align 4
  %11 = insertvalue [2 x i32] %9, i32 %.unpack14, 1
  %call = tail call zeroext i1 @qid_lt([2 x i32] %7, [2 x i32] %11) #12
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %qd_id1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack15 = load i32, ptr %qd_id1, align 8
  %13 = insertvalue [2 x i32] undef, i32 %.unpack15, 0
  %14 = ptrtoint ptr %.elt13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack17 = load i32, ptr %.elt13, align 4
  %15 = insertvalue [2 x i32] %13, i32 %.unpack17, 1
  %16 = ptrtoint ptr %qd_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack18 = load i32, ptr %qd_id, align 8
  %17 = insertvalue [2 x i32] undef, i32 %.unpack18, 0
  %18 = ptrtoint ptr %.elt10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack20 = load i32, ptr %.elt10, align 4
  %19 = insertvalue [2 x i32] %17, i32 %.unpack20, 1
  %call4 = tail call zeroext i1 @qid_lt([2 x i32] %15, [2 x i32] %19) #12
  %. = zext i1 %call4 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_glock(ptr noundef %qd, i32 noundef %force_refresh, ptr noundef %q_gh) unnamed_addr #0 align 64 {
entry:
  %q.i = alloca %struct.gfs2_quota, align 8
  %pos.i = alloca i64, align 8
  %i_gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %qd_gl = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 15
  %0 = ptrtoint ptr %qd_gl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qd_gl, align 4
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ln_sbd, align 8
  %sd_quota_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 42
  %4 = ptrtoint ptr %sd_quota_inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_quota_inode, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %i_gh) #12
  %6 = call ptr @llvm.returnaddress(i32 0) #12
  %7 = ptrtoint ptr %6 to i32
  %8 = call ptr @memset(ptr %i_gh, i32 255, i32 32)
  call void @__gfs2_holder_init(ptr noundef %1, i32 noundef 3, i16 noundef zeroext 0, ptr noundef %q_gh, i32 noundef %7) #12
  %call.i64 = call i32 @gfs2_glock_nq(ptr noundef %q_gh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool.not.i65 = icmp eq i32 %call.i64, 0
  br i1 %tobool.not.i65, label %if.end.lr.ph, label %entry.gfs2_glock_nq_init.exit_crit_edge

entry.gfs2_glock_nq_init.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_glock_nq_init.exit

if.end.lr.ph:                                     ; preds = %entry
  %qd_flags = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 7
  %qd_qb = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 16
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %5, i32 0, i32 6
  %qd_id.i.i.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 2
  %qid.sroa.5.0.qd_id.sroa_idx.i.i.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 2, i32 1
  %qu_warn.i = getelementptr inbounds %struct.gfs2_quota, ptr %q.i, i32 0, i32 1
  %qu_value.i = getelementptr inbounds %struct.gfs2_quota, ptr %q.i, i32 0, i32 2
  br label %if.end

gfs2_glock_nq_init.exit:                          ; preds = %if.end23.gfs2_glock_nq_init.exit_crit_edge, %entry.gfs2_glock_nq_init.exit_crit_edge
  %call.i.lcssa = phi i32 [ %call.i64, %entry.gfs2_glock_nq_init.exit_crit_edge ], [ %call.i, %if.end23.gfs2_glock_nq_init.exit_crit_edge ]
  call void @gfs2_holder_uninit(ptr noundef %q_gh) #12
  br label %cleanup

if.end:                                           ; preds = %if.end23.if.end_crit_edge, %if.end.lr.ph
  %force_refresh.addr.066 = phi i32 [ %force_refresh, %if.end.lr.ph ], [ 0, %if.end23.if.end_crit_edge ]
  %call3 = call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %qd_flags) #12
  %9 = ptrtoint ptr %qd_gl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qd_gl, align 4
  %sb_lvbptr = getelementptr inbounds %struct.gfs2_glock, ptr %10, i32 0, i32 10, i32 3
  %11 = ptrtoint ptr %sb_lvbptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sb_lvbptr, align 4
  %13 = call ptr @memcpy(ptr %qd_qb, ptr %12, i32 32)
  %14 = or i32 %call3, %force_refresh.addr.066
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %lor.lhs.false, label %if.end.if.then10_crit_edge

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end
  %16 = ptrtoint ptr %qd_qb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qd_qb, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %17)
  %cmp.not = icmp eq i32 %17, 18225520
  br i1 %cmp.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then10_crit_edge

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end.if.then10_crit_edge
  call void @gfs2_glock_dq_uninit(ptr noundef %q_gh) #12
  %18 = ptrtoint ptr %qd_gl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qd_gl, align 4
  call void @__gfs2_holder_init(ptr noundef %19, i32 noundef 1, i16 noundef zeroext 1024, ptr noundef %q_gh, i32 noundef %7) #12
  %call.i46 = call i32 @gfs2_glock_nq(ptr noundef %q_gh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool.not.i47 = icmp eq i32 %call.i46, 0
  br i1 %tobool.not.i47, label %if.end15, label %gfs2_glock_nq_init.exit49

gfs2_glock_nq_init.exit49:                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_holder_uninit(ptr noundef %q_gh) #12
  br label %cleanup

if.end15:                                         ; preds = %if.then10
  %20 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_gl, align 4
  call void @__gfs2_holder_init(ptr noundef %21, i32 noundef 3, i16 noundef zeroext 0, ptr noundef nonnull %i_gh, i32 noundef %7) #12
  %call.i50 = call i32 @gfs2_glock_nq(ptr noundef nonnull %i_gh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool.not.i51 = icmp eq i32 %call.i50, 0
  br i1 %tobool.not.i51, label %if.end19, label %gfs2_glock_nq_init.exit53

gfs2_glock_nq_init.exit53:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_holder_uninit(ptr noundef nonnull %i_gh) #12
  br label %fail

if.end19:                                         ; preds = %if.end15
  %22 = ptrtoint ptr %sd_quota_inode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sd_quota_inode, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %q.i) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.i) #12
  %24 = call ptr @memset(ptr %q.i, i32 0, i32 88)
  %25 = ptrtoint ptr %qd_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %qid.sroa.0.0.copyload.i.i.i = load i32, ptr %qd_id.i.i.i, align 8
  %26 = ptrtoint ptr %qid.sroa.5.0.qd_id.sroa_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %qid.sroa.5.0.copyload.i.i.i = load i32, ptr %qid.sroa.5.0.qd_id.sroa_idx.i.i.i, align 4
  %.fca.0.insert.i.i.i = insertvalue [2 x i32] poison, i32 %qid.sroa.0.0.copyload.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue [2 x i32] %.fca.0.insert.i.i.i, i32 %qid.sroa.5.0.copyload.i.i.i, 1
  %call.i.i.i = call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %.fca.1.insert.i.i.i) #12
  %conv.i.i.i = zext i32 %call.i.i.i to i64
  %mul.i.i.i = shl nuw nsw i64 %conv.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qid.sroa.5.0.copyload.i.i.i)
  %cmp.i.i.i = icmp ne i32 %qid.sroa.5.0.copyload.i.i.i, 0
  %27 = zext i1 %cmp.i.i.i to i64
  %add.i.i.i = or i64 %mul.i.i.i, %27
  %mul.i.i = mul nuw nsw i64 %add.i.i.i, 88
  %28 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %mul.i.i, ptr %pos.i, align 8
  %call2.i = call i32 @gfs2_internal_read(ptr noundef %23, ptr noundef nonnull %q.i, ptr noundef nonnull %pos.i, i32 noundef 88) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %fail_gunlock, label %if.end23

if.end23:                                         ; preds = %if.end19
  %29 = ptrtoint ptr %qd_gl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %qd_gl, align 4
  %sb_lvbptr.i = getelementptr inbounds %struct.gfs2_glock, ptr %30, i32 0, i32 10, i32 3
  %31 = ptrtoint ptr %sb_lvbptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sb_lvbptr.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 18225520, ptr %32, align 8
  %__pad.i = getelementptr inbounds %struct.gfs2_quota_lvb, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %__pad.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %__pad.i, align 4
  %35 = ptrtoint ptr %q.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %q.i, align 8
  %qb_limit.i = getelementptr inbounds %struct.gfs2_quota_lvb, ptr %32, i32 0, i32 2
  %37 = ptrtoint ptr %qb_limit.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %qb_limit.i, align 8
  %38 = ptrtoint ptr %qu_warn.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %qu_warn.i, align 8
  %qb_warn.i = getelementptr inbounds %struct.gfs2_quota_lvb, ptr %32, i32 0, i32 3
  %40 = ptrtoint ptr %qb_warn.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %qb_warn.i, align 8
  %41 = ptrtoint ptr %qu_value.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %qu_value.i, align 8
  %qb_value.i = getelementptr inbounds %struct.gfs2_quota_lvb, ptr %32, i32 0, i32 4
  %43 = ptrtoint ptr %qb_value.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %qb_value.i, align 8
  %44 = call ptr @memcpy(ptr %qd_qb, ptr %32, i32 32)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %q.i) #12
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %i_gh) #12
  call void @gfs2_glock_dq_uninit(ptr noundef %q_gh) #12
  %45 = ptrtoint ptr %qd_gl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %qd_gl, align 4
  call void @__gfs2_holder_init(ptr noundef %46, i32 noundef 3, i16 noundef zeroext 0, ptr noundef %q_gh, i32 noundef %7) #12
  %call.i = call i32 @gfs2_glock_nq(ptr noundef %q_gh) #12
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end23.if.end_crit_edge, label %if.end23.gfs2_glock_nq_init.exit_crit_edge

if.end23.gfs2_glock_nq_init.exit_crit_edge:       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_glock_nq_init.exit

if.end23.if.end_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

fail_gunlock:                                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %q.i) #12
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %i_gh) #12
  br label %fail

fail:                                             ; preds = %fail_gunlock, %gfs2_glock_nq_init.exit53
  %error.0 = phi i32 [ %call.i50, %gfs2_glock_nq_init.exit53 ], [ %call2.i, %fail_gunlock ]
  call void @gfs2_glock_dq_uninit(ptr noundef %q_gh) #12
  br label %cleanup

cleanup:                                          ; preds = %fail, %gfs2_glock_nq_init.exit49, %lor.lhs.false.cleanup_crit_edge, %gfs2_glock_nq_init.exit
  %retval.0 = phi i32 [ %error.0, %fail ], [ %call.i.lcssa, %gfs2_glock_nq_init.exit ], [ %call.i46, %gfs2_glock_nq_init.exit49 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %i_gh) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_dq_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_quota_unlock(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  %remainder.i.i = alloca i32, align 4
  %qda = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %qda) #12
  %i_flags = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 5
  %4 = call ptr @memset(ptr %qda, i32 255, i32 16)
  %call1 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %i_flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup41_crit_edge, label %for.cond.preheader

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup41

for.cond.preheader:                               ; preds = %entry
  %i_qadata = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 8
  %5 = ptrtoint ptr %i_qadata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_qadata, align 8
  %qa_qd_num78 = getelementptr inbounds %struct.gfs2_qadata, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %qa_qd_num78 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qa_qd_num78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp79.not = icmp eq i32 %8, 0
  br i1 %cmp79.not, label %for.cond.preheader.if.end40_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end40_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %9 = phi ptr [ %52, %cleanup.for.body_crit_edge ], [ %6, %for.cond.preheader.for.body_crit_edge ]
  %count.081 = phi i32 [ %count.1, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %x.080 = phi i32 [ %inc29, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr %9, i32 0, i32 %x.080
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %qd_gl.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %qd_gl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qd_gl.i, align 4
  %ln_sbd.i = getelementptr inbounds %struct.gfs2_glock, ptr %13, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %ln_sbd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ln_sbd.i, align 8
  %qb_limit.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %11, i32 0, i32 16, i32 2
  %16 = ptrtoint ptr %qb_limit.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %qb_limit.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool.not.i = icmp eq i64 %17, 0
  br i1 %tobool.not.i, label %for.body.need_sync.exit_crit_edge, label %if.end.i

for.body.need_sync.exit_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %need_sync.exit

if.end.i:                                         ; preds = %for.body
  %sd_tune.i = getelementptr inbounds %struct.gfs2_sbd, ptr %15, i32 0, i32 22
  call void @_raw_spin_lock(ptr noundef nonnull @qd_lock) #12
  %qd_change.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %11, i32 0, i32 8
  %18 = ptrtoint ptr %qd_change.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %qd_change.i, align 8
  call void @_raw_spin_unlock(ptr noundef nonnull @qd_lock) #12
  call void @_raw_spin_lock(ptr noundef %sd_tune.i) #12
  %gt_quota_scale_num.i = getelementptr inbounds %struct.gfs2_sbd, ptr %15, i32 0, i32 22, i32 3
  %20 = ptrtoint ptr %gt_quota_scale_num.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gt_quota_scale_num.i, align 4
  %gt_quota_scale_den.i = getelementptr inbounds %struct.gfs2_sbd, ptr %15, i32 0, i32 22, i32 4
  %22 = ptrtoint ptr %gt_quota_scale_den.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gt_quota_scale_den.i, align 4
  call void @_raw_spin_unlock(ptr noundef %sd_tune.i) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %cmp.i = icmp slt i64 %19, 0
  br i1 %cmp.i, label %if.end.i.need_sync.exit_crit_edge, label %if.else.i

if.end.i.need_sync.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %need_sync.exit

if.else.i:                                        ; preds = %if.end.i
  %qb_value.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %11, i32 0, i32 16, i32 4
  %24 = ptrtoint ptr %qb_value.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %qb_value.i, align 8
  %26 = ptrtoint ptr %qb_limit.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %qb_limit.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %27)
  %cmp6.not.i = icmp slt i64 %25, %27
  br i1 %cmp6.not.i, label %if.else8.i, label %if.else.i.need_sync.exit_crit_edge

if.else.i.need_sync.exit_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %need_sync.exit

if.else8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %sd_jindex_spin.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %15, i32 0, i32 53
  call void @_raw_spin_lock(ptr noundef %sd_jindex_spin.i.i) #12
  %sd_journals.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %15, i32 0, i32 55
  %28 = ptrtoint ptr %sd_journals.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sd_journals.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %sd_jindex_spin.i.i) #12
  %mul.i = mul i32 %29, %21
  %conv.i = zext i32 %mul.i to i64
  %mul9.i = mul i64 %19, %conv.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #12
  %30 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !136
  %call.i.i = call i64 @div_s64_rem(i64 noundef %mul9.i, i32 noundef %23, ptr noundef nonnull %remainder.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #12
  %31 = ptrtoint ptr %qb_value.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %qb_value.i, align 8
  %add.i = add i64 %32, %call.i.i
  %33 = ptrtoint ptr %qb_limit.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %qb_limit.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %34)
  %cmp15.i = icmp sge i64 %add.i, %34
  %spec.select.i = zext i1 %cmp15.i to i32
  br label %need_sync.exit

need_sync.exit:                                   ; preds = %if.else8.i, %if.else.i.need_sync.exit_crit_edge, %if.end.i.need_sync.exit_crit_edge, %for.body.need_sync.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.body.need_sync.exit_crit_edge ], [ 0, %if.end.i.need_sync.exit_crit_edge ], [ 0, %if.else.i.need_sync.exit_crit_edge ], [ %spec.select.i, %if.else8.i ]
  %35 = ptrtoint ptr %i_qadata to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_qadata, align 8
  %arrayidx5 = getelementptr %struct.gfs2_qadata, ptr %36, i32 0, i32 1, i32 %x.080
  call void @gfs2_glock_dq_uninit(ptr noundef %arrayidx5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool6.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool6.not, label %need_sync.exit.cleanup_crit_edge, label %if.end8

need_sync.exit.cleanup_crit_edge:                 ; preds = %need_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %need_sync.exit
  call void @_raw_spin_lock(ptr noundef nonnull @qd_lock) #12
  %call9 = call fastcc i32 @qd_check_sync(ptr noundef %3, ptr noundef %11, ptr noundef null)
  call void @_raw_spin_unlock(ptr noundef nonnull @qd_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %qd_change_sync = getelementptr inbounds %struct.gfs2_quota_data, ptr %11, i32 0, i32 9
  %37 = ptrtoint ptr %qd_change_sync to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %qd_change_sync, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %tobool13.not = icmp eq i64 %38, 0
  br i1 %tobool13.not, label %if.then18, label %if.end12.if.end19_crit_edge, !prof !128

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_assert_warn_i(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.gfs2_quota_unlock, ptr noundef nonnull @.str.1, i32 noundef 1147) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end12.if.end19_crit_edge
  %call23 = call fastcc i32 @bh_get(ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end19
  %qd_flags = getelementptr inbounds %struct.gfs2_quota_data, ptr %11, i32 0, i32 7
  call void @_clear_bit(i32 noundef 2, ptr noundef %qd_flags) #12
  %qd_sbd.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %11, i32 0, i32 3
  %39 = ptrtoint ptr %qd_sbd.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %qd_sbd.i, align 8
  %sd_bitmap_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %40, i32 0, i32 75
  call void @_raw_spin_lock(ptr noundef %sd_bitmap_lock.i) #12
  %qd_slot_count.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %11, i32 0, i32 11
  %41 = ptrtoint ptr %qd_slot_count.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %qd_slot_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i71 = icmp eq i32 %42, 0
  br i1 %tobool.not.i71, label %if.then.i, label %do.end9.i, !prof !128

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_assert_i(ptr noundef %40) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/quota.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 357, 0\0A.popsection", ""() #12, !srcloc !133
  unreachable

do.end9.i:                                        ; preds = %if.then25
  %dec.i = add i32 %42, -1
  %43 = ptrtoint ptr %qd_slot_count.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %dec.i, ptr %qd_slot_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool11.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool11.not.i, label %do.body13.i, label %do.end9.i.slot_put.exit_crit_edge

do.end9.i.slot_put.exit_crit_edge:                ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slot_put.exit

do.body13.i:                                      ; preds = %do.end9.i
  %qd_slot.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %11, i32 0, i32 10
  %44 = ptrtoint ptr %qd_slot.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %qd_slot.i, align 8
  %sd_quota_bitmap.i = getelementptr inbounds %struct.gfs2_sbd, ptr %40, i32 0, i32 74
  %46 = ptrtoint ptr %sd_quota_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sd_quota_bitmap.i, align 8
  %call.i = call i32 @_test_and_clear_bit(i32 noundef %45, ptr noundef %47) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool14.not.i, label %do.body24.i, label %do.end32.i, !prof !128

do.body24.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/quota.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 359, 0\0A.popsection", ""() #12, !srcloc !134
  unreachable

do.end32.i:                                       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %qd_slot.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %qd_slot.i, align 8
  br label %slot_put.exit

slot_put.exit:                                    ; preds = %do.end32.i, %do.end9.i.slot_put.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %sd_bitmap_lock.i) #12
  %qd_lockref.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %11, i32 0, i32 4
  %call.i72 = call i32 @lockref_put_or_lock(ptr noundef %qd_lockref.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool.not.i73 = icmp eq i32 %call.i72, 0
  br i1 %tobool.not.i73, label %if.end.i74, label %slot_put.exit.cleanup_crit_edge

slot_put.exit.cleanup_crit_edge:                  ; preds = %slot_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i74:                                       ; preds = %slot_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  %count.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %11, i32 0, i32 4, i32 0, i32 0, i32 1
  %49 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %count.i, align 4
  %qd_lru.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %11, i32 0, i32 5
  %call2.i = call zeroext i1 @list_lru_add(ptr noundef nonnull @gfs2_qd_lru, ptr noundef %qd_lru.i) #12
  call void @_raw_spin_unlock(ptr noundef %qd_lockref.i) #12
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %count.081, 1
  %arrayidx27 = getelementptr [4 x ptr], ptr %qda, i32 0, i32 %count.081
  %50 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %11, ptr %arrayidx27, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end.i74, %slot_put.exit.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %need_sync.exit.cleanup_crit_edge
  %count.1 = phi i32 [ %inc, %if.end26 ], [ %count.081, %need_sync.exit.cleanup_crit_edge ], [ %count.081, %if.end8.cleanup_crit_edge ], [ %count.081, %slot_put.exit.cleanup_crit_edge ], [ %count.081, %if.end.i74 ]
  %inc29 = add nuw i32 %x.080, 1
  %51 = ptrtoint ptr %i_qadata to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_qadata, align 8
  %qa_qd_num = getelementptr inbounds %struct.gfs2_qadata, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %qa_qd_num to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %qa_qd_num, align 4
  %cmp = icmp ult i32 %inc29, %54
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %tobool30.not = icmp eq i32 %count.1, 0
  br i1 %tobool30.not, label %for.end.if.end40_crit_edge, label %for.body35.preheader

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

for.body35.preheader:                             ; preds = %for.end
  %call32 = call fastcc i32 @do_sync(i32 noundef %count.1, ptr noundef nonnull %qda)
  br label %for.body35

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.body35.preheader
  %x.183 = phi i32 [ %inc38, %for.body35.for.body35_crit_edge ], [ 0, %for.body35.preheader ]
  %arrayidx36 = getelementptr [4 x ptr], ptr %qda, i32 0, i32 %x.183
  %55 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx36, align 4
  call fastcc void @qd_unlock(ptr noundef %56)
  %inc38 = add nuw i32 %x.183, 1
  %exitcond.not = icmp eq i32 %inc38, %count.1
  br i1 %exitcond.not, label %for.body35.if.end40_crit_edge, label %for.body35.for.body35_crit_edge

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body35

for.body35.if.end40_crit_edge:                    ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.end40:                                         ; preds = %for.body35.if.end40_crit_edge, %for.end.if.end40_crit_edge, %for.cond.preheader.if.end40_crit_edge
  call void @gfs2_quota_unhold(ptr noundef %ip)
  br label %cleanup41

cleanup41:                                        ; preds = %if.end40, %entry.cleanup41_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %qda) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qd_check_sync(ptr noundef %sdp, ptr noundef %qd, ptr noundef readonly %sync_gen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %qd_flags = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 7
  %0 = ptrtoint ptr %qd_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %qd_flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %qd_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %qd_flags, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false4

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %tobool5.not = icmp eq ptr %sync_gen, null
  br i1 %tobool5.not, label %lor.lhs.false4.if.end_crit_edge, label %land.lhs.true

lor.lhs.false4.if.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %qd_sync_gen = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 17
  %6 = ptrtoint ptr %qd_sync_gen to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %qd_sync_gen, align 8
  %8 = ptrtoint ptr %sync_gen to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sync_gen, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp.not = icmp ult i64 %7, %9
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false4.if.end_crit_edge
  %qd_lockref = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 4
  %call6 = tail call i32 @lockref_get_not_dead(ptr noundef %qd_lockref) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.return_crit_edge, label %if.end9

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end9:                                          ; preds = %if.end
  %qd_list = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 1
  %sd_quota_list = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 66
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %qd_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end9.__list_del_entry.exit.i_crit_edge

if.end9.__list_del_entry.exit.i_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %qd_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qd_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end9.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 66, i32 1
  %16 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %qd_list, ptr noundef %17, ptr noundef %sd_quota_list) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %qd_list, ptr %prev.i2.i, align 4
  %19 = ptrtoint ptr %qd_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sd_quota_list, ptr %qd_list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %qd_list, ptr %17, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  tail call void @_set_bit(i32 noundef 2, ptr noundef %qd_flags) #12
  %qd_change = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 8
  %22 = ptrtoint ptr %qd_change to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %qd_change, align 8
  %qd_change_sync = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 9
  %24 = ptrtoint ptr %qd_change_sync to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %qd_change_sync, align 8
  %qd_sbd.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 3
  %25 = ptrtoint ptr %qd_sbd.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %qd_sbd.i, align 8
  %sd_bitmap_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %26, i32 0, i32 75
  tail call void @_raw_spin_lock(ptr noundef %sd_bitmap_lock.i) #12
  %qd_slot_count.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 11
  %27 = ptrtoint ptr %qd_slot_count.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qd_slot_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.then.i, label %slot_hold.exit, !prof !128

if.then.i:                                        ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_i(ptr noundef %26) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/quota.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #12, !srcloc !137
  unreachable

slot_hold.exit:                                   ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %inc.i = add i32 %28, 1
  %29 = ptrtoint ptr %qd_slot_count.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %inc.i, ptr %qd_slot_count.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %sd_bitmap_lock.i) #12
  br label %return

return:                                           ; preds = %slot_hold.exit, %if.end.return_crit_edge, %land.lhs.true.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %slot_hold.exit ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bh_get(ptr nocapture noundef %qd) unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  %bh_map = alloca %struct.buffer_head, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %qd_gl = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 15
  %0 = ptrtoint ptr %qd_gl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qd_gl, align 4
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ln_sbd, align 8
  %sd_qc_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 40
  %4 = ptrtoint ptr %sd_qc_inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_qc_inode, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #12
  %6 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !136
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %bh_map) #12
  %7 = call ptr @memset(ptr %bh_map, i32 0, i32 104)
  %sd_quota_mutex = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 68
  tail call void @mutex_lock_nested(ptr noundef %sd_quota_mutex, i32 noundef 0) #12
  %qd_bh_count = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 14
  %8 = ptrtoint ptr %qd_bh_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qd_bh_count, align 8
  %inc = add i32 %9, 1
  store i32 %inc, ptr %qd_bh_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %sd_quota_mutex) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %qd_slot = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 10
  %10 = ptrtoint ptr %qd_slot to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qd_slot, align 8
  %sd_qc_per_block = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 15
  %12 = ptrtoint ptr %sd_qc_per_block to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sd_qc_per_block, align 4
  %.frozen = freeze i32 %11
  %.frozen49 = freeze i32 %13
  %div = udiv i32 %.frozen, %.frozen49
  %14 = mul i32 %div, %.frozen49
  %rem.decomposed = sub i32 %.frozen, %14
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 20
  %15 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %16 to i32
  %shl = shl nuw i32 1, %conv
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh_map, i32 0, i32 4
  %17 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shl, ptr %b_size, align 8
  %conv5 = zext i32 %div to i64
  %call6 = call i32 @gfs2_block_map(ptr noundef %5, i64 noundef %conv5, ptr noundef nonnull %bh_map, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end9:                                          ; preds = %if.end
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %5, i32 0, i32 6
  %18 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_gl, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh_map, i32 0, i32 3
  %20 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %b_blocknr, align 8
  %call10 = call i32 @gfs2_meta_read(ptr noundef %19, i64 noundef %21, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %bh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.fail_crit_edge

if.end9.fail_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end13:                                         ; preds = %if.end9
  %22 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bh, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_data.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %mh_type.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %mh_type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mh_type.i, align 4
  %conv.i = trunc i32 %29 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %27)
  %cmp.not.i = icmp eq i32 %27, 18225520
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !122

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = call i32 @gfs2_meta_check_ii(ptr noundef %3, ptr noundef %23, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.bh_get, ptr noundef nonnull @.str.1, i32 noundef 392) #12
  br label %gfs2_metatype_check_i.exit

if.end.i:                                         ; preds = %if.end13
  %conv3.i = and i32 %29, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %conv3.i)
  %cmp5.not.i = icmp eq i32 %conv3.i, 14
  br i1 %cmp5.not.i, label %if.end.i.if.end17_crit_edge, label %if.then13.i, !prof !122

if.end.i.if.end17_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i = call i32 @gfs2_metatype_check_ii(ptr noundef %3, ptr noundef %23, i16 noundef zeroext 14, i16 noundef zeroext %conv.i, ptr noundef nonnull @__func__.bh_get, ptr noundef nonnull @.str.1, i32 noundef 392) #12
  br label %gfs2_metatype_check_i.exit

gfs2_metatype_check_i.exit:                       ; preds = %if.then13.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call14.i, %if.then13.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool15.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool15.not, label %gfs2_metatype_check_i.exit.if.end17_crit_edge, label %fail_brelse

gfs2_metatype_check_i.exit.if.end17_crit_edge:    ; preds = %gfs2_metatype_check_i.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end17:                                         ; preds = %gfs2_metatype_check_i.exit.if.end17_crit_edge, %if.end.i.if.end17_crit_edge
  %30 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bh, align 4
  %qd_bh = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 12
  %32 = ptrtoint ptr %qd_bh to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %qd_bh, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %31, i32 0, i32 5
  %33 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 24
  %mul = shl i32 %rem.decomposed, 4
  %add.ptr18 = getelementptr i8, ptr %add.ptr, i32 %mul
  %qd_bh_qc = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 13
  %35 = ptrtoint ptr %qd_bh_qc to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr18, ptr %qd_bh_qc, align 4
  call void @mutex_unlock(ptr noundef %sd_quota_mutex) #12
  br label %cleanup

fail_brelse:                                      ; preds = %gfs2_metatype_check_i.exit
  %36 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %fail_brelse.fail_crit_edge, label %if.then.i45

fail_brelse.fail_crit_edge:                       ; preds = %fail_brelse
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.then.i45:                                      ; preds = %fail_brelse
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %37) #12
  br label %fail

fail:                                             ; preds = %if.then.i45, %fail_brelse.fail_crit_edge, %if.end9.fail_crit_edge, %if.end.fail_crit_edge
  %error.0 = phi i32 [ %call6, %if.end.fail_crit_edge ], [ %call10, %if.end9.fail_crit_edge ], [ -5, %fail_brelse.fail_crit_edge ], [ -5, %if.then.i45 ]
  %38 = ptrtoint ptr %qd_bh_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %qd_bh_count, align 8
  %dec = add i32 %39, -1
  store i32 %dec, ptr %qd_bh_count, align 8
  call void @mutex_unlock(ptr noundef %sd_quota_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end17, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %error.0, %fail ], [ 0, %if.end17 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %bh_map) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_sync(i32 noundef %num_qd, ptr noundef %qda) unnamed_addr #0 align 64 {
entry:
  %ap = alloca %struct.gfs2_alloc_parms, align 8
  %i_gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qda to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qda, align 4
  %qd_gl = getelementptr inbounds %struct.gfs2_quota_data, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %qd_gl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qd_gl, align 4
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ln_sbd, align 8
  %sd_quota_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 42
  %6 = ptrtoint ptr %sd_quota_inode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_quota_inode, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #12
  %8 = call ptr @memset(ptr %ap, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %i_gh) #12
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %9 = call ptr @memset(ptr %i_gh, i32 255, i32 32)
  %10 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i.i, align 16
  %ar_quota.i = getelementptr inbounds %struct.gfs2_sbd, ptr %13, i32 0, i32 21, i32 3
  %14 = ptrtoint ptr %ar_quota.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load.i = load i32, ptr %ar_quota.i, align 4
  %15 = and i32 %bf.load.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %i_rw_mutex.i = getelementptr inbounds %struct.gfs2_inode, ptr %7, i32 0, i32 13
  tail call void @down_write(ptr noundef %i_rw_mutex.i) #12
  %i_qadata.i = getelementptr inbounds %struct.gfs2_inode, ptr %7, i32 0, i32 8
  %16 = ptrtoint ptr %i_qadata.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_qadata.i, align 8
  %cmp1.i = icmp eq ptr %17, null
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.gfs2_qa_get.exit.thread185_crit_edge

if.end.i.gfs2_qa_get.exit.thread185_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_qa_get.exit.thread185

if.then2.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_qadata_cachep to i32))
  %18 = load ptr, ptr @gfs2_qadata_cachep, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %18, i32 noundef 3392) #12
  %19 = ptrtoint ptr %i_qadata.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i, ptr %i_qadata.i, align 8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %gfs2_qa_get.exit, label %if.then2.i.gfs2_qa_get.exit.thread185_crit_edge

if.then2.i.gfs2_qa_get.exit.thread185_crit_edge:  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_qa_get.exit.thread185

gfs2_qa_get.exit.thread185:                       ; preds = %if.then2.i.gfs2_qa_get.exit.thread185_crit_edge, %if.end.i.gfs2_qa_get.exit.thread185_crit_edge
  %20 = ptrtoint ptr %i_qadata.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_qadata.i, align 8
  %qa_ref.i = getelementptr inbounds %struct.gfs2_qadata, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %qa_ref.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qa_ref.i, align 4
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %qa_ref.i, align 4
  tail call void @up_write(ptr noundef %i_rw_mutex.i) #12
  br label %if.end

gfs2_qa_get.exit:                                 ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @up_write(ptr noundef %i_rw_mutex.i) #12
  br label %cleanup

if.end:                                           ; preds = %gfs2_qa_get.exit.thread185, %entry.if.end_crit_edge
  %24 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i141 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 33
  %26 = ptrtoint ptr %s_fs_info.i.i141 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i.i141, align 16
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %7, align 8
  %30 = and i16 %29, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %30)
  %cmp.i.not.i = icmp eq i16 %30, 16384
  br i1 %cmp.i.not.i, label %do.body4.i, label %do.end9.i, !prof !128

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/bmap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 36, 0\0A.popsection", ""() #12, !srcloc !138
  unreachable

do.end9.i:                                        ; preds = %if.end
  %sb_bsize_shift.i = getelementptr inbounds %struct.gfs2_sbd, ptr %27, i32 0, i32 5, i32 5
  %31 = ptrtoint ptr %sb_bsize_shift.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sb_bsize_shift.i, align 4
  %shr.i = lshr i32 88, %32
  %add.i = add nuw nsw i32 %shr.i, 3
  %sd_max_height.i = getelementptr inbounds %struct.gfs2_sbd, ptr %27, i32 0, i32 18
  %33 = ptrtoint ptr %sd_max_height.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sd_max_height.i, align 8
  %35 = mul i32 %34, 3
  %mul.i = add i32 %35, -3
  %sd_diptrs.i = getelementptr inbounds %struct.gfs2_sbd, ptr %27, i32 0, i32 8
  %36 = ptrtoint ptr %sd_diptrs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sd_diptrs.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %37)
  %cmp1.i142 = icmp ugt i32 %add.i, %37
  br i1 %cmp1.i142, label %for.body.lr.ph.i, label %do.end9.i.gfs2_write_calc_reserv.exit_crit_edge

do.end9.i.gfs2_write_calc_reserv.exit_crit_edge:  ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_write_calc_reserv.exit

for.body.lr.ph.i:                                 ; preds = %do.end9.i
  %sd_inptrs.i = getelementptr inbounds %struct.gfs2_sbd, ptr %27, i32 0, i32 9
  %38 = ptrtoint ptr %sd_inptrs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sd_inptrs.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ind_blocks.0 = phi i32 [ %mul.i, %for.body.lr.ph.i ], [ %add13.i, %for.body.i.for.body.i_crit_edge ]
  %tmp.02.i = phi i32 [ %add.i, %for.body.lr.ph.i ], [ %div.i, %for.body.i.for.body.i_crit_edge ]
  %add10.i = add i32 %tmp.02.i, -1
  %sub11.i = add i32 %add10.i, %39
  %div.i = udiv i32 %sub11.i, %39
  %add13.i = add i32 %div.i, %ind_blocks.0
  %cmp.i143 = icmp ugt i32 %div.i, %37
  br i1 %cmp.i143, label %for.body.i.for.body.i_crit_edge, label %for.body.i.gfs2_write_calc_reserv.exit_crit_edge

for.body.i.gfs2_write_calc_reserv.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_write_calc_reserv.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

gfs2_write_calc_reserv.exit:                      ; preds = %for.body.i.gfs2_write_calc_reserv.exit_crit_edge, %do.end9.i.gfs2_write_calc_reserv.exit_crit_edge
  %ind_blocks.1 = phi i32 [ %mul.i, %do.end9.i.gfs2_write_calc_reserv.exit_crit_edge ], [ %add13.i, %for.body.i.gfs2_write_calc_reserv.exit_crit_edge ]
  %40 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_qd, i32 32) #12
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %gfs2_write_calc_reserv.exit.out_crit_edge, label %if.end7.i, !prof !128

gfs2_write_calc_reserv.exit.out_crit_edge:        ; preds = %gfs2_write_calc_reserv.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end7.i:                                        ; preds = %gfs2_write_calc_reserv.exit
  %42 = extractvalue { i32, i1 } %40, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %42, i32 noundef 3136) #15
  %tobool3.not = icmp eq ptr %call8.i, null
  br i1 %tobool3.not, label %if.end7.i.out_crit_edge, label %if.end5

if.end7.i.out_crit_edge:                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end5:                                          ; preds = %if.end7.i
  tail call void @sort(ptr noundef %qda, i32 noundef %num_qd, i32 noundef 4, ptr noundef nonnull @sort_qd, ptr noundef null) #12
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_qd)
  %cmp197.not = icmp eq i32 %num_qd, 0
  %.pre = tail call ptr @llvm.returnaddress(i32 0) #12
  %.pre214 = ptrtoint ptr %.pre to i32
  br i1 %cmp197.not, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5.for.body_crit_edge
  %qx.0198 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %qda, i32 %qx.0198
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  %qd_gl6 = getelementptr inbounds %struct.gfs2_quota_data, ptr %44, i32 0, i32 15
  %45 = ptrtoint ptr %qd_gl6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %qd_gl6, align 4
  %arrayidx7 = getelementptr %struct.gfs2_holder, ptr %call8.i, i32 %qx.0198
  tail call void @__gfs2_holder_init(ptr noundef %46, i32 noundef 1, i16 noundef zeroext 1024, ptr noundef %arrayidx7, i32 noundef %.pre214) #12
  %call.i = tail call i32 @gfs2_glock_nq(ptr noundef %arrayidx7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i146 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i146, label %for.inc, label %gfs2_glock_nq_init.exit

gfs2_glock_nq_init.exit:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_holder_uninit(ptr noundef %arrayidx7) #12
  br label %out_dq

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %qx.0198, 1
  %exitcond.not = icmp eq i32 %inc, %num_qd
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end5.for.end_crit_edge
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %7, i32 0, i32 6
  %47 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_gl, align 4
  call void @__gfs2_holder_init(ptr noundef %48, i32 noundef 1, i16 noundef zeroext 0, ptr noundef nonnull %i_gh, i32 noundef %.pre214) #12
  %call.i148 = call i32 @gfs2_glock_nq(ptr noundef nonnull %i_gh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %tobool.not.i149 = icmp eq i32 %call.i148, 0
  br i1 %tobool.not.i149, label %for.cond16.preheader, label %gfs2_glock_nq_init.exit152.thread

for.cond16.preheader:                             ; preds = %for.end
  br i1 %cmp197.not, label %for.cond16.preheader.for.end28_crit_edge, label %for.cond16.preheader.for.body18_crit_edge

for.cond16.preheader.for.body18_crit_edge:        ; preds = %for.cond16.preheader
  br label %for.body18

for.cond16.preheader.for.end28_crit_edge:         ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end28

gfs2_glock_nq_init.exit152.thread:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_holder_uninit(ptr noundef nonnull %i_gh) #12
  br label %out_dq

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.cond16.preheader.for.body18_crit_edge
  %nalloc.0201 = phi i32 [ %spec.select, %for.body18.for.body18_crit_edge ], [ 0, %for.cond16.preheader.for.body18_crit_edge ]
  %x.0200 = phi i32 [ %inc27, %for.body18.for.body18_crit_edge ], [ 0, %for.cond16.preheader.for.body18_crit_edge ]
  %arrayidx19 = getelementptr ptr, ptr %qda, i32 %x.0200
  %49 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx19, align 4
  %qd_id.i.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %qd_id.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %qid.sroa.0.0.copyload.i.i = load i32, ptr %qd_id.i.i, align 8
  %qid.sroa.5.0.qd_id.sroa_idx.i.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %50, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %qid.sroa.5.0.qd_id.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %qid.sroa.5.0.copyload.i.i = load i32, ptr %qid.sroa.5.0.qd_id.sroa_idx.i.i, align 4
  %.fca.0.insert.i.i = insertvalue [2 x i32] poison, i32 %qid.sroa.0.0.copyload.i.i, 0
  %.fca.1.insert.i.i = insertvalue [2 x i32] %.fca.0.insert.i.i, i32 %qid.sroa.5.0.copyload.i.i, 1
  %call.i.i153 = call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %.fca.1.insert.i.i) #12
  %conv.i.i = zext i32 %call.i.i153 to i64
  %mul.i.i = shl nuw nsw i64 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qid.sroa.5.0.copyload.i.i)
  %cmp.i.i154 = icmp ne i32 %qid.sroa.5.0.copyload.i.i, 0
  %53 = zext i1 %cmp.i.i154 to i64
  %add.i.i = or i64 %mul.i.i, %53
  %mul.i155 = mul nuw nsw i64 %add.i.i, 88
  %call21 = call i32 @gfs2_write_alloc_required(ptr noundef %7, i64 noundef %mul.i155, i32 noundef 88) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp ne i32 %call21, 0
  %inc24 = zext i1 %tobool22.not to i32
  %spec.select = add i32 %nalloc.0201, %inc24
  %inc27 = add nuw i32 %x.0200, 1
  %exitcond212.not = icmp eq i32 %inc27, %num_qd
  br i1 %exitcond212.not, label %for.body18.for.end28_crit_edge, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body18

for.body18.for.end28_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end28

for.end28:                                        ; preds = %for.body18.for.end28_crit_edge, %for.cond16.preheader.for.end28_crit_edge
  %nalloc.0.lcssa = phi i32 [ 0, %for.cond16.preheader.for.end28_crit_edge ], [ %spec.select, %for.body18.for.end28_crit_edge ]
  %mul = mul i32 %add.i, %num_qd
  %add29 = add i32 %num_qd, 4
  %add30 = add i32 %add29, %mul
  %add31 = add i32 %ind_blocks.1, %add.i
  %mul32 = mul i32 %nalloc.0.lcssa, %add31
  %add33 = add i32 %mul32, 1
  %conv = zext i32 %add33 to i64
  %54 = ptrtoint ptr %ap to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv, ptr %ap, align 8
  %call34 = call i32 @gfs2_inplace_reserve(ptr noundef %7, ptr noundef nonnull %ap) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %for.end28.out_alloc_crit_edge

for.end28.out_alloc_crit_edge:                    ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_alloc

if.end37:                                         ; preds = %for.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nalloc.0.lcssa)
  %tobool38.not = icmp eq i32 %nalloc.0.lcssa, 0
  br i1 %tobool38.not, label %if.end37.if.end45_crit_edge, label %if.then39

if.end37.if.end45_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %rs_rgd.i = getelementptr inbounds %struct.gfs2_inode, ptr %7, i32 0, i32 10, i32 1
  %55 = ptrtoint ptr %rs_rgd.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rs_rgd.i, align 4
  %rd_length.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %rd_length.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rd_length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %add33)
  %cmp.i156 = icmp ugt i32 %58, %add33
  %add.i157 = add i32 %mul32, 2
  %retval.0.i158 = select i1 %cmp.i156, i32 %add.i157, i32 %58
  %mul41 = mul i32 %nalloc.0.lcssa, %ind_blocks.1
  %add42 = add i32 %add30, 1
  %add43 = add i32 %add42, %mul41
  %add44 = add i32 %add43, %retval.0.i158
  br label %if.end45

if.end45:                                         ; preds = %if.then39, %if.end37.if.end45_crit_edge
  %blocks.0 = phi i32 [ %add44, %if.then39 ], [ %add30, %if.end37.if.end45_crit_edge ]
  %call46 = call i32 @gfs2_trans_begin(ptr noundef %5, i32 noundef %blocks.0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %for.cond50.preheader, label %if.end45.out_ipres_crit_edge

if.end45.out_ipres_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_ipres

for.cond50.preheader:                             ; preds = %if.end45
  br i1 %cmp197.not, label %for.cond50.preheader.out_end_trans_crit_edge, label %for.cond50.preheader.for.body53_crit_edge

for.cond50.preheader.for.body53_crit_edge:        ; preds = %for.cond50.preheader
  br label %for.body53

for.cond50.preheader.out_end_trans_crit_edge:     ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_end_trans

for.body53:                                       ; preds = %if.end59.for.body53_crit_edge, %for.cond50.preheader.for.body53_crit_edge
  %x.1204 = phi i32 [ %inc62, %if.end59.for.body53_crit_edge ], [ 0, %for.cond50.preheader.for.body53_crit_edge ]
  %arrayidx54 = getelementptr ptr, ptr %qda, i32 %x.1204
  %59 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx54, align 4
  %qd_id.i.i159 = getelementptr inbounds %struct.gfs2_quota_data, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %qd_id.i.i159 to i32
  call void @__asan_load4_noabort(i32 %61)
  %qid.sroa.0.0.copyload.i.i160 = load i32, ptr %qd_id.i.i159, align 8
  %qid.sroa.5.0.qd_id.sroa_idx.i.i161 = getelementptr inbounds %struct.gfs2_quota_data, ptr %60, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %qid.sroa.5.0.qd_id.sroa_idx.i.i161 to i32
  call void @__asan_load4_noabort(i32 %62)
  %qid.sroa.5.0.copyload.i.i162 = load i32, ptr %qid.sroa.5.0.qd_id.sroa_idx.i.i161, align 4
  %.fca.0.insert.i.i163 = insertvalue [2 x i32] poison, i32 %qid.sroa.0.0.copyload.i.i160, 0
  %.fca.1.insert.i.i164 = insertvalue [2 x i32] %.fca.0.insert.i.i163, i32 %qid.sroa.5.0.copyload.i.i162, 1
  %call.i.i165 = call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %.fca.1.insert.i.i164) #12
  %conv.i.i166 = zext i32 %call.i.i165 to i64
  %mul.i.i167 = shl nuw nsw i64 %conv.i.i166, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qid.sroa.5.0.copyload.i.i162)
  %cmp.i.i168 = icmp ne i32 %qid.sroa.5.0.copyload.i.i162, 0
  %63 = zext i1 %cmp.i.i168 to i64
  %add.i.i169 = or i64 %mul.i.i167, %63
  %mul.i170 = mul nuw nsw i64 %add.i.i169, 88
  %qd_change_sync = getelementptr inbounds %struct.gfs2_quota_data, ptr %60, i32 0, i32 9
  %64 = ptrtoint ptr %qd_change_sync to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %qd_change_sync, align 8
  %call56 = call fastcc i32 @gfs2_adjust_quota(ptr noundef %7, i64 noundef %mul.i170, i64 noundef %65, ptr noundef %60, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %for.body53.out_end_trans_crit_edge

for.body53.out_end_trans_crit_edge:               ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_end_trans

if.end59:                                         ; preds = %for.body53
  %66 = ptrtoint ptr %qd_change_sync to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %qd_change_sync, align 8
  %sub = sub i64 0, %67
  call fastcc void @do_qc(ptr noundef %60, i64 noundef %sub)
  %qd_flags = getelementptr inbounds %struct.gfs2_quota_data, ptr %60, i32 0, i32 7
  call void @_set_bit(i32 noundef 3, ptr noundef %qd_flags) #12
  %inc62 = add nuw i32 %x.1204, 1
  %exitcond213.not = icmp eq i32 %inc62, %num_qd
  br i1 %exitcond213.not, label %if.end59.out_end_trans_crit_edge, label %if.end59.for.body53_crit_edge

if.end59.for.body53_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body53

if.end59.out_end_trans_crit_edge:                 ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_end_trans

out_end_trans:                                    ; preds = %if.end59.out_end_trans_crit_edge, %for.body53.out_end_trans_crit_edge, %for.cond50.preheader.out_end_trans_crit_edge
  %error.0 = phi i32 [ 0, %for.cond50.preheader.out_end_trans_crit_edge ], [ 0, %if.end59.out_end_trans_crit_edge ], [ %call56, %for.body53.out_end_trans_crit_edge ]
  call void @gfs2_trans_end(ptr noundef %5) #12
  br label %out_ipres

out_ipres:                                        ; preds = %out_end_trans, %if.end45.out_ipres_crit_edge
  %error.1 = phi i32 [ %call46, %if.end45.out_ipres_crit_edge ], [ %error.0, %out_end_trans ]
  call void @gfs2_inplace_release(ptr noundef %7) #12
  br label %out_alloc

out_alloc:                                        ; preds = %out_ipres, %for.end28.out_alloc_crit_edge
  %error.2 = phi i32 [ %call34, %for.end28.out_alloc_crit_edge ], [ %error.1, %out_ipres ]
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %i_gh) #12
  br label %out_dq

out_dq:                                           ; preds = %out_alloc, %gfs2_glock_nq_init.exit152.thread, %gfs2_glock_nq_init.exit
  %qx.0196 = phi i32 [ %qx.0198, %gfs2_glock_nq_init.exit ], [ %num_qd, %out_alloc ], [ %num_qd, %gfs2_glock_nq_init.exit152.thread ]
  %error.3 = phi i32 [ %call.i, %gfs2_glock_nq_init.exit ], [ %error.2, %out_alloc ], [ %call.i148, %gfs2_glock_nq_init.exit152.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qx.0196)
  %tobool64.not207 = icmp eq i32 %qx.0196, 0
  br i1 %tobool64.not207, label %out_dq.while.end_crit_edge, label %out_dq.while.body_crit_edge

out_dq.while.body_crit_edge:                      ; preds = %out_dq
  br label %while.body

out_dq.while.end_crit_edge:                       ; preds = %out_dq
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %out_dq.while.body_crit_edge
  %qx.1208 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %qx.0196, %out_dq.while.body_crit_edge ]
  %dec = add i32 %qx.1208, -1
  %arrayidx65 = getelementptr %struct.gfs2_holder, ptr %call8.i, i32 %dec
  call void @gfs2_glock_dq_uninit(ptr noundef %arrayidx65) #12
  %tobool64.not = icmp eq i32 %dec, 0
  br i1 %tobool64.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %out_dq.while.end_crit_edge
  call void @up_write(ptr noundef %i_rwsem.i) #12
  call void @kfree(ptr noundef nonnull %call8.i) #12
  %i_gl67 = getelementptr inbounds %struct.gfs2_inode, ptr %7, i32 0, i32 6
  %68 = ptrtoint ptr %i_gl67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i_gl67, align 4
  %ln_sbd69 = getelementptr inbounds %struct.gfs2_glock, ptr %69, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %ln_sbd69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ln_sbd69, align 8
  call void @gfs2_log_flush(ptr noundef %71, ptr noundef %69, i32 noundef 262146) #12
  br label %out

out:                                              ; preds = %while.end, %if.end7.i.out_crit_edge, %gfs2_write_calc_reserv.exit.out_crit_edge
  %error.4 = phi i32 [ %error.3, %while.end ], [ -12, %if.end7.i.out_crit_edge ], [ -12, %gfs2_write_calc_reserv.exit.out_crit_edge ]
  %i_rw_mutex.i172 = getelementptr inbounds %struct.gfs2_inode, ptr %7, i32 0, i32 13
  call void @down_write(ptr noundef %i_rw_mutex.i172) #12
  %i_qadata.i173 = getelementptr inbounds %struct.gfs2_inode, ptr %7, i32 0, i32 8
  %72 = ptrtoint ptr %i_qadata.i173 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i_qadata.i173, align 8
  %tobool.not.i174 = icmp eq ptr %73, null
  br i1 %tobool.not.i174, label %out.gfs2_qa_put.exit_crit_edge, label %land.lhs.true.i177

out.gfs2_qa_put.exit_crit_edge:                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_qa_put.exit

land.lhs.true.i177:                               ; preds = %out
  %qa_ref.i175 = getelementptr inbounds %struct.gfs2_qadata, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %qa_ref.i175 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %qa_ref.i175, align 4
  %dec.i = add i32 %75, -1
  store i32 %dec.i, ptr %qa_ref.i175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i176 = icmp eq i32 %dec.i, 0
  br i1 %cmp.i176, label %if.then.i178, label %land.lhs.true.i177.gfs2_qa_put.exit_crit_edge

land.lhs.true.i177.gfs2_qa_put.exit_crit_edge:    ; preds = %land.lhs.true.i177
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_qa_put.exit

if.then.i178:                                     ; preds = %land.lhs.true.i177
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_qadata_cachep to i32))
  %76 = load ptr, ptr @gfs2_qadata_cachep, align 4
  %77 = ptrtoint ptr %i_qadata.i173 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i_qadata.i173, align 8
  call void @kmem_cache_free(ptr noundef %76, ptr noundef %78) #12
  %79 = ptrtoint ptr %i_qadata.i173 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %i_qadata.i173, align 8
  br label %gfs2_qa_put.exit

gfs2_qa_put.exit:                                 ; preds = %if.then.i178, %land.lhs.true.i177.gfs2_qa_put.exit_crit_edge, %out.gfs2_qa_put.exit_crit_edge
  call void @up_write(ptr noundef %i_rw_mutex.i172) #12
  br label %cleanup

cleanup:                                          ; preds = %gfs2_qa_put.exit, %gfs2_qa_get.exit
  %retval.0 = phi i32 [ %error.4, %gfs2_qa_put.exit ], [ -12, %gfs2_qa_get.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %i_gh) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qd_unlock(ptr noundef %qd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %qd_flags = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 7
  %0 = ptrtoint ptr %qd_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %qd_flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !prof !128

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %qd_gl = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 15
  %3 = ptrtoint ptr %qd_gl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qd_gl, align 4
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %4, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ln_sbd, align 8
  tail call void @gfs2_assert_warn_i(ptr noundef %6, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.qd_unlock, ptr noundef nonnull @.str.1, i32 noundef 487) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %qd_flags) #12
  %qd_gl.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 15
  %7 = ptrtoint ptr %qd_gl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qd_gl.i, align 4
  %ln_sbd.i = getelementptr inbounds %struct.gfs2_glock, ptr %8, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %ln_sbd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ln_sbd.i, align 8
  %sd_quota_mutex.i = getelementptr inbounds %struct.gfs2_sbd, ptr %10, i32 0, i32 68
  tail call void @mutex_lock_nested(ptr noundef %sd_quota_mutex.i, i32 noundef 0) #12
  %qd_bh_count.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 14
  %11 = ptrtoint ptr %qd_bh_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qd_bh_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end9.i, !prof !128

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_i(ptr noundef %10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/quota.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #12, !srcloc !135
  unreachable

do.end9.i:                                        ; preds = %if.end
  %dec.i = add i32 %12, -1
  %13 = ptrtoint ptr %qd_bh_count.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %dec.i, ptr %qd_bh_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool11.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %do.end9.i.bh_put.exit_crit_edge

do.end9.i.bh_put.exit_crit_edge:                  ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bh_put.exit

if.then12.i:                                      ; preds = %do.end9.i
  %qd_bh.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 12
  %14 = ptrtoint ptr %qd_bh.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qd_bh.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.then12.i.brelse.exit.i_crit_edge, label %if.then.i.i

if.then12.i.brelse.exit.i_crit_edge:              ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %15) #12
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %if.then12.i.brelse.exit.i_crit_edge
  %16 = ptrtoint ptr %qd_bh.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %qd_bh.i, align 8
  %qd_bh_qc.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 13
  %17 = ptrtoint ptr %qd_bh_qc.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %qd_bh_qc.i, align 4
  br label %bh_put.exit

bh_put.exit:                                      ; preds = %brelse.exit.i, %do.end9.i.bh_put.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %sd_quota_mutex.i) #12
  %qd_sbd.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 3
  %18 = ptrtoint ptr %qd_sbd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qd_sbd.i, align 8
  %sd_bitmap_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %19, i32 0, i32 75
  tail call void @_raw_spin_lock(ptr noundef %sd_bitmap_lock.i) #12
  %qd_slot_count.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 11
  %20 = ptrtoint ptr %qd_slot_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qd_slot_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i15 = icmp eq i32 %21, 0
  br i1 %tobool.not.i15, label %if.then.i16, label %do.end9.i19, !prof !128

if.then.i16:                                      ; preds = %bh_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_i(ptr noundef %19) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/quota.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 357, 0\0A.popsection", ""() #12, !srcloc !133
  unreachable

do.end9.i19:                                      ; preds = %bh_put.exit
  %dec.i17 = add i32 %21, -1
  %22 = ptrtoint ptr %qd_slot_count.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %dec.i17, ptr %qd_slot_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i17)
  %tobool11.not.i18 = icmp eq i32 %dec.i17, 0
  br i1 %tobool11.not.i18, label %do.body13.i, label %do.end9.i19.slot_put.exit_crit_edge

do.end9.i19.slot_put.exit_crit_edge:              ; preds = %do.end9.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %slot_put.exit

do.body13.i:                                      ; preds = %do.end9.i19
  %qd_slot.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 10
  %23 = ptrtoint ptr %qd_slot.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qd_slot.i, align 8
  %sd_quota_bitmap.i = getelementptr inbounds %struct.gfs2_sbd, ptr %19, i32 0, i32 74
  %25 = ptrtoint ptr %sd_quota_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sd_quota_bitmap.i, align 8
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef %24, ptr noundef %26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool14.not.i, label %do.body24.i, label %do.end32.i, !prof !128

do.body24.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/quota.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 359, 0\0A.popsection", ""() #12, !srcloc !134
  unreachable

do.end32.i:                                       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %qd_slot.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %qd_slot.i, align 8
  br label %slot_put.exit

slot_put.exit:                                    ; preds = %do.end32.i, %do.end9.i19.slot_put.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_bitmap_lock.i) #12
  %qd_lockref.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 4
  %call.i20 = tail call i32 @lockref_put_or_lock(ptr noundef %qd_lockref.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not.i21 = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i21, label %if.end.i, label %slot_put.exit.qd_put.exit_crit_edge

slot_put.exit.qd_put.exit_crit_edge:              ; preds = %slot_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %qd_put.exit

if.end.i:                                         ; preds = %slot_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  %count.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 4, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %count.i, align 4
  %qd_lru.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 5
  %call2.i = tail call zeroext i1 @list_lru_add(ptr noundef nonnull @gfs2_qd_lru, ptr noundef %qd_lru.i) #12
  tail call void @_raw_spin_unlock(ptr noundef %qd_lockref.i) #12
  br label %qd_put.exit

qd_put.exit:                                      ; preds = %if.end.i, %slot_put.exit.qd_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_quota_check(ptr noundef %ip, [1 x i32] %uid.coerce, [1 x i32] %gid.coerce, ptr nocapture noundef %ap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %allowed = getelementptr inbounds %struct.gfs2_alloc_parms, ptr %ap, i32 0, i32 3
  %4 = ptrtoint ptr %allowed to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 4294967295, ptr %allowed, align 8
  %i_flags = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 5
  %5 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %i_flags, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %i_qadata = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 8
  %8 = ptrtoint ptr %i_qadata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_qadata, align 8
  %qa_qd_num136 = getelementptr inbounds %struct.gfs2_qadata, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %qa_qd_num136 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qa_qd_num136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp137.not = icmp eq i32 %11, 0
  br i1 %cmp137.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %uid.coerce.fca.0.extract.i = extractvalue [1 x i32] %uid.coerce, 0
  %.fca.0.insert67 = insertvalue [2 x i32] poison, i32 %uid.coerce.fca.0.extract.i, 0
  %.fca.1.insert70 = insertvalue [2 x i32] %.fca.0.insert67, i32 0, 1
  %gid.coerce.fca.0.extract.i = extractvalue [1 x i32] %gid.coerce, 0
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %gid.coerce.fca.0.extract.i, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 1, 1
  %sd_tune = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 22
  %gt_quota_warn_period = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 22, i32 2
  %min_target = getelementptr inbounds %struct.gfs2_alloc_parms, ptr %ap, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %12 = phi ptr [ %9, %for.body.lr.ph ], [ %82, %for.inc.for.body_crit_edge ]
  %x.0138 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr %12, i32 0, i32 %x.0138
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %qd_id = getelementptr inbounds %struct.gfs2_quota_data, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %qd_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack = load i32, ptr %qd_id, align 8
  %16 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt114 = getelementptr inbounds %struct.gfs2_quota_data, ptr %14, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %.elt114 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack115 = load i32, ptr %.elt114, align 4
  %18 = insertvalue [2 x i32] %16, i32 %.unpack115, 1
  %call5 = tail call zeroext i1 @qid_eq([2 x i32] %18, [2 x i32] %.fca.1.insert70) #12
  br i1 %call5, label %for.body.if.end11_crit_edge, label %lor.lhs.false

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

lor.lhs.false:                                    ; preds = %for.body
  %19 = ptrtoint ptr %qd_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack116 = load i32, ptr %qd_id, align 8
  %20 = insertvalue [2 x i32] undef, i32 %.unpack116, 0
  %21 = ptrtoint ptr %.elt114 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack118 = load i32, ptr %.elt114, align 4
  %22 = insertvalue [2 x i32] %20, i32 %.unpack118, 1
  %call9 = tail call zeroext i1 @qid_eq([2 x i32] %22, [2 x i32] %.fca.1.insert) #12
  br i1 %call9, label %lor.lhs.false.if.end11_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end11:                                         ; preds = %lor.lhs.false.if.end11_crit_edge, %for.body.if.end11_crit_edge
  %qb_warn = getelementptr inbounds %struct.gfs2_quota_data, ptr %14, i32 0, i32 16, i32 3
  %23 = ptrtoint ptr %qb_warn to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %qb_warn, align 8
  %qb_limit = getelementptr inbounds %struct.gfs2_quota_data, ptr %14, i32 0, i32 16, i32 2
  %25 = ptrtoint ptr %qb_limit to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %qb_limit, align 8
  %qb_value = getelementptr inbounds %struct.gfs2_quota_data, ptr %14, i32 0, i32 16, i32 4
  %27 = ptrtoint ptr %qb_value to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %qb_value, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @qd_lock) #12
  %qd_change = getelementptr inbounds %struct.gfs2_quota_data, ptr %14, i32 0, i32 8
  %29 = ptrtoint ptr %qd_change to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %qd_change, align 8
  %add = add i64 %30, %28
  tail call void @_raw_spin_unlock(ptr noundef nonnull @qd_lock) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %cmp14 = icmp sgt i64 %26, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %if.end11
  %sub = sub i64 %26, %add
  %31 = ptrtoint ptr %allowed to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %allowed, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %32)
  %cmp16 = icmp ult i64 %sub, %32
  br i1 %cmp16, label %if.then17, label %land.lhs.true.land.lhs.true22_crit_edge

land.lhs.true.land.lhs.true22_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true22

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %allowed to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %sub, ptr %allowed, align 8
  br label %land.lhs.true22

if.end20:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %tobool21.not = icmp eq i64 %26, 0
  br i1 %tobool21.not, label %if.end20.if.else_crit_edge, label %if.end20.land.lhs.true22_crit_edge

if.end20.land.lhs.true22_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true22

if.end20.if.else_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true22:                                  ; preds = %if.end20.land.lhs.true22_crit_edge, %if.then17, %land.lhs.true.land.lhs.true22_crit_edge
  %34 = ptrtoint ptr %ap to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %ap, align 8
  %add23 = add i64 %35, %add
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %add23)
  %cmp24 = icmp slt i64 %26, %add23
  br i1 %cmp24, label %if.then25, label %land.lhs.true22.if.else_crit_edge

land.lhs.true22.if.else_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then25:                                        ; preds = %land.lhs.true22
  %36 = ptrtoint ptr %min_target to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %min_target, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool26.not = icmp eq i32 %37, 0
  br i1 %tobool26.not, label %if.then25.if.then32_crit_edge, label %lor.lhs.false27

if.then25.if.then32_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32

lor.lhs.false27:                                  ; preds = %if.then25
  %conv = zext i32 %37 to i64
  %38 = ptrtoint ptr %allowed to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %allowed, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %conv)
  %cmp30 = icmp ult i64 %39, %conv
  br i1 %cmp30, label %lor.lhs.false27.if.then32_crit_edge, label %lor.lhs.false27.for.inc_crit_edge

lor.lhs.false27.for.inc_crit_edge:                ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false27.if.then32_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false27.if.then32_crit_edge, %if.then25.if.then32_crit_edge
  %qd_flags = getelementptr inbounds %struct.gfs2_quota_data, ptr %14, i32 0, i32 7
  %call33 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %qd_flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then35, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then35:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %qd_gl.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %14, i32 0, i32 15
  %40 = ptrtoint ptr %qd_gl.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %qd_gl.i, align 4
  %ln_sbd.i = getelementptr inbounds %struct.gfs2_glock, ptr %41, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %ln_sbd.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ln_sbd.i, align 8
  %sd_fsname.i = getelementptr inbounds %struct.gfs2_sbd, ptr %43, i32 0, i32 110
  %44 = ptrtoint ptr %.elt114 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %.elt114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i = icmp eq i32 %45, 0
  %cond.i = select i1 %cmp.i, ptr @.str.25, ptr @.str.26
  %46 = ptrtoint ptr %qd_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %.unpack.i = load i32, ptr %qd_id, align 8
  %47 = insertvalue [2 x i32] undef, i32 %.unpack.i, 0
  %48 = insertvalue [2 x i32] %47, i32 %45, 1
  %call.i = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %48) #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %sd_fsname.i, ptr noundef nonnull @.str.4, ptr noundef nonnull %cond.i, i32 noundef %call.i) #16
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %3, align 8
  %s_dev = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_dev, align 8
  %53 = ptrtoint ptr %qd_id to i32
  call void @__asan_load4_noabort(i32 %53)
  %.unpack122 = load i32, ptr %qd_id, align 8
  %54 = insertvalue [2 x i32] undef, i32 %.unpack122, 0
  %55 = ptrtoint ptr %.elt114 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.unpack124 = load i32, ptr %.elt114, align 4
  %56 = insertvalue [2 x i32] %54, i32 %.unpack124, 1
  tail call void @quota_send_warning([2 x i32] %56, i32 noundef %52, i8 noundef zeroext 4) #12
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true22.if.else_crit_edge, %if.end20.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool40.not = icmp ne i64 %24, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %add)
  %cmp42 = icmp slt i64 %24, %add
  %or.cond = select i1 %tobool40.not, i1 %cmp42, i1 false
  br i1 %or.cond, label %land.lhs.true44, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true44:                                  ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %qd_last_warn = getelementptr inbounds %struct.gfs2_quota_data, ptr %14, i32 0, i32 18
  %58 = ptrtoint ptr %qd_last_warn to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %qd_last_warn, align 8
  tail call void @_raw_spin_lock(ptr noundef %sd_tune) #12
  %60 = ptrtoint ptr %gt_quota_warn_period to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %gt_quota_warn_period, align 4
  tail call void @_raw_spin_unlock(ptr noundef %sd_tune) #12
  %mul.neg = mul i32 %61, -100
  %add47.neg = sub i32 %57, %59
  %sub48 = add i32 %add47.neg, %mul.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub48)
  %cmp49 = icmp sgt i32 %sub48, -1
  br i1 %cmp49, label %if.then51, label %land.lhs.true44.for.inc_crit_edge

land.lhs.true44.for.inc_crit_edge:                ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then51:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %3, align 8
  %s_dev54 = getelementptr inbounds %struct.super_block, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %s_dev54 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %s_dev54, align 8
  %66 = ptrtoint ptr %qd_id to i32
  call void @__asan_load4_noabort(i32 %66)
  %.unpack119 = load i32, ptr %qd_id, align 8
  %67 = insertvalue [2 x i32] undef, i32 %.unpack119, 0
  %68 = ptrtoint ptr %.elt114 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.unpack121 = load i32, ptr %.elt114, align 4
  %69 = insertvalue [2 x i32] %67, i32 %.unpack121, 1
  tail call void @quota_send_warning([2 x i32] %69, i32 noundef %65, i8 noundef zeroext 6) #12
  %qd_gl.i125 = getelementptr inbounds %struct.gfs2_quota_data, ptr %14, i32 0, i32 15
  %70 = ptrtoint ptr %qd_gl.i125 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %qd_gl.i125, align 4
  %ln_sbd.i126 = getelementptr inbounds %struct.gfs2_glock, ptr %71, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %ln_sbd.i126 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ln_sbd.i126, align 8
  %sd_fsname.i127 = getelementptr inbounds %struct.gfs2_sbd, ptr %73, i32 0, i32 110
  %74 = ptrtoint ptr %.elt114 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %.elt114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i130 = icmp eq i32 %75, 0
  %cond.i131 = select i1 %cmp.i130, ptr @.str.25, ptr @.str.26
  %76 = ptrtoint ptr %qd_id to i32
  call void @__asan_load4_noabort(i32 %76)
  %.unpack.i132 = load i32, ptr %qd_id, align 8
  %77 = insertvalue [2 x i32] undef, i32 %.unpack.i132, 0
  %78 = insertvalue [2 x i32] %77, i32 %75, 1
  %call.i133 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %78) #12
  %call3.i134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %sd_fsname.i127, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond.i131, i32 noundef %call.i133) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %79 = load volatile i32, ptr @jiffies, align 128
  %80 = ptrtoint ptr %qd_last_warn to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %qd_last_warn, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then51, %land.lhs.true44.for.inc_crit_edge, %if.else.for.inc_crit_edge, %lor.lhs.false27.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %inc = add nuw i32 %x.0138, 1
  %81 = ptrtoint ptr %i_qadata to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i_qadata, align 8
  %qa_qd_num = getelementptr inbounds %struct.gfs2_qadata, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %qa_qd_num to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %qa_qd_num, align 4
  %cmp = icmp ult i32 %inc, %84
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then35, %if.then32.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -122, %if.then35 ], [ -122, %if.then32.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qid_eq([2 x i32], [2 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @quota_send_warning([2 x i32], i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_quota_change(ptr nocapture noundef readonly %ip, i64 noundef %change, [1 x i32] %uid.coerce, [1 x i32] %gid.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %ar_quota = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 21, i32 3
  %4 = ptrtoint ptr %ar_quota to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %ar_quota, align 4
  %5 = and i32 %bf.load, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %5)
  %cmp.not = icmp eq i32 %5, 134217728
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %change)
  %tobool.not = icmp eq i64 %change, 0
  br i1 %tobool.not, label %if.then, label %if.end11, !prof !128

if.then:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_warn_i(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.gfs2_quota_change, ptr noundef nonnull @.str.1, i32 noundef 1263) #12
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %i_diskflags = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 18
  %6 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_diskflags, align 4
  %and = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %i_qadata = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 8
  %8 = ptrtoint ptr %i_qadata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_qadata, align 8
  %tobool16.not = icmp eq ptr %9, null
  br i1 %tobool16.not, label %if.end14.if.then29_crit_edge, label %land.rhs

if.end14.if.then29_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29

land.rhs:                                         ; preds = %if.end14
  %qa_ref = getelementptr inbounds %struct.gfs2_qadata, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %qa_ref to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qa_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp18 = icmp slt i32 %11, 1
  br i1 %cmp18, label %land.rhs.if.then29_crit_edge, label %for.cond.preheader, !prof !128

land.rhs.if.then29_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29

for.cond.preheader:                               ; preds = %land.rhs
  %12 = ptrtoint ptr %i_qadata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_qadata, align 8
  %qa_qd_num83 = getelementptr inbounds %struct.gfs2_qadata, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %qa_qd_num83 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qa_qd_num83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp3984.not = icmp eq i32 %15, 0
  br i1 %cmp3984.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %uid.coerce.fca.0.extract.i = extractvalue [1 x i32] %uid.coerce, 0
  %.fca.0.insert54 = insertvalue [2 x i32] poison, i32 %uid.coerce.fca.0.extract.i, 0
  %.fca.1.insert57 = insertvalue [2 x i32] %.fca.0.insert54, i32 0, 1
  %gid.coerce.fca.0.extract.i = extractvalue [1 x i32] %gid.coerce, 0
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %gid.coerce.fca.0.extract.i, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 1, 1
  br label %for.body

if.then29:                                        ; preds = %land.rhs.if.then29_crit_edge, %if.end14.if.then29_crit_edge
  tail call void @gfs2_assert_withdraw_i(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.gfs2_quota_change, ptr noundef nonnull @.str.1, i32 noundef 1269, i1 noundef zeroext false) #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %16 = phi ptr [ %13, %for.body.lr.ph ], [ %28, %for.inc.for.body_crit_edge ]
  %x.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr %16, i32 0, i32 %x.085
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %qd_id = getelementptr inbounds %struct.gfs2_quota_data, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %qd_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack = load i32, ptr %qd_id, align 8
  %20 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt78 = getelementptr inbounds %struct.gfs2_quota_data, ptr %18, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %.elt78 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack79 = load i32, ptr %.elt78, align 4
  %22 = insertvalue [2 x i32] %20, i32 %.unpack79, 1
  %call42 = tail call zeroext i1 @qid_eq([2 x i32] %22, [2 x i32] %.fca.1.insert57) #12
  br i1 %call42, label %for.body.if.then48_crit_edge, label %lor.lhs.false43

for.body.if.then48_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then48

lor.lhs.false43:                                  ; preds = %for.body
  %23 = ptrtoint ptr %qd_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack80 = load i32, ptr %qd_id, align 8
  %24 = insertvalue [2 x i32] undef, i32 %.unpack80, 0
  %25 = ptrtoint ptr %.elt78 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack82 = load i32, ptr %.elt78, align 4
  %26 = insertvalue [2 x i32] %24, i32 %.unpack82, 1
  %call47 = tail call zeroext i1 @qid_eq([2 x i32] %26, [2 x i32] %.fca.1.insert) #12
  br i1 %call47, label %lor.lhs.false43.if.then48_crit_edge, label %lor.lhs.false43.for.inc_crit_edge

lor.lhs.false43.for.inc_crit_edge:                ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false43.if.then48_crit_edge:              ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then48

if.then48:                                        ; preds = %lor.lhs.false43.if.then48_crit_edge, %for.body.if.then48_crit_edge
  tail call fastcc void @do_qc(ptr noundef %18, i64 noundef %change)
  br label %for.inc

for.inc:                                          ; preds = %if.then48, %lor.lhs.false43.for.inc_crit_edge
  %inc = add nuw i32 %x.085, 1
  %27 = ptrtoint ptr %i_qadata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_qadata, align 8
  %qa_qd_num = getelementptr inbounds %struct.gfs2_qadata, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %qa_qd_num to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qa_qd_num, align 4
  %cmp39 = icmp ult i32 %inc, %30
  br i1 %cmp39, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then29, %for.cond.preheader.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_withdraw_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_qc(ptr noundef %qd, i64 noundef %change) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %qd_gl = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 15
  %0 = ptrtoint ptr %qd_gl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qd_gl, align 4
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ln_sbd, align 8
  %sd_qc_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 40
  %4 = ptrtoint ptr %sd_qc_inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_qc_inode, align 8
  %qd_bh_qc = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 13
  %6 = ptrtoint ptr %qd_bh_qc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qd_bh_qc, align 4
  %sd_quota_mutex = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 68
  tail call void @mutex_lock_nested(ptr noundef %sd_quota_mutex, i32 noundef 0) #12
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_gl, align 4
  %qd_bh = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 12
  %10 = ptrtoint ptr %qd_bh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qd_bh, align 8
  tail call void @gfs2_trans_add_meta(ptr noundef %9, ptr noundef %11) #12
  %qd_flags = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 7
  %12 = ptrtoint ptr %qd_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %qd_flags, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %7, align 8
  %qc_flags = getelementptr inbounds %struct.gfs2_quota_change, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %qc_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %qc_flags, align 8
  %qd_id = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 2
  %type = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  %spec.store.select = zext i1 %cmp to i32
  %19 = ptrtoint ptr %qc_flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.store.select, ptr %qc_flags, align 8
  %20 = ptrtoint ptr %qd_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack = load i32, ptr %qd_id, align 8
  %21 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack66 = load i32, ptr %type, align 4
  %23 = insertvalue [2 x i32] %21, i32 %.unpack66, 1
  %call5 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %23) #12
  %qc_id = getelementptr inbounds %struct.gfs2_quota_change, ptr %7, i32 0, i32 2
  %24 = ptrtoint ptr %qc_id to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call5, ptr %qc_id, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then, %entry.if.end6_crit_edge
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %7, align 8
  %add = add i64 %26, %change
  store i64 %add, ptr %7, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @qd_lock) #12
  %qd_change = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 8
  %27 = ptrtoint ptr %qd_change to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %add, ptr %qd_change, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @qd_lock) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %tobool9.not = icmp eq i64 %add, 0
  br i1 %tobool9.not, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end6
  %28 = ptrtoint ptr %qd_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %qd_flags, align 4
  %30 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool13.not = icmp eq i32 %30, 0
  br i1 %tobool13.not, label %if.then18, label %if.then10.if.end19_crit_edge, !prof !128

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then18:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_warn_i(ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.do_qc, ptr noundef nonnull @.str.1, i32 noundef 678) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then10.if.end19_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %qd_flags) #12
  %qc_flags24 = getelementptr inbounds %struct.gfs2_quota_change, ptr %7, i32 0, i32 1
  %31 = ptrtoint ptr %qc_flags24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %qc_flags24, align 8
  %qc_id25 = getelementptr inbounds %struct.gfs2_quota_change, ptr %7, i32 0, i32 2
  %32 = ptrtoint ptr %qc_id25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %qc_id25, align 4
  %qd_sbd.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 3
  %33 = ptrtoint ptr %qd_sbd.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %qd_sbd.i, align 8
  %sd_bitmap_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %34, i32 0, i32 75
  tail call void @_raw_spin_lock(ptr noundef %sd_bitmap_lock.i) #12
  %qd_slot_count.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 11
  %35 = ptrtoint ptr %qd_slot_count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qd_slot_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end9.i, !prof !128

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_i(ptr noundef %34) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/quota.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 357, 0\0A.popsection", ""() #12, !srcloc !133
  unreachable

do.end9.i:                                        ; preds = %if.end19
  %dec.i = add i32 %36, -1
  %37 = ptrtoint ptr %qd_slot_count.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %dec.i, ptr %qd_slot_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool11.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool11.not.i, label %do.body13.i, label %do.end9.i.slot_put.exit_crit_edge

do.end9.i.slot_put.exit_crit_edge:                ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slot_put.exit

do.body13.i:                                      ; preds = %do.end9.i
  %qd_slot.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 10
  %38 = ptrtoint ptr %qd_slot.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %qd_slot.i, align 8
  %sd_quota_bitmap.i = getelementptr inbounds %struct.gfs2_sbd, ptr %34, i32 0, i32 74
  %40 = ptrtoint ptr %sd_quota_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sd_quota_bitmap.i, align 8
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef %39, ptr noundef %41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool14.not.i, label %do.body24.i, label %do.end32.i, !prof !128

do.body24.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/quota.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 359, 0\0A.popsection", ""() #12, !srcloc !134
  unreachable

do.end32.i:                                       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %qd_slot.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %qd_slot.i, align 8
  br label %slot_put.exit

slot_put.exit:                                    ; preds = %do.end32.i, %do.end9.i.slot_put.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_bitmap_lock.i) #12
  %qd_lockref.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 4
  %call.i69 = tail call i32 @lockref_put_or_lock(ptr noundef %qd_lockref.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i70, label %if.end.i, label %slot_put.exit.if.end31_crit_edge

slot_put.exit.if.end31_crit_edge:                 ; preds = %slot_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.end.i:                                         ; preds = %slot_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  %count.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 4, i32 0, i32 0, i32 1
  %43 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %count.i, align 4
  %qd_lru.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 5
  %call2.i = tail call zeroext i1 @list_lru_add(ptr noundef nonnull @gfs2_qd_lru, ptr noundef %qd_lru.i) #12
  br label %if.end31.sink.split

if.else:                                          ; preds = %if.end6
  %call27 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %qd_flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.else.if.end31_crit_edge

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then29:                                        ; preds = %if.else
  %count.i.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 4, i32 0, i32 0, i32 1
  %44 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i.i = icmp slt i32 %45, 0
  br i1 %cmp.i.i, label %if.then.i71, label %qd_hold.exit, !prof !128

if.then.i71:                                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %qd_gl to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %qd_gl, align 4
  %ln_sbd.i = getelementptr inbounds %struct.gfs2_glock, ptr %47, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %ln_sbd.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ln_sbd.i, align 8
  tail call void @gfs2_assert_i(ptr noundef %49) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/quota.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 303, 0\0A.popsection", ""() #12, !srcloc !139
  unreachable

qd_hold.exit:                                     ; preds = %if.then29
  %qd_lockref.i72 = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 4
  tail call void @lockref_get(ptr noundef %qd_lockref.i72) #12
  %qd_sbd.i74 = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 3
  %50 = ptrtoint ptr %qd_sbd.i74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %qd_sbd.i74, align 8
  %sd_bitmap_lock.i75 = getelementptr inbounds %struct.gfs2_sbd, ptr %51, i32 0, i32 75
  tail call void @_raw_spin_lock(ptr noundef %sd_bitmap_lock.i75) #12
  %qd_slot_count.i76 = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 11
  %52 = ptrtoint ptr %qd_slot_count.i76 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %qd_slot_count.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i77 = icmp eq i32 %53, 0
  br i1 %tobool.not.i77, label %if.then.i78, label %slot_hold.exit, !prof !128

if.then.i78:                                      ; preds = %qd_hold.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_i(ptr noundef %51) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/quota.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #12, !srcloc !137
  unreachable

slot_hold.exit:                                   ; preds = %qd_hold.exit
  call void @__sanitizer_cov_trace_pc() #14
  %inc.i = add i32 %53, 1
  %54 = ptrtoint ptr %qd_slot_count.i76 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %inc.i, ptr %qd_slot_count.i76, align 4
  br label %if.end31.sink.split

if.end31.sink.split:                              ; preds = %slot_hold.exit, %if.end.i
  %qd_lockref.i.sink = phi ptr [ %qd_lockref.i, %if.end.i ], [ %sd_bitmap_lock.i75, %slot_hold.exit ]
  tail call void @_raw_spin_unlock(ptr noundef %qd_lockref.i.sink) #12
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.else.if.end31_crit_edge, %slot_put.exit.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %change)
  %cmp32 = icmp slt i64 %change, 0
  br i1 %cmp32, label %if.then33, label %if.end31.if.end35_crit_edge

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %qd_flags) #12
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end31.if.end35_crit_edge
  tail call void @mutex_unlock(ptr noundef %sd_quota_mutex) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_quota_sync(ptr nocapture noundef readonly %sb, i32 %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 512) #17
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sd_quota_sync_mutex = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 69
  tail call void @mutex_lock_nested(ptr noundef %sd_quota_sync_mutex, i32 noundef 0) #12
  %sd_quota_sync_gen = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 76
  %3 = ptrtoint ptr %sd_quota_sync_gen to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %sd_quota_sync_gen, align 8
  %inc = add i64 %4, 1
  store i64 %inc, ptr %sd_quota_sync_gen, align 8
  %sd_quota_list.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 66
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %if.end
  %num_qd.0 = phi i32 [ 0, %if.end ], [ %num_qd.0.be, %for.cond.backedge ]
  %add.ptr = getelementptr ptr, ptr %call7.i.i.i, i32 %num_qd.0
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %add.ptr, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %lor.lhs.falsethread-pre-split

if.end.i:                                         ; preds = %for.cond
  tail call void @_raw_spin_lock(ptr noundef nonnull @qd_lock) #12
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %sd_quota_list.i, %if.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.i, %sd_quota_list.i
  br i1 %cmp.not.i, label %for.end.thread.i, label %for.body.i

for.end.thread.i:                                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef nonnull @qd_lock) #12
  br label %if.end31.i

for.body.i:                                       ; preds = %for.cond.i
  %qd.0.i = getelementptr i8, ptr %.pn.i, i32 -8
  %call2.i = tail call fastcc i32 @qd_check_sync(ptr noundef %1, ptr noundef %qd.0.i, ptr noundef %sd_quota_sync_gen) #12
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.end.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

for.end.i:                                        ; preds = %for.body.i
  tail call void @_raw_spin_unlock(ptr noundef nonnull @qd_lock) #12
  %tobool13.not.i = icmp eq ptr %qd.0.i, null
  br i1 %tobool13.not.i, label %for.end.i.if.end31.i_crit_edge, label %if.then14.i

for.end.i.if.end31.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.then14.i:                                      ; preds = %for.end.i
  %qd_change_sync.i = getelementptr i8, ptr %.pn.i, i32 96
  %11 = ptrtoint ptr %qd_change_sync.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %qd_change_sync.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool15.not.i = icmp eq i64 %12, 0
  br i1 %tobool15.not.i, label %if.then21.i, label %if.then14.i.if.end22.i_crit_edge, !prof !128

if.then14.i.if.end22.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.then21.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_warn_i(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.qd_fish, ptr noundef nonnull @.str.1, i32 noundef 469) #12
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %if.then14.i.if.end22.i_crit_edge
  %call27.i = tail call fastcc i32 @bh_get(ptr noundef nonnull %qd.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end22.i.if.end31.i_crit_edge, label %if.then29.i

if.end22.i.if.end31.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.then29.i:                                      ; preds = %if.end22.i
  %qd_flags.i = getelementptr i8, ptr %.pn.i, i32 80
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %qd_flags.i) #12
  %qd_sbd.i.i = getelementptr i8, ptr %.pn.i, i32 16
  %13 = ptrtoint ptr %qd_sbd.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qd_sbd.i.i, align 8
  %sd_bitmap_lock.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %14, i32 0, i32 75
  tail call void @_raw_spin_lock(ptr noundef %sd_bitmap_lock.i.i) #12
  %qd_slot_count.i.i = getelementptr i8, ptr %.pn.i, i32 108
  %15 = ptrtoint ptr %qd_slot_count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qd_slot_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.end9.i.i, !prof !128

if.then.i.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_i(ptr noundef %14) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/quota.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 357, 0\0A.popsection", ""() #12, !srcloc !133
  unreachable

do.end9.i.i:                                      ; preds = %if.then29.i
  %dec.i.i = add i32 %16, -1
  %17 = ptrtoint ptr %qd_slot_count.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %dec.i.i, ptr %qd_slot_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool11.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool11.not.i.i, label %do.body13.i.i, label %do.end9.i.i.slot_put.exit.i_crit_edge

do.end9.i.i.slot_put.exit.i_crit_edge:            ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slot_put.exit.i

do.body13.i.i:                                    ; preds = %do.end9.i.i
  %qd_slot.i.i = getelementptr i8, ptr %.pn.i, i32 104
  %18 = ptrtoint ptr %qd_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qd_slot.i.i, align 8
  %sd_quota_bitmap.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %14, i32 0, i32 74
  %20 = ptrtoint ptr %sd_quota_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sd_quota_bitmap.i.i, align 8
  %call.i.i = tail call i32 @_test_and_clear_bit(i32 noundef %19, ptr noundef %21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool14.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool14.not.i.i, label %do.body24.i.i, label %do.end32.i.i, !prof !128

do.body24.i.i:                                    ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/quota.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 359, 0\0A.popsection", ""() #12, !srcloc !134
  unreachable

do.end32.i.i:                                     ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %qd_slot.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %qd_slot.i.i, align 8
  br label %slot_put.exit.i

slot_put.exit.i:                                  ; preds = %do.end32.i.i, %do.end9.i.i.slot_put.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_bitmap_lock.i.i) #12
  %qd_lockref.i.i = getelementptr i8, ptr %.pn.i, i32 20
  %call.i52.i = tail call i32 @lockref_put_or_lock(ptr noundef %qd_lockref.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52.i)
  %tobool.not.i53.i = icmp eq i32 %call.i52.i, 0
  br i1 %tobool.not.i53.i, label %if.end.i.i, label %slot_put.exit.i.for.end_crit_edge

slot_put.exit.i.for.end_crit_edge:                ; preds = %slot_put.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.i.i:                                       ; preds = %slot_put.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %count.i.i = getelementptr i8, ptr %.pn.i, i32 64
  %23 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %count.i.i, align 4
  %qd_lru.i.i = getelementptr i8, ptr %.pn.i, i32 68
  %call2.i.i = tail call zeroext i1 @list_lru_add(ptr noundef nonnull @gfs2_qd_lru, ptr noundef %qd_lru.i.i) #12
  tail call void @_raw_spin_unlock(ptr noundef %qd_lockref.i.i) #12
  br label %for.end

if.end31.i:                                       ; preds = %if.end22.i.if.end31.i_crit_edge, %for.end.i.if.end31.i_crit_edge, %for.end.thread.i
  %spec.select56.i = phi ptr [ null, %for.end.thread.i ], [ %qd.0.i, %if.end22.i.if.end31.i_crit_edge ], [ null, %for.end.i.if.end31.i_crit_edge ]
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %spec.select56.i, ptr %add.ptr, align 4
  br label %lor.lhs.false

lor.lhs.falsethread-pre-split:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load ptr, ptr %add.ptr, align 4
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.lhs.falsethread-pre-split, %if.end31.i
  %26 = phi ptr [ %.pr, %lor.lhs.falsethread-pre-split ], [ %spec.select56.i, %if.end31.i ]
  %tobool3.not = icmp eq ptr %26, null
  br i1 %tobool3.not, label %for.end.thread, label %if.end5

if.end5:                                          ; preds = %lor.lhs.false
  %inc6 = add nuw nsw i32 %num_qd.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %inc6)
  %cmp = icmp eq i32 %inc6, 128
  br i1 %cmp, label %if.end5.if.end14_crit_edge, label %if.end5.for.cond.backedge_crit_edge

if.end5.for.cond.backedge_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

for.cond.backedge:                                ; preds = %do.cond.for.cond.backedge_crit_edge, %if.end5.for.cond.backedge_crit_edge
  %num_qd.0.be = phi i32 [ %inc6, %if.end5.for.cond.backedge_crit_edge ], [ 0, %do.cond.for.cond.backedge_crit_edge ]
  br label %for.cond

for.end:                                          ; preds = %if.end.i.i, %slot_put.exit.i.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_qd.0)
  %tobool9.not = icmp eq i32 %num_qd.0, 0
  br i1 %tobool9.not, label %for.end.do.end_crit_edge, label %for.end.if.end23_crit_edge

for.end.if.end23_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.end.thread:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_qd.0)
  %tobool9.not111 = icmp eq i32 %num_qd.0, 0
  br i1 %tobool9.not111, label %for.end.thread.do.end_crit_edge, label %for.end.thread.if.end14_crit_edge

for.end.thread.if.end14_crit_edge:                ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

for.end.thread.do.end_crit_edge:                  ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end14:                                         ; preds = %for.end.thread.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  %num_qd.18087 = phi i32 [ %num_qd.0, %for.end.thread.if.end14_crit_edge ], [ 128, %if.end5.if.end14_crit_edge ]
  %call13 = tail call fastcc i32 @do_sync(i32 noundef %num_qd.18087, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %if.end14.for.body_crit_edge, label %if.end14.if.end23_crit_edge

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end14.for.body_crit_edge
  %x.0100 = phi i32 [ %inc21, %for.body.for.body_crit_edge ], [ 0, %if.end14.for.body_crit_edge ]
  %27 = ptrtoint ptr %sd_quota_sync_gen to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %sd_quota_sync_gen, align 8
  %arrayidx20 = getelementptr ptr, ptr %call7.i.i.i, i32 %x.0100
  %29 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx20, align 4
  %qd_sync_gen = getelementptr inbounds %struct.gfs2_quota_data, ptr %30, i32 0, i32 17
  %31 = ptrtoint ptr %qd_sync_gen to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %28, ptr %qd_sync_gen, align 8
  %inc21 = add nuw nsw i32 %x.0100, 1
  %exitcond.not = icmp eq i32 %inc21, %num_qd.18087
  br i1 %exitcond.not, label %for.body.if.end23_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end23:                                         ; preds = %for.body.if.end23_crit_edge, %if.end14.if.end23_crit_edge, %for.end.if.end23_crit_edge
  %tobool15.not123 = phi i1 [ false, %for.end.if.end23_crit_edge ], [ false, %if.end14.if.end23_crit_edge ], [ %tobool15.not, %for.body.if.end23_crit_edge ]
  %error.0121 = phi i32 [ %call27.i, %for.end.if.end23_crit_edge ], [ %call13, %if.end14.if.end23_crit_edge ], [ %call13, %for.body.if.end23_crit_edge ]
  %num_qd.181119 = phi i32 [ %num_qd.0, %for.end.if.end23_crit_edge ], [ %num_qd.18087, %if.end14.if.end23_crit_edge ], [ %num_qd.18087, %for.body.if.end23_crit_edge ]
  br label %for.body26

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %if.end23
  %x.1101 = phi i32 [ 0, %if.end23 ], [ %inc29, %for.body26.for.body26_crit_edge ]
  %arrayidx27 = getelementptr ptr, ptr %call7.i.i.i, i32 %x.1101
  %32 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx27, align 4
  tail call fastcc void @qd_unlock(ptr noundef %33)
  %inc29 = add nuw nsw i32 %x.1101, 1
  %exitcond108.not = icmp eq i32 %inc29, %num_qd.181119
  br i1 %exitcond108.not, label %do.cond, label %for.body26.for.body26_crit_edge

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body26

do.cond:                                          ; preds = %for.body26
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %num_qd.181119)
  %cmp33 = icmp eq i32 %num_qd.181119, 128
  %or.cond = select i1 %tobool15.not123, i1 %cmp33, i1 false
  br i1 %or.cond, label %do.cond.for.cond.backedge_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.cond.for.cond.backedge_crit_edge:              ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %for.end.thread.do.end_crit_edge, %for.end.do.end_crit_edge
  %error.193 = phi i32 [ %error.0121, %do.cond.do.end_crit_edge ], [ %call27.i, %for.end.do.end_crit_edge ], [ 0, %for.end.thread.do.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %sd_quota_sync_mutex) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.193, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_quota_refresh(ptr noundef %sdp, [2 x i32] %qid.coerce) local_unnamed_addr #0 align 64 {
entry:
  %qd = alloca ptr, align 4
  %q_gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qd) #12
  %0 = ptrtoint ptr %qd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %qd, align 4, !annotation !136
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %q_gh) #12
  %1 = call ptr @memset(ptr %q_gh, i32 255, i32 32)
  %call = call fastcc i32 @qd_get(ptr noundef %sdp, [2 x i32] %qid.coerce, ptr noundef nonnull %qd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %qd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qd, align 4
  %call1 = call fastcc i32 @do_glock(ptr noundef %3, i32 noundef 1, ptr noundef nonnull %q_gh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %q_gh) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %qd_lockref.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %3, i32 0, i32 4
  %call.i = call i32 @lockref_put_or_lock(ptr noundef %qd_lockref.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %count.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %3, i32 0, i32 4, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %count.i, align 4
  %qd_lru.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %3, i32 0, i32 5
  %call2.i = call zeroext i1 @list_lru_add(ptr noundef nonnull @gfs2_qd_lru, ptr noundef %qd_lru.i) #12
  call void @_raw_spin_unlock(ptr noundef %qd_lockref.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end4.cleanup_crit_edge ], [ %call1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %q_gh) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qd) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qd_get(ptr noundef %sdp, [2 x i32] %qid.coerce, ptr nocapture noundef writeonly %qdp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %qid.coerce.fca.0.extract.i = extractvalue [2 x i32] %qid.coerce, 0
  %qid.coerce.fca.1.extract.i = extractvalue [2 x i32] %qid.coerce, 1
  %0 = ptrtoint ptr %sdp to i32
  %conv68.i.i = shl i32 %0, 24
  %add70.i.i = add i32 %conv68.i.i, -559038733
  %1 = shl i32 %0, 8
  %shl74.i.i = and i32 %1, 16711680
  %2 = lshr i32 %0, 8
  %shl79.i.i = and i32 %2, 65280
  %sdp.addr.0.extract.shift.i = lshr i32 %0, 24
  %add75.i.i = add nuw nsw i32 %add70.i.i, %sdp.addr.0.extract.shift.i
  %add80.i.i = add i32 %add75.i.i, %shl74.i.i
  %add84.i.i = add i32 %add80.i.i, %shl79.i.i
  %xor88.i.i = xor i32 %add84.i.i, -1874655147
  %sub90.i.i = add i32 %xor88.i.i, -407022722
  %xor91.i.i = xor i32 %sub90.i.i, -559038733
  %or.i202.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i, i32 %sub90.i.i, i32 25) #12
  %sub93.i.i = sub i32 %xor91.i.i, %or.i202.i.i
  %xor94.i.i = xor i32 %sub93.i.i, -1874655147
  %or.i203.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i, i32 %sub93.i.i, i32 16) #12
  %sub96.i.i = sub i32 %xor94.i.i, %or.i203.i.i
  %xor97.i.i = xor i32 %sub96.i.i, %sub90.i.i
  %or.i204.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i, i32 %sub96.i.i, i32 4) #12
  %sub99.i.i = sub i32 %xor97.i.i, %or.i204.i.i
  %xor100.i.i = xor i32 %sub99.i.i, %sub93.i.i
  %or.i205.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i, i32 %sub99.i.i, i32 14) #12
  %sub102.i.i = sub i32 %xor100.i.i, %or.i205.i.i
  %xor103.i.i = xor i32 %sub102.i.i, %sub96.i.i
  %or.i206.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i, i32 %sub102.i.i, i32 24) #12
  %sub105.i.i = sub i32 %xor103.i.i, %or.i206.i.i
  %add1.i.i = add i32 %sub105.i.i, -559038729
  %add61.i.i = tail call i32 @llvm.bswap.i32(i32 %qid.coerce.fca.1.extract.i) #12
  %add65.i.i = add i32 %add1.i.i, %add61.i.i
  %add80.i14.i = tail call i32 @llvm.bswap.i32(i32 %qid.coerce.fca.0.extract.i) #12
  %add84.i16.i = add i32 %add1.i.i, %add80.i14.i
  %xor85.i.i = xor i32 %add65.i.i, %add1.i.i
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add65.i.i, i32 %add65.i.i, i32 14) #12
  %sub87.i.i = sub i32 %xor85.i.i, %or.i.i.i
  %xor88.i17.i = xor i32 %sub87.i.i, %add84.i16.i
  %or.i201.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i, i32 %sub87.i.i, i32 11) #12
  %sub90.i18.i = sub i32 %xor88.i17.i, %or.i201.i.i
  %xor91.i19.i = xor i32 %sub90.i18.i, %add65.i.i
  %or.i202.i20.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i18.i, i32 %sub90.i18.i, i32 25) #12
  %sub93.i21.i = sub i32 %xor91.i19.i, %or.i202.i20.i
  %xor94.i22.i = xor i32 %sub93.i21.i, %sub87.i.i
  %or.i203.i23.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i21.i, i32 %sub93.i21.i, i32 16) #12
  %sub96.i24.i = sub i32 %xor94.i22.i, %or.i203.i23.i
  %xor97.i25.i = xor i32 %sub96.i24.i, %sub90.i18.i
  %or.i204.i26.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i24.i, i32 %sub96.i24.i, i32 4) #12
  %sub99.i27.i = sub i32 %xor97.i25.i, %or.i204.i26.i
  %xor100.i28.i = xor i32 %sub99.i27.i, %sub93.i21.i
  %or.i205.i29.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i27.i, i32 %sub99.i27.i, i32 14) #12
  %sub102.i30.i = sub i32 %xor100.i28.i, %or.i205.i29.i
  %xor103.i31.i = xor i32 %sub102.i30.i, %sub96.i24.i
  %or.i206.i32.i = lshr i32 %sub102.i30.i, 8
  %sub105.i33.i = sub i32 %xor103.i31.i, %or.i206.i32.i
  %and.i = and i32 %sub105.i33.i, 4095
  %3 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !140
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 696, ptr noundef nonnull @.str.29) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call fastcc ptr @gfs2_qd_search_bucket(i32 noundef %and.i, ptr noundef %sdp, [2 x i32] %qid.coerce)
  %7 = ptrtoint ptr %qdp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %qdp, align 4
  %call.i57 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i57, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i60

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i60:                                ; preds = %rcu_read_lock.exit
  %call1.i58 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %tobool.not.i59 = icmp eq i32 %call1.i58, 0
  br i1 %tobool.not.i59, label %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i62

land.lhs.true.i60.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i62:                               ; preds = %land.lhs.true.i60
  %.b4.i61 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i61, label %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, label %if.then.i63

land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i63:                                      ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 724, ptr noundef nonnull @.str.32) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i63, %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !141
  %8 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i.i64 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i64 to ptr
  %preempt_count.i.i.i.i65 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i65, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i65, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end, label %rcu_read_unlock.exit.cleanup_crit_edge

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %rcu_read_unlock.exit
  %call2 = tail call fastcc ptr @qd_alloc(i32 noundef %and.i, ptr noundef %sdp, [2 x i32] %qid.coerce)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef nonnull @qd_lock) #12
  %arrayidx.i = getelementptr [4096 x %struct.hlist_bl_head], ptr @qd_hash_table, i32 0, i32 %and.i
  %12 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !118
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %do.body14.i.i.i, %if.end5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #12
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i.i66 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i66)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i66, 0
  br i1 %tobool.not.i.i.i.i.i, label %test_and_set_bit_lock.exit.i.i.i, label %while.cond.i.i.i.do.body2.i.i.i_crit_edge, !prof !119

while.cond.i.i.i.do.body2.i.i.i_crit_edge:        ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i.i.i

test_and_set_bit_lock.exit.i.i.i:                 ; preds = %while.cond.i.i.i
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #12
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #12, !srcloc !120
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !121
  %and1.i.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %phi.cmp.i.not.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %phi.cmp.i.not.i.i.i, label %spin_lock_bucket.exit, label %test_and_set_bit_lock.exit.i.i.i.do.body2.i.i.i_crit_edge, !prof !122

test_and_set_bit_lock.exit.i.i.i.do.body2.i.i.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i.i.i

do.body2.i.i.i:                                   ; preds = %test_and_set_bit_lock.exit.i.i.i.do.body2.i.i.i_crit_edge, %while.cond.i.i.i.do.body2.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !123
  %19 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i1.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %preempt_count.i.i2.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i2.i.i.i, align 4
  %sub.i.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i2.i.i.i, align 4
  br label %do.body4.i.i.i

do.body4.i.i.i:                                   ; preds = %do.body4.i.i.i.do.body4.i.i.i_crit_edge, %do.body2.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !124
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !125
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i.i = and i32 %24, 1
  %tobool12.not.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %do.body14.i.i.i, label %do.body4.i.i.i.do.body4.i.i.i_crit_edge

do.body4.i.i.i.do.body4.i.i.i_crit_edge:          ; preds = %do.body4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i.i.i

do.body14.i.i.i:                                  ; preds = %do.body4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i3.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i3.i.i.i to ptr
  %preempt_count.i.i4.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i4.i.i.i, align 4
  %add.i5.i.i.i = add i32 %28, 1
  store volatile i32 %add.i5.i.i.i, ptr %preempt_count.i.i4.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !126
  br label %while.cond.i.i.i

spin_lock_bucket.exit:                            ; preds = %test_and_set_bit_lock.exit.i.i.i
  %call6 = tail call fastcc ptr @gfs2_qd_search_bucket(i32 noundef %and.i, ptr noundef %sdp, [2 x i32] %qid.coerce)
  %29 = ptrtoint ptr %qdp to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call6, ptr %qdp, align 4
  %cmp = icmp eq ptr %call6, null
  br i1 %cmp, label %if.then7, label %spin_lock_bucket.exit.if.end8_crit_edge

spin_lock_bucket.exit.if.end8_crit_edge:          ; preds = %spin_lock_bucket.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then7:                                         ; preds = %spin_lock_bucket.exit
  %30 = ptrtoint ptr %qdp to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call2, ptr %qdp, align 4
  %qd_list = getelementptr inbounds %struct.gfs2_quota_data, ptr %call2, i32 0, i32 1
  %sd_quota_list = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 66
  %31 = ptrtoint ptr %sd_quota_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sd_quota_list, align 4
  %call.i.i67 = tail call zeroext i1 @__list_add_valid(ptr noundef %qd_list, ptr noundef %sd_quota_list, ptr noundef %32) #12
  br i1 %call.i.i67, label %if.end.i.i, label %if.then7.list_add.exit_crit_edge

if.then7.list_add.exit_crit_edge:                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %qd_list, ptr %prev1.i.i, align 4
  %34 = ptrtoint ptr %qd_list to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %qd_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %call2, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %sd_quota_list, ptr %prev3.i.i, align 4
  %36 = ptrtoint ptr %sd_quota_list to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %qd_list, ptr %sd_quota_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then7.list_add.exit_crit_edge
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %39 = ptrtoint ptr %38 to i32
  %and.i.i = and i32 %39, -2
  %40 = inttoptr i32 %and.i.i to ptr
  %41 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %call2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i68 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i68, label %list_add.exit.if.end.i_crit_edge, label %if.then.i69

list_add.exit.if.end.i_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i69:                                      ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pprev.i = getelementptr inbounds %struct.hlist_bl_node, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call2, ptr %pprev.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i69, %list_add.exit.if.end.i_crit_edge
  %pprev3.i = getelementptr inbounds %struct.hlist_bl_node, ptr %call2, i32 0, i32 1
  %43 = ptrtoint ptr %pprev3.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %arrayidx.i, ptr %pprev3.i, align 4
  %44 = ptrtoint ptr %call2 to i32
  %and.i11.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11.i)
  %tobool.not.i.i = icmp eq i32 %and.i11.i, 0
  br i1 %tobool.not.i.i, label %do.body7.i.i, label %do.body3.i.i, !prof !122

do.body3.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rculist_bl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 14, 0\0A.popsection", ""() #12, !srcloc !142
  unreachable

do.body7.i.i:                                     ; preds = %if.end.i
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i, align 4
  %47 = ptrtoint ptr %46 to i32
  %and8.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %cmp.not.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %cmp.not.not.i.i, label %do.body16.i.i, label %hlist_bl_add_head_rcu.exit, !prof !128

do.body16.i.i:                                    ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rculist_bl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 16, 0\0A.popsection", ""() #12, !srcloc !143
  unreachable

hlist_bl_add_head_rcu.exit:                       ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i.i = or i32 %44, 1
  %48 = inttoptr i32 %or.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !144
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %48, ptr %arrayidx.i, align 4
  %sd_quota_count = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 67
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sd_quota_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %sd_quota_count, i32 1, i32 3, i32 1) #12
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sd_quota_count, ptr %sd_quota_count, i32 1, ptr elementtype(i32) %sd_quota_count) #12, !srcloc !145
  br label %if.end8

if.end8:                                          ; preds = %hlist_bl_add_head_rcu.exit, %spin_lock_bucket.exit.if.end8_crit_edge
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i.i71 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i71)
  %tobool.not.i.i.i = icmp eq i32 %and1.i.i.i.i71, 0
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i72, label %spin_unlock_bucket.exit, !prof !128

do.body4.i.i.i72:                                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #12, !srcloc !129
  unreachable

spin_unlock_bucket.exit:                          ; preds = %if.end8
  %call.i.i.i.i.i73 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #12
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i.i74 = and i32 %54, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !130
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 %and.i.i.i.i.i74, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !131
  %56 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i.i.i75 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i.i75 to ptr
  %preempt_count.i.i.i.i.i76 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i.i.i76, align 4
  %sub.i.i.i.i77 = add i32 %59, -1
  store volatile i32 %sub.i.i.i.i77, ptr %preempt_count.i.i.i.i.i76, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @qd_lock) #12
  br i1 %cmp, label %spin_unlock_bucket.exit.cleanup_crit_edge, label %if.then10

spin_unlock_bucket.exit.cleanup_crit_edge:        ; preds = %spin_unlock_bucket.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10:                                        ; preds = %spin_unlock_bucket.exit
  call void @__sanitizer_cov_trace_pc() #14
  %qd_gl = getelementptr inbounds %struct.gfs2_quota_data, ptr %call2, i32 0, i32 15
  %60 = ptrtoint ptr %qd_gl to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %qd_gl, align 4
  tail call void @gfs2_glock_put(ptr noundef %61) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_quotad_cachep to i32))
  %62 = load ptr, ptr @gfs2_quotad_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %62, ptr noundef nonnull %call2) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %spin_unlock_bucket.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %rcu_read_unlock.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.then10 ], [ 0, %spin_unlock_bucket.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_quota_init(ptr noundef %sdp) local_unnamed_addr #0 align 64 {
entry:
  %dblock = alloca i64, align 8
  %extlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_qc_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 40
  %0 = ptrtoint ptr %sd_qc_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_qc_inode, align 8
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  %sb_bsize_shift = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 5, i32 5
  %2 = ptrtoint ptr %sb_bsize_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_bsize_shift, align 4
  %sh_prom = zext i32 %3 to i64
  %shr = lshr i64 %call2, %sh_prom
  %conv = trunc i64 %shr to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dblock) #12
  %4 = ptrtoint ptr %dblock to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %dblock, align 8, !annotation !136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extlen) #12
  %5 = ptrtoint ptr %extlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %extlen, align 4
  %6 = ptrtoint ptr %sd_qc_inode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_qc_inode, align 8
  %call.i = tail call fastcc i64 @i_size_read(ptr noundef %7) #12
  %8 = add i64 %call.i, -67108865
  call void @__sanitizer_cov_trace_const_cmp8(i64 -67108864, i64 %8)
  %9 = icmp ult i64 %8, -67108864
  br i1 %9, label %entry.gfs2_check_internal_file_size.exit_crit_edge, label %if.end.i

entry.gfs2_check_internal_file_size.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_check_internal_file_size.exit

if.end.i:                                         ; preds = %entry
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 20
  %10 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %11 to i32
  %notmask.i = shl nsw i32 -1, %conv.i
  %sub.i = xor i32 %notmask.i, -1
  %conv2.i = zext i32 %sub.i to i64
  %and.i = and i64 %call.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i.gfs2_check_internal_file_size.exit_crit_edge

if.end.i.gfs2_check_internal_file_size.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_check_internal_file_size.exit

gfs2_check_internal_file_size.exit:               ; preds = %if.end.i.gfs2_check_internal_file_size.exit_crit_edge, %entry.gfs2_check_internal_file_size.exit_crit_edge
  tail call void @gfs2_consist_inode_i(ptr noundef %7, ptr noundef nonnull @__func__.gfs2_check_internal_file_size, ptr noundef nonnull @.str.33, i32 noundef 87) #12
  br label %cleanup92

if.end:                                           ; preds = %if.end.i
  %sd_qc_per_block = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 15
  %12 = ptrtoint ptr %sd_qc_per_block to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sd_qc_per_block, align 4
  %mul = mul i32 %13, %conv
  %sd_quota_slots = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 73
  %14 = ptrtoint ptr %sd_quota_slots to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %sd_quota_slots, align 4
  %sub = add i32 %mul, 31
  %15 = lshr i32 %sub, 3
  %mul6 = and i32 %15, 536870908
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul6, i32 noundef 11584) #15
  %sd_quota_bitmap = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 74
  %16 = ptrtoint ptr %sd_quota_bitmap to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i.i, ptr %sd_quota_bitmap, align 8
  %cmp = icmp eq ptr %call9.i.i, null
  br i1 %cmp, label %if.end13, label %if.end.for.cond.preheader_crit_edge

if.end.for.cond.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader

if.end13:                                         ; preds = %if.end
  %call11 = tail call noalias ptr @__vmalloc(i32 noundef %mul6, i32 noundef 3392) #15
  %17 = ptrtoint ptr %sd_quota_bitmap to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call11, ptr %sd_quota_bitmap, align 8
  %tobool15.not = icmp eq ptr %call11, null
  br i1 %tobool15.not, label %if.end13.cleanup92_crit_edge, label %if.end13.for.cond.preheader_crit_edge

if.end13.for.cond.preheader_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader

if.end13.cleanup92_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup92

for.cond.preheader:                               ; preds = %if.end13.for.cond.preheader_crit_edge, %if.end.for.cond.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp18244.not = icmp eq i32 %conv, 0
  br i1 %cmp18244.not, label %for.cond.preheader.cleanup92_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup92_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup92

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %sdp to i32
  %conv68.i.i = shl i32 %18, 24
  %add70.i.i = add i32 %conv68.i.i, -559038733
  %19 = shl i32 %18, 8
  %shl74.i.i = and i32 %19, 16711680
  %20 = lshr i32 %18, 8
  %shl79.i.i = and i32 %20, 65280
  %sdp.addr.0.extract.shift.i = lshr i32 %18, 24
  %add75.i.i = add nuw nsw i32 %add70.i.i, %sdp.addr.0.extract.shift.i
  %add80.i.i = add i32 %add75.i.i, %shl74.i.i
  %add84.i.i = add i32 %add80.i.i, %shl79.i.i
  %xor88.i.i = xor i32 %add84.i.i, -1874655147
  %sub90.i.i = add i32 %xor88.i.i, -407022722
  %xor91.i.i = xor i32 %sub90.i.i, -559038733
  %or.i202.i.i = call i32 @llvm.fshl.i32(i32 %sub90.i.i, i32 %sub90.i.i, i32 25) #12
  %sub93.i.i = sub i32 %xor91.i.i, %or.i202.i.i
  %xor94.i.i = xor i32 %sub93.i.i, -1874655147
  %or.i203.i.i = call i32 @llvm.fshl.i32(i32 %sub93.i.i, i32 %sub93.i.i, i32 16) #12
  %sub96.i.i = sub i32 %xor94.i.i, %or.i203.i.i
  %xor97.i.i = xor i32 %sub96.i.i, %sub90.i.i
  %or.i204.i.i = call i32 @llvm.fshl.i32(i32 %sub96.i.i, i32 %sub96.i.i, i32 4) #12
  %sub99.i.i = sub i32 %xor97.i.i, %or.i204.i.i
  %xor100.i.i = xor i32 %sub99.i.i, %sub93.i.i
  %or.i205.i.i = call i32 @llvm.fshl.i32(i32 %sub99.i.i, i32 %sub99.i.i, i32 14) #12
  %sub102.i.i = sub i32 %xor100.i.i, %or.i205.i.i
  %xor103.i.i = xor i32 %sub102.i.i, %sub96.i.i
  %or.i206.i.i = call i32 @llvm.fshl.i32(i32 %sub102.i.i, i32 %sub102.i.i, i32 24) #12
  %sub105.i.i = sub i32 %xor103.i.i, %or.i206.i.i
  %add1.i.i = add i32 %sub105.i.i, -559038729
  %sd_quota_list = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 66
  %sd_quota_count = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 67
  %21 = ptrtoint ptr %extlen to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %extlen, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc82.for.body_crit_edge, %for.body.lr.ph
  %22 = phi i32 [ %.pr, %for.body.lr.ph ], [ %dec, %for.inc82.for.body_crit_edge ]
  %found.0247 = phi i32 [ 0, %for.body.lr.ph ], [ %found.1.lcssa, %for.inc82.for.body_crit_edge ]
  %slot.0246 = phi i32 [ 0, %for.body.lr.ph ], [ %slot.1.lcssa, %for.inc82.for.body_crit_edge ]
  %x.0245 = phi i32 [ 0, %for.body.lr.ph ], [ %inc83, %for.inc82.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool20.not = icmp eq i32 %22, 0
  br i1 %tobool20.not, label %if.then21, label %for.body.if.end27_crit_edge

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then21:                                        ; preds = %for.body
  %23 = ptrtoint ptr %extlen to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 32, ptr %extlen, align 4
  %conv22 = zext i32 %x.0245 to i64
  %call23 = call i32 @gfs2_get_extent(ptr noundef %1, i64 noundef %conv22, ptr noundef nonnull %dblock, ptr noundef nonnull %extlen) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then21.if.end27_crit_edge, label %if.then21.fail_crit_edge

if.then21.fail_crit_edge:                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.end27:                                         ; preds = %if.then21.if.end27_crit_edge, %for.body.if.end27_crit_edge
  %24 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_gl, align 4
  %26 = ptrtoint ptr %dblock to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %dblock, align 8
  %28 = ptrtoint ptr %extlen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %extlen, align 4
  %call28 = call ptr @gfs2_meta_ra(ptr noundef %25, i64 noundef %27, i32 noundef %29) #12
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end27.fail_crit_edge, label %if.end31

if.end27.fail_crit_edge:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end31:                                         ; preds = %if.end27
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call28, i32 0, i32 5
  %30 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_data.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %mh_type.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %mh_type.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mh_type.i, align 4
  %conv.i163 = trunc i32 %35 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %33)
  %cmp.not.i = icmp eq i32 %33, 18225520
  br i1 %cmp.not.i, label %if.end.i165, label %if.then.i, !prof !122

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %call.i164 = call i32 @gfs2_meta_check_ii(ptr noundef %sdp, ptr noundef nonnull %call28, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.gfs2_quota_init, ptr noundef nonnull @.str.1, i32 noundef 1387) #12
  br label %gfs2_metatype_check_i.exit

if.end.i165:                                      ; preds = %if.end31
  %conv3.i = and i32 %35, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %conv3.i)
  %cmp5.not.i = icmp eq i32 %conv3.i, 14
  br i1 %cmp5.not.i, label %if.end.i165.if.end35_crit_edge, label %if.then13.i, !prof !122

if.end.i165.if.end35_crit_edge:                   ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then13.i:                                      ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i = call i32 @gfs2_metatype_check_ii(ptr noundef %sdp, ptr noundef nonnull %call28, i16 noundef zeroext 14, i16 noundef zeroext %conv.i163, ptr noundef nonnull @__func__.gfs2_quota_init, ptr noundef nonnull @.str.1, i32 noundef 1387) #12
  br label %gfs2_metatype_check_i.exit

gfs2_metatype_check_i.exit:                       ; preds = %if.then13.i, %if.then.i
  %retval.0.i166 = phi i32 [ %call.i164, %if.then.i ], [ %call14.i, %if.then13.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i166)
  %tobool33.not = icmp eq i32 %retval.0.i166, 0
  br i1 %tobool33.not, label %gfs2_metatype_check_i.exit.if.end35_crit_edge, label %gfs2_metatype_check_i.exit.fail.sink.split_crit_edge

gfs2_metatype_check_i.exit.fail.sink.split_crit_edge: ; preds = %gfs2_metatype_check_i.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.sink.split

gfs2_metatype_check_i.exit.if.end35_crit_edge:    ; preds = %gfs2_metatype_check_i.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.end35:                                         ; preds = %gfs2_metatype_check_i.exit.if.end35_crit_edge, %if.end.i165.if.end35_crit_edge
  %36 = ptrtoint ptr %sd_qc_per_block to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sd_qc_per_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp38235.not = icmp eq i32 %37, 0
  br i1 %cmp38235.not, label %if.end35.for.inc82_crit_edge, label %land.rhs.preheader

if.end35.for.inc82_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc82

land.rhs.preheader:                               ; preds = %if.end35
  %38 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_data.i, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 24
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.preheader
  %y.0240 = phi i32 [ %inc74, %for.inc.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  %qc.0239 = phi ptr [ %incdec.ptr, %for.inc.land.rhs_crit_edge ], [ %add.ptr, %land.rhs.preheader ]
  %found.1238 = phi i32 [ %found.2.ph, %for.inc.land.rhs_crit_edge ], [ %found.0247, %land.rhs.preheader ]
  %slot.1236 = phi i32 [ %inc75, %for.inc.land.rhs_crit_edge ], [ %slot.0246, %land.rhs.preheader ]
  %40 = ptrtoint ptr %sd_quota_slots to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sd_quota_slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %slot.1236, i32 %41)
  %cmp41 = icmp ult i32 %slot.1236, %41
  br i1 %cmp41, label %for.body43, label %land.rhs.for.inc82_crit_edge

land.rhs.for.inc82_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc82

for.body43:                                       ; preds = %land.rhs
  %42 = ptrtoint ptr %qc.0239 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %qc.0239, align 8
  %qc_flags45 = getelementptr inbounds %struct.gfs2_quota_change, ptr %qc.0239, i32 0, i32 1
  %44 = ptrtoint ptr %qc_flags45 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %qc_flags45, align 8
  %and = and i32 %45, 1
  %46 = xor i32 %and, 1
  %qc_id47 = getelementptr inbounds %struct.gfs2_quota_change, ptr %qc.0239, i32 0, i32 2
  %47 = ptrtoint ptr %qc_id47 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %qc_id47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %switch.not = icmp eq i32 %and, 0
  br i1 %switch.not, label %sw.bb2.i, label %sw.bb.i

sw.bb.i:                                          ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #14
  %call.i170 = call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %48) #12, !noalias !146
  br label %make_kqid.exit

sw.bb2.i:                                         ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #14
  %call4.i = call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %48) #12, !noalias !146
  br label %make_kqid.exit

make_kqid.exit:                                   ; preds = %sw.bb2.i, %sw.bb.i
  %storemerge.i = phi i32 [ %call4.i, %sw.bb2.i ], [ %call.i170, %sw.bb.i ]
  %incdec.ptr = getelementptr %struct.gfs2_quota_change, ptr %qc.0239, i32 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %43)
  %tobool48.not = icmp eq i64 %43, 0
  br i1 %tobool48.not, label %make_kqid.exit.for.inc_crit_edge, label %if.end50

make_kqid.exit.for.inc_crit_edge:                 ; preds = %make_kqid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end50:                                         ; preds = %make_kqid.exit
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %storemerge.i, 0
  %add61.i.i = shl nuw nsw i32 %46, 24
  %add65.i.i = add i32 %add61.i.i, %add1.i.i
  %add80.i14.i = call i32 @llvm.bswap.i32(i32 %storemerge.i) #12
  %add84.i16.i = add i32 %add80.i14.i, %add1.i.i
  %xor85.i.i = xor i32 %add65.i.i, %add1.i.i
  %or.i.i.i = call i32 @llvm.fshl.i32(i32 %add65.i.i, i32 %add65.i.i, i32 14) #12
  %sub87.i.i = sub i32 %xor85.i.i, %or.i.i.i
  %xor88.i17.i = xor i32 %add84.i16.i, %sub87.i.i
  %or.i201.i.i = call i32 @llvm.fshl.i32(i32 %sub87.i.i, i32 %sub87.i.i, i32 11) #12
  %sub90.i18.i = sub i32 %xor88.i17.i, %or.i201.i.i
  %xor91.i19.i = xor i32 %sub90.i18.i, %add65.i.i
  %or.i202.i20.i = call i32 @llvm.fshl.i32(i32 %sub90.i18.i, i32 %sub90.i18.i, i32 25) #12
  %sub93.i21.i = sub i32 %xor91.i19.i, %or.i202.i20.i
  %xor94.i22.i = xor i32 %sub93.i21.i, %sub87.i.i
  %or.i203.i23.i = call i32 @llvm.fshl.i32(i32 %sub93.i21.i, i32 %sub93.i21.i, i32 16) #12
  %sub96.i24.i = sub i32 %xor94.i22.i, %or.i203.i23.i
  %xor97.i25.i = xor i32 %sub96.i24.i, %sub90.i18.i
  %or.i204.i26.i = call i32 @llvm.fshl.i32(i32 %sub96.i24.i, i32 %sub96.i24.i, i32 4) #12
  %sub99.i27.i = sub i32 %xor97.i25.i, %or.i204.i26.i
  %xor100.i28.i = xor i32 %sub99.i27.i, %sub93.i21.i
  %or.i205.i29.i = call i32 @llvm.fshl.i32(i32 %sub99.i27.i, i32 %sub99.i27.i, i32 14) #12
  %sub102.i30.i = sub i32 %xor100.i28.i, %or.i205.i29.i
  %xor103.i31.i = xor i32 %sub102.i30.i, %sub96.i24.i
  %or.i206.i32.i = lshr i32 %sub102.i30.i, 8
  %sub105.i33.i = sub i32 %xor103.i31.i, %or.i206.i32.i
  %and.i171 = and i32 %sub105.i33.i, 4095
  %.fca.1.insert108 = insertvalue [2 x i32] %.fca.0.insert, i32 %46, 1
  %call52 = call fastcc ptr @qd_alloc(i32 noundef %and.i171, ptr noundef %sdp, [2 x i32] %.fca.1.insert108)
  %cmp53 = icmp eq ptr %call52, null
  br i1 %cmp53, label %if.end50.fail.sink.split_crit_edge, label %if.end56

if.end50.fail.sink.split_crit_edge:               ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.sink.split

if.end56:                                         ; preds = %if.end50
  %qd_flags = getelementptr inbounds %struct.gfs2_quota_data, ptr %call52, i32 0, i32 7
  call void @_set_bit(i32 noundef 1, ptr noundef %qd_flags) #12
  %qd_change = getelementptr inbounds %struct.gfs2_quota_data, ptr %call52, i32 0, i32 8
  %49 = ptrtoint ptr %qd_change to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %43, ptr %qd_change, align 8
  %qd_slot = getelementptr inbounds %struct.gfs2_quota_data, ptr %call52, i32 0, i32 10
  %50 = ptrtoint ptr %qd_slot to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %slot.1236, ptr %qd_slot, align 8
  %qd_slot_count = getelementptr inbounds %struct.gfs2_quota_data, ptr %call52, i32 0, i32 11
  %51 = ptrtoint ptr %qd_slot_count to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %qd_slot_count, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @qd_lock) #12
  %52 = ptrtoint ptr %sd_quota_bitmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sd_quota_bitmap, align 8
  %call58 = call i32 @_test_and_set_bit(i32 noundef %slot.1236, ptr noundef %53) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %do.end69, label %do.body63, !prof !122

do.body63:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/quota.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1419, 0\0A.popsection", ""() #12, !srcloc !149
  unreachable

do.end69:                                         ; preds = %if.end56
  %qd_list = getelementptr inbounds %struct.gfs2_quota_data, ptr %call52, i32 0, i32 1
  %54 = ptrtoint ptr %sd_quota_list to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sd_quota_list, align 4
  %call.i.i176 = call zeroext i1 @__list_add_valid(ptr noundef %qd_list, ptr noundef %sd_quota_list, ptr noundef %55) #12
  br i1 %call.i.i176, label %if.end.i.i177, label %do.end69.list_add.exit_crit_edge

do.end69.list_add.exit_crit_edge:                 ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i177:                                    ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %qd_list, ptr %prev1.i.i, align 4
  %57 = ptrtoint ptr %qd_list to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %55, ptr %qd_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %call52, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %sd_quota_list, ptr %prev3.i.i, align 4
  %59 = ptrtoint ptr %sd_quota_list to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %qd_list, ptr %sd_quota_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i177, %do.end69.list_add.exit_crit_edge
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sd_quota_count, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %sd_quota_count, i32 1, i32 3, i32 1) #12
  %60 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sd_quota_count, ptr %sd_quota_count, i32 1, ptr elementtype(i32) %sd_quota_count) #12, !srcloc !145
  call void @_raw_spin_unlock(ptr noundef nonnull @qd_lock) #12
  %arrayidx.i = getelementptr [4096 x %struct.hlist_bl_head], ptr @qd_hash_table, i32 0, i32 %and.i171
  %61 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %64, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !118
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %do.body14.i.i.i, %list_add.exit
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #12
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %test_and_set_bit_lock.exit.i.i.i, label %while.cond.i.i.i.do.body2.i.i.i_crit_edge, !prof !119

while.cond.i.i.i.do.body2.i.i.i_crit_edge:        ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i.i.i

test_and_set_bit_lock.exit.i.i.i:                 ; preds = %while.cond.i.i.i
  call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #12
  %67 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #12, !srcloc !120
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %67, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !121
  %and1.i.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %phi.cmp.i.not.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %phi.cmp.i.not.i.i.i, label %spin_lock_bucket.exit, label %test_and_set_bit_lock.exit.i.i.i.do.body2.i.i.i_crit_edge, !prof !122

test_and_set_bit_lock.exit.i.i.i.do.body2.i.i.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i.i.i

do.body2.i.i.i:                                   ; preds = %test_and_set_bit_lock.exit.i.i.i.do.body2.i.i.i_crit_edge, %while.cond.i.i.i.do.body2.i.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !123
  %68 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i1.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %preempt_count.i.i2.i.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i2.i.i.i, align 4
  %sub.i.i.i.i178 = add i32 %71, -1
  store volatile i32 %sub.i.i.i.i178, ptr %preempt_count.i.i2.i.i.i, align 4
  br label %do.body4.i.i.i

do.body4.i.i.i:                                   ; preds = %do.body4.i.i.i.do.body4.i.i.i_crit_edge, %do.body2.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !124
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !125
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i.i = and i32 %73, 1
  %tobool12.not.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %do.body14.i.i.i, label %do.body4.i.i.i.do.body4.i.i.i_crit_edge

do.body4.i.i.i.do.body4.i.i.i_crit_edge:          ; preds = %do.body4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i.i.i

do.body14.i.i.i:                                  ; preds = %do.body4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %74 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i3.i.i.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i3.i.i.i to ptr
  %preempt_count.i.i4.i.i.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i4.i.i.i, align 4
  %add.i5.i.i.i = add i32 %77, 1
  store volatile i32 %add.i5.i.i.i, ptr %preempt_count.i.i4.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !126
  br label %while.cond.i.i.i

spin_lock_bucket.exit:                            ; preds = %test_and_set_bit_lock.exit.i.i.i
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i, align 4
  %80 = ptrtoint ptr %79 to i32
  %and.i.i = and i32 %80, -2
  %81 = inttoptr i32 %and.i.i to ptr
  %82 = ptrtoint ptr %call52 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %call52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i179 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i179, label %spin_lock_bucket.exit.if.end.i181_crit_edge, label %if.then.i180

spin_lock_bucket.exit.if.end.i181_crit_edge:      ; preds = %spin_lock_bucket.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i181

if.then.i180:                                     ; preds = %spin_lock_bucket.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pprev.i = getelementptr inbounds %struct.hlist_bl_node, ptr %81, i32 0, i32 1
  %83 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call52, ptr %pprev.i, align 4
  br label %if.end.i181

if.end.i181:                                      ; preds = %if.then.i180, %spin_lock_bucket.exit.if.end.i181_crit_edge
  %pprev3.i = getelementptr inbounds %struct.hlist_bl_node, ptr %call52, i32 0, i32 1
  %84 = ptrtoint ptr %pprev3.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %arrayidx.i, ptr %pprev3.i, align 4
  %85 = ptrtoint ptr %call52 to i32
  %and.i11.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11.i)
  %tobool.not.i.i = icmp eq i32 %and.i11.i, 0
  br i1 %tobool.not.i.i, label %do.body7.i.i, label %do.body3.i.i, !prof !122

do.body3.i.i:                                     ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rculist_bl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 14, 0\0A.popsection", ""() #12, !srcloc !142
  unreachable

do.body7.i.i:                                     ; preds = %if.end.i181
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i, align 4
  %88 = ptrtoint ptr %87 to i32
  %and8.i.i = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %cmp.not.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %cmp.not.not.i.i, label %do.body16.i.i, label %hlist_bl_add_head_rcu.exit, !prof !128

do.body16.i.i:                                    ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rculist_bl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 16, 0\0A.popsection", ""() #12, !srcloc !143
  unreachable

hlist_bl_add_head_rcu.exit:                       ; preds = %do.body7.i.i
  %or.i.i = or i32 %85, 1
  %89 = inttoptr i32 %or.i.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !144
  %90 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %89, ptr %arrayidx.i, align 4
  %91 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i.i183 = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i183)
  %tobool.not.i.i.i184 = icmp eq i32 %and1.i.i.i.i183, 0
  br i1 %tobool.not.i.i.i184, label %do.body4.i.i.i185, label %spin_unlock_bucket.exit, !prof !128

do.body4.i.i.i185:                                ; preds = %hlist_bl_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #12, !srcloc !129
  unreachable

spin_unlock_bucket.exit:                          ; preds = %hlist_bl_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i.i186 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #12
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i.i187 = and i32 %93, -2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !130
  %94 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 %and.i.i.i.i.i187, ptr %arrayidx.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !131
  %95 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i.i.i188 = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i.i.i.i188 to ptr
  %preempt_count.i.i.i.i.i189 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %preempt_count.i.i.i.i.i189 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %preempt_count.i.i.i.i.i189, align 4
  %sub.i.i.i.i190 = add i32 %98, -1
  store volatile i32 %sub.i.i.i.i190, ptr %preempt_count.i.i.i.i.i189, align 4
  %inc = add i32 %found.1238, 1
  br label %for.inc

for.inc:                                          ; preds = %spin_unlock_bucket.exit, %make_kqid.exit.for.inc_crit_edge
  %found.2.ph = phi i32 [ %found.1238, %make_kqid.exit.for.inc_crit_edge ], [ %inc, %spin_unlock_bucket.exit ]
  %inc74 = add nuw i32 %y.0240, 1
  %inc75 = add i32 %slot.1236, 1
  %99 = ptrtoint ptr %sd_qc_per_block to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sd_qc_per_block, align 4
  %cmp38 = icmp ult i32 %inc74, %100
  br i1 %cmp38, label %for.inc.land.rhs_crit_edge, label %for.inc.for.inc82_crit_edge

for.inc.for.inc82_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc82

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

for.inc82:                                        ; preds = %for.inc.for.inc82_crit_edge, %land.rhs.for.inc82_crit_edge, %if.end35.for.inc82_crit_edge
  %slot.1.lcssa = phi i32 [ %slot.0246, %if.end35.for.inc82_crit_edge ], [ %inc75, %for.inc.for.inc82_crit_edge ], [ %slot.1236, %land.rhs.for.inc82_crit_edge ]
  %found.1.lcssa = phi i32 [ %found.0247, %if.end35.for.inc82_crit_edge ], [ %found.2.ph, %for.inc.for.inc82_crit_edge ], [ %found.1238, %land.rhs.for.inc82_crit_edge ]
  call void @__brelse(ptr noundef nonnull %call28) #12
  %101 = ptrtoint ptr %dblock to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %dblock, align 8
  %inc76 = add i64 %102, 1
  store i64 %inc76, ptr %dblock, align 8
  %103 = ptrtoint ptr %extlen to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %extlen, align 4
  %dec = add i32 %104, -1
  store i32 %dec, ptr %extlen, align 4
  %inc83 = add nuw i32 %x.0245, 1
  %exitcond.not = icmp eq i32 %inc83, %conv
  br i1 %exitcond.not, label %for.end84, label %for.inc82.for.body_crit_edge

for.inc82.for.body_crit_edge:                     ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end84:                                        ; preds = %for.inc82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.1.lcssa)
  %tobool85.not = icmp eq i32 %found.1.lcssa, 0
  br i1 %tobool85.not, label %for.end84.cleanup92_crit_edge, label %do.end89

for.end84.cleanup92_crit_edge:                    ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup92

do.end89:                                         ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #14
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %sd_fsname, i32 noundef %found.1.lcssa) #16
  br label %cleanup92

fail.sink.split:                                  ; preds = %if.end50.fail.sink.split_crit_edge, %gfs2_metatype_check_i.exit.fail.sink.split_crit_edge
  call void @__brelse(ptr noundef nonnull %call28) #12
  br label %fail

fail:                                             ; preds = %fail.sink.split, %if.end27.fail_crit_edge, %if.then21.fail_crit_edge
  %error.0.ph = phi i32 [ -5, %fail.sink.split ], [ %call23, %if.then21.fail_crit_edge ], [ -5, %if.end27.fail_crit_edge ]
  call void @gfs2_quota_cleanup(ptr noundef %sdp)
  br label %cleanup92

cleanup92:                                        ; preds = %fail, %do.end89, %for.end84.cleanup92_crit_edge, %for.cond.preheader.cleanup92_crit_edge, %if.end13.cleanup92_crit_edge, %gfs2_check_internal_file_size.exit
  %retval.0 = phi i32 [ %error.0.ph, %fail ], [ -5, %gfs2_check_internal_file_size.exit ], [ -12, %if.end13.cleanup92_crit_edge ], [ 0, %do.end89 ], [ 0, %for.end84.cleanup92_crit_edge ], [ 0, %for.cond.preheader.cleanup92_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extlen) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dblock) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !150
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %1 = tail call ptr @llvm.returnaddress(i32 0) #12
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call ptr @llvm.returnaddress(i32 0) #12
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #12
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !151
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !128

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !152
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !154
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !155
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !156
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_get_extent(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_meta_ra(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qd_alloc(i32 noundef %hash, ptr noundef %sdp, [2 x i32] %qid.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_quotad_cachep to i32))
  %0 = load ptr, ptr @gfs2_quotad_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3392) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %qid.coerce.fca.1.extract = extractvalue [2 x i32] %qid.coerce, 1
  %qid.coerce.fca.0.extract = extractvalue [2 x i32] %qid.coerce, 0
  %qd_sbd = getelementptr inbounds %struct.gfs2_quota_data, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %qd_sbd to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sdp, ptr %qd_sbd, align 8
  %qd_lockref = getelementptr inbounds %struct.gfs2_quota_data, ptr %call.i, i32 0, i32 4
  %count = getelementptr inbounds %struct.gfs2_quota_data, ptr %call.i, i32 0, i32 4, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %count, align 8
  tail call void @__raw_spin_lock_init(ptr noundef %qd_lockref, ptr noundef nonnull @.str.35, ptr noundef nonnull @qd_alloc.__key, i16 noundef signext 3) #12
  %qd_id = getelementptr inbounds %struct.gfs2_quota_data, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %qd_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %qid.coerce.fca.0.extract, ptr %qd_id, align 8
  %qid.sroa.2.0.qd_id.sroa_idx = getelementptr inbounds %struct.gfs2_quota_data, ptr %call.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %qid.sroa.2.0.qd_id.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %qid.coerce.fca.1.extract, ptr %qid.sroa.2.0.qd_id.sroa_idx, align 4
  %qd_slot = getelementptr inbounds %struct.gfs2_quota_data, ptr %call.i, i32 0, i32 10
  %5 = ptrtoint ptr %qd_slot to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %qd_slot, align 8
  %qd_lru = getelementptr inbounds %struct.gfs2_quota_data, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %qd_lru to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %qd_lru, ptr %qd_lru, align 4
  %prev.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %call.i, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %qd_lru, ptr %prev.i, align 8
  %qd_hash = getelementptr inbounds %struct.gfs2_quota_data, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %qd_hash to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %hash, ptr %qd_hash, align 4
  %call.i21 = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %qid.coerce) #12
  %conv.i = zext i32 %call.i21 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qid.coerce.fca.1.extract)
  %cmp.i = icmp ne i32 %qid.coerce.fca.1.extract, 0
  %9 = zext i1 %cmp.i to i64
  %add.i = or i64 %mul.i, %9
  %qd_gl = getelementptr inbounds %struct.gfs2_quota_data, ptr %call.i, i32 0, i32 15
  %call4 = tail call i32 @gfs2_glock_get(ptr noundef %sdp, i64 noundef %add.i, ptr noundef nonnull @gfs2_quota_glops, i32 noundef 1, ptr noundef %qd_gl) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %fail

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

fail:                                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_quotad_cachep to i32))
  %10 = load ptr, ptr @gfs2_quotad_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %10, ptr noundef nonnull %call.i) #12
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %fail ], [ null, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_quota_cleanup(ptr noundef %sdp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_quota_list = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 66
  tail call void @_raw_spin_lock(ptr noundef nonnull @qd_lock) #12
  %0 = ptrtoint ptr %sd_quota_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sd_quota_list, align 4
  %cmp.i.not109 = icmp eq ptr %1, %sd_quota_list
  br i1 %cmp.i.not109, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %prev = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 66, i32 1
  %sd_quota_count = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 67
  br label %while.body

while.body:                                       ; preds = %if.end49.while.body_crit_edge, %while.body.lr.ph
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -8
  %call.i.i100 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #12
  br i1 %call.i.i100, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %qd_lru = getelementptr i8, ptr %3, i32 68
  %call1 = tail call zeroext i1 @list_lru_del(ptr noundef nonnull @gfs2_qd_lru, ptr noundef %qd_lru) #12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sd_quota_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %sd_quota_count, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sd_quota_count, ptr %sd_quota_count, i32 1, ptr elementtype(i32) %sd_quota_count) #12, !srcloc !132
  tail call void @_raw_spin_unlock(ptr noundef nonnull @qd_lock) #12
  %qd_hash = getelementptr i8, ptr %3, i32 76
  %13 = ptrtoint ptr %qd_hash to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qd_hash, align 4
  %arrayidx.i = getelementptr [4096 x %struct.hlist_bl_head], ptr @qd_hash_table, i32 0, i32 %14
  %15 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !118
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %do.body14.i.i.i, %list_del.exit
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #12
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %test_and_set_bit_lock.exit.i.i.i, label %while.cond.i.i.i.do.body2.i.i.i_crit_edge, !prof !119

while.cond.i.i.i.do.body2.i.i.i_crit_edge:        ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i.i.i

test_and_set_bit_lock.exit.i.i.i:                 ; preds = %while.cond.i.i.i
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #12
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #12, !srcloc !120
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !121
  %and1.i.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %phi.cmp.i.not.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %phi.cmp.i.not.i.i.i, label %spin_lock_bucket.exit, label %test_and_set_bit_lock.exit.i.i.i.do.body2.i.i.i_crit_edge, !prof !122

test_and_set_bit_lock.exit.i.i.i.do.body2.i.i.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i.i.i

do.body2.i.i.i:                                   ; preds = %test_and_set_bit_lock.exit.i.i.i.do.body2.i.i.i_crit_edge, %while.cond.i.i.i.do.body2.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !123
  %22 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i1.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %preempt_count.i.i2.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i2.i.i.i, align 4
  %sub.i.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i2.i.i.i, align 4
  br label %do.body4.i.i.i

do.body4.i.i.i:                                   ; preds = %do.body4.i.i.i.do.body4.i.i.i_crit_edge, %do.body2.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !124
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !125
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i.i = and i32 %27, 1
  %tobool12.not.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %do.body14.i.i.i, label %do.body4.i.i.i.do.body4.i.i.i_crit_edge

do.body4.i.i.i.do.body4.i.i.i_crit_edge:          ; preds = %do.body4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i.i.i

do.body14.i.i.i:                                  ; preds = %do.body4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i3.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i3.i.i.i to ptr
  %preempt_count.i.i4.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i4.i.i.i, align 4
  %add.i5.i.i.i = add i32 %31, 1
  store volatile i32 %add.i5.i.i.i, ptr %preempt_count.i.i4.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !126
  br label %while.cond.i.i.i

spin_lock_bucket.exit:                            ; preds = %test_and_set_bit_lock.exit.i.i.i
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 4
  %pprev2.i.i = getelementptr i8, ptr %3, i32 -4
  %34 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pprev2.i.i, align 4
  %36 = ptrtoint ptr %add.ptr to i32
  %and.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body15.i.i, label %do.body5.i.i, !prof !122

do.body5.i.i:                                     ; preds = %spin_lock_bucket.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/list_bl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 120, 0\0A.popsection", ""() #12, !srcloc !127
  unreachable

do.body15.i.i:                                    ; preds = %spin_lock_bucket.exit
  %37 = ptrtoint ptr %33 to i32
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %40 = ptrtoint ptr %39 to i32
  %and16.i.i = and i32 %40, 1
  %or.i.i = or i32 %and16.i.i, %37
  %41 = inttoptr i32 %or.i.i to ptr
  store volatile ptr %41, ptr %35, align 4
  %tobool21.not.i.i = icmp eq ptr %33, null
  br i1 %tobool21.not.i.i, label %do.body15.i.i.hlist_bl_del_rcu.exit_crit_edge, label %if.then22.i.i

do.body15.i.i.hlist_bl_del_rcu.exit_crit_edge:    ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_bl_del_rcu.exit

if.then22.i.i:                                    ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev23.i.i = getelementptr inbounds %struct.hlist_bl_node, ptr %33, i32 0, i32 1
  %42 = ptrtoint ptr %pprev23.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %35, ptr %pprev23.i.i, align 4
  br label %hlist_bl_del_rcu.exit

hlist_bl_del_rcu.exit:                            ; preds = %if.then22.i.i, %do.body15.i.i.hlist_bl_del_rcu.exit_crit_edge
  %43 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %44 = ptrtoint ptr %qd_hash to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %qd_hash, align 4
  %arrayidx.i101 = getelementptr [4096 x %struct.hlist_bl_head], ptr @qd_hash_table, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %arrayidx.i101, align 4
  %and1.i.i.i.i102 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i102)
  %tobool.not.i.i.i = icmp eq i32 %and1.i.i.i.i102, 0
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i103, label %spin_unlock_bucket.exit, !prof !128

do.body4.i.i.i103:                                ; preds = %hlist_bl_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #12, !srcloc !129
  unreachable

spin_unlock_bucket.exit:                          ; preds = %hlist_bl_del_rcu.exit
  %call.i.i.i.i.i104 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i101, i32 noundef 4) #12
  %48 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %arrayidx.i101, align 4
  %and.i.i.i.i.i105 = and i32 %49, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !130
  %50 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 %and.i.i.i.i.i105, ptr %arrayidx.i101, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !131
  %51 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i.i.i106 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i.i106 to ptr
  %preempt_count.i.i.i.i.i107 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i.i107, align 4
  %sub.i.i.i.i108 = add i32 %54, -1
  store volatile i32 %sub.i.i.i.i108, ptr %preempt_count.i.i.i.i.i107, align 4
  %qd_change = getelementptr i8, ptr %3, i32 88
  %55 = ptrtoint ptr %qd_change to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %qd_change, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %56)
  %tobool3.not = icmp eq i64 %56, 0
  br i1 %tobool3.not, label %spin_unlock_bucket.exit.if.end_crit_edge, label %if.then, !prof !122

spin_unlock_bucket.exit.if.end_crit_edge:         ; preds = %spin_unlock_bucket.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %spin_unlock_bucket.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_warn_i(ptr noundef %sdp, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.gfs2_quota_cleanup, ptr noundef nonnull @.str.1, i32 noundef 1466) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %spin_unlock_bucket.exit.if.end_crit_edge
  %qd_slot_count = getelementptr i8, ptr %3, i32 108
  %57 = ptrtoint ptr %qd_slot_count to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %qd_slot_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool15.not = icmp eq i32 %58, 0
  br i1 %tobool15.not, label %if.end.if.end29_crit_edge, label %if.then28, !prof !122

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_warn_i(ptr noundef %sdp, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.gfs2_quota_cleanup, ptr noundef nonnull @.str.1, i32 noundef 1467) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end.if.end29_crit_edge
  %qd_bh_count = getelementptr i8, ptr %3, i32 120
  %59 = ptrtoint ptr %qd_bh_count to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %qd_bh_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool35.not = icmp eq i32 %60, 0
  br i1 %tobool35.not, label %if.end29.if.end49_crit_edge, label %if.then48, !prof !122

if.end29.if.end49_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then48:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_warn_i(ptr noundef %sdp, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.gfs2_quota_cleanup, ptr noundef nonnull @.str.1, i32 noundef 1468) #12
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end29.if.end49_crit_edge
  %qd_gl = getelementptr i8, ptr %3, i32 124
  %61 = ptrtoint ptr %qd_gl to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %qd_gl, align 4
  tail call void @gfs2_glock_put(ptr noundef %62) #12
  %qd_rcu = getelementptr i8, ptr %3, i32 172
  tail call void @call_rcu(ptr noundef %qd_rcu, ptr noundef nonnull @gfs2_qd_dealloc) #12
  tail call void @_raw_spin_lock(ptr noundef nonnull @qd_lock) #12
  %63 = ptrtoint ptr %sd_quota_list to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %sd_quota_list, align 4
  %cmp.i.not = icmp eq ptr %64, %sd_quota_list
  br i1 %cmp.i.not, label %if.end49.while.end_crit_edge, label %if.end49.while.body_crit_edge

if.end49.while.body_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end49.while.end_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end49.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @qd_lock) #12
  %sd_quota_count55 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 67
  %call.i.i99 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sd_quota_count55, i32 noundef 4) #12
  %65 = ptrtoint ptr %sd_quota_count55 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %sd_quota_count55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool57.not = icmp eq i32 %66, 0
  br i1 %tobool57.not, label %while.end.if.end71_crit_edge, label %if.then70, !prof !122

while.end.if.end71_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then70:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_warn_i(ptr noundef %sdp, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.gfs2_quota_cleanup, ptr noundef nonnull @.str.1, i32 noundef 1477) #12
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %while.end.if.end71_crit_edge
  %sd_quota_bitmap = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 74
  %67 = ptrtoint ptr %sd_quota_bitmap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sd_quota_bitmap, align 8
  tail call void @kvfree(ptr noundef %68) #12
  %69 = ptrtoint ptr %sd_quota_bitmap to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %sd_quota_bitmap, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @list_lru_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfs2_qd_dealloc(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_quotad_cachep to i32))
  %0 = load ptr, ptr @gfs2_quotad_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_wake_up_statfs(ptr noundef %sdp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_statfs_force_sync = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 46
  %0 = ptrtoint ptr %sd_statfs_force_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sd_statfs_force_sync, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %sd_statfs_force_sync to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %sd_statfs_force_sync, align 8
  %sd_quota_wait = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 70
  tail call void @__wake_up(ptr noundef %sd_quota_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_quotad(ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_tune = getelementptr inbounds %struct.gfs2_sbd, ptr %data, i32 0, i32 22
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #12
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !108) #12
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
  %call463 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call463, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %data, i32 0, i32 4
  %sd_statfs_force_sync = getelementptr inbounds %struct.gfs2_sbd, ptr %data, i32 0, i32 46
  %gt_statfs_quantum = getelementptr inbounds %struct.gfs2_sbd, ptr %data, i32 0, i32 22, i32 9
  %gt_quota_quantum = getelementptr inbounds %struct.gfs2_sbd, ptr %data, i32 0, i32 22, i32 5
  %sd_trunc_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %data, i32 0, i32 72
  %sd_trunc_list.i = getelementptr inbounds %struct.gfs2_sbd, ptr %data, i32 0, i32 71
  %sd_quota_wait = getelementptr inbounds %struct.gfs2_sbd, ptr %data, i32 0, i32 70
  br label %while.body

while.body:                                       ; preds = %if.end22.while.body_crit_edge, %while.body.lr.ph
  %t.066 = phi i32 [ 0, %while.body.lr.ph ], [ %t.1, %if.end22.while.body_crit_edge ]
  %quotad_timeo.065 = phi i32 [ 0, %while.body.lr.ph ], [ %quotad_timeo.1, %if.end22.while.body_crit_edge ]
  %statfs_timeo.064 = phi i32 [ 0, %while.body.lr.ph ], [ %statfs_timeo.2, %if.end22.while.body_crit_edge ]
  %13 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %sd_flags.i, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %gfs2_withdrawn.exit, label %while.body.bypass_crit_edge

while.body.bypass_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %bypass

gfs2_withdrawn.exit:                              ; preds = %while.body
  %16 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %sd_flags.i, align 4
  %18 = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool3.i.not = icmp eq i32 %18, 0
  br i1 %tobool3.i.not, label %if.end, label %gfs2_withdrawn.exit.bypass_crit_edge

gfs2_withdrawn.exit.bypass_crit_edge:             ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %bypass

if.end:                                           ; preds = %gfs2_withdrawn.exit
  %19 = ptrtoint ptr %sd_statfs_force_sync to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sd_statfs_force_sync, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 8
  %call7 = call i32 @gfs2_statfs_sync(ptr noundef %22, i32 noundef 0) #12
  call fastcc void @quotad_error(ptr noundef %data, ptr noundef nonnull @.str.13, i32 noundef %call7)
  call void @_raw_spin_lock(ptr noundef %sd_tune) #12
  %23 = ptrtoint ptr %gt_statfs_quantum to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gt_statfs_quantum, align 4
  call void @_raw_spin_unlock(ptr noundef %sd_tune) #12
  %mul = mul i32 %24, 100
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %statfs_timeo.064, i32 %t.066)
  %cmp.not.i = icmp ugt i32 %statfs_timeo.064, %t.066
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 8
  %call.i = call i32 @gfs2_statfs_sync(ptr noundef %26, i32 noundef 0) #12, !callees !157
  call fastcc void @quotad_error(ptr noundef %data, ptr noundef nonnull @.str.13, i32 noundef %call.i) #12
  call void @_raw_spin_lock(ptr noundef %sd_tune) #12
  %27 = ptrtoint ptr %gt_statfs_quantum to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gt_statfs_quantum, align 4
  call void @_raw_spin_unlock(ptr noundef %sd_tune) #12
  %mul.i = mul i32 %28, 100
  br label %if.end12

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = sub i32 %statfs_timeo.064, %t.066
  br label %if.end12

if.end12:                                         ; preds = %if.else.i, %if.then.i, %if.then6
  %statfs_timeo.1 = phi i32 [ %mul, %if.then6 ], [ %sub.i, %if.else.i ], [ %mul.i, %if.then.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %quotad_timeo.065, i32 %t.066)
  %cmp.not.i46 = icmp ugt i32 %quotad_timeo.065, %t.066
  br i1 %cmp.not.i46, label %if.else.i52, label %if.then.i50

if.then.i50:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 8
  %call.i47 = call i32 @gfs2_quota_sync(ptr noundef %30, i32 noundef 0) #12, !callees !157
  call fastcc void @quotad_error(ptr noundef %data, ptr noundef nonnull @.str.14, i32 noundef %call.i47) #12
  call void @_raw_spin_lock(ptr noundef %sd_tune) #12
  %31 = ptrtoint ptr %gt_quota_quantum to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %gt_quota_quantum, align 4
  call void @_raw_spin_unlock(ptr noundef %sd_tune) #12
  %mul.i49 = mul i32 %32, 100
  br label %quotad_check_timeo.exit54

if.else.i52:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i51 = sub i32 %quotad_timeo.065, %t.066
  br label %quotad_check_timeo.exit54

quotad_check_timeo.exit54:                        ; preds = %if.else.i52, %if.then.i50
  %storemerge.i53 = phi i32 [ %sub.i51, %if.else.i52 ], [ %mul.i49, %if.then.i50 ]
  call void @_raw_spin_lock(ptr noundef %sd_trunc_lock.i) #12
  %33 = ptrtoint ptr %sd_trunc_list.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %sd_trunc_list.i, align 4
  %cmp.i.not13.i = icmp eq ptr %34, %sd_trunc_list.i
  br i1 %cmp.i.not13.i, label %quotad_check_timeo.exit54.if.end.thread.i_crit_edge, label %quotad_check_timeo.exit54.if.then.i55_crit_edge

quotad_check_timeo.exit54.if.then.i55_crit_edge:  ; preds = %quotad_check_timeo.exit54
  br label %if.then.i55

quotad_check_timeo.exit54.if.end.thread.i_crit_edge: ; preds = %quotad_check_timeo.exit54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end4.i.if.end.thread.i_crit_edge, %quotad_check_timeo.exit54.if.end.thread.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %sd_trunc_lock.i) #12
  br label %quotad_check_trunc_list.exit

if.then.i55:                                      ; preds = %if.end4.i.if.then.i55_crit_edge, %quotad_check_timeo.exit54.if.then.i55_crit_edge
  %35 = phi ptr [ %45, %if.end4.i.if.then.i55_crit_edge ], [ %34, %quotad_check_timeo.exit54.if.then.i55_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %35, i32 -1044
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %35) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i55.if.end.i_crit_edge

if.then.i55.if.end.i_crit_edge:                   ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i.i.i:                                     ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i.i, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i.i, %if.then.i55.if.end.i_crit_edge
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %35, ptr %35, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %35, ptr %prev.i3.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %sd_trunc_lock.i) #12
  %cmp.i = icmp eq ptr %add.ptr.i, null
  br i1 %cmp.i, label %if.end.i.quotad_check_trunc_list.exit_crit_edge, label %if.end4.i

if.end.i.quotad_check_trunc_list.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %quotad_check_trunc_list.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @gfs2_glock_finish_truncate(ptr noundef nonnull %add.ptr.i) #12
  call void @_raw_spin_lock(ptr noundef %sd_trunc_lock.i) #12
  %44 = ptrtoint ptr %sd_trunc_list.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %sd_trunc_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %45, %sd_trunc_list.i
  br i1 %cmp.i.not.i, label %if.end4.i.if.end.thread.i_crit_edge, label %if.end4.i.if.then.i55_crit_edge

if.end4.i.if.then.i55_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i55

if.end4.i.if.end.thread.i_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread.i

quotad_check_trunc_list.exit:                     ; preds = %if.end.i.quotad_check_trunc_list.exit_crit_edge, %if.end.thread.i
  %46 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i, align 4
  %and.i56 = and i32 %51, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %tobool.not.i57 = icmp eq i32 %and.i56, 0
  br i1 %tobool.not.i57, label %if.then.i58, label %quotad_check_trunc_list.exit.if.end.i59_crit_edge

quotad_check_trunc_list.exit.if.end.i59_crit_edge: ; preds = %quotad_check_trunc_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i59

if.then.i58:                                      ; preds = %quotad_check_trunc_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @debug_check_no_locks_held() #12
  br label %if.end.i59

if.end.i59:                                       ; preds = %if.then.i58, %quotad_check_trunc_list.exit.if.end.i59_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.38, i32 noundef 57) #12
  %52 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %56 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i.i.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i.i.i, label %if.end.i59.bypass_crit_edge, label %freezing.exit.i.i, !prof !122

if.end.i59.bypass_crit_edge:                      ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %bypass

freezing.exit.i.i:                                ; preds = %if.end.i59
  %call4.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %55) #12
  br i1 %call4.i.i.i, label %if.end.i.i, label %freezing.exit.i.i.bypass_crit_edge, !prof !128

freezing.exit.i.i.bypass_crit_edge:               ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bypass

if.end.i.i:                                       ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #12
  br label %bypass

bypass:                                           ; preds = %if.end.i.i, %freezing.exit.i.i.bypass_crit_edge, %if.end.i59.bypass_crit_edge, %gfs2_withdrawn.exit.bypass_crit_edge, %while.body.bypass_crit_edge
  %statfs_timeo.2 = phi i32 [ %statfs_timeo.064, %gfs2_withdrawn.exit.bypass_crit_edge ], [ %statfs_timeo.1, %if.end.i59.bypass_crit_edge ], [ %statfs_timeo.1, %freezing.exit.i.i.bypass_crit_edge ], [ %statfs_timeo.1, %if.end.i.i ], [ %statfs_timeo.064, %while.body.bypass_crit_edge ]
  %quotad_timeo.1 = phi i32 [ %quotad_timeo.065, %gfs2_withdrawn.exit.bypass_crit_edge ], [ %storemerge.i53, %if.end.i59.bypass_crit_edge ], [ %storemerge.i53, %freezing.exit.i.i.bypass_crit_edge ], [ %storemerge.i53, %if.end.i.i ], [ %quotad_timeo.065, %while.body.bypass_crit_edge ]
  %57 = call i32 @llvm.umin.i32(i32 %quotad_timeo.1, i32 %statfs_timeo.2)
  call void @prepare_to_wait(ptr noundef %sd_quota_wait, ptr noundef nonnull %wait, i32 noundef 1) #12
  call void @_raw_spin_lock(ptr noundef %sd_trunc_lock.i) #12
  %58 = ptrtoint ptr %sd_trunc_list.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %sd_trunc_list.i, align 4
  %cmp.i60.not = icmp eq ptr %59, %sd_trunc_list.i
  call void @_raw_spin_unlock(ptr noundef %sd_trunc_lock.i) #12
  br i1 %cmp.i60.not, label %land.lhs.true, label %bypass.if.end22_crit_edge

bypass.if.end22_crit_edge:                        ; preds = %bypass
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true:                                    ; preds = %bypass
  %60 = ptrtoint ptr %sd_statfs_force_sync to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sd_statfs_force_sync, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool18.not = icmp eq i32 %61, 0
  br i1 %tobool18.not, label %if.then19, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call20 = call i32 @schedule_timeout(i32 noundef %57) #12
  %sub = sub i32 %57, %call20
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %land.lhs.true.if.end22_crit_edge, %bypass.if.end22_crit_edge
  %t.1 = phi i32 [ %sub, %if.then19 ], [ 0, %land.lhs.true.if.end22_crit_edge ], [ 0, %bypass.if.end22_crit_edge ]
  call void @finish_wait(ptr noundef %sd_quota_wait, ptr noundef nonnull %wait) #12
  %call4 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call4, label %if.end22.while.end_crit_edge, label %if.end22.while.body_crit_edge

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end22.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_statfs_sync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @quotad_error(ptr noundef %sdp, ptr noundef %msg, i32 noundef %error) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %error to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %error, label %if.end [
    i32 0, label %entry.if.end25_crit_edge
    i32 -30, label %entry.if.end25_crit_edge34
  ]

entry.if.end25_crit_edge34:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.end:                                           ; preds = %entry
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  %1 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %sd_flags.i, align 4
  %3 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %gfs2_withdrawn.exit, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

gfs2_withdrawn.exit:                              ; preds = %if.end
  %4 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sd_flags.i, align 4
  %6 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.i.not = icmp eq i32 %6, 0
  br i1 %tobool3.i.not, label %if.then2, label %gfs2_withdrawn.exit.if.end25_crit_edge

gfs2_withdrawn.exit.if.end25_crit_edge:           ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then2:                                         ; preds = %gfs2_withdrawn.exit
  %sd_log_error = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 98
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_error, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %sd_log_error, i32 1, i32 3, i32 1) #12
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then2
  %7 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %sd_log_error, i32 0, i32 %error) #12, !srcloc !159
  %asmresult.i = extractvalue { i32, i32 } %7, 0
  %tobool.not.i33 = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i33, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %7, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %tobool.not = icmp eq i32 %asmresult1.i, 0
  br i1 %tobool.not, label %do.end21, label %__cmpxchg.exit.if.end24_crit_edge

__cmpxchg.exit.if.end24_crit_edge:                ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

do.end21:                                         ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %sd_fsname, ptr noundef %msg, i32 noundef %error) #16
  br label %if.end24

if.end24:                                         ; preds = %do.end21, %__cmpxchg.exit.if.end24_crit_edge
  %sd_logd_waitq = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 92
  tail call void @__wake_up(ptr noundef %sd_logd_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %gfs2_withdrawn.exit.if.end25_crit_edge, %if.end.if.end25_crit_edge, %entry.if.end25_crit_edge, %entry.if.end25_crit_edge34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_get_dqblk(ptr nocapture noundef readonly %sb, [2 x i32] %qid.coerce, ptr nocapture noundef writeonly %fdq) #0 align 64 {
entry:
  %qd = alloca ptr, align 4
  %q_gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qd) #12
  %2 = ptrtoint ptr %qd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %qd, align 4, !annotation !136
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %q_gh) #12
  %3 = call ptr @memset(ptr %q_gh, i32 255, i32 32)
  %4 = call ptr @memset(ptr %fdq, i32 0, i32 120)
  %ar_quota = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 21, i32 3
  %5 = ptrtoint ptr %ar_quota to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %ar_quota, align 4
  %6 = and i32 %bf.load, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %qid.coerce.fca.1.extract = extractvalue [2 x i32] %qid.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %qid.coerce.fca.1.extract)
  %switch = icmp ult i32 %qid.coerce.fca.1.extract, 2
  br i1 %switch, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call = call fastcc i32 @qd_get(ptr noundef %1, [2 x i32] %qid.coerce, ptr noundef nonnull %qd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  %7 = ptrtoint ptr %qd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qd, align 4
  %call8 = call fastcc i32 @do_glock(ptr noundef %8, i32 noundef 1, ptr noundef nonnull %q_gh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %qd_gl = getelementptr inbounds %struct.gfs2_quota_data, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %qd_gl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qd_gl, align 4
  %sb_lvbptr = getelementptr inbounds %struct.gfs2_glock, ptr %10, i32 0, i32 10, i32 3
  %11 = ptrtoint ptr %sb_lvbptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sb_lvbptr, align 4
  %qb_limit = getelementptr inbounds %struct.gfs2_quota_lvb, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %qb_limit to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %qb_limit, align 8
  %sb_bsize_shift = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 5, i32 5
  %15 = ptrtoint ptr %sb_bsize_shift to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sb_bsize_shift, align 4
  %sh_prom = zext i32 %16 to i64
  %shl = shl i64 %14, %sh_prom
  %d_spc_hardlimit = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 1
  %17 = ptrtoint ptr %d_spc_hardlimit to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %shl, ptr %d_spc_hardlimit, align 8
  %qb_warn = getelementptr inbounds %struct.gfs2_quota_lvb, ptr %12, i32 0, i32 3
  %18 = ptrtoint ptr %qb_warn to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %qb_warn, align 8
  %20 = load i32, ptr %sb_bsize_shift, align 4
  %sh_prom14 = zext i32 %20 to i64
  %shl15 = shl i64 %19, %sh_prom14
  %d_spc_softlimit = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 2
  %21 = ptrtoint ptr %d_spc_softlimit to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %shl15, ptr %d_spc_softlimit, align 8
  %qb_value = getelementptr inbounds %struct.gfs2_quota_lvb, ptr %12, i32 0, i32 4
  %22 = ptrtoint ptr %qb_value to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %qb_value, align 8
  %24 = load i32, ptr %sb_bsize_shift, align 4
  %sh_prom18 = zext i32 %24 to i64
  %shl19 = shl i64 %23, %sh_prom18
  %d_space = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 5
  %25 = ptrtoint ptr %d_space to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %shl19, ptr %d_space, align 8
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %q_gh) #12
  br label %out

out:                                              ; preds = %if.end11, %if.end7.out_crit_edge
  %qd_lockref.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %8, i32 0, i32 4
  %call.i = call i32 @lockref_put_or_lock(ptr noundef %qd_lockref.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  %count.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %8, i32 0, i32 4, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %count.i, align 4
  %qd_lru.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %8, i32 0, i32 5
  %call2.i = call zeroext i1 @list_lru_add(ptr noundef nonnull @gfs2_qd_lru, ptr noundef %qd_lru.i) #12
  call void @_raw_spin_unlock(ptr noundef %qd_lockref.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %out.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -3, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call, %if.end5.cleanup_crit_edge ], [ %call8, %out.cleanup_crit_edge ], [ %call8, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %q_gh) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qd) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_set_dqblk(ptr nocapture noundef readonly %sb, [2 x i32] %qid.coerce, ptr noundef %fdq) #0 align 64 {
entry:
  %qd = alloca ptr, align 4
  %q_gh = alloca %struct.gfs2_holder, align 4
  %i_gh = alloca %struct.gfs2_holder, align 4
  %data_blocks = alloca i32, align 4
  %ind_blocks = alloca i32, align 4
  %ap = alloca %struct.gfs2_alloc_parms, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %sd_quota_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %sd_quota_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_quota_inode, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qd) #12
  %4 = ptrtoint ptr %qd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %qd, align 4, !annotation !136
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %q_gh) #12
  %5 = call ptr @memset(ptr %q_gh, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %i_gh) #12
  %6 = call ptr @memset(ptr %i_gh, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_blocks) #12
  %7 = ptrtoint ptr %data_blocks to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %data_blocks, align 4, !annotation !136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ind_blocks) #12
  %8 = ptrtoint ptr %ind_blocks to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %ind_blocks, align 4, !annotation !136
  %ar_quota = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 21, i32 3
  %9 = ptrtoint ptr %ar_quota to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load = load i32, ptr %ar_quota, align 4
  %10 = and i32 %bf.load, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %entry.cleanup98_crit_edge, label %if.end

entry.cleanup98_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup98

if.end:                                           ; preds = %entry
  %qid.coerce.fca.1.extract = extractvalue [2 x i32] %qid.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %qid.coerce.fca.1.extract)
  %switch = icmp ult i32 %qid.coerce.fca.1.extract, 2
  br i1 %switch, label %if.end5, label %if.end.cleanup98_crit_edge

if.end.cleanup98_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup98

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %fdq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fdq, align 8
  %and = and i32 %12, -4109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %if.end5.cleanup98_crit_edge

if.end5.cleanup98_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup98

if.end7:                                          ; preds = %if.end5
  %call8 = call fastcc i32 @qd_get(ptr noundef %1, [2 x i32] %qid.coerce, ptr noundef nonnull %qd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup98_crit_edge

if.end7.cleanup98_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup98

if.end11:                                         ; preds = %if.end7
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i.i, align 16
  %ar_quota.i = getelementptr inbounds %struct.gfs2_sbd, ptr %16, i32 0, i32 21, i32 3
  %17 = ptrtoint ptr %ar_quota.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load.i = load i32, ptr %ar_quota.i, align 4
  %18 = and i32 %bf.load.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i = icmp eq i32 %18, 0
  br i1 %cmp.i, label %if.end11.if.end15_crit_edge, label %if.end.i

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end.i:                                         ; preds = %if.end11
  %i_rw_mutex.i = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 13
  tail call void @down_write(ptr noundef %i_rw_mutex.i) #12
  %i_qadata.i = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %i_qadata.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_qadata.i, align 8
  %cmp1.i = icmp eq ptr %20, null
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.gfs2_qa_get.exit.thread163_crit_edge

if.end.i.gfs2_qa_get.exit.thread163_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_qa_get.exit.thread163

if.then2.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_qadata_cachep to i32))
  %21 = load ptr, ptr @gfs2_qadata_cachep, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %21, i32 noundef 3392) #12
  %22 = ptrtoint ptr %i_qadata.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i, ptr %i_qadata.i, align 8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %gfs2_qa_get.exit, label %if.then2.i.gfs2_qa_get.exit.thread163_crit_edge

if.then2.i.gfs2_qa_get.exit.thread163_crit_edge:  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_qa_get.exit.thread163

gfs2_qa_get.exit.thread163:                       ; preds = %if.then2.i.gfs2_qa_get.exit.thread163_crit_edge, %if.end.i.gfs2_qa_get.exit.thread163_crit_edge
  %23 = ptrtoint ptr %i_qadata.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_qadata.i, align 8
  %qa_ref.i = getelementptr inbounds %struct.gfs2_qadata, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %qa_ref.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qa_ref.i, align 4
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr %qa_ref.i, align 4
  tail call void @up_write(ptr noundef %i_rw_mutex.i) #12
  br label %if.end15

gfs2_qa_get.exit:                                 ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @up_write(ptr noundef %i_rw_mutex.i) #12
  br label %out_put

if.end15:                                         ; preds = %gfs2_qa_get.exit.thread163, %if.end11.if.end15_crit_edge
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #12
  %27 = ptrtoint ptr %qd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %qd, align 4
  %qd_gl = getelementptr inbounds %struct.gfs2_quota_data, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %qd_gl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %qd_gl, align 4
  %call16 = call fastcc i32 @gfs2_glock_nq_init(ptr noundef %30, i32 noundef 1, i16 noundef zeroext 0, ptr noundef nonnull %q_gh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.out_unlockput_crit_edge

if.end15.out_unlockput_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlockput

if.end19:                                         ; preds = %if.end15
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 6
  %31 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_gl, align 4
  %call20 = call fastcc i32 @gfs2_glock_nq_init(ptr noundef %32, i32 noundef 1, i16 noundef zeroext 0, ptr noundef nonnull %i_gh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.out_q_crit_edge

if.end19.out_q_crit_edge:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_q

if.end23:                                         ; preds = %if.end19
  %call24 = call fastcc i32 @update_qd(ptr noundef %1, ptr noundef %28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.out_i_crit_edge

if.end23.out_i_crit_edge:                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_i

if.end27:                                         ; preds = %if.end23
  %33 = ptrtoint ptr %fdq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fdq, align 8
  %and29 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end35_crit_edge, label %land.lhs.true31

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

land.lhs.true31:                                  ; preds = %if.end27
  %d_spc_softlimit = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 2
  %35 = ptrtoint ptr %d_spc_softlimit to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %d_spc_softlimit, align 8
  %sb_bsize_shift = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 5, i32 5
  %37 = ptrtoint ptr %sb_bsize_shift to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sb_bsize_shift, align 4
  %sh_prom = zext i32 %38 to i64
  %shr = lshr i64 %36, %sh_prom
  %qb_warn = getelementptr inbounds %struct.gfs2_quota_data, ptr %28, i32 0, i32 16, i32 3
  %39 = ptrtoint ptr %qb_warn to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %qb_warn, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %40)
  %cmp32 = icmp eq i64 %shr, %40
  br i1 %cmp32, label %if.then33, label %land.lhs.true31.if.end35_crit_edge

land.lhs.true31.if.end35_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  %xor = xor i32 %34, 4
  %41 = ptrtoint ptr %fdq to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %xor, ptr %fdq, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %land.lhs.true31.if.end35_crit_edge, %if.end27.if.end35_crit_edge
  %42 = ptrtoint ptr %fdq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fdq, align 8
  %and37 = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end35.if.end49_crit_edge, label %land.lhs.true39

if.end35.if.end49_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

land.lhs.true39:                                  ; preds = %if.end35
  %d_spc_hardlimit = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 1
  %44 = ptrtoint ptr %d_spc_hardlimit to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %d_spc_hardlimit, align 8
  %sb_bsize_shift41 = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 5, i32 5
  %46 = ptrtoint ptr %sb_bsize_shift41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sb_bsize_shift41, align 4
  %sh_prom42 = zext i32 %47 to i64
  %shr43 = lshr i64 %45, %sh_prom42
  %qb_limit = getelementptr inbounds %struct.gfs2_quota_data, ptr %28, i32 0, i32 16, i32 2
  %48 = ptrtoint ptr %qb_limit to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %qb_limit, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shr43, i64 %49)
  %cmp45 = icmp eq i64 %shr43, %49
  br i1 %cmp45, label %if.then46, label %land.lhs.true39.if.end49_crit_edge

land.lhs.true39.if.end49_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then46:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  %xor48 = xor i32 %43, 8
  %50 = ptrtoint ptr %fdq to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %xor48, ptr %fdq, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %land.lhs.true39.if.end49_crit_edge, %if.end35.if.end49_crit_edge
  %51 = ptrtoint ptr %fdq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fdq, align 8
  %and51 = and i32 %52, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end49.if.end63_crit_edge, label %land.lhs.true53

if.end49.if.end63_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

land.lhs.true53:                                  ; preds = %if.end49
  %d_space = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 5
  %53 = ptrtoint ptr %d_space to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %d_space, align 8
  %sb_bsize_shift55 = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 5, i32 5
  %55 = ptrtoint ptr %sb_bsize_shift55 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sb_bsize_shift55, align 4
  %sh_prom56 = zext i32 %56 to i64
  %shr57 = lshr i64 %54, %sh_prom56
  %qb_value = getelementptr inbounds %struct.gfs2_quota_data, ptr %28, i32 0, i32 16, i32 4
  %57 = ptrtoint ptr %qb_value to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %qb_value, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shr57, i64 %58)
  %cmp59 = icmp eq i64 %shr57, %58
  br i1 %cmp59, label %if.then60, label %if.end63thread-pre-split

if.then60:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  %xor62 = xor i32 %52, 4096
  %59 = ptrtoint ptr %fdq to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %xor62, ptr %fdq, align 8
  br label %if.end63

if.end63thread-pre-split:                         ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %fdq to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr = load i32, ptr %fdq, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.end63thread-pre-split, %if.then60, %if.end49.if.end63_crit_edge
  %61 = phi i32 [ %.pr, %if.end63thread-pre-split ], [ %xor62, %if.then60 ], [ %52, %if.end49.if.end63_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp65 = icmp eq i32 %61, 0
  br i1 %cmp65, label %if.end63.out_i_crit_edge, label %if.end67

if.end63.out_i_crit_edge:                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_i

if.end67:                                         ; preds = %if.end63
  %call68 = call fastcc i64 @qd2offset(ptr noundef %28), !range !161
  %call69 = call i32 @gfs2_write_alloc_required(ptr noundef %3, i64 noundef %call68, i32 noundef 88) #12
  %i_height.i = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 19
  %62 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %i_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i155.not = icmp ne i8 %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool74.not168 = icmp eq i32 %call69, 0
  %tobool74.not = select i1 %tobool.not.i155.not, i1 %tobool74.not168, i1 false
  br i1 %tobool74.not, label %if.end67.if.end83_crit_edge, label %if.then75

if.end67.if.end83_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then75:                                        ; preds = %if.end67
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #12
  %64 = getelementptr inbounds i8, ptr %ap, i32 8
  %65 = call ptr @memset(ptr %64, i32 0, i32 16)
  call fastcc void @gfs2_write_calc_reserv(ptr noundef %3, ptr noundef nonnull %data_blocks, ptr noundef nonnull %ind_blocks)
  %66 = ptrtoint ptr %data_blocks to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %data_blocks, align 4
  %add = add i32 %67, 1
  %68 = ptrtoint ptr %ind_blocks to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ind_blocks, align 4
  %add76 = add i32 %add, %69
  %conv = zext i32 %add76 to i64
  %70 = ptrtoint ptr %ap to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %conv, ptr %ap, align 8
  %call77 = call i32 @gfs2_inplace_reserve(ptr noundef %3, ptr noundef nonnull %ap) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  %rs_rgd.i = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 10, i32 1
  %71 = ptrtoint ptr %rs_rgd.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rs_rgd.i, align 4
  %rd_length.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %rd_length.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rd_length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %add76)
  %cmp.i156 = icmp ugt i32 %74, %add76
  %add.i = add i32 %add76, 1
  %retval.0.i157 = select i1 %cmp.i156, i32 %add.i, i32 %74
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #12
  %add82 = add i32 %add76, 3
  %phi.bo = add i32 %add82, %retval.0.i157
  br label %if.end83

cleanup:                                          ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #12
  br label %out_i

if.end83:                                         ; preds = %cleanup.thread, %if.end67.if.end83_crit_edge
  %blocks.1 = phi i32 [ 3, %if.end67.if.end83_crit_edge ], [ %phi.bo, %cleanup.thread ]
  %call86 = call i32 @gfs2_trans_begin(ptr noundef %1, i32 noundef %blocks.1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end83.out_release_crit_edge

if.end83.out_release_crit_edge:                   ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_release

if.end89:                                         ; preds = %if.end83
  %call90 = call fastcc i32 @gfs2_adjust_quota(ptr noundef %3, i64 noundef %call68, i64 noundef 0, ptr noundef %28, ptr noundef %fdq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then92, label %if.end89.if.end93_crit_edge

if.end89.if.end93_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  %qd_flags = getelementptr inbounds %struct.gfs2_quota_data, ptr %28, i32 0, i32 7
  call void @_clear_bit(i32 noundef 4, ptr noundef %qd_flags) #12
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.end89.if.end93_crit_edge
  call void @gfs2_trans_end(ptr noundef %1) #12
  br label %out_release

out_release:                                      ; preds = %if.end93, %if.end83.out_release_crit_edge
  %error.0 = phi i32 [ %call86, %if.end83.out_release_crit_edge ], [ %call90, %if.end93 ]
  br i1 %tobool74.not, label %out_release.out_i_crit_edge, label %if.then95

out_release.out_i_crit_edge:                      ; preds = %out_release
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_i

if.then95:                                        ; preds = %out_release
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_inplace_release(ptr noundef %3) #12
  br label %out_i

out_i:                                            ; preds = %if.then95, %out_release.out_i_crit_edge, %cleanup, %if.end63.out_i_crit_edge, %if.end23.out_i_crit_edge
  %error.1 = phi i32 [ %call24, %if.end23.out_i_crit_edge ], [ 0, %if.end63.out_i_crit_edge ], [ %call77, %cleanup ], [ %error.0, %if.then95 ], [ %error.0, %out_release.out_i_crit_edge ]
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %i_gh) #12
  br label %out_q

out_q:                                            ; preds = %out_i, %if.end19.out_q_crit_edge
  %error.2 = phi i32 [ %call20, %if.end19.out_q_crit_edge ], [ %error.1, %out_i ]
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %q_gh) #12
  br label %out_unlockput

out_unlockput:                                    ; preds = %out_q, %if.end15.out_unlockput_crit_edge
  %error.3 = phi i32 [ %call16, %if.end15.out_unlockput_crit_edge ], [ %error.2, %out_q ]
  call void @gfs2_qa_put(ptr noundef %3)
  call void @up_write(ptr noundef %i_rwsem.i) #12
  br label %out_put

out_put:                                          ; preds = %out_unlockput, %gfs2_qa_get.exit
  %error.4 = phi i32 [ -12, %gfs2_qa_get.exit ], [ %error.3, %out_unlockput ]
  %75 = ptrtoint ptr %qd to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %qd, align 4
  %qd_lockref.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %76, i32 0, i32 4
  %call.i = call i32 @lockref_put_or_lock(ptr noundef %qd_lockref.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i159 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i159, label %if.end.i160, label %out_put.cleanup98_crit_edge

out_put.cleanup98_crit_edge:                      ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup98

if.end.i160:                                      ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #14
  %count.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %76, i32 0, i32 4, i32 0, i32 0, i32 1
  %77 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %count.i, align 4
  %qd_lru.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %76, i32 0, i32 5
  %call2.i = call zeroext i1 @list_lru_add(ptr noundef nonnull @gfs2_qd_lru, ptr noundef %qd_lru.i) #12
  call void @_raw_spin_unlock(ptr noundef %qd_lockref.i) #12
  br label %cleanup98

cleanup98:                                        ; preds = %if.end.i160, %out_put.cleanup98_crit_edge, %if.end7.cleanup98_crit_edge, %if.end5.cleanup98_crit_edge, %if.end.cleanup98_crit_edge, %entry.cleanup98_crit_edge
  %retval.0 = phi i32 [ -3, %entry.cleanup98_crit_edge ], [ -22, %if.end.cleanup98_crit_edge ], [ -22, %if.end5.cleanup98_crit_edge ], [ %call8, %if.end7.cleanup98_crit_edge ], [ %error.4, %out_put.cleanup98_crit_edge ], [ %error.4, %if.end.i160 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ind_blocks) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_blocks) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %i_gh) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %q_gh) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qd) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_quota_get_state(ptr nocapture noundef readonly %sb, ptr nocapture noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %2 = call ptr @memset(ptr %state, i32 0, i32 176)
  %ar_quota = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 21, i32 3
  %3 = ptrtoint ptr %ar_quota to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %ar_quota, align 4
  %bf.lshr = lshr i32 %bf.load, 26
  %bf.clear = and i32 %bf.lshr, 3
  %4 = zext i32 %bf.clear to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %bf.clear, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %entry.sw.bb5_crit_edge
  ]

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %s_state = getelementptr inbounds %struct.qc_state, ptr %state, i32 0, i32 1
  %5 = ptrtoint ptr %s_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_state, align 8
  %or = or i32 %6, 8
  store i32 %or, ptr %s_state, align 8
  %arrayidx2 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 8
  %or4 = or i32 %8, 8
  store i32 %or4, ptr %arrayidx2, align 8
  br label %sw.bb5

sw.bb5:                                           ; preds = %sw.bb, %entry.sw.bb5_crit_edge
  %s_state6 = getelementptr inbounds %struct.qc_state, ptr %state, i32 0, i32 1
  %9 = ptrtoint ptr %s_state6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_state6, align 8
  %or9 = or i32 %10, 5
  store i32 %or9, ptr %s_state6, align 8
  %arrayidx11 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx11, align 8
  %or13 = or i32 %12, 5
  store i32 %or13, ptr %arrayidx11, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %entry.sw.epilog_crit_edge
  %sd_quota_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 42
  %13 = ptrtoint ptr %sd_quota_inode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sd_quota_inode, align 8
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %i_no_addr = getelementptr inbounds %struct.gfs2_inode, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_no_addr, align 8
  %ino = getelementptr inbounds %struct.qc_state, ptr %state, i32 0, i32 1, i32 0, i32 7
  %17 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %ino, align 8
  %18 = ptrtoint ptr %sd_quota_inode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd_quota_inode, align 8
  %i_blocks = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 22
  %20 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_blocks, align 8
  %blocks = getelementptr inbounds %struct.qc_state, ptr %state, i32 0, i32 1, i32 0, i32 8
  %22 = ptrtoint ptr %blocks to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %blocks, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %s_state20 = getelementptr inbounds %struct.qc_state, ptr %state, i32 0, i32 1
  %nextents = getelementptr inbounds %struct.qc_state, ptr %state, i32 0, i32 1, i32 0, i32 9
  %23 = ptrtoint ptr %nextents to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 1, ptr %nextents, align 8
  %arrayidx23 = getelementptr %struct.qc_state, ptr %state, i32 0, i32 1, i32 1
  %24 = call ptr @memcpy(ptr %arrayidx23, ptr %s_state20, i32 56)
  %call.i = tail call i32 @list_lru_count_node(ptr noundef nonnull @gfs2_qd_lru, i32 noundef 0) #12
  %25 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call.i, ptr %state, align 8
  ret i32 0
}

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @gfs2_quota_hash_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @qd_hash_table, i32 0, i32 16384)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_count_one(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_qd_isolate(ptr noundef %item, ptr noundef %lru, ptr nocapture noundef readnone %lru_lock, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %qd_lockref = getelementptr i8, ptr %item, i32 -48
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %qd_lockref) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %count = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lockref_mark_dead(ptr noundef %qd_lockref) #12
  tail call void @list_lru_isolate_move(ptr noundef %lru, ptr noundef %item, ptr noundef %arg) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %qd_lockref) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ 3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_walk_one(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_mark_dead(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_isolate_move(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_i(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qid_lt([2 x i32], [2 x i32]) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfs2_glock_nq_init(ptr noundef %gl, i32 noundef %state, i16 noundef zeroext %flags, ptr noundef %gh) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @__gfs2_holder_init(ptr noundef %gl, i32 noundef %state, i16 noundef zeroext %flags, ptr noundef %gh, i32 noundef %1) #12
  %call = tail call i32 @gfs2_glock_nq(ptr noundef %gh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_holder_uninit(ptr noundef %gh) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_qd(ptr nocapture noundef readonly %sdp, ptr nocapture noundef %qd) unnamed_addr #0 align 64 {
entry:
  %q = alloca %struct.gfs2_quota, align 8
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_quota_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 42
  %0 = ptrtoint ptr %sd_quota_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_quota_inode, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %q) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #12
  %2 = call ptr @memset(ptr %q, i32 0, i32 88)
  %qd_id.i.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 2
  %3 = ptrtoint ptr %qd_id.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %qid.sroa.0.0.copyload.i.i = load i32, ptr %qd_id.i.i, align 8
  %qid.sroa.5.0.qd_id.sroa_idx.i.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %qid.sroa.5.0.qd_id.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %qid.sroa.5.0.copyload.i.i = load i32, ptr %qid.sroa.5.0.qd_id.sroa_idx.i.i, align 4
  %.fca.0.insert.i.i = insertvalue [2 x i32] poison, i32 %qid.sroa.0.0.copyload.i.i, 0
  %.fca.1.insert.i.i = insertvalue [2 x i32] %.fca.0.insert.i.i, i32 %qid.sroa.5.0.copyload.i.i, 1
  %call.i.i = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %.fca.1.insert.i.i) #12
  %conv.i.i = zext i32 %call.i.i to i64
  %mul.i.i = shl nuw nsw i64 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qid.sroa.5.0.copyload.i.i)
  %cmp.i.i = icmp ne i32 %qid.sroa.5.0.copyload.i.i, 0
  %5 = zext i1 %cmp.i.i to i64
  %add.i.i = or i64 %mul.i.i, %5
  %mul.i = mul nuw nsw i64 %add.i.i, 88
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %mul.i, ptr %pos, align 8
  %call2 = call i32 @gfs2_internal_read(ptr noundef %1, ptr noundef nonnull %q, ptr noundef nonnull %pos, i32 noundef 88) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %qd_gl = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 15
  %7 = ptrtoint ptr %qd_gl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qd_gl, align 4
  %sb_lvbptr = getelementptr inbounds %struct.gfs2_glock, ptr %8, i32 0, i32 10, i32 3
  %9 = ptrtoint ptr %sb_lvbptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sb_lvbptr, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 18225520, ptr %10, align 8
  %__pad = getelementptr inbounds %struct.gfs2_quota_lvb, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %__pad to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %__pad, align 4
  %13 = ptrtoint ptr %q to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %q, align 8
  %qb_limit = getelementptr inbounds %struct.gfs2_quota_lvb, ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %qb_limit to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %qb_limit, align 8
  %qu_warn = getelementptr inbounds %struct.gfs2_quota, ptr %q, i32 0, i32 1
  %16 = ptrtoint ptr %qu_warn to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %qu_warn, align 8
  %qb_warn = getelementptr inbounds %struct.gfs2_quota_lvb, ptr %10, i32 0, i32 3
  %18 = ptrtoint ptr %qb_warn to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %qb_warn, align 8
  %qu_value = getelementptr inbounds %struct.gfs2_quota, ptr %q, i32 0, i32 2
  %19 = ptrtoint ptr %qu_value to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %qu_value, align 8
  %qb_value = getelementptr inbounds %struct.gfs2_quota_lvb, ptr %10, i32 0, i32 4
  %21 = ptrtoint ptr %qb_value to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %qb_value, align 8
  %qd_qb = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 16
  %22 = call ptr @memcpy(ptr %qd_qb, ptr %10, i32 32)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %q) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gfs2_holder_init(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_nq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_holder_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @qd2offset(ptr nocapture noundef readonly %qd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %qd_id.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 2
  %0 = ptrtoint ptr %qd_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %qid.sroa.0.0.copyload.i = load i32, ptr %qd_id.i, align 8
  %qid.sroa.5.0.qd_id.sroa_idx.i = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %qid.sroa.5.0.qd_id.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %qid.sroa.5.0.copyload.i = load i32, ptr %qid.sroa.5.0.qd_id.sroa_idx.i, align 4
  %.fca.0.insert.i = insertvalue [2 x i32] poison, i32 %qid.sroa.0.0.copyload.i, 0
  %.fca.1.insert.i = insertvalue [2 x i32] %.fca.0.insert.i, i32 %qid.sroa.5.0.copyload.i, 1
  %call.i = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, [2 x i32] %.fca.1.insert.i) #12
  %conv.i = zext i32 %call.i to i64
  %mul.i = shl nuw nsw i64 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qid.sroa.5.0.copyload.i)
  %cmp.i = icmp ne i32 %qid.sroa.5.0.copyload.i, 0
  %2 = zext i1 %cmp.i to i64
  %add.i = or i64 %mul.i, %2
  %mul = mul nuw nsw i64 %add.i, 88
  ret i64 %mul
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_internal_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kqid(ptr noundef, [2 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockref_get_not_dead(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_block_map(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_read(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockref_put_or_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @list_lru_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfs2_write_calc_reserv(ptr nocapture noundef readonly %ip, ptr nocapture noundef %data_blocks, ptr nocapture noundef %ind_blocks) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ip, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %6)
  %cmp.i.not = icmp eq i16 %6, 16384
  br i1 %cmp.i.not, label %do.body4, label %do.end9, !prof !128

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/bmap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 36, 0\0A.popsection", ""() #12, !srcloc !138
  unreachable

do.end9:                                          ; preds = %entry
  %sb_bsize_shift = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 5, i32 5
  %7 = ptrtoint ptr %sb_bsize_shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sb_bsize_shift, align 4
  %shr = lshr i32 88, %8
  %add = add nuw nsw i32 %shr, 3
  %9 = ptrtoint ptr %data_blocks to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %data_blocks, align 4
  %sd_max_height = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 18
  %10 = ptrtoint ptr %sd_max_height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sd_max_height, align 8
  %12 = mul i32 %11, 3
  %mul = add i32 %12, -3
  %13 = ptrtoint ptr %ind_blocks to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %ind_blocks, align 4
  %14 = load i32, ptr %data_blocks, align 4
  %sd_diptrs = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 8
  %15 = ptrtoint ptr %sd_diptrs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sd_diptrs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp1 = icmp ugt i32 %14, %16
  br i1 %cmp1, label %for.body.lr.ph, label %do.end9.for.end_crit_edge

do.end9.for.end_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end9
  %sd_inptrs = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %tmp.02 = phi i32 [ %14, %for.body.lr.ph ], [ %div, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %sd_inptrs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sd_inptrs, align 4
  %add10 = add i32 %tmp.02, -1
  %sub11 = add i32 %add10, %18
  %div = udiv i32 %sub11, %18
  %19 = ptrtoint ptr %ind_blocks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ind_blocks, align 4
  %add13 = add i32 %20, %div
  store i32 %add13, ptr %ind_blocks, align 4
  %21 = ptrtoint ptr %sd_diptrs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sd_diptrs, align 8
  %cmp = icmp ugt i32 %div, %22
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end9.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_write_alloc_required(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_inplace_reserve(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_trans_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfs2_adjust_quota(ptr noundef %ip, i64 noundef %loc, i64 noundef %change, ptr noundef %qd, ptr noundef readonly %fdq) unnamed_addr #0 align 64 {
entry:
  %loc.addr = alloca i64, align 8
  %q = alloca %struct.gfs2_quota, align 8
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %loc.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %loc, ptr %loc.addr, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %q) #12
  %i_height.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 19
  %5 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %i_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.not = icmp eq i8 %6, 0
  br i1 %tobool.not.i.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @gfs2_unstuff_dinode(ptr noundef %ip) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %7 = call ptr @memset(ptr %q, i32 0, i32 88)
  %call6 = call i32 @gfs2_internal_read(ptr noundef %ip, ptr noundef nonnull %q, ptr noundef nonnull %loc.addr, i32 noundef 88) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %8 = ptrtoint ptr %loc.addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %loc.addr, align 8
  %sub = add i64 %9, -88
  store i64 %sub, ptr %loc.addr, align 8
  %qu_value = getelementptr inbounds %struct.gfs2_quota, ptr %q, i32 0, i32 2
  %10 = ptrtoint ptr %qu_value to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %qu_value, align 8
  %add.i = add i64 %11, %change
  %12 = call i64 @llvm.smax.i64(i64 %add.i, i64 0)
  %13 = ptrtoint ptr %qu_value to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %qu_value, align 8
  %qb_value = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 16, i32 4
  %14 = ptrtoint ptr %qb_value to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %12, ptr %qb_value, align 8
  %tobool15.not = icmp eq ptr %fdq, null
  br i1 %tobool15.not, label %if.end8.if.end46_crit_edge, label %if.then16

if.end8.if.end46_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then16:                                        ; preds = %if.end8
  %15 = ptrtoint ptr %fdq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fdq, align 8
  %and = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.then16.if.end21_crit_edge, label %if.then18

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %d_spc_softlimit = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 2
  %17 = ptrtoint ptr %d_spc_softlimit to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %d_spc_softlimit, align 8
  %sb_bsize_shift = getelementptr inbounds %struct.gfs2_sbd, ptr %4, i32 0, i32 5, i32 5
  %19 = ptrtoint ptr %sb_bsize_shift to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sb_bsize_shift, align 4
  %sh_prom = zext i32 %20 to i64
  %shr = lshr i64 %18, %sh_prom
  %qu_warn = getelementptr inbounds %struct.gfs2_quota, ptr %q, i32 0, i32 1
  %21 = ptrtoint ptr %qu_warn to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %shr, ptr %qu_warn, align 8
  %qb_warn = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 16, i32 3
  %22 = ptrtoint ptr %qb_warn to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %shr, ptr %qb_warn, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then16.if.end21_crit_edge
  %23 = ptrtoint ptr %fdq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fdq, align 8
  %and23 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.if.end32_crit_edge, label %if.then25

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %d_spc_hardlimit = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 1
  %25 = ptrtoint ptr %d_spc_hardlimit to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %d_spc_hardlimit, align 8
  %sb_bsize_shift27 = getelementptr inbounds %struct.gfs2_sbd, ptr %4, i32 0, i32 5, i32 5
  %27 = ptrtoint ptr %sb_bsize_shift27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sb_bsize_shift27, align 4
  %sh_prom28 = zext i32 %28 to i64
  %shr29 = lshr i64 %26, %sh_prom28
  %29 = ptrtoint ptr %q to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %shr29, ptr %q, align 8
  %qb_limit = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 16, i32 2
  %30 = ptrtoint ptr %qb_limit to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %shr29, ptr %qb_limit, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %if.end21.if.end32_crit_edge
  %31 = ptrtoint ptr %fdq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fdq, align 8
  %and34 = and i32 %32, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.if.end46_crit_edge, label %if.then36

if.end32.if.end46_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %d_space = getelementptr inbounds %struct.qc_dqblk, ptr %fdq, i32 0, i32 5
  %33 = ptrtoint ptr %d_space to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %d_space, align 8
  %sb_bsize_shift38 = getelementptr inbounds %struct.gfs2_sbd, ptr %4, i32 0, i32 5, i32 5
  %35 = ptrtoint ptr %sb_bsize_shift38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sb_bsize_shift38, align 4
  %sh_prom39 = zext i32 %36 to i64
  %shr40 = lshr i64 %34, %sh_prom39
  %37 = ptrtoint ptr %qu_value to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %shr40, ptr %qu_value, align 8
  %38 = ptrtoint ptr %qb_value to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %shr40, ptr %qb_value, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then36, %if.end32.if.end46_crit_edge, %if.end8.if.end46_crit_edge
  %39 = lshr i64 %sub, 12
  %conv.i = trunc i64 %39 to i32
  %conv1.i = trunc i64 %sub to i32
  %and.i = and i32 %conv1.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4009, i32 %and.i)
  %cmp.i = icmp ult i32 %and.i, 4009
  %40 = call i32 @llvm.usub.sat.i32(i32 %and.i, i32 4008) #12
  %sub4.i = sub nuw nsw i32 88, %40
  %call.i = call fastcc i32 @gfs2_write_buf_to_page(ptr noundef %ip, i32 noundef %conv.i, i32 noundef %and.i, ptr noundef nonnull %q, i32 noundef %sub4.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i86 = icmp ne i32 %call.i, 0
  %brmerge.i = or i1 %cmp.i, %tobool.not.i86
  br i1 %brmerge.i, label %if.end46.gfs2_write_disk_quota.exit_crit_edge, label %if.then6.i

if.end46.gfs2_write_disk_quota.exit_crit_edge:    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_write_disk_quota.exit

if.then6.i:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %add7.i = add i32 %conv.i, 1
  %add.ptr.i = getelementptr inbounds i8, ptr %q, i32 88
  %idx.neg.i = sub nsw i32 0, %40
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  %call9.i = call fastcc i32 @gfs2_write_buf_to_page(ptr noundef %ip, i32 noundef %add7.i, i32 noundef 0, ptr noundef %add.ptr8.i, i32 noundef %40) #12
  br label %gfs2_write_disk_quota.exit

gfs2_write_disk_quota.exit:                       ; preds = %if.then6.i, %if.end46.gfs2_write_disk_quota.exit_crit_edge
  %error.0.i = phi i32 [ %call.i, %if.end46.gfs2_write_disk_quota.exit_crit_edge ], [ %call9.i, %if.then6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0.i)
  %tobool48.not = icmp eq i32 %error.0.i, 0
  br i1 %tobool48.not, label %if.then49, label %gfs2_write_disk_quota.exit.cleanup_crit_edge

gfs2_write_disk_quota.exit.cleanup_crit_edge:     ; preds = %gfs2_write_disk_quota.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then49:                                        ; preds = %gfs2_write_disk_quota.exit
  %41 = ptrtoint ptr %loc.addr to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %loc.addr, align 8
  %add = add i64 %42, 88
  %i_size = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %43 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %44)
  %cmp50 = icmp ugt i64 %add, %44
  br i1 %cmp50, label %if.then51, label %if.then49.if.end52_crit_edge

if.then49.if.end52_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then51:                                        ; preds = %if.then49
  %45 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %48, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !162
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %49 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i.i, label %if.then51.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.then51.i_size_write.exit_crit_edge:            ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.then51
  %50 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %53, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !163
  %54 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %59, ptrtoint (ptr @lockdep_recursion to i32)
  %60 = inttoptr i32 %add.i28.i to ptr
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %60, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !164
  %63 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i7.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %66, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool20.not.i.i = icmp eq i32 %62, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %67 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i29.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp.i.i = icmp eq i32 %70, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %71 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i9.i.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %74, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !165
  %75 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %78, ptrtoint (ptr @hardirqs_enabled to i32)
  %79 = inttoptr i32 %add47.i.i to ptr
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %79, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !166
  %82 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i12.i.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %85, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool54.not.i.i = icmp eq i32 %81, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !122

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.then51.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 23
  %86 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %87, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !167
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 23, i32 1
  %88 = call ptr @llvm.returnaddress(i32 0) #12
  %89 = ptrtoint ptr %88 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %89) #12
  %90 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %add, ptr %i_size, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %89) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !168
  %91 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %92, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !169
  %93 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i26.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %96, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  br label %if.end52

if.end52:                                         ; preds = %i_size_write.exit, %if.then49.if.end52_crit_edge
  %i_mtime = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %ip) #12
  %97 = call ptr @memcpy(ptr %i_atime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #12
  %98 = call ptr @memcpy(ptr %i_mtime, ptr %i_atime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #12
  %qd_flags = getelementptr inbounds %struct.gfs2_quota_data, ptr %qd, i32 0, i32 7
  call void @_set_bit(i32 noundef 3, ptr noundef %qd_flags) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %gfs2_write_disk_quota.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ 0, %if.end52 ], [ %error.0.i, %gfs2_write_disk_quota.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %q) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_inplace_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_log_flush(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_unstuff_dinode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfs2_write_buf_to_page(ptr noundef %ip, i32 noundef %index, i32 noundef %off, ptr nocapture noundef readonly %buf, i32 noundef %bytes) unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_mapping = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #12
  %sb_bsize = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %sb_bsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sb_bsize, align 8
  %sb_bsize_shift = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 5, i32 5
  %8 = ptrtoint ptr %sb_bsize_shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_bsize_shift, align 4
  %sub = sub i32 12, %9
  %shl = shl i32 %index, %sub
  %conv = zext i32 %shl to i64
  %rem = urem i32 %off, %7
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %5, i32 noundef %index, i32 noundef 7, i32 noundef 3136) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i.not.i = icmp eq i32 %11, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !128

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.16) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #12, !srcloc !170
  unreachable

PagePrivate.exit:                                 ; preds = %if.end
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %call.i, align 4
  %14 = and i32 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  br i1 %tobool4.not, label %if.then5, label %PagePrivate.exit.do.body_crit_edge

PagePrivate.exit.do.body_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then5:                                         ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @create_empty_buffers(ptr noundef nonnull %call.i, i32 noundef %7, i32 noundef 0) #12
  br label %do.body

do.body:                                          ; preds = %if.then5, %PagePrivate.exit.do.body_crit_edge
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.i.not.i125 = icmp eq i32 %16, -1
  br i1 %cmp.i.not.i125, label %if.then.i126, label %PagePrivate.exit129, !prof !128

if.then.i126:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.16) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #12, !srcloc !170
  unreachable

PagePrivate.exit129:                              ; preds = %do.body
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %call.i, align 4
  %19 = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool8.not = icmp eq i32 %19, 0
  br i1 %tobool8.not, label %do.body13, label %do.end19, !prof !128

do.body13:                                        ; preds = %PagePrivate.exit129
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/quota.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !171
  unreachable

do.end19:                                         ; preds = %PagePrivate.exit129
  %private = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %private, align 4
  %22 = inttoptr i32 %21 to ptr
  %23 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %bh, align 4
  %24 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %call.i to i32
  %i_diskflags.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 18
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %i_ordered.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 14
  %prev3.i.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 14, i32 1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.then24, %do.end19
  %blk.0.ph = phi i64 [ %inc25, %if.then24 ], [ %conv, %do.end19 ]
  %bnum.0.ph = phi i32 [ %inc, %if.then24 ], [ 0, %do.end19 ]
  %boff.0.ph = phi i32 [ %boff.0.ph176.lcssa, %if.then24 ], [ %rem, %do.end19 ]
  %to_write.0.ph = phi i32 [ %to_write.0.ph177.lcssa, %if.then24 ], [ %bytes, %do.end19 ]
  %pg_off.0.ph = phi i32 [ %pg_off.0.ph178.lcssa, %if.then24 ], [ %off, %do.end19 ]
  %mul = mul i32 %bnum.0.ph, %7
  %add = add i32 %mul, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %pg_off.0.ph, i32 %add)
  %cmp.not219 = icmp ult i32 %pg_off.0.ph, %add
  br i1 %cmp.not219, label %if.end26.lr.ph, label %while.cond.outer.if.then24_crit_edge

while.cond.outer.if.then24_crit_edge:             ; preds = %while.cond.outer
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.end26.lr.ph:                                   ; preds = %while.cond.outer
  %sub57220 = sub i32 %7, %boff.0.ph
  call void @__sanitizer_cov_trace_cmp4(i32 %to_write.0.ph, i32 %sub57220)
  %cmp58221 = icmp ugt i32 %to_write.0.ph, %sub57220
  br label %if.end26

if.then24:                                        ; preds = %if.then60.if.then24_crit_edge, %while.cond.outer.if.then24_crit_edge
  %boff.0.ph176.lcssa = phi i32 [ %boff.0.ph, %while.cond.outer.if.then24_crit_edge ], [ %rem65, %if.then60.if.then24_crit_edge ]
  %to_write.0.ph177.lcssa = phi i32 [ %to_write.0.ph, %while.cond.outer.if.then24_crit_edge ], [ %sub64, %if.then60.if.then24_crit_edge ]
  %pg_off.0.ph178.lcssa = phi i32 [ %pg_off.0.ph, %while.cond.outer.if.then24_crit_edge ], [ %add62, %if.then60.if.then24_crit_edge ]
  %26 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bh, align 4
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_this_page, align 4
  store ptr %29, ptr %bh, align 4
  %inc = add i32 %bnum.0.ph, 1
  %inc25 = add i64 %blk.0.ph, 1
  br label %while.cond.outer

if.end26:                                         ; preds = %if.then60.if.end26_crit_edge, %if.end26.lr.ph
  %cmp58225 = phi i1 [ %cmp58221, %if.end26.lr.ph ], [ %cmp58, %if.then60.if.end26_crit_edge ]
  %sub57224 = phi i32 [ %sub57220, %if.end26.lr.ph ], [ %sub57, %if.then60.if.end26_crit_edge ]
  %pg_off.0.ph178223 = phi i32 [ %pg_off.0.ph, %if.end26.lr.ph ], [ %add62, %if.then60.if.end26_crit_edge ]
  %to_write.0.ph177222 = phi i32 [ %to_write.0.ph, %if.end26.lr.ph ], [ %sub64, %if.then60.if.end26_crit_edge ]
  %30 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bh, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %34 = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool28.not = icmp eq i32 %34, 0
  br i1 %tobool28.not, label %if.then29, label %if.end26.if.end40_crit_edge

if.end26.if.end40_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then29:                                        ; preds = %if.end26
  %call30 = call i32 @gfs2_block_map(ptr noundef %ip, i64 noundef %blk.0.ph, ptr noundef %31, i32 noundef 1) #12
  %35 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bh, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %39 = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool32.not = icmp eq i32 %39, 0
  br i1 %tobool32.not, label %if.then29.unlock_out_crit_edge, label %if.end34

if.then29.unlock_out_crit_edge:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_out

if.end34:                                         ; preds = %if.then29
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %36, align 4
  %42 = and i32 %41, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool36.not = icmp eq i32 %42, 0
  br i1 %tobool36.not, label %if.end34.if.end40_crit_edge, label %if.then37

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %36, i32 0, i32 4
  %43 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %b_size, align 8
  %add.i = add i32 %44, %mul
  call void @zero_user_segments(ptr noundef nonnull %call.i, i32 noundef %mul, i32 noundef %add.i, i32 noundef 0, i32 noundef 0) #12
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end34.if.end40_crit_edge, %if.end26.if.end40_crit_edge
  %45 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %24, align 4
  %and.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end40._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !122

if.end40._compound_head.exit.i_crit_edge:         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %46, -1
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %if.end40._compound_head.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %25, %if.end40._compound_head.exit.i_crit_edge ]
  %47 = inttoptr i32 %retval.0.i.i to ptr
  %48 = getelementptr inbounds %struct.page, ptr %47, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  %and.i.i.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !122

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %51 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %51, ptr noundef nonnull @.str.17) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !172
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %52 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %47, align 4
  %54 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.i.not.i = icmp eq i32 %54, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i.if.end44_crit_edge, label %PageUptodate.exit

folio_flags.exit.i.i.if.end44_crit_edge:          ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !173
  %55 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bh, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %56, align 4
  %and1.i.i136 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i136)
  %tobool.not.i = icmp eq i32 %and1.i.i136, 0
  br i1 %tobool.not.i, label %if.then.i137, label %PageUptodate.exit.if.end44_crit_edge

PageUptodate.exit.if.end44_crit_edge:             ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then.i137:                                     ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @_set_bit(i32 noundef 0, ptr noundef %56) #12
  br label %if.end44

if.end44:                                         ; preds = %if.then.i137, %PageUptodate.exit.if.end44_crit_edge, %folio_flags.exit.i.i.if.end44_crit_edge
  %59 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bh, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %60, align 4
  %and1.i.i138 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i138)
  %tobool46.not = icmp eq i32 %and1.i.i138, 0
  br i1 %tobool46.not, label %if.then47, label %if.end44.if.end52_crit_edge

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then47:                                        ; preds = %if.end44
  call void @ll_rw_block(i32 noundef 0, i32 noundef 12288, i32 noundef 1, ptr noundef nonnull %bh) #12
  %63 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bh, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 354) #12
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  %67 = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i140 = icmp eq i32 %67, 0
  br i1 %tobool.not.i140, label %if.then47.wait_on_buffer.exit_crit_edge, label %if.then.i141

if.then47.wait_on_buffer.exit_crit_edge:          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_on_buffer.exit

if.then.i141:                                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  call void @__wait_on_buffer(ptr noundef %64) #12
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i141, %if.then47.wait_on_buffer.exit_crit_edge
  %68 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bh, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %69, align 4
  %and1.i.i139 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i139)
  %tobool49.not = icmp eq i32 %and1.i.i139, 0
  br i1 %tobool49.not, label %wait_on_buffer.exit.unlock_out_crit_edge, label %wait_on_buffer.exit.if.end52_crit_edge

wait_on_buffer.exit.if.end52_crit_edge:           ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

wait_on_buffer.exit.unlock_out_crit_edge:         ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_out

if.end52:                                         ; preds = %wait_on_buffer.exit.if.end52_crit_edge, %if.end44.if.end52_crit_edge
  %72 = ptrtoint ptr %i_diskflags.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %i_diskflags.i, align 4
  %and.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool54.not = icmp eq i32 %and.i, 0
  br i1 %tobool54.not, label %lor.lhs.false.i, label %if.then55

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %i_gl, align 4
  %76 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bh, align 4
  call void @gfs2_trans_add_data(ptr noundef %75, ptr noundef %77) #12
  br label %if.end56

lor.lhs.false.i:                                  ; preds = %if.end52
  %78 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %79, i32 0, i32 33
  %80 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %s_fs_info.i.i, align 16
  %ar_data.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %81, i32 0, i32 21, i32 3
  %82 = ptrtoint ptr %ar_data.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %bf.load.i.i = load i32, ptr %ar_data.i.i, align 4
  %83 = and i32 %bf.load.i.i, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %83)
  %cmp.i.i = icmp eq i32 %83, 16777216
  br i1 %cmp.i.i, label %if.end.i, label %lor.lhs.false.i.if.end56_crit_edge

lor.lhs.false.i.if.end56_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.end.i:                                         ; preds = %lor.lhs.false.i
  %84 = ptrtoint ptr %i_ordered.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %i_ordered.i, align 4
  %cmp.i21.not.i = icmp eq ptr %85, %i_ordered.i
  br i1 %cmp.i21.not.i, label %if.then5.i, label %if.end.i.if.end56_crit_edge

if.end.i.if.end56_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then5.i:                                       ; preds = %if.end.i
  %sd_ordered_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %81, i32 0, i32 85
  call void @_raw_spin_lock(ptr noundef %sd_ordered_lock.i) #12
  %86 = ptrtoint ptr %i_ordered.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile ptr, ptr %i_ordered.i, align 4
  %cmp.i22.not.i = icmp eq ptr %87, %i_ordered.i
  br i1 %cmp.i22.not.i, label %if.then9.i, label %if.then5.i.if.end11.i_crit_edge

if.then5.i.if.end11.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.then5.i
  %sd_log_ordered.i = getelementptr inbounds %struct.gfs2_sbd, ptr %81, i32 0, i32 84
  %88 = ptrtoint ptr %sd_log_ordered.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sd_log_ordered.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %i_ordered.i, ptr noundef %sd_log_ordered.i, ptr noundef %89) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then9.i.if.end11.i_crit_edge

if.then9.i.if.end11.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.end.i.i.i:                                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %i_ordered.i, ptr %prev1.i.i.i, align 4
  %91 = ptrtoint ptr %i_ordered.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %89, ptr %i_ordered.i, align 4
  %92 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %sd_log_ordered.i, ptr %prev3.i.i.i, align 4
  %93 = ptrtoint ptr %sd_log_ordered.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %i_ordered.i, ptr %sd_log_ordered.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i.i.i, %if.then9.i.if.end11.i_crit_edge, %if.then5.i.if.end11.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %sd_ordered_lock.i) #12
  br label %if.end56

if.end56:                                         ; preds = %if.end11.i, %if.end.i.if.end56_crit_edge, %lor.lhs.false.i.if.end56_crit_edge, %if.then55
  br i1 %cmp58225, label %if.then60, label %while.end

if.then60:                                        ; preds = %if.end56
  %add62 = add i32 %pg_off.0.ph178223, %sub57224
  %sub64 = sub i32 %to_write.0.ph177222, %sub57224
  %rem65 = urem i32 %add62, %7
  %cmp.not = icmp ult i32 %add62, %add
  %sub57 = sub i32 %7, %rem65
  call void @__sanitizer_cov_trace_cmp4(i32 %sub64, i32 %sub57)
  %cmp58 = icmp ugt i32 %sub64, %sub57
  br i1 %cmp.not, label %if.then60.if.end26_crit_edge, label %if.then60.if.then24_crit_edge

if.then60.if.then24_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.then60.if.end26_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

while.end:                                        ; preds = %if.end56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %94 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %94, 512
  %95 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %98, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  %99 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i1.i.i = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %102, i32 0, i32 213
  %103 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %104, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef nonnull %call.i, i32 noundef %or.i) #12
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %off
  %105 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %bytes)
  call void @flush_dcache_page(ptr noundef nonnull %call.i) #12
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !176
  %106 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i1.i = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %109, i32 0, i32 213
  %110 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %111, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !177
  %112 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i144 = and i32 %112, -16384
  %113 = inttoptr i32 %and.i.i.i.i144 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i145 = add i32 %115, -1
  store volatile i32 %sub.i.i145, ptr %preempt_count.i.i.i, align 4
  call void @unlock_page(ptr noundef nonnull %call.i) #12
  %116 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %24, align 4
  %and.i.i146 = and i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i146)
  %tobool.not.i.i147 = icmp eq i32 %and.i.i146, 0
  br i1 %tobool.not.i.i147, label %while.end._compound_head.exit.i152_crit_edge, label %if.then.i.i149, !prof !122

while.end._compound_head.exit.i152_crit_edge:     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %_compound_head.exit.i152

if.then.i.i149:                                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i148 = add i32 %117, -1
  br label %_compound_head.exit.i152

_compound_head.exit.i152:                         ; preds = %if.then.i.i149, %while.end._compound_head.exit.i152_crit_edge
  %retval.0.i.i151 = phi i32 [ %sub.i.i148, %if.then.i.i149 ], [ %25, %while.end._compound_head.exit.i152_crit_edge ]
  %118 = inttoptr i32 %retval.0.i.i151 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %118, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %119 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp.i.i.i.i = icmp eq i32 %120, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !128

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i152
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %118, ptr noundef nonnull @.str.20) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !178
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i152
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !179
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %121 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !180
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %121, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@gfs2_write_buf_to_page, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !182

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %118, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

unlock_out:                                       ; preds = %wait_on_buffer.exit.unlock_out_crit_edge, %if.then29.unlock_out_crit_edge
  call void @unlock_page(ptr noundef nonnull %call.i) #12
  %122 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %24, align 4
  %and.i.i153 = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i153)
  %tobool.not.i.i154 = icmp eq i32 %and.i.i153, 0
  br i1 %tobool.not.i.i154, label %unlock_out._compound_head.exit.i162_crit_edge, label %if.then.i.i156, !prof !122

unlock_out._compound_head.exit.i162_crit_edge:    ; preds = %unlock_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %_compound_head.exit.i162

if.then.i.i156:                                   ; preds = %unlock_out
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i155 = add i32 %123, -1
  br label %_compound_head.exit.i162

_compound_head.exit.i162:                         ; preds = %if.then.i.i156, %unlock_out._compound_head.exit.i162_crit_edge
  %retval.0.i.i158 = phi i32 [ %sub.i.i155, %if.then.i.i156 ], [ %25, %unlock_out._compound_head.exit.i162_crit_edge ]
  %124 = inttoptr i32 %retval.0.i.i158 to ptr
  %_refcount.i.i.i.i.i159 = getelementptr inbounds %struct.page, ptr %124, i32 0, i32 3
  %call.i.i.i.i.i.i.i160 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i159, i32 noundef 4) #12
  %125 = ptrtoint ptr %_refcount.i.i.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %_refcount.i.i.i.i.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp.i.i.i.i161 = icmp eq i32 %126, 0
  br i1 %cmp.i.i.i.i161, label %if.then.i.i.i.i163, label %do.end5.i.i.i.i167, !prof !128

if.then.i.i.i.i163:                               ; preds = %_compound_head.exit.i162
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %124, ptr noundef nonnull @.str.20) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !178
  unreachable

do.end5.i.i.i.i167:                               ; preds = %_compound_head.exit.i162
  %call.i.i.i10.i.i.i.i164 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i159, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !179
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i159, i32 1, i32 3, i32 1) #12
  %127 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i159, ptr %_refcount.i.i.i.i.i159, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i159) #12, !srcloc !180
  %asmresult.i.i.i.i.i.i.i.i.i.i165 = extractvalue { i32, i32 } %127, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i165)
  %cmp.i.i.i.i.i.i.i166 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i165, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@gfs2_write_buf_to_page, %if.then.i.i.i.i.i169)) #12
          to label %folio_put_testzero.exit.i.i170 [label %if.then.i.i.i.i.i169], !srcloc !182

if.then.i.i.i.i.i169:                             ; preds = %do.end5.i.i.i.i167
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i168 = zext i1 %cmp.i.i.i.i.i.i.i166 to i32
  call void @__page_ref_mod_and_test(ptr noundef %124, i32 noundef -1, i32 noundef %conv.i.i.i.i.i168) #12
  br label %folio_put_testzero.exit.i.i170

folio_put_testzero.exit.i.i170:                   ; preds = %if.then.i.i.i.i.i169, %do.end5.i.i.i.i167
  br i1 %cmp.i.i.i.i.i.i.i166, label %folio_put_testzero.exit.i.i170.cleanup.sink.split_crit_edge, label %folio_put_testzero.exit.i.i170.cleanup_crit_edge

folio_put_testzero.exit.i.i170.cleanup_crit_edge: ; preds = %folio_put_testzero.exit.i.i170
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

folio_put_testzero.exit.i.i170.cleanup.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i170
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %folio_put_testzero.exit.i.i170.cleanup.sink.split_crit_edge, %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %118, %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge ], [ %124, %folio_put_testzero.exit.i.i170.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge ], [ -5, %folio_put_testzero.exit.i.i170.cleanup.sink.split_crit_edge ]
  call void @__put_page(ptr noundef %.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %folio_put_testzero.exit.i.i170.cleanup_crit_edge, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ -5, %folio_put_testzero.exit.i.i170.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_empty_buffers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ll_rw_block(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_add_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_add_meta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gfs2_qd_search_bucket(i32 noundef %hash, ptr noundef readnone %sdp, [2 x i32] %qid.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4096 x %struct.hlist_bl_head], ptr @qd_hash_table, i32 0, i32 %hash
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %2 = load volatile i32, ptr %arrayidx, align 4
  %and1.i.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %entry.hlist_bl_first_rcu.exit_crit_edge

entry.hlist_bl_first_rcu.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_bl_first_rcu.exit

lor.lhs.false.i:                                  ; preds = %entry
  %call2.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.hlist_bl_first_rcu.exit_crit_edge

lor.lhs.false.i.hlist_bl_first_rcu.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_bl_first_rcu.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.hlist_bl_first_rcu.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.hlist_bl_first_rcu.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_bl_first_rcu.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b11.i = load i1, ptr @hlist_bl_first_rcu.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true5.i.hlist_bl_first_rcu.exit_crit_edge, label %if.then.i

land.lhs.true5.i.hlist_bl_first_rcu.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_bl_first_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hlist_bl_first_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 24, ptr noundef nonnull @.str.31) #12
  br label %hlist_bl_first_rcu.exit

hlist_bl_first_rcu.exit:                          ; preds = %if.then.i, %land.lhs.true5.i.hlist_bl_first_rcu.exit_crit_edge, %land.lhs.true.i.hlist_bl_first_rcu.exit_crit_edge, %lor.lhs.false.i.hlist_bl_first_rcu.exit_crit_edge, %entry.hlist_bl_first_rcu.exit_crit_edge
  %3 = ptrtoint ptr %1 to i32
  %and.i = and i32 %3, -2
  %4 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not24 = icmp eq i32 %and.i, 0
  br i1 %tobool.not24, label %hlist_bl_first_rcu.exit.cleanup_crit_edge, label %hlist_bl_first_rcu.exit.for.body_crit_edge

hlist_bl_first_rcu.exit.for.body_crit_edge:       ; preds = %hlist_bl_first_rcu.exit
  br label %for.body

hlist_bl_first_rcu.exit.cleanup_crit_edge:        ; preds = %hlist_bl_first_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %hlist_bl_first_rcu.exit.for.body_crit_edge
  %h.025 = phi ptr [ %12, %for.inc.for.body_crit_edge ], [ %4, %hlist_bl_first_rcu.exit.for.body_crit_edge ]
  %qd_id = getelementptr inbounds %struct.gfs2_quota_data, ptr %h.025, i32 0, i32 2
  %5 = ptrtoint ptr %qd_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack = load i32, ptr %qd_id, align 8
  %6 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt20 = getelementptr inbounds %struct.gfs2_quota_data, ptr %h.025, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %.elt20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack21 = load i32, ptr %.elt20, align 4
  %8 = insertvalue [2 x i32] %6, i32 %.unpack21, 1
  %call3 = tail call zeroext i1 @qid_eq([2 x i32] %8, [2 x i32] %qid.coerce) #12
  br i1 %call3, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %qd_sbd = getelementptr inbounds %struct.gfs2_quota_data, ptr %h.025, i32 0, i32 3
  %9 = ptrtoint ptr %qd_sbd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qd_sbd, align 8
  %cmp.not = icmp eq ptr %10, %sdp
  br i1 %cmp.not, label %if.end5, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end5:                                          ; preds = %if.end
  %qd_lockref = getelementptr inbounds %struct.gfs2_quota_data, ptr %h.025, i32 0, i32 4
  %call6 = tail call i32 @lockref_get_not_dead(ptr noundef %qd_lockref) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.for.inc_crit_edge, label %if.then8

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %qd_lru = getelementptr inbounds %struct.gfs2_quota_data, ptr %h.025, i32 0, i32 5
  %call9 = tail call zeroext i1 @list_lru_del(ptr noundef nonnull @gfs2_qd_lru, ptr noundef %qd_lru) #12
  br label %cleanup

for.inc:                                          ; preds = %if.end5.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %h.025 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %h.025, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then8, %hlist_bl_first_rcu.exit.cleanup_crit_edge
  %h.023 = phi ptr [ %h.025, %if.then8 ], [ %4, %hlist_bl_first_rcu.exit.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %h.023
}

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
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

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
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_consist_inode_i(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_check_ii(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_metatype_check_ii(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_get(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_finish_truncate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_count_node(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !13, !15, !17, !19, !20, !22, !24, !26, !27, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54, !56, !58, !60, !62, !64, !66, !67, !69, !70, !72, !73, !74, !75, !76, !77, !79, !80, !82, !84, !85, !86, !88, !89, !90, !92, !93, !95, !96, !98, !100, !101, !103, !104, !105, !106}
!llvm.named.register.sp = !{!108}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @gfs2_qd_shrinker, !1, !"gfs2_qd_shrinker", i1 false, i1 false}
!1 = !{!"../fs/gfs2/quota.c", i32 186, i32 17}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/gfs2/quota.c", i32 579, i32 6}
!4 = !{ptr @__func__.gfs2_quota_hold, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/gfs2/quota.c", i32 580, i32 6}
!8 = !{ptr @__func__.gfs2_quota_unhold, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/gfs2/quota.c", i32 630, i32 2}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/gfs2/quota.c", i32 1147, i32 3}
!12 = !{ptr @__func__.gfs2_quota_unlock, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/gfs2/quota.c", i32 1234, i32 24}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/gfs2/quota.c", i32 1248, i32 30}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/gfs2/quota.c", i32 1263, i32 6}
!19 = !{ptr @__func__.gfs2_quota_change, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/gfs2/quota.c", i32 1268, i32 6}
!22 = !{ptr @__func__.gfs2_quota_init, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/gfs2/quota.c", i32 1387, i32 7}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/gfs2/quota.c", i32 1437, i32 3}
!26 = !{ptr @gfs2_quota_init._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @gfs2_quota_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/gfs2/quota.c", i32 1466, i32 3}
!30 = !{ptr @__func__.gfs2_quota_cleanup, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/gfs2/quota.c", i32 1467, i32 3}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/gfs2/quota.c", i32 1468, i32 3}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/gfs2/quota.c", i32 1477, i32 2}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/gfs2/quota.c", i32 1558, i32 22}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/gfs2/quota.c", i32 1567, i32 27}
!41 = !{ptr @gfs2_quotactl_ops, !42, !"gfs2_quotactl_ops", i1 false, i1 false}
!42 = !{!"../fs/gfs2/quota.c", i32 1765, i32 27}
!43 = !{ptr @gfs2_qd_lru, !44, !"gfs2_qd_lru", i1 false, i1 false}
!44 = !{!"../fs/gfs2/quota.c", i32 81, i32 17}
!45 = !{ptr @qd_hash_table, !46, !"qd_hash_table", i1 false, i1 false}
!46 = !{!"../fs/gfs2/quota.c", i32 83, i32 29}
!47 = !{ptr @__func__.gfs2_qd_dispose, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/gfs2/quota.c", i32 132, i32 3}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/gfs2/quota.c", i32 80, i32 8}
!51 = !{ptr @qd_lock, !50, !"qd_lock", i1 false, i1 false}
!52 = !{ptr @__func__.bh_get, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/gfs2/quota.c", i32 392, i32 6}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!58 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/buffer_head.h", i32 354, i32 2}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/linux/mm.h", i32 717, i32 2}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!66 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/gfs2/quota.c", i32 486, i32 2}
!69 = !{ptr @__func__.qd_unlock, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/gfs2/quota.c", i32 1173, i32 2}
!72 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @print_message._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @print_message._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/gfs2/quota.c", i32 678, i32 3}
!79 = !{ptr @__func__.do_qc, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @__func__.qd_fish, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/gfs2/quota.c", i32 469, i32 3}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!84 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../include/linux/rculist_bl.h", i32 24, i32 19}
!88 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!92 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @__func__.gfs2_check_internal_file_size, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/gfs2/inode.h", i32 87, i32 2}
!95 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/gfs2/util.h", i32 126, i32 38}
!98 = !{ptr @qd_alloc.__key, !99, !"__key", i1 false, i1 false}
!99 = !{!"../fs/gfs2/quota.c", i32 222, i32 2}
!100 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/gfs2/quota.c", i32 1489, i32 4}
!103 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @quotad_error._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @quotad_error._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.38, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!108 = !{!"sp"}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{i64 2152202087}
!119 = !{!"branch_weights", i32 2146410443, i32 1073205}
!120 = !{i64 2148469631, i64 2148469663, i64 2148469692, i64 2148469726, i64 2148469757, i64 2148469780}
!121 = !{i64 2148558712}
!122 = !{!"branch_weights", i32 2000, i32 1}
!123 = !{i64 2152202247}
!124 = !{i64 2152202524}
!125 = !{i64 2152202366}
!126 = !{i64 2152202729}
!127 = !{i64 2152465490, i64 2152465978, i64 2152465527, i64 2152465583, i64 2152465617, i64 2152465641, i64 2152465682, i64 2152465703, i64 2152465731, i64 2152465765}
!128 = !{!"branch_weights", i32 1, i32 2000}
!129 = !{i64 2152209829, i64 2152210321, i64 2152209866, i64 2152209922, i64 2152209956, i64 2152209980, i64 2152210021, i64 2152210042, i64 2152210070, i64 2152210104}
!130 = !{i64 2148542740}
!131 = !{i64 2152211224}
!132 = !{i64 2148463238, i64 2148463264, i64 2148463293, i64 2148463327, i64 2148463358, i64 2148463381}
!133 = !{i64 2155180209, i64 2155180689, i64 2155180246, i64 2155180302, i64 2155180336, i64 2155180360, i64 2155180401, i64 2155180422, i64 2155180450, i64 2155180484}
!134 = !{i64 2155182030, i64 2155182510, i64 2155182067, i64 2155182123, i64 2155182157, i64 2155182181, i64 2155182222, i64 2155182243, i64 2155182271, i64 2155182305}
!135 = !{i64 2155183979, i64 2155184459, i64 2155184016, i64 2155184072, i64 2155184106, i64 2155184130, i64 2155184171, i64 2155184192, i64 2155184220, i64 2155184254}
!136 = !{!"auto-init"}
!137 = !{i64 2155178570, i64 2155179050, i64 2155178607, i64 2155178663, i64 2155178697, i64 2155178721, i64 2155178762, i64 2155178783, i64 2155178811, i64 2155178845}
!138 = !{i64 2154737852, i64 2154738330, i64 2154737889, i64 2154737945, i64 2154737979, i64 2154738003, i64 2154738044, i64 2154738065, i64 2154738093, i64 2154738127}
!139 = !{i64 2155176749, i64 2155177229, i64 2155176786, i64 2155176842, i64 2155176876, i64 2155176900, i64 2155176941, i64 2155176962, i64 2155176990, i64 2155177024}
!140 = !{i64 2149288287}
!141 = !{i64 2149288553}
!142 = !{i64 2152470353, i64 2152470843, i64 2152470390, i64 2152470446, i64 2152470480, i64 2152470504, i64 2152470545, i64 2152470566, i64 2152470594, i64 2152470628}
!143 = !{i64 2152472063, i64 2152472553, i64 2152472100, i64 2152472156, i64 2152472190, i64 2152472214, i64 2152472255, i64 2152472276, i64 2152472304, i64 2152472338}
!144 = !{i64 2152478267}
!145 = !{i64 2148460773, i64 2148460799, i64 2148460828, i64 2148460862, i64 2148460893, i64 2148460916}
!146 = !{!147}
!147 = distinct !{!147, !148, !"make_kqid: %agg.result"}
!148 = distinct !{!148, !"make_kqid"}
!149 = !{i64 2155207227, i64 2155207708, i64 2155207264, i64 2155207320, i64 2155207354, i64 2155207378, i64 2155207419, i64 2155207440, i64 2155207468, i64 2155207502}
!150 = !{i64 855031, i64 855092}
!151 = !{i64 857763}
!152 = !{i64 858048}
!153 = !{i64 2153143028}
!154 = !{i64 2153142870}
!155 = !{i64 2153143198}
!156 = !{i64 2150215818}
!157 = !{ptr @gfs2_quota_sync, ptr @gfs2_statfs_sync}
!158 = !{i64 2155213827}
!159 = !{i64 970265, i64 970286, i64 970309, i64 970328, i64 970347}
!160 = !{i64 2155214232}
!161 = !{i64 0, i64 755914244009}
!162 = !{i64 2153144959}
!163 = !{i64 2150108070}
!164 = !{i64 2150113004}
!165 = !{i64 2150134722}
!166 = !{i64 2150139616}
!167 = !{i64 2150216143}
!168 = !{i64 2150216468}
!169 = !{i64 2153156821}
!170 = !{i64 2151172457, i64 2151172948, i64 2151172494, i64 2151172550, i64 2151172584, i64 2151172608, i64 2151172649, i64 2151172670, i64 2151172698, i64 2151172732}
!171 = !{i64 2155196473, i64 2155196953, i64 2155196510, i64 2155196566, i64 2155196600, i64 2155196624, i64 2155196665, i64 2155196686, i64 2155196714, i64 2155196748}
!172 = !{i64 2150713751, i64 2150714242, i64 2150713788, i64 2150713844, i64 2150713878, i64 2150713902, i64 2150713943, i64 2150713964, i64 2150713992, i64 2150714026}
!173 = !{i64 2151463643}
!174 = !{i64 2153729578}
!175 = !{i64 2152811333}
!176 = !{i64 2152811540}
!177 = !{i64 2153732349}
!178 = !{i64 2153198442, i64 2153198925, i64 2153198479, i64 2153198535, i64 2153198569, i64 2153198593, i64 2153198634, i64 2153198655, i64 2153198683, i64 2153198717}
!179 = !{i64 2148549225}
!180 = !{i64 2148463958, i64 2148463990, i64 2148464019, i64 2148464053, i64 2148464084, i64 2148464107}
!181 = !{i64 2148549454}
!182 = !{i64 2148274166, i64 2148274171, i64 2148274184, i64 2148274228, i64 2148274262, i64 2148274283}
