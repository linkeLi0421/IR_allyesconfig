; ModuleID = '/llk/IR_all_yes/fs/gfs2/util.c_pt.bc'
source_filename = "../fs/gfs2/util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.gfs2_holder = type { %struct.list_head, ptr, ptr, i16, i16, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.gfs2_log_header_host = type { i64, i32, i32, i32, i64, i64, i64 }
%struct.gfs2_jdesc = type { %struct.list_head, %struct.list_head, i32, %struct.work_struct, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i64 }
%struct.gfs2_inode = type { %struct.inode, i64, i64, i64, i64, i32, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.gfs2_blkreserv, i64, %struct.atomic_t, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr, i32, i32, i8, i8, i16 }
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
%struct.gfs2_blkreserv = type { %struct.rb_node, ptr, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
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
%struct.lm_lockops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gfs2_glock = type { i32, %struct.lm_lockname, %struct.lockref, i16, i32, i32, %struct.list_head, ptr, i64, %struct.gfs2_lkstats, %struct.dlm_lksb, i32, ptr, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.anon.82, %struct.callback_head, %struct.rhash_head }
%struct.lm_lockname = type { i64, ptr, i32 }
%struct.lockref = type { %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.spinlock, i32 }
%struct.gfs2_lkstats = type { [8 x i64] }
%struct.anon.82 = type { %struct.delayed_work, i64 }
%struct.rhash_head = type { ptr }
%struct.gfs2_glock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.gfs2_rgrpd = type { %struct.rb_node, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.rb_root }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
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

@gfs2_assert_i._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\010gfs2: fsid=%s: fatal assertion failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gfs2_assert_i\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/gfs2/util.c\00", [17 x i8] zeroinitializer }, align 32
@gfs2_assert_i._entry_ptr = internal global ptr @gfs2_assert_i._entry, section ".printk_index", align 4
@check_journal_clean._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013gfs2: fsid=%s: Error %d locking journal for spectator mount.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"check_journal_clean\00", [44 x i8] zeroinitializer }, align 32
@check_journal_clean._entry_ptr = internal global ptr @check_journal_clean._entry, section ".printk_index", align 4
@check_journal_clean._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013gfs2: fsid=%s: Error checking journal for spectator mount.\0A\00", [34 x i8] zeroinitializer }, align 32
@check_journal_clean._entry_ptr.7 = internal global ptr @check_journal_clean._entry.5, section ".printk_index", align 4
@check_journal_clean._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013gfs2: fsid=%s: Error parsing journal for spectator mount.\0A\00", [35 x i8] zeroinitializer }, align 32
@check_journal_clean._entry_ptr.10 = internal global ptr @check_journal_clean._entry.8, section ".printk_index", align 4
@check_journal_clean._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\013gfs2: fsid=%s: jid=%u: Journal is dirty, so the first mounter must not be a spectator.\0A\00", [38 x i8] zeroinitializer }, align 32
@check_journal_clean._entry_ptr.13 = internal global ptr @check_journal_clean._entry.11, section ".printk_index", align 4
@gfs2_freeze_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013gfs2: fsid=%s: can't lock the freeze lock: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gfs2_freeze_lock\00", [47 x i8] zeroinitializer }, align 32
@gfs2_freeze_lock._entry_ptr = internal global ptr @gfs2_freeze_lock._entry, section ".printk_index", align 4
@gfs2_lm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013gfs2: fsid=%s: %pV\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gfs2_lm\00", [24 x i8] zeroinitializer }, align 32
@gfs2_lm._entry_ptr = internal global ptr @gfs2_lm._entry, section ".printk_index", align 4
@gfs2_withdraw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013gfs2: fsid=%s: about to withdraw this file system\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gfs2_withdraw\00", [18 x i8] zeroinitializer }, align 32
@gfs2_withdraw._entry_ptr = internal global ptr @gfs2_withdraw._entry, section ".printk_index", align 4
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lock_dlm\00", [23 x i8] zeroinitializer }, align 32
@gfs2_withdraw._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.2, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013gfs2: fsid=%s: telling LM to unmount\0A\00", [56 x i8] zeroinitializer }, align 32
@gfs2_withdraw._entry_ptr.23 = internal global ptr @gfs2_withdraw._entry.21, section ".printk_index", align 4
@gfs2_withdraw._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013gfs2: fsid=%s: File system withdrawn\0A\00", [56 x i8] zeroinitializer }, align 32
@gfs2_withdraw._entry_ptr.26 = internal global ptr @gfs2_withdraw._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"GFS2: fsid=%s: panic requested\0A\00", [32 x i8] zeroinitializer }, align 32
@gfs2_assert_withdraw_i._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013gfs2: fsid=%s: fatal: assertion \22%s\22 failed\0A   function = %s, file = %s, line = %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gfs2_assert_withdraw_i\00", [41 x i8] zeroinitializer }, align 32
@gfs2_assert_withdraw_i._entry_ptr = internal global ptr @gfs2_assert_withdraw_i._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@gfs2_assert_warn_i._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\014gfs2: fsid=%s: warning: assertion \22%s\22 failed at function = %s, file = %s, line = %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gfs2_assert_warn_i\00", [45 x i8] zeroinitializer }, align 32
@gfs2_assert_warn_i._entry_ptr = internal global ptr @gfs2_assert_warn_i._entry, section ".printk_index", align 4
@.str.32 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"GFS2: fsid=%s: warning: assertion \22%s\22 failed\0AGFS2: fsid=%s:   function = %s, file = %s, line = %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"fatal: filesystem consistency error - function = %s, file = %s, line = %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"fatal: filesystem consistency error\0A  inode = %llu %llu\0A  function = %s, file = %s, line = %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsid=%s: \00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"fatal: filesystem consistency error\0A  RG = %llu\0A  function = %s, file = %s, line = %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"fatal: invalid metadata block\0A  bh = %llu (%s)\0A  function = %s, file = %s, line = %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"fatal: invalid metadata block\0A  bh = %llu (type: exp=%u, found=%u)\0A  function = %s, file = %s, line = %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"fatal: I/O error\0A  function = %s, file = %s, line = %u\0A\00", [40 x i8] zeroinitializer }, align 32
@gfs2_io_error_bh_i._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\013gfs2: fsid=%s: fatal: I/O error\0A  block = %llu\0A  function = %s, file = %s, line = %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gfs2_io_error_bh_i\00", [45 x i8] zeroinitializer }, align 32
@gfs2_io_error_bh_i._entry_ptr = internal global ptr @gfs2_io_error_bh_i._entry, section ".printk_index", align 4
@gfs2_glock_cachep = dso_local local_unnamed_addr global ptr null, section ".data..read_mostly", align 4
@gfs2_glock_aspace_cachep = dso_local local_unnamed_addr global ptr null, section ".data..read_mostly", align 4
@gfs2_inode_cachep = dso_local local_unnamed_addr global ptr null, section ".data..read_mostly", align 4
@gfs2_bufdata_cachep = dso_local local_unnamed_addr global ptr null, section ".data..read_mostly", align 4
@gfs2_rgrpd_cachep = dso_local local_unnamed_addr global ptr null, section ".data..read_mostly", align 4
@gfs2_quotad_cachep = dso_local local_unnamed_addr global ptr null, section ".data..read_mostly", align 4
@gfs2_qadata_cachep = dso_local local_unnamed_addr global ptr null, section ".data..read_mostly", align 4
@gfs2_trans_cachep = dso_local local_unnamed_addr global ptr null, section ".data..read_mostly", align 4
@gfs2_page_pool = dso_local local_unnamed_addr global ptr null, section ".data..read_mostly", align 4
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@signal_our_withdraw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014gfs2: fsid=%s: Requesting recovery of jid %d.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"signal_our_withdraw\00", [44 x i8] zeroinitializer }, align 32
@signal_our_withdraw._entry_ptr = internal global ptr @signal_our_withdraw._entry, section ".printk_index", align 4
@signal_our_withdraw._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\014gfs2: fsid=%s: No other mounters found. Trying to recover our own journal jid %d.\0A\00", [43 x i8] zeroinitializer }, align 32
@signal_our_withdraw._entry_ptr.47 = internal global ptr @signal_our_withdraw._entry.45, section ".printk_index", align 4
@signal_our_withdraw._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014gfs2: fsid=%s: Unable to recover our journal jid %d.\0A\00", [40 x i8] zeroinitializer }, align 32
@signal_our_withdraw._entry_ptr.50 = internal global ptr @signal_our_withdraw._entry.48, section ".printk_index", align 4
@signal_our_withdraw._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.44, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014gfs2: fsid=%s: Reprocessing of jid %d failed with %ld.\0A\00", [38 x i8] zeroinitializer }, align 32
@signal_our_withdraw._entry_ptr.53 = internal global ptr @signal_our_withdraw._entry.51, section ".printk_index", align 4
@signal_our_withdraw._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.44, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014gfs2: fsid=%s: Waiting for journal recovery jid %d.\0A\00", [41 x i8] zeroinitializer }, align 32
@signal_our_withdraw._entry_ptr.56 = internal global ptr @signal_our_withdraw._entry.54, section ".printk_index", align 4
@signal_our_withdraw._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.44, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014gfs2: fsid=%s: Journal recovery complete for jid %d.\0A\00", [40 x i8] zeroinitializer }, align 32
@signal_our_withdraw._entry_ptr.59 = internal global ptr @signal_our_withdraw._entry.57, section ".printk_index", align 4
@signal_our_withdraw._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.44, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014gfs2: fsid=%s: Journal recovery skipped for jid %d until next mount.\0A\00", [56 x i8] zeroinitializer }, align 32
@signal_our_withdraw._entry_ptr.62 = internal global ptr @signal_our_withdraw._entry.60, section ".printk_index", align 4
@signal_our_withdraw._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.44, ptr @.str.2, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014gfs2: fsid=%s: Glock dequeues delayed: %lu\0A\00", [50 x i8] zeroinitializer }, align 32
@signal_our_withdraw._entry_ptr.65 = internal global ptr @signal_our_withdraw._entry.63, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 13]
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 40, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 64, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 71, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 78, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 85, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 110, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 318, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 340, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 347, i32 57 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 351, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 355, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 363, i32 9 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 379, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 411, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 420, i32 9 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 436, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 451, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 471, i32 21 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 474, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 496, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 518, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 537, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 555, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 73, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 227, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 248, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 251, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 276, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 291, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 296, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 299, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.253 = private constant [18 x i8] c"../fs/gfs2/util.c\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 301, i32 2 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @check_journal_clean._entry, ptr @check_journal_clean._entry.11, ptr @check_journal_clean._entry.5, ptr @check_journal_clean._entry.8, ptr @check_journal_clean._entry_ptr, ptr @check_journal_clean._entry_ptr.10, ptr @check_journal_clean._entry_ptr.13, ptr @check_journal_clean._entry_ptr.7, ptr @gfs2_assert_i._entry, ptr @gfs2_assert_i._entry_ptr, ptr @gfs2_assert_warn_i._entry, ptr @gfs2_assert_warn_i._entry_ptr, ptr @gfs2_assert_withdraw_i._entry, ptr @gfs2_assert_withdraw_i._entry_ptr, ptr @gfs2_freeze_lock._entry, ptr @gfs2_freeze_lock._entry_ptr, ptr @gfs2_io_error_bh_i._entry, ptr @gfs2_io_error_bh_i._entry_ptr, ptr @gfs2_lm._entry, ptr @gfs2_lm._entry_ptr, ptr @gfs2_withdraw._entry, ptr @gfs2_withdraw._entry.21, ptr @gfs2_withdraw._entry.24, ptr @gfs2_withdraw._entry_ptr, ptr @gfs2_withdraw._entry_ptr.23, ptr @gfs2_withdraw._entry_ptr.26, ptr @signal_our_withdraw._entry, ptr @signal_our_withdraw._entry.45, ptr @signal_our_withdraw._entry.48, ptr @signal_our_withdraw._entry.51, ptr @signal_our_withdraw._entry.54, ptr @signal_our_withdraw._entry.57, ptr @signal_our_withdraw._entry.60, ptr @signal_our_withdraw._entry.63, ptr @signal_our_withdraw._entry_ptr, ptr @signal_our_withdraw._entry_ptr.47, ptr @signal_our_withdraw._entry_ptr.50, ptr @signal_our_withdraw._entry_ptr.53, ptr @signal_our_withdraw._entry_ptr.56, ptr @signal_our_withdraw._entry_ptr.59, ptr @signal_our_withdraw._entry_ptr.62, ptr @signal_our_withdraw._entry_ptr.65, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_assert_i._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_journal_clean._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_journal_clean._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_journal_clean._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_journal_clean._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_freeze_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_lm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_withdraw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_withdraw._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_withdraw._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_assert_withdraw_i._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_assert_warn_i._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_io_error_bh_i._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @signal_our_withdraw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @signal_our_withdraw._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @signal_our_withdraw._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @signal_our_withdraw._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @signal_our_withdraw._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @signal_our_withdraw._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @signal_our_withdraw._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @signal_our_withdraw._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_assert_i(ptr noundef %sdp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %sd_fsname) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @check_journal_clean(ptr noundef %sdp, ptr noundef %jd, i1 noundef zeroext %verbose) local_unnamed_addr #0 align 64 {
entry:
  %j_gh = alloca %struct.gfs2_holder, align 4
  %head = alloca %struct.gfs2_log_header_host, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %j_gh) #11
  %0 = call ptr @memset(ptr %j_gh, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %head) #11
  %1 = call ptr @memset(ptr %head, i32 255, i32 48)
  %jd_inode = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 4
  %2 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jd_inode, align 8
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_gl, align 4
  %6 = tail call ptr @llvm.returnaddress(i32 0) #11
  %7 = ptrtoint ptr %6 to i32
  call void @__gfs2_holder_init(ptr noundef %5, i32 noundef 3, i16 noundef zeroext 1156, ptr noundef nonnull %j_gh, i32 noundef %7) #11
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %j_gh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  call void @gfs2_holder_uninit(ptr noundef nonnull %j_gh) #11
  br i1 %verbose, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %sd_fsname, i32 noundef %call.i) #14
  br label %cleanup

if.end5:                                          ; preds = %entry
  %call6 = call i32 @gfs2_jdesc_check(ptr noundef %jd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end19, label %if.then8

if.then8:                                         ; preds = %if.end5
  br i1 %verbose, label %do.end13, label %if.then8.out_unlock_crit_edge

if.then8.out_unlock_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

do.end13:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %sd_fsname15 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %sd_fsname15) #14
  br label %out_unlock

if.end19:                                         ; preds = %if.end5
  %call20 = call i32 @gfs2_find_jhead(ptr noundef %jd, ptr noundef nonnull %head, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end33, label %if.then22

if.then22:                                        ; preds = %if.end19
  br i1 %verbose, label %do.end27, label %if.then22.out_unlock_crit_edge

if.then22.out_unlock_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

do.end27:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  %sd_fsname29 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %sd_fsname29) #14
  br label %out_unlock

if.end33:                                         ; preds = %if.end19
  %lh_flags = getelementptr inbounds %struct.gfs2_log_header_host, ptr %head, i32 0, i32 1
  %8 = ptrtoint ptr %lh_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lh_flags, align 8
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp ne i32 %and, 0
  %verbose.not = xor i1 %verbose, true
  %brmerge = or i1 %tobool34.not, %verbose.not
  %not.tobool34.not = xor i1 %tobool34.not, true
  %.mux = sext i1 %not.tobool34.not to i32
  br i1 %brmerge, label %if.end33.out_unlock_crit_edge, label %do.end40

if.end33.out_unlock_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %sd_fsname42 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %jd_jid = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 7
  %10 = ptrtoint ptr %jd_jid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %jd_jid, align 4
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %sd_fsname42, i32 noundef %11) #14
  br label %out_unlock

out_unlock:                                       ; preds = %do.end40, %if.end33.out_unlock_crit_edge, %do.end27, %if.then22.out_unlock_crit_edge, %do.end13, %if.then8.out_unlock_crit_edge
  %error.0 = phi i32 [ %call6, %do.end13 ], [ %call6, %if.then8.out_unlock_crit_edge ], [ %call20, %do.end27 ], [ %call20, %if.then22.out_unlock_crit_edge ], [ %.mux, %if.end33.out_unlock_crit_edge ], [ -1, %do.end40 ]
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %j_gh) #11
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_unlock ], [ -1, %do.end ], [ -1, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %head) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %j_gh) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_jdesc_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_find_jhead(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_dq_uninit(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_freeze_lock(ptr noundef %sdp, ptr noundef %freeze_gh, i32 noundef %caller_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_freeze_gl = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 26
  %0 = ptrtoint ptr %sd_freeze_gl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_freeze_gl, align 4
  %2 = trunc i32 %caller_flags to i16
  %conv = or i16 %2, 132
  %3 = tail call ptr @llvm.returnaddress(i32 0) #11
  %4 = ptrtoint ptr %3 to i32
  tail call void @__gfs2_holder_init(ptr noundef %1, i32 noundef 3, i16 noundef zeroext %conv, ptr noundef %freeze_gh, i32 noundef %4) #11
  %call.i = tail call i32 @gfs2_glock_nq(ptr noundef %freeze_gh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %gfs2_glock_nq_init.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

gfs2_glock_nq_init.exit:                          ; preds = %entry
  tail call void @gfs2_holder_uninit(ptr noundef %freeze_gh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %call.i)
  %cond = icmp eq i32 %call.i, 13
  br i1 %cond, label %gfs2_glock_nq_init.exit.if.end_crit_edge, label %do.end

gfs2_glock_nq_init.exit.if.end_crit_edge:         ; preds = %gfs2_glock_nq_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %gfs2_glock_nq_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %sd_fsname, i32 noundef %call.i) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %gfs2_glock_nq_init.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_freeze_unlock(ptr noundef %freeze_gh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gh_gl.i = getelementptr inbounds %struct.gfs2_holder, ptr %freeze_gh, i32 0, i32 1
  %0 = ptrtoint ptr %gh_gl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gh_gl.i, align 4
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gfs2_glock_dq_uninit(ptr noundef %freeze_gh) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_lm(ptr noundef %sdp, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #11
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #11
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !144
  %ar_errors = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 21, i32 3
  %2 = ptrtoint ptr %ar_errors to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %ar_errors, align 4
  %3 = and i32 %bf.load, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sd_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  %4 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sd_flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.va_start(ptr nonnull %args)
  %7 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fmt, ptr %vaf, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %args, ptr %0, align 4
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %sd_fsname, ptr noundef nonnull %vaf) #14
  call void @llvm.va_end(ptr nonnull %args)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_withdraw(ptr noundef %sdp) local_unnamed_addr #0 align 64 {
entry:
  %freeze_gh.i = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_ops = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23, i32 2
  %0 = ptrtoint ptr %ls_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ls_ops, align 4
  %ar_errors = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 21, i32 3
  %2 = ptrtoint ptr %ar_errors to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %ar_errors, align 4
  %3 = and i32 %bf.load, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %sd_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  %call = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %sd_flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true.if.end7_crit_edge, label %if.then

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %4 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sd_flags, align 4
  %6 = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  tail call void @__might_sleep(ptr noundef nonnull @.str.42, i32 noundef 73) #11
  %7 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %sd_flags, align 4
  %9 = and i32 %8, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %sd_flags, i32 noundef 12, ptr noundef nonnull @bit_wait, i32 noundef 2) #11
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %sd_flags8 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 12, ptr noundef %sd_flags8) #11
  %10 = ptrtoint ptr %ar_errors to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load11 = load i32, ptr %ar_errors, align 4
  %11 = and i32 %bf.load11, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp14 = icmp eq i32 %11, 0
  br i1 %cmp14, label %do.end, label %if.end7.if.end69_crit_edge

if.end7.if.end69_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

do.end:                                           ; preds = %if.end7
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %sd_fsname) #14
  %12 = ptrtoint ptr %ar_errors to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load19 = load i32, ptr %ar_errors, align 4
  %13 = and i32 %bf.load19, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool22.not = icmp eq i32 %13, 0
  br i1 %tobool22.not, label %do.end34, label %do.body26, !prof !145

do.body26:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/util.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 341, 0\0A.popsection", ""() #11, !srcloc !146
  unreachable

do.end34:                                         ; preds = %do.end
  %sd_live_gh.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 24
  %gh_gl.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 24, i32 1
  %14 = ptrtoint ptr %gh_gl.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gh_gl.i, align 8
  %16 = ptrtoint ptr %sd_flags8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %sd_flags8, align 4
  %18 = load volatile i32, ptr %sd_flags8, align 4
  %19 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i102 = icmp eq i32 %19, 0
  br i1 %tobool.not.i102, label %lor.lhs.false.i, label %do.end34.signal_our_withdraw.exit_crit_edge

do.end34.signal_our_withdraw.exit_crit_edge:      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %signal_our_withdraw.exit

lor.lhs.false.i:                                  ; preds = %do.end34
  %sd_jdesc.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %20 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sd_jdesc.i, align 4
  %tobool3.not.i = icmp eq ptr %21, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.signal_our_withdraw.exit_crit_edge, label %if.end.i103

lor.lhs.false.i.signal_our_withdraw.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %signal_our_withdraw.exit

if.end.i103:                                      ; preds = %lor.lhs.false.i
  tail call void @gfs2_ail_drain(ptr noundef %sdp) #11
  %22 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sd_jdesc.i, align 4
  %jd_inode.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %jd_inode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %jd_inode.i, align 8
  %i_gl6.i = getelementptr inbounds %struct.gfs2_inode, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %i_gl6.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_gl6.i, align 4
  %i_no_formal_ino.i = getelementptr inbounds %struct.gfs2_inode, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %i_no_formal_ino.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_no_formal_ino.i, align 8
  tail call void @_set_bit(i32 noundef 14, ptr noundef %sd_flags8) #11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %sd_flags8) #11
  %30 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sdp, align 8
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then10.i, label %if.end.i103.if.end24.i_crit_edge

if.end.i103.if.end24.i_crit_edge:                 ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.then10.i:                                      ; preds = %if.end.i103
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %freeze_gh.i) #11
  %34 = getelementptr inbounds %struct.gfs2_holder, ptr %freeze_gh.i, i32 0, i32 1
  %35 = call ptr @memset(ptr %freeze_gh.i, i32 255, i32 32)
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %34, align 4
  %sd_freeze_gl.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 26
  %37 = ptrtoint ptr %sd_freeze_gl.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sd_freeze_gl.i, align 4
  %tobool11.not.i = icmp eq ptr %38, null
  br i1 %tobool11.not.i, label %if.then10.i.if.then22.i_crit_edge, label %land.lhs.true.i

if.then10.i.if.then22.i_crit_edge:                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22.i

land.lhs.true.i:                                  ; preds = %if.then10.i
  %call13.i = tail call fastcc ptr @gfs2_glock_is_locked_by_me(ptr noundef nonnull %38) #11
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %if.then15.i, label %land.lhs.true.i.if.then22.i_crit_edge

land.lhs.true.i.if.then22.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  %39 = lshr i32 %17, 1
  %.lobit.i = and i32 %39, 1
  %40 = xor i32 %.lobit.i, 1
  %call17.i = call i32 @gfs2_freeze_lock(ptr noundef %sdp, ptr noundef nonnull %freeze_gh.i, i32 noundef %40) #11
  %41 = zext i32 %call17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call17.i, label %if.then15.i.if.end23.i_crit_edge [
    i32 13, label %if.then15.i.if.then22.i_crit_edge
    i32 0, label %if.then15.i.if.then22.i_crit_edge104
  ]

if.then15.i.if.then22.i_crit_edge104:             ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22.i

if.then15.i.if.then22.i_crit_edge:                ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22.i

if.then15.i.if.end23.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.then22.i:                                      ; preds = %if.then15.i.if.then22.i_crit_edge, %if.then15.i.if.then22.i_crit_edge104, %land.lhs.true.i.if.then22.i_crit_edge, %if.then10.i.if.then22.i_crit_edge
  call void @gfs2_make_fs_ro(ptr noundef %sdp) #11
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then22.i, %if.then15.i.if.end23.i_crit_edge
  %42 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %34, align 4
  %tobool.i.not.i.i = icmp eq ptr %43, null
  br i1 %tobool.i.not.i.i, label %if.end23.i.gfs2_freeze_unlock.exit.i_crit_edge, label %if.then.i.i

if.end23.i.gfs2_freeze_unlock.exit.i_crit_edge:   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfs2_freeze_unlock.exit.i

if.then.i.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %freeze_gh.i) #11
  br label %gfs2_freeze_unlock.exit.i

gfs2_freeze_unlock.exit.i:                        ; preds = %if.then.i.i, %if.end23.i.gfs2_freeze_unlock.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %freeze_gh.i) #11
  br label %if.end24.i

if.end24.i:                                       ; preds = %gfs2_freeze_unlock.exit.i, %if.end.i103.if.end24.i_crit_edge
  %sd_lockstruct.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 23
  %44 = ptrtoint ptr %ls_ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ls_ops, align 4
  %lm_lock.i = getelementptr inbounds %struct.lm_lockops, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %lm_lock.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lm_lock.i, align 4
  %cmp25.i = icmp eq ptr %47, null
  br i1 %cmp25.i, label %if.then26.i, label %if.end31.i

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_clear_bit(i32 noundef 14, ptr noundef %sd_flags8) #11
  br label %do.end141.i

if.end31.i:                                       ; preds = %if.end24.i
  %gh_gl.i241.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 57, i32 1
  %48 = ptrtoint ptr %gh_gl.i241.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %gh_gl.i241.i, align 4
  %tobool.i242.not.i = icmp eq ptr %49, null
  br i1 %tobool.i242.not.i, label %if.end31.i.if.end36.i_crit_edge, label %if.then33.i

if.end31.i.if.end36.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

if.then33.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  %sd_journal_gh.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 57
  call void @gfs2_glock_dq_wait(ptr noundef %sd_journal_gh.i) #11
  call void @gfs2_holder_uninit(ptr noundef %sd_journal_gh.i) #11
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then33.i, %if.end31.i.if.end36.i_crit_edge
  %sd_jinode_gh.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 58
  %gh_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 58, i32 3
  %50 = ptrtoint ptr %gh_flags.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %gh_flags.i, align 8
  %52 = or i16 %51, 1024
  store i16 %52, ptr %gh_flags.i, align 8
  call void @gfs2_glock_dq(ptr noundef %sd_jinode_gh.i) #11
  %53 = ptrtoint ptr %sd_flags8 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %sd_flags8, align 4
  %55 = and i32 %54, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool41.not.i = icmp eq i32 %55, 0
  br i1 %tobool41.not.i, label %if.else.i, label %if.then42.i

if.then42.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  %sd_freeze_work.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 27
  %call43.i = call zeroext i1 @flush_work(ptr noundef %sd_freeze_work.i) #11
  %sd_freeze_state.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 108
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sd_freeze_state.i, i32 noundef 4) #11
  %56 = ptrtoint ptr %sd_freeze_state.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 2, ptr %sd_freeze_state.i, align 4
  %57 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sdp, align 8
  %call45.i = call i32 @thaw_super(ptr noundef %58) #11
  br label %if.end47.i

if.else.i:                                        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @wait_on_bit(ptr noundef %27, i32 noundef 3) #11
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.else.i, %if.then42.i
  call void @gfs2_holder_uninit(ptr noundef %sd_jinode_gh.i) #11
  call void @iput(ptr noundef %25) #11
  %gl_ops.i = getelementptr inbounds %struct.gfs2_glock, ptr %27, i32 0, i32 7
  %59 = ptrtoint ptr %gl_ops.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %gl_ops.i, align 4
  %go_free.i = getelementptr inbounds %struct.gfs2_glock_operations, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %go_free.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %go_free.i, align 4
  %tobool49.not.i = icmp eq ptr %62, null
  br i1 %tobool49.not.i, label %if.end47.i.if.end54.i_crit_edge, label %if.then50.i

if.end47.i.if.end54.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54.i

if.then50.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 18, ptr noundef %27) #11
  call fastcc void @wait_on_bit(ptr noundef %27, i32 noundef 18) #11
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then50.i, %if.end47.i.if.end54.i_crit_edge
  call void @gfs2_glock_hold(ptr noundef %15) #11
  call void @gfs2_glock_dq_wait(ptr noundef %sd_live_gh.i) #11
  %63 = ptrtoint ptr %sd_lockstruct.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sd_lockstruct.i, align 4
  %call57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %sd_fsname, i32 noundef %64) #14
  call void @gfs2_holder_reinit(i32 noundef 1, i16 noundef zeroext 6, ptr noundef %sd_live_gh.i) #11
  call void @msleep(i32 noundef 20) #11
  %call60.i = call i32 @gfs2_glock_nq(ptr noundef %sd_live_gh.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %cmp61.i = icmp eq i32 %call60.i, 0
  br i1 %cmp61.i, label %do.end66.i, label %if.end54.i.if.end91.i_crit_edge

if.end54.i.if.end91.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91.i

do.end66.i:                                       ; preds = %if.end54.i
  %65 = ptrtoint ptr %sd_lockstruct.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sd_lockstruct.i, align 4
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %sd_fsname, i32 noundef %66) #14
  %67 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sd_jdesc.i, align 4
  %call74.i = call i32 @gfs2_recover_journal(ptr noundef %68, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %do.end66.i.if.end86.i_crit_edge, label %do.end79.i

do.end66.i.if.end86.i_crit_edge:                  ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86.i

do.end79.i:                                       ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %sd_lockstruct.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sd_lockstruct.i, align 4
  %call85.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %sd_fsname, i32 noundef %70) #14
  br label %if.end86.i

if.end86.i:                                       ; preds = %do.end79.i, %do.end66.i.if.end86.i_crit_edge
  call void @gfs2_glock_dq_wait(ptr noundef %sd_live_gh.i) #11
  call void @gfs2_holder_reinit(i32 noundef 3, i16 noundef zeroext 132, ptr noundef %sd_live_gh.i) #11
  %call90.i = call i32 @gfs2_glock_nq(ptr noundef %sd_live_gh.i) #11
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.end86.i, %if.end54.i.if.end91.i_crit_edge
  call void @gfs2_glock_queue_put(ptr noundef %15) #11
  call void @_clear_bit(i32 noundef 14, ptr noundef %sd_flags8) #11
  %71 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sdp, align 8
  %73 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sd_jdesc.i, align 4
  %jd_no_addr.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %74, i32 0, i32 15
  %75 = ptrtoint ptr %jd_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %jd_no_addr.i, align 8
  %call95.i = call ptr @gfs2_inode_lookup(ptr noundef %72, i32 noundef 0, i64 noundef %76, i64 noundef %29, i32 noundef 0) #11
  %cmp.i.i = icmp ugt ptr %call95.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %skip_recovery.i, label %if.end108.i

if.end108.i:                                      ; preds = %if.end91.i
  %77 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sd_jdesc.i, align 4
  %jd_inode110.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %jd_inode110.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call95.i, ptr %jd_inode110.i, align 8
  call void @d_mark_dontcache(ptr noundef %call95.i) #11
  %80 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sd_jdesc.i, align 4
  %call114.i = call i32 @check_journal_clean(ptr noundef %sdp, ptr noundef %81, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %tobool115.not.i = icmp eq i32 %call114.i, 0
  br i1 %tobool115.not.i, label %if.end108.i.do.end151.i_crit_edge, label %if.end117.i

if.end108.i.do.end151.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end151.i

if.end117.i:                                      ; preds = %if.end108.i
  call void @msleep(i32 noundef 100) #11
  %82 = ptrtoint ptr %sd_lockstruct.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sd_lockstruct.i, align 4
  %call126.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %sd_fsname, i32 noundef %83) #14
  %84 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sd_jdesc.i, align 4
  %call114.1.i = call i32 @check_journal_clean(ptr noundef %sdp, ptr noundef %85, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.1.i)
  %tobool115.not.1.i = icmp eq i32 %call114.1.i, 0
  br i1 %tobool115.not.1.i, label %if.end117.i.do.end151.i_crit_edge, label %if.end117.1.i

if.end117.i.do.end151.i_crit_edge:                ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end151.i

if.end117.1.i:                                    ; preds = %if.end117.i
  call void @msleep(i32 noundef 100) #11
  %86 = ptrtoint ptr %sd_lockstruct.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sd_lockstruct.i, align 4
  %call126.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %sd_fsname, i32 noundef %87) #14
  %88 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sd_jdesc.i, align 4
  %call114.2.i = call i32 @check_journal_clean(ptr noundef %sdp, ptr noundef %89, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.2.i)
  %tobool115.not.2.i = icmp eq i32 %call114.2.i, 0
  br i1 %tobool115.not.2.i, label %if.end117.1.i.do.end151.i_crit_edge, label %if.end117.2.i

if.end117.1.i.do.end151.i_crit_edge:              ; preds = %if.end117.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end151.i

if.end117.2.i:                                    ; preds = %if.end117.1.i
  call void @msleep(i32 noundef 100) #11
  %90 = ptrtoint ptr %sd_lockstruct.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sd_lockstruct.i, align 4
  %call126.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %sd_fsname, i32 noundef %91) #14
  %92 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sd_jdesc.i, align 4
  %call114.3.i = call i32 @check_journal_clean(ptr noundef %sdp, ptr noundef %93, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.3.i)
  %tobool115.not.3.i = icmp eq i32 %call114.3.i, 0
  br i1 %tobool115.not.3.i, label %if.end117.2.i.do.end151.i_crit_edge, label %if.end117.3.i

if.end117.2.i.do.end151.i_crit_edge:              ; preds = %if.end117.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end151.i

if.end117.3.i:                                    ; preds = %if.end117.2.i
  call void @msleep(i32 noundef 100) #11
  %94 = ptrtoint ptr %sd_lockstruct.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %sd_lockstruct.i, align 4
  %call126.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %sd_fsname, i32 noundef %95) #14
  %96 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sd_jdesc.i, align 4
  %call114.4.i = call i32 @check_journal_clean(ptr noundef %sdp, ptr noundef %97, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.4.i)
  %tobool115.not.4.i = icmp eq i32 %call114.4.i, 0
  br i1 %tobool115.not.4.i, label %if.end117.3.i.do.end151.i_crit_edge, label %if.end117.4.i

if.end117.3.i.do.end151.i_crit_edge:              ; preds = %if.end117.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end151.i

if.end117.4.i:                                    ; preds = %if.end117.3.i
  call void @msleep(i32 noundef 100) #11
  %98 = ptrtoint ptr %sd_lockstruct.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sd_lockstruct.i, align 4
  %call126.4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %sd_fsname, i32 noundef %99) #14
  %100 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sd_jdesc.i, align 4
  %call114.5.i = call i32 @check_journal_clean(ptr noundef %sdp, ptr noundef %101, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.5.i)
  %tobool115.not.5.i = icmp eq i32 %call114.5.i, 0
  br i1 %tobool115.not.5.i, label %if.end117.4.i.do.end151.i_crit_edge, label %if.end117.5.i

if.end117.4.i.do.end151.i_crit_edge:              ; preds = %if.end117.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end151.i

if.end117.5.i:                                    ; preds = %if.end117.4.i
  call void @msleep(i32 noundef 100) #11
  %102 = ptrtoint ptr %sd_lockstruct.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sd_lockstruct.i, align 4
  %call126.5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %sd_fsname, i32 noundef %103) #14
  %104 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sd_jdesc.i, align 4
  %call114.6.i = call i32 @check_journal_clean(ptr noundef %sdp, ptr noundef %105, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.6.i)
  %tobool115.not.6.i = icmp eq i32 %call114.6.i, 0
  br i1 %tobool115.not.6.i, label %if.end117.5.i.do.end151.i_crit_edge, label %if.end117.6.i

if.end117.5.i.do.end151.i_crit_edge:              ; preds = %if.end117.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end151.i

if.end117.6.i:                                    ; preds = %if.end117.5.i
  call void @msleep(i32 noundef 100) #11
  %106 = ptrtoint ptr %sd_lockstruct.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %sd_lockstruct.i, align 4
  %call126.6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %sd_fsname, i32 noundef %107) #14
  %108 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sd_jdesc.i, align 4
  %call114.7.i = call i32 @check_journal_clean(ptr noundef %sdp, ptr noundef %109, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.7.i)
  %tobool115.not.7.i = icmp eq i32 %call114.7.i, 0
  br i1 %tobool115.not.7.i, label %if.end117.6.i.do.end151.i_crit_edge, label %if.end117.7.i

if.end117.6.i.do.end151.i_crit_edge:              ; preds = %if.end117.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end151.i

if.end117.7.i:                                    ; preds = %if.end117.6.i
  call void @msleep(i32 noundef 100) #11
  %110 = ptrtoint ptr %sd_lockstruct.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %sd_lockstruct.i, align 4
  %call126.7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %sd_fsname, i32 noundef %111) #14
  %112 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sd_jdesc.i, align 4
  %call114.8.i = call i32 @check_journal_clean(ptr noundef %sdp, ptr noundef %113, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.8.i)
  %tobool115.not.8.i = icmp eq i32 %call114.8.i, 0
  br i1 %tobool115.not.8.i, label %if.end117.7.i.do.end151.i_crit_edge, label %if.end117.8.i

if.end117.7.i.do.end151.i_crit_edge:              ; preds = %if.end117.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end151.i

if.end117.8.i:                                    ; preds = %if.end117.7.i
  call void @msleep(i32 noundef 100) #11
  %114 = ptrtoint ptr %sd_lockstruct.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %sd_lockstruct.i, align 4
  %call126.8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %sd_fsname, i32 noundef %115) #14
  %116 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %sd_jdesc.i, align 4
  %call114.9.i = call i32 @check_journal_clean(ptr noundef %sdp, ptr noundef %117, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.9.i)
  %tobool115.not.9.i = icmp eq i32 %call114.9.i, 0
  br i1 %tobool115.not.9.i, label %if.end117.8.i.do.end151.i_crit_edge, label %if.end117.9.i

if.end117.8.i.do.end151.i_crit_edge:              ; preds = %if.end117.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end151.i

if.end117.9.i:                                    ; preds = %if.end117.8.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @msleep(i32 noundef 100) #11
  %118 = ptrtoint ptr %sd_lockstruct.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %sd_lockstruct.i, align 4
  %call126.9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %sd_fsname, i32 noundef %119) #14
  br label %do.end141.i

skip_recovery.i:                                  ; preds = %if.end91.i
  %120 = ptrtoint ptr %sd_lockstruct.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %sd_lockstruct.i, align 4
  %122 = ptrtoint ptr %call95.i to i32
  %call107.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %sd_fsname, i32 noundef %121, i32 noundef %122) #14
  br i1 %cmp61.i, label %skip_recovery.i.do.end151.i_crit_edge, label %skip_recovery.i.do.end141.i_crit_edge

skip_recovery.i.do.end141.i_crit_edge:            ; preds = %skip_recovery.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end141.i

skip_recovery.i.do.end151.i_crit_edge:            ; preds = %skip_recovery.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end151.i

do.end141.i:                                      ; preds = %skip_recovery.i.do.end141.i_crit_edge, %if.end117.9.i, %if.then26.i
  br label %do.end151.i

do.end151.i:                                      ; preds = %do.end141.i, %skip_recovery.i.do.end151.i_crit_edge, %if.end117.8.i.do.end151.i_crit_edge, %if.end117.7.i.do.end151.i_crit_edge, %if.end117.6.i.do.end151.i_crit_edge, %if.end117.5.i.do.end151.i_crit_edge, %if.end117.4.i.do.end151.i_crit_edge, %if.end117.3.i.do.end151.i_crit_edge, %if.end117.2.i.do.end151.i_crit_edge, %if.end117.1.i.do.end151.i_crit_edge, %if.end117.i.do.end151.i_crit_edge, %if.end108.i.do.end151.i_crit_edge
  %.str.58.sink.i = phi ptr [ @.str.61, %do.end141.i ], [ @.str.58, %if.end108.i.do.end151.i_crit_edge ], [ @.str.58, %if.end117.i.do.end151.i_crit_edge ], [ @.str.58, %if.end117.1.i.do.end151.i_crit_edge ], [ @.str.58, %if.end117.2.i.do.end151.i_crit_edge ], [ @.str.58, %if.end117.3.i.do.end151.i_crit_edge ], [ @.str.58, %if.end117.4.i.do.end151.i_crit_edge ], [ @.str.58, %if.end117.5.i.do.end151.i_crit_edge ], [ @.str.58, %if.end117.6.i.do.end151.i_crit_edge ], [ @.str.58, %if.end117.7.i.do.end151.i_crit_edge ], [ @.str.58, %if.end117.8.i.do.end151.i_crit_edge ], [ @.str.58, %skip_recovery.i.do.end151.i_crit_edge ]
  %123 = ptrtoint ptr %sd_lockstruct.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %sd_lockstruct.i, align 4
  %call137.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.58.sink.i, ptr noundef %sd_fsname, i32 noundef %124) #14
  %sd_glock_dqs_held.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 115
  %125 = ptrtoint ptr %sd_glock_dqs_held.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %sd_glock_dqs_held.i, align 8
  %call155.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %sd_fsname, i32 noundef %126) #14
  %127 = ptrtoint ptr %sd_glock_dqs_held.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %sd_glock_dqs_held.i, align 8
  call void @wake_up_bit(ptr noundef %sd_flags8, i32 noundef 14) #11
  br label %signal_our_withdraw.exit

signal_our_withdraw.exit:                         ; preds = %do.end151.i, %lor.lhs.false.i.signal_our_withdraw.exit_crit_edge, %do.end34.signal_our_withdraw.exit_crit_edge
  %sd_kobj = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 2
  %call35 = call i32 @kobject_uevent(ptr noundef %sd_kobj, i32 noundef 5) #11
  %128 = ptrtoint ptr %ls_ops to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ls_ops, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %call38 = call i32 @strcmp(ptr noundef %131, ptr noundef nonnull dereferenceable(9) @.str.20) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %signal_our_withdraw.exit.if.end41_crit_edge

signal_our_withdraw.exit.if.end41_crit_edge:      ; preds = %signal_our_withdraw.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then40:                                        ; preds = %signal_our_withdraw.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sd_wdack = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 32
  call void @wait_for_completion(ptr noundef %sd_wdack) #11
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %signal_our_withdraw.exit.if.end41_crit_edge
  %lm_unmount = getelementptr inbounds %struct.lm_lockops, ptr %1, i32 0, i32 4
  %132 = ptrtoint ptr %lm_unmount to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %lm_unmount, align 4
  %tobool42.not = icmp eq ptr %133, null
  br i1 %tobool42.not, label %if.end41.if.end52_crit_edge, label %do.end46

if.end41.if.end52_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

do.end46:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %sd_fsname) #14
  %134 = ptrtoint ptr %lm_unmount to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %lm_unmount, align 4
  call void %135(ptr noundef %sdp) #11
  br label %if.end52

if.end52:                                         ; preds = %do.end46, %if.end41.if.end52_crit_edge
  call void @_set_bit(i32 noundef 8, ptr noundef %sd_flags8) #11
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %sd_fsname) #14
  call void @dump_stack() #14
  call void @_clear_bit(i32 noundef 12, ptr noundef %sd_flags8) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  call void @wake_up_bit(ptr noundef %sd_flags8, i32 noundef 12) #11
  br label %if.end69

if.end69:                                         ; preds = %if.end52, %if.end7.if.end69_crit_edge
  %136 = ptrtoint ptr %ar_errors to i32
  call void @__asan_load4_noabort(i32 %136)
  %bf.load72 = load i32, ptr %ar_errors, align 4
  %137 = and i32 %bf.load72, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %137)
  %cmp75 = icmp eq i32 %137, 1572864
  br i1 %cmp75, label %if.then76, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then76:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  %sd_fsname77 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.27, ptr noundef %sd_fsname77) #16
  unreachable

cleanup:                                          ; preds = %if.end69.cleanup_crit_edge, %if.end.i, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret i32 -1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wait_on_bit(ptr noundef %word, i32 noundef %bit) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__might_sleep(ptr noundef nonnull @.str.42, i32 noundef 73) #11
  %0 = ptrtoint ptr %word to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %word, align 4
  %and.i = and i32 %bit, 31
  %2 = shl nuw i32 1, %and.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %word, i32 noundef %bit, ptr noundef nonnull @bit_wait, i32 noundef 2) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_assert_withdraw_i(ptr noundef %sdp, ptr noundef %assertion, ptr noundef %function, ptr noundef %file, i32 noundef %line, i1 noundef zeroext %delayed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  %0 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sd_flags.i, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %gfs2_withdrawn.exit, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

gfs2_withdrawn.exit:                              ; preds = %entry
  %3 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %sd_flags.i, align 4
  %5 = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.i.not = icmp eq i32 %5, 0
  br i1 %tobool3.i.not, label %do.end, label %gfs2_withdrawn.exit.return_crit_edge

gfs2_withdrawn.exit.return_crit_edge:             ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end:                                           ; preds = %gfs2_withdrawn.exit
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %sd_fsname, ptr noundef %assertion, ptr noundef %function, ptr noundef %file, i32 noundef %line) #14
  %ar_errors = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 21, i32 3
  %6 = ptrtoint ptr %ar_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %ar_errors, align 4
  %7 = and i32 %bf.load, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %7)
  %cmp = icmp ne i32 %7, 1572864
  %spec.select = and i1 %cmp, %delayed
  br i1 %spec.select, label %if.then4, label %if.else

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 11, ptr noundef %sd_flags.i) #11
  br label %if.end6

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 @gfs2_withdraw(ptr noundef %sdp)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  tail call void @dump_stack() #14
  br label %return

return:                                           ; preds = %if.end6, %gfs2_withdrawn.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_assert_warn_i(ptr noundef %sdp, ptr noundef %assertion, ptr noundef %function, ptr noundef %file, i32 noundef %line) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %sd_last_warning = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 113
  %1 = ptrtoint ptr %sd_last_warning to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sd_last_warning, align 8
  %sd_tune = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22
  %gt_complain_secs = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 22, i32 8
  tail call void @_raw_spin_lock(ptr noundef %sd_tune) #11
  %3 = ptrtoint ptr %gt_complain_secs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gt_complain_secs, align 4
  tail call void @_raw_spin_unlock(ptr noundef %sd_tune) #11
  %mul.neg = mul i32 %4, -100
  %add.neg = sub i32 %0, %2
  %sub = add i32 %add.neg, %mul.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %ar_errors = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 21, i32 3
  %5 = ptrtoint ptr %ar_errors to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %ar_errors, align 4
  %6 = and i32 %bf.load, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %do.end, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %sd_fsname, ptr noundef %assertion, ptr noundef %function, ptr noundef %file, i32 noundef %line) #14
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  %7 = ptrtoint ptr %ar_errors to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load7 = load i32, ptr %ar_errors, align 4
  %8 = and i32 %bf.load7, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else, label %do.body11

do.body11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/util.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #11, !srcloc !148
  unreachable

if.else:                                          ; preds = %if.end5
  tail call void @dump_stack() #14
  %9 = ptrtoint ptr %ar_errors to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load18 = load i32, ptr %ar_errors, align 4
  %10 = and i32 %bf.load18, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %10)
  %cmp21 = icmp eq i32 %10, 1572864
  br i1 %cmp21, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %sd_fsname23 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.32, ptr noundef %sd_fsname23, ptr noundef %assertion, ptr noundef %sd_fsname23, ptr noundef %function, ptr noundef %file, i32 noundef %line) #16
  unreachable

if.end27:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %12 = ptrtoint ptr %sd_last_warning to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %sd_last_warning, align 8
  br label %return

return:                                           ; preds = %if.end27, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_consist_i(ptr noundef %sdp, ptr noundef %function, ptr noundef %file, i32 noundef %line) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @gfs2_lm(ptr noundef %sdp, ptr noundef nonnull @.str.33, ptr noundef %function, ptr noundef %file, i32 noundef %line)
  %call = tail call i32 @gfs2_withdraw(ptr noundef %sdp)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_consist_inode_i(ptr nocapture noundef readonly %ip, ptr noundef %function, ptr noundef %file, i32 noundef %line) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_no_formal_ino = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 2
  %4 = ptrtoint ptr %i_no_formal_ino to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_no_formal_ino, align 8
  %i_no_addr = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 1
  %6 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_no_addr, align 8
  tail call void (ptr, ptr, ...) @gfs2_lm(ptr noundef %3, ptr noundef nonnull @.str.34, i64 noundef %5, i64 noundef %7, ptr noundef %function, ptr noundef %file, i32 noundef %line)
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %8 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_gl, align 4
  tail call void @gfs2_dump_glock(ptr noundef null, ptr noundef %9, i1 noundef zeroext true) #11
  %call1 = tail call i32 @gfs2_withdraw(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_dump_glock(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_consist_rgrpd_i(ptr noundef %rgd, ptr noundef %function, ptr noundef %file, i32 noundef %line) local_unnamed_addr #0 align 64 {
entry:
  %fs_id_buf = alloca [277 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rd_sbd = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 14
  %0 = ptrtoint ptr %rd_sbd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rd_sbd, align 4
  call void @llvm.lifetime.start.p0(i64 277, ptr nonnull %fs_id_buf) #11
  %2 = call ptr @memset(ptr %fs_id_buf, i32 255, i32 277)
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 110
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fs_id_buf, ptr noundef nonnull @.str.35, ptr noundef %sd_fsname)
  call void @gfs2_rgrp_dump(ptr noundef null, ptr noundef %rgd, ptr noundef nonnull %fs_id_buf) #11
  %rd_addr = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 2
  %3 = ptrtoint ptr %rd_addr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rd_addr, align 8
  call void (ptr, ptr, ...) @gfs2_lm(ptr noundef %1, ptr noundef nonnull @.str.36, i64 noundef %4, ptr noundef %function, ptr noundef %file, i32 noundef %line)
  %rd_gl = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 1
  %5 = ptrtoint ptr %rd_gl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rd_gl, align 4
  call void @gfs2_dump_glock(ptr noundef null, ptr noundef %6, i1 noundef zeroext true) #11
  %call3 = call i32 @gfs2_withdraw(ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 277, ptr nonnull %fs_id_buf) #11
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_rgrp_dump(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_meta_check_ii(ptr noundef %sdp, ptr nocapture noundef readonly %bh, ptr noundef %type, ptr noundef %function, ptr noundef %file, i32 noundef %line) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %0 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %b_blocknr, align 8
  tail call void (ptr, ptr, ...) @gfs2_lm(ptr noundef %sdp, ptr noundef nonnull @.str.37, i64 noundef %1, ptr noundef %type, ptr noundef %function, ptr noundef %file, i32 noundef %line)
  %call = tail call i32 @gfs2_withdraw(ptr noundef %sdp)
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_metatype_check_ii(ptr noundef %sdp, ptr nocapture noundef readonly %bh, i16 noundef zeroext %type, i16 noundef zeroext %t, ptr noundef %function, ptr noundef %file, i32 noundef %line) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %0 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %b_blocknr, align 8
  %conv = zext i16 %type to i32
  %conv1 = zext i16 %t to i32
  tail call void (ptr, ptr, ...) @gfs2_lm(ptr noundef %sdp, ptr noundef nonnull @.str.38, i64 noundef %1, i32 noundef %conv, i32 noundef %conv1, ptr noundef %function, ptr noundef %file, i32 noundef %line)
  %call = tail call i32 @gfs2_withdraw(ptr noundef %sdp)
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_io_error_i(ptr noundef %sdp, ptr noundef %function, ptr noundef %file, i32 noundef %line) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @gfs2_lm(ptr noundef %sdp, ptr noundef nonnull @.str.39, ptr noundef %function, ptr noundef %file, i32 noundef %line)
  %call = tail call i32 @gfs2_withdraw(ptr noundef %sdp)
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_io_error_bh_i(ptr noundef %sdp, ptr nocapture noundef readonly %bh, ptr noundef %function, ptr noundef %file, i32 noundef %line, i1 noundef zeroext %withdraw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  %0 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sd_flags.i, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %gfs2_withdrawn.exit, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

gfs2_withdrawn.exit:                              ; preds = %entry
  %3 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %sd_flags.i, align 4
  %5 = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.i.not = icmp eq i32 %5, 0
  br i1 %tobool3.i.not, label %do.end, label %gfs2_withdrawn.exit.if.end4_crit_edge

gfs2_withdrawn.exit.if.end4_crit_edge:            ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

do.end:                                           ; preds = %gfs2_withdrawn.exit
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %6 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %b_blocknr, align 8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %sd_fsname, i64 noundef %7, ptr noundef %function, ptr noundef %file, i32 noundef %line) #14
  br i1 %withdraw, label %if.then2, label %do.end.if.end4_crit_edge

do.end.if.end4_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @gfs2_withdraw(ptr noundef %sdp)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %do.end.if.end4_crit_edge, %gfs2_withdrawn.exit.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gfs2_holder_init(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_nq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_holder_uninit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_ail_drain(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gfs2_glock_is_locked_by_me(ptr noundef %gl) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %gl_lockref = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %gl_lockref) #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !134) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %thread_pid.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 78
  %4 = ptrtoint ptr %thread_pid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %thread_pid.i, align 16
  %gl_holders = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 6
  %6 = ptrtoint ptr %gl_holders to i32
  call void @__asan_load4_noabort(i32 %6)
  %gh.029 = load ptr, ptr %gl_holders, align 4
  %cmp.not30 = icmp eq ptr %gh.029, %gl_holders
  br i1 %cmp.not30, label %entry.out_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %gh.031 = phi ptr [ %gh.0, %for.inc.for.body_crit_edge ], [ %gh.029, %entry.for.body_crit_edge ]
  %gh_iflags = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031, i32 0, i32 6
  %7 = ptrtoint ptr %gh_iflags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %gh_iflags, align 4
  %9 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %for.body.out_crit_edge, label %if.end

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %for.body
  %10 = ptrtoint ptr %gh_iflags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %gh_iflags, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not = icmp eq i32 %12, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end8:                                          ; preds = %if.end
  %gh_owner_pid = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031, i32 0, i32 2
  %13 = ptrtoint ptr %gh_owner_pid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gh_owner_pid, align 4
  %cmp9 = icmp eq ptr %14, %5
  br i1 %cmp9, label %if.end8.out_crit_edge, label %if.end8.for.inc_crit_edge

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc:                                          ; preds = %if.end8.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %15 = ptrtoint ptr %gh.031 to i32
  call void @__asan_load4_noabort(i32 %15)
  %gh.0 = load ptr, ptr %gh.031, align 4
  %cmp.not = icmp eq ptr %gh.0, %gl_holders
  br i1 %cmp.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.end8.out_crit_edge, %for.body.out_crit_edge, %entry.out_crit_edge
  %gh.1 = phi ptr [ null, %entry.out_crit_edge ], [ null, %for.inc.out_crit_edge ], [ null, %for.body.out_crit_edge ], [ %gh.031, %if.end8.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref) #11
  ret ptr %gh.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_make_fs_ro(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_dq_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_dq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thaw_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_hold(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_holder_reinit(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_recover_journal(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_queue_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_inode_lookup(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_mark_dontcache(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133}
!llvm.named.register.sp = !{!134}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/gfs2/util.c", i32 40, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @gfs2_assert_i._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @gfs2_assert_i._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/gfs2/util.c", i32 64, i32 4}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @check_journal_clean._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @check_journal_clean._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/gfs2/util.c", i32 71, i32 4}
!13 = !{ptr @check_journal_clean._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @check_journal_clean._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/gfs2/util.c", i32 78, i32 4}
!17 = !{ptr @check_journal_clean._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @check_journal_clean._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/gfs2/util.c", i32 85, i32 4}
!21 = !{ptr @check_journal_clean._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @check_journal_clean._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/gfs2/util.c", i32 110, i32 3}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @gfs2_freeze_lock._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @gfs2_freeze_lock._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/gfs2/util.c", i32 318, i32 2}
!30 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @gfs2_lm._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @gfs2_lm._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/gfs2/util.c", i32 340, i32 3}
!35 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @gfs2_withdraw._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @gfs2_withdraw._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/gfs2/util.c", i32 347, i32 57}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/gfs2/util.c", i32 351, i32 4}
!42 = !{ptr @gfs2_withdraw._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @gfs2_withdraw._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/gfs2/util.c", i32 355, i32 3}
!46 = !{ptr @gfs2_withdraw._entry.24, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @gfs2_withdraw._entry_ptr.26, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/gfs2/util.c", i32 363, i32 9}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/gfs2/util.c", i32 379, i32 2}
!52 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @gfs2_assert_withdraw_i._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @gfs2_assert_withdraw_i._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/gfs2/util.c", i32 411, i32 3}
!57 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @gfs2_assert_warn_i._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @gfs2_assert_warn_i._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/gfs2/util.c", i32 420, i32 9}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/gfs2/util.c", i32 436, i32 3}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/gfs2/util.c", i32 451, i32 3}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/gfs2/util.c", i32 471, i32 21}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/gfs2/util.c", i32 474, i32 3}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/gfs2/util.c", i32 496, i32 3}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/gfs2/util.c", i32 518, i32 3}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/gfs2/util.c", i32 537, i32 3}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/gfs2/util.c", i32 555, i32 2}
!78 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @gfs2_io_error_bh_i._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @gfs2_io_error_bh_i._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @gfs2_glock_cachep, !82, !"gfs2_glock_cachep", i1 false, i1 false}
!82 = !{!"../fs/gfs2/util.c", i32 28, i32 20}
!83 = !{ptr @gfs2_glock_aspace_cachep, !84, !"gfs2_glock_aspace_cachep", i1 false, i1 false}
!84 = !{!"../fs/gfs2/util.c", i32 29, i32 20}
!85 = !{ptr @gfs2_inode_cachep, !86, !"gfs2_inode_cachep", i1 false, i1 false}
!86 = !{!"../fs/gfs2/util.c", i32 30, i32 20}
!87 = !{ptr @gfs2_bufdata_cachep, !88, !"gfs2_bufdata_cachep", i1 false, i1 false}
!88 = !{!"../fs/gfs2/util.c", i32 31, i32 20}
!89 = !{ptr @gfs2_rgrpd_cachep, !90, !"gfs2_rgrpd_cachep", i1 false, i1 false}
!90 = !{!"../fs/gfs2/util.c", i32 32, i32 20}
!91 = !{ptr @gfs2_quotad_cachep, !92, !"gfs2_quotad_cachep", i1 false, i1 false}
!92 = !{!"../fs/gfs2/util.c", i32 33, i32 20}
!93 = !{ptr @gfs2_qadata_cachep, !94, !"gfs2_qadata_cachep", i1 false, i1 false}
!94 = !{!"../fs/gfs2/util.c", i32 34, i32 20}
!95 = !{ptr @gfs2_trans_cachep, !96, !"gfs2_trans_cachep", i1 false, i1 false}
!96 = !{!"../fs/gfs2/util.c", i32 35, i32 20}
!97 = !{ptr @gfs2_page_pool, !98, !"gfs2_page_pool", i1 false, i1 false}
!98 = !{!"../fs/gfs2/util.c", i32 36, i32 12}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../include/linux/wait_bit.h", i32 73, i32 2}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/gfs2/util.c", i32 227, i32 2}
!103 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @signal_our_withdraw._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @signal_our_withdraw._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/gfs2/util.c", i32 248, i32 3}
!108 = !{ptr @signal_our_withdraw._entry.45, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @signal_our_withdraw._entry_ptr.47, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/gfs2/util.c", i32 251, i32 4}
!112 = !{ptr @signal_our_withdraw._entry.48, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @signal_our_withdraw._entry_ptr.50, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/gfs2/util.c", i32 276, i32 3}
!116 = !{ptr @signal_our_withdraw._entry.51, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @signal_our_withdraw._entry_ptr.53, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/gfs2/util.c", i32 291, i32 3}
!120 = !{ptr @signal_our_withdraw._entry.54, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @signal_our_withdraw._entry_ptr.56, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/gfs2/util.c", i32 296, i32 3}
!124 = !{ptr @signal_our_withdraw._entry.57, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @signal_our_withdraw._entry_ptr.59, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/gfs2/util.c", i32 299, i32 3}
!128 = !{ptr @signal_our_withdraw._entry.60, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @signal_our_withdraw._entry_ptr.62, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/gfs2/util.c", i32 301, i32 2}
!132 = !{ptr @signal_our_withdraw._entry.63, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @signal_our_withdraw._entry_ptr.65, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{!"sp"}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{!"auto-init"}
!145 = !{!"branch_weights", i32 2000, i32 1}
!146 = !{i64 2155017046, i64 2155017525, i64 2155017083, i64 2155017139, i64 2155017173, i64 2155017197, i64 2155017238, i64 2155017259, i64 2155017287, i64 2155017321}
!147 = !{i64 2155022388}
!148 = !{i64 2155028396, i64 2155028875, i64 2155028433, i64 2155028489, i64 2155028523, i64 2155028547, i64 2155028588, i64 2155028609, i64 2155028637, i64 2155028671}
