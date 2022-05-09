; ModuleID = '/llk/IR_all_yes/fs/gfs2/super.c_pt.bc'
source_filename = "../fs/gfs2/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.gfs2_sbd = type { ptr, ptr, %struct.kobject, %struct.completion, i32, %struct.gfs2_sb_host, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [11 x i64], i32, %struct.gfs2_args, %struct.gfs2_tune, %struct.lm_lockstruct, %struct.gfs2_holder, ptr, ptr, %struct.work_struct, %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.completion, %struct.completion, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, %struct.spinlock, %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host, i32, i32, %struct.spinlock, %struct.rb_root, i32, i32, %struct.list_head, %struct.spinlock, %struct.mutex, i32, ptr, %struct.gfs2_holder, %struct.gfs2_holder, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.completion, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.mutex, %struct.mutex, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i32, ptr, %struct.spinlock, i64, %struct.address_space, %struct.spinlock, ptr, i32, %struct.atomic_t, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, i64, i32, %struct.rw_semaphore, %struct.atomic_t, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.gfs2_holder, %struct.atomic_t, %struct.mutex, [270 x i8], [256 x i8], [256 x i8], i32, ptr, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.gfs2_sb_host = type { i32, i32, i32, i32, i32, i32, %struct.gfs2_inum_host, %struct.gfs2_inum_host, [64 x i8], [64 x i8] }
%struct.gfs2_inum_host = type { i64, i64 }
%struct.gfs2_args = type { [64 x i8], [64 x i8], [64 x i8], i24, i32, i32, i32, i32 }
%struct.gfs2_tune = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lm_lockstruct = type { i32, i32, ptr, ptr, i32, i32, %struct.dlm_lksb, %struct.dlm_lksb, [32 x i8], %struct.completion, ptr, %struct.spinlock, i32, i32, i32, i32, i32, ptr, ptr }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.gfs2_statfs_change_host = type { i64, i64, i64 }
%struct.rb_root = type { ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.gfs2_holder = type { %struct.list_head, ptr, ptr, i16, i16, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.gfs2_jdesc = type { %struct.list_head, %struct.list_head, i32, %struct.work_struct, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.74 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%union.anon.76 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.gfs2_log_header_host = type { i64, i32, i32, i32, i64, i64, i64 }
%struct.gfs2_inode = type { %struct.inode, i64, i64, i64, i64, i32, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.gfs2_blkreserv, i64, %struct.atomic_t, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr, i32, i32, i8, i8, i16 }
%struct.gfs2_blkreserv = type { %struct.rb_node, ptr, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.gfs2_glock = type { i32, %struct.lm_lockname, %struct.lockref, i16, i32, i32, %struct.list_head, ptr, i64, %struct.gfs2_lkstats, %struct.dlm_lksb, i32, ptr, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.anon.82, %struct.callback_head, %struct.rhash_head }
%struct.lm_lockname = type { i64, ptr, i32 }
%struct.lockref = type { %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.spinlock, i32 }
%struct.gfs2_lkstats = type { [8 x i64] }
%struct.anon.82 = type { %struct.delayed_work, i64 }
%struct.rhash_head = type { ptr }
%struct.gfs2_glock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.gfs2_statfs_change = type { i64, i64, i64 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.gfs2_meta_header = type { i32, i32, i64, i32, %union.anon.83 }
%union.anon.83 = type { i32 }
%struct.gfs2_dinode = type { %struct.gfs2_meta_header, %struct.gfs2_inum, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i16, i16, i32, i16, i16, i32, %struct.gfs2_inum, i64, i32, i32, i32, [44 x i8] }
%struct.gfs2_inum = type { i64, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.local_statfs_inode = type { %struct.list_head, ptr, i32 }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.40 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.40 = type { %struct.work_struct }
%struct.gfs2_rgrpd = type { %struct.rb_node, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.rb_root }
%struct.gfs2_qadata = type { [4 x ptr], [4 x %struct.gfs2_holder], i32, i32 }
%struct.lfcc = type { %struct.list_head, %struct.gfs2_holder }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.79, %struct.list_head, %struct.list_head, %union.anon.80 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%union.anon.79 = type { %struct.list_head }
%union.anon.80 = type { %struct.hlist_node }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }

@__func__.gfs2_jdesc_check = private unnamed_addr constant [17 x i8] c"gfs2_jdesc_check\00", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/gfs2/super.c\00", [16 x i8] zeroinitializer }, align 32
@__func__.gfs2_make_fs_rw = private unnamed_addr constant [16 x i8] c"gfs2_make_fs_rw\00", align 1
@gfs2_make_fs_ro._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014gfs2: fsid=%s: The quotad daemon is withdrawing.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gfs2_make_fs_ro\00", [16 x i8] zeroinitializer }, align 32
@gfs2_make_fs_ro._entry_ptr = internal global ptr @gfs2_make_fs_ro._entry, section ".printk_index", align 4
@gfs2_make_fs_ro._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.2, ptr @.str, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014gfs2: fsid=%s: The logd daemon is withdrawing.\0A\00", [46 x i8] zeroinitializer }, align 32
@gfs2_make_fs_ro._entry_ptr.5 = internal global ptr @gfs2_make_fs_ro._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gfs2_log_is_empty(sdp)\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@__func__.gfs2_freeze_func = private unnamed_addr constant [17 x i8] c"gfs2_freeze_func\00", align 1
@gfs2_freeze_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.gfs2_freeze_func, ptr @.str, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016gfs2: fsid=%s: GFS2: couldn't thaw filesystem: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@gfs2_freeze_func._entry_ptr = internal global ptr @gfs2_freeze_func._entry, section ".printk_index", align 4
@gfs2_super_ops = dso_local constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @gfs2_alloc_inode, ptr null, ptr @gfs2_free_inode, ptr @gfs2_dirty_inode, ptr @gfs2_write_inode, ptr @gfs2_drop_inode, ptr @gfs2_evict_inode, ptr @gfs2_put_super, ptr @gfs2_sync_fs, ptr @gfs2_freeze, ptr null, ptr @gfs2_unfreeze, ptr null, ptr @gfs2_statfs, ptr null, ptr null, ptr @gfs2_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__func__.gfs2_check_internal_file_size = private unnamed_addr constant [30 x i8] c"gfs2_check_internal_file_size\00", align 1
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/gfs2/inode.h\00", [16 x i8] zeroinitializer }, align 32
@gfs2_inode_cachep = external dso_local local_unnamed_addr global ptr, align 4
@gfs2_dirty_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013gfs2: fsid=%s: dirty_inode: glock %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gfs2_dirty_inode\00", [47 x i8] zeroinitializer }, align 32
@gfs2_dirty_inode._entry_ptr = internal global ptr @gfs2_dirty_inode._entry, section ".printk_index", align 4
@gfs2_dirty_inode.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@gfs2_dirty_inode._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013gfs2: fsid=%s: dirty_inode: gfs2_trans_begin %d\0A\00", [45 x i8] zeroinitializer }, align 32
@gfs2_dirty_inode._entry_ptr.14 = internal global ptr @gfs2_dirty_inode._entry.12, section ".printk_index", align 4
@gfs2_evict_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 1394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014gfs2: fsid=%s: gfs2_evict_inode: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gfs2_evict_inode\00", [47 x i8] zeroinitializer }, align 32
@gfs2_evict_inode._entry_ptr = internal global ptr @gfs2_evict_inode._entry, section ".printk_index", align 4
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ip->i_qadata->qa_ref == 0\00", [38 x i8] zeroinitializer }, align 32
@evict_should_delete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.gfs2_dinode_dealloc = private unnamed_addr constant [20 x i8] c"gfs2_dinode_dealloc\00", align 1
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@gfs2_freeze._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013gfs2: fsid=%s: waiting for recovery before freeze\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gfs2_freeze\00", [20 x i8] zeroinitializer }, align 32
@gfs2_freeze._entry_ptr = internal global ptr @gfs2_freeze._entry, section ".printk_index", align 4
@gfs2_freeze._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str, i32 707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013gfs2: fsid=%s: Fatal IO error: cannot freeze gfs2 due to recovery error.\0A\00", [52 x i8] zeroinitializer }, align 32
@gfs2_freeze._entry_ptr.23 = internal global ptr @gfs2_freeze._entry.21, section ".printk_index", align 4
@gfs2_freeze._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013gfs2: fsid=%s: error freezing FS: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@gfs2_freeze._entry_ptr.26 = internal global ptr @gfs2_freeze._entry.24, section ".printk_index", align 4
@gfs2_freeze._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str, i32 712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013gfs2: fsid=%s: retrying...\0A\00", [34 x i8] zeroinitializer }, align 32
@gfs2_freeze._entry_ptr.29 = internal global ptr @gfs2_freeze._entry.27, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c",meta\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lockproto\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"locktable\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hostdata\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",spectator\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",localflocks\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",debug\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c",acl\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"account\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",quota=%s\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",suiddir\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"writeback\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",data=%s\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",discard\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",commit=%d\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c",statfs_quantum=%d\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c",statfs_quantum=0\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c",quota_quantum=%d\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c",statfs_percent=%d\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"panic\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",errors=%s\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",nobarrier\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c",demote_interface_used\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",rgrplvb\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",loccookie\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",= \09\0A\\\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c", \09\0A\\\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 13]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 13, i64 4294967266]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967280, i64 4294967291]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 115, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 526, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 532, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 546, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 659, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 664, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant [15 x i8] c"gfs2_super_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1474, i32 31 }
@___asan_gen_.101 = private unnamed_addr constant [19 x i8] c"../fs/gfs2/inode.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 87, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 482, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 493, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1394, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1398, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 98, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 704, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 706, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 710, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 712, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 981, i32 15 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 983, i32 22 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 985, i32 22 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 987, i32 22 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 989, i32 15 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 991, i32 15 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 993, i32 15 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 995, i32 15 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1003, i32 12 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1006, i32 12 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1009, i32 12 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1012, i32 17 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1015, i32 15 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1020, i32 12 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1029, i32 17 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1032, i32 15 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1035, i32 17 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1038, i32 17 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1040, i32 15 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1043, i32 17 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1045, i32 17 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1054, i32 12 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1060, i32 17 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1063, i32 15 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1065, i32 15 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1067, i32 15 }
@___asan_gen_.239 = private constant [19 x i8] c"../fs/gfs2/super.c\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1069, i32 15 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 242, i32 22 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [28 x i8] c"../include/linux/seq_file.h\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 245, i32 24 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @gfs2_dirty_inode._entry, ptr @gfs2_dirty_inode._entry.12, ptr @gfs2_dirty_inode._entry_ptr, ptr @gfs2_dirty_inode._entry_ptr.14, ptr @gfs2_evict_inode._entry, ptr @gfs2_evict_inode._entry_ptr, ptr @gfs2_freeze._entry, ptr @gfs2_freeze._entry.21, ptr @gfs2_freeze._entry.24, ptr @gfs2_freeze._entry.27, ptr @gfs2_freeze._entry_ptr, ptr @gfs2_freeze._entry_ptr.23, ptr @gfs2_freeze._entry_ptr.26, ptr @gfs2_freeze._entry_ptr.29, ptr @gfs2_freeze_func._entry, ptr @gfs2_freeze_func._entry_ptr, ptr @gfs2_make_fs_ro._entry, ptr @gfs2_make_fs_ro._entry.3, ptr @gfs2_make_fs_ro._entry_ptr, ptr @gfs2_make_fs_ro._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @gfs2_super_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_make_fs_ro._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_make_fs_ro._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_freeze_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_super_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_dirty_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_dirty_inode._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_evict_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_freeze._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_freeze._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_freeze._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_freeze._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_jindex_free(ptr noundef %sdp) local_unnamed_addr #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #13
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %list, align 4, !annotation !143
  %1 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !143
  %sd_jindex_spin = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 53
  tail call void @_raw_spin_lock(ptr noundef %sd_jindex_spin) #13
  %sd_jindex_list = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 52
  %3 = ptrtoint ptr %sd_jindex_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sd_jindex_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %list, ptr noundef %sd_jindex_list, ptr noundef %4) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev1.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %list, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sd_jindex_list, ptr %1, align 4
  %8 = ptrtoint ptr %sd_jindex_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %sd_jindex_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  %call.i.i13 = call zeroext i1 @__list_del_entry_valid(ptr noundef %sd_jindex_list) #13
  br i1 %call.i.i13, label %if.end.i.i14, label %list_add.exit.list_del_init.exit_crit_edge

list_add.exit.list_del_init.exit_crit_edge:       ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i14:                                     ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 52, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %sd_jindex_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sd_jindex_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i14, %list_add.exit.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %sd_jindex_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %sd_jindex_list, ptr %sd_jindex_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 52, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sd_jindex_list, ptr %prev.i3.i, align 4
  %sd_journals = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 55
  %17 = ptrtoint ptr %sd_journals to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %sd_journals, align 8
  call void @_raw_spin_unlock(ptr noundef %sd_jindex_spin) #13
  %sd_jdesc = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %18 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %sd_jdesc, align 4
  %19 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %list, align 4
  %cmp.i.not19 = icmp eq ptr %20, %list
  br i1 %cmp.i.not19, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %list_del_init.exit.while.body_crit_edge
  %21 = phi ptr [ %34, %list_del.exit.while.body_crit_edge ], [ %20, %list_del_init.exit.while.body_crit_edge ]
  call void @gfs2_free_journal_extents(ptr noundef %21) #13
  %call.i.i15 = call zeroext i1 @__list_del_entry_valid(ptr noundef %21) #13
  br i1 %call.i.i15, label %if.end.i.i18, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i18:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i16 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i16, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %prev1.i.i.i17 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i17, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i18, %while.body.list_del.exit_crit_edge
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %jd_inode = getelementptr inbounds %struct.gfs2_jdesc, ptr %21, i32 0, i32 4
  %30 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %jd_inode, align 8
  call void @iput(ptr noundef %31) #13
  %32 = ptrtoint ptr %jd_inode to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %jd_inode, align 8
  call void @kfree(ptr noundef %21) #13
  %33 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %34, %list
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %list_del_init.exit.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_free_journal_extents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gfs2_jdesc_find(ptr noundef %sdp, i32 noundef %jid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_jindex_spin = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 53
  tail call void @_raw_spin_lock(ptr noundef %sd_jindex_spin) #13
  %sd_jindex_list = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 52
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %jd.0.in.i = phi ptr [ %sd_jindex_list, %entry ], [ %jd.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %jd.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %jd.0.i = load ptr, ptr %jd.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %jd.0.i, %sd_jindex_list
  br i1 %cmp.not.i, label %for.cond.i.jdesc_find_i.exit_crit_edge, label %for.body.i

for.cond.i.jdesc_find_i.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %jdesc_find_i.exit

for.body.i:                                       ; preds = %for.cond.i
  %jd_jid.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd.0.i, i32 0, i32 7
  %1 = ptrtoint ptr %jd_jid.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %jd_jid.i, align 4
  %cmp1.i = icmp eq i32 %2, %jid
  br i1 %cmp1.i, label %for.body.i.jdesc_find_i.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

for.body.i.jdesc_find_i.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %jdesc_find_i.exit

jdesc_find_i.exit:                                ; preds = %for.body.i.jdesc_find_i.exit_crit_edge, %for.cond.i.jdesc_find_i.exit_crit_edge
  %retval.0.i = phi ptr [ %jd.0.i, %for.body.i.jdesc_find_i.exit_crit_edge ], [ null, %for.cond.i.jdesc_find_i.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %sd_jindex_spin) #13
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_jdesc_check(ptr nocapture noundef %jd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %jd_inode = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 4
  %0 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jd_inode, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %call4 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  %6 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %jd_inode, align 8
  %call.i = tail call fastcc i64 @i_size_read(ptr noundef %7) #13
  %8 = add i64 %call.i, -1073741825
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1065353217, i64 %8)
  %9 = icmp ult i64 %8, -1065353217
  br i1 %9, label %entry.gfs2_check_internal_file_size.exit_crit_edge, label %if.end.i

entry.gfs2_check_internal_file_size.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %gfs2_check_internal_file_size.exit

gfs2_check_internal_file_size.exit:               ; preds = %if.end.i.gfs2_check_internal_file_size.exit_crit_edge, %entry.gfs2_check_internal_file_size.exit_crit_edge
  tail call void @gfs2_consist_inode_i(ptr noundef %7, ptr noundef nonnull @__func__.gfs2_check_internal_file_size, ptr noundef nonnull @.str.9, i32 noundef 87) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %sb_bsize_shift = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 5, i32 5
  %12 = ptrtoint ptr %sb_bsize_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sb_bsize_shift, align 4
  %sh_prom = zext i32 %13 to i64
  %shr = lshr i64 %call4, %sh_prom
  %conv = trunc i64 %shr to i32
  %jd_blocks = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 8
  %14 = ptrtoint ptr %jd_blocks to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %jd_blocks, align 8
  %conv7 = trunc i64 %call4 to i32
  %call8 = tail call i32 @gfs2_write_alloc_required(ptr noundef %1, i64 noundef 0, i32 noundef %conv7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.then10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @gfs2_consist_inode_i(ptr noundef %1, ptr noundef nonnull @__func__.gfs2_jdesc_check, ptr noundef nonnull @.str, i32 noundef 115) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.cleanup_crit_edge, %gfs2_check_internal_file_size.exit
  %retval.0 = phi i32 [ -5, %if.then10 ], [ -5, %gfs2_check_internal_file_size.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !144
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  %1 = tail call ptr @llvm.returnaddress(i32 0) #13
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #13
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #13
  tail call void @trace_hardirqs_on() #13
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %3 = tail call ptr @llvm.returnaddress(i32 0) #13
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #13
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #13
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !145
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !146

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #13, !srcloc !147
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !148
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !149
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !150
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !151
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_write_alloc_required(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_consist_inode_i(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_make_fs_rw(ptr noundef %sdp) local_unnamed_addr #0 align 64 {
entry:
  %head = alloca %struct.gfs2_log_header_host, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_jdesc = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %0 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_jdesc, align 4
  %jd_inode = getelementptr inbounds %struct.gfs2_jdesc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jd_inode, align 8
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_gl, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %head) #13
  %6 = call ptr @memset(ptr %head, i32 255, i32 48)
  %gl_ops = getelementptr inbounds %struct.gfs2_glock, ptr %5, i32 0, i32 7
  %7 = ptrtoint ptr %gl_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gl_ops, align 4
  %go_inval = getelementptr inbounds %struct.gfs2_glock_operations, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %go_inval to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %go_inval, align 4
  tail call void %10(ptr noundef %5, i32 noundef 32) #13
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  %11 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %sd_flags.i, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %gfs2_withdrawn.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

gfs2_withdrawn.exit:                              ; preds = %entry
  %14 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %sd_flags.i, align 4
  %16 = and i32 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool3.i.not = icmp eq i32 %16, 0
  br i1 %tobool3.i.not, label %if.end, label %gfs2_withdrawn.exit.cleanup_crit_edge

gfs2_withdrawn.exit.cleanup_crit_edge:            ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %gfs2_withdrawn.exit
  %17 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sd_jdesc, align 4
  %call3 = call i32 @gfs2_find_jhead(ptr noundef %18, ptr noundef nonnull %head, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %19 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %sd_flags.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i32 = icmp eq i32 %21, 0
  br i1 %tobool.not.i32, label %gfs2_withdrawn.exit35, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

gfs2_withdrawn.exit35:                            ; preds = %lor.lhs.false
  %22 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %sd_flags.i, align 4
  %24 = and i32 %23, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool3.i33.not = icmp eq i32 %24, 0
  br i1 %tobool3.i33.not, label %if.end6, label %gfs2_withdrawn.exit35.cleanup_crit_edge

gfs2_withdrawn.exit35.cleanup_crit_edge:          ; preds = %gfs2_withdrawn.exit35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %gfs2_withdrawn.exit35
  %lh_flags = getelementptr inbounds %struct.gfs2_log_header_host, ptr %head, i32 0, i32 1
  %25 = ptrtoint ptr %lh_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lh_flags, align 8
  %and = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  call void @gfs2_consist_i(ptr noundef %sdp, ptr noundef nonnull @__func__.gfs2_make_fs_rw, ptr noundef nonnull @.str, i32 noundef 145) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %27 = ptrtoint ptr %head to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %head, align 8
  %add = add i64 %28, 1
  %sd_log_sequence = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 93
  %29 = ptrtoint ptr %sd_log_sequence to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %add, ptr %sd_log_sequence, align 8
  %lh_blkno = getelementptr inbounds %struct.gfs2_log_header_host, ptr %head, i32 0, i32 3
  %30 = ptrtoint ptr %lh_blkno to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lh_blkno, align 8
  %inc.i = add i32 %31, 1
  %32 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sd_jdesc, align 4
  %jd_blocks.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %jd_blocks.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %jd_blocks.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %35)
  %cmp.i = icmp eq i32 %inc.i, %35
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i
  %sd_log_tail.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 100
  %36 = ptrtoint ptr %sd_log_tail.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.store.select.i, ptr %sd_log_tail.i, align 4
  %sd_log_flush_tail.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 101
  %37 = ptrtoint ptr %sd_log_flush_tail.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.store.select.i, ptr %sd_log_flush_tail.i, align 8
  %sd_log_head.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 102
  %38 = ptrtoint ptr %sd_log_head.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %spec.store.select.i, ptr %sd_log_head.i, align 4
  %call10 = call i32 @gfs2_quota_init(ptr noundef %sdp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end9
  %39 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %sd_flags.i, align 4
  %41 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i37 = icmp eq i32 %41, 0
  br i1 %tobool.not.i37, label %gfs2_withdrawn.exit40, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

gfs2_withdrawn.exit40:                            ; preds = %land.lhs.true
  %42 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %sd_flags.i, align 4
  %44 = and i32 %43, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool3.i38.not = icmp eq i32 %44, 0
  br i1 %tobool3.i38.not, label %if.then13, label %gfs2_withdrawn.exit40.cleanup_crit_edge

gfs2_withdrawn.exit40.cleanup_crit_edge:          ; preds = %gfs2_withdrawn.exit40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then13:                                        ; preds = %gfs2_withdrawn.exit40
  call void @__sanitizer_cov_trace_pc() #15
  call void @_set_bit(i32 noundef 1, ptr noundef %sd_flags.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %gfs2_withdrawn.exit40.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then8, %gfs2_withdrawn.exit35.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %gfs2_withdrawn.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then8 ], [ -5, %gfs2_withdrawn.exit.cleanup_crit_edge ], [ 0, %gfs2_withdrawn.exit35.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %gfs2_withdrawn.exit40.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %head) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_find_jhead(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_consist_i(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_quota_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @gfs2_statfs_change_in(ptr nocapture noundef writeonly %sc, ptr nocapture noundef readonly %buf) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %buf, align 8
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %sc, align 8
  %sc_free = getelementptr inbounds %struct.gfs2_statfs_change, ptr %buf, i32 0, i32 1
  %3 = ptrtoint ptr %sc_free to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %sc_free, align 8
  %sc_free2 = getelementptr inbounds %struct.gfs2_statfs_change_host, ptr %sc, i32 0, i32 1
  %5 = ptrtoint ptr %sc_free2 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %sc_free2, align 8
  %sc_dinodes = getelementptr inbounds %struct.gfs2_statfs_change, ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %sc_dinodes to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sc_dinodes, align 8
  %sc_dinodes3 = getelementptr inbounds %struct.gfs2_statfs_change_host, ptr %sc, i32 0, i32 2
  %8 = ptrtoint ptr %sc_dinodes3 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %sc_dinodes3, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @gfs2_statfs_change_out(ptr nocapture noundef readonly %sc, ptr nocapture noundef writeonly %buf) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sc, align 8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %buf, align 8
  %sc_free = getelementptr inbounds %struct.gfs2_statfs_change_host, ptr %sc, i32 0, i32 1
  %3 = ptrtoint ptr %sc_free to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %sc_free, align 8
  %sc_free2 = getelementptr inbounds %struct.gfs2_statfs_change, ptr %buf, i32 0, i32 1
  %5 = ptrtoint ptr %sc_free2 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %sc_free2, align 8
  %sc_dinodes = getelementptr inbounds %struct.gfs2_statfs_change_host, ptr %sc, i32 0, i32 2
  %6 = ptrtoint ptr %sc_dinodes to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sc_dinodes, align 8
  %sc_dinodes3 = getelementptr inbounds %struct.gfs2_statfs_change, ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %sc_dinodes3 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %sc_dinodes3, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_statfs_init(ptr noundef %sdp) local_unnamed_addr #0 align 64 {
entry:
  %m_bh = alloca ptr, align 4
  %gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_statfs_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 37
  %0 = ptrtoint ptr %sd_statfs_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_statfs_inode, align 8
  %sd_statfs_master = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 44
  %sd_statfs_local = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m_bh) #13
  %2 = ptrtoint ptr %m_bh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %m_bh, align 4, !annotation !143
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gh) #13
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %3 = call ptr @memset(ptr %gh, i32 255, i32 32)
  %4 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_gl, align 4
  %6 = tail call ptr @llvm.returnaddress(i32 0) #13
  %7 = ptrtoint ptr %6 to i32
  call void @__gfs2_holder_init(ptr noundef %5, i32 noundef 1, i16 noundef zeroext 1024, ptr noundef nonnull %gh, i32 noundef %7) #13
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %gfs2_glock_nq_init.exit

gfs2_glock_nq_init.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_no_addr.i = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_no_addr.i, align 8
  %call.i33 = call i32 @gfs2_meta_buffer(ptr noundef %1, i32 noundef 4, i64 noundef %9, ptr noundef nonnull %m_bh) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool3.not = icmp eq i32 %call.i33, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end5:                                          ; preds = %if.end
  %ar_spectator = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 21, i32 3
  %10 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %ar_spectator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool6.not = icmp sgt i32 %bf.load, -1
  %sd_statfs_spin9 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 43
  call void @_raw_spin_lock(ptr noundef %sd_statfs_spin9) #13
  %11 = ptrtoint ptr %m_bh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m_bh, align 4
  %b_data10 = getelementptr inbounds %struct.buffer_head, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %b_data10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data10, align 4
  %add.ptr11 = getelementptr i8, ptr %14, i32 232
  %15 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr11, align 8
  %17 = ptrtoint ptr %sd_statfs_master to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %sd_statfs_master, align 8
  %sc_free.i34 = getelementptr i8, ptr %14, i32 240
  %18 = ptrtoint ptr %sc_free.i34 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %sc_free.i34, align 8
  %sc_free2.i35 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 44, i32 1
  %20 = ptrtoint ptr %sc_free2.i35 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %sc_free2.i35, align 8
  %sc_dinodes.i36 = getelementptr i8, ptr %14, i32 248
  %21 = ptrtoint ptr %sc_dinodes.i36 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %sc_dinodes.i36, align 8
  %sc_dinodes3.i37 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 44, i32 2
  %23 = ptrtoint ptr %sc_dinodes3.i37 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %sc_dinodes3.i37, align 8
  br i1 %tobool6.not, label %if.else, label %if.end5.if.end15_crit_edge

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %sd_sc_bh = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 61
  %24 = ptrtoint ptr %sd_sc_bh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sd_sc_bh, align 4
  %b_data12 = getelementptr inbounds %struct.buffer_head, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %b_data12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_data12, align 4
  %add.ptr13 = getelementptr i8, ptr %27, i32 232
  %28 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %add.ptr13, align 8
  %30 = ptrtoint ptr %sd_statfs_local to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %sd_statfs_local, align 8
  %sc_free.i38 = getelementptr i8, ptr %27, i32 240
  %31 = ptrtoint ptr %sc_free.i38 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %sc_free.i38, align 8
  %sc_free2.i39 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 45, i32 1
  %33 = ptrtoint ptr %sc_free2.i39 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %sc_free2.i39, align 8
  %sc_dinodes.i40 = getelementptr i8, ptr %27, i32 248
  %34 = ptrtoint ptr %sc_dinodes.i40 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %sc_dinodes.i40, align 8
  %sc_dinodes3.i41 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 45, i32 2
  %36 = ptrtoint ptr %sc_dinodes3.i41 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %sc_dinodes3.i41, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end5.if.end15_crit_edge
  call void @_raw_spin_unlock(ptr noundef %sd_statfs_spin9) #13
  %37 = ptrtoint ptr %m_bh to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %m_bh, align 4
  %tobool.not.i42 = icmp eq ptr %38, null
  br i1 %tobool.not.i42, label %if.end15.out_crit_edge, label %if.then.i43

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then.i43:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %38) #13
  br label %out

out:                                              ; preds = %if.then.i43, %if.end15.out_crit_edge, %if.end.out_crit_edge
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %gh) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %gfs2_glock_nq_init.exit
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gh) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m_bh) #13
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_dq_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_statfs_change(ptr noundef %sdp, i64 noundef %total, i64 noundef %free, i64 noundef %dinodes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_sc_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 38
  %0 = ptrtoint ptr %sd_sc_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_sc_inode, align 4
  %sd_statfs_local = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 45
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_gl, align 4
  %sd_sc_bh = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 61
  %4 = ptrtoint ptr %sd_sc_bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_sc_bh, align 4
  tail call void @gfs2_trans_add_meta(ptr noundef %3, ptr noundef %5) #13
  %sd_statfs_spin = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 43
  tail call void @_raw_spin_lock(ptr noundef %sd_statfs_spin) #13
  %6 = ptrtoint ptr %sd_statfs_local to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sd_statfs_local, align 8
  %add = add i64 %7, %total
  store i64 %add, ptr %sd_statfs_local, align 8
  %sc_free = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 45, i32 1
  %8 = ptrtoint ptr %sc_free to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sc_free, align 8
  %add1 = add i64 %9, %free
  store i64 %add1, ptr %sc_free, align 8
  %sc_dinodes = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 45, i32 2
  %10 = ptrtoint ptr %sc_dinodes to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sc_dinodes, align 8
  %add2 = add i64 %11, %dinodes
  store i64 %add2, ptr %sc_dinodes, align 8
  %12 = ptrtoint ptr %sd_sc_bh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sd_sc_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 232
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %add, ptr %add.ptr, align 8
  %17 = load i64, ptr %sc_free, align 8
  %sc_free2.i = getelementptr i8, ptr %15, i32 240
  %18 = ptrtoint ptr %sc_free2.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %sc_free2.i, align 8
  %19 = load i64, ptr %sc_dinodes, align 8
  %sc_dinodes3.i = getelementptr i8, ptr %15, i32 248
  %20 = ptrtoint ptr %sc_dinodes3.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %sc_dinodes3.i, align 8
  %ar_statfs_percent = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 21, i32 7
  %21 = ptrtoint ptr %ar_statfs_percent to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ar_statfs_percent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then:                                          ; preds = %entry
  %23 = ptrtoint ptr %sc_free to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %sc_free, align 8
  %mul = mul i64 %24, 100
  %sc_free5 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 44, i32 1
  %25 = ptrtoint ptr %sc_free5 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %sc_free5, align 8
  %conv = sext i32 %22 to i64
  %mul8 = mul i64 %26, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %mul8)
  %cmp.not = icmp slt i64 %mul, %mul8
  %sub = sub i64 0, %mul8
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %sub)
  %cmp10.not = icmp sgt i64 %mul, %sub
  %or.cond = and i1 %cmp.not, %cmp10.not
  br i1 %or.cond, label %if.then.if.end13_crit_edge, label %if.then16.critedge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.end13:                                         ; preds = %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_statfs_spin) #13
  br label %if.end17

if.then16.critedge:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %sd_statfs_spin) #13
  tail call void @gfs2_wake_up_statfs(ptr noundef %sdp) #13
  br label %if.end17

if.end17:                                         ; preds = %if.then16.critedge, %if.end13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_add_meta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_wake_up_statfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_statfs(ptr noundef %sdp, ptr noundef %m_bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_statfs_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 37
  %0 = ptrtoint ptr %sd_statfs_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_statfs_inode, align 8
  %sd_sc_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 38
  %2 = ptrtoint ptr %sd_sc_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_sc_inode, align 4
  %sd_statfs_master = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 44
  %sd_statfs_local = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 45
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_gl, align 4
  %sd_sc_bh = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 61
  %6 = ptrtoint ptr %sd_sc_bh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_sc_bh, align 4
  tail call void @gfs2_trans_add_meta(ptr noundef %5, ptr noundef %7) #13
  %i_gl2 = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %i_gl2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_gl2, align 4
  tail call void @gfs2_trans_add_meta(ptr noundef %9, ptr noundef %m_bh) #13
  %sd_statfs_spin = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 43
  tail call void @_raw_spin_lock(ptr noundef %sd_statfs_spin) #13
  %10 = ptrtoint ptr %sd_statfs_local to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sd_statfs_local, align 8
  %12 = ptrtoint ptr %sd_statfs_master to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sd_statfs_master, align 8
  %add = add i64 %13, %11
  store i64 %add, ptr %sd_statfs_master, align 8
  %sc_free = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 45, i32 1
  %14 = ptrtoint ptr %sc_free to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sc_free, align 8
  %sc_free4 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 44, i32 1
  %16 = ptrtoint ptr %sc_free4 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %sc_free4, align 8
  %add5 = add i64 %17, %15
  store i64 %add5, ptr %sc_free4, align 8
  %sc_dinodes = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 45, i32 2
  %18 = ptrtoint ptr %sc_dinodes to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %sc_dinodes, align 8
  %sc_dinodes6 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 44, i32 2
  %20 = ptrtoint ptr %sc_dinodes6 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %sc_dinodes6, align 8
  %add7 = add i64 %21, %19
  store i64 %add7, ptr %sc_dinodes6, align 8
  %22 = call ptr @memset(ptr %sd_statfs_local, i32 0, i32 24)
  %23 = ptrtoint ptr %sd_sc_bh to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sd_sc_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 232
  %27 = call ptr @memset(ptr %add.ptr, i32 0, i32 24)
  %b_data9 = getelementptr inbounds %struct.buffer_head, ptr %m_bh, i32 0, i32 5
  %28 = ptrtoint ptr %b_data9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_data9, align 4
  %add.ptr10 = getelementptr i8, ptr %29, i32 232
  %30 = load i64, ptr %sd_statfs_master, align 8
  %31 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %add.ptr10, align 8
  %32 = load i64, ptr %sc_free4, align 8
  %sc_free2.i = getelementptr i8, ptr %29, i32 240
  %33 = ptrtoint ptr %sc_free2.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %sc_free2.i, align 8
  %34 = load i64, ptr %sc_dinodes6, align 8
  %sc_dinodes3.i = getelementptr i8, ptr %29, i32 248
  %35 = ptrtoint ptr %sc_dinodes3.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %sc_dinodes3.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %sd_statfs_spin) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_statfs_sync(ptr nocapture noundef readonly %sb, i32 %type) local_unnamed_addr #0 align 64 {
entry:
  %gh = alloca %struct.gfs2_holder, align 4
  %m_bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %sd_statfs_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %sd_statfs_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_statfs_inode, align 8
  %sd_statfs_master = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 44
  %sd_statfs_local = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gh) #13
  %4 = call ptr @memset(ptr %gh, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m_bh) #13
  %5 = ptrtoint ptr %m_bh to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %m_bh, align 4, !annotation !143
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_gl, align 4
  %8 = tail call ptr @llvm.returnaddress(i32 0) #13
  %9 = ptrtoint ptr %8 to i32
  call void @__gfs2_holder_init(ptr noundef %7, i32 noundef 1, i16 noundef zeroext 1024, ptr noundef nonnull %gh, i32 noundef %9) #13
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %gfs2_glock_nq_init.exit

gfs2_glock_nq_init.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh) #13
  br label %out

if.end:                                           ; preds = %entry
  %i_no_addr.i = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_no_addr.i, align 8
  %call.i33 = call i32 @gfs2_meta_buffer(ptr noundef %3, i32 noundef 4, i64 noundef %11, ptr noundef nonnull %m_bh) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool3.not = icmp eq i32 %call.i33, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end5:                                          ; preds = %if.end
  %sd_statfs_spin = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 43
  call void @_raw_spin_lock(ptr noundef %sd_statfs_spin) #13
  %12 = ptrtoint ptr %m_bh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 232
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr, align 8
  %18 = ptrtoint ptr %sd_statfs_master to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %sd_statfs_master, align 8
  %sc_free.i = getelementptr i8, ptr %15, i32 240
  %19 = ptrtoint ptr %sc_free.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %sc_free.i, align 8
  %sc_free2.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 44, i32 1
  %21 = ptrtoint ptr %sc_free2.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %sc_free2.i, align 8
  %sc_dinodes.i = getelementptr i8, ptr %15, i32 248
  %22 = ptrtoint ptr %sc_dinodes.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %sc_dinodes.i, align 8
  %sc_dinodes3.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 44, i32 2
  %24 = ptrtoint ptr %sc_dinodes3.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %sc_dinodes3.i, align 8
  %25 = ptrtoint ptr %sd_statfs_local to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %sd_statfs_local, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %tobool6.not = icmp eq i64 %26, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end5
  %sc_free = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 45, i32 1
  %27 = ptrtoint ptr %sc_free to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %sc_free, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %tobool7.not = icmp eq i64 %28, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

land.lhs.true8:                                   ; preds = %land.lhs.true
  %sc_dinodes = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 45, i32 2
  %29 = ptrtoint ptr %sc_dinodes to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %sc_dinodes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool9.not = icmp eq i64 %30, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true8.if.end12_crit_edge

land.lhs.true8.if.end12_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_unlock(ptr noundef %sd_statfs_spin) #13
  br label %out_bh

if.end12:                                         ; preds = %land.lhs.true8.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  call void @_raw_spin_unlock(ptr noundef %sd_statfs_spin) #13
  %call14 = call i32 @gfs2_trans_begin(ptr noundef %1, i32 noundef 2, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.out_bh_crit_edge

if.end12.out_bh_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_bh

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %m_bh to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %m_bh, align 4
  %33 = ptrtoint ptr %sd_statfs_inode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sd_statfs_inode, align 8
  %sd_sc_inode.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 38
  %35 = ptrtoint ptr %sd_sc_inode.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sd_sc_inode.i, align 4
  %i_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_gl.i, align 4
  %sd_sc_bh.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 61
  %39 = ptrtoint ptr %sd_sc_bh.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sd_sc_bh.i, align 4
  call void @gfs2_trans_add_meta(ptr noundef %38, ptr noundef %40) #13
  %i_gl2.i = getelementptr inbounds %struct.gfs2_inode, ptr %34, i32 0, i32 6
  %41 = ptrtoint ptr %i_gl2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_gl2.i, align 4
  call void @gfs2_trans_add_meta(ptr noundef %42, ptr noundef %32) #13
  call void @_raw_spin_lock(ptr noundef %sd_statfs_spin) #13
  %43 = ptrtoint ptr %sd_statfs_local to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %sd_statfs_local, align 8
  %45 = ptrtoint ptr %sd_statfs_master to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %sd_statfs_master, align 8
  %add.i = add i64 %46, %44
  store i64 %add.i, ptr %sd_statfs_master, align 8
  %sc_free.i34 = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 45, i32 1
  %47 = ptrtoint ptr %sc_free.i34 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %sc_free.i34, align 8
  %49 = ptrtoint ptr %sc_free2.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %sc_free2.i, align 8
  %add5.i = add i64 %50, %48
  store i64 %add5.i, ptr %sc_free2.i, align 8
  %sc_dinodes.i35 = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 45, i32 2
  %51 = ptrtoint ptr %sc_dinodes.i35 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %sc_dinodes.i35, align 8
  %53 = ptrtoint ptr %sc_dinodes3.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %sc_dinodes3.i, align 8
  %add7.i = add i64 %54, %52
  store i64 %add7.i, ptr %sc_dinodes3.i, align 8
  %55 = call ptr @memset(ptr %sd_statfs_local, i32 0, i32 24)
  %56 = ptrtoint ptr %sd_sc_bh.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sd_sc_bh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %59, i32 232
  %60 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 24)
  %b_data9.i = getelementptr inbounds %struct.buffer_head, ptr %32, i32 0, i32 5
  %61 = ptrtoint ptr %b_data9.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b_data9.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %62, i32 232
  %63 = load i64, ptr %sd_statfs_master, align 8
  %64 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %add.ptr10.i, align 8
  %65 = load i64, ptr %sc_free2.i, align 8
  %sc_free2.i.i = getelementptr i8, ptr %62, i32 240
  %66 = ptrtoint ptr %sc_free2.i.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %sc_free2.i.i, align 8
  %67 = load i64, ptr %sc_dinodes3.i, align 8
  %sc_dinodes3.i.i = getelementptr i8, ptr %62, i32 248
  %68 = ptrtoint ptr %sc_dinodes3.i.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %sc_dinodes3.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %sd_statfs_spin) #13
  %sd_statfs_force_sync = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 46
  %69 = ptrtoint ptr %sd_statfs_force_sync to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %sd_statfs_force_sync, align 8
  call void @gfs2_trans_end(ptr noundef %1) #13
  br label %out_bh

out_bh:                                           ; preds = %if.end17, %if.end12.out_bh_crit_edge, %if.then10
  %error.0 = phi i32 [ %call14, %if.end12.out_bh_crit_edge ], [ 0, %if.end17 ], [ 0, %if.then10 ]
  %70 = ptrtoint ptr %m_bh to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %m_bh, align 4
  %tobool.not.i36 = icmp eq ptr %71, null
  br i1 %tobool.not.i36, label %out_bh.out_unlock_crit_edge, label %if.then.i37

out_bh.out_unlock_crit_edge:                      ; preds = %out_bh
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.then.i37:                                      ; preds = %out_bh
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %71) #13
  br label %out_unlock

out_unlock:                                       ; preds = %if.then.i37, %out_bh.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  %error.1 = phi i32 [ %call.i33, %if.end.out_unlock_crit_edge ], [ %error.0, %out_bh.out_unlock_crit_edge ], [ %error.0, %if.then.i37 ]
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %gh) #13
  br label %out

out:                                              ; preds = %out_unlock, %gfs2_glock_nq_init.exit
  %error.2 = phi i32 [ %call.i, %gfs2_glock_nq_init.exit ], [ %error.1, %out_unlock ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m_bh) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gh) #13
  ret i32 %error.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_trans_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_dinode_out(ptr noundef %ip, ptr noundef writeonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 18225520, ptr %buf, align 8
  %mh_type = getelementptr inbounds %struct.gfs2_meta_header, ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %mh_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %mh_type, align 4
  %mh_format = getelementptr inbounds %struct.gfs2_meta_header, ptr %buf, i32 0, i32 3
  %2 = ptrtoint ptr %mh_format to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 400, ptr %mh_format, align 8
  %i_no_addr = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 1
  %3 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %i_no_addr, align 8
  %di_num = getelementptr inbounds %struct.gfs2_dinode, ptr %buf, i32 0, i32 1
  %no_addr = getelementptr inbounds %struct.gfs2_dinode, ptr %buf, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %no_addr to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %no_addr, align 8
  %i_no_formal_ino = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 2
  %6 = ptrtoint ptr %i_no_formal_ino to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_no_formal_ino, align 8
  %8 = ptrtoint ptr %di_num to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %di_num, align 8
  %9 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ip, align 8
  %conv = zext i16 %10 to i32
  %di_mode = getelementptr inbounds %struct.gfs2_dinode, ptr %buf, i32 0, i32 2
  %11 = ptrtoint ptr %di_mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %di_mode, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 53
  %14 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 2
  %16 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %17 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = tail call i32 @from_kuid(ptr noundef %15, [1 x i32] %17) #13
  %di_uid = getelementptr inbounds %struct.gfs2_dinode, ptr %buf, i32 0, i32 3
  %18 = ptrtoint ptr %di_uid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call1.i, ptr %di_uid, align 4
  %19 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i83 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 53
  %21 = ptrtoint ptr %s_user_ns.i.i83 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_user_ns.i.i83, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 3
  %23 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack.i84 = load i32, ptr %i_gid.i, align 8
  %24 = insertvalue [1 x i32] undef, i32 %.unpack.i84, 0
  %call1.i85 = tail call i32 @from_kgid(ptr noundef %22, [1 x i32] %24) #13
  %di_gid = getelementptr inbounds %struct.gfs2_dinode, ptr %buf, i32 0, i32 4
  %25 = ptrtoint ptr %di_gid to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call1.i85, ptr %di_gid, align 8
  %26 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 12
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %di_nlink = getelementptr inbounds %struct.gfs2_dinode, ptr %buf, i32 0, i32 5
  %29 = ptrtoint ptr %di_nlink to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %di_nlink, align 4
  %call9 = tail call fastcc i64 @i_size_read(ptr noundef %ip)
  %di_size = getelementptr inbounds %struct.gfs2_dinode, ptr %buf, i32 0, i32 6
  %30 = ptrtoint ptr %di_size to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %call9, ptr %di_size, align 8
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 22
  %31 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_blocks.i, align 8
  %33 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 33
  %35 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info.i.i, align 16
  %sb_bsize_shift.i = getelementptr inbounds %struct.gfs2_sbd, ptr %36, i32 0, i32 5, i32 5
  %37 = ptrtoint ptr %sb_bsize_shift.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sb_bsize_shift.i, align 4
  %sub.i = add i32 %38, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %32, %sh_prom.i
  %di_blocks = getelementptr inbounds %struct.gfs2_dinode, ptr %buf, i32 0, i32 7
  %39 = ptrtoint ptr %di_blocks to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %shr.i, ptr %di_blocks, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 15
  %40 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %i_atime, align 8
  %di_atime = getelementptr inbounds %struct.gfs2_dinode, ptr %buf, i32 0, i32 8
  %42 = ptrtoint ptr %di_atime to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %di_atime, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 16
  %43 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %i_mtime, align 8
  %di_mtime = getelementptr inbounds %struct.gfs2_dinode, ptr %buf, i32 0, i32 9
  %45 = ptrtoint ptr %di_mtime to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %di_mtime, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 17
  %46 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %i_ctime, align 8
  %di_ctime = getelementptr inbounds %struct.gfs2_dinode, ptr %buf, i32 0, i32 10
  %48 = ptrtoint ptr %di_ctime to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %di_ctime, align 8
  %i_goal = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 11
  %49 = ptrtoint ptr %i_goal to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %i_goal, align 8
  %di_goal_meta = getelementptr inbounds %struct.gfs2_dinode, ptr %buf, i32 0, i32 13
  %51 = ptrtoint ptr %di_goal_meta to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %di_goal_meta, align 8
  %52 = load i64, ptr %i_goal, align 8
  %di_goal_data = getelementptr inbounds %struct.gfs2_dinode, ptr %buf, i32 0, i32 14
  %53 = ptrtoint ptr %di_goal_data to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %di_goal_data, align 8
  %i_generation = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 3
  %54 = ptrtoint ptr %i_generation to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %i_generation, align 8
  %di_generation = getelementptr inbounds %struct.gfs2_dinode, ptr %buf, i32 0, i32 15
  %56 = ptrtoint ptr %di_generation to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %di_generation, align 8
  %i_diskflags = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 18
  %57 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %i_diskflags, align 4
  %di_flags = getelementptr inbounds %struct.gfs2_dinode, ptr %buf, i32 0, i32 16
  %59 = ptrtoint ptr %di_flags to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %di_flags, align 8
  %i_height = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 19
  %60 = ptrtoint ptr %i_height to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %i_height, align 8
  %conv18 = zext i8 %61 to i16
  %di_height = getelementptr inbounds %struct.gfs2_dinode, ptr %buf, i32 0, i32 19
  %62 = ptrtoint ptr %di_height to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv18, ptr %di_height, align 2
  %63 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %ip, align 8
  %65 = and i16 %64, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %65)
  %cmp = icmp eq i16 %65, 16384
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %i_diskflags, align 4
  %and24 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool.not = icmp eq i32 %and24, 0
  %phi.sel = select i1 %tobool.not, i32 1200, i32 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %68 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  %di_payload_format = getelementptr inbounds %struct.gfs2_dinode, ptr %buf, i32 0, i32 17
  %69 = ptrtoint ptr %di_payload_format to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %di_payload_format, align 4
  %i_depth = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 20
  %70 = ptrtoint ptr %i_depth to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %i_depth, align 1
  %conv25 = zext i8 %71 to i16
  %di_depth = getelementptr inbounds %struct.gfs2_dinode, ptr %buf, i32 0, i32 22
  %72 = ptrtoint ptr %di_depth to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv25, ptr %di_depth, align 2
  %i_entries = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 17
  %73 = ptrtoint ptr %i_entries to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %i_entries, align 8
  %di_entries = getelementptr inbounds %struct.gfs2_dinode, ptr %buf, i32 0, i32 23
  %75 = ptrtoint ptr %di_entries to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %di_entries, align 4
  %i_eattr = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 4
  %76 = ptrtoint ptr %i_eattr to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %i_eattr, align 8
  %di_eattr = getelementptr inbounds %struct.gfs2_dinode, ptr %buf, i32 0, i32 25
  %78 = ptrtoint ptr %di_eattr to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %di_eattr, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 15, i32 1
  %79 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tv_nsec, align 8
  %di_atime_nsec = getelementptr inbounds %struct.gfs2_dinode, ptr %buf, i32 0, i32 26
  %81 = ptrtoint ptr %di_atime_nsec to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %di_atime_nsec, align 8
  %tv_nsec30 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 16, i32 1
  %82 = ptrtoint ptr %tv_nsec30 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tv_nsec30, align 8
  %di_mtime_nsec = getelementptr inbounds %struct.gfs2_dinode, ptr %buf, i32 0, i32 27
  %84 = ptrtoint ptr %di_mtime_nsec to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %di_mtime_nsec, align 4
  %tv_nsec33 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 17, i32 1
  %85 = ptrtoint ptr %tv_nsec33 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tv_nsec33, align 8
  %di_ctime_nsec = getelementptr inbounds %struct.gfs2_dinode, ptr %buf, i32 0, i32 28
  %87 = ptrtoint ptr %di_ctime_nsec to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %di_ctime_nsec, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_make_fs_ro(ptr noundef %sdp) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry118 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  %0 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sd_flags, align 4
  tail call void @gfs2_flush_delete_work(ptr noundef %sdp) #13
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !133) #13
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %sd_quotad_process = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 65
  %7 = ptrtoint ptr %sd_quotad_process to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_quotad_process, align 4
  %cmp = icmp eq ptr %6, %8
  br i1 %cmp, label %do.end, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %sd_fsname) #16
  %9 = ptrtoint ptr %sd_quotad_process to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %sd_quotad_process, align 4
  br label %land.lhs.true11

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %sd_quotad_process3 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 65
  %10 = ptrtoint ptr %sd_quotad_process3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_quotad_process3, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.else.if.end8_crit_edge, label %if.then5

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call i32 @kthread_stop(ptr noundef nonnull %11) #13
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.else.if.end8_crit_edge
  %12 = ptrtoint ptr %sd_quotad_process3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %sd_quotad_process3, align 4
  br i1 %tobool.not, label %if.end8.land.lhs.true11_crit_edge, label %if.end8.if.else23_crit_edge

if.end8.if.else23_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else23

if.end8.land.lhs.true11_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.end8.land.lhs.true11_crit_edge, %do.end
  %13 = tail call i32 @llvm.read_register.i32(metadata !133) #13
  %and.i208 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i208 to ptr
  %task13 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task13, align 8
  %sd_logd_process = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 64
  %17 = ptrtoint ptr %sd_logd_process to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sd_logd_process, align 8
  %cmp14 = icmp eq ptr %16, %18
  br i1 %cmp14, label %if.end30.thread, label %land.lhs.true11.if.else23_crit_edge

land.lhs.true11.if.else23_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else23

if.end30.thread:                                  ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  %sd_fsname20 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %sd_fsname20) #16
  %19 = ptrtoint ptr %sd_logd_process to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %sd_logd_process, align 8
  br label %if.else92

if.else23:                                        ; preds = %land.lhs.true11.if.else23_crit_edge, %if.end8.if.else23_crit_edge
  %sd_logd_process24 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 64
  %20 = ptrtoint ptr %sd_logd_process24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sd_logd_process24, align 8
  %tobool25.not = icmp eq ptr %21, null
  br i1 %tobool25.not, label %if.else23.if.end30_crit_edge, label %if.then26

if.else23.if.end30_crit_edge:                     ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then26:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #15
  %call28 = tail call i32 @kthread_stop(ptr noundef nonnull %21) #13
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.else23.if.end30_crit_edge
  %22 = ptrtoint ptr %sd_logd_process24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %sd_logd_process24, align 8
  br i1 %tobool.not, label %if.end30.if.else92_crit_edge, label %if.then33

if.end30.if.else92_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else92

if.then33:                                        ; preds = %if.end30
  %23 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sdp, align 8
  %call34 = tail call i32 @gfs2_quota_sync(ptr noundef %24, i32 noundef 0) #13
  %25 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdp, align 8
  %call36 = tail call i32 @gfs2_statfs_sync(ptr noundef %26, i32 undef)
  tail call void @gfs2_log_flush(ptr noundef %sdp, ptr noundef null, i32 noundef 2097160) #13
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 545) #13
  %call43 = tail call zeroext i1 @gfs2_log_is_empty(ptr noundef %sdp) #13
  br i1 %call43, label %if.then33.if.end77_crit_edge, label %if.then53

if.then33.if.end77_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

if.then53:                                        ; preds = %if.then33
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %27 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %sd_log_waitq = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 91
  %call55216 = call i32 @prepare_to_wait_event(ptr noundef %sd_log_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %call57217 = call zeroext i1 @gfs2_log_is_empty(ptr noundef %sdp) #13
  br i1 %call57217, label %if.then53.for.end_crit_edge, label %if.then53.cleanup_crit_edge

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  br label %cleanup

if.then53.for.end_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then53.cleanup_crit_edge
  %__ret54.1218 = phi i32 [ %__ret54.1, %cleanup.cleanup_crit_edge ], [ 500, %if.then53.cleanup_crit_edge ]
  %call74 = call i32 @schedule_timeout(i32 noundef %__ret54.1218) #13
  %call55 = call i32 @prepare_to_wait_event(ptr noundef %sd_log_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %call57 = call zeroext i1 @gfs2_log_is_empty(ptr noundef %sdp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool61.not = icmp eq i32 %call74, 0
  %28 = select i1 %call57, i1 %tobool61.not, i1 false
  %__ret54.1 = select i1 %28, i32 1, i32 %call74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret54.1)
  %tobool67.not = icmp eq i32 %__ret54.1, 0
  %29 = select i1 %call57, i1 true, i1 %tobool67.not
  br i1 %29, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then53.for.end_crit_edge
  call void @finish_wait(ptr noundef %sd_log_waitq, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end77

if.end77:                                         ; preds = %for.end, %if.then33.if.end77_crit_edge
  %call79 = call zeroext i1 @gfs2_log_is_empty(ptr noundef %sdp) #13
  br i1 %call79, label %if.end77.if.end153_crit_edge, label %if.then86, !prof !152

if.end77.if.end153_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end153

if.then86:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  call void @gfs2_assert_warn_i(ptr noundef %sdp, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 546) #13
  br label %if.end153

if.else92:                                        ; preds = %if.end30.if.else92_crit_edge, %if.end30.thread
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 550) #13
  %call101 = tail call zeroext i1 @gfs2_log_is_empty(ptr noundef %sdp) #13
  br i1 %call101, label %if.then155.critedge, label %if.then117

if.then117:                                       ; preds = %if.else92
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry118) #13
  %30 = call ptr @memset(ptr %__wq_entry118, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry118, i32 noundef 0) #13
  %sd_log_waitq122 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 91
  %call123219 = call i32 @prepare_to_wait_event(ptr noundef %sd_log_waitq122, ptr noundef nonnull %__wq_entry118, i32 noundef 2) #13
  %call125220 = call zeroext i1 @gfs2_log_is_empty(ptr noundef %sdp) #13
  br i1 %call125220, label %if.then117.for.end147_crit_edge, label %if.then117.cleanup144_crit_edge

if.then117.cleanup144_crit_edge:                  ; preds = %if.then117
  br label %cleanup144

if.then117.for.end147_crit_edge:                  ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end147

cleanup144:                                       ; preds = %cleanup144.cleanup144_crit_edge, %if.then117.cleanup144_crit_edge
  %__ret119.1221 = phi i32 [ %__ret119.1, %cleanup144.cleanup144_crit_edge ], [ 500, %if.then117.cleanup144_crit_edge ]
  %call143 = call i32 @schedule_timeout(i32 noundef %__ret119.1221) #13
  %call123 = call i32 @prepare_to_wait_event(ptr noundef %sd_log_waitq122, ptr noundef nonnull %__wq_entry118, i32 noundef 2) #13
  %call125 = call zeroext i1 @gfs2_log_is_empty(ptr noundef %sdp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool129.not = icmp eq i32 %call143, 0
  %31 = select i1 %call125, i1 %tobool129.not, i1 false
  %__ret119.1 = select i1 %31, i32 1, i32 %call143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret119.1)
  %tobool135.not = icmp eq i32 %__ret119.1, 0
  %32 = select i1 %call125, i1 true, i1 %tobool135.not
  br i1 %32, label %cleanup144.for.end147_crit_edge, label %cleanup144.cleanup144_crit_edge

cleanup144.cleanup144_crit_edge:                  ; preds = %cleanup144
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup144

cleanup144.for.end147_crit_edge:                  ; preds = %cleanup144
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end147

for.end147:                                       ; preds = %cleanup144.for.end147_crit_edge, %if.then117.for.end147_crit_edge
  call void @finish_wait(ptr noundef %sd_log_waitq122, ptr noundef nonnull %__wq_entry118) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry118) #13
  br label %if.end153

if.end153:                                        ; preds = %for.end147, %if.then86, %if.end77.if.end153_crit_edge
  call void @gfs2_quota_cleanup(ptr noundef %sdp) #13
  br i1 %tobool.not, label %if.end153.if.then155_crit_edge, label %if.end153.if.end157_crit_edge

if.end153.if.end157_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end157

if.end153.if.then155_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then155

if.then155.critedge:                              ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @gfs2_quota_cleanup(ptr noundef %sdp) #13
  br label %if.then155

if.then155:                                       ; preds = %if.then155.critedge, %if.end153.if.then155_crit_edge
  %33 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sdp, align 8
  %s_flags = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_flags, align 4
  %or = or i32 %36, 1
  store i32 %or, ptr %s_flags, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then155, %if.end153.if.end157_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_flush_delete_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_quota_sync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_log_flush(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gfs2_log_is_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_warn_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_quota_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_freeze_func(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %freeze_gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %freeze_gh) #13
  %add.ptr = getelementptr i8, ptr %work, i32 -1096
  %0 = call ptr @memset(ptr %freeze_gh, i32 255, i32 32)
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %s_active = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_active, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %s_active, i32 1, i32 3, i32 1) #13
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_active, ptr %s_active, i32 1, ptr elementtype(i32) %s_active) #13, !srcloc !153
  %call = call i32 @gfs2_freeze_lock(ptr noundef %add.ptr, ptr noundef nonnull %freeze_gh, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @gfs2_assert_withdraw_i(ptr noundef %add.ptr, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.gfs2_freeze_func, ptr noundef nonnull @.str, i32 noundef 659, i1 noundef zeroext false) #13
  br label %if.end32

if.else:                                          ; preds = %entry
  %sd_freeze_state = getelementptr i8, ptr %work, i32 2184
  %call.i.i47 = call zeroext i1 @__kasan_check_write(ptr noundef %sd_freeze_state, i32 noundef 4) #13
  %4 = ptrtoint ptr %sd_freeze_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %sd_freeze_state, align 4
  %call10 = call i32 @thaw_super(ptr noundef %2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.else.if.end31_crit_edge, label %do.end

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %sd_fsname = getelementptr i8, ptr %work, i32 2280
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %sd_fsname, i32 noundef %call10) #16
  call void @gfs2_assert_withdraw_i(ptr noundef %add.ptr, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.gfs2_freeze_func, ptr noundef nonnull @.str, i32 noundef 666, i1 noundef zeroext false) #13
  br label %if.end31

if.end31:                                         ; preds = %do.end, %if.else.if.end31_crit_edge
  call void @gfs2_freeze_unlock(ptr noundef nonnull %freeze_gh) #13
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then5
  call void @deactivate_super(ptr noundef %2) #13
  %sd_flags = getelementptr i8, ptr %work, i32 -896
  %call.i.i48 = call zeroext i1 @__kasan_check_write(ptr noundef %sd_flags, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !154
  call void @llvm.prefetch.p0(ptr %sd_flags, i32 1, i32 3, i32 1) #13
  %5 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sd_flags, ptr %sd_flags, i32 1024, ptr elementtype(i32) %sd_flags) #13, !srcloc !155
  call void @wake_up_bit(ptr noundef %sd_flags, i32 noundef 10) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %freeze_gh) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_freeze_lock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_withdraw_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thaw_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_freeze_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_local_statfs_inodes(ptr noundef %sdp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_sc_inodes_list = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 39
  %0 = ptrtoint ptr %sd_sc_inodes_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_sc_inodes_list, align 8
  %cmp.not28 = icmp eq ptr %1, %sd_sc_inodes_list
  br i1 %cmp.not28, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sd_jdesc = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %sd_sc_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 38
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %lsi.029 = phi ptr [ %1, %for.body.lr.ph ], [ %safe.031, %list_del.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %lsi.029 to i32
  call void @__asan_load4_noabort(i32 %2)
  %safe.031 = load ptr, ptr %lsi.029, align 4
  %si_jid = getelementptr inbounds %struct.local_statfs_inode, ptr %lsi.029, i32 0, i32 2
  %3 = ptrtoint ptr %si_jid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %si_jid, align 4
  %5 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sd_jdesc, align 4
  %jd_jid = getelementptr inbounds %struct.gfs2_jdesc, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %jd_jid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %jd_jid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %8)
  %cmp7 = icmp eq i32 %4, %8
  br i1 %cmp7, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %sd_sc_inode to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %sd_sc_inode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %si_sc_inode = getelementptr inbounds %struct.local_statfs_inode, ptr %lsi.029, i32 0, i32 1
  %10 = ptrtoint ptr %si_sc_inode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %si_sc_inode, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iput(ptr noundef nonnull %11) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lsi.029) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end10.list_del.exit_crit_edge

if.end10.list_del.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lsi.029, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %lsi.029 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lsi.029, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end10.list_del.exit_crit_edge
  %18 = ptrtoint ptr %lsi.029 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %lsi.029, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %lsi.029, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %lsi.029) #13
  %cmp.not = icmp eq ptr %safe.031, %sd_sc_inodes_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_local_statfs_inode(ptr noundef readonly %sdp, i32 noundef %index) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_sc_inodes_list = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 39
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %lsi.0.in = phi ptr [ %sd_sc_inodes_list, %entry ], [ %lsi.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %lsi.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %lsi.0 = load ptr, ptr %lsi.0.in, align 4
  %cmp.not = icmp eq ptr %lsi.0, %sd_sc_inodes_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %si_jid = getelementptr inbounds %struct.local_statfs_inode, ptr %lsi.0, i32 0, i32 2
  %1 = ptrtoint ptr %si_jid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %si_jid, align 4
  %cmp2 = icmp eq i32 %2, %index
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %si_sc_inode = getelementptr inbounds %struct.local_statfs_inode, ptr %lsi.0, i32 0, i32 1
  %3 = ptrtoint ptr %si_sc_inode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %si_sc_inode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %if.then ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gfs2_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_inode_cachep to i32))
  %0 = load ptr, ptr @gfs2_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %i_flags = getelementptr inbounds %struct.gfs2_inode, ptr %call, i32 0, i32 5
  %1 = ptrtoint ptr %i_flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %i_flags, align 8
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %i_gl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %i_gl, align 4
  %gh_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %call, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %gh_gl.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %gh_gl.i, align 8
  %i_res = getelementptr inbounds %struct.gfs2_inode, ptr %call, i32 0, i32 10
  %4 = call ptr @memset(ptr %i_res, i32 0, i32 32)
  %5 = ptrtoint ptr %i_res to i32
  %6 = ptrtoint ptr %i_res to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %i_res, align 8
  %i_rahead = getelementptr inbounds %struct.gfs2_inode, ptr %call, i32 0, i32 21
  %7 = ptrtoint ptr %i_rahead to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %i_rahead, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfs2_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_inode_cachep to i32))
  %0 = load ptr, ptr @gfs2_inode_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %inode) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfs2_dirty_inode(ptr noundef %inode, i32 noundef %flags) #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  %gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #13
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !143
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gh) #13
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 4
  %5 = call ptr @memset(ptr %gh, i32 255, i32 32)
  %6 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sd_flags.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %gfs2_withdrawn.exit, label %entry.cleanup_crit_edge, !prof !156

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

gfs2_withdrawn.exit:                              ; preds = %entry
  %9 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %sd_flags.i, align 4
  %11 = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.i.not = icmp eq i32 %11, 0
  br i1 %tobool3.i.not, label %if.end, label %gfs2_withdrawn.exit.cleanup_crit_edge, !prof !152

gfs2_withdrawn.exit.cleanup_crit_edge:            ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %gfs2_withdrawn.exit
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %12 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_gl, align 4
  %gl_lockref.i = getelementptr inbounds %struct.gfs2_glock, ptr %13, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %gl_lockref.i) #13
  %14 = tail call i32 @llvm.read_register.i32(metadata !133) #13
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 78
  %18 = ptrtoint ptr %thread_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %thread_pid.i.i, align 16
  %gl_holders.i = getelementptr inbounds %struct.gfs2_glock, ptr %13, i32 0, i32 6
  %20 = ptrtoint ptr %gl_holders.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %gh.029.i = load ptr, ptr %gl_holders.i, align 4
  %cmp.not30.i = icmp eq ptr %gh.029.i, %gl_holders.i
  br i1 %cmp.not30.i, label %if.end.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %gfs2_glock_is_locked_by_me.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %gh.031.i = phi ptr [ %gh.0.i, %for.inc.i.for.body.i_crit_edge ], [ %gh.029.i, %if.end.for.body.i_crit_edge ]
  %gh_iflags.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031.i, i32 0, i32 6
  %21 = ptrtoint ptr %gh_iflags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %gh_iflags.i, align 4
  %23 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i118 = icmp eq i32 %23, 0
  br i1 %tobool.not.i118, label %for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %if.end.i

for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gfs2_glock_is_locked_by_me.exit.thread

if.end.i:                                         ; preds = %for.body.i
  %24 = ptrtoint ptr %gh_iflags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %gh_iflags.i, align 4
  %26 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool6.not.i = icmp eq i32 %26, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end8.i:                                        ; preds = %if.end.i
  %gh_owner_pid.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031.i, i32 0, i32 2
  %27 = ptrtoint ptr %gh_owner_pid.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gh_owner_pid.i, align 4
  %cmp9.i = icmp eq ptr %28, %19
  br i1 %cmp9.i, label %gfs2_glock_is_locked_by_me.exit, label %if.end8.i.for.inc.i_crit_edge

if.end8.i.for.inc.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %29 = ptrtoint ptr %gh.031.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %gh.0.i = load ptr, ptr %gh.031.i, align 4
  %cmp.not.i = icmp eq ptr %gh.0.i, %gl_holders.i
  br i1 %cmp.not.i, label %for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gfs2_glock_is_locked_by_me.exit.thread

gfs2_glock_is_locked_by_me.exit.thread:           ; preds = %for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, %for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, %if.end.gfs2_glock_is_locked_by_me.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #13
  br label %if.then6

gfs2_glock_is_locked_by_me.exit:                  ; preds = %if.end8.i
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #13
  %tobool5.not = icmp eq ptr %gh.031.i, null
  br i1 %tobool5.not, label %gfs2_glock_is_locked_by_me.exit.if.then6_crit_edge, label %if.else

gfs2_glock_is_locked_by_me.exit.if.then6_crit_edge: ; preds = %gfs2_glock_is_locked_by_me.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

if.then6:                                         ; preds = %gfs2_glock_is_locked_by_me.exit.if.then6_crit_edge, %gfs2_glock_is_locked_by_me.exit.thread
  %30 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_gl, align 4
  %32 = tail call ptr @llvm.returnaddress(i32 0) #13
  %33 = ptrtoint ptr %32 to i32
  call void @__gfs2_holder_init(ptr noundef %31, i32 noundef 1, i16 noundef zeroext 0, ptr noundef nonnull %gh, i32 noundef %33) #13
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i119 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i119, label %if.then6.if.end66_crit_edge, label %do.end

if.then6.if.end66_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh) #13
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 110
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %sd_fsname, i32 noundef %call.i) #16
  %34 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_gl, align 4
  call void @gfs2_dump_glock(ptr noundef null, ptr noundef %35, i1 noundef zeroext true) #13
  br label %cleanup

if.else:                                          ; preds = %gfs2_glock_is_locked_by_me.exit
  %36 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_gl, align 4
  %gl_state = getelementptr inbounds %struct.gfs2_glock, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %gl_state to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load = load i16, ptr %gl_state, align 8
  %bf.lshr.mask = and i16 %bf.load, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr.mask)
  %cmp.not = icmp eq i16 %bf.lshr.mask, 16384
  br i1 %cmp.not, label %if.else.if.end66_crit_edge, label %land.rhs

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

land.rhs:                                         ; preds = %if.else
  %.b116 = load i1, ptr @gfs2_dirty_inode.__already_done, align 1
  br i1 %.b116, label %land.rhs.cleanup_crit_edge, label %if.then29, !prof !152

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then29:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @gfs2_dirty_inode.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 487, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end66:                                         ; preds = %if.else.if.end66_crit_edge, %if.then6.if.end66_crit_edge
  %tobool5.not127 = phi i1 [ false, %if.else.if.end66_crit_edge ], [ true, %if.then6.if.end66_crit_edge ]
  %39 = call i32 @llvm.read_register.i32(metadata !133) #13
  %and.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 146
  %43 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %journal_info, align 4
  %cmp68 = icmp eq ptr %44, null
  br i1 %cmp68, label %if.then69, label %if.end66.if.end81_crit_edge

if.end66.if.end81_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.then69:                                        ; preds = %if.end66
  %call70 = call i32 @gfs2_trans_begin(ptr noundef %3, i32 noundef 1, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then69.if.end81_crit_edge, label %do.end75

if.then69.if.end81_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

do.end75:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #15
  %sd_fsname77 = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 110
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %sd_fsname77, i32 noundef %call70) #16
  br label %out

if.end81:                                         ; preds = %if.then69.if.end81_crit_edge, %if.end66.if.end81_crit_edge
  %i_no_addr.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 1
  %45 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %i_no_addr.i, align 8
  %call.i121 = call i32 @gfs2_meta_buffer(ptr noundef %inode, i32 noundef 4, i64 noundef %46, ptr noundef nonnull %bh) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %cmp83 = icmp eq i32 %call.i121, 0
  br i1 %cmp83, label %if.then84, label %if.end81.if.end86_crit_edge

if.end81.if.end86_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

if.then84:                                        ; preds = %if.end81
  %47 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_gl, align 4
  %49 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bh, align 4
  call void @gfs2_trans_add_meta(ptr noundef %48, ptr noundef %50) #13
  %51 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %b_data, align 4
  call void @gfs2_dinode_out(ptr noundef %inode, ptr noundef %54)
  %55 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bh, align 4
  %tobool.not.i122 = icmp eq ptr %56, null
  br i1 %tobool.not.i122, label %if.then84.if.end86_crit_edge, label %if.then.i123

if.then84.if.end86_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

if.then.i123:                                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %56) #13
  br label %if.end86

if.end86:                                         ; preds = %if.then.i123, %if.then84.if.end86_crit_edge, %if.end81.if.end86_crit_edge
  br i1 %cmp68, label %if.then88, label %if.end86.out_crit_edge

if.end86.out_crit_edge:                           ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then88:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #15
  call void @gfs2_trans_end(ptr noundef %3) #13
  br label %out

out:                                              ; preds = %if.then88, %if.end86.out_crit_edge, %do.end75
  br i1 %tobool5.not127, label %if.then91, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then91:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %gh) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %out.cleanup_crit_edge, %if.then29, %land.rhs.cleanup_crit_edge, %do.end, %gfs2_withdrawn.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gh) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_write_inode(ptr noundef %inode, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %4 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_gl, align 4
  %gl_ops.i = getelementptr inbounds %struct.gfs2_glock, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %gl_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gl_ops.i, align 4
  %go_flags.i = getelementptr inbounds %struct.gfs2_glock_operations, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %go_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %go_flags.i, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %add.ptr.i = getelementptr %struct.gfs2_glock, ptr %5, i32 1
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %10 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %retval.0.i, align 4
  %call3 = tail call ptr @inode_to_bdi(ptr noundef %11) #13
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %12 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.end:                                          ; preds = %entry
  %i_diskflags.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 18
  %14 = ptrtoint ptr %i_diskflags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_diskflags.i, align 4
  %and.i38 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38)
  %tobool.not = icmp eq i32 %and.i38, 0
  br i1 %tobool.not, label %lor.end.if.end_crit_edge, label %lor.end.if.then_crit_edge

lor.end.if.then_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.end.if.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %lor.end.if.then_crit_edge, %entry.if.then_crit_edge
  %16 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i40 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info.i40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i40, align 16
  %20 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_gl, align 4
  tail call void @gfs2_log_flush(ptr noundef %19, ptr noundef %21, i32 noundef 1048578) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end.if.end_crit_edge
  %22 = phi i1 [ true, %if.then ], [ false, %lor.end.if.end_crit_edge ]
  %dirty_exceeded = getelementptr inbounds %struct.backing_dev_info, ptr %call3, i32 0, i32 11, i32 19
  %23 = ptrtoint ptr %dirty_exceeded to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dirty_exceeded, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool8.not = icmp eq i32 %24, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @gfs2_ail1_flush(ptr noundef %3, ptr noundef %wbc) #13
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call i32 @filemap_fdatawrite(ptr noundef %retval.0.i) #13
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9
  br i1 %22, label %if.end15, label %if.end11.if.else18_crit_edge

if.end11.if.else18_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else18

if.end15:                                         ; preds = %if.end11
  %call.i = tail call i32 @filemap_fdatawait_range(ptr noundef %retval.0.i, i64 noundef 0, i64 noundef 9223372036854775807) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.end15.if.else18_crit_edge, label %if.then17

if.end15.if.else18_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 1) #13
  br label %if.end23

if.else18:                                        ; preds = %if.end15.if.else18_crit_edge, %if.end11.if.else18_crit_edge
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #13
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %25 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_flags, align 4
  %and = and i32 %26, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.then20, label %if.else18.if.end21_crit_edge

if.else18.if.end21_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then20:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @gfs2_ordered_del_inode(ptr noundef %inode) #13
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.else18.if.end21_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #13
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.then17
  %ret.043 = phi i32 [ 0, %if.end21 ], [ %call.i, %if.then17 ]
  ret i32 %ret.043
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_drop_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 5
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_flags, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %3 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true3

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true3:                                   ; preds = %land.lhs.true
  %gh_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %gh_gl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gh_gl.i, align 4
  %tobool.i.not = icmp eq ptr %7, null
  br i1 %tobool.i.not, label %land.lhs.true3.if.end9_crit_edge, label %if.then

land.lhs.true3.if.end9_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true3
  %8 = ptrtoint ptr %gh_gl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gh_gl.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not = icmp eq i32 %12, 0
  br i1 %tobool7.not, label %if.then.if.end9_crit_edge, label %if.then8

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @clear_nlink(ptr noundef %inode) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then.if.end9_crit_edge, %land.lhs.true3.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %13 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  br i1 %tobool10.not, label %land.lhs.true11, label %lor.rhs.i

land.lhs.true11:                                  ; preds = %if.end9
  %16 = tail call i32 @llvm.read_register.i32(metadata !133) #13
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and = and i32 %21, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %land.lhs.true11.cleanup_crit_edge, label %land.lhs.true16, !prof !152

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true16:                                  ; preds = %land.lhs.true11
  %gh_gl.i40 = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %gh_gl.i40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gh_gl.i40, align 4
  %tobool.i41.not = icmp eq ptr %23, null
  br i1 %tobool.i41.not, label %land.lhs.true16.cleanup_crit_edge, label %if.then19

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then19:                                        ; preds = %land.lhs.true16
  %24 = ptrtoint ptr %gh_gl.i40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gh_gl.i40, align 8
  tail call void @gfs2_glock_hold(ptr noundef %25) #13
  %call23 = tail call zeroext i1 @gfs2_queue_delete_work(ptr noundef %25, i32 noundef 0) #13
  br i1 %call23, label %if.then19.cleanup_crit_edge, label %if.then24

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then24:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @gfs2_glock_queue_put(ptr noundef %25) #13
  br label %cleanup

lor.rhs.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %pprev.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28, i32 1
  %26 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %27, null
  %lnot.ext.i.i.i = zext i1 %tobool.not.i.i.i to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs.i, %if.then24, %if.then19.cleanup_crit_edge, %land.lhs.true16.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then24 ], [ 0, %if.then19.cleanup_crit_edge ], [ %lnot.ext.i.i.i, %lor.rhs.i ], [ 1, %land.lhs.true16.cleanup_crit_edge ], [ 1, %land.lhs.true11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfs2_evict_inode(ptr noundef %inode) #0 align 64 {
entry:
  %gh.i.i = alloca %struct.gfs2_holder, align 4
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  %gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gh) #13
  %4 = getelementptr inbounds %struct.gfs2_holder, ptr %gh, i32 0, i32 1
  %i_flags = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 5
  %5 = call ptr @memset(ptr %gh, i32 255, i32 32)
  %6 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_flags, align 4
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @clear_inode(ptr noundef %inode) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not = icmp eq i32 %11, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end5, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end5:                                          ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %4, align 4
  %15 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %i_flags, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.end14.i, label %do.body.i

do.body.i:                                        ; preds = %if.end5
  %i_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %18 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_gl.i, align 4
  %gl_lockref.i.i = getelementptr inbounds %struct.gfs2_glock, ptr %19, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %gl_lockref.i.i) #13
  %20 = tail call i32 @llvm.read_register.i32(metadata !133) #13
  %and.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i.i, align 8
  %thread_pid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 78
  %24 = ptrtoint ptr %thread_pid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %thread_pid.i.i.i, align 16
  %gl_holders.i.i = getelementptr inbounds %struct.gfs2_glock, ptr %19, i32 0, i32 6
  %26 = ptrtoint ptr %gl_holders.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %gh.029.i.i = load ptr, ptr %gl_holders.i.i, align 4
  %cmp.not30.i.i = icmp eq ptr %gh.029.i.i, %gl_holders.i.i
  br i1 %cmp.not30.i.i, label %do.body.i.gfs2_glock_is_locked_by_me.exit.thread.i_crit_edge, label %do.body.i.for.body.i.i_crit_edge

do.body.i.for.body.i.i_crit_edge:                 ; preds = %do.body.i
  br label %for.body.i.i

do.body.i.gfs2_glock_is_locked_by_me.exit.thread.i_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gfs2_glock_is_locked_by_me.exit.thread.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.body.i.for.body.i.i_crit_edge
  %gh.031.i.i = phi ptr [ %gh.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %gh.029.i.i, %do.body.i.for.body.i.i_crit_edge ]
  %gh_iflags.i.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %gh_iflags.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %gh_iflags.i.i, align 4
  %29 = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.gfs2_glock_is_locked_by_me.exit.thread.i_crit_edge, label %if.end.i.i

for.body.i.i.gfs2_glock_is_locked_by_me.exit.thread.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gfs2_glock_is_locked_by_me.exit.thread.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %30 = ptrtoint ptr %gh_iflags.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %gh_iflags.i.i, align 4
  %32 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool6.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %gh_owner_pid.i.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %gh_owner_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %gh_owner_pid.i.i, align 4
  %cmp9.i.i = icmp eq ptr %34, %25
  br i1 %cmp9.i.i, label %gfs2_glock_is_locked_by_me.exit.i, label %if.end8.i.i.for.inc.i.i_crit_edge

if.end8.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end8.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge
  %35 = ptrtoint ptr %gh.031.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %gh.0.i.i = load ptr, ptr %gh.031.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %gh.0.i.i, %gl_holders.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.gfs2_glock_is_locked_by_me.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.gfs2_glock_is_locked_by_me.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gfs2_glock_is_locked_by_me.exit.thread.i

gfs2_glock_is_locked_by_me.exit.thread.i:         ; preds = %for.inc.i.i.gfs2_glock_is_locked_by_me.exit.thread.i_crit_edge, %for.body.i.i.gfs2_glock_is_locked_by_me.exit.thread.i_crit_edge, %do.body.i.gfs2_glock_is_locked_by_me.exit.thread.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i.i) #13
  br label %do.body8.i

gfs2_glock_is_locked_by_me.exit.i:                ; preds = %if.end8.i.i
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i.i) #13
  %tobool3.not.i = icmp eq ptr %gh.031.i.i, null
  br i1 %tobool3.not.i, label %gfs2_glock_is_locked_by_me.exit.i.do.body8.i_crit_edge, label %gfs2_glock_is_locked_by_me.exit.i.should_delete.i_crit_edge, !prof !146

gfs2_glock_is_locked_by_me.exit.i.should_delete.i_crit_edge: ; preds = %gfs2_glock_is_locked_by_me.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %should_delete.i

gfs2_glock_is_locked_by_me.exit.i.do.body8.i_crit_edge: ; preds = %gfs2_glock_is_locked_by_me.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body8.i

do.body8.i:                                       ; preds = %gfs2_glock_is_locked_by_me.exit.i.do.body8.i_crit_edge, %gfs2_glock_is_locked_by_me.exit.thread.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1221, 0\0A.popsection", ""() #13, !srcloc !157
  unreachable

if.end14.i:                                       ; preds = %if.end5
  %36 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %i_flags, align 4
  %38 = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool17.not.i = icmp eq i32 %38, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end14.i.out_crit_edge

if.end14.i.out_crit_edge:                         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end19.i:                                       ; preds = %if.end14.i
  %39 = tail call i32 @llvm.read_register.i32(metadata !133) #13
  %and.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i, align 4
  %and.i114 = and i32 %44, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i114)
  %tobool21.not.i = icmp eq i32 %and.i114, 0
  br i1 %tobool21.not.i, label %if.end71.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end19.i
  %.b137.i = load i1, ptr @evict_should_delete.__already_done, align 1
  br i1 %.b137.i, label %land.rhs.i.out_crit_edge, label %if.then36.i, !prof !152

land.rhs.i.out_crit_edge:                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then36.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @evict_should_delete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1229, i32 noundef 9, ptr noundef null) #13
  br label %out

if.end71.i:                                       ; preds = %if.end19.i
  %i_gl72.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %45 = ptrtoint ptr %i_gl72.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_gl72.i, align 4
  %47 = tail call ptr @llvm.returnaddress(i32 0) #13
  %48 = ptrtoint ptr %47 to i32
  call void @__gfs2_holder_init(ptr noundef %46, i32 noundef 1, i16 noundef zeroext 256, ptr noundef nonnull %gh, i32 noundef %48) #13
  %call.i.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i143.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i143.i, label %if.end85.i, label %if.then81.i

if.then81.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh) #13
  %i_iopen_gh.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 7
  %gh_gl.i115 = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 7, i32 1
  %49 = ptrtoint ptr %gh_gl.i115 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %gh_gl.i115, align 8
  call fastcc void @glock_clear_object(ptr noundef %50, ptr noundef %inode) #13
  %gh_flags.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 7, i32 3
  %51 = ptrtoint ptr %gh_flags.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %gh_flags.i, align 8
  %53 = or i16 %52, 1024
  store i16 %53, ptr %gh_flags.i, align 8
  call void @gfs2_glock_dq_uninit(ptr noundef %i_iopen_gh.i) #13
  br label %out

if.end85.i:                                       ; preds = %if.end71.i
  %54 = ptrtoint ptr %i_gl72.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_gl72.i, align 4
  %i_no_formal_ino.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 2
  %56 = ptrtoint ptr %i_no_formal_ino.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %i_no_formal_ino.i, align 8
  %call87.i = call zeroext i1 @gfs2_inode_already_deleted(ptr noundef %55, i64 noundef %57) #13
  br i1 %call87.i, label %if.end85.i.if.else_crit_edge, label %if.end89.i

if.end85.i.if.else_crit_edge:                     ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end89.i:                                       ; preds = %if.end85.i
  %i_no_addr.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 1
  %58 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %i_no_addr.i, align 8
  %call90.i = call i32 @gfs2_check_blk_type(ptr noundef %3, i64 noundef %59, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %tobool91.not.i = icmp eq i32 %call90.i, 0
  br i1 %tobool91.not.i, label %if.end93.i, label %if.end89.i.if.else_crit_edge

if.end89.i.if.else_crit_edge:                     ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end93.i:                                       ; preds = %if.end89.i
  %call94.i = call i32 @gfs2_instantiate(ptr noundef nonnull %gh) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %tobool95.not.i = icmp eq i32 %call94.i, 0
  br i1 %tobool95.not.i, label %if.end97.i, label %if.end93.i.if.else_crit_edge

if.end93.i.if.else_crit_edge:                     ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end97.i:                                       ; preds = %if.end93.i
  %60 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool98.not.i = icmp eq i32 %61, 0
  br i1 %tobool98.not.i, label %if.end97.i.should_delete.i_crit_edge, label %if.end97.i.if.else_crit_edge

if.end97.i.if.else_crit_edge:                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end97.i.should_delete.i_crit_edge:             ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %should_delete.i

should_delete.i:                                  ; preds = %if.end97.i.should_delete.i_crit_edge, %gfs2_glock_is_locked_by_me.exit.i.should_delete.i_crit_edge
  %i_iopen_gh101.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 7
  %gh_gl.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 7, i32 1
  %62 = ptrtoint ptr %gh_gl.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %gh_gl.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %63, null
  br i1 %tobool.i.not.i, label %should_delete.i.if.then10_crit_edge, label %land.lhs.true.i

should_delete.i.if.then10_crit_edge:              ; preds = %should_delete.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

land.lhs.true.i:                                  ; preds = %should_delete.i
  %gh_iflags.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 7, i32 6
  %64 = ptrtoint ptr %gh_iflags.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %gh_iflags.i, align 4
  %66 = and i32 %65, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool106.not.i = icmp eq i32 %66, 0
  br i1 %tobool106.not.i, label %land.lhs.true.i.if.then10_crit_edge, label %if.then107.i

land.lhs.true.i.if.then10_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

if.then107.i:                                     ; preds = %land.lhs.true.i
  %67 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %68, i32 0, i32 33
  %69 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %gh_flags.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 7, i32 3
  %71 = ptrtoint ptr %gh_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %gh_flags.i.i, align 4
  %73 = or i16 %72, 1024
  store i16 %73, ptr %gh_flags.i.i, align 4
  call void @gfs2_glock_dq_wait(ptr noundef %i_iopen_gh101.i) #13
  call void @gfs2_holder_reinit(i32 noundef 1, i16 noundef zeroext 1026, ptr noundef %i_iopen_gh101.i) #13
  %call3.i.i = call i32 @gfs2_glock_nq(ptr noundef %i_iopen_gh101.i) #13
  %74 = zext i32 %call3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call3.i.i, label %if.then107.i.if.then109.i_crit_edge [
    i32 13, label %if.end.i149.i
    i32 0, label %if.then107.i.if.then10_crit_edge
  ]

if.then107.i.if.then10_crit_edge:                 ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

if.then107.i.if.then109.i_crit_edge:              ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then109.i

if.end.i149.i:                                    ; preds = %if.then107.i
  call void @gfs2_holder_reinit(i32 noundef 1, i16 noundef zeroext 1088, ptr noundef %i_iopen_gh101.i) #13
  %call5.i.i = call i32 @gfs2_glock_nq(ptr noundef %i_iopen_gh101.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i148.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i148.i, label %if.end8.i151.i, label %if.end.i149.i.if.then109.i_crit_edge

if.end.i149.i.if.then109.i_crit_edge:             ; preds = %if.end.i149.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then109.i

if.end8.i151.i:                                   ; preds = %if.end.i149.i
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1194) #13
  %75 = ptrtoint ptr %gh_iflags.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %gh_iflags.i, align 4
  %77 = and i32 %76, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool13.not.i.i = icmp eq i32 %77, 0
  br i1 %tobool13.not.i.i, label %if.end8.i151.i.if.end66.i.i_crit_edge, label %lor.rhs.i.i

if.end8.i151.i.if.end66.i.i_crit_edge:            ; preds = %if.end8.i151.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.i.i

lor.rhs.i.i:                                      ; preds = %if.end8.i151.i
  %i_gl.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %78 = ptrtoint ptr %i_gl.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %i_gl.i.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %79, align 4
  %82 = and i32 %81, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool15.not.i.i = icmp eq i32 %82, 0
  br i1 %tobool15.not.i.i, label %if.then28.i.i, label %lor.rhs.i.i.if.end66.i.i_crit_edge

lor.rhs.i.i.if.end66.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.i.i

if.then28.i.i:                                    ; preds = %lor.rhs.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #13
  %83 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #13
  %sd_async_glock_wait.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %70, i32 0, i32 29
  %call30121.i.i = call i32 @prepare_to_wait_event(ptr noundef %sd_async_glock_wait.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 1) #13
  %84 = ptrtoint ptr %gh_iflags.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %gh_iflags.i, align 4
  %86 = and i32 %85, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool34.not122.i.i = icmp eq i32 %86, 0
  br i1 %tobool34.not122.i.i, label %if.then28.i.i.for.end.i.i_crit_edge, label %if.then28.i.i.lor.end40.i.i_crit_edge

if.then28.i.i.lor.end40.i.i_crit_edge:            ; preds = %if.then28.i.i
  br label %lor.end40.i.i

if.then28.i.i.for.end.i.i_crit_edge:              ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

lor.end40.i.i:                                    ; preds = %cleanup.i.i.lor.end40.i.i_crit_edge, %if.then28.i.i.lor.end40.i.i_crit_edge
  %call30124.i.i = phi i32 [ %call30.i.i, %cleanup.i.i.lor.end40.i.i_crit_edge ], [ %call30121.i.i, %if.then28.i.i.lor.end40.i.i_crit_edge ]
  %__ret29.0123.i.i = phi i32 [ %call63.i.i, %cleanup.i.i.lor.end40.i.i_crit_edge ], [ 500, %if.then28.i.i.lor.end40.i.i_crit_edge ]
  %87 = ptrtoint ptr %i_gl.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %i_gl.i.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %88, align 4
  %91 = and i32 %90, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool39.i.i = icmp ne i32 %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret29.0123.i.i)
  %tobool53.not.i.i = icmp eq i32 %__ret29.0123.i.i, 0
  %or.cond.i.i = select i1 %tobool39.i.i, i1 true, i1 %tobool53.not.i.i
  br i1 %or.cond.i.i, label %lor.end40.i.i.for.end.i.i_crit_edge, label %if.end59.i.i

lor.end40.i.i.for.end.i.i_crit_edge:              ; preds = %lor.end40.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

if.end59.i.i:                                     ; preds = %lor.end40.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30124.i.i)
  %tobool60.not.i.i = icmp eq i32 %call30124.i.i, 0
  br i1 %tobool60.not.i.i, label %cleanup.i.i, label %if.end59.i.i.__out.i.i_crit_edge

if.end59.i.i.__out.i.i_crit_edge:                 ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__out.i.i

cleanup.i.i:                                      ; preds = %if.end59.i.i
  %call63.i.i = call i32 @schedule_timeout(i32 noundef %__ret29.0123.i.i) #13
  %call30.i.i = call i32 @prepare_to_wait_event(ptr noundef %sd_async_glock_wait.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 1) #13
  %92 = ptrtoint ptr %gh_iflags.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %gh_iflags.i, align 4
  %94 = and i32 %93, 1024
  %tobool34.not.i.i = icmp eq i32 %94, 0
  br i1 %tobool34.not.i.i, label %cleanup.i.i.for.end.i.i_crit_edge, label %cleanup.i.i.lor.end40.i.i_crit_edge

cleanup.i.i.lor.end40.i.i_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end40.i.i

cleanup.i.i.for.end.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %cleanup.i.i.for.end.i.i_crit_edge, %lor.end40.i.i.for.end.i.i_crit_edge, %if.then28.i.i.for.end.i.i_crit_edge
  call void @finish_wait(ptr noundef %sd_async_glock_wait.i.i, ptr noundef nonnull %__wq_entry.i.i) #13
  br label %__out.i.i

__out.i.i:                                        ; preds = %for.end.i.i, %if.end59.i.i.__out.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #13
  br label %if.end66.i.i

if.end66.i.i:                                     ; preds = %__out.i.i, %lor.rhs.i.i.if.end66.i.i_crit_edge, %if.end8.i151.i.if.end66.i.i_crit_edge
  %95 = ptrtoint ptr %gh_iflags.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %gh_iflags.i, align 4
  %97 = and i32 %96, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool70.not.i.i = icmp eq i32 %97, 0
  br i1 %tobool70.not.i.i, label %if.then71.i.i, label %if.end66.i.i.if.then10_crit_edge

if.end66.i.i.if.then10_crit_edge:                 ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

if.then71.i.i:                                    ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @gfs2_glock_dq(ptr noundef %i_iopen_gh101.i) #13
  br label %if.then109.i

if.then109.i:                                     ; preds = %if.then71.i.i, %if.end.i149.i.if.then109.i_crit_edge, %if.then107.i.if.then109.i_crit_edge
  call void @gfs2_holder_uninit(ptr noundef %i_iopen_gh101.i) #13
  br label %if.else

if.then10:                                        ; preds = %if.end66.i.i.if.then10_crit_edge, %if.then107.i.if.then10_crit_edge, %land.lhs.true.i.if.then10_crit_edge, %should_delete.i.if.then10_crit_edge
  %98 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %inode, align 8
  %100 = and i16 %99, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %100)
  %cmp.i = icmp eq i16 %100, 16384
  br i1 %cmp.i, label %land.lhs.true.i117, label %if.then10.if.end6.i_crit_edge

if.then10.if.end6.i_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

land.lhs.true.i117:                               ; preds = %if.then10
  %i_diskflags.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 18
  %101 = ptrtoint ptr %i_diskflags.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %i_diskflags.i, align 4
  %and2.i = and i32 %102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i116 = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i116, label %land.lhs.true.i117.if.end6.i_crit_edge, label %if.then.i

land.lhs.true.i117.if.end6.i_crit_edge:           ; preds = %land.lhs.true.i117
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.then.i:                                        ; preds = %land.lhs.true.i117
  %call3.i = call i32 @gfs2_dir_exhash_dealloc(ptr noundef %inode) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then.i.if.end6.i_crit_edge, label %if.then.i.if.end13_crit_edge

if.then.i.if.end13_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then.i.if.end6.i_crit_edge, %land.lhs.true.i117.if.end6.i_crit_edge, %if.then10.if.end6.i_crit_edge
  %i_eattr.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 4
  %103 = ptrtoint ptr %i_eattr.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %i_eattr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %104)
  %tobool7.not.i = icmp eq i64 %104, 0
  br i1 %tobool7.not.i, label %if.end6.i.if.end13.i_crit_edge, label %if.then8.i

if.end6.i.if.end13.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i

if.then8.i:                                       ; preds = %if.end6.i
  %call9.i = call i32 @gfs2_ea_dealloc(ptr noundef %inode) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then8.i.if.end13.i_crit_edge, label %if.then8.i.if.end13_crit_edge

if.then8.i.if.end13_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then8.i.if.end13.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then8.i.if.end13.i_crit_edge, %if.end6.i.if.end13.i_crit_edge
  %i_height.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 19
  %105 = ptrtoint ptr %i_height.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %i_height.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i.not.i = icmp eq i8 %106, 0
  br i1 %tobool.not.i.not.i, label %if.end13.i.if.end21.i_crit_edge, label %if.then16.i

if.end13.i.if.end21.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

if.then16.i:                                      ; preds = %if.end13.i
  %call17.i = call i32 @gfs2_file_dealloc(ptr noundef %inode) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.then16.i.if.end21.i_crit_edge, label %if.then16.i.if.end13_crit_edge

if.then16.i.if.end13_crit_edge:                   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then16.i.if.end21.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then16.i.if.end21.i_crit_edge, %if.end13.i.if.end21.i_crit_edge
  %i_gl.i118 = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %107 = ptrtoint ptr %i_gl.i118 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %i_gl.i118, align 4
  %gl_lockref.i.i119 = getelementptr inbounds %struct.gfs2_glock, ptr %108, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %gl_lockref.i.i119) #13
  %gl_object.i.i = getelementptr inbounds %struct.gfs2_glock, ptr %108, i32 0, i32 12
  %109 = ptrtoint ptr %gl_object.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %gl_object.i.i, align 4
  %cmp.i.i = icmp eq ptr %110, %inode
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end21.i.glock_clear_object.exit.i_crit_edge

if.end21.i.glock_clear_object.exit.i_crit_edge:   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %glock_clear_object.exit.i

if.then.i.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  %111 = ptrtoint ptr %gl_object.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %gl_object.i.i, align 4
  br label %glock_clear_object.exit.i

glock_clear_object.exit.i:                        ; preds = %if.then.i.i, %if.end21.i.glock_clear_object.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %gl_lockref.i.i119) #13
  %112 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i120 = getelementptr inbounds %struct.super_block, ptr %113, i32 0, i32 33
  %114 = ptrtoint ptr %s_fs_info.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %s_fs_info.i.i.i120, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gh.i.i) #13
  %i_blocks.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %116 = call ptr @memset(ptr %gh.i.i, i32 255, i32 32)
  %117 = ptrtoint ptr %i_blocks.i.i.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %i_blocks.i.i.i, align 8
  %sb_bsize_shift.i.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %115, i32 0, i32 5, i32 5
  %119 = ptrtoint ptr %sb_bsize_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %sb_bsize_shift.i.i.i, align 4
  %sub.i.i.i = add i32 %120, -9
  %sh_prom.i.i.i = zext i32 %sub.i.i.i to i64
  %shr.i.i.i = lshr i64 %118, %sh_prom.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %shr.i.i.i)
  %cmp.not.i.i121 = icmp eq i64 %shr.i.i.i, 1
  br i1 %cmp.not.i.i121, label %if.end.i.i123, label %if.then.i38.i

if.then.i38.i:                                    ; preds = %glock_clear_object.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @gfs2_consist_inode_i(ptr noundef %inode, ptr noundef nonnull @__func__.gfs2_dinode_dealloc, ptr noundef nonnull @.str, i32 noundef 1095) #13
  br label %gfs2_dinode_dealloc.exit.i

if.end.i.i123:                                    ; preds = %glock_clear_object.exit.i
  %call3.i.i122 = call i32 @gfs2_rindex_update(ptr noundef %115) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i122)
  %tobool.not.i39.i = icmp eq i32 %call3.i.i122, 0
  br i1 %tobool.not.i39.i, label %if.end5.i.i, label %if.end.i.i123.gfs2_dinode_dealloc.exit.i_crit_edge

if.end.i.i123.gfs2_dinode_dealloc.exit.i_crit_edge: ; preds = %if.end.i.i123
  call void @__sanitizer_cov_trace_pc() #15
  br label %gfs2_dinode_dealloc.exit.i

if.end5.i.i:                                      ; preds = %if.end.i.i123
  %call9.i.i = call i32 @gfs2_quota_hold(ptr noundef %inode, [1 x i32] [i32 -1], [1 x i32] [i32 -1]) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %if.end5.i.i.gfs2_dinode_dealloc.exit.i_crit_edge

if.end5.i.i.gfs2_dinode_dealloc.exit.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gfs2_dinode_dealloc.exit.i

if.end12.i.i:                                     ; preds = %if.end5.i.i
  %i_no_addr.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 1
  %121 = ptrtoint ptr %i_no_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %i_no_addr.i.i, align 8
  %call13.i.i = call ptr @gfs2_blk2rgrpd(ptr noundef %115, i64 noundef %122, i1 noundef zeroext true) #13
  %tobool14.not.i.i = icmp eq ptr %call13.i.i, null
  br i1 %tobool14.not.i.i, label %if.then15.i.i, label %if.end16.i.i

if.then15.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @gfs2_consist_inode_i(ptr noundef %inode, ptr noundef nonnull @__func__.gfs2_dinode_dealloc, ptr noundef nonnull @.str, i32 noundef 1109) #13
  br label %out_qs.i.i

if.end16.i.i:                                     ; preds = %if.end12.i.i
  %rd_gl.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call13.i.i, i32 0, i32 1
  %123 = ptrtoint ptr %rd_gl.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rd_gl.i.i, align 4
  %125 = call ptr @llvm.returnaddress(i32 0) #13
  %126 = ptrtoint ptr %125 to i32
  call void @__gfs2_holder_init(ptr noundef %124, i32 noundef 1, i16 noundef zeroext 32, ptr noundef nonnull %gh.i.i, i32 noundef %126) #13
  %call.i.i.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end20.i.i, label %gfs2_glock_nq_init.exit.i.i

gfs2_glock_nq_init.exit.i.i:                      ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh.i.i) #13
  br label %out_qs.i.i

if.end20.i.i:                                     ; preds = %if.end16.i.i
  %sd_jdesc.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %115, i32 0, i32 56
  %127 = ptrtoint ptr %sd_jdesc.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %sd_jdesc.i.i, align 4
  %jd_blocks.i.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %128, i32 0, i32 8
  %129 = ptrtoint ptr %jd_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %jd_blocks.i.i, align 8
  %call21.i.i = call i32 @gfs2_trans_begin(ptr noundef %115, i32 noundef 5, i32 noundef %130) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool22.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end24.i.i, label %if.end20.i.i.out_rg_gunlock.i.i_crit_edge

if.end20.i.i.out_rg_gunlock.i.i_crit_edge:        ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_rg_gunlock.i.i

if.end24.i.i:                                     ; preds = %if.end20.i.i
  call void @gfs2_free_di(ptr noundef nonnull %call13.i.i, ptr noundef %inode) #13
  %131 = ptrtoint ptr %i_gl.i118 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %i_gl.i118, align 4
  %gl_ops.i.i.i = getelementptr inbounds %struct.gfs2_glock, ptr %132, i32 0, i32 7
  %133 = ptrtoint ptr %gl_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %gl_ops.i.i.i, align 4
  %go_flags.i.i.i = getelementptr inbounds %struct.gfs2_glock_operations, ptr %134, i32 0, i32 10
  %135 = ptrtoint ptr %go_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %go_flags.i.i.i, align 4
  %and.i.i.i124 = and i32 %136, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i124)
  %tobool.not.i.i40.i = icmp eq i32 %and.i.i.i124, 0
  %add.ptr.i.i.i = getelementptr %struct.gfs2_glock, ptr %132, i32 1
  %retval.0.i.i.i = select i1 %tobool.not.i.i40.i, ptr null, ptr %add.ptr.i.i.i
  call void @truncate_inode_pages(ptr noundef %retval.0.i.i.i, i64 noundef 0) #13
  %i_data.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  call void @truncate_inode_pages(ptr noundef %i_data.i.i, i64 noundef 0) #13
  %gl_revokes.i.i = getelementptr inbounds %struct.gfs2_glock, ptr %132, i32 0, i32 16
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %gl_revokes.i.i, i32 noundef 4) #13
  %137 = ptrtoint ptr %gl_revokes.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %gl_revokes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp.i41.i = icmp eq i32 %138, 0
  br i1 %cmp.i41.i, label %if.then.i42.i, label %if.end24.i.i.gfs2_final_release_pages.exit.i_crit_edge

if.end24.i.i.gfs2_final_release_pages.exit.i_crit_edge: ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gfs2_final_release_pages.exit.i

if.then.i42.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @_clear_bit(i32 noundef 7, ptr noundef %132) #13
  call void @_clear_bit(i32 noundef 6, ptr noundef %132) #13
  br label %gfs2_final_release_pages.exit.i

gfs2_final_release_pages.exit.i:                  ; preds = %if.then.i42.i, %if.end24.i.i.gfs2_final_release_pages.exit.i_crit_edge
  call void @gfs2_trans_end(ptr noundef %115) #13
  br label %out_rg_gunlock.i.i

out_rg_gunlock.i.i:                               ; preds = %gfs2_final_release_pages.exit.i, %if.end20.i.i.out_rg_gunlock.i.i_crit_edge
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %gh.i.i) #13
  br label %out_qs.i.i

out_qs.i.i:                                       ; preds = %out_rg_gunlock.i.i, %gfs2_glock_nq_init.exit.i.i, %if.then15.i.i
  %error.0.i.i = phi i32 [ %call.i.i.i, %gfs2_glock_nq_init.exit.i.i ], [ %call21.i.i, %out_rg_gunlock.i.i ], [ -5, %if.then15.i.i ]
  call void @gfs2_quota_unhold(ptr noundef %inode) #13
  br label %gfs2_dinode_dealloc.exit.i

gfs2_dinode_dealloc.exit.i:                       ; preds = %out_qs.i.i, %if.end5.i.i.gfs2_dinode_dealloc.exit.i_crit_edge, %if.end.i.i123.gfs2_dinode_dealloc.exit.i_crit_edge, %if.then.i38.i
  %retval.0.i.i = phi i32 [ -5, %if.then.i38.i ], [ %error.0.i.i, %out_qs.i.i ], [ %call3.i.i122, %if.end.i.i123.gfs2_dinode_dealloc.exit.i_crit_edge ], [ %call9.i.i, %if.end5.i.i.gfs2_dinode_dealloc.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gh.i.i) #13
  %139 = ptrtoint ptr %i_gl.i118 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %i_gl.i118, align 4
  %i_no_formal_ino.i125 = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 2
  %141 = ptrtoint ptr %i_no_formal_ino.i125 to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %i_no_formal_ino.i125, align 8
  call void @gfs2_inode_remember_delete(ptr noundef %140, i64 noundef %142) #13
  br label %if.end13

if.else:                                          ; preds = %if.then109.i, %if.end97.i.if.else_crit_edge, %if.end93.i.if.else_crit_edge, %if.end89.i.if.else_crit_edge, %if.end85.i.if.else_crit_edge
  %143 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i127 = getelementptr inbounds %struct.super_block, ptr %144, i32 0, i32 33
  %145 = ptrtoint ptr %s_fs_info.i127 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %s_fs_info.i127, align 16
  %i_gl.i128 = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %147 = ptrtoint ptr %i_gl.i128 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %i_gl.i128, align 4
  call void @gfs2_log_flush(ptr noundef %146, ptr noundef %148, i32 noundef 8388610) #13
  %149 = ptrtoint ptr %i_gl.i128 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %i_gl.i128, align 4
  %gl_ops.i.i = getelementptr inbounds %struct.gfs2_glock, ptr %150, i32 0, i32 7
  %151 = ptrtoint ptr %gl_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %gl_ops.i.i, align 4
  %go_flags.i.i = getelementptr inbounds %struct.gfs2_glock_operations, ptr %152, i32 0, i32 10
  %153 = ptrtoint ptr %go_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %go_flags.i.i, align 4
  %and.i.i129 = and i32 %154, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i129)
  %tobool.not.i.i130 = icmp eq i32 %and.i.i129, 0
  %add.ptr.i.i = getelementptr %struct.gfs2_glock, ptr %150, i32 1
  %retval.0.i.i131 = select i1 %tobool.not.i.i130, ptr null, ptr %add.ptr.i.i
  %155 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %150, align 4
  %157 = and i32 %156, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool.not.i132 = icmp eq i32 %157, 0
  br i1 %tobool.not.i132, label %if.else.if.end.i_crit_edge, label %if.then.i134

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i134:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call5.i = call i32 @filemap_fdatawrite(ptr noundef %retval.0.i.i131) #13
  %call.i.i133 = call i32 @filemap_fdatawait_range(ptr noundef %retval.0.i.i131, i64 noundef 0, i64 noundef 9223372036854775807) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i134, %if.else.if.end.i_crit_edge
  %call7.i = call i32 @write_inode_now(ptr noundef %inode, i32 noundef 1) #13
  %158 = ptrtoint ptr %i_gl.i128 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %i_gl.i128, align 4
  call void @gfs2_ail_flush(ptr noundef %159, i1 noundef zeroext false) #13
  %sd_jdesc.i = getelementptr inbounds %struct.gfs2_sbd, ptr %146, i32 0, i32 56
  %160 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %sd_jdesc.i, align 4
  %jd_blocks.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %161, i32 0, i32 8
  %162 = ptrtoint ptr %jd_blocks.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %jd_blocks.i, align 8
  %call9.i135 = call i32 @gfs2_trans_begin(ptr noundef %146, i32 noundef 0, i32 noundef %163) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i135)
  %tobool10.not.i136 = icmp eq i32 %call9.i135, 0
  br i1 %tobool10.not.i136, label %if.end12.i, label %if.end.i.if.end13_crit_edge

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %i_data.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  call void @truncate_inode_pages(ptr noundef %i_data.i, i64 noundef 0) #13
  call void @truncate_inode_pages(ptr noundef %retval.0.i.i131, i64 noundef 0) #13
  call void @gfs2_trans_end(ptr noundef %146) #13
  br label %if.end13

if.end13:                                         ; preds = %if.end12.i, %if.end.i.if.end13_crit_edge, %gfs2_dinode_dealloc.exit.i, %if.then16.i.if.end13_crit_edge, %if.then8.i.if.end13_crit_edge, %if.then.i.if.end13_crit_edge
  %ret.0 = phi i32 [ %call3.i, %if.then.i.if.end13_crit_edge ], [ %call9.i, %if.then8.i.if.end13_crit_edge ], [ %retval.0.i.i, %gfs2_dinode_dealloc.exit.i ], [ %call17.i, %if.then16.i.if.end13_crit_edge ], [ %call9.i135, %if.end.i.if.end13_crit_edge ], [ 0, %if.end12.i ]
  %i_res = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 10
  %164 = ptrtoint ptr %i_res to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %i_res, align 8
  %166 = ptrtoint ptr %i_res to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %165, i32 %166)
  %cmp.i137.not = icmp eq i32 %165, %166
  br i1 %cmp.i137.not, label %if.end13.if.end17_crit_edge, label %if.then15

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  call void @gfs2_rs_deltree(ptr noundef %i_res) #13
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  %167 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %4, align 4
  %tobool.i139.not = icmp eq ptr %168, null
  br i1 %tobool.i139.not, label %if.end17.if.end20_crit_edge, label %if.then19

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %169 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %i_gl, align 4
  %gl_lockref.i = getelementptr inbounds %struct.gfs2_glock, ptr %170, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %gl_lockref.i) #13
  %gl_object.i = getelementptr inbounds %struct.gfs2_glock, ptr %170, i32 0, i32 12
  %171 = ptrtoint ptr %gl_object.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %gl_object.i, align 4
  %cmp.i140 = icmp eq ptr %172, %inode
  br i1 %cmp.i140, label %if.then.i141, label %if.then19.glock_clear_object.exit_crit_edge

if.then19.glock_clear_object.exit_crit_edge:      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %glock_clear_object.exit

if.then.i141:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  %173 = ptrtoint ptr %gl_object.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %gl_object.i, align 4
  br label %glock_clear_object.exit

glock_clear_object.exit:                          ; preds = %if.then.i141, %if.then19.glock_clear_object.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #13
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %gh) #13
  br label %if.end20

if.end20:                                         ; preds = %glock_clear_object.exit, %if.end17.if.end20_crit_edge
  %174 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %174, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %ret.0, label %do.end [
    i32 0, label %if.end20.out_crit_edge
    i32 13, label %if.end20.out_crit_edge186
    i32 -30, label %if.end20.out_crit_edge187
  ]

if.end20.out_crit_edge187:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end20.out_crit_edge186:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 110
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %sd_fsname, i32 noundef %ret.0) #16
  br label %out

out:                                              ; preds = %do.end, %if.end20.out_crit_edge, %if.end20.out_crit_edge186, %if.end20.out_crit_edge187, %if.then81.i, %if.then36.i, %land.rhs.i.out_crit_edge, %if.end14.i.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  call void @truncate_inode_pages_final(ptr noundef %i_data) #13
  %i_qadata = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 8
  %175 = ptrtoint ptr %i_qadata to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %i_qadata, align 8
  %tobool28.not = icmp eq ptr %176, null
  br i1 %tobool28.not, label %out.if.end42_crit_edge, label %if.then29

out.if.end42_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then29:                                        ; preds = %out
  %qa_ref = getelementptr inbounds %struct.gfs2_qadata, ptr %176, i32 0, i32 3
  %177 = ptrtoint ptr %qa_ref to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %qa_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp31.not = icmp eq i32 %178, 0
  br i1 %cmp31.not, label %if.then29.if.end42_crit_edge, label %if.then36, !prof !152

if.then29.if.end42_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then36:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  call void @gfs2_assert_warn_i(ptr noundef %3, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str, i32 noundef 1398) #13
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %if.then29.if.end42_crit_edge, %out.if.end42_crit_edge
  call void @gfs2_rs_delete(ptr noundef %inode, ptr noundef null) #13
  call void @gfs2_ordered_del_inode(ptr noundef %inode) #13
  call void @clear_inode(ptr noundef %inode) #13
  call void @gfs2_dir_hash_inval(ptr noundef %inode) #13
  %i_iopen_gh = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 7
  %gh_gl.i143 = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 7, i32 1
  %179 = ptrtoint ptr %gh_gl.i143 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %gh_gl.i143, align 4
  %tobool.i144.not = icmp eq ptr %180, null
  br i1 %tobool.i144.not, label %if.end42.if.end55_crit_edge, label %if.then44

if.end42.if.end55_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then44:                                        ; preds = %if.end42
  %181 = ptrtoint ptr %gh_gl.i143 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %gh_gl.i143, align 8
  %gl_lockref.i145 = getelementptr inbounds %struct.gfs2_glock, ptr %182, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %gl_lockref.i145) #13
  %gl_object.i146 = getelementptr inbounds %struct.gfs2_glock, ptr %182, i32 0, i32 12
  %183 = ptrtoint ptr %gl_object.i146 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %gl_object.i146, align 4
  %cmp.i147 = icmp eq ptr %184, %inode
  br i1 %cmp.i147, label %if.then.i148, label %if.then44.glock_clear_object.exit150_crit_edge

if.then44.glock_clear_object.exit150_crit_edge:   ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  br label %glock_clear_object.exit150

if.then.i148:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  %185 = ptrtoint ptr %gl_object.i146 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr null, ptr %gl_object.i146, align 4
  br label %glock_clear_object.exit150

glock_clear_object.exit150:                       ; preds = %if.then.i148, %if.then44.glock_clear_object.exit150_crit_edge
  call void @_raw_spin_unlock(ptr noundef %gl_lockref.i145) #13
  %gh_iflags = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 7, i32 6
  %186 = ptrtoint ptr %gh_iflags to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load volatile i32, ptr %gh_iflags, align 4
  %188 = and i32 %187, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool48.not = icmp eq i32 %188, 0
  br i1 %tobool48.not, label %glock_clear_object.exit150.if.end53_crit_edge, label %if.then49

glock_clear_object.exit150.if.end53_crit_edge:    ; preds = %glock_clear_object.exit150
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then49:                                        ; preds = %glock_clear_object.exit150
  call void @__sanitizer_cov_trace_pc() #15
  %gh_flags = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 7, i32 3
  %189 = ptrtoint ptr %gh_flags to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %gh_flags, align 8
  %191 = or i16 %190, 1024
  store i16 %191, ptr %gh_flags, align 8
  call void @gfs2_glock_dq(ptr noundef %i_iopen_gh) #13
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %glock_clear_object.exit150.if.end53_crit_edge
  call void @gfs2_glock_hold(ptr noundef %182) #13
  call void @gfs2_holder_uninit(ptr noundef %i_iopen_gh) #13
  %192 = call i32 @llvm.read_register.i32(metadata !133) #13
  %and.i.i151 = and i32 %192, -16384
  %193 = inttoptr i32 %and.i.i151 to ptr
  %task.i152 = getelementptr inbounds %struct.thread_info, ptr %193, i32 0, i32 2
  %194 = ptrtoint ptr %task.i152 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %task.i152, align 8
  %flags.i153 = getelementptr inbounds %struct.task_struct, ptr %195, i32 0, i32 3
  %196 = ptrtoint ptr %flags.i153 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %flags.i153, align 4
  %and.i154 = and i32 %197, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i154)
  %tobool.not.i155 = icmp eq i32 %and.i154, 0
  br i1 %tobool.not.i155, label %if.else.i, label %if.then.i156

if.then.i156:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  call void @gfs2_glock_queue_put(ptr noundef %182) #13
  br label %if.end55

if.else.i:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  call void @gfs2_glock_put(ptr noundef %182) #13
  br label %if.end55

if.end55:                                         ; preds = %if.else.i, %if.then.i156, %if.end42.if.end55_crit_edge
  %i_gl56 = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %198 = ptrtoint ptr %i_gl56 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %i_gl56, align 4
  %tobool57.not = icmp eq ptr %199, null
  br i1 %tobool57.not, label %if.end55.cleanup_crit_edge, label %if.then58

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then58:                                        ; preds = %if.end55
  %gl_lockref.i158 = getelementptr inbounds %struct.gfs2_glock, ptr %199, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %gl_lockref.i158) #13
  %gl_object.i159 = getelementptr inbounds %struct.gfs2_glock, ptr %199, i32 0, i32 12
  %200 = ptrtoint ptr %gl_object.i159 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %gl_object.i159, align 4
  %cmp.i160 = icmp eq ptr %201, %inode
  br i1 %cmp.i160, label %if.then.i161, label %if.then58.glock_clear_object.exit163_crit_edge

if.then58.glock_clear_object.exit163_crit_edge:   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  br label %glock_clear_object.exit163

if.then.i161:                                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  %202 = ptrtoint ptr %gl_object.i159 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr null, ptr %gl_object.i159, align 4
  br label %glock_clear_object.exit163

glock_clear_object.exit163:                       ; preds = %if.then.i161, %if.then58.glock_clear_object.exit163_crit_edge
  call void @_raw_spin_unlock(ptr noundef %gl_lockref.i158) #13
  call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 98) #13
  %203 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load volatile i32, ptr %i_flags, align 4
  %205 = and i32 %204, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool.not.i164 = icmp eq i32 %205, 0
  br i1 %tobool.not.i164, label %glock_clear_object.exit163.wait_on_bit_io.exit_crit_edge, label %if.end.i166

glock_clear_object.exit163.wait_on_bit_io.exit_crit_edge: ; preds = %glock_clear_object.exit163
  call void @__sanitizer_cov_trace_pc() #15
  br label %wait_on_bit_io.exit

if.end.i166:                                      ; preds = %glock_clear_object.exit163
  call void @__sanitizer_cov_trace_pc() #15
  %call3.i165 = call i32 @out_of_line_wait_on_bit(ptr noundef %i_flags, i32 noundef 6, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #13
  br label %wait_on_bit_io.exit

wait_on_bit_io.exit:                              ; preds = %if.end.i166, %glock_clear_object.exit163.wait_on_bit_io.exit_crit_edge
  %206 = ptrtoint ptr %i_gl56 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %i_gl56, align 4
  call void @gfs2_glock_add_to_lru(ptr noundef %207) #13
  %208 = ptrtoint ptr %i_gl56 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %i_gl56, align 4
  %210 = call i32 @llvm.read_register.i32(metadata !133) #13
  %and.i.i167 = and i32 %210, -16384
  %211 = inttoptr i32 %and.i.i167 to ptr
  %task.i168 = getelementptr inbounds %struct.thread_info, ptr %211, i32 0, i32 2
  %212 = ptrtoint ptr %task.i168 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %task.i168, align 8
  %flags.i169 = getelementptr inbounds %struct.task_struct, ptr %213, i32 0, i32 3
  %214 = ptrtoint ptr %flags.i169 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %flags.i169, align 4
  %and.i170 = and i32 %215, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i170)
  %tobool.not.i171 = icmp eq i32 %and.i170, 0
  br i1 %tobool.not.i171, label %if.else.i173, label %if.then.i172

if.then.i172:                                     ; preds = %wait_on_bit_io.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @gfs2_glock_queue_put(ptr noundef %209) #13
  br label %gfs2_glock_put_eventually.exit175

if.else.i173:                                     ; preds = %wait_on_bit_io.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @gfs2_glock_put(ptr noundef %209) #13
  br label %gfs2_glock_put_eventually.exit175

gfs2_glock_put_eventually.exit175:                ; preds = %if.else.i173, %if.then.i172
  %216 = ptrtoint ptr %i_gl56 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr null, ptr %i_gl56, align 4
  br label %cleanup

cleanup:                                          ; preds = %gfs2_glock_put_eventually.exit175, %if.end55.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gh) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfs2_put_super(ptr nocapture noundef readonly %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %sd_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 4, ptr noundef %sd_flags) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !158
  %sd_jindex_spin = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 53
  %sd_jindex_list = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 52
  br label %restart

restart:                                          ; preds = %restart.backedge, %entry
  tail call void @_raw_spin_lock(ptr noundef %sd_jindex_spin) #13
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %restart
  %jd.0.in = phi ptr [ %sd_jindex_list, %restart ], [ %jd.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %jd.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %jd.0 = load ptr, ptr %jd.0.in, align 8
  %cmp.not = icmp eq ptr %jd.0, %sd_jindex_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %jd_flags = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd.0, i32 0, i32 6
  %3 = ptrtoint ptr %jd_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %jd_flags, align 4
  %5 = and i32 %4, 2
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %if.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.end:                                           ; preds = %for.body
  %jd_flags.le = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd.0, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %sd_jindex_spin) #13
  tail call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 73) #13
  %6 = ptrtoint ptr %jd_flags.le to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %jd_flags.le, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.restart.backedge_crit_edge, label %if.end.i

if.end.restart.backedge_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %restart.backedge

restart.backedge:                                 ; preds = %if.end.i, %if.end.restart.backedge_crit_edge
  br label %restart

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call3.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %jd_flags.le, i32 noundef 1, ptr noundef nonnull @bit_wait, i32 noundef 2) #13
  br label %restart.backedge

for.end:                                          ; preds = %for.cond
  tail call void @_raw_spin_unlock(ptr noundef %sd_jindex_spin) #13
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %9 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then15, label %for.end.if.end16_crit_edge

for.end.if.end16_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @gfs2_make_fs_ro(ptr noundef %1)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %for.end.if.end16_crit_edge
  %11 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %sd_flags, align 4
  %13 = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i92 = icmp eq i32 %13, 0
  br i1 %tobool.not.i92, label %if.end16.if.end36_crit_edge, label %gfs2_withdrawing.exit

if.end16.if.end36_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

gfs2_withdrawing.exit:                            ; preds = %if.end16
  %14 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %sd_flags, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool3.not.i = icmp eq i32 %16, 0
  br i1 %tobool3.not.i, label %do.end30, label %gfs2_withdrawing.exit.if.end36_crit_edge, !prof !146

gfs2_withdrawing.exit.if.end36_crit_edge:         ; preds = %gfs2_withdrawing.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

do.end30:                                         ; preds = %gfs2_withdrawing.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 589, i32 noundef 9, ptr noundef null) #13
  br label %if.end36

if.end36:                                         ; preds = %do.end30, %gfs2_withdrawing.exit.if.end36_crit_edge, %if.end16.if.end36_crit_edge
  %sd_jindex = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 36
  %17 = ptrtoint ptr %sd_jindex to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sd_jindex, align 4
  tail call void @iput(ptr noundef %18) #13
  %sd_statfs_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 37
  %19 = ptrtoint ptr %sd_statfs_inode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sd_statfs_inode, align 8
  tail call void @iput(ptr noundef %20) #13
  %sd_rindex = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 41
  %21 = ptrtoint ptr %sd_rindex to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sd_rindex, align 4
  tail call void @iput(ptr noundef %22) #13
  %sd_quota_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 42
  %23 = ptrtoint ptr %sd_quota_inode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sd_quota_inode, align 8
  tail call void @iput(ptr noundef %24) #13
  %sd_rename_gl = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 25
  %25 = ptrtoint ptr %sd_rename_gl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sd_rename_gl, align 8
  tail call void @gfs2_glock_put(ptr noundef %26) #13
  %sd_freeze_gl = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 26
  %27 = ptrtoint ptr %sd_freeze_gl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sd_freeze_gl, align 4
  tail call void @gfs2_glock_put(ptr noundef %28) #13
  %ar_spectator = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 21, i32 3
  %29 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load = load i32, ptr %ar_spectator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool44.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool44.not, label %if.then45, label %if.end36.if.end54_crit_edge

if.end36.if.end54_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then45:                                        ; preds = %if.end36
  %gh_gl.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 57, i32 1
  %30 = ptrtoint ptr %gh_gl.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gh_gl.i, align 4
  %tobool.i93.not = icmp eq ptr %31, null
  br i1 %tobool.i93.not, label %if.then45.if.end49_crit_edge, label %if.then47

if.then45.if.end49_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then47:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  %sd_journal_gh = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 57
  tail call void @gfs2_glock_dq_uninit(ptr noundef %sd_journal_gh) #13
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.then45.if.end49_crit_edge
  %gh_gl.i94 = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 58, i32 1
  %32 = ptrtoint ptr %gh_gl.i94 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %gh_gl.i94, align 4
  %tobool.i95.not = icmp eq ptr %33, null
  br i1 %tobool.i95.not, label %if.end49.if.end53_crit_edge, label %if.then51

if.end49.if.end53_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  %sd_jinode_gh = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 58
  tail call void @gfs2_glock_dq_uninit(ptr noundef %sd_jinode_gh) #13
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end49.if.end53_crit_edge
  %sd_sc_bh = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 61
  %34 = ptrtoint ptr %sd_sc_bh to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sd_sc_bh, align 4
  %tobool.not.i96 = icmp eq ptr %35, null
  br i1 %tobool.not.i96, label %if.end53.brelse.exit_crit_edge, label %if.then.i

if.end53.brelse.exit_crit_edge:                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__brelse(ptr noundef nonnull %35) #13
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end53.brelse.exit_crit_edge
  %sd_sc_gh = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 60
  tail call void @gfs2_glock_dq_uninit(ptr noundef %sd_sc_gh) #13
  %sd_qc_gh = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 62
  tail call void @gfs2_glock_dq_uninit(ptr noundef %sd_qc_gh) #13
  %sd_sc_inodes_list.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 39
  %36 = ptrtoint ptr %sd_sc_inodes_list.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sd_sc_inodes_list.i, align 8
  %cmp.not28.i = icmp eq ptr %37, %sd_sc_inodes_list.i
  br i1 %cmp.not28.i, label %brelse.exit.free_local_statfs_inodes.exit_crit_edge, label %for.body.lr.ph.i

brelse.exit.free_local_statfs_inodes.exit_crit_edge: ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_local_statfs_inodes.exit

for.body.lr.ph.i:                                 ; preds = %brelse.exit
  %sd_jdesc.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 56
  %sd_sc_inode.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 38
  br label %for.body.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %lsi.029.i = phi ptr [ %37, %for.body.lr.ph.i ], [ %safe.031.i, %list_del.exit.i.for.body.i_crit_edge ]
  %38 = ptrtoint ptr %lsi.029.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %safe.031.i = load ptr, ptr %lsi.029.i, align 4
  %si_jid.i = getelementptr inbounds %struct.local_statfs_inode, ptr %lsi.029.i, i32 0, i32 2
  %39 = ptrtoint ptr %si_jid.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %si_jid.i, align 4
  %41 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sd_jdesc.i, align 4
  %jd_jid.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %jd_jid.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %jd_jid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %44)
  %cmp7.i = icmp eq i32 %40, %44
  br i1 %cmp7.i, label %if.then.i98, label %for.body.i.if.end.i100_crit_edge

for.body.i.if.end.i100_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i100

if.then.i98:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %sd_sc_inode.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %sd_sc_inode.i, align 4
  br label %if.end.i100

if.end.i100:                                      ; preds = %if.then.i98, %for.body.i.if.end.i100_crit_edge
  %si_sc_inode.i = getelementptr inbounds %struct.local_statfs_inode, ptr %lsi.029.i, i32 0, i32 1
  %46 = ptrtoint ptr %si_sc_inode.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %si_sc_inode.i, align 4
  %tobool.not.i99 = icmp eq ptr %47, null
  br i1 %tobool.not.i99, label %if.end.i100.if.end10.i_crit_edge, label %if.then8.i

if.end.i100.if.end10.i_crit_edge:                 ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iput(ptr noundef nonnull %47) #13
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end.i100.if.end10.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lsi.029.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end10.i.list_del.exit.i_crit_edge

if.end10.i.list_del.exit.i_crit_edge:             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %lsi.029.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i.i, align 4
  %50 = ptrtoint ptr %lsi.029.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lsi.029.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end10.i.list_del.exit.i_crit_edge
  %54 = ptrtoint ptr %lsi.029.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 256 to ptr), ptr %lsi.029.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lsi.029.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %lsi.029.i) #13
  %cmp.not.i = icmp eq ptr %safe.031.i, %sd_sc_inodes_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.free_local_statfs_inodes.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

list_del.exit.i.free_local_statfs_inodes.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_local_statfs_inodes.exit

free_local_statfs_inodes.exit:                    ; preds = %list_del.exit.i.free_local_statfs_inodes.exit_crit_edge, %brelse.exit.free_local_statfs_inodes.exit_crit_edge
  %sd_qc_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 40
  %56 = ptrtoint ptr %sd_qc_inode to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sd_qc_inode, align 8
  tail call void @iput(ptr noundef %57) #13
  br label %if.end54

if.end54:                                         ; preds = %free_local_statfs_inodes.exit, %if.end36.if.end54_crit_edge
  %sd_live_gh = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 24
  tail call void @gfs2_glock_dq_uninit(ptr noundef %sd_live_gh) #13
  tail call void @gfs2_clear_rgrpd(ptr noundef %1) #13
  tail call void @gfs2_jindex_free(ptr noundef %1)
  tail call void @gfs2_gl_hash_clear(ptr noundef %1) #13
  %sd_aspace = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 77
  tail call void @truncate_inode_pages_final(ptr noundef %sd_aspace) #13
  tail call void @gfs2_delete_debugfs_file(ptr noundef %1) #13
  tail call void @gfs2_lm_unmount(ptr noundef %1) #13
  tail call void @gfs2_sys_fs_del(ptr noundef %1) #13
  tail call void @free_sbd(ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_sync_fs(ptr noundef %sb, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %call = tail call i32 @gfs2_quota_sync(ptr noundef %sb, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool.not = icmp eq i32 %wait, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @gfs2_log_flush(ptr noundef %1, ptr noundef null, i32 noundef 4194306) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sd_log_error = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 98
  %2 = ptrtoint ptr %sd_log_error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sd_log_error, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_freeze(ptr nocapture noundef readonly %sb) #0 align 64 {
entry:
  %list.i = alloca %struct.list_head, align 4
  %lh.i = alloca %struct.gfs2_log_header_host, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %sd_freeze_mutex = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 109
  tail call void @mutex_lock_nested(ptr noundef %sd_freeze_mutex, i32 noundef 0) #13
  %sd_freeze_state = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 108
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sd_freeze_state, i32 noundef 4) #13
  %2 = ptrtoint ptr %sd_freeze_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sd_freeze_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %for.cond.preheader, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.cond.preheader:                               ; preds = %entry
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sd_flags.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i60 = icmp eq i32 %6, 0
  br i1 %tobool.not.i60, label %gfs2_withdrawn.exit.lr.ph, label %for.cond.preheader.out_crit_edge

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

gfs2_withdrawn.exit.lr.ph:                        ; preds = %for.cond.preheader
  %7 = getelementptr inbounds %struct.list_head, ptr %list.i, i32 0, i32 1
  %sd_jindex_list.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 52
  %sd_freeze_gl.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 26
  %sd_freeze_gh.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 107
  %lh_flags.i = getelementptr inbounds %struct.gfs2_log_header_host, ptr %lh.i, i32 0, i32 1
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 110
  br label %gfs2_withdrawn.exit

gfs2_withdrawn.exit:                              ; preds = %do.end31.gfs2_withdrawn.exit_crit_edge, %gfs2_withdrawn.exit.lr.ph
  %8 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %sd_flags.i, align 4
  %10 = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.i.not = icmp eq i32 %10, 0
  br i1 %tobool3.i.not, label %if.end3, label %gfs2_withdrawn.exit.out_crit_edge

gfs2_withdrawn.exit.out_crit_edge:                ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end3:                                          ; preds = %gfs2_withdrawn.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list.i) #13
  %11 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list.i, ptr %list.i, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list.i, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %lh.i) #13
  %13 = call ptr @memset(ptr %lh.i, i32 255, i32 48)
  %14 = ptrtoint ptr %sd_jindex_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %jd.094.i = load ptr, ptr %sd_jindex_list.i, align 8
  %cmp.not95.i = icmp eq ptr %jd.094.i, %sd_jindex_list.i
  br i1 %cmp.not95.i, label %entry.for.end_crit_edge.i, label %if.end3.for.body.i_crit_edge

if.end3.for.body.i_crit_edge:                     ; preds = %if.end3
  br label %for.body.i

entry.for.end_crit_edge.i:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %.pre.i = call ptr @llvm.returnaddress(i32 0) #13
  br label %for.end.i

for.body.i:                                       ; preds = %list_add.exit.i.for.body.i_crit_edge, %if.end3.for.body.i_crit_edge
  %jd.096.i = phi ptr [ %jd.0.i, %list_add.exit.i.for.body.i_crit_edge ], [ %jd.094.i, %if.end3.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 40) #17
  %tobool.not.i50 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i50, label %for.body.i.out.i_crit_edge, label %if.end.i

for.body.i.out.i_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.end.i:                                         ; preds = %for.body.i
  %jd_inode.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd.096.i, i32 0, i32 4
  %16 = ptrtoint ptr %jd_inode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %jd_inode.i, align 8
  %i_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_gl.i, align 4
  %gh.i = getelementptr inbounds %struct.lfcc, ptr %call7.i.i, i32 0, i32 1
  %20 = call ptr @llvm.returnaddress(i32 0) #13
  %21 = ptrtoint ptr %20 to i32
  call void @__gfs2_holder_init(ptr noundef %19, i32 noundef 3, i16 noundef zeroext 0, ptr noundef %gh.i, i32 noundef %21) #13
  %call.i.i51 = call i32 @gfs2_glock_nq(ptr noundef %gh.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51)
  %tobool.not.i.i = icmp eq i32 %call.i.i51, 0
  br i1 %tobool.not.i.i, label %if.end7.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @gfs2_holder_uninit(ptr noundef %gh.i) #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %out.i

if.end7.i:                                        ; preds = %if.end.i
  %22 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %list.i, ptr noundef %23) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end7.i.list_add.exit.i_crit_edge

if.end7.i.list_add.exit.i_crit_edge:              ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list.i, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call7.i.i, ptr %list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end7.i.list_add.exit.i_crit_edge
  %28 = ptrtoint ptr %jd.096.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %jd.0.i = load ptr, ptr %jd.096.i, align 8
  %cmp.not.i = icmp eq ptr %jd.0.i, %sd_jindex_list.i
  br i1 %cmp.not.i, label %list_add.exit.i.for.end.i_crit_edge, label %list_add.exit.i.for.body.i_crit_edge

list_add.exit.i.for.body.i_crit_edge:             ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

list_add.exit.i.for.end.i_crit_edge:              ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %list_add.exit.i.for.end.i_crit_edge, %entry.for.end_crit_edge.i
  %.lcssa.sink = phi ptr [ %.pre.i, %entry.for.end_crit_edge.i ], [ %20, %list_add.exit.i.for.end.i_crit_edge ]
  %29 = ptrtoint ptr %.lcssa.sink to i32
  %30 = ptrtoint ptr %sd_freeze_gl.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sd_freeze_gl.i, align 4
  call void @__gfs2_holder_init(ptr noundef %31, i32 noundef 1, i16 noundef zeroext 4, ptr noundef %sd_freeze_gh.i, i32 noundef %29) #13
  %call.i83.i = call i32 @gfs2_glock_nq(ptr noundef %sd_freeze_gh.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i)
  %tobool.not.i84.i = icmp eq i32 %call.i83.i, 0
  br i1 %tobool.not.i84.i, label %for.end.i.for.cond23.i_crit_edge, label %gfs2_glock_nq_init.exit86.thread.i

for.end.i.for.cond23.i_crit_edge:                 ; preds = %for.end.i
  br label %for.cond23.i

gfs2_glock_nq_init.exit86.thread.i:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @gfs2_holder_uninit(ptr noundef %sd_freeze_gh.i) #13
  br label %out.i

for.cond23.i:                                     ; preds = %if.end36.i.for.cond23.i_crit_edge, %for.end.i.for.cond23.i_crit_edge
  %jd.1.in.i = phi ptr [ %jd.1.i, %if.end36.i.for.cond23.i_crit_edge ], [ %sd_jindex_list.i, %for.end.i.for.cond23.i_crit_edge ]
  %32 = ptrtoint ptr %jd.1.in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %jd.1.i = load ptr, ptr %jd.1.in.i, align 8
  %cmp26.not.i = icmp eq ptr %jd.1.i, %sd_jindex_list.i
  br i1 %cmp26.not.i, label %for.cond23.i.out.i_crit_edge, label %for.body28.i

for.cond23.i.out.i_crit_edge:                     ; preds = %for.cond23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

for.body28.i:                                     ; preds = %for.cond23.i
  %call29.i = call i32 @gfs2_jdesc_check(ptr noundef %jd.1.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %for.body28.i.if.then48.i_crit_edge

for.body28.i.if.then48.i_crit_edge:               ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48.i

if.end32.i:                                       ; preds = %for.body28.i
  %call33.i = call i32 @gfs2_find_jhead(ptr noundef %jd.1.i, ptr noundef nonnull %lh.i, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %if.end32.i.if.then48.i_crit_edge

if.end32.i.if.then48.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48.i

if.end36.i:                                       ; preds = %if.end32.i
  %33 = ptrtoint ptr %lh_flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %lh_flags.i, align 8
  %and.i = and i32 %34, 1
  %tobool37.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool37.not.i, label %if.end36.i.if.then48.i_crit_edge, label %if.end36.i.for.cond23.i_crit_edge

if.end36.i.for.cond23.i_crit_edge:                ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond23.i

if.end36.i.if.then48.i_crit_edge:                 ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48.i

if.then48.i:                                      ; preds = %if.end36.i.if.then48.i_crit_edge, %if.end32.i.if.then48.i_crit_edge, %for.body28.i.if.then48.i_crit_edge
  %error.1.ph.i = phi i32 [ -16, %if.end36.i.if.then48.i_crit_edge ], [ %call33.i, %if.end32.i.if.then48.i_crit_edge ], [ %call29.i, %for.body28.i.if.then48.i_crit_edge ]
  call void @gfs2_freeze_unlock(ptr noundef %sd_freeze_gh.i) #13
  br label %out.i

out.i:                                            ; preds = %if.then48.i, %for.cond23.i.out.i_crit_edge, %gfs2_glock_nq_init.exit86.thread.i, %if.then6.i, %for.body.i.out.i_crit_edge
  %error.2.i = phi i32 [ %call.i.i51, %if.then6.i ], [ %error.1.ph.i, %if.then48.i ], [ %call.i83.i, %gfs2_glock_nq_init.exit86.thread.i ], [ 0, %for.cond23.i.out.i_crit_edge ], [ -12, %for.body.i.out.i_crit_edge ]
  %35 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %list.i, align 4
  %cmp.i.not97.i = icmp eq ptr %36, %list.i
  br i1 %cmp.i.not97.i, label %out.i.gfs2_lock_fs_check_clean.exit_crit_edge, label %out.i.while.body.i_crit_edge

out.i.while.body.i_crit_edge:                     ; preds = %out.i
  br label %while.body.i

out.i.gfs2_lock_fs_check_clean.exit_crit_edge:    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gfs2_lock_fs_check_clean.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %out.i.while.body.i_crit_edge
  %37 = phi ptr [ %47, %list_del.exit.i.while.body.i_crit_edge ], [ %36, %out.i.while.body.i_crit_edge ]
  %call.i.i87.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %37) #13
  br i1 %call.i.i87.i, label %if.end.i.i88.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i88.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i88.i, %while.body.i.list_del.exit.i_crit_edge
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %37, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %gh59.i = getelementptr inbounds %struct.lfcc, ptr %37, i32 0, i32 1
  call void @gfs2_glock_dq_uninit(ptr noundef %gh59.i) #13
  call void @kfree(ptr noundef %37) #13
  %46 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %list.i, align 4
  %cmp.i.not.i = icmp eq ptr %47, %list.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.gfs2_lock_fs_check_clean.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

list_del.exit.i.gfs2_lock_fs_check_clean.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gfs2_lock_fs_check_clean.exit

gfs2_lock_fs_check_clean.exit:                    ; preds = %list_del.exit.i.gfs2_lock_fs_check_clean.exit_crit_edge, %out.i.gfs2_lock_fs_check_clean.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %lh.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list.i) #13
  %48 = zext i32 %error.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %error.2.i, label %do.end22 [
    i32 0, label %for.end
    i32 -16, label %do.end
    i32 -5, label %do.end14
  ]

do.end:                                           ; preds = %gfs2_lock_fs_check_clean.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %sd_fsname) #16
  br label %do.end31

do.end14:                                         ; preds = %gfs2_lock_fs_check_clean.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %sd_fsname) #16
  br label %out

do.end22:                                         ; preds = %gfs2_lock_fs_check_clean.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %sd_fsname, i32 noundef %error.2.i) #16
  br label %do.end31

do.end31:                                         ; preds = %do.end22, %do.end
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %sd_fsname) #16
  call void @msleep(i32 noundef 1000) #13
  %49 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %sd_flags.i, align 4
  %51 = and i32 %50, 4
  %tobool.not.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i, label %do.end31.gfs2_withdrawn.exit_crit_edge, label %do.end31.out_crit_edge

do.end31.out_crit_edge:                           ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end31.gfs2_withdrawn.exit_crit_edge:           ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %gfs2_withdrawn.exit

for.end:                                          ; preds = %gfs2_lock_fs_check_clean.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @_set_bit(i32 noundef 10, ptr noundef %sd_flags.i) #13
  br label %out

out:                                              ; preds = %for.end, %do.end31.out_crit_edge, %do.end14, %gfs2_withdrawn.exit.out_crit_edge, %for.cond.preheader.out_crit_edge, %entry.out_crit_edge
  %error.0 = phi i32 [ -5, %do.end14 ], [ 0, %for.end ], [ -16, %entry.out_crit_edge ], [ -22, %for.cond.preheader.out_crit_edge ], [ -22, %do.end31.out_crit_edge ], [ -22, %gfs2_withdrawn.exit.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %sd_freeze_mutex) #13
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_unfreeze(ptr nocapture noundef readonly %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %sd_freeze_mutex = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 109
  tail call void @mutex_lock_nested(ptr noundef %sd_freeze_mutex, i32 noundef 0) #13
  %sd_freeze_state = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 108
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sd_freeze_state, i32 noundef 4) #13
  %2 = ptrtoint ptr %sd_freeze_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sd_freeze_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %gh_gl.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 107, i32 1
  %4 = ptrtoint ptr %gh_gl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gh_gl.i, align 4
  %tobool.i.not = icmp eq ptr %5, null
  br i1 %tobool.i.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @mutex_unlock(ptr noundef %sd_freeze_mutex) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sd_freeze_gh = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 107
  tail call void @gfs2_freeze_unlock(ptr noundef %sd_freeze_gh) #13
  tail call void @mutex_unlock(ptr noundef %sd_freeze_mutex) #13
  %sd_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 73) #13
  %6 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sd_flags, align 4
  %8 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call3.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %sd_flags, i32 noundef 10, ptr noundef nonnull @bit_wait, i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call3.i, %if.end.i ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %call = tail call i32 @gfs2_rindex_update(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %sd_tune = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 22
  %gt_statfs_slow = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 22, i32 10
  tail call void @_raw_spin_lock(ptr noundef %sd_tune) #13
  %4 = ptrtoint ptr %gt_statfs_slow to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gt_statfs_slow, align 4
  tail call void @_raw_spin_unlock(ptr noundef %sd_tune) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 2048) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then4.cleanup_crit_edge, label %if.then4.for.body.i_crit_edge

if.then4.for.body.i_crit_edge:                    ; preds = %if.then4
  br label %for.body.i

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then4.for.body.i_crit_edge
  %x.083.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then4.for.body.i_crit_edge ]
  %gh_gl.i.i = getelementptr %struct.gfs2_holder, ptr %call7.i.i.i, i32 %x.083.i, i32 1
  %7 = ptrtoint ptr %gh_gl.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %gh_gl.i.i, align 8
  %inc.i = add nuw nsw i32 %x.083.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %call1.i = tail call ptr @gfs2_rgrpd_get_first(ptr noundef %3) #13
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i.backedge, %for.end.i
  %sc.sroa.0.1 = phi i64 [ 0, %for.end.i ], [ %sc.sroa.0.5, %for.body5.i.backedge ]
  %sc.sroa.11.1 = phi i64 [ 0, %for.end.i ], [ %sc.sroa.11.5, %for.body5.i.backedge ]
  %sc.sroa.22.1 = phi i64 [ 0, %for.end.i ], [ %sc.sroa.22.5, %for.body5.i.backedge ]
  %error.192.i = phi i32 [ 0, %for.end.i ], [ %34, %for.body5.i.backedge ]
  %done.091.i = phi i32 [ 1, %for.end.i ], [ %done.091.i.be, %for.body5.i.backedge ]
  %x.186.i = phi i32 [ 0, %for.end.i ], [ %x.186.i.be, %for.body5.i.backedge ]
  %rgd_next.184.i = phi ptr [ %call1.i, %for.end.i ], [ %rgd_next.2.i, %for.body5.i.backedge ]
  %add.ptr6.i = getelementptr %struct.gfs2_holder, ptr %call7.i.i.i, i32 %x.186.i
  %gh_gl.i74.i = getelementptr %struct.gfs2_holder, ptr %call7.i.i.i, i32 %x.186.i, i32 1
  %8 = ptrtoint ptr %gh_gl.i74.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gh_gl.i74.i, align 8
  %tobool.i.not.i = icmp eq ptr %9, null
  br i1 %tobool.i.not.i, label %for.body5.i.if.else23.i_crit_edge, label %land.lhs.true.i

for.body5.i.if.else23.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else23.i

land.lhs.true.i:                                  ; preds = %for.body5.i
  %call8.i = tail call i32 @gfs2_glock_poll(ptr noundef %add.ptr6.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.end20.i_crit_edge, label %if.then10.i

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  %call11.i = tail call i32 @gfs2_glock_wait(ptr noundef %add.ptr6.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.else.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @gfs2_holder_uninit(ptr noundef %add.ptr6.i) #13
  br label %if.end20.i

if.else.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.192.i)
  %tobool14.not.i = icmp eq i32 %error.192.i, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %if.else.i.if.end18.i_crit_edge

if.else.i.if.end18.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %gh_gl.i74.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gh_gl.i74.i, align 8
  %call16.i = tail call ptr @gfs2_glock2rgrp(ptr noundef %11) #13
  tail call void @gfs2_rgrp_verify(ptr noundef %call16.i) #13
  %rd_data.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call16.i, i32 0, i32 5
  %12 = ptrtoint ptr %rd_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rd_data.i.i, align 4
  %conv.i.i = zext i32 %13 to i64
  %add.i.i = add i64 %sc.sroa.0.1, %conv.i.i
  %rd_free.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call16.i, i32 0, i32 7
  %14 = ptrtoint ptr %rd_free.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rd_free.i.i, align 4
  %conv1.i.i = zext i32 %15 to i64
  %add2.i.i = add i64 %sc.sroa.11.1, %conv1.i.i
  %rd_dinodes.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call16.i, i32 0, i32 11
  %16 = ptrtoint ptr %rd_dinodes.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rd_dinodes.i.i, align 4
  %conv3.i.i = zext i32 %17 to i64
  %add4.i.i = add i64 %sc.sroa.22.1, %conv3.i.i
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.else.i.if.end18.i_crit_edge
  %sc.sroa.0.2 = phi i64 [ %add.i.i, %if.then15.i ], [ %sc.sroa.0.1, %if.else.i.if.end18.i_crit_edge ]
  %sc.sroa.11.2 = phi i64 [ %add2.i.i, %if.then15.i ], [ %sc.sroa.11.1, %if.else.i.if.end18.i_crit_edge ]
  %sc.sroa.22.2 = phi i64 [ %add4.i.i, %if.then15.i ], [ %sc.sroa.22.1, %if.else.i.if.end18.i_crit_edge ]
  tail call void @gfs2_glock_dq_uninit(ptr noundef %add.ptr6.i) #13
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end18.i, %if.then13.i, %land.lhs.true.i.if.end20.i_crit_edge
  %sc.sroa.0.3 = phi i64 [ %sc.sroa.0.1, %land.lhs.true.i.if.end20.i_crit_edge ], [ %sc.sroa.0.2, %if.end18.i ], [ %sc.sroa.0.1, %if.then13.i ]
  %sc.sroa.11.3 = phi i64 [ %sc.sroa.11.1, %land.lhs.true.i.if.end20.i_crit_edge ], [ %sc.sroa.11.2, %if.end18.i ], [ %sc.sroa.11.1, %if.then13.i ]
  %sc.sroa.22.3 = phi i64 [ %sc.sroa.22.1, %land.lhs.true.i.if.end20.i_crit_edge ], [ %sc.sroa.22.2, %if.end18.i ], [ %sc.sroa.22.1, %if.then13.i ]
  %error.3.ph.i = phi i32 [ %error.192.i, %land.lhs.true.i.if.end20.i_crit_edge ], [ %error.192.i, %if.end18.i ], [ %call11.i, %if.then13.i ]
  %18 = ptrtoint ptr %gh_gl.i74.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr.i = load ptr, ptr %gh_gl.i74.i, align 8
  %tobool.i76.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool.i76.not.i, label %if.end20.i.if.else23.i_crit_edge, label %if.end20.i.if.end31.i_crit_edge

if.end20.i.if.end31.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i

if.end20.i.if.else23.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else23.i

if.else23.i:                                      ; preds = %if.end20.i.if.else23.i_crit_edge, %for.body5.i.if.else23.i_crit_edge
  %sc.sroa.0.4 = phi i64 [ %sc.sroa.0.1, %for.body5.i.if.else23.i_crit_edge ], [ %sc.sroa.0.3, %if.end20.i.if.else23.i_crit_edge ]
  %sc.sroa.11.4 = phi i64 [ %sc.sroa.11.1, %for.body5.i.if.else23.i_crit_edge ], [ %sc.sroa.11.3, %if.end20.i.if.else23.i_crit_edge ]
  %sc.sroa.22.4 = phi i64 [ %sc.sroa.22.1, %for.body5.i.if.else23.i_crit_edge ], [ %sc.sroa.22.3, %if.end20.i.if.else23.i_crit_edge ]
  %error.380.i = phi i32 [ %error.192.i, %for.body5.i.if.else23.i_crit_edge ], [ %error.3.ph.i, %if.end20.i.if.else23.i_crit_edge ]
  %tobool24.not.i = icmp eq ptr %rgd_next.184.i, null
  br i1 %tobool24.not.i, label %if.else23.i.if.end31.i_crit_edge, label %land.lhs.true25.i

if.else23.i.if.end31.i_crit_edge:                 ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i

land.lhs.true25.i:                                ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.380.i)
  %tobool26.not.i = icmp eq i32 %error.380.i, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %land.lhs.true25.i.if.end31.i_crit_edge

land.lhs.true25.i.if.end31.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i

if.then27.i:                                      ; preds = %land.lhs.true25.i
  %rd_gl.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd_next.184.i, i32 0, i32 1
  %19 = ptrtoint ptr %rd_gl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rd_gl.i, align 4
  %21 = tail call ptr @llvm.returnaddress(i32 0) #13
  %22 = ptrtoint ptr %21 to i32
  tail call void @__gfs2_holder_init(ptr noundef %20, i32 noundef 3, i16 noundef zeroext 64, ptr noundef %add.ptr6.i, i32 noundef %22) #13
  %call.i.i = tail call i32 @gfs2_glock_nq(ptr noundef %add.ptr6.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then27.i.gfs2_glock_nq_init.exit.i_crit_edge, label %if.then.i.i

if.then27.i.gfs2_glock_nq_init.exit.i_crit_edge:  ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gfs2_glock_nq_init.exit.i

if.then.i.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @gfs2_holder_uninit(ptr noundef %add.ptr6.i) #13
  br label %gfs2_glock_nq_init.exit.i

gfs2_glock_nq_init.exit.i:                        ; preds = %if.then.i.i, %if.then27.i.gfs2_glock_nq_init.exit.i_crit_edge
  %call29.i = tail call ptr @gfs2_rgrpd_get_next(ptr noundef nonnull %rgd_next.184.i) #13
  br label %if.end31.i

if.end31.i:                                       ; preds = %gfs2_glock_nq_init.exit.i, %land.lhs.true25.i.if.end31.i_crit_edge, %if.else23.i.if.end31.i_crit_edge, %if.end20.i.if.end31.i_crit_edge
  %sc.sroa.0.5 = phi i64 [ %sc.sroa.0.4, %if.else23.i.if.end31.i_crit_edge ], [ %sc.sroa.0.4, %gfs2_glock_nq_init.exit.i ], [ %sc.sroa.0.4, %land.lhs.true25.i.if.end31.i_crit_edge ], [ %sc.sroa.0.3, %if.end20.i.if.end31.i_crit_edge ]
  %sc.sroa.11.5 = phi i64 [ %sc.sroa.11.4, %if.else23.i.if.end31.i_crit_edge ], [ %sc.sroa.11.4, %gfs2_glock_nq_init.exit.i ], [ %sc.sroa.11.4, %land.lhs.true25.i.if.end31.i_crit_edge ], [ %sc.sroa.11.3, %if.end20.i.if.end31.i_crit_edge ]
  %sc.sroa.22.5 = phi i64 [ %sc.sroa.22.4, %if.else23.i.if.end31.i_crit_edge ], [ %sc.sroa.22.4, %gfs2_glock_nq_init.exit.i ], [ %sc.sroa.22.4, %land.lhs.true25.i.if.end31.i_crit_edge ], [ %sc.sroa.22.3, %if.end20.i.if.end31.i_crit_edge ]
  %rgd_next.2.i = phi ptr [ null, %if.else23.i.if.end31.i_crit_edge ], [ %call29.i, %gfs2_glock_nq_init.exit.i ], [ %rgd_next.184.i, %land.lhs.true25.i.if.end31.i_crit_edge ], [ %rgd_next.184.i, %if.end20.i.if.end31.i_crit_edge ]
  %done.1.i = phi i32 [ %done.091.i, %if.else23.i.if.end31.i_crit_edge ], [ 0, %gfs2_glock_nq_init.exit.i ], [ %done.091.i, %land.lhs.true25.i.if.end31.i_crit_edge ], [ 0, %if.end20.i.if.end31.i_crit_edge ]
  %error.4.i = phi i32 [ %error.380.i, %if.else23.i.if.end31.i_crit_edge ], [ %call.i.i, %gfs2_glock_nq_init.exit.i ], [ %error.380.i, %land.lhs.true25.i.if.end31.i_crit_edge ], [ %error.3.ph.i, %if.end20.i.if.end31.i_crit_edge ]
  %23 = tail call i32 @llvm.read_register.i32(metadata !133) #13
  %and.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stack.i.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %31 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i77.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i77.i, label %signal_pending.exit.i, label %if.end31.i.signal_pending.exit.thread.i_crit_edge, !prof !152

if.end31.i.signal_pending.exit.thread.i_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %signal_pending.exit.thread.i

signal_pending.exit.i:                            ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %28, align 4
  %and1.i.i.i.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool34.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  %spec.select.i = select i1 %tobool34.not.i, i32 %error.4.i, i32 -512
  br label %signal_pending.exit.thread.i

signal_pending.exit.thread.i:                     ; preds = %signal_pending.exit.i, %if.end31.i.signal_pending.exit.thread.i_crit_edge
  %34 = phi i32 [ -512, %if.end31.i.signal_pending.exit.thread.i_crit_edge ], [ %spec.select.i, %signal_pending.exit.i ]
  %inc38.i = add nuw nsw i32 %x.186.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inc38.i)
  %exitcond93.not.i = icmp eq i32 %inc38.i, 64
  br i1 %exitcond93.not.i, label %for.end39.i, label %signal_pending.exit.thread.i.for.body5.i.backedge_crit_edge

signal_pending.exit.thread.i.for.body5.i.backedge_crit_edge: ; preds = %signal_pending.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body5.i.backedge

for.body5.i.backedge:                             ; preds = %if.end42.i, %signal_pending.exit.thread.i.for.body5.i.backedge_crit_edge
  %done.091.i.be = phi i32 [ %done.1.i, %signal_pending.exit.thread.i.for.body5.i.backedge_crit_edge ], [ 1, %if.end42.i ]
  %x.186.i.be = phi i32 [ %inc38.i, %signal_pending.exit.thread.i.for.body5.i.backedge_crit_edge ], [ 0, %if.end42.i ]
  br label %for.body5.i

for.end39.i:                                      ; preds = %signal_pending.exit.thread.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.1.i)
  %tobool40.not.i = icmp eq i32 %done.1.i, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %if.end7

if.end42.i:                                       ; preds = %for.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @yield() #13
  br label %for.body5.i.backedge

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sd_statfs_master.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 44
  %sd_statfs_local.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 45
  %sd_statfs_spin.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 43
  tail call void @_raw_spin_lock(ptr noundef %sd_statfs_spin.i) #13
  %35 = ptrtoint ptr %sd_statfs_master.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %sc.sroa.0.0.copyload = load i64, ptr %sd_statfs_master.i, align 8
  %sc.sroa.11.0.sd_statfs_master.i.sroa_idx = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 44, i32 1
  %36 = ptrtoint ptr %sc.sroa.11.0.sd_statfs_master.i.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %36)
  %sc.sroa.11.0.copyload = load i64, ptr %sc.sroa.11.0.sd_statfs_master.i.sroa_idx, align 8
  %sc.sroa.22.0.sd_statfs_master.i.sroa_idx = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 44, i32 2
  %37 = ptrtoint ptr %sc.sroa.22.0.sd_statfs_master.i.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %37)
  %sc.sroa.22.0.copyload = load i64, ptr %sc.sroa.22.0.sd_statfs_master.i.sroa_idx, align 8
  %38 = ptrtoint ptr %sd_statfs_local.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %sd_statfs_local.i, align 8
  %add.i = add i64 %39, %sc.sroa.0.0.copyload
  %sc_free.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 45, i32 1
  %40 = ptrtoint ptr %sc_free.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %sc_free.i, align 8
  %add3.i = add i64 %41, %sc.sroa.11.0.copyload
  %sc_dinodes.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 45, i32 2
  %42 = ptrtoint ptr %sc_dinodes.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %sc_dinodes.i, align 8
  %add5.i = add i64 %43, %sc.sroa.22.0.copyload
  tail call void @_raw_spin_unlock(ptr noundef %sd_statfs_spin.i) #13
  %44 = tail call i64 @llvm.smax.i64(i64 %add3.i, i64 0)
  %45 = tail call i64 @llvm.smin.i64(i64 %44, i64 %add.i)
  %46 = tail call i64 @llvm.smax.i64(i64 %add5.i, i64 0)
  br label %if.end10

if.end7:                                          ; preds = %for.end39.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool8.not = icmp eq i32 %34, 0
  br i1 %tobool8.not, label %if.end7.if.end10_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.end10:                                         ; preds = %if.end7.if.end10_crit_edge, %if.else
  %sc.sroa.22.859 = phi i64 [ %sc.sroa.22.5, %if.end7.if.end10_crit_edge ], [ %46, %if.else ]
  %sc.sroa.11.958 = phi i64 [ %sc.sroa.11.5, %if.end7.if.end10_crit_edge ], [ %45, %if.else ]
  %sc.sroa.0.757 = phi i64 [ %sc.sroa.0.5, %if.end7.if.end10_crit_edge ], [ %add.i, %if.else ]
  %47 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 18225520, ptr %buf, align 8
  %sb_bsize = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 5, i32 4
  %48 = ptrtoint ptr %sb_bsize to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sb_bsize, align 8
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %50 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %f_bsize, align 4
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %51 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %sc.sroa.0.757, ptr %f_blocks, align 8
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %52 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %sc.sroa.11.958, ptr %f_bfree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %53 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %sc.sroa.11.958, ptr %f_bavail, align 8
  %add = add i64 %sc.sroa.11.958, %sc.sroa.22.859
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %54 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %add, ptr %f_files, align 8
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %55 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %sc.sroa.11.958, ptr %f_ffree, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %56 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 255, ptr %f_namelen, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end7.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %call, %entry.cleanup_crit_edge ], [ %34, %if.end7.cleanup_crit_edge ], [ -12, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_show_options(ptr noundef %s, ptr noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %sd_args = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 21
  %sd_master_dir = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %sd_master_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_master_dir, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %d1.addr.0.i = phi ptr [ %root, %entry ], [ %7, %if.end.i.do.body.i_crit_edge ]
  %cmp.i = icmp eq ptr %d1.addr.0.i, %5
  br i1 %cmp.i, label %if.then, label %if.end.i

if.end.i:                                         ; preds = %do.body.i
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %d1.addr.0.i, i32 0, i32 3
  %6 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_parent.i, align 8
  %d_parent1.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %d_parent1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_parent1.i, align 8
  %cmp2.not.i = icmp eq ptr %7, %9
  br i1 %cmp2.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.30) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end.i.if.end_crit_edge
  %10 = ptrtoint ptr %sd_args to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sd_args, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not = icmp eq i8 %11, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then2:                                         ; preds = %if.end
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 44) #13
  tail call void @seq_escape_mem(ptr noundef %s, ptr noundef nonnull @.str.31, i32 noundef 9, i32 noundef 8, ptr noundef nonnull @.str.60) #13
  %tobool.not.i = icmp eq ptr %sd_args, null
  br i1 %tobool.not.i, label %if.then2.if.end4_crit_edge, label %if.then.i

if.then2.if.end4_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 61) #13
  %call.i.i5.i = tail call i32 @strlen(ptr noundef nonnull %sd_args) #18
  tail call void @seq_escape_mem(ptr noundef %s, ptr noundef nonnull %sd_args, i32 noundef %call.i.i5.i, i32 noundef 8, ptr noundef nonnull @.str.61) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then.i, %if.then2.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %ar_locktable = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 21, i32 1
  %12 = ptrtoint ptr %ar_locktable to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ar_locktable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  br i1 %tobool6.not, label %if.end4.if.end10_crit_edge, label %if.then7

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then7:                                         ; preds = %if.end4
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 44) #13
  tail call void @seq_escape_mem(ptr noundef %s, ptr noundef nonnull @.str.32, i32 noundef 9, i32 noundef 8, ptr noundef nonnull @.str.60) #13
  %tobool.not.i192 = icmp eq ptr %ar_locktable, null
  br i1 %tobool.not.i192, label %if.then7.if.end10_crit_edge, label %if.then.i194

if.then7.if.end10_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then.i194:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 61) #13
  %call.i.i5.i193 = tail call i32 @strlen(ptr noundef nonnull %ar_locktable) #18
  tail call void @seq_escape_mem(ptr noundef %s, ptr noundef nonnull %ar_locktable, i32 noundef %call.i.i5.i193, i32 noundef 8, ptr noundef nonnull @.str.61) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then.i194, %if.then7.if.end10_crit_edge, %if.end4.if.end10_crit_edge
  %ar_hostdata = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 21, i32 2
  %14 = ptrtoint ptr %ar_hostdata to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ar_hostdata, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool12.not = icmp eq i8 %15, 0
  br i1 %tobool12.not, label %if.end10.if.end16_crit_edge, label %if.then13

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then13:                                        ; preds = %if.end10
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 44) #13
  tail call void @seq_escape_mem(ptr noundef %s, ptr noundef nonnull @.str.33, i32 noundef 8, i32 noundef 8, ptr noundef nonnull @.str.60) #13
  %tobool.not.i198 = icmp eq ptr %ar_hostdata, null
  br i1 %tobool.not.i198, label %if.then13.if.end16_crit_edge, label %if.then.i200

if.then13.if.end16_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then.i200:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 61) #13
  %call.i.i5.i199 = tail call i32 @strlen(ptr noundef nonnull %ar_hostdata) #18
  tail call void @seq_escape_mem(ptr noundef %s, ptr noundef nonnull %ar_hostdata, i32 noundef %call.i.i5.i199, i32 noundef 8, ptr noundef nonnull @.str.61) #13
  br label %if.end16

if.end16:                                         ; preds = %if.then.i200, %if.then13.if.end16_crit_edge, %if.end10.if.end16_crit_edge
  %ar_spectator = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 21, i32 3
  %16 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load = load i32, ptr %ar_spectator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool17.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool17.not, label %if.end16.if.end19_crit_edge, label %if.then18

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.34) #13
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end16.if.end19_crit_edge
  %17 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load20 = load i32, ptr %ar_spectator, align 4
  %18 = and i32 %bf.load20, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool22.not = icmp eq i32 %18, 0
  br i1 %tobool22.not, label %if.end19.if.end24_crit_edge, label %if.then23

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.35) #13
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19.if.end24_crit_edge
  %19 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load25 = load i32, ptr %ar_spectator, align 4
  %20 = and i32 %bf.load25, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool28.not = icmp eq i32 %20, 0
  br i1 %tobool28.not, label %if.end24.if.end30_crit_edge, label %if.then29

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.36) #13
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end24.if.end30_crit_edge
  %21 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load31 = load i32, ptr %ar_spectator, align 4
  %22 = and i32 %bf.load31, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool34.not = icmp eq i32 %22, 0
  br i1 %tobool34.not, label %if.end30.if.end36_crit_edge, label %if.then35

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.37) #13
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end30.if.end36_crit_edge
  %23 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load37 = load i32, ptr %ar_spectator, align 4
  %bf.lshr38 = lshr i32 %bf.load37, 26
  %bf.clear39 = and i32 %bf.lshr38, 3
  %24 = zext i32 %bf.clear39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %bf.clear39, label %sw.default [
    i32 0, label %if.end36.if.end47_crit_edge
    i32 2, label %sw.bb46
    i32 1, label %if.end36.sw.epilog_crit_edge
  ]

if.end36.sw.epilog_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

sw.bb46:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.default:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb46, %if.end36.sw.epilog_crit_edge
  %state.0 = phi ptr [ @.str.41, %sw.default ], [ @.str.40, %sw.bb46 ], [ @.str.39, %if.end36.sw.epilog_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.42, ptr noundef nonnull %state.0) #13
  br label %if.end47

if.end47:                                         ; preds = %sw.epilog, %if.end36.if.end47_crit_edge
  %25 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load48 = load i32, ptr %ar_spectator, align 4
  %26 = and i32 %bf.load48, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool51.not = icmp eq i32 %26, 0
  br i1 %tobool51.not, label %if.end47.if.end53_crit_edge, label %if.then52

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.43) #13
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end47.if.end53_crit_edge
  %27 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load54 = load i32, ptr %ar_spectator, align 4
  %bf.lshr55 = lshr i32 %bf.load54, 23
  %bf.clear56 = and i32 %bf.lshr55, 3
  %28 = zext i32 %bf.clear56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %bf.clear56, label %sw.default66 [
    i32 2, label %if.end53.if.end68_crit_edge
    i32 1, label %if.end53.sw.epilog67_crit_edge
  ]

if.end53.sw.epilog67_crit_edge:                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog67

if.end53.if.end68_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

sw.default66:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog67

sw.epilog67:                                      ; preds = %sw.default66, %if.end53.sw.epilog67_crit_edge
  %state59.0 = phi ptr [ @.str.41, %sw.default66 ], [ @.str.44, %if.end53.sw.epilog67_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.46, ptr noundef nonnull %state59.0) #13
  br label %if.end68

if.end68:                                         ; preds = %sw.epilog67, %if.end53.if.end68_crit_edge
  %29 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load69 = load i32, ptr %ar_spectator, align 4
  %30 = and i32 %bf.load69, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool72.not = icmp eq i32 %30, 0
  br i1 %tobool72.not, label %if.end68.if.end74_crit_edge, label %if.then73

if.end68.if.end74_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.then73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.47) #13
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end68.if.end74_crit_edge
  %gt_logd_secs = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 22, i32 1
  %31 = ptrtoint ptr %gt_logd_secs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %gt_logd_secs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %32)
  %cmp75.not = icmp eq i32 %32, 30
  br i1 %cmp75.not, label %if.end74.if.end77_crit_edge, label %if.then76

if.end74.if.end77_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

if.then76:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.48, i32 noundef %32) #13
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end74.if.end77_crit_edge
  %gt_statfs_quantum = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 22, i32 9
  %33 = ptrtoint ptr %gt_statfs_quantum to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %gt_statfs_quantum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %34)
  %cmp79.not = icmp eq i32 %34, 30
  br i1 %cmp79.not, label %if.else, label %if.then80

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.49, i32 noundef %34) #13
  br label %if.end85

if.else:                                          ; preds = %if.end77
  %gt_statfs_slow = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 22, i32 10
  %35 = ptrtoint ptr %gt_statfs_slow to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %gt_statfs_slow, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool82.not = icmp eq i32 %36, 0
  br i1 %tobool82.not, label %if.else.if.end85_crit_edge, label %if.then83

if.else.if.end85_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.then83:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.50) #13
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.else.if.end85_crit_edge, %if.then80
  %gt_quota_quantum = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 22, i32 5
  %37 = ptrtoint ptr %gt_quota_quantum to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %gt_quota_quantum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %38)
  %cmp87.not = icmp eq i32 %38, 60
  br i1 %cmp87.not, label %if.end85.if.end89_crit_edge, label %if.then88

if.end85.if.end89_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, i32 noundef %38) #13
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.end85.if.end89_crit_edge
  %ar_statfs_percent = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 21, i32 7
  %39 = ptrtoint ptr %ar_statfs_percent to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ar_statfs_percent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool90.not = icmp eq i32 %40, 0
  br i1 %tobool90.not, label %if.end89.if.end93_crit_edge, label %if.then91

if.end89.if.end93_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

if.then91:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.52, i32 noundef %40) #13
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.end89.if.end93_crit_edge
  %41 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load94 = load i32, ptr %ar_spectator, align 4
  %bf.lshr95 = lshr i32 %bf.load94, 19
  %bf.clear96 = and i32 %bf.lshr95, 3
  %42 = zext i32 %bf.clear96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %bf.clear96, label %sw.default106 [
    i32 0, label %if.end93.if.end108_crit_edge
    i32 3, label %if.end93.sw.epilog107_crit_edge
  ]

if.end93.sw.epilog107_crit_edge:                  ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog107

if.end93.if.end108_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108

sw.default106:                                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog107

sw.epilog107:                                     ; preds = %sw.default106, %if.end93.sw.epilog107_crit_edge
  %state99.0 = phi ptr [ @.str.41, %sw.default106 ], [ @.str.54, %if.end93.sw.epilog107_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.55, ptr noundef nonnull %state99.0) #13
  br label %if.end108

if.end108:                                        ; preds = %sw.epilog107, %if.end93.if.end108_crit_edge
  %sd_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 4
  %43 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %sd_flags, align 4
  %45 = and i32 %44, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool110.not = icmp eq i32 %45, 0
  br i1 %tobool110.not, label %if.end108.if.end112_crit_edge, label %if.then111

if.end108.if.end112_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end112

if.then111:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.56) #13
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %if.end108.if.end112_crit_edge
  %46 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %sd_flags, align 4
  %48 = and i32 %47, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool115.not = icmp eq i32 %48, 0
  br i1 %tobool115.not, label %if.end112.if.end117_crit_edge, label %if.then116

if.end112.if.end117_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end117

if.then116:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.57) #13
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %if.end112.if.end117_crit_edge
  %49 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %49)
  %bf.load118 = load i32, ptr %ar_spectator, align 4
  %50 = and i32 %bf.load118, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool121.not = icmp eq i32 %50, 0
  br i1 %tobool121.not, label %if.end117.if.end123_crit_edge, label %if.then122

if.end117.if.end123_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123

if.then122:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.58) #13
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %if.end117.if.end123_crit_edge
  %51 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load124 = load i32, ptr %ar_spectator, align 4
  %52 = and i32 %bf.load124, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool127.not = icmp eq i32 %52, 0
  br i1 %tobool127.not, label %if.end123.if.end129_crit_edge, label %if.then128

if.end123.if.end129_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end129

if.then128:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.59) #13
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %if.end123.if.end129_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gfs2_holder_init(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_nq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_holder_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_buffer(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_dump_glock(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_ail1_flush(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_ordered_del_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_hold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gfs2_queue_delete_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_queue_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_rs_deltree(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @glock_clear_object(ptr noundef %gl, ptr noundef readnone %object) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %gl_lockref = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %gl_lockref) #13
  %gl_object = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 12
  %0 = ptrtoint ptr %gl_object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gl_object, align 4
  %cmp = icmp eq ptr %1, %object
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %gl_object to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %gl_object, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_rs_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_dir_hash_inval(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_dq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_add_to_lru(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gfs2_inode_already_deleted(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_check_blk_type(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_instantiate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_dq_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_holder_reinit(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_dir_exhash_dealloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_ea_dealloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_file_dealloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_inode_remember_delete(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_rindex_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_quota_hold(ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_blk2rgrpd(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_free_di(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_quota_unhold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_inode_now(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_ail_flush(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait_io(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_clear_rgrpd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_gl_hash_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_delete_debugfs_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_lm_unmount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_sys_fs_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_sbd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_rgrpd_get_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_glock2rgrp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_rgrpd_get_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @yield() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_rgrp_verify(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_escape_mem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !12, !13, !14, !16, !18, !19, !21, !22, !23, !25, !27, !28, !30, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131}
!llvm.named.register.sp = !{!133}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @__func__.gfs2_jdesc_check, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/gfs2/super.c", i32 115, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.gfs2_make_fs_rw, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/gfs2/super.c", i32 145, i32 3}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/gfs2/super.c", i32 526, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @gfs2_make_fs_ro._entry, !6, !"_entry", i1 false, i1 false}
!9 = !{ptr @gfs2_make_fs_ro._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/gfs2/super.c", i32 532, i32 3}
!12 = !{ptr @gfs2_make_fs_ro._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @gfs2_make_fs_ro._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/gfs2/super.c", i32 546, i32 3}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/gfs2/super.c", i32 659, i32 3}
!18 = !{ptr @__func__.gfs2_freeze_func, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/gfs2/super.c", i32 664, i32 4}
!21 = !{ptr @gfs2_freeze_func._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @gfs2_freeze_func._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @gfs2_super_ops, !24, !"gfs2_super_ops", i1 false, i1 false}
!24 = !{!"../fs/gfs2/super.c", i32 1474, i32 31}
!25 = !{ptr @__func__.gfs2_check_internal_file_size, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/gfs2/inode.h", i32 87, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/gfs2/super.c", i32 482, i32 4}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @gfs2_dirty_inode._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @gfs2_dirty_inode._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../fs/gfs2/super.c", i32 487, i32 13}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/gfs2/super.c", i32 493, i32 4}
!37 = !{ptr @gfs2_dirty_inode._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @gfs2_dirty_inode._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/gfs2/super.c", i32 1394, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @gfs2_evict_inode._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @gfs2_evict_inode._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/gfs2/super.c", i32 1398, i32 3}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../fs/gfs2/super.c", i32 1229, i32 6}
!48 = !{ptr @__func__.gfs2_dinode_dealloc, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/gfs2/super.c", i32 1095, i32 3}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/wait_bit.h", i32 98, i32 2}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/gfs2/super.c", i32 704, i32 4}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @gfs2_freeze._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @gfs2_freeze._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/gfs2/super.c", i32 706, i32 4}
!59 = !{ptr @gfs2_freeze._entry.21, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @gfs2_freeze._entry_ptr.23, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/gfs2/super.c", i32 710, i32 4}
!63 = !{ptr @gfs2_freeze._entry.24, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @gfs2_freeze._entry_ptr.26, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/gfs2/super.c", i32 712, i32 3}
!67 = !{ptr @gfs2_freeze._entry.27, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @gfs2_freeze._entry_ptr.29, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/gfs2/super.c", i32 981, i32 15}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/gfs2/super.c", i32 983, i32 22}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/gfs2/super.c", i32 985, i32 22}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/gfs2/super.c", i32 987, i32 22}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/gfs2/super.c", i32 989, i32 15}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/gfs2/super.c", i32 991, i32 15}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/gfs2/super.c", i32 993, i32 15}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/gfs2/super.c", i32 995, i32 15}
!85 = distinct !{null, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/gfs2/super.c", i32 1000, i32 12}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/gfs2/super.c", i32 1003, i32 12}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/gfs2/super.c", i32 1006, i32 12}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/gfs2/super.c", i32 1009, i32 12}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/gfs2/super.c", i32 1012, i32 17}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/gfs2/super.c", i32 1015, i32 15}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/gfs2/super.c", i32 1020, i32 12}
!99 = distinct !{null, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/gfs2/super.c", i32 1023, i32 12}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/gfs2/super.c", i32 1029, i32 17}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/gfs2/super.c", i32 1032, i32 15}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/gfs2/super.c", i32 1035, i32 17}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/gfs2/super.c", i32 1038, i32 17}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/gfs2/super.c", i32 1040, i32 15}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/gfs2/super.c", i32 1043, i32 17}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/gfs2/super.c", i32 1045, i32 17}
!115 = distinct !{null, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/gfs2/super.c", i32 1051, i32 12}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/gfs2/super.c", i32 1054, i32 12}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/gfs2/super.c", i32 1060, i32 17}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/gfs2/super.c", i32 1063, i32 15}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/gfs2/super.c", i32 1065, i32 15}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/gfs2/super.c", i32 1067, i32 15}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/gfs2/super.c", i32 1069, i32 15}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../include/linux/seq_file.h", i32 242, i32 22}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../include/linux/seq_file.h", i32 245, i32 24}
!133 = !{!"sp"}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{!"auto-init"}
!144 = !{i64 985112, i64 985173}
!145 = !{i64 987844}
!146 = !{!"branch_weights", i32 1, i32 2000}
!147 = !{i64 988129}
!148 = !{i64 2152590446}
!149 = !{i64 2152590288}
!150 = !{i64 2152590616}
!151 = !{i64 2150176331}
!152 = !{!"branch_weights", i32 2000, i32 1}
!153 = !{i64 2148580432, i64 2148580458, i64 2148580487, i64 2148580521, i64 2148580552, i64 2148580575}
!154 = !{i64 2148677282}
!155 = !{i64 2148587677, i64 2148587709, i64 2148587738, i64 2148587772, i64 2148587803, i64 2148587826}
!156 = !{!"branch_weights", i32 2146410443, i32 1073205}
!157 = !{i64 2155252196, i64 2155252677, i64 2155252233, i64 2155252289, i64 2155252323, i64 2155252347, i64 2155252388, i64 2155252409, i64 2155252437, i64 2155252471}
!158 = !{i64 2155232531}
