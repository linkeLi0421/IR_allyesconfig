; ModuleID = '/llk/IR_all_yes/fs/jfs/jfs_logmgr.c_pt.bc'
source_filename = "../fs/jfs/jfs_logmgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.uuid_t = type { [16 x i8] }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.jfs_log = type { %struct.list_head, %struct.list_head, ptr, i32, i64, i32, i32, i32, ptr, %struct.wait_queue_head, i32, i32, i32, ptr, %struct.mutex, i32, i32, %struct.wait_queue_head, i32, %struct.list_head, ptr, i32, ptr, %struct.spinlock, i32, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, ptr, i32, %struct.uuid_t, i32 }
%struct.tlock = type { i16, i16, i16, i16, ptr, ptr, [24 x i16] }
%struct.metapage = type { i16, i16, i16, i32, %struct.list_head, i32, i32, ptr, i64, %struct.wait_queue_head, ptr, ptr, i32, i32, i32, ptr }
%struct.tblock = type { i16, i16, i16, i32, %struct.list_head, ptr, i16, i16, %struct.wait_queue_head, i32, %struct.list_head, i32, ptr, i32, i32, %struct.wait_queue_head, %union.anon.75, i32 }
%union.anon.75 = type { %struct.pxd_t }
%struct.pxd_t = type { i32, i32 }
%struct.lbuf = type { ptr, i32, ptr, ptr, i32, i32, i32, i64, ptr, ptr, i32, %struct.wait_queue_head }
%struct.linelock = type { i16, i8, i8, i16, i8, i8, [20 x %struct.lv] }
%struct.lv = type { i8, i8 }
%struct.lvd = type { i16, i16 }
%struct.lrd = type { i32, i32, i16, i16, i32, %union.anon.78 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { i32, i32, i16, i16, %struct.pxd_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.logpage = type { %struct.anon.88, [1020 x i32], %struct.anon.89 }
%struct.anon.88 = type { i32, i16, i16 }
%struct.anon.89 = type { i32, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%struct.llist_node = type { ptr }
%union.anon.34 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.36 }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.58 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.jfs_sb_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i16, i16, i16, i16, i16, i32, i32, %struct.pxd_t, %struct.pxd_t, %struct.pxd_t, %struct.uuid_t, %struct.uuid_t, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.logsuper = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.uuid_t, [16 x i8], [128 x %struct.anon.87] }
%struct.anon.87 = type { %struct.uuid_t }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.41, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.41 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }

@jfsloglevel = external dso_local local_unnamed_addr global i32, align 4
@lmLog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016lmLog: log:0x%p tblk:0x%p, lrd:0x%p tlck:0x%p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lmLog\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/jfs/jfs_logmgr.c\00", [44 x i8] zeroinitializer }, align 32
@lmLog._entry_ptr = internal global ptr @lmLog._entry, section ".printk_index", align 4
@lmGroupCommit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016lmGroup Commit: tblk = 0x%p, gcrtc = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lmGroupCommit\00", [18 x i8] zeroinitializer }, align 32
@lmGroupCommit._entry_ptr = internal global ptr @lmGroupCommit._entry, section ".printk_index", align 4
@jfs_tlocks_low = external dso_local local_unnamed_addr global i32, align 4
@jfs_log_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.93, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @jfs_log_mutex, i64 52), ptr getelementptr (i8, ptr @jfs_log_mutex, i64 52) }, ptr @jfs_log_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.94, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@jfs_external_logs = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @jfs_external_logs, ptr @jfs_external_logs }, [24 x i8] zeroinitializer }, align 32
@lmLogOpen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1083, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014wrong uuid on JFS journal\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lmLogOpen\00", [22 x i8] zeroinitializer }, align 32
@lmLogOpen._entry_ptr = internal global ptr @lmLogOpen._entry, section ".printk_index", align 4
@lmLogOpen.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&log->syncwait\00", [17 x i8] zeroinitializer }, align 32
@lmLogOpen._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.2, i32 1158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014lmLogOpen: exit(%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@lmLogOpen._entry_ptr.11 = internal global ptr @lmLogOpen._entry.9, section ".printk_index", align 4
@lmLogInit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016lmLogInit: log:0x%p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lmLogInit\00", [22 x i8] zeroinitializer }, align 32
@lmLogInit._entry_ptr = internal global ptr @lmLogInit._entry, section ".printk_index", align 4
@lmLogInit.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&(log)->gclock\00", [17 x i8] zeroinitializer }, align 32
@lmLogInit.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&(log)->loglock\00", [16 x i8] zeroinitializer }, align 32
@lmLogInit.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&(log)->synclock\00", [47 x i8] zeroinitializer }, align 32
@lmLogInit._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.13, ptr @.str.2, i32 1304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014*** Log Format Error ! ***\0A\00", [34 x i8] zeroinitializer }, align 32
@lmLogInit._entry_ptr.21 = internal global ptr @lmLogInit._entry.19, section ".printk_index", align 4
@lmLogInit._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.13, ptr @.str.2, i32 1311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014*** Log Is Dirty ! ***\0A\00", [38 x i8] zeroinitializer }, align 32
@lmLogInit._entry_ptr.24 = internal global ptr @lmLogInit._entry.22, section ".printk_index", align 4
@lmLogInit._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.13, ptr @.str.2, i32 1323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016lmLogInit: inline log:0x%p base:0x%Lx size:0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@lmLogInit._entry_ptr.27 = internal global ptr @lmLogInit._entry.25, section ".printk_index", align 4
@lmLogInit._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.13, ptr @.str.2, i32 1326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014wrong uuid on JFS log device\0A\00", [32 x i8] zeroinitializer }, align 32
@lmLogInit._entry_ptr.30 = internal global ptr @lmLogInit._entry.28, section ".printk_index", align 4
@lmLogInit._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.13, ptr @.str.2, i32 1333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016lmLogInit: external log:0x%p base:0x%Lx size:0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@lmLogInit._entry_ptr.33 = internal global ptr @lmLogInit._entry.31, section ".printk_index", align 4
@lmLogInit._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.13, ptr @.str.2, i32 1350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016lmLogInit: lsn:0x%x page:%d eor:%d:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@lmLogInit._entry_ptr.36 = internal global ptr @lmLogInit._entry.34, section ".printk_index", align 4
@lmLogInit._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.13, ptr @.str.2, i32 1403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016lmLogInit: lsn:0x%x syncpt:0x%x sync:0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@lmLogInit._entry_ptr.39 = internal global ptr @lmLogInit._entry.37, section ".printk_index", align 4
@lmLogInit._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.13, ptr @.str.2, i32 1426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014lmLogInit: exit(%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@lmLogInit._entry_ptr.42 = internal global ptr @lmLogInit._entry.40, section ".printk_index", align 4
@lmLogClose._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 1450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016lmLogClose: log:0x%p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lmLogClose\00", [21 x i8] zeroinitializer }, align 32
@lmLogClose._entry_ptr = internal global ptr @lmLogClose._entry, section ".printk_index", align 4
@lmLogClose._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 1502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016lmLogClose: exit(%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@lmLogClose._entry_ptr.47 = internal global ptr @lmLogClose._entry.45, section ".printk_index", align 4
@jfs_flush_journal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 1526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016jfs_flush_journal: log:0x%p wait=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jfs_flush_journal\00", [46 x i8] zeroinitializer }, align 32
@jfs_flush_journal._entry_ptr = internal global ptr @jfs_flush_journal._entry, section ".printk_index", align 4
@jfs_flush_journal._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 1596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\012BUG at %s:%d assert(%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@jfs_flush_journal._entry_ptr.52 = internal global ptr @jfs_flush_journal._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"list_empty(&log->cqueue)\00", [39 x i8] zeroinitializer }, align 32
@jfs_flush_journal._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.49, ptr @.str.2, i32 1602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013jfs_flush_journal: synclist not empty\0A\00", [55 x i8] zeroinitializer }, align 32
@jfs_flush_journal._entry_ptr.56 = internal global ptr @jfs_flush_journal._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"metapage: \00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"page: \00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tblock:\00", [24 x i8] zeroinitializer }, align 32
@lmLogShutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 1649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016lmLogShutdown: log:0x%p\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lmLogShutdown\00", [18 x i8] zeroinitializer }, align 32
@lmLogShutdown._entry_ptr = internal global ptr @lmLogShutdown._entry, section ".printk_index", align 4
@lmLogShutdown._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 1686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016lmLogShutdown: lsn:0x%x page:%d eor:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@lmLogShutdown._entry_ptr.65 = internal global ptr @lmLogShutdown._entry.63, section ".printk_index", align 4
@lmLogShutdown._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.2, i32 1695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014lmLogShutdown: exit(%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@lmLogShutdown._entry_ptr.68 = internal global ptr @lmLogShutdown._entry.66, section ".printk_index", align 4
@log_redrive_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.146, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@log_redrive_list = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@jfsIOWait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 2345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016jfsIOWait being killed!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jfsIOWait\00", [22 x i8] zeroinitializer }, align 32
@jfsIOWait._entry_ptr = internal global ptr @jfsIOWait._entry, section ".printk_index", align 4
@lmLogFormat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 2377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016lmLogFormat: logAddress:%Ld logSize:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lmLogFormat\00", [20 x i8] zeroinitializer }, align 32
@lmLogFormat._entry_ptr = internal global ptr @lmLogFormat._entry, section ".printk_index", align 4
@.str.73 = internal constant { [147 x i8], [45 x i8] } { [147 x i8] c"JFS Logmgr stats\0A================\0Acommits = %d\0Awrites submitted = %d\0Awrites completed = %d\0Afull pages submitted = %d\0Apartial pages submitted = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@lmStat.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lmStat.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lmStat.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lmStat.3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lmStat.4 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lmWriteRecord._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013lmWriteRecord: UFO tlck:0x%p\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lmWriteRecord\00", [18 x i8] zeroinitializer }, align 32
@lmWriteRecord._entry_ptr = internal global ptr @lmWriteRecord._entry, section ".printk_index", align 4
@lmWriteRecord._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.75, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lmWriteRecord._entry_ptr.77 = internal global ptr @lmWriteRecord._entry.76, section ".printk_index", align 4
@.str.78 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"linelock->index <= linelock->maxcnt\00", [60 x i8] zeroinitializer }, align 32
@lmWriteRecord._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.2, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016lmWriteRecord: lv offset:%d length:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@lmWriteRecord._entry_ptr.81 = internal global ptr @lmWriteRecord._entry.79, section ".printk_index", align 4
@TxLock = external dso_local local_unnamed_addr global ptr, align 4
@lmWriteRecord._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.75, ptr @.str.2, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016wr: tclsn:0x%x, beor:0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@lmWriteRecord._entry_ptr.84 = internal global ptr @lmWriteRecord._entry.82, section ".printk_index", align 4
@lmWriteRecord._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.75, ptr @.str.2, i32 529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016lmWriteRecord: lrd:0x%04x bp:0x%p pn:%d eor:0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@lmWriteRecord._entry_ptr.87 = internal global ptr @lmWriteRecord._entry.85, section ".printk_index", align 4
@lmLogSync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014\0A ... Log Wrap ... Log Wrap ... Log Wrap ...\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lmLogSync\00", [22 x i8] zeroinitializer }, align 32
@lmLogSync._entry_ptr = internal global ptr @lmLogSync._entry, section ".printk_index", align 4
@lmLogSync._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 1028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016log barrier on: lsn=0x%x syncpt=0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@lmLogSync._entry_ptr.92 = internal global ptr @lmLogSync._entry.90, section ".printk_index", align 4
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"jfs_log_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jfs_log_mutex\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@open_inline_log.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@open_inline_log._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.95, ptr @.str.2, i32 1178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"open_inline_log\00", [16 x i8] zeroinitializer }, align 32
@open_inline_log._entry_ptr = internal global ptr @open_inline_log._entry, section ".printk_index", align 4
@.str.96 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"12 >= sb->s_blocksize_bits\00", [37 x i8] zeroinitializer }, align 32
@open_inline_log._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.95, ptr @.str.2, i32 1185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@open_inline_log._entry_ptr.98 = internal global ptr @open_inline_log._entry.97, section ".printk_index", align 4
@dummy_log = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@open_dummy_log.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&dummy_log->syncwait\00", [43 x i8] zeroinitializer }, align 32
@lmLogFileSystem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 1739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014Too many file systems sharing journal!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lmLogFileSystem\00", [16 x i8] zeroinitializer }, align 32
@lmLogFileSystem._entry_ptr = internal global ptr @lmLogFileSystem._entry, section ".printk_index", align 4
@uuid_null = external dso_local constant %struct.uuid_t, align 1
@lmLogFileSystem._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.2, i32 1751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014Somebody stomped on the journal!\0A\00", [60 x i8] zeroinitializer }, align 32
@lmLogFileSystem._entry_ptr.104 = internal global ptr @lmLogFileSystem._entry.102, section ".printk_index", align 4
@lbmLogInit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 1800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016lbmLogInit: log:0x%p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lbmLogInit\00", [21 x i8] zeroinitializer }, align 32
@lbmLogInit._entry_ptr = internal global ptr @lbmLogInit._entry, section ".printk_index", align 4
@lbmLogInit.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&log->free_wait\00", [16 x i8] zeroinitializer }, align 32
@lbmLogInit.__key.108 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&lbuf->l_ioevent\00", [47 x i8] zeroinitializer }, align 32
@lbmLogShutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 1867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016lbmLogShutdown: log:0x%p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lbmLogShutdown\00", [17 x i8] zeroinitializer }, align 32
@lbmLogShutdown._entry_ptr = internal global ptr @lbmLogShutdown._entry, section ".printk_index", align 4
@jfsLCacheLock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.115, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jfsLCacheLock\00", [18 x i8] zeroinitializer }, align 32
@lbmfree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.116, ptr @.str.2, i32 1930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lbmfree\00", [24 x i8] zeroinitializer }, align 32
@lbmfree._entry_ptr = internal global ptr @lbmfree._entry, section ".printk_index", align 4
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bp->l_wqnext == NULL\00", [43 x i8] zeroinitializer }, align 32
@lbmRead._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.2, i32 1979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016lbmRead: bp:0x%p pn:0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lbmRead\00", [24 x i8] zeroinitializer }, align 32
@lbmRead._entry_ptr = internal global ptr @lbmRead._entry, section ".printk_index", align 4
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@lbmIODone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 2190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016lbmIODone: bp:0x%p flag:0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lbmIODone\00", [22 x i8] zeroinitializer }, align 32
@lbmIODone._entry_ptr = internal global ptr @lbmIODone._entry, section ".printk_index", align 4
@lbmIODone._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 2199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013lbmIODone: I/O error in JFS log\0A\00", [61 x i8] zeroinitializer }, align 32
@lbmIODone._entry_ptr.124 = internal global ptr @lbmIODone._entry.122, section ".printk_index", align 4
@lbmIODone._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.121, ptr @.str.2, i32 2313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbmIODone._entry_ptr.126 = internal global ptr @lbmIODone._entry.125, section ".printk_index", align 4
@.str.127 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bp->l_flag & lbmRELEASE\00", [40 x i8] zeroinitializer }, align 32
@lbmIODone._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.121, ptr @.str.2, i32 2314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbmIODone._entry_ptr.129 = internal global ptr @lbmIODone._entry.128, section ".printk_index", align 4
@.str.130 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bp->l_flag & lbmFREE\00", [43 x i8] zeroinitializer }, align 32
@jfsIOthread = external dso_local local_unnamed_addr global ptr, align 4
@lmPostGC._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.2, i32 847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016lmPostGC: tblk = 0x%p, flag = 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lmPostGC\00", [23 x i8] zeroinitializer }, align 32
@lmPostGC._entry_ptr = internal global ptr @lmPostGC._entry, section ".printk_index", align 4
@lmPostGC._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.2, i32 877, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016lmPostGC: calling lbmWrite\0A\00", [34 x i8] zeroinitializer }, align 32
@lmPostGC._entry_ptr.135 = internal global ptr @lmPostGC._entry.133, section ".printk_index", align 4
@lbmWrite._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.2, i32 2029, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016lbmWrite: bp:0x%p flag:0x%x pn:0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lbmWrite\00", [23 x i8] zeroinitializer }, align 32
@lbmWrite._entry_ptr = internal global ptr @lbmWrite._entry, section ".printk_index", align 4
@lbmDirectWrite._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.2, i32 2094, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016lbmDirectWrite: bp:0x%p flag:0x%x pn:0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lbmDirectWrite\00", [17 x i8] zeroinitializer }, align 32
@lbmDirectWrite._entry_ptr = internal global ptr @lbmDirectWrite._entry, section ".printk_index", align 4
@lbmIOWait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.2, i32 2158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016lbmIOWait1: bp:0x%p flag:0x%x:0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lbmIOWait\00", [22 x i8] zeroinitializer }, align 32
@lbmIOWait._entry_ptr = internal global ptr @lbmIOWait._entry, section ".printk_index", align 4
@lbmIOWait._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.141, ptr @.str.2, i32 2171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016lbmIOWait2: bp:0x%p flag:0x%x:0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@lbmIOWait._entry_ptr.145 = internal global ptr @lbmIOWait._entry.143, section ".printk_index", align 4
@.str.146 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"log_redrive_lock\00", [47 x i8] zeroinitializer }, align 32
@lbmStartIO._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 2126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016lbmStartIO\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lbmStartIO\00", [21 x i8] zeroinitializer }, align 32
@lbmStartIO._entry_ptr = internal global ptr @lbmStartIO._entry, section ".printk_index", align 4
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.149 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 233, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 680, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [14 x i8] c"jfs_log_mutex\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [18 x i8] c"jfs_external_logs\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 156, i32 8 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1083, i32 5 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1103, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1158, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1258, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1261, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1264, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1266, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1304, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1311, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1322, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1326, i32 5 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1332, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1348, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1402, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1426, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1450, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1502, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1526, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1596, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1602, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1606, i32 20 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1606, i32 30 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1609, i32 30 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1614, i32 30 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1649, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1685, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1695, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant [17 x i8] c"log_redrive_lock\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [17 x i8] c"log_redrive_list\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 73, i32 21 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 2345, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 2376, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 2487, i32 10 }
@___asan_gen_.372 = private unnamed_addr constant [9 x i8] c"lmStat.0\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [9 x i8] c"lmStat.1\00", align 1
@___asan_gen_.374 = private unnamed_addr constant [9 x i8] c"lmStat.2\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [9 x i8] c"lmStat.3\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [9 x i8] c"lmStat.4\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 400, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 406, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 459, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 501, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 528, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 993, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1027, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 158, i32 8 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1170, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1178, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1185, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant [10 x i8] c"dummy_log\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 157, i32 24 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1207, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1739, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1751, i32 4 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1800, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1817, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1842, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1867, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant [14 x i8] c"jfsLCacheLock\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 108, i32 8 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1930, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1979, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 2190, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 2199, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 2313, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 2314, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 846, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 877, i32 4 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 2029, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 2093, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 2158, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 2171, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 74, i32 8 }
@___asan_gen_.602 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.609 = private constant [23 x i8] c"../fs/jfs/jfs_logmgr.c\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 2126, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.612 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.612, i32 57, i32 2 }
@llvm.compiler.used = appending global [207 x ptr] [ptr @jfsIOWait._entry, ptr @jfsIOWait._entry_ptr, ptr @jfs_flush_journal._entry, ptr @jfs_flush_journal._entry.50, ptr @jfs_flush_journal._entry.54, ptr @jfs_flush_journal._entry_ptr, ptr @jfs_flush_journal._entry_ptr.52, ptr @jfs_flush_journal._entry_ptr.56, ptr @lbmDirectWrite._entry, ptr @lbmDirectWrite._entry_ptr, ptr @lbmIODone._entry, ptr @lbmIODone._entry.122, ptr @lbmIODone._entry.125, ptr @lbmIODone._entry.128, ptr @lbmIODone._entry_ptr, ptr @lbmIODone._entry_ptr.124, ptr @lbmIODone._entry_ptr.126, ptr @lbmIODone._entry_ptr.129, ptr @lbmIOWait._entry, ptr @lbmIOWait._entry.143, ptr @lbmIOWait._entry_ptr, ptr @lbmIOWait._entry_ptr.145, ptr @lbmLogInit._entry, ptr @lbmLogInit._entry_ptr, ptr @lbmLogShutdown._entry, ptr @lbmLogShutdown._entry_ptr, ptr @lbmRead._entry, ptr @lbmRead._entry_ptr, ptr @lbmStartIO._entry, ptr @lbmStartIO._entry_ptr, ptr @lbmWrite._entry, ptr @lbmWrite._entry_ptr, ptr @lbmfree._entry, ptr @lbmfree._entry_ptr, ptr @lmGroupCommit._entry, ptr @lmGroupCommit._entry_ptr, ptr @lmLog._entry, ptr @lmLog._entry_ptr, ptr @lmLogClose._entry, ptr @lmLogClose._entry.45, ptr @lmLogClose._entry_ptr, ptr @lmLogClose._entry_ptr.47, ptr @lmLogFileSystem._entry, ptr @lmLogFileSystem._entry.102, ptr @lmLogFileSystem._entry_ptr, ptr @lmLogFileSystem._entry_ptr.104, ptr @lmLogFormat._entry, ptr @lmLogFormat._entry_ptr, ptr @lmLogInit._entry, ptr @lmLogInit._entry.19, ptr @lmLogInit._entry.22, ptr @lmLogInit._entry.25, ptr @lmLogInit._entry.28, ptr @lmLogInit._entry.31, ptr @lmLogInit._entry.34, ptr @lmLogInit._entry.37, ptr @lmLogInit._entry.40, ptr @lmLogInit._entry_ptr, ptr @lmLogInit._entry_ptr.21, ptr @lmLogInit._entry_ptr.24, ptr @lmLogInit._entry_ptr.27, ptr @lmLogInit._entry_ptr.30, ptr @lmLogInit._entry_ptr.33, ptr @lmLogInit._entry_ptr.36, ptr @lmLogInit._entry_ptr.39, ptr @lmLogInit._entry_ptr.42, ptr @lmLogOpen._entry, ptr @lmLogOpen._entry.9, ptr @lmLogOpen._entry_ptr, ptr @lmLogOpen._entry_ptr.11, ptr @lmLogShutdown._entry, ptr @lmLogShutdown._entry.63, ptr @lmLogShutdown._entry.66, ptr @lmLogShutdown._entry_ptr, ptr @lmLogShutdown._entry_ptr.65, ptr @lmLogShutdown._entry_ptr.68, ptr @lmLogSync._entry, ptr @lmLogSync._entry.90, ptr @lmLogSync._entry_ptr, ptr @lmLogSync._entry_ptr.92, ptr @lmPostGC._entry, ptr @lmPostGC._entry.133, ptr @lmPostGC._entry_ptr, ptr @lmPostGC._entry_ptr.135, ptr @lmWriteRecord._entry, ptr @lmWriteRecord._entry.76, ptr @lmWriteRecord._entry.79, ptr @lmWriteRecord._entry.82, ptr @lmWriteRecord._entry.85, ptr @lmWriteRecord._entry_ptr, ptr @lmWriteRecord._entry_ptr.77, ptr @lmWriteRecord._entry_ptr.81, ptr @lmWriteRecord._entry_ptr.84, ptr @lmWriteRecord._entry_ptr.87, ptr @open_inline_log._entry, ptr @open_inline_log._entry.97, ptr @open_inline_log._entry_ptr, ptr @open_inline_log._entry_ptr.98, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @jfs_log_mutex, ptr @jfs_external_logs, ptr @.str.6, ptr @.str.7, ptr @lmLogOpen.__key, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @lmLogInit.__key, ptr @.str.14, ptr @lmLogInit.__key.15, ptr @.str.16, ptr @lmLogInit.__key.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @log_redrive_lock, ptr @log_redrive_list, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @lmStat.0, ptr @lmStat.1, ptr @lmStat.2, ptr @lmStat.3, ptr @lmStat.4, ptr @.str.74, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @open_inline_log.__key, ptr @.str.95, ptr @.str.96, ptr @dummy_log, ptr @open_dummy_log.__key, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @lbmLogInit.__key, ptr @.str.107, ptr @lbmLogInit.__key.108, ptr @.str.109, ptr @.str.112, ptr @.str.113, ptr @jfsLCacheLock, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.127, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.144, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149], section "llvm.metadata"
@0 = internal global [158 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmGroupCommit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_log_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_external_logs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogOpen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogOpen.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogOpen._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogInit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogInit.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogInit.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogInit.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogInit._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogInit._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogInit._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogInit._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogInit._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogInit._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogInit._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogInit._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogClose._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogClose._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_flush_journal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_flush_journal._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfs_flush_journal._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogShutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogShutdown._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogShutdown._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_redrive_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_redrive_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfsIOWait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogFormat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 147, i32 192, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmStat.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmStat.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmStat.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmStat.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmStat.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmWriteRecord._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmWriteRecord._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmWriteRecord._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmWriteRecord._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmWriteRecord._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogSync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogSync._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_inline_log.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_inline_log._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_inline_log._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_log to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_dummy_log.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogFileSystem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmLogFileSystem._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbmLogInit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbmLogInit.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbmLogInit.__key.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbmLogShutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jfsLCacheLock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbmfree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbmRead._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbmIODone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbmIODone._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbmIODone._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbmIODone._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmPostGC._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmPostGC._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbmWrite._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbmDirectWrite._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbmIOWait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbmIOWait._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbmStartIO._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lmLog(ptr noundef %log, ptr noundef %tblk, ptr noundef %lrd, ptr noundef %tlck) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %0 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %log, ptr noundef %tblk, ptr noundef %lrd, ptr noundef %tlck) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %loglock = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %loglock, i32 noundef 0) #8
  %cmp4 = icmp eq ptr %tblk, null
  %cmp7 = icmp eq ptr %tlck, null
  %or.cond = or i1 %cmp4, %cmp7
  br i1 %or.cond, label %do.end3.writeRecord_crit_edge, label %lor.lhs.false

do.end3.writeRecord_crit_edge:                    ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %writeRecord

lor.lhs.false:                                    ; preds = %do.end3
  %type = getelementptr inbounds %struct.tlock, ptr %tlck, i32 0, i32 3
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %type, align 2
  %3 = and i16 %2, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %lor.lhs.false8, label %lor.lhs.false.writeRecord_crit_edge

lor.lhs.false.writeRecord_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %writeRecord

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %mp9 = getelementptr inbounds %struct.tlock, ptr %tlck, i32 0, i32 4
  %4 = ptrtoint ptr %mp9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mp9, align 4
  %cmp10 = icmp eq ptr %5, null
  br i1 %cmp10, label %lor.lhs.false8.writeRecord_crit_edge, label %if.end13

lor.lhs.false8.writeRecord_crit_edge:             ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #10
  br label %writeRecord

if.end13:                                         ; preds = %lor.lhs.false8
  %lsn14 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 25
  %6 = ptrtoint ptr %lsn14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lsn14, align 4
  %synclock = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 30
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %synclock) #8
  %lsn26 = getelementptr inbounds %struct.metapage, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %lsn26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lsn26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp27 = icmp eq i32 %9, 0
  br i1 %cmp27, label %if.then29, label %if.end13.if.end33_crit_edge

if.end13.if.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then29:                                        ; preds = %if.end13
  %log30 = getelementptr inbounds %struct.metapage, ptr %5, i32 0, i32 15
  %10 = ptrtoint ptr %log30 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %log, ptr %log30, align 8
  %11 = ptrtoint ptr %lsn26 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %7, ptr %lsn26, align 8
  %count = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 32
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %count, align 4
  %synclist = getelementptr inbounds %struct.metapage, ptr %5, i32 0, i32 4
  %synclist32 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 29
  %prev.i = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 29, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %synclist, ptr noundef %15, ptr noundef %synclist32) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then29.if.end33_crit_edge

if.then29.if.end33_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.end.i.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %synclist, ptr %prev.i, align 4
  %17 = ptrtoint ptr %synclist to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %synclist32, ptr %synclist, align 4
  %prev3.i.i = getelementptr inbounds %struct.metapage, ptr %5, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %synclist, ptr %15, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end.i.i, %if.then29.if.end33_crit_edge, %if.end13.if.end33_crit_edge
  %lsn34 = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 3
  %20 = ptrtoint ptr %lsn34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lsn34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp35 = icmp eq i32 %21, 0
  %22 = ptrtoint ptr %lsn26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lsn26, align 8
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end33
  %24 = ptrtoint ptr %lsn34 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %lsn34, align 4
  %count40 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 32
  %25 = ptrtoint ptr %count40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count40, align 4
  %inc41 = add i32 %26, 1
  store i32 %inc41, ptr %count40, align 4
  %synclist42 = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 4
  %synclist43 = getelementptr inbounds %struct.metapage, ptr %5, i32 0, i32 4
  %27 = ptrtoint ptr %synclist43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %synclist43, align 4
  %call.i.i134 = tail call zeroext i1 @__list_add_valid(ptr noundef %synclist42, ptr noundef %synclist43, ptr noundef %28) #8
  br i1 %call.i.i134, label %if.end.i.i136, label %if.then37.if.end66_crit_edge

if.then37.if.end66_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.end.i.i136:                                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %synclist42, ptr %prev1.i.i, align 4
  %30 = ptrtoint ptr %synclist42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %synclist42, align 4
  %prev3.i.i135 = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %prev3.i.i135 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %synclist43, ptr %prev3.i.i135, align 4
  %32 = ptrtoint ptr %synclist43 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %synclist42, ptr %synclist43, align 4
  br label %if.end66

if.else:                                          ; preds = %if.end33
  %syncpt = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 27
  %33 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %syncpt, align 4
  %sub = sub i32 %23, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp45 = icmp slt i32 %sub, 0
  br i1 %cmp45, label %if.then47, label %if.else.if.end48_crit_edge

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %logsize = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 24
  %35 = ptrtoint ptr %logsize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %logsize, align 8
  %add = add i32 %36, %sub
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.else.if.end48_crit_edge
  %diffp.0 = phi i32 [ %add, %if.then47 ], [ %sub, %if.else.if.end48_crit_edge ]
  %sub51 = sub i32 %21, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub51)
  %cmp52 = icmp slt i32 %sub51, 0
  br i1 %cmp52, label %if.then54, label %if.end48.if.end57_crit_edge

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then54:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %logsize55 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 24
  %37 = ptrtoint ptr %logsize55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %logsize55, align 8
  %add56 = add i32 %38, %sub51
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end48.if.end57_crit_edge
  %difft.0 = phi i32 [ %add56, %if.then54 ], [ %sub51, %if.end48.if.end57_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %diffp.0, i32 %difft.0)
  %cmp58 = icmp slt i32 %diffp.0, %difft.0
  br i1 %cmp58, label %if.then60, label %if.end57.if.end66_crit_edge

if.end57.if.end66_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then60:                                        ; preds = %if.end57
  %39 = ptrtoint ptr %lsn34 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %23, ptr %lsn34, align 4
  %synclist63 = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 4
  %synclist64 = getelementptr inbounds %struct.metapage, ptr %5, i32 0, i32 4
  %call.i.i137 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %synclist63) #8
  br i1 %call.i.i137, label %if.end.i.i138, label %if.then60.__list_del_entry.exit.i_crit_edge

if.then60.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i138:                                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %synclist63 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %synclist63, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i138, %if.then60.__list_del_entry.exit.i_crit_edge
  %46 = ptrtoint ptr %synclist64 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %synclist64, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %synclist63, ptr noundef %synclist64, ptr noundef %47) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end66_crit_edge

__list_del_entry.exit.i.if.end66_crit_edge:       ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %synclist63, ptr %prev1.i.i2.i, align 4
  %49 = ptrtoint ptr %synclist63 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %47, ptr %synclist63, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %synclist64, ptr %prev3.i.i.i, align 4
  %51 = ptrtoint ptr %synclist64 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %synclist63, ptr %synclist64, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.if.end66_crit_edge, %if.end57.if.end66_crit_edge, %if.end.i.i136, %if.then37.if.end66_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %synclock, i32 noundef %call21) #8
  br label %writeRecord

writeRecord:                                      ; preds = %if.end66, %lor.lhs.false8.writeRecord_crit_edge, %lor.lhs.false.writeRecord_crit_edge, %do.end3.writeRecord_crit_edge
  %call68 = tail call fastcc i32 @lmWriteRecord(ptr noundef %log, ptr noundef %tblk, ptr noundef %lrd, ptr noundef %tlck)
  %syncpt69 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 27
  %52 = ptrtoint ptr %syncpt69 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %syncpt69, align 4
  %sub70 = sub i32 %call68, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub70)
  %cmp71 = icmp slt i32 %sub70, 0
  br i1 %cmp71, label %if.then73, label %writeRecord.if.end76_crit_edge

writeRecord.if.end76_crit_edge:                   ; preds = %writeRecord
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then73:                                        ; preds = %writeRecord
  call void @__sanitizer_cov_trace_pc() #10
  %logsize74 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 24
  %54 = ptrtoint ptr %logsize74 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %logsize74, align 8
  %add75 = add i32 %55, %sub70
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %writeRecord.if.end76_crit_edge
  %diffp.1 = phi i32 [ %add75, %if.then73 ], [ %sub70, %writeRecord.if.end76_crit_edge ]
  %nextsync = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 15
  %56 = ptrtoint ptr %nextsync to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nextsync, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %diffp.1, i32 %57)
  %cmp77.not = icmp slt i32 %diffp.1, %57
  br i1 %cmp77.not, label %if.end76.if.end81_crit_edge, label %if.then79

if.end76.if.end81_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %call80 = tail call fastcc i32 @lmLogSync(ptr noundef %log, i32 noundef 0)
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.end76.if.end81_crit_edge
  %lsn.0 = phi i32 [ %call80, %if.then79 ], [ %call68, %if.end76.if.end81_crit_edge ]
  %lsn82 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 25
  %58 = ptrtoint ptr %lsn82 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %lsn.0, ptr %lsn82, align 4
  tail call void @mutex_unlock(ptr noundef %loglock) #8
  ret i32 %lsn.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lmWriteRecord(ptr noundef %log, ptr noundef %tblk, ptr nocapture noundef %lrd, ptr noundef %tlck) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bp1 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 13
  %0 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bp1, align 8
  %l_ldata = getelementptr inbounds %struct.lbuf, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %l_ldata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %l_ldata, align 8
  %eor = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 12
  %4 = ptrtoint ptr %eor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eor, align 4
  %cmp = icmp eq ptr %tlck, null
  br i1 %cmp, label %entry.moveLrd_crit_edge, label %if.end

entry.moveLrd_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %moveLrd

if.end:                                           ; preds = %entry
  %flag = getelementptr inbounds %struct.tlock, ptr %tlck, i32 0, i32 2
  %6 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flag, align 4
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mp = getelementptr inbounds %struct.tlock, ptr %tlck, i32 0, i32 4
  %8 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mp, align 4
  %data = getelementptr inbounds %struct.metapage, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  br label %if.end28

if.else:                                          ; preds = %if.end
  %and5 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.body, label %if.then7

if.then7:                                         ; preds = %if.else
  %type = getelementptr inbounds %struct.tlock, ptr %tlck, i32 0, i32 3
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %type, align 2
  %14 = and i16 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool10.not = icmp eq i16 %14, 0
  %ip13 = getelementptr inbounds %struct.tlock, ptr %tlck, i32 0, i32 5
  %15 = ptrtoint ptr %ip13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ip13, align 4
  br i1 %tobool10.not, label %if.else12, label %if.then11

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %_dtroot = getelementptr i8, ptr %16, i32 -304
  br label %if.end28

if.else12:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %u15 = getelementptr i8, ptr %16, i32 -400
  br label %if.end28

do.body:                                          ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %17 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp19 = icmp sgt i32 %17, 0
  br i1 %cmp19, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull %tlck) #11
  br label %cleanup

if.end28:                                         ; preds = %if.else12, %if.then11, %if.then2
  %p.1 = phi ptr [ %11, %if.then2 ], [ %_dtroot, %if.then11 ], [ %u15, %if.else12 ]
  %linelock.0 = getelementptr inbounds %struct.tlock, ptr %tlck, i32 0, i32 6
  %l2linesize29 = getelementptr inbounds %struct.linelock, ptr %linelock.0, i32 0, i32 5
  %18 = ptrtoint ptr %l2linesize29 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %l2linesize29, align 1
  %conv30 = zext i8 %19 to i32
  %index333 = getelementptr inbounds %struct.linelock, ptr %linelock.0, i32 0, i32 2
  %20 = ptrtoint ptr %index333 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %index333, align 1
  %maxcnt334 = getelementptr inbounds %struct.tlock, ptr %tlck, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %maxcnt334 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %maxcnt334, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp34.not335 = icmp sgt i8 %21, %23
  br i1 %cmp34.not335, label %if.end28.do.end39_crit_edge, label %if.end28.do.end50_crit_edge

if.end28.do.end50_crit_edge:                      ; preds = %if.end28
  br label %do.end50

if.end28.do.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

do.end39:                                         ; preds = %if.then115.do.end39_crit_edge, %if.end28.do.end39_crit_edge
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 406, ptr noundef nonnull @.str.78) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_logmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #8, !srcloc !300
  unreachable

do.end50:                                         ; preds = %if.then115.do.end50_crit_edge, %if.end28.do.end50_crit_edge
  %24 = phi i8 [ %63, %if.then115.do.end50_crit_edge ], [ %21, %if.end28.do.end50_crit_edge ]
  %index341 = phi ptr [ %index, %if.then115.do.end50_crit_edge ], [ %index333, %if.end28.do.end50_crit_edge ]
  %bp.0340 = phi ptr [ %bp.1.lcssa, %if.then115.do.end50_crit_edge ], [ %1, %if.end28.do.end50_crit_edge ]
  %lp.0339 = phi ptr [ %lp.1.lcssa, %if.then115.do.end50_crit_edge ], [ %3, %if.end28.do.end50_crit_edge ]
  %dstoffset.0338 = phi i32 [ %dstoffset.1.lcssa, %if.then115.do.end50_crit_edge ], [ %5, %if.end28.do.end50_crit_edge ]
  %linelock.1337 = phi ptr [ %arrayidx, %if.then115.do.end50_crit_edge ], [ %linelock.0, %if.end28.do.end50_crit_edge ]
  %len.0336 = phi i32 [ %len.1.lcssa, %if.then115.do.end50_crit_edge ], [ 0, %if.end28.do.end50_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp54321 = icmp sgt i8 %24, 0
  br i1 %cmp54321, label %for.body.preheader, label %do.end50.for.end_crit_edge

do.end50.for.end_crit_edge:                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %do.end50
  %lv51 = getelementptr inbounds %struct.linelock, ptr %linelock.1337, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %bp.1328 = phi ptr [ %bp.4, %for.inc.for.body_crit_edge ], [ %bp.0340, %for.body.preheader ]
  %lp.1327 = phi ptr [ %lp.4, %for.inc.for.body_crit_edge ], [ %lp.0339, %for.body.preheader ]
  %dstoffset.1326 = phi i32 [ %dstoffset.5, %for.inc.for.body_crit_edge ], [ %dstoffset.0338, %for.body.preheader ]
  %lv.0324 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %lv51, %for.body.preheader ]
  %len.1323 = phi i32 [ %len.2, %for.inc.for.body_crit_edge ], [ %len.0336, %for.body.preheader ]
  %i.0322 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %length = getelementptr inbounds %struct.lv, ptr %lv.0324, i32 0, i32 1
  %25 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp57 = icmp eq i8 %26, 0
  br i1 %cmp57, label %for.body.for.inc_crit_edge, label %if.end60

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end60:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 4087, i32 %dstoffset.1326)
  %cmp61 = icmp sgt i32 %dstoffset.1326, 4087
  br i1 %cmp61, label %if.then63, label %if.end60.if.end67_crit_edge

if.end60.if.end67_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @lmNextPage(ptr noundef %log)
  %27 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bp1, align 8
  %l_ldata66 = getelementptr inbounds %struct.lbuf, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %l_ldata66 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %l_ldata66, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %if.end60.if.end67_crit_edge
  %dstoffset.2 = phi i32 [ 8, %if.then63 ], [ %dstoffset.1326, %if.end60.if.end67_crit_edge ]
  %lp.2 = phi ptr [ %30, %if.then63 ], [ %lp.1327, %if.end60.if.end67_crit_edge ]
  %bp.2 = phi ptr [ %28, %if.then63 ], [ %bp.1328, %if.end60.if.end67_crit_edge ]
  %31 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %length, align 1
  %conv70 = zext i8 %32 to i32
  %shl71 = shl i32 %conv70, %conv30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl71)
  %cmp72309 = icmp sgt i32 %shl71, 0
  br i1 %cmp72309, label %while.body.preheader, label %if.end67.while.end_crit_edge

if.end67.while.end_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.preheader:                             ; preds = %if.end67
  %33 = ptrtoint ptr %lv.0324 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %lv.0324, align 1
  %conv68 = zext i8 %34 to i32
  %shl = shl i32 %conv68, %conv30
  %add.ptr = getelementptr i8, ptr %p.1, i32 %shl
  %sub360 = sub i32 4088, %dstoffset.2
  %35 = tail call i32 @llvm.smin.i32(i32 %sub360, i32 %shl71)
  %add.ptr77361 = getelementptr i8, ptr %lp.2, i32 %dstoffset.2
  %36 = call ptr @memcpy(ptr %add.ptr77361, ptr %add.ptr, i32 %35)
  %add78362 = add i32 %35, %dstoffset.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4088, i32 %add78362)
  %cmp79363 = icmp slt i32 %add78362, 4088
  br i1 %cmp79363, label %while.body.preheader.while.end_crit_edge, label %while.body.preheader.if.end82_crit_edge

while.body.preheader.if.end82_crit_edge:          ; preds = %while.body.preheader
  br label %if.end82

while.body.preheader.while.end_crit_edge:         ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %if.end82
  %add.ptr87 = getelementptr i8, ptr %src.0310365, i32 %39
  %37 = tail call i32 @llvm.smin.i32(i32 %sub86, i32 4080)
  %add.ptr77 = getelementptr i8, ptr %43, i32 8
  %38 = call ptr @memcpy(ptr %add.ptr77, ptr %add.ptr87, i32 %37)
  %cmp79 = icmp slt i32 %sub86, 4080
  br i1 %cmp79, label %while.body.while.end.loopexit_crit_edge, label %while.body.if.end82_crit_edge

while.body.if.end82_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.end82:                                         ; preds = %while.body.if.end82_crit_edge, %while.body.preheader.if.end82_crit_edge
  %39 = phi i32 [ %37, %while.body.if.end82_crit_edge ], [ %35, %while.body.preheader.if.end82_crit_edge ]
  %src.0310365 = phi ptr [ %add.ptr87, %while.body.if.end82_crit_edge ], [ %add.ptr, %while.body.preheader.if.end82_crit_edge ]
  %srclen.0311364 = phi i32 [ %sub86, %while.body.if.end82_crit_edge ], [ %shl71, %while.body.preheader.if.end82_crit_edge ]
  tail call fastcc void @lmNextPage(ptr noundef %log)
  %40 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bp1, align 8
  %l_ldata85 = getelementptr inbounds %struct.lbuf, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %l_ldata85 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %l_ldata85, align 8
  %sub86 = sub i32 %srclen.0311364, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub86)
  %cmp72 = icmp sgt i32 %sub86, 0
  br i1 %cmp72, label %while.body, label %if.end82.while.end_crit_edge

if.end82.while.end_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.end.loopexit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %add78 = add nsw i32 %37, 8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end.loopexit_crit_edge, %if.end82.while.end_crit_edge, %while.body.preheader.while.end_crit_edge, %if.end67.while.end_crit_edge
  %lp.3.lcssa = phi ptr [ %lp.2, %if.end67.while.end_crit_edge ], [ %43, %while.body.while.end.loopexit_crit_edge ], [ %lp.2, %while.body.preheader.while.end_crit_edge ], [ %43, %if.end82.while.end_crit_edge ]
  %bp.3.lcssa = phi ptr [ %bp.2, %if.end67.while.end_crit_edge ], [ %41, %while.body.while.end.loopexit_crit_edge ], [ %bp.2, %while.body.preheader.while.end_crit_edge ], [ %41, %if.end82.while.end_crit_edge ]
  %dstoffset.4 = phi i32 [ %dstoffset.2, %if.end67.while.end_crit_edge ], [ %add78, %while.body.while.end.loopexit_crit_edge ], [ %add78362, %while.body.preheader.while.end_crit_edge ], [ 8, %if.end82.while.end_crit_edge ]
  %add = add i32 %len.1323, 4
  %add88 = add i32 %add, %shl71
  %add.ptr89 = getelementptr i8, ptr %lp.3.lcssa, i32 %dstoffset.4
  %44 = ptrtoint ptr %lv.0324 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %lv.0324, align 1
  %conv91 = zext i8 %45 to i16
  %46 = shl nuw i16 %conv91, 8
  %47 = ptrtoint ptr %add.ptr89 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %add.ptr89, align 2
  %48 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %length, align 1
  %conv94 = zext i8 %49 to i16
  %50 = shl nuw i16 %conv94, 8
  %length95 = getelementptr inbounds %struct.lvd, ptr %add.ptr89, i32 0, i32 1
  %51 = ptrtoint ptr %length95 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %length95, align 2
  %add96 = add nsw i32 %dstoffset.4, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %52 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %52)
  %cmp98 = icmp sgt i32 %52, 3
  br i1 %cmp98, label %do.end103, label %while.end.for.inc_crit_edge

while.end.for.inc_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end103:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %lv.0324 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %lv.0324, align 1
  %conv106 = zext i8 %54 to i32
  %55 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %length, align 1
  %conv108 = zext i8 %56 to i32
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %conv106, i32 noundef %conv108) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end103, %while.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %len.2 = phi i32 [ %len.1323, %for.body.for.inc_crit_edge ], [ %add88, %do.end103 ], [ %add88, %while.end.for.inc_crit_edge ]
  %dstoffset.5 = phi i32 [ %dstoffset.1326, %for.body.for.inc_crit_edge ], [ %add96, %do.end103 ], [ %add96, %while.end.for.inc_crit_edge ]
  %lp.4 = phi ptr [ %lp.1327, %for.body.for.inc_crit_edge ], [ %lp.3.lcssa, %do.end103 ], [ %lp.3.lcssa, %while.end.for.inc_crit_edge ]
  %bp.4 = phi ptr [ %bp.1328, %for.body.for.inc_crit_edge ], [ %bp.3.lcssa, %do.end103 ], [ %bp.3.lcssa, %while.end.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0322, 1
  %incdec.ptr = getelementptr %struct.lv, ptr %lv.0324, i32 1
  %57 = ptrtoint ptr %index341 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %index341, align 1
  %conv53 = sext i8 %58 to i32
  %cmp54 = icmp slt i32 %inc, %conv53
  br i1 %cmp54, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end50.for.end_crit_edge
  %len.1.lcssa = phi i32 [ %len.0336, %do.end50.for.end_crit_edge ], [ %len.2, %for.inc.for.end_crit_edge ]
  %dstoffset.1.lcssa = phi i32 [ %dstoffset.0338, %do.end50.for.end_crit_edge ], [ %dstoffset.5, %for.inc.for.end_crit_edge ]
  %lp.1.lcssa = phi ptr [ %lp.0339, %do.end50.for.end_crit_edge ], [ %lp.4, %for.inc.for.end_crit_edge ]
  %bp.1.lcssa = phi ptr [ %bp.0340, %do.end50.for.end_crit_edge ], [ %bp.4, %for.inc.for.end_crit_edge ]
  %59 = ptrtoint ptr %linelock.1337 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %linelock.1337, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool114.not = icmp eq i16 %60, 0
  br i1 %tobool114.not, label %for.end.moveLrd_crit_edge, label %if.then115

for.end.moveLrd_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %moveLrd

if.then115:                                       ; preds = %for.end
  %conv113 = zext i16 %60 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @TxLock to i32))
  %61 = load ptr, ptr @TxLock, align 4
  %arrayidx = getelementptr %struct.tlock, ptr %61, i32 %conv113
  %index = getelementptr inbounds %struct.linelock, ptr %arrayidx, i32 0, i32 2
  %62 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %index, align 1
  %maxcnt = getelementptr inbounds %struct.linelock, ptr %arrayidx, i32 0, i32 1
  %64 = ptrtoint ptr %maxcnt to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %maxcnt, align 2
  %cmp34.not = icmp sgt i8 %63, %65
  br i1 %cmp34.not, label %if.then115.do.end39_crit_edge, label %if.then115.do.end50_crit_edge

if.then115.do.end50_crit_edge:                    ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

if.then115.do.end39_crit_edge:                    ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

moveLrd:                                          ; preds = %for.end.moveLrd_crit_edge, %entry.moveLrd_crit_edge
  %len.3 = phi i32 [ 0, %entry.moveLrd_crit_edge ], [ %len.1.lcssa, %for.end.moveLrd_crit_edge ]
  %dstoffset.6 = phi i32 [ %5, %entry.moveLrd_crit_edge ], [ %dstoffset.1.lcssa, %for.end.moveLrd_crit_edge ]
  %lp.5 = phi ptr [ %3, %entry.moveLrd_crit_edge ], [ %lp.1.lcssa, %for.end.moveLrd_crit_edge ]
  %bp.5 = phi ptr [ %1, %entry.moveLrd_crit_edge ], [ %bp.1.lcssa, %for.end.moveLrd_crit_edge ]
  %conv117 = trunc i32 %len.3 to i16
  %66 = tail call i16 @llvm.bswap.i16(i16 %conv117)
  %length118 = getelementptr inbounds %struct.lrd, ptr %lrd, i32 0, i32 3
  %67 = ptrtoint ptr %length118 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %length118, align 2
  %page = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 11
  %type140 = getelementptr inbounds %struct.lrd, ptr %lrd, i32 0, i32 2
  %clsn = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 11
  %gclock = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 23
  %flag160 = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 1
  %bp162 = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 12
  %pn = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 13
  %eor165 = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 14
  %cqueue = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 10
  %cqueue166 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 19
  %prev.i = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 19, i32 1
  %prev3.i.i = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 10, i32 1
  br label %while.body122

while.body122:                                    ; preds = %pageFull.while.body122_crit_edge, %moveLrd
  %lsn.0347 = phi i32 [ 0, %moveLrd ], [ %lsn.1, %pageFull.while.body122_crit_edge ]
  %bp.6346 = phi ptr [ %bp.5, %moveLrd ], [ %107, %pageFull.while.body122_crit_edge ]
  %lp.6345 = phi ptr [ %lp.5, %moveLrd ], [ %109, %pageFull.while.body122_crit_edge ]
  %dstoffset.7344 = phi i32 [ %dstoffset.6, %moveLrd ], [ 8, %pageFull.while.body122_crit_edge ]
  %srclen.1343 = phi i32 [ 36, %moveLrd ], [ %sub133, %pageFull.while.body122_crit_edge ]
  %src.1342 = phi ptr [ %lrd, %moveLrd ], [ %add.ptr192, %pageFull.while.body122_crit_edge ]
  %sub123 = sub i32 4088, %dstoffset.7344
  %68 = tail call i32 @llvm.smin.i32(i32 %sub123, i32 %srclen.1343)
  %add.ptr131 = getelementptr i8, ptr %lp.6345, i32 %dstoffset.7344
  %69 = call ptr @memcpy(ptr %add.ptr131, ptr %src.1342, i32 %68)
  %add132 = add i32 %68, %dstoffset.7344
  %sub133 = sub i32 %srclen.1343, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub133)
  %tobool134.not = icmp eq i32 %sub133, 0
  br i1 %tobool134.not, label %if.end136, label %while.body122.pageFull_crit_edge

while.body122.pageFull_crit_edge:                 ; preds = %while.body122
  call void @__sanitizer_cov_trace_pc() #10
  br label %pageFull

if.end136:                                        ; preds = %while.body122
  %70 = ptrtoint ptr %eor to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add132, ptr %eor, align 4
  %l_eor = getelementptr inbounds %struct.lbuf, ptr %bp.6346, i32 0, i32 5
  %71 = ptrtoint ptr %l_eor to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add132, ptr %l_eor, align 4
  %72 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %page, align 8
  %shl138 = shl i32 %73, 12
  %add139 = add i32 %shl138, %add132
  %74 = ptrtoint ptr %type140 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %type140, align 4
  %76 = and i16 %75, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool143.not = icmp eq i16 %76, 0
  br i1 %tobool143.not, label %if.end136.do.body169_crit_edge, label %if.then144

if.end136.do.body169_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body169

if.then144:                                       ; preds = %if.end136
  %77 = ptrtoint ptr %clsn to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add139, ptr %clsn, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %78 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %78)
  %cmp146 = icmp sgt i32 %78, 3
  br i1 %cmp146, label %do.end151, label %if.then144.do.end158_crit_edge

if.then144.do.end158_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end158

do.end151:                                        ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %l_eor to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %l_eor, align 4
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %add139, i32 noundef %80) #11
  br label %do.end158

do.end158:                                        ; preds = %do.end151, %if.then144.do.end158_crit_edge
  %81 = load i32, ptr @lmStat.0, align 4
  %inc159 = add i32 %81, 1
  store i32 %inc159, ptr @lmStat.0, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %gclock) #8
  %82 = ptrtoint ptr %flag160 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 1, ptr %flag160, align 2
  %83 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bp1, align 8
  %85 = ptrtoint ptr %bp162 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %bp162, align 4
  %86 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %page, align 8
  %88 = ptrtoint ptr %pn to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %pn, align 4
  %89 = ptrtoint ptr %eor to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %eor, align 4
  %91 = ptrtoint ptr %eor165 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %eor165, align 4
  %92 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %cqueue, ptr noundef %93, ptr noundef %cqueue166) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.end158.list_add_tail.exit_crit_edge

do.end158.list_add_tail.exit_crit_edge:           ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %cqueue, ptr %prev.i, align 4
  %95 = ptrtoint ptr %cqueue to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %cqueue166, ptr %cqueue, align 4
  %96 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev3.i.i, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %cqueue, ptr %93, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end158.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %gclock) #8
  br label %do.body169

do.body169:                                       ; preds = %list_add_tail.exit, %if.end136.do.body169_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %98 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %98)
  %cmp170 = icmp sgt i32 %98, 3
  br i1 %cmp170, label %do.end175, label %do.body169.do.end184_crit_edge

do.body169.do.end184_crit_edge:                   ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end184

do.end175:                                        ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %type140 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %type140, align 4
  %101 = tail call i16 @llvm.bswap.i16(i16 %100)
  %conv178 = zext i16 %101 to i32
  %102 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bp1, align 8
  %104 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %page, align 8
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %conv178, ptr noundef %103, i32 noundef %105, i32 noundef %add132) #11
  br label %do.end184

do.end184:                                        ; preds = %do.end175, %do.body169.do.end184_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4088, i32 %add132)
  %cmp185 = icmp slt i32 %add132, 4088
  br i1 %cmp185, label %do.end184.cleanup_crit_edge, label %do.end184.pageFull_crit_edge

do.end184.pageFull_crit_edge:                     ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #10
  br label %pageFull

do.end184.cleanup_crit_edge:                      ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

pageFull:                                         ; preds = %do.end184.pageFull_crit_edge, %while.body122.pageFull_crit_edge
  %lsn.1 = phi i32 [ %lsn.0347, %while.body122.pageFull_crit_edge ], [ %add139, %do.end184.pageFull_crit_edge ]
  tail call fastcc void @lmNextPage(ptr noundef %log)
  %106 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %bp1, align 8
  %l_ldata191 = getelementptr inbounds %struct.lbuf, ptr %107, i32 0, i32 8
  %108 = ptrtoint ptr %l_ldata191 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %l_ldata191, align 8
  %add.ptr192 = getelementptr i8, ptr %src.1342, i32 %68
  %cmp120 = icmp sgt i32 %sub133, 0
  br i1 %cmp120, label %pageFull.while.body122_crit_edge, label %pageFull.cleanup_crit_edge

pageFull.cleanup_crit_edge:                       ; preds = %pageFull
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

pageFull.while.body122_crit_edge:                 ; preds = %pageFull
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body122

cleanup:                                          ; preds = %pageFull.cleanup_crit_edge, %do.end184.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ %lsn.1, %pageFull.cleanup_crit_edge ], [ %add139, %do.end184.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lmLogSync(ptr noundef %log, i32 noundef %hard_sync) unnamed_addr #0 align 64 {
entry:
  %lrd = alloca %struct.lrd, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %lrd) #8
  %0 = getelementptr inbounds i8, ptr %lrd, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hard_sync)
  %tobool.not = icmp eq i32 %hard_sync, 0
  %2 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn18.i141 = load ptr, ptr %log, align 4
  %cmp.not19.i142 = icmp eq ptr %.pn18.i141, %log
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp.not19.i142, label %if.then.if.end_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn20.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn18.i141, %if.then.for.body.i_crit_edge ]
  %ipbmap.i = getelementptr i8, ptr %.pn20.i, i32 -20
  %3 = ptrtoint ptr %ipbmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ipbmap.i, align 4
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_mapping.i, align 8
  %call.i = tail call i32 @filemap_fdatawrite(ptr noundef %6) #8, !callees !301
  %ipimap.i = getelementptr i8, ptr %.pn20.i, i32 -8
  %7 = ptrtoint ptr %ipimap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ipimap.i, align 4
  %i_mapping2.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %i_mapping2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_mapping2.i, align 8
  %call3.i = tail call i32 @filemap_fdatawrite(ptr noundef %10) #8, !callees !301
  %direct_inode.i = getelementptr i8, ptr %.pn20.i, i32 104
  %11 = ptrtoint ptr %direct_inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %direct_inode.i, align 4
  %i_mapping4.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %i_mapping4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_mapping4.i, align 8
  %call5.i = tail call i32 @filemap_fdatawrite(ptr noundef %14) #8, !callees !301
  %15 = ptrtoint ptr %.pn20.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i = load ptr, ptr %.pn20.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %log
  br i1 %cmp.not.i, label %for.body.i.if.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp.not19.i142, label %if.else.if.end_crit_edge, label %if.else.for.body.i155_crit_edge

if.else.for.body.i155_crit_edge:                  ; preds = %if.else
  br label %for.body.i155

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.i155:                                    ; preds = %for.body.i155.for.body.i155_crit_edge, %if.else.for.body.i155_crit_edge
  %.pn20.i143 = phi ptr [ %.pn.i153, %for.body.i155.for.body.i155_crit_edge ], [ %.pn18.i141, %if.else.for.body.i155_crit_edge ]
  %ipbmap.i144 = getelementptr i8, ptr %.pn20.i143, i32 -20
  %16 = ptrtoint ptr %ipbmap.i144 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ipbmap.i144, align 4
  %i_mapping.i145 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %i_mapping.i145 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_mapping.i145, align 8
  %call.i146 = tail call i32 @filemap_flush(ptr noundef %19) #8, !callees !301
  %ipimap.i147 = getelementptr i8, ptr %.pn20.i143, i32 -8
  %20 = ptrtoint ptr %ipimap.i147 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ipimap.i147, align 4
  %i_mapping2.i148 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %i_mapping2.i148 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_mapping2.i148, align 8
  %call3.i149 = tail call i32 @filemap_flush(ptr noundef %23) #8, !callees !301
  %direct_inode.i150 = getelementptr i8, ptr %.pn20.i143, i32 104
  %24 = ptrtoint ptr %direct_inode.i150 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %direct_inode.i150, align 4
  %i_mapping4.i151 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %i_mapping4.i151 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_mapping4.i151, align 8
  %call5.i152 = tail call i32 @filemap_flush(ptr noundef %27) #8, !callees !301
  %28 = ptrtoint ptr %.pn20.i143 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i153 = load ptr, ptr %.pn20.i143, align 4
  %cmp.not.i154 = icmp eq ptr %.pn.i153, %log
  br i1 %cmp.not.i154, label %for.body.i155.if.end_crit_edge, label %for.body.i155.for.body.i155_crit_edge

for.body.i155.for.body.i155_crit_edge:            ; preds = %for.body.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i155

for.body.i155.if.end_crit_edge:                   ; preds = %for.body.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %for.body.i155.if.end_crit_edge, %if.else.if.end_crit_edge, %for.body.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %sync = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 28
  %29 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sync, align 8
  %syncpt = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 27
  %31 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %syncpt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp = icmp eq i32 %30, %32
  br i1 %cmp, label %do.body2, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.body2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %synclock = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 30
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %synclock) #8
  %synclist = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 29
  %33 = ptrtoint ptr %synclist to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %synclist, align 4
  %cmp.i.not = icmp eq ptr %34, %synclist
  %lsn15 = getelementptr i8, ptr %34, i32 -4
  %lsn10 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 25
  %storemerge.in = select i1 %cmp.i.not, ptr %lsn10, ptr %lsn15
  %35 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %35)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %36 = ptrtoint ptr %sync to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %storemerge, ptr %sync, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %synclock, i32 noundef %call4) #8
  br label %if.end19

if.end19:                                         ; preds = %do.body2, %if.end.if.end19_crit_edge
  %37 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sync, align 8
  %39 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %syncpt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp22.not = icmp eq i32 %38, %40
  br i1 %cmp22.not, label %if.else31, label %if.then24

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %lrd to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %lrd, align 4
  %backchain = getelementptr inbounds %struct.lrd, ptr %lrd, i32 0, i32 1
  %42 = ptrtoint ptr %backchain to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %backchain, align 4
  %type = getelementptr inbounds %struct.lrd, ptr %lrd, i32 0, i32 2
  %43 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 64, ptr %type, align 4
  %length = getelementptr inbounds %struct.lrd, ptr %lrd, i32 0, i32 3
  %44 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %length, align 2
  %45 = tail call i32 @llvm.bswap.i32(i32 %38)
  %log26 = getelementptr inbounds %struct.lrd, ptr %lrd, i32 0, i32 5
  %46 = ptrtoint ptr %log26 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %log26, align 4
  %call28 = call fastcc i32 @lmWriteRecord(ptr noundef %log, ptr noundef null, ptr noundef nonnull %lrd, ptr noundef null)
  %47 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sync, align 8
  %49 = ptrtoint ptr %syncpt to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %syncpt, align 4
  br label %if.end33

if.else31:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %lsn32 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 25
  %50 = ptrtoint ptr %lsn32 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lsn32, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.then24
  %lsn.0 = phi i32 [ %call28, %if.then24 ], [ %51, %if.else31 ]
  %logsize34 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 24
  %52 = ptrtoint ptr %logsize34 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %logsize34, align 8
  %54 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %syncpt, align 4
  %sub = sub i32 %lsn.0, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp36 = icmp slt i32 %sub, 0
  %add = select i1 %cmp36, i32 %53, i32 0
  %spec.select = add i32 %add, %sub
  %sub41 = sub i32 %53, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %53)
  %cmp43 = icmp slt i32 %53, 4194304
  %div = sdiv i32 %53, 8
  %cond = select i1 %cmp43, i32 %div, i32 524288
  %div45 = sdiv i32 %sub41, 2
  %56 = tail call i32 @llvm.smin.i32(i32 %div45, i32 %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %56)
  %cmp53 = icmp slt i32 %56, 8192
  br i1 %cmp53, label %do.body56, label %if.else70

do.body56:                                        ; preds = %if.end33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %57 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp57 = icmp sgt i32 %57, 1
  br i1 %cmp57, label %do.end62, label %do.body56.do.end67_crit_edge

do.body56.do.end67_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

do.end62:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #10
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #11
  br label %do.end67

do.end67:                                         ; preds = %do.end62, %do.body56.do.end67_crit_edge
  %58 = ptrtoint ptr %sync to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %lsn.0, ptr %sync, align 8
  %59 = ptrtoint ptr %syncpt to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %lsn.0, ptr %syncpt, align 4
  br label %if.end73

if.else70:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %add71 = add i32 %56, %spec.select
  br label %if.end73

if.end73:                                         ; preds = %if.else70, %do.end67
  %add71.sink = phi i32 [ %add71, %if.else70 ], [ %cond, %do.end67 ]
  %nextsync72 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 15
  %60 = ptrtoint ptr %nextsync72 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add71.sink, ptr %nextsync72, align 8
  %flag = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 7
  %61 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %flag, align 4
  %63 = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool75.not = icmp eq i32 %63, 0
  %div76 = sdiv i32 %53, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %div76)
  %cmp77 = icmp sgt i32 %spec.select, %div76
  %or.cond = select i1 %tobool75.not, i1 %cmp77, i1 false
  br i1 %or.cond, label %land.lhs.true79, label %if.end73.if.end96_crit_edge

if.end73.if.end96_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

land.lhs.true79:                                  ; preds = %if.end73
  %active = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 16
  %64 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool80.not = icmp eq i32 %65, 0
  br i1 %tobool80.not, label %land.lhs.true79.if.end96_crit_edge, label %if.then81

land.lhs.true79.if.end96_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then81:                                        ; preds = %land.lhs.true79
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flag) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %66 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %cmp84 = icmp sgt i32 %66, 3
  br i1 %cmp84, label %do.end89, label %if.then81.do.end95_crit_edge

if.then81.do.end95_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end95

do.end89:                                         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %syncpt, align 4
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %lsn.0, i32 noundef %68) #11
  br label %do.end95

do.end95:                                         ; preds = %do.end89, %if.then81.do.end95_crit_edge
  tail call void @jfs_flush_journal(ptr noundef %log, i32 noundef 0)
  br label %if.end96

if.end96:                                         ; preds = %do.end95, %land.lhs.true79.if.end96_crit_edge, %if.end73.if.end96_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %lrd) #8
  ret i32 %lsn.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lmGroupCommit(ptr noundef %log, ptr noundef %tblk) #0 align 64 {
entry:
  %__wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gclock = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 23
  tail call void @_raw_spin_lock_irq(ptr noundef %gclock) #8
  %flag = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 1
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flag, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and3 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 -5
  tail call void @_raw_spin_unlock_irq(ptr noundef %gclock) #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %2 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp sgt i32 %2, 3
  br i1 %cmp, label %do.end, label %do.body.do.end13_crit_edge

do.body.do.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %gcrtc = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 21
  %3 = ptrtoint ptr %gcrtc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gcrtc, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %tblk, i32 noundef %4) #11
  br label %do.end13

do.end13:                                         ; preds = %do.end, %do.body.do.end13_crit_edge
  %5 = ptrtoint ptr %tblk to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tblk, align 4
  %7 = and i16 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool16.not = icmp eq i16 %7, 0
  br i1 %tobool16.not, label %do.end13.if.end21_crit_edge, label %if.then17

do.end13.if.end21_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then17:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flag, align 2
  %10 = or i16 %9, 256
  store i16 %10, ptr %flag, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %do.end13.if.end21_crit_edge
  %cflag = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 18
  %11 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cflag, align 4
  %and22 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %land.lhs.true, label %if.end21.if.end39_crit_edge

if.end21.if.end39_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end21
  %cqueue = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 19
  %13 = ptrtoint ptr %cqueue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %cqueue, align 4
  %cmp.i = icmp eq ptr %14, %cqueue
  br i1 %cmp.i, label %land.lhs.true.if.end39_crit_edge, label %land.lhs.true26

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

land.lhs.true26:                                  ; preds = %land.lhs.true
  br i1 %tobool16.not, label %land.lhs.true26.if.end.i.preheader_crit_edge, label %lor.lhs.false

land.lhs.true26.if.end.i.preheader_crit_edge:     ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.preheader

lor.lhs.false:                                    ; preds = %land.lhs.true26
  %flag31 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 7
  %15 = ptrtoint ptr %flag31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flag31, align 4
  %17 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool33.not = icmp eq i32 %17, 0
  br i1 %tobool33.not, label %lor.lhs.false34, label %lor.lhs.false.if.end.i.preheader_crit_edge

lor.lhs.false.if.end.i.preheader_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.preheader

lor.lhs.false34:                                  ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfs_tlocks_low to i32))
  %18 = load i32, ptr @jfs_tlocks_low, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool35.not = icmp eq i32 %18, 0
  br i1 %tobool35.not, label %lor.lhs.false34.if.end39_crit_edge, label %lor.lhs.false34.if.end.i.preheader_crit_edge

lor.lhs.false34.if.end.i.preheader_crit_edge:     ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.preheader

lor.lhs.false34.if.end39_crit_edge:               ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.end.i.preheader:                               ; preds = %lor.lhs.false34.if.end.i.preheader_crit_edge, %lor.lhs.false.if.end.i.preheader_crit_edge, %land.lhs.true26.if.end.i.preheader_crit_edge
  %or38 = or i32 %12, 1
  %19 = ptrtoint ptr %cflag to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or38, ptr %cflag, align 4
  %pn.i = getelementptr i8, ptr %14, i32 16
  %20 = ptrtoint ptr %pn.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pn.i, align 4
  br label %if.end.i

for.body.i:                                       ; preds = %if.end.i
  %pn8.i = getelementptr i8, ptr %28, i32 16
  %22 = ptrtoint ptr %pn8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pn8.i, align 4
  %cmp9.not.i = icmp eq i32 %23, %21
  br i1 %cmp9.not.i, label %for.body.i.if.end.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %if.end.i.preheader
  %.pn6878.i = phi ptr [ %28, %for.body.i.if.end.i_crit_edge ], [ %14, %if.end.i.preheader ]
  %flag.i = getelementptr i8, ptr %.pn6878.i, i32 -82
  %24 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flag.i, align 2
  %26 = or i16 %25, 4
  store i16 %26, ptr %flag.i, align 2
  %27 = ptrtoint ptr %.pn6878.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.pn6878.i, align 4
  %cmp.not.i = icmp eq ptr %28, %cqueue
  br i1 %cmp.not.i, label %if.end.i.for.end.i_crit_edge, label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %bp16.i = getelementptr i8, ptr %.pn6878.i, i32 12
  %29 = ptrtoint ptr %bp16.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bp16.i, align 4
  %l_ldata.i = getelementptr inbounds %struct.lbuf, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %l_ldata.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %l_ldata.i, align 8
  %flag17.i = getelementptr i8, ptr %.pn6878.i, i32 -82
  %33 = ptrtoint ptr %flag17.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flag17.i, align 2
  %35 = and i16 %34, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool.not.i = icmp eq i16 %35, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then19.i

if.then19.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %and22.i = and i16 %34, -49
  %36 = or i16 %and22.i, 32
  %37 = ptrtoint ptr %flag17.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %flag17.i, align 2
  %l_eor.i = getelementptr inbounds %struct.lbuf, ptr %30, i32 0, i32 5
  br label %lmGCwrite.exit

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %eor31.i = getelementptr i8, ptr %.pn6878.i, i32 20
  br label %lmGCwrite.exit

lmGCwrite.exit:                                   ; preds = %if.else.i, %if.then19.i
  %eor31.sink.i = phi ptr [ %eor31.i, %if.else.i ], [ %l_eor.i, %if.then19.i ]
  %.sink.i = phi i32 [ 130, %if.else.i ], [ 134, %if.then19.i ]
  %lmStat.4.sink71.i = phi ptr [ @lmStat.4, %if.else.i ], [ @lmStat.3, %if.then19.i ]
  %38 = ptrtoint ptr %eor31.sink.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %eor31.sink.i, align 4
  %l_ceor32.i = getelementptr inbounds %struct.lbuf, ptr %30, i32 0, i32 6
  %40 = ptrtoint ptr %l_ceor32.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %l_ceor32.i, align 8
  %conv34.i = trunc i32 %39 to i16
  %41 = tail call i16 @llvm.bswap.i16(i16 %conv34.i) #8
  %eor36.i = getelementptr inbounds %struct.logpage, ptr %32, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %eor36.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %eor36.i, align 2
  %eor38.i = getelementptr inbounds %struct.anon.88, ptr %32, i32 0, i32 2
  %43 = ptrtoint ptr %eor38.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %41, ptr %eor38.i, align 2
  tail call fastcc void @lbmWrite(ptr noundef %log, ptr noundef %30, i32 noundef %.sink.i, i32 noundef 0) #8
  %44 = ptrtoint ptr %lmStat.4.sink71.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lmStat.4.sink71.i, align 4
  %inc39.i = add i32 %45, 1
  store i32 %inc39.i, ptr %lmStat.4.sink71.i, align 4
  br label %if.end39

if.end39:                                         ; preds = %lmGCwrite.exit, %lor.lhs.false34.if.end39_crit_edge, %land.lhs.true.if.end39_crit_edge, %if.end21.if.end39_crit_edge
  %46 = ptrtoint ptr %tblk to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %tblk, align 4
  %48 = and i16 %47, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool43.not = icmp eq i16 %48, 0
  br i1 %tobool43.not, label %if.end46, label %if.then44

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %gclock) #8
  br label %cleanup

if.end46:                                         ; preds = %if.end39
  %49 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %flag, align 2
  %conv48 = zext i16 %50 to i32
  %and49 = and i32 %conv48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end59, label %if.then51

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %and54 = and i32 %conv48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %spec.select259 = select i1 %tobool55.not, i32 0, i32 -5
  tail call void @_raw_spin_unlock_irq(ptr noundef %gclock) #8
  br label %cleanup

if.end59:                                         ; preds = %if.end46
  %gcrtc60 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 21
  %51 = ptrtoint ptr %gcrtc60 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %gcrtc60, align 4
  %inc = add i32 %52, 1
  store i32 %inc, ptr %gcrtc60, align 4
  %53 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %flag, align 2
  %55 = or i16 %54, 2
  store i16 %55, ptr %flag, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait) #8
  %56 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 1
  %57 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 2
  %58 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3
  %59 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, i32 1
  %60 = ptrtoint ptr %__wait to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %__wait, align 4
  %61 = tail call i32 @llvm.read_register.i32(metadata !290) #8
  %and.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task, align 8
  %65 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %56, align 4
  %66 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @default_wake_function, ptr %57, align 4
  %67 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %58, align 4
  %68 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %59, align 4
  %gcwait = getelementptr inbounds %struct.tblock, ptr %tblk, i32 0, i32 15
  call void @add_wait_queue(ptr noundef %gcwait, ptr noundef nonnull %__wait) #8
  br label %__here

__here:                                           ; preds = %if.end142, %if.end59
  %69 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 212
  %71 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 ptrtoint (ptr blockaddress(@lmGroupCommit, %__here) to i32), ptr %task_state_change, align 4
  %72 = load ptr, ptr %task, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 2, ptr %72, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !302
  %74 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %flag, align 2
  %76 = and i16 %75, 8
  %tobool140.not = icmp eq i16 %76, 0
  br i1 %tobool140.not, label %if.end142, label %__here196

if.end142:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irq(ptr noundef %gclock) #8
  call void @io_schedule() #8
  call void @_raw_spin_lock_irq(ptr noundef %gclock) #8
  br label %__here

__here196:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %task, align 8
  %task_state_change200 = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 212
  %79 = ptrtoint ptr %task_state_change200 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 ptrtoint (ptr blockaddress(@lmGroupCommit, %__here196) to i32), ptr %task_state_change200, align 4
  %80 = load ptr, ptr %task, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 0, ptr %80, align 128
  call void @remove_wait_queue(ptr noundef %gcwait, ptr noundef nonnull %__wait) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait) #8
  %82 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %flag, align 2
  %84 = and i16 %83, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool223.not = icmp eq i16 %84, 0
  %spec.select260 = select i1 %tobool223.not, i32 0, i32 -5
  call void @_raw_spin_unlock_irq(ptr noundef %gclock) #8
  br label %cleanup

cleanup:                                          ; preds = %__here196, %if.then51, %if.then44, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ 0, %if.then44 ], [ %spec.select259, %if.then51 ], [ %spec.select260, %__here196 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jfs_syncpt(ptr noundef %log, i32 noundef %hard_sync) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %loglock = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %loglock, i32 noundef 0) #8
  %flag = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 7
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flag, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc i32 @lmLogSync(ptr noundef %log, i32 noundef %hard_sync)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %loglock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lmLogOpen(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %flag = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flag, align 4
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @jfs_log_mutex, i32 noundef 0) #8
  %4 = load ptr, ptr @dummy_log, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end7.i_crit_edge

if.then.if.end7.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then.i:                                        ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 440) #12
  store ptr %call7.i.i.i, ptr @dummy_log, align 4
  %tobool1.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool1.not.i, label %if.then.i.open_dummy_log.exit_crit_edge, label %if.end.i

if.then.i.open_dummy_log.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %open_dummy_log.exit

if.end.i:                                         ; preds = %if.then.i
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %syncwait.i = getelementptr inbounds %struct.jfs_log, ptr %call7.i.i.i, i32 0, i32 17
  tail call void @__init_waitqueue_head(ptr noundef %syncwait.i, ptr noundef nonnull @.str.99, ptr noundef nonnull @open_dummy_log.__key) #8
  %8 = load ptr, ptr @dummy_log, align 4
  %no_integrity.i = getelementptr inbounds %struct.jfs_log, ptr %8, i32 0, i32 34
  %9 = ptrtoint ptr %no_integrity.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %no_integrity.i, align 8
  %base.i = getelementptr inbounds %struct.jfs_log, ptr %8, i32 0, i32 4
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %base.i, align 8
  %size.i = getelementptr inbounds %struct.jfs_log, ptr %8, i32 0, i32 5
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1024, ptr %size.i, align 8
  %call3.i = tail call i32 @lmLogInit(ptr noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = load ptr, ptr @dummy_log, align 4
  tail call void @kfree(ptr noundef %12) #8
  store ptr null, ptr @dummy_log, align 4
  br label %open_dummy_log.exit

if.end7.i:                                        ; preds = %if.end.i.if.end7.i_crit_edge, %if.then.if.end7.i_crit_edge
  %13 = load ptr, ptr @dummy_log, align 4
  %loglock.i = getelementptr inbounds %struct.jfs_log, ptr %13, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %loglock.i, i32 noundef 0) #8
  %14 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i, align 16
  %log_list.i = getelementptr inbounds %struct.jfs_sb_info, ptr %15, i32 0, i32 7
  %16 = load ptr, ptr @dummy_log, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %log_list.i, ptr noundef %16, ptr noundef %18) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end7.i.list_add.exit.i_crit_edge

if.end7.i.list_add.exit.i_crit_edge:              ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %log_list.i, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %log_list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %log_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.jfs_sb_info, ptr %15, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %16, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %log_list.i, ptr %16, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end7.i.list_add.exit.i_crit_edge
  %23 = load ptr, ptr @dummy_log, align 4
  %24 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i, align 16
  %log.i = getelementptr inbounds %struct.jfs_sb_info, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %log.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %log.i, align 4
  %loglock11.i = getelementptr inbounds %struct.jfs_log, ptr %23, i32 0, i32 14
  tail call void @mutex_unlock(ptr noundef %loglock11.i) #8
  br label %open_dummy_log.exit

open_dummy_log.exit:                              ; preds = %list_add.exit.i, %if.then5.i, %if.then.i.open_dummy_log.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %list_add.exit.i ], [ %call3.i, %if.then5.i ], [ -12, %if.then.i.open_dummy_log.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @jfs_log_mutex) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mntflag = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %mntflag to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mntflag, align 4
  %and2 = and i32 %28, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i108 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 440) #12
  %tobool.not.i109 = icmp eq ptr %call7.i.i.i108, null
  br i1 %tobool.not.i109, label %if.then4.cleanup_crit_edge, label %if.end.i115

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i115:                                      ; preds = %if.then4
  %30 = ptrtoint ptr %call7.i.i.i108 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call7.i.i.i108, ptr %call7.i.i.i108, align 8
  %prev.i.i110 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i108, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i110 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i.i108, ptr %prev.i.i110, align 4
  %syncwait.i111 = getelementptr inbounds %struct.jfs_log, ptr %call7.i.i.i108, i32 0, i32 17
  tail call void @__init_waitqueue_head(ptr noundef %syncwait.i111, ptr noundef nonnull @.str.8, ptr noundef nonnull @open_inline_log.__key) #8
  %flag.i = getelementptr inbounds %struct.jfs_log, ptr %call7.i.i.i108, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flag.i) #8
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %32 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_bdev.i, align 4
  %bdev.i = getelementptr inbounds %struct.jfs_log, ptr %call7.i.i.i108, i32 0, i32 2
  %34 = ptrtoint ptr %bdev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %bdev.i, align 8
  %35 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info.i, align 16
  %logpxd.i = getelementptr inbounds %struct.jfs_sb_info, ptr %36, i32 0, i32 15
  %37 = ptrtoint ptr %logpxd.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %logpxd.i, align 4
  %39 = shl i32 %38, 24
  %conv.i.i = zext i32 %39 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 8
  %addr2.i.i = getelementptr inbounds %struct.jfs_sb_info, ptr %36, i32 0, i32 15, i32 1
  %40 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr2.i.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #8
  %conv1.i.i = zext i32 %42 to i64
  %add.i.i = or i64 %shl.i.i, %conv1.i.i
  %base.i113 = getelementptr inbounds %struct.jfs_log, ptr %call7.i.i.i108, i32 0, i32 4
  %43 = ptrtoint ptr %base.i113 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %add.i.i, ptr %base.i113, align 8
  %44 = ptrtoint ptr %logpxd.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %logpxd.i, align 4
  %46 = and i32 %45, -256
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %48 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %49 to i32
  %sub.i = sub nsw i32 12, %conv.i
  %shr.i = lshr i32 %47, %sub.i
  %size.i114 = getelementptr inbounds %struct.jfs_log, ptr %call7.i.i.i108, i32 0, i32 5
  %50 = ptrtoint ptr %size.i114 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %shr.i, ptr %size.i114, align 8
  %l2bsize.i = getelementptr inbounds %struct.jfs_log, ptr %call7.i.i.i108, i32 0, i32 6
  %51 = ptrtoint ptr %l2bsize.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv.i, ptr %l2bsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %49)
  %cmp.i = icmp ult i8 %49, 13
  br i1 %cmp.i, label %do.end25.i, label %do.end15.i

do.end15.i:                                       ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 1178, ptr noundef nonnull @.str.96) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_logmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1178, 0\0A.popsection", ""() #8, !srcloc !303
  unreachable

do.end25.i:                                       ; preds = %if.end.i115
  %call26.i = tail call i32 @lmLogInit(ptr noundef nonnull %call7.i.i.i108) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end41.i, label %if.then28.i

if.then28.i:                                      ; preds = %do.end25.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i108) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %52 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp30.i = icmp sgt i32 %52, 1
  br i1 %cmp30.i, label %do.end35.i, label %if.then28.i.cleanup_crit_edge

if.then28.i.cleanup_crit_edge:                    ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end35.i:                                       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call26.i) #11
  br label %cleanup

if.end41.i:                                       ; preds = %do.end25.i
  %53 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_fs_info.i, align 16
  %log_list.i116 = getelementptr inbounds %struct.jfs_sb_info, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %call7.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call7.i.i.i108, align 8
  %call.i.i.i117 = tail call zeroext i1 @__list_add_valid(ptr noundef %log_list.i116, ptr noundef nonnull %call7.i.i.i108, ptr noundef %56) #8
  br i1 %call.i.i.i117, label %if.end.i.i.i120, label %if.end41.i.list_add.exit.i121_crit_edge

if.end41.i.list_add.exit.i121_crit_edge:          ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit.i121

if.end.i.i.i120:                                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i118 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i118 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %log_list.i116, ptr %prev1.i.i.i118, align 4
  %58 = ptrtoint ptr %log_list.i116 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %56, ptr %log_list.i116, align 4
  %prev3.i.i.i119 = getelementptr inbounds %struct.jfs_sb_info, ptr %54, i32 0, i32 7, i32 1
  %59 = ptrtoint ptr %prev3.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i.i.i108, ptr %prev3.i.i.i119, align 4
  %60 = ptrtoint ptr %call7.i.i.i108 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %log_list.i116, ptr %call7.i.i.i108, align 8
  br label %list_add.exit.i121

list_add.exit.i121:                               ; preds = %if.end.i.i.i120, %if.end41.i.list_add.exit.i121_crit_edge
  %61 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info.i, align 16
  %log45.i = getelementptr inbounds %struct.jfs_sb_info, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %log45.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i.i108, ptr %log45.i, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @jfs_log_mutex, i32 noundef 0) #8
  %logdev = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 13
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end6
  %.pn.in = phi ptr [ @jfs_external_logs, %if.end6 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %64 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @jfs_external_logs
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %bdev7 = getelementptr i8, ptr %.pn, i32 8
  %65 = ptrtoint ptr %bdev7 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bdev7, align 8
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bd_dev, align 4
  %69 = ptrtoint ptr %logdev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %logdev, align 4
  %cmp8 = icmp eq i32 %68, %70
  br i1 %cmp8, label %if.then9, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then9:                                         ; preds = %for.body
  %uuid = getelementptr i8, ptr %.pn, i32 408
  %loguuid = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 19
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %uuid, ptr noundef dereferenceable(16) %loguuid, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i123 = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i123, label %if.end20, label %do.body

do.body:                                          ; preds = %if.then9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %71 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp12 = icmp sgt i32 %71, 1
  br i1 %cmp12, label %do.end, label %do.body.do.end19_crit_edge

do.body.do.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  br label %do.end19

do.end19:                                         ; preds = %do.end, %do.body.do.end19_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @jfs_log_mutex) #8
  br label %cleanup

if.end20:                                         ; preds = %if.then9
  %log.0.le = getelementptr i8, ptr %.pn, i32 -8
  %call21 = tail call fastcc i32 @lmLogFileSystem(ptr noundef %log.0.le, ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.journal_found_crit_edge, label %if.then23

if.end20.journal_found_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_found

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef nonnull @jfs_log_mutex) #8
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %72 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %72, i32 noundef 3520, i32 noundef 440) #12
  %tobool31.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef nonnull @jfs_log_mutex) #8
  br label %cleanup

if.end33:                                         ; preds = %for.end
  %73 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %syncwait = getelementptr inbounds %struct.jfs_log, ptr %call7.i.i, i32 0, i32 17
  tail call void @__init_waitqueue_head(ptr noundef %syncwait, ptr noundef nonnull @.str.8, ptr noundef nonnull @lmLogOpen.__key) #8
  %75 = ptrtoint ptr %logdev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %logdev, align 4
  %call38 = tail call ptr @blkdev_get_by_dev(i32 noundef %76, i32 noundef 131, ptr noundef nonnull %call7.i.i) #8
  %cmp.i124 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %call38 to i32
  br label %free

if.end42:                                         ; preds = %if.end33
  %bdev43 = getelementptr inbounds %struct.jfs_log, ptr %call7.i.i, i32 0, i32 2
  %78 = ptrtoint ptr %bdev43 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call38, ptr %bdev43, align 8
  %uuid44 = getelementptr inbounds %struct.jfs_log, ptr %call7.i.i, i32 0, i32 33
  %loguuid45 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 19
  %79 = call ptr @memcpy(ptr %uuid44, ptr %loguuid45, i32 16)
  %call46 = tail call i32 @lmLogInit(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end42.close_crit_edge

if.end42.close_crit_edge:                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %close

if.end49:                                         ; preds = %if.end42
  %journal_list50 = getelementptr inbounds %struct.jfs_log, ptr %call7.i.i, i32 0, i32 1
  %80 = load ptr, ptr @jfs_external_logs, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %journal_list50, ptr noundef nonnull @jfs_external_logs, ptr noundef %80) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end49.list_add.exit_crit_edge

if.end49.list_add.exit_crit_edge:                 ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %journal_list50, ptr %prev1.i.i, align 4
  %82 = ptrtoint ptr %journal_list50 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %80, ptr %journal_list50, align 8
  %prev3.i.i = getelementptr inbounds %struct.jfs_log, ptr %call7.i.i, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @jfs_external_logs, ptr %prev3.i.i, align 4
  store volatile ptr %journal_list50, ptr @jfs_external_logs, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end49.list_add.exit_crit_edge
  %call51 = tail call fastcc i32 @lmLogFileSystem(ptr noundef nonnull %call7.i.i, ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %list_add.exit.journal_found_crit_edge, label %shutdown

list_add.exit.journal_found_crit_edge:            ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %journal_found

journal_found:                                    ; preds = %list_add.exit.journal_found_crit_edge, %if.end20.journal_found_crit_edge
  %log.1 = phi ptr [ %log.0.le, %if.end20.journal_found_crit_edge ], [ %call7.i.i, %list_add.exit.journal_found_crit_edge ]
  %loglock = getelementptr inbounds %struct.jfs_log, ptr %log.1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %loglock, i32 noundef 0) #8
  %log_list = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 7
  %84 = ptrtoint ptr %log.1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %log.1, align 4
  %call.i.i125 = tail call zeroext i1 @__list_add_valid(ptr noundef %log_list, ptr noundef %log.1, ptr noundef %85) #8
  br i1 %call.i.i125, label %if.end.i.i128, label %journal_found.list_add.exit129_crit_edge

journal_found.list_add.exit129_crit_edge:         ; preds = %journal_found
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit129

if.end.i.i128:                                    ; preds = %journal_found
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i126 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %prev1.i.i126 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %log_list, ptr %prev1.i.i126, align 4
  %87 = ptrtoint ptr %log_list to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %85, ptr %log_list, align 4
  %prev3.i.i127 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 7, i32 1
  %88 = ptrtoint ptr %prev3.i.i127 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %log.1, ptr %prev3.i.i127, align 4
  %89 = ptrtoint ptr %log.1 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %log_list, ptr %log.1, align 4
  br label %list_add.exit129

list_add.exit129:                                 ; preds = %if.end.i.i128, %journal_found.list_add.exit129_crit_edge
  %log56 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 6
  %90 = ptrtoint ptr %log56 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %log.1, ptr %log56, align 4
  tail call void @mutex_unlock(ptr noundef %loglock) #8
  tail call void @mutex_unlock(ptr noundef nonnull @jfs_log_mutex) #8
  br label %cleanup

shutdown:                                         ; preds = %list_add.exit
  %call.i.i130 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %journal_list50) #8
  br i1 %call.i.i130, label %if.end.i.i133, label %shutdown.list_del.exit_crit_edge

shutdown.list_del.exit_crit_edge:                 ; preds = %shutdown
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i133:                                    ; preds = %shutdown
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i131 = getelementptr inbounds %struct.jfs_log, ptr %call7.i.i, i32 0, i32 1, i32 1
  %91 = ptrtoint ptr %prev.i.i131 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev.i.i131, align 4
  %93 = ptrtoint ptr %journal_list50 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %journal_list50, align 8
  %prev1.i.i.i132 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %prev1.i.i.i132 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %92, ptr %prev1.i.i.i132, align 4
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %94, ptr %92, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i133, %shutdown.list_del.exit_crit_edge
  %97 = ptrtoint ptr %journal_list50 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr inttoptr (i32 256 to ptr), ptr %journal_list50, align 8
  %prev.i134 = getelementptr inbounds %struct.jfs_log, ptr %call7.i.i, i32 0, i32 1, i32 1
  %98 = ptrtoint ptr %prev.i134 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i134, align 4
  tail call fastcc void @lbmLogShutdown(ptr noundef nonnull %call7.i.i)
  br label %close

close:                                            ; preds = %list_del.exit, %if.end42.close_crit_edge
  %rc.0 = phi i32 [ %call46, %if.end42.close_crit_edge ], [ %call51, %list_del.exit ]
  tail call void @blkdev_put(ptr noundef %call38, i32 noundef 131) #8
  br label %free

free:                                             ; preds = %close, %if.then40
  %rc.1 = phi i32 [ %77, %if.then40 ], [ %rc.0, %close ]
  tail call void @mutex_unlock(ptr noundef nonnull @jfs_log_mutex) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %99 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp60 = icmp sgt i32 %99, 1
  br i1 %cmp60, label %do.end64, label %free.cleanup_crit_edge

free.cleanup_crit_edge:                           ; preds = %free
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end64:                                         ; preds = %free
  call void @__sanitizer_cov_trace_pc() #10
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %rc.1) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %free.cleanup_crit_edge, %list_add.exit129, %if.then32, %if.then23, %do.end19, %list_add.exit.i121, %do.end35.i, %if.then28.i.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %open_dummy_log.exit
  %retval.0 = phi i32 [ %retval.0.i, %open_dummy_log.exit ], [ %call21, %if.then23 ], [ 0, %list_add.exit129 ], [ -22, %do.end19 ], [ -12, %if.then32 ], [ %rc.1, %do.end64 ], [ %rc.1, %free.cleanup_crit_edge ], [ 0, %list_add.exit.i121 ], [ -12, %if.then4.cleanup_crit_edge ], [ %call26.i, %do.end35.i ], [ %call26.i, %if.then28.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lmLogFileSystem(ptr noundef %log, ptr nocapture noundef %sbi, i32 noundef %activate) unnamed_addr #0 align 64 {
entry:
  %bpsuper = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bpsuper) #8
  %0 = ptrtoint ptr %bpsuper to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bpsuper, align 4, !annotation !304
  %uuid1 = getelementptr inbounds %struct.jfs_sb_info, ptr %sbi, i32 0, i32 18
  call fastcc void @lbmRead(ptr noundef %log, i32 noundef 1, ptr noundef nonnull %bpsuper)
  %1 = ptrtoint ptr %bpsuper to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bpsuper, align 4
  %l_ldata = getelementptr inbounds %struct.lbuf, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %l_ldata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %l_ldata, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %activate)
  %tobool2.not = icmp eq i32 %activate, 0
  br i1 %tobool2.not, label %entry.for.body23_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.body23_crit_edge:                       ; preds = %entry
  br label %for.body23

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.088 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.logsuper, ptr %4, i32 0, i32 11, i32 %i.088
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %arrayidx, ptr noundef nonnull dereferenceable(16) @uuid_null, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %for.end.thread, label %for.inc

for.end.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = call ptr @memcpy(ptr %arrayidx, ptr %uuid1, i32 16)
  %aggregate = getelementptr inbounds %struct.jfs_sb_info, ptr %sbi, i32 0, i32 14
  %6 = ptrtoint ptr %aggregate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %i.088, ptr %aggregate, align 4
  br label %if.end50

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %do.body, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body:                                          ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %7 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp13 = icmp sgt i32 %7, 1
  br i1 %cmp13, label %do.end, label %do.body.do.end19_crit_edge

do.body.do.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #11
  br label %do.end19

do.end19:                                         ; preds = %do.end, %do.body.do.end19_crit_edge
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @jfsLCacheLock) #8
  %l_wqnext.i.i = getelementptr inbounds %struct.lbuf, ptr %2, i32 0, i32 2
  %8 = ptrtoint ptr %l_wqnext.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %l_wqnext.i.i, align 8
  %cmp.i.i73 = icmp eq ptr %9, null
  br i1 %cmp.i.i73, label %lbmFree.exit, label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 1930, ptr noundef nonnull @.str.117) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_logmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1930, 0\0A.popsection", ""() #8, !srcloc !305
  unreachable

lbmFree.exit:                                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 8
  %lbuf_free.i.i = getelementptr inbounds %struct.jfs_log, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %lbuf_free.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lbuf_free.i.i, align 4
  %l_freelist.i.i = getelementptr inbounds %struct.lbuf, ptr %2, i32 0, i32 3
  %14 = ptrtoint ptr %l_freelist.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %l_freelist.i.i, align 4
  store ptr %2, ptr %lbuf_free.i.i, align 4
  %free_wait.i.i = getelementptr inbounds %struct.jfs_log, ptr %11, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %free_wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @jfsLCacheLock, i32 noundef %call2.i) #8
  br label %cleanup

for.body23:                                       ; preds = %for.inc33.for.body23_crit_edge, %entry.for.body23_crit_edge
  %i.189 = phi i32 [ %inc34, %for.inc33.for.body23_crit_edge ], [ 0, %entry.for.body23_crit_edge ]
  %arrayidx25 = getelementptr %struct.logsuper, ptr %4, i32 0, i32 11, i32 %i.189
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %arrayidx25, ptr noundef dereferenceable(16) %uuid1, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %for.end35.thread, label %for.inc33

for.end35.thread:                                 ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #10
  %15 = call ptr @memcpy(ptr %arrayidx25, ptr @uuid_null, i32 16)
  br label %if.end50

for.inc33:                                        ; preds = %for.body23
  %inc34 = add nuw nsw i32 %i.189, 1
  %exitcond93.not = icmp eq i32 %inc34, 128
  br i1 %exitcond93.not, label %do.body38, label %for.inc33.for.body23_crit_edge

for.inc33.for.body23_crit_edge:                   ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body23

do.body38:                                        ; preds = %for.inc33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %16 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp39 = icmp sgt i32 %16, 1
  br i1 %cmp39, label %do.end43, label %do.body38.do.end48_crit_edge

do.body38.do.end48_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

do.end43:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #11
  br label %do.end48

do.end48:                                         ; preds = %do.end43, %do.body38.do.end48_crit_edge
  %call2.i74 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @jfsLCacheLock) #8
  %l_wqnext.i.i75 = getelementptr inbounds %struct.lbuf, ptr %2, i32 0, i32 2
  %17 = ptrtoint ptr %l_wqnext.i.i75 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %l_wqnext.i.i75, align 8
  %cmp.i.i76 = icmp eq ptr %18, null
  br i1 %cmp.i.i76, label %lbmFree.exit82, label %do.end.i.i78

do.end.i.i78:                                     ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 1930, ptr noundef nonnull @.str.117) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_logmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1930, 0\0A.popsection", ""() #8, !srcloc !305
  unreachable

lbmFree.exit82:                                   ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %2, align 8
  %lbuf_free.i.i79 = getelementptr inbounds %struct.jfs_log, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %lbuf_free.i.i79 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lbuf_free.i.i79, align 4
  %l_freelist.i.i80 = getelementptr inbounds %struct.lbuf, ptr %2, i32 0, i32 3
  %23 = ptrtoint ptr %l_freelist.i.i80 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %l_freelist.i.i80, align 4
  store ptr %2, ptr %lbuf_free.i.i79, align 4
  %free_wait.i.i81 = getelementptr inbounds %struct.jfs_log, ptr %20, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %free_wait.i.i81, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @jfsLCacheLock, i32 noundef %call2.i74) #8
  br label %cleanup

if.end50:                                         ; preds = %for.end35.thread, %for.end.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %24 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp.i83 = icmp sgt i32 %24, 3
  br i1 %cmp.i83, label %do.end.i, label %if.end50.lbmDirectWrite.exit_crit_edge

if.end50.lbmDirectWrite.exit_crit_edge:           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbmDirectWrite.exit

do.end.i:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %l_pn.i = getelementptr inbounds %struct.lbuf, ptr %2, i32 0, i32 4
  %25 = ptrtoint ptr %l_pn.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %l_pn.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef %2, i32 noundef 14, i32 noundef %26) #11
  br label %lbmDirectWrite.exit

lbmDirectWrite.exit:                              ; preds = %do.end.i, %if.end50.lbmDirectWrite.exit_crit_edge
  %l_flag.i = getelementptr inbounds %struct.lbuf, ptr %2, i32 0, i32 1
  %27 = ptrtoint ptr %l_flag.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 270, ptr %l_flag.i, align 4
  %base.i = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 4
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %base.i, align 8
  %l_pn3.i = getelementptr inbounds %struct.lbuf, ptr %2, i32 0, i32 4
  %30 = ptrtoint ptr %l_pn3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %l_pn3.i, align 8
  %l2bsize.i = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 6
  %32 = ptrtoint ptr %l2bsize.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %l2bsize.i, align 4
  %sub.i = sub i32 12, %33
  %shl.i = shl i32 %31, %sub.i
  %conv.i = sext i32 %shl.i to i64
  %add.i = add i64 %29, %conv.i
  %l_blkno.i = getelementptr inbounds %struct.lbuf, ptr %2, i32 0, i32 7
  %34 = ptrtoint ptr %l_blkno.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %add.i, ptr %l_blkno.i, align 8
  tail call fastcc void @lbmStartIO(ptr noundef %2) #8
  %call51 = tail call fastcc i32 @lbmIOWait(ptr noundef %2, i32 noundef 16)
  br label %cleanup

cleanup:                                          ; preds = %lbmDirectWrite.exit, %lbmFree.exit82, %lbmFree.exit
  %retval.0 = phi i32 [ -24, %lbmFree.exit ], [ %call51, %lbmDirectWrite.exit ], [ -5, %lbmFree.exit82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bpsuper) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_dev(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lmLogInit(ptr noundef %log) local_unnamed_addr #0 align 64 {
entry:
  %lrd = alloca %struct.lrd, align 4
  %bpsuper = alloca ptr, align 4
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %lrd) #8
  %0 = call ptr @memset(ptr %lrd, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bpsuper) #8
  %1 = ptrtoint ptr %bpsuper to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %bpsuper, align 4, !annotation !304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #8
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !304
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %3 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp sgt i32 %3, 3
  br i1 %cmp, label %do.end, label %entry.do.body4_crit_edge

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %log) #11
  br label %do.body4

do.body4:                                         ; preds = %do.end, %entry.do.body4_crit_edge
  %gclock = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 23
  tail call void @__raw_spin_lock_init(ptr noundef %gclock, ptr noundef nonnull @.str.14, ptr noundef nonnull @lmLogInit.__key, i16 noundef signext 3) #8
  %loglock = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %loglock, ptr noundef nonnull @.str.16, ptr noundef nonnull @lmLogInit.__key.15) #8
  %synclock = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 30
  tail call void @__raw_spin_lock_init(ptr noundef %synclock, ptr noundef nonnull @.str.18, ptr noundef nonnull @lmLogInit.__key.17, i16 noundef signext 3) #8
  %synclist = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 29
  %4 = ptrtoint ptr %synclist to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %synclist, ptr %synclist, align 4
  %prev.i = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 29, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %synclist, ptr %prev.i, align 4
  %cqueue = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 19
  %6 = ptrtoint ptr %cqueue to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %cqueue, ptr %cqueue, align 4
  %prev.i291 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 19, i32 1
  %7 = ptrtoint ptr %prev.i291 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cqueue, ptr %prev.i291, align 4
  %flush_tblk = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 20
  %8 = ptrtoint ptr %flush_tblk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %flush_tblk, align 8
  %count = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 32
  %9 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %10 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp.i = icmp sgt i32 %10, 3
  br i1 %cmp.i, label %do.end.i, label %do.body4.do.end3.i_crit_edge

do.body4.do.end3.i_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %log) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.body4.do.end3.i_crit_edge
  %bp.i = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 13
  %11 = ptrtoint ptr %bp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %bp.i, align 8
  %wqueue.i = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 31
  %12 = ptrtoint ptr %wqueue.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %wqueue.i, align 8
  %free_wait.i = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %free_wait.i, ptr noundef nonnull @.str.107, ptr noundef nonnull @lbmLogInit.__key) #8
  %lbuf_free.i = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 8
  %13 = ptrtoint ptr %lbuf_free.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %lbuf_free.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end24.i.for.body.i_crit_edge, %do.end3.i
  %i.067.i = phi i32 [ 0, %do.end3.i ], [ %inc.i, %if.end24.i.for.body.i_crit_edge ]
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3520, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %tobool.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool.not.i, label %for.body.i.error.i_crit_edge, label %if.end10.i

for.body.i.error.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i

if.end10.i:                                       ; preds = %for.body.i
  %call11.i = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 104) #12
  %cmp16.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp16.i, label %if.then19.i, label %if.end24.i

if.then19.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i, i32 noundef 0) #8
  br label %error.i

if.end24.i:                                       ; preds = %if.end10.i
  %l_offset.i = getelementptr inbounds %struct.lbuf, ptr %call7.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %l_offset.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %l_offset.i, align 8
  %l_ldata.i = getelementptr inbounds %struct.lbuf, ptr %call7.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %l_ldata.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call11.i, ptr %l_ldata.i, align 8
  %l_page.i = getelementptr inbounds %struct.lbuf, ptr %call7.i.i, i32 0, i32 9
  %17 = ptrtoint ptr %l_page.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call38.i.i.i.i, ptr %l_page.i, align 4
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %log, ptr %call7.i.i, align 8
  %l_ioevent.i = getelementptr inbounds %struct.lbuf, ptr %call7.i.i, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %l_ioevent.i, ptr noundef nonnull @.str.109, ptr noundef nonnull @lbmLogInit.__key.108) #8
  %19 = ptrtoint ptr %lbuf_free.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lbuf_free.i, align 4
  %l_freelist.i = getelementptr inbounds %struct.lbuf, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %l_freelist.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %l_freelist.i, align 4
  store ptr %call7.i.i, ptr %lbuf_free.i, align 4
  %inc.i = add nuw nsw i32 %i.067.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end17, label %if.end24.i.for.body.i_crit_edge

if.end24.i.for.body.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

error.i:                                          ; preds = %if.then19.i, %for.body.i.error.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %22 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp.i.i = icmp sgt i32 %22, 3
  br i1 %cmp.i.i, label %do.end.i.i, label %error.i.do.end3.i.i_crit_edge

error.i.do.end3.i.i_crit_edge:                    ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i

do.end.i.i:                                       ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %log) #11
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i.i, %error.i.do.end3.i.i_crit_edge
  %23 = ptrtoint ptr %lbuf_free.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lbuf_free.i, align 4
  %tobool.not8.i.i = icmp eq ptr %24, null
  br i1 %tobool.not8.i.i, label %do.end3.i.i.cleanup_crit_edge, label %do.end3.i.i.while.body.i.i_crit_edge

do.end3.i.i.while.body.i.i_crit_edge:             ; preds = %do.end3.i.i
  br label %while.body.i.i

do.end3.i.i.cleanup_crit_edge:                    ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %do.end3.i.i.while.body.i.i_crit_edge
  %lbuf.09.i.i = phi ptr [ %26, %while.body.i.i.while.body.i.i_crit_edge ], [ %24, %do.end3.i.i.while.body.i.i_crit_edge ]
  %l_freelist.i.i = getelementptr inbounds %struct.lbuf, ptr %lbuf.09.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %l_freelist.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %l_freelist.i.i, align 4
  %l_page.i.i = getelementptr inbounds %struct.lbuf, ptr %lbuf.09.i.i, i32 0, i32 9
  %27 = ptrtoint ptr %l_page.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %l_page.i.i, align 4
  tail call void @__free_pages(ptr noundef %28, i32 noundef 0) #8
  tail call void @kfree(ptr noundef nonnull %lbuf.09.i.i) #8
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %while.body.i.i.cleanup_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i.cleanup_crit_edge:                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end24.i
  %flag = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 7
  %29 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flag, align 4
  %31 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool19.not = icmp eq i32 %31, 0
  br i1 %tobool19.not, label %if.then20, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %l2bsize = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 6
  %32 = ptrtoint ptr %l2bsize to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 12, ptr %l2bsize, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge
  %no_integrity = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 34
  %33 = ptrtoint ptr %no_integrity to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %no_integrity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool22.not = icmp eq i32 %34, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call fastcc ptr @lbmAllocate(ptr noundef %log, i32 noundef 0)
  %35 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call24, ptr %bp, align 4
  %36 = ptrtoint ptr %bp.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call24, ptr %bp.i, align 8
  %l_eor = getelementptr inbounds %struct.lbuf, ptr %call24, i32 0, i32 5
  %37 = ptrtoint ptr %l_eor to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %l_eor, align 4
  %l_pn = getelementptr inbounds %struct.lbuf, ptr %call24, i32 0, i32 4
  %38 = ptrtoint ptr %l_pn to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %l_pn, align 8
  br label %if.end168

if.else:                                          ; preds = %if.end21
  call fastcc void @lbmRead(ptr noundef %log, i32 noundef 1, ptr noundef nonnull %bpsuper)
  %39 = ptrtoint ptr %bpsuper to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bpsuper, align 4
  %l_ldata = getelementptr inbounds %struct.lbuf, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %l_ldata to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %l_ldata, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 558065031, i32 %44)
  %cmp30.not = icmp eq i32 %44, 558065031
  br i1 %cmp30.not, label %if.end43, label %do.body32

do.body32:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %45 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp33 = icmp sgt i32 %45, 1
  br i1 %cmp33, label %do.end37, label %do.body32.errout20_crit_edge

do.body32.errout20_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout20

do.end37:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #11
  br label %errout20

if.end43:                                         ; preds = %if.else
  %state = getelementptr inbounds %struct.logsuper, ptr %42, i32 0, i32 7
  %46 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %47)
  %cmp44.not = icmp eq i32 %47, 16777216
  br i1 %cmp44.not, label %if.end57, label %do.body46

do.body46:                                        ; preds = %if.end43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %48 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp47 = icmp sgt i32 %48, 1
  br i1 %cmp47, label %do.end51, label %do.body46.errout20_crit_edge

do.body46.errout20_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout20

do.end51:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #11
  br label %errout20

if.end57:                                         ; preds = %if.end43
  %49 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %flag, align 4
  %51 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool60.not = icmp eq i32 %51, 0
  br i1 %tobool60.not, label %if.else78, label %if.then61

if.then61:                                        ; preds = %if.end57
  %size = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 5
  %52 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size, align 8
  %size62 = getelementptr inbounds %struct.logsuper, ptr %42, i32 0, i32 3
  %54 = ptrtoint ptr %size62 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size62, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %56)
  %cmp63.not = icmp eq i32 %53, %56
  br i1 %cmp63.not, label %do.body66, label %if.then61.errout20_crit_edge

if.then61.errout20_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout20

do.body66:                                        ; preds = %if.then61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %57 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %57)
  %cmp67 = icmp sgt i32 %57, 3
  br i1 %cmp67, label %do.end71, label %do.body66.if.end111_crit_edge

do.body66.if.end111_crit_edge:                    ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

do.end71:                                         ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  %base = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 4
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %base, align 8
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %log, i64 noundef %59, i32 noundef %53) #11
  br label %if.end111

if.else78:                                        ; preds = %if.end57
  %uuid = getelementptr inbounds %struct.logsuper, ptr %42, i32 0, i32 9
  %uuid79 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 33
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %uuid, ptr noundef dereferenceable(16) %uuid79, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i292 = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i292, label %if.end93, label %do.body82

do.body82:                                        ; preds = %if.else78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %60 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp83 = icmp sgt i32 %60, 1
  br i1 %cmp83, label %do.end87, label %do.body82.errout20_crit_edge

do.body82.errout20_crit_edge:                     ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout20

do.end87:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #10
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #11
  br label %errout20

if.end93:                                         ; preds = %if.else78
  %size94 = getelementptr inbounds %struct.logsuper, ptr %42, i32 0, i32 3
  %61 = ptrtoint ptr %size94 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %size94, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %size95 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 5
  %64 = ptrtoint ptr %size95 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %size95, align 8
  %l2bsize96 = getelementptr inbounds %struct.logsuper, ptr %42, i32 0, i32 5
  %65 = ptrtoint ptr %l2bsize96 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %l2bsize96, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %l2bsize97 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 6
  %68 = ptrtoint ptr %l2bsize97 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %l2bsize97, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %69 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %69)
  %cmp99 = icmp sgt i32 %69, 3
  br i1 %cmp99, label %do.end103, label %if.end93.if.end111_crit_edge

if.end93.if.end111_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

do.end103:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %base105 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 4
  %70 = ptrtoint ptr %base105 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %base105, align 8
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %log, i64 noundef %71, i32 noundef %63) #11
  br label %if.end111

if.end111:                                        ; preds = %do.end103, %if.end93.if.end111_crit_edge, %do.end71, %do.body66.if.end111_crit_edge
  %end = getelementptr inbounds %struct.logsuper, ptr %42, i32 0, i32 8
  %72 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %end, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  %div288 = lshr i32 %74, 12
  %page = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 11
  %75 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %div288, ptr %page, align 8
  %76 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %end, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  %mul = and i32 %74, -4096
  %sub = sub i32 %78, %mul
  %eor = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 12
  %79 = ptrtoint ptr %eor to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %sub, ptr %eor, align 4
  call fastcc void @lbmRead(ptr noundef %log, i32 noundef %div288, ptr noundef nonnull %bp)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %80 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %80)
  %cmp121 = icmp sgt i32 %80, 3
  br i1 %cmp121, label %do.end125, label %if.end111.do.end134_crit_edge

if.end111.do.end134_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end134

do.end125:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bp, align 4
  %l_ldata119 = getelementptr inbounds %struct.lbuf, ptr %82, i32 0, i32 8
  %83 = ptrtoint ptr %l_ldata119 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %l_ldata119, align 8
  %85 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %end, align 4
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  %88 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %page, align 8
  %90 = ptrtoint ptr %eor to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %eor, align 4
  %eor130 = getelementptr inbounds %struct.anon.88, ptr %84, i32 0, i32 2
  %92 = ptrtoint ptr %eor130 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %eor130, align 2
  %94 = tail call i16 @llvm.bswap.i16(i16 %93)
  %conv = zext i16 %94 to i32
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %87, i32 noundef %89, i32 noundef %91, i32 noundef %conv) #11
  br label %do.end134

do.end134:                                        ; preds = %do.end125, %if.end111.do.end134_crit_edge
  %95 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bp, align 4
  %97 = ptrtoint ptr %bp.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %96, ptr %bp.i, align 8
  %98 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %page, align 8
  %l_pn137 = getelementptr inbounds %struct.lbuf, ptr %96, i32 0, i32 4
  %100 = ptrtoint ptr %l_pn137 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %l_pn137, align 8
  %101 = ptrtoint ptr %eor to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %eor, align 4
  %l_eor139 = getelementptr inbounds %struct.lbuf, ptr %96, i32 0, i32 5
  %103 = ptrtoint ptr %l_eor139 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %l_eor139, align 4
  %104 = load i32, ptr %eor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4087, i32 %104)
  %cmp141 = icmp sgt i32 %104, 4087
  br i1 %cmp141, label %if.then143, label %do.end134.if.end145_crit_edge

do.end134.if.end145_crit_edge:                    ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.then143:                                       ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @lmNextPage(ptr noundef %log)
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %do.end134.if.end145_crit_edge
  %105 = ptrtoint ptr %lrd to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %lrd, align 4
  %backchain = getelementptr inbounds %struct.lrd, ptr %lrd, i32 0, i32 1
  %106 = ptrtoint ptr %backchain to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %backchain, align 4
  %type = getelementptr inbounds %struct.lrd, ptr %lrd, i32 0, i32 2
  %107 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 64, ptr %type, align 4
  %length = getelementptr inbounds %struct.lrd, ptr %lrd, i32 0, i32 3
  %108 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %length, align 2
  %log146 = getelementptr inbounds %struct.lrd, ptr %lrd, i32 0, i32 5
  %109 = ptrtoint ptr %log146 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %log146, align 4
  %call147 = call fastcc i32 @lmWriteRecord(ptr noundef %log, ptr noundef null, ptr noundef nonnull %lrd, ptr noundef null)
  %110 = ptrtoint ptr %bp.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bp.i, align 8
  %112 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %bp, align 4
  %l_eor149 = getelementptr inbounds %struct.lbuf, ptr %111, i32 0, i32 5
  %113 = ptrtoint ptr %l_eor149 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %l_eor149, align 4
  %l_ceor = getelementptr inbounds %struct.lbuf, ptr %111, i32 0, i32 6
  %115 = ptrtoint ptr %l_ceor to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %l_ceor, align 8
  %l_ldata150 = getelementptr inbounds %struct.lbuf, ptr %111, i32 0, i32 8
  %116 = ptrtoint ptr %l_ldata150 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %l_ldata150, align 8
  %conv152 = trunc i32 %114 to i16
  %118 = tail call i16 @llvm.bswap.i16(i16 %conv152)
  %eor153 = getelementptr inbounds %struct.logpage, ptr %117, i32 0, i32 2, i32 2
  %119 = ptrtoint ptr %eor153 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %118, ptr %eor153, align 2
  %eor155 = getelementptr inbounds %struct.anon.88, ptr %117, i32 0, i32 2
  %120 = ptrtoint ptr %eor155 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %118, ptr %eor155, align 2
  tail call fastcc void @lbmWrite(ptr noundef %log, ptr noundef %111, i32 noundef 10, i32 noundef 0)
  %call156 = tail call fastcc i32 @lbmIOWait(ptr noundef %111, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end159, label %if.end145.errout30_crit_edge

if.end145.errout30_crit_edge:                     ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout30

if.end159:                                        ; preds = %if.end145
  %121 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %state, align 4
  %serial = getelementptr inbounds %struct.logsuper, ptr %42, i32 0, i32 2
  %122 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %serial, align 4
  %124 = tail call i32 @llvm.bswap.i32(i32 %123)
  %add = add i32 %124, 1
  %serial161 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 3
  %125 = ptrtoint ptr %serial161 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %add, ptr %serial161, align 4
  %126 = tail call i32 @llvm.bswap.i32(i32 %add)
  %127 = ptrtoint ptr %serial to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %serial, align 4
  tail call fastcc void @lbmDirectWrite(ptr noundef %log, ptr noundef %40)
  %call164 = tail call fastcc i32 @lbmIOWait(ptr noundef %40, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end159.if.end168_crit_edge, label %if.end159.errout30_crit_edge

if.end159.errout30_crit_edge:                     ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout30

if.end159.if.end168_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end168

if.end168:                                        ; preds = %if.end159.if.end168_crit_edge, %if.then23
  %lsn.0 = phi i32 [ 0, %if.then23 ], [ %call147, %if.end159.if.end168_crit_edge ]
  %size169 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 5
  %128 = ptrtoint ptr %size169 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %size169, align 8
  %sub170 = shl i32 %129, 12
  %shl = add i32 %sub170, -8192
  %logsize = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 24
  %130 = ptrtoint ptr %logsize to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %shl, ptr %logsize, align 8
  %lsn171 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 25
  %131 = ptrtoint ptr %lsn171 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %lsn.0, ptr %lsn171, align 4
  %syncpt = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 27
  %132 = ptrtoint ptr %syncpt to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %lsn.0, ptr %syncpt, align 4
  %sync173 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 28
  %133 = ptrtoint ptr %sync173 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %lsn.0, ptr %sync173, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %shl)
  %cmp177 = icmp slt i32 %shl, 4194304
  %div175 = sdiv i32 %shl, 8
  %cond = select i1 %cmp177, i32 %div175, i32 524288
  %nextsync = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 15
  %134 = ptrtoint ptr %nextsync to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %cond, ptr %nextsync, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %135 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %135)
  %cmp180 = icmp sgt i32 %135, 3
  br i1 %cmp180, label %do.end185, label %if.end168.do.end193_crit_edge

if.end168.do.end193_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end193

do.end185:                                        ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  %call190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %lsn.0, i32 noundef %lsn.0, i32 noundef %lsn.0) #11
  br label %do.end193

do.end193:                                        ; preds = %do.end185, %if.end168.do.end193_crit_edge
  %clsn = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 26
  %136 = ptrtoint ptr %clsn to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %lsn.0, ptr %clsn, align 8
  br label %cleanup

errout30:                                         ; preds = %if.end159.errout30_crit_edge, %if.end145.errout30_crit_edge
  %rc.0 = phi i32 [ %call156, %if.end145.errout30_crit_edge ], [ %call164, %if.end159.errout30_crit_edge ]
  %137 = ptrtoint ptr %wqueue.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %wqueue.i, align 8
  %l_wqnext = getelementptr inbounds %struct.lbuf, ptr %111, i32 0, i32 2
  %138 = ptrtoint ptr %l_wqnext to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %l_wqnext, align 8
  tail call fastcc void @lbmFree(ptr noundef %111)
  br label %errout20

errout20:                                         ; preds = %errout30, %do.end87, %do.body82.errout20_crit_edge, %if.then61.errout20_crit_edge, %do.end51, %do.body46.errout20_crit_edge, %do.end37, %do.body32.errout20_crit_edge
  %rc.1 = phi i32 [ %rc.0, %errout30 ], [ -22, %do.end37 ], [ -22, %do.body32.errout20_crit_edge ], [ -22, %do.end51 ], [ -22, %do.body46.errout20_crit_edge ], [ -22, %if.then61.errout20_crit_edge ], [ -22, %do.end87 ], [ -22, %do.body82.errout20_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @jfsLCacheLock) #8
  %l_wqnext.i.i = getelementptr inbounds %struct.lbuf, ptr %40, i32 0, i32 2
  %139 = ptrtoint ptr %l_wqnext.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %l_wqnext.i.i, align 8
  %cmp.i.i293 = icmp eq ptr %140, null
  br i1 %cmp.i.i293, label %lbmFree.exit, label %do.end.i.i295

do.end.i.i295:                                    ; preds = %errout20
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i294 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 1930, ptr noundef nonnull @.str.117) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_logmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1930, 0\0A.popsection", ""() #8, !srcloc !305
  unreachable

lbmFree.exit:                                     ; preds = %errout20
  %141 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %40, align 8
  %lbuf_free.i.i = getelementptr inbounds %struct.jfs_log, ptr %142, i32 0, i32 8
  %143 = ptrtoint ptr %lbuf_free.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %lbuf_free.i.i, align 4
  %l_freelist.i.i296 = getelementptr inbounds %struct.lbuf, ptr %40, i32 0, i32 3
  %145 = ptrtoint ptr %l_freelist.i.i296 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %144, ptr %l_freelist.i.i296, align 4
  store ptr %40, ptr %lbuf_free.i.i, align 4
  %free_wait.i.i = getelementptr inbounds %struct.jfs_log, ptr %142, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %free_wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @jfsLCacheLock, i32 noundef %call2.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %146 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %146)
  %cmp.i297 = icmp sgt i32 %146, 3
  br i1 %cmp.i297, label %do.end.i299, label %lbmFree.exit.do.end3.i301_crit_edge

lbmFree.exit.do.end3.i301_crit_edge:              ; preds = %lbmFree.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i301

do.end.i299:                                      ; preds = %lbmFree.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i298 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %log) #11
  br label %do.end3.i301

do.end3.i301:                                     ; preds = %do.end.i299, %lbmFree.exit.do.end3.i301_crit_edge
  %147 = ptrtoint ptr %lbuf_free.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %lbuf_free.i, align 4
  %tobool.not8.i = icmp eq ptr %148, null
  br i1 %tobool.not8.i, label %do.end3.i301.lbmLogShutdown.exit_crit_edge, label %do.end3.i301.while.body.i_crit_edge

do.end3.i301.while.body.i_crit_edge:              ; preds = %do.end3.i301
  br label %while.body.i

do.end3.i301.lbmLogShutdown.exit_crit_edge:       ; preds = %do.end3.i301
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbmLogShutdown.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end3.i301.while.body.i_crit_edge
  %lbuf.09.i = phi ptr [ %150, %while.body.i.while.body.i_crit_edge ], [ %148, %do.end3.i301.while.body.i_crit_edge ]
  %l_freelist.i302 = getelementptr inbounds %struct.lbuf, ptr %lbuf.09.i, i32 0, i32 3
  %149 = ptrtoint ptr %l_freelist.i302 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %l_freelist.i302, align 4
  %l_page.i303 = getelementptr inbounds %struct.lbuf, ptr %lbuf.09.i, i32 0, i32 9
  %151 = ptrtoint ptr %l_page.i303 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %l_page.i303, align 4
  tail call void @__free_pages(ptr noundef %152, i32 noundef 0) #8
  tail call void @kfree(ptr noundef nonnull %lbuf.09.i) #8
  %tobool.not.i304 = icmp eq ptr %150, null
  br i1 %tobool.not.i304, label %while.body.i.lbmLogShutdown.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.lbmLogShutdown.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbmLogShutdown.exit

lbmLogShutdown.exit:                              ; preds = %while.body.i.lbmLogShutdown.exit_crit_edge, %do.end3.i301.lbmLogShutdown.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %153 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %153)
  %cmp195 = icmp sgt i32 %153, 1
  br i1 %cmp195, label %do.end200, label %lbmLogShutdown.exit.cleanup_crit_edge

lbmLogShutdown.exit.cleanup_crit_edge:            ; preds = %lbmLogShutdown.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end200:                                        ; preds = %lbmLogShutdown.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %rc.1) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end200, %lbmLogShutdown.exit.cleanup_crit_edge, %do.end193, %while.body.i.i.cleanup_crit_edge, %do.end3.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end193 ], [ %rc.1, %do.end200 ], [ %rc.1, %lbmLogShutdown.exit.cleanup_crit_edge ], [ -12, %do.end3.i.i.cleanup_crit_edge ], [ -12, %while.body.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bpsuper) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %lrd) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lbmLogShutdown(ptr noundef %log) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %0 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %log) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %lbuf_free = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 8
  %1 = ptrtoint ptr %lbuf_free to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lbuf_free, align 4
  %tobool.not8 = icmp eq ptr %2, null
  br i1 %tobool.not8, label %do.end3.while.end_crit_edge, label %do.end3.while.body_crit_edge

do.end3.while.body_crit_edge:                     ; preds = %do.end3
  br label %while.body

do.end3.while.end_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end3.while.body_crit_edge
  %lbuf.09 = phi ptr [ %4, %while.body.while.body_crit_edge ], [ %2, %do.end3.while.body_crit_edge ]
  %l_freelist = getelementptr inbounds %struct.lbuf, ptr %lbuf.09, i32 0, i32 3
  %3 = ptrtoint ptr %l_freelist to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %l_freelist, align 4
  %l_page = getelementptr inbounds %struct.lbuf, ptr %lbuf.09, i32 0, i32 9
  %5 = ptrtoint ptr %l_page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %l_page, align 4
  tail call void @__free_pages(ptr noundef %6, i32 noundef 0) #8
  tail call void @kfree(ptr noundef nonnull %lbuf.09) #8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end3.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lbmAllocate(ptr noundef %log, i32 noundef %pn) #0 align 64 {
entry:
  %__wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @jfsLCacheLock) #8
  %lbuf_free = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 8
  %0 = ptrtoint ptr %lbuf_free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lbuf_free, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body6, label %entry.do.end172_crit_edge

entry.do.end172_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end172

do.body6:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait) #8
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %__wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %__wait, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !290) #8
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @default_wake_function, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %5, align 4
  %free_wait = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 9
  call void @add_wait_queue(ptr noundef %free_wait, ptr noundef nonnull %__wait) #8
  br label %__here

__here:                                           ; preds = %if.end82, %do.body6
  %flags.0 = phi i32 [ %call2, %do.body6 ], [ %call91, %if.end82 ]
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 212
  %17 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 ptrtoint (ptr blockaddress(@lbmAllocate, %__here) to i32), ptr %task_state_change, align 4
  %18 = load ptr, ptr %task, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 2, ptr %18, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !306
  %20 = ptrtoint ptr %lbuf_free to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lbuf_free, align 4
  %tobool80.not = icmp eq ptr %21, null
  br i1 %tobool80.not, label %if.end82, label %__here147

if.end82:                                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @jfsLCacheLock, i32 noundef %flags.0) #8
  call void @io_schedule() #8
  %call91 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @jfsLCacheLock) #8
  br label %__here

__here147:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %task_state_change151 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 212
  %24 = ptrtoint ptr %task_state_change151 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 ptrtoint (ptr blockaddress(@lbmAllocate, %__here147) to i32), ptr %task_state_change151, align 4
  %25 = load ptr, ptr %task, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %25, align 128
  call void @remove_wait_queue(ptr noundef %free_wait, ptr noundef nonnull %__wait) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait) #8
  br label %do.end172

do.end172:                                        ; preds = %__here147, %entry.do.end172_crit_edge
  %flags.1 = phi i32 [ %call2, %entry.do.end172_crit_edge ], [ %flags.0, %__here147 ]
  %bp.0 = phi ptr [ %1, %entry.do.end172_crit_edge ], [ %21, %__here147 ]
  %l_freelist = getelementptr inbounds %struct.lbuf, ptr %bp.0, i32 0, i32 3
  %27 = ptrtoint ptr %l_freelist to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %l_freelist, align 4
  %29 = ptrtoint ptr %lbuf_free to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %lbuf_free, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @jfsLCacheLock, i32 noundef %flags.1) #8
  %l_flag = getelementptr inbounds %struct.lbuf, ptr %bp.0, i32 0, i32 1
  %30 = ptrtoint ptr %l_flag to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %l_flag, align 4
  %l_wqnext = getelementptr inbounds %struct.lbuf, ptr %bp.0, i32 0, i32 2
  %31 = ptrtoint ptr %l_wqnext to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %l_wqnext, align 8
  %32 = ptrtoint ptr %l_freelist to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %l_freelist, align 4
  %l_pn = getelementptr inbounds %struct.lbuf, ptr %bp.0, i32 0, i32 4
  %33 = ptrtoint ptr %l_pn to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %pn, ptr %l_pn, align 8
  %base = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 4
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %base, align 8
  %l2bsize = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 6
  %36 = ptrtoint ptr %l2bsize to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %l2bsize, align 4
  %sub = sub i32 12, %37
  %shl = shl i32 %pn, %sub
  %conv175 = sext i32 %shl to i64
  %add = add i64 %35, %conv175
  %l_blkno = getelementptr inbounds %struct.lbuf, ptr %bp.0, i32 0, i32 7
  %38 = ptrtoint ptr %l_blkno to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %add, ptr %l_blkno, align 8
  %l_ceor = getelementptr inbounds %struct.lbuf, ptr %bp.0, i32 0, i32 6
  %39 = ptrtoint ptr %l_ceor to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %l_ceor, align 8
  ret ptr %bp.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lbmRead(ptr noundef %log, i32 noundef %pn, ptr nocapture noundef writeonly %bpp) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lbmAllocate(ptr noundef %log, i32 noundef %pn)
  %0 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %bpp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %1 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp sgt i32 %1, 3
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %call, i32 noundef %pn) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %l_flag = getelementptr inbounds %struct.lbuf, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %l_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %l_flag, align 4
  %or = or i32 %3, 1
  store i32 %or, ptr %l_flag, align 4
  %call.i = tail call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #8
  %l_blkno = getelementptr inbounds %struct.lbuf, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %l_blkno to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %l_blkno, align 8
  %l2bsize = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 6
  %6 = ptrtoint ptr %l2bsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %l2bsize, align 4
  %sub = add i32 %7, -9
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 %5, %sh_prom
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %shl, ptr %bi_iter, align 8
  %bdev = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 2
  %9 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bdev, align 8
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %12, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %14, %10
  br i1 %cmp.not.i, label %do.end4.bio_set_dev.exit_crit_edge, label %if.then.i

do.end4.bio_set_dev.exit_crit_edge:               ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i8.i = and i16 %12, -2177
  %15 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %do.end4.bio_set_dev.exit_crit_edge
  %16 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %10, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i) #8
  %l_page = getelementptr inbounds %struct.lbuf, ptr %call, i32 0, i32 9
  %17 = ptrtoint ptr %l_page to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %l_page, align 4
  %l_offset = getelementptr inbounds %struct.lbuf, ptr %call, i32 0, i32 10
  %19 = ptrtoint ptr %l_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %l_offset, align 8
  %call6 = tail call i32 @bio_add_page(ptr noundef %call.i, ptr noundef %18, i32 noundef 4096, i32 noundef %20) #8
  %bi_size = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %22)
  %cmp9.not = icmp eq i32 %22, 4096
  br i1 %cmp9.not, label %do.end20, label %do.body12, !prof !307

do.body12:                                        ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_logmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1989, 0\0A.popsection", ""() #8, !srcloc !308
  unreachable

do.end20:                                         ; preds = %bio_set_dev.exit
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 10
  %23 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @lbmIODone, ptr %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 11
  %24 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call, ptr %bi_private, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %bi_opf, align 8
  %no_integrity = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 34
  %26 = ptrtoint ptr %no_integrity to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %no_integrity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool21.not = icmp eq i32 %27, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %bi_size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %bi_size, align 8
  tail call void @lbmIODone(ptr noundef %call.i)
  br label %do.body27

if.else:                                          ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @submit_bio(ptr noundef %call.i) #8
  br label %do.body27

do.body27:                                        ; preds = %if.else, %if.then22
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 2002) #8
  %29 = ptrtoint ptr %l_flag to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %l_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp34.not = icmp eq i32 %30, 1
  br i1 %cmp34.not, label %if.end36, label %do.body27.do.end45_crit_edge

do.body27.do.end45_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

if.end36:                                         ; preds = %do.body27
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %31 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %l_ioevent = getelementptr inbounds %struct.lbuf, ptr %call, i32 0, i32 11
  %call373 = call i32 @prepare_to_wait_event(ptr noundef %l_ioevent, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %32 = ptrtoint ptr %l_flag to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %l_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp39.not4 = icmp eq i32 %33, 1
  br i1 %cmp39.not4, label %if.end36.cleanup_crit_edge, label %if.end36.for.end_crit_edge

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end36.cleanup_crit_edge
  call void @schedule() #8
  %call37 = call i32 @prepare_to_wait_event(ptr noundef %l_ioevent, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %34 = ptrtoint ptr %l_flag to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %l_flag, align 4
  %cmp39.not = icmp eq i32 %35, 1
  br i1 %cmp39.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end36.for.end_crit_edge
  call void @finish_wait(ptr noundef %l_ioevent, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %do.end45

do.end45:                                         ; preds = %for.end, %do.body27.do.end45_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lmNextPage(ptr noundef %log) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %page = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 11
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 8
  %bp1 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 13
  %2 = ptrtoint ptr %bp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bp1, align 8
  %l_ldata = getelementptr inbounds %struct.lbuf, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %l_ldata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %l_ldata, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %gclock = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 23
  tail call void @_raw_spin_lock_irq(ptr noundef %gclock) #8
  %cqueue = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 19
  %8 = ptrtoint ptr %cqueue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %cqueue, align 4
  %cmp.i.not = icmp eq ptr %9, %cqueue
  br i1 %cmp.i.not, label %entry.if.else18_crit_edge, label %if.end

entry.if.else18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else18

if.end:                                           ; preds = %entry
  %prev = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 19, i32 1
  %10 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 -84
  %tobool4.not = icmp eq ptr %add.ptr, null
  br i1 %tobool4.not, label %if.end.if.else18_crit_edge, label %land.lhs.true

if.end.if.else18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else18

land.lhs.true:                                    ; preds = %if.end
  %pn5 = getelementptr i8, ptr %11, i32 16
  %12 = ptrtoint ptr %pn5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pn5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %1)
  %cmp = icmp eq i32 %13, %1
  br i1 %cmp, label %if.then6, label %land.lhs.true.if.else18_crit_edge

land.lhs.true.if.else18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else18

if.then6:                                         ; preds = %land.lhs.true
  %flag = getelementptr i8, ptr %11, i32 -82
  %14 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flag, align 2
  %16 = or i16 %15, 16
  store i16 %16, ptr %flag, align 2
  %cflag = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 18
  %17 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cflag, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.else14, label %if.then9

if.then9:                                         ; preds = %if.then6
  %l_wqnext = getelementptr inbounds %struct.lbuf, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %l_wqnext to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %l_wqnext, align 8
  %cmp10 = icmp eq ptr %20, null
  br i1 %cmp10, label %if.then12, label %if.then9.if.end23_crit_edge

if.then9.if.end23_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then12:                                        ; preds = %if.then9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %21 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp.i1 = icmp sgt i32 %21, 3
  br i1 %cmp.i1, label %do.end.i, label %if.then12.do.end3.i_crit_edge

if.then12.do.end3.i_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %l_pn.i = getelementptr inbounds %struct.lbuf, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %l_pn.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %l_pn.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef %3, i32 noundef 0, i32 noundef %23) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then12.do.end3.i_crit_edge
  %base.i = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 4
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %base.i, align 8
  %l_pn4.i = getelementptr inbounds %struct.lbuf, ptr %3, i32 0, i32 4
  %26 = ptrtoint ptr %l_pn4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %l_pn4.i, align 8
  %l2bsize.i = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 6
  %28 = ptrtoint ptr %l2bsize.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %l2bsize.i, align 4
  %sub.i = sub i32 12, %29
  %shl.i = shl i32 %27, %sub.i
  %conv.i2 = sext i32 %shl.i to i64
  %add.i = add i64 %25, %conv.i2
  %l_blkno.i = getelementptr inbounds %struct.lbuf, ptr %3, i32 0, i32 7
  %30 = ptrtoint ptr %l_blkno.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add.i, ptr %l_blkno.i, align 8
  %call11.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @jfsLCacheLock) #8
  %l_flag.i = getelementptr inbounds %struct.lbuf, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %l_flag.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %l_flag.i, align 4
  %wqueue.i = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 31
  %32 = ptrtoint ptr %wqueue.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wqueue.i, align 8
  %34 = ptrtoint ptr %l_wqnext to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %l_wqnext, align 8
  %cmp16.i = icmp eq ptr %35, null
  br i1 %cmp16.i, label %if.then18.i, label %do.end3.i.lbmWrite.exit_crit_edge

do.end3.i.lbmWrite.exit_crit_edge:                ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbmWrite.exit

if.then18.i:                                      ; preds = %do.end3.i
  %cmp19.i = icmp eq ptr %33, null
  %36 = ptrtoint ptr %wqueue.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %3, ptr %wqueue.i, align 8
  br i1 %cmp19.i, label %if.then18.i.if.end29.sink.split.i_crit_edge, label %if.else.i

if.then18.i.if.end29.sink.split.i_crit_edge:      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.sink.split.i

if.else.i:                                        ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  %l_wqnext25.i = getelementptr inbounds %struct.lbuf, ptr %33, i32 0, i32 2
  %37 = ptrtoint ptr %l_wqnext25.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %l_wqnext25.i, align 8
  %39 = ptrtoint ptr %l_wqnext to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %l_wqnext, align 8
  br label %if.end29.sink.split.i

if.end29.sink.split.i:                            ; preds = %if.else.i, %if.then18.i.if.end29.sink.split.i_crit_edge
  %l_wqnext.sink.i = phi ptr [ %l_wqnext25.i, %if.else.i ], [ %l_wqnext, %if.then18.i.if.end29.sink.split.i_crit_edge ]
  %40 = ptrtoint ptr %l_wqnext.sink.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %3, ptr %l_wqnext.sink.i, align 8
  br label %lbmWrite.exit

lbmWrite.exit:                                    ; preds = %if.end29.sink.split.i, %do.end3.i.lbmWrite.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @jfsLCacheLock, i32 noundef %call11.i) #8
  br label %if.end23

if.else14:                                        ; preds = %if.then6
  %or16 = or i32 %18, 1
  %41 = ptrtoint ptr %cflag to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or16, ptr %cflag, align 4
  %42 = ptrtoint ptr %cqueue to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cqueue, align 8
  %pn.i = getelementptr i8, ptr %43, i32 16
  %44 = ptrtoint ptr %pn.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pn.i, align 4
  %cmp.not66.i = icmp eq ptr %43, %cqueue
  br i1 %cmp.not66.i, label %if.else14.for.end.i_crit_edge, label %if.else14.if.end.i_crit_edge

if.else14.if.end.i_crit_edge:                     ; preds = %if.else14
  br label %if.end.i

if.else14.for.end.i_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %if.end.i
  %pn8.i = getelementptr i8, ptr %52, i32 16
  %46 = ptrtoint ptr %pn8.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pn8.i, align 4
  %cmp9.not.i = icmp eq i32 %47, %45
  br i1 %cmp9.not.i, label %for.body.i.if.end.i_crit_edge, label %for.body.i.for.end.loopexit.i_crit_edge

for.body.i.for.end.loopexit.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.loopexit.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %if.else14.if.end.i_crit_edge
  %.pn6878.i = phi ptr [ %52, %for.body.i.if.end.i_crit_edge ], [ %43, %if.else14.if.end.i_crit_edge ]
  %flag.i = getelementptr i8, ptr %.pn6878.i, i32 -82
  %48 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %flag.i, align 2
  %50 = or i16 %49, 4
  store i16 %50, ptr %flag.i, align 2
  %51 = ptrtoint ptr %.pn6878.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %.pn6878.i, align 4
  %cmp.not.i = icmp eq ptr %52, %cqueue
  br i1 %cmp.not.i, label %if.end.i.for.end.loopexit.i_crit_edge, label %for.body.i

if.end.i.for.end.loopexit.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.loopexit.i

for.end.loopexit.i:                               ; preds = %if.end.i.for.end.loopexit.i_crit_edge, %for.body.i.for.end.loopexit.i_crit_edge
  %tblk.069.le.i = getelementptr i8, ptr %.pn6878.i, i32 -84
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %if.else14.for.end.i_crit_edge
  %xtblk.0.lcssa.i = phi ptr [ null, %if.else14.for.end.i_crit_edge ], [ %tblk.069.le.i, %for.end.loopexit.i ]
  %bp16.i = getelementptr inbounds %struct.tblock, ptr %xtblk.0.lcssa.i, i32 0, i32 12
  %53 = ptrtoint ptr %bp16.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bp16.i, align 4
  %l_ldata.i = getelementptr inbounds %struct.lbuf, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %l_ldata.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %l_ldata.i, align 8
  %flag17.i = getelementptr inbounds %struct.tblock, ptr %xtblk.0.lcssa.i, i32 0, i32 1
  %57 = ptrtoint ptr %flag17.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %flag17.i, align 2
  %59 = and i16 %58, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool.not.i = icmp eq i16 %59, 0
  br i1 %tobool.not.i, label %if.else.i3, label %if.then19.i

if.then19.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %and22.i = and i16 %58, -49
  %60 = or i16 %and22.i, 32
  %61 = ptrtoint ptr %flag17.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %flag17.i, align 2
  %l_eor.i = getelementptr inbounds %struct.lbuf, ptr %54, i32 0, i32 5
  br label %lmGCwrite.exit

if.else.i3:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %eor31.i = getelementptr inbounds %struct.tblock, ptr %xtblk.0.lcssa.i, i32 0, i32 14
  br label %lmGCwrite.exit

lmGCwrite.exit:                                   ; preds = %if.else.i3, %if.then19.i
  %eor31.sink.i = phi ptr [ %eor31.i, %if.else.i3 ], [ %l_eor.i, %if.then19.i ]
  %.sink.i = phi i32 [ 130, %if.else.i3 ], [ 134, %if.then19.i ]
  %lmStat.4.sink71.i = phi ptr [ @lmStat.4, %if.else.i3 ], [ @lmStat.3, %if.then19.i ]
  %62 = ptrtoint ptr %eor31.sink.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %eor31.sink.i, align 4
  %l_ceor32.i = getelementptr inbounds %struct.lbuf, ptr %54, i32 0, i32 6
  %64 = ptrtoint ptr %l_ceor32.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %l_ceor32.i, align 8
  %conv34.i = trunc i32 %63 to i16
  %65 = tail call i16 @llvm.bswap.i16(i16 %conv34.i) #8
  %eor36.i = getelementptr inbounds %struct.logpage, ptr %56, i32 0, i32 2, i32 2
  %66 = ptrtoint ptr %eor36.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %eor36.i, align 2
  %eor38.i = getelementptr inbounds %struct.anon.88, ptr %56, i32 0, i32 2
  %67 = ptrtoint ptr %eor38.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %65, ptr %eor38.i, align 2
  tail call fastcc void @lbmWrite(ptr noundef %log, ptr noundef %54, i32 noundef %.sink.i, i32 noundef 0) #8
  %68 = ptrtoint ptr %lmStat.4.sink71.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %lmStat.4.sink71.i, align 4
  %inc39.i = add i32 %69, 1
  store i32 %inc39.i, ptr %lmStat.4.sink71.i, align 4
  br label %if.end23

if.else18:                                        ; preds = %land.lhs.true.if.else18_crit_edge, %if.end.if.else18_crit_edge, %entry.if.else18_crit_edge
  %l_eor = getelementptr inbounds %struct.lbuf, ptr %3, i32 0, i32 5
  %70 = ptrtoint ptr %l_eor to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %l_eor, align 4
  %l_ceor = getelementptr inbounds %struct.lbuf, ptr %3, i32 0, i32 6
  %72 = ptrtoint ptr %l_ceor to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %l_ceor, align 8
  %conv20 = trunc i32 %71 to i16
  %73 = tail call i16 @llvm.bswap.i16(i16 %conv20)
  %eor = getelementptr inbounds %struct.logpage, ptr %5, i32 0, i32 2, i32 2
  %74 = ptrtoint ptr %eor to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %eor, align 2
  %eor22 = getelementptr inbounds %struct.anon.88, ptr %5, i32 0, i32 2
  %75 = ptrtoint ptr %eor22 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %73, ptr %eor22, align 2
  tail call fastcc void @lbmWrite(ptr noundef %log, ptr noundef %3, i32 noundef 22, i32 noundef 0)
  br label %if.end23

if.end23:                                         ; preds = %if.else18, %lmGCwrite.exit, %lbmWrite.exit, %if.then9.if.end23_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %gclock) #8
  %size = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 5
  %76 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %size, align 8
  %sub = add i32 %77, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub)
  %cmp25 = icmp eq i32 %1, %sub
  %add = add i32 %1, 1
  %spec.select = select i1 %cmp25, i32 2, i32 %add
  %78 = tail call i32 @llvm.bswap.i32(i32 %7)
  %79 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %spec.select, ptr %page, align 8
  %eor28 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 12
  %80 = ptrtoint ptr %eor28 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 8, ptr %eor28, align 4
  %call30 = tail call fastcc ptr @lbmAllocate(ptr noundef %log, i32 noundef %spec.select)
  %81 = ptrtoint ptr %eor28 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %eor28, align 4
  %l_eor32 = getelementptr inbounds %struct.lbuf, ptr %call30, i32 0, i32 5
  %83 = ptrtoint ptr %l_eor32 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %l_eor32, align 4
  %84 = ptrtoint ptr %bp1 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call30, ptr %bp1, align 8
  %l_ldata34 = getelementptr inbounds %struct.lbuf, ptr %call30, i32 0, i32 8
  %85 = ptrtoint ptr %l_ldata34 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %l_ldata34, align 8
  %add35 = add i32 %78, 1
  %87 = tail call i32 @llvm.bswap.i32(i32 %add35)
  %t36 = getelementptr inbounds %struct.logpage, ptr %86, i32 0, i32 2
  %88 = ptrtoint ptr %t36 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %t36, align 4
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %87, ptr %86, align 4
  %eor41 = getelementptr inbounds %struct.logpage, ptr %86, i32 0, i32 2, i32 2
  %90 = ptrtoint ptr %eor41 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 2048, ptr %eor41, align 2
  %eor43 = getelementptr inbounds %struct.anon.88, ptr %86, i32 0, i32 2
  %91 = ptrtoint ptr %eor43 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 2048, ptr %eor43, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lbmWrite(ptr noundef %log, ptr noundef %bp, i32 noundef %flag, i32 noundef %cant_block) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %0 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %l_pn = getelementptr inbounds %struct.lbuf, ptr %bp, i32 0, i32 4
  %1 = ptrtoint ptr %l_pn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %l_pn, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef %bp, i32 noundef %flag, i32 noundef %2) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %base = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 4
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %base, align 8
  %l_pn4 = getelementptr inbounds %struct.lbuf, ptr %bp, i32 0, i32 4
  %5 = ptrtoint ptr %l_pn4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %l_pn4, align 8
  %l2bsize = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 6
  %7 = ptrtoint ptr %l2bsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %l2bsize, align 4
  %sub = sub i32 12, %8
  %shl = shl i32 %6, %sub
  %conv = sext i32 %shl to i64
  %add = add i64 %4, %conv
  %l_blkno = getelementptr inbounds %struct.lbuf, ptr %bp, i32 0, i32 7
  %9 = ptrtoint ptr %l_blkno to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %add, ptr %l_blkno, align 8
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @jfsLCacheLock) #8
  %l_flag = getelementptr inbounds %struct.lbuf, ptr %bp, i32 0, i32 1
  %10 = ptrtoint ptr %l_flag to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %flag, ptr %l_flag, align 4
  %wqueue = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 31
  %11 = ptrtoint ptr %wqueue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wqueue, align 8
  %l_wqnext = getelementptr inbounds %struct.lbuf, ptr %bp, i32 0, i32 2
  %13 = ptrtoint ptr %l_wqnext to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %l_wqnext, align 8
  %cmp16 = icmp eq ptr %14, null
  br i1 %cmp16, label %if.then18, label %do.end3.if.end29_crit_edge

do.end3.if.end29_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then18:                                        ; preds = %do.end3
  %cmp19 = icmp eq ptr %12, null
  %15 = ptrtoint ptr %wqueue to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %bp, ptr %wqueue, align 8
  br i1 %cmp19, label %if.then18.if.end29.sink.split_crit_edge, label %if.else

if.then18.if.end29.sink.split_crit_edge:          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.sink.split

if.else:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %l_wqnext25 = getelementptr inbounds %struct.lbuf, ptr %12, i32 0, i32 2
  %16 = ptrtoint ptr %l_wqnext25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %l_wqnext25, align 8
  %18 = ptrtoint ptr %l_wqnext to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %l_wqnext, align 8
  br label %if.end29.sink.split

if.end29.sink.split:                              ; preds = %if.else, %if.then18.if.end29.sink.split_crit_edge
  %l_wqnext.sink = phi ptr [ %l_wqnext25, %if.else ], [ %l_wqnext, %if.then18.if.end29.sink.split_crit_edge ]
  %19 = ptrtoint ptr %l_wqnext.sink to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %bp, ptr %l_wqnext.sink, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %do.end3.if.end29_crit_edge
  %tail.0 = phi ptr [ %12, %do.end3.if.end29_crit_edge ], [ %bp, %if.end29.sink.split ]
  %l_wqnext30 = getelementptr inbounds %struct.lbuf, ptr %tail.0, i32 0, i32 2
  %20 = ptrtoint ptr %l_wqnext30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %l_wqnext30, align 8
  %cmp31.not = icmp ne ptr %21, %bp
  %and = and i32 %flag, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool.not, %cmp31.not
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @jfsLCacheLock, i32 noundef %call11) #8
  br i1 %or.cond, label %if.end29.cleanup_crit_edge, label %if.end34

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cant_block)
  %tobool35.not = icmp eq i32 %cant_block, 0
  br i1 %tobool35.not, label %if.else37, label %if.then36

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @log_redrive_lock) #8
  %22 = load ptr, ptr @log_redrive_list, align 4
  %l_freelist.i = getelementptr inbounds %struct.lbuf, ptr %bp, i32 0, i32 3
  %23 = ptrtoint ptr %l_freelist.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %l_freelist.i, align 4
  store ptr %bp, ptr @log_redrive_list, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @log_redrive_lock, i32 noundef %call2.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsIOthread to i32))
  %24 = load ptr, ptr @jfsIOthread, align 4
  %call5.i = tail call i32 @wake_up_process(ptr noundef %24) #8
  br label %cleanup

if.else37:                                        ; preds = %if.end34
  %and38 = and i32 %flag, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else41, label %if.then40

if.then40:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @lbmStartIO(ptr noundef %bp)
  br label %cleanup

if.else41:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  %gclock = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 23
  tail call void @_raw_spin_unlock_irq(ptr noundef %gclock) #8
  tail call fastcc void @lbmStartIO(ptr noundef %bp)
  tail call void @_raw_spin_lock_irq(ptr noundef %gclock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else41, %if.then40, %if.then36, %if.end29.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lbmIOWait(ptr noundef %bp, i32 noundef %flag) #0 align 64 {
entry:
  %__wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %0 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %do.end, label %entry.do.body5_crit_edge

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %l_flag = getelementptr inbounds %struct.lbuf, ptr %bp, i32 0, i32 1
  %1 = ptrtoint ptr %l_flag to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %l_flag, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %bp, i32 noundef %2, i32 noundef %flag) #11
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @jfsLCacheLock) #8
  %l_flag15 = getelementptr inbounds %struct.lbuf, ptr %bp, i32 0, i32 1
  %3 = ptrtoint ptr %l_flag15 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %l_flag15, align 4
  %and = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body18, label %do.body5.do.end185_crit_edge

do.body5.do.end185_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end185

do.body18:                                        ; preds = %do.body5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait) #8
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 1
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 2
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %__wait to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %__wait, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !290) #8
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @default_wake_function, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %7, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %8, align 4
  %l_ioevent = getelementptr inbounds %struct.lbuf, ptr %bp, i32 0, i32 11
  call void @add_wait_queue(ptr noundef %l_ioevent, ptr noundef nonnull %__wait) #8
  br label %__here

__here:                                           ; preds = %if.end95, %do.body18
  %flags.0 = phi i32 [ %call9, %do.body18 ], [ %call104, %if.end95 ]
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 212
  %20 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 ptrtoint (ptr blockaddress(@lbmIOWait, %__here) to i32), ptr %task_state_change, align 4
  %21 = load ptr, ptr %task, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 2, ptr %21, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !309
  %23 = ptrtoint ptr %l_flag15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %l_flag15, align 4
  %and92 = and i32 %24, 32
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end95, label %__here160

if.end95:                                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @jfsLCacheLock, i32 noundef %flags.0) #8
  call void @io_schedule() #8
  %call104 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @jfsLCacheLock) #8
  br label %__here

__here160:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %task_state_change164 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 212
  %27 = ptrtoint ptr %task_state_change164 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 ptrtoint (ptr blockaddress(@lbmIOWait, %__here160) to i32), ptr %task_state_change164, align 4
  %28 = load ptr, ptr %task, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 0, ptr %28, align 128
  call void @remove_wait_queue(ptr noundef %l_ioevent, ptr noundef nonnull %__wait) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait) #8
  br label %do.end185

do.end185:                                        ; preds = %__here160, %do.body5.do.end185_crit_edge
  %flags.1 = phi i32 [ %call9, %do.body5.do.end185_crit_edge ], [ %flags.0, %__here160 ]
  %30 = ptrtoint ptr %l_flag15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %l_flag15, align 4
  %and189 = and i32 %flag, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %do.end185.if.end192_crit_edge, label %if.then191

do.end185.if.end192_crit_edge:                    ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end192

if.then191:                                       ; preds = %do.end185
  %l_wqnext.i = getelementptr inbounds %struct.lbuf, ptr %bp, i32 0, i32 2
  %32 = ptrtoint ptr %l_wqnext.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %l_wqnext.i, align 8
  %cmp.i = icmp eq ptr %33, null
  br i1 %cmp.i, label %lbmfree.exit, label %do.end.i

do.end.i:                                         ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 1930, ptr noundef nonnull @.str.117) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_logmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1930, 0\0A.popsection", ""() #8, !srcloc !305
  unreachable

lbmfree.exit:                                     ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bp, align 8
  %lbuf_free.i = getelementptr inbounds %struct.jfs_log, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %lbuf_free.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lbuf_free.i, align 4
  %l_freelist.i = getelementptr inbounds %struct.lbuf, ptr %bp, i32 0, i32 3
  %38 = ptrtoint ptr %l_freelist.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %l_freelist.i, align 4
  store ptr %bp, ptr %lbuf_free.i, align 4
  %free_wait.i = getelementptr inbounds %struct.jfs_log, ptr %35, i32 0, i32 9
  call void @__wake_up(ptr noundef %free_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %if.end192

if.end192:                                        ; preds = %lbmfree.exit, %do.end185.if.end192_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @jfsLCacheLock, i32 noundef %flags.1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %39 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp194 = icmp sgt i32 %39, 3
  br i1 %cmp194, label %do.end199, label %if.end192.do.end205_crit_edge

if.end192.do.end205_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end205

do.end199:                                        ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %l_flag15 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %l_flag15, align 4
  %call202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef %bp, i32 noundef %41, i32 noundef %flag) #11
  br label %do.end205

do.end205:                                        ; preds = %do.end199, %if.end192.do.end205_crit_edge
  %and187 = and i32 %31, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  %cond = select i1 %tobool188.not, i32 0, i32 -5
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lbmDirectWrite(ptr nocapture noundef readonly %log, ptr noundef %bp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %0 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %l_pn = getelementptr inbounds %struct.lbuf, ptr %bp, i32 0, i32 4
  %1 = ptrtoint ptr %l_pn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %l_pn, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef %bp, i32 noundef 14, i32 noundef %2) #11
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %l_flag = getelementptr inbounds %struct.lbuf, ptr %bp, i32 0, i32 1
  %3 = ptrtoint ptr %l_flag to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 270, ptr %l_flag, align 4
  %base = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 4
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %base, align 8
  %l_pn3 = getelementptr inbounds %struct.lbuf, ptr %bp, i32 0, i32 4
  %6 = ptrtoint ptr %l_pn3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %l_pn3, align 8
  %l2bsize = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 6
  %8 = ptrtoint ptr %l2bsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %l2bsize, align 4
  %sub = sub i32 12, %9
  %shl = shl i32 %7, %sub
  %conv = sext i32 %shl to i64
  %add = add i64 %5, %conv
  %l_blkno = getelementptr inbounds %struct.lbuf, ptr %bp, i32 0, i32 7
  %10 = ptrtoint ptr %l_blkno to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %add, ptr %l_blkno, align 8
  tail call fastcc void @lbmStartIO(ptr noundef %bp)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lbmFree(ptr noundef %bp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @jfsLCacheLock) #8
  %l_wqnext.i = getelementptr inbounds %struct.lbuf, ptr %bp, i32 0, i32 2
  %0 = ptrtoint ptr %l_wqnext.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l_wqnext.i, align 8
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %lbmfree.exit, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 1930, ptr noundef nonnull @.str.117) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_logmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1930, 0\0A.popsection", ""() #8, !srcloc !305
  unreachable

lbmfree.exit:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bp, align 8
  %lbuf_free.i = getelementptr inbounds %struct.jfs_log, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %lbuf_free.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lbuf_free.i, align 4
  %l_freelist.i = getelementptr inbounds %struct.lbuf, ptr %bp, i32 0, i32 3
  %6 = ptrtoint ptr %l_freelist.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %l_freelist.i, align 4
  store ptr %bp, ptr %lbuf_free.i, align 4
  %free_wait.i = getelementptr inbounds %struct.jfs_log, ptr %3, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %free_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @jfsLCacheLock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lmLogClose(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %log1 = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %4 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp sgt i32 %4, 3
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %3) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @jfs_log_mutex, i32 noundef 0) #8
  %loglock = getelementptr inbounds %struct.jfs_log, ptr %3, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %loglock, i32 noundef 0) #8
  %log_list = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %log_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.end5.list_del.exit_crit_edge

do.end5.list_del.exit_crit_edge:                  ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %log_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %log_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end5.list_del.exit_crit_edge
  %11 = ptrtoint ptr %log_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %log_list, align 4
  %prev.i = getelementptr inbounds %struct.jfs_sb_info, ptr %1, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %loglock) #8
  %13 = ptrtoint ptr %log1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %log1, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %14 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bdev, align 4
  %call8 = tail call i32 @sync_blockdev(ptr noundef %15) #8
  %flag = getelementptr inbounds %struct.jfs_log, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flag, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 @lmLogShutdown(ptr noundef %3)
  br label %out.sink.split

if.end12:                                         ; preds = %list_del.exit
  %no_integrity = getelementptr inbounds %struct.jfs_log, ptr %3, i32 0, i32 34
  %19 = ptrtoint ptr %no_integrity to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %no_integrity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool13.not = icmp eq i32 %20, 0
  br i1 %tobool13.not, label %if.then14, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call fastcc i32 @lmLogFileSystem(ptr noundef %3, ptr noundef %1, i32 noundef 0)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %3, align 4
  %cmp.i.not = icmp eq ptr %22, %3
  br i1 %cmp.i.not, label %if.end20, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end20:                                         ; preds = %if.end16
  %23 = ptrtoint ptr %no_integrity to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %no_integrity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool22.not = icmp eq i32 %24, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end24:                                         ; preds = %if.end20
  %journal_list = getelementptr inbounds %struct.jfs_log, ptr %3, i32 0, i32 1
  %call.i.i56 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %journal_list) #8
  br i1 %call.i.i56, label %if.end.i.i59, label %if.end24.list_del.exit61_crit_edge

if.end24.list_del.exit61_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit61

if.end.i.i59:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i57 = getelementptr inbounds %struct.jfs_log, ptr %3, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i.i57 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i57, align 4
  %27 = ptrtoint ptr %journal_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %journal_list, align 4
  %prev1.i.i.i58 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i58, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit61

list_del.exit61:                                  ; preds = %if.end.i.i59, %if.end24.list_del.exit61_crit_edge
  %31 = ptrtoint ptr %journal_list to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %journal_list, align 4
  %prev.i60 = getelementptr inbounds %struct.jfs_log, ptr %3, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i60 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i60, align 4
  %bdev25 = getelementptr inbounds %struct.jfs_log, ptr %3, i32 0, i32 2
  %33 = ptrtoint ptr %bdev25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bdev25, align 8
  %call26 = tail call i32 @lmLogShutdown(ptr noundef %3)
  tail call void @blkdev_put(ptr noundef %34, i32 noundef 131) #8
  br label %out.sink.split

out.sink.split:                                   ; preds = %list_del.exit61, %if.then10
  %rc.0.ph = phi i32 [ %call26, %list_del.exit61 ], [ %call11, %if.then10 ]
  tail call void @kfree(ptr noundef %3) #8
  br label %out

out:                                              ; preds = %out.sink.split, %if.end20.out_crit_edge, %if.end16.out_crit_edge
  %rc.0 = phi i32 [ 0, %if.end20.out_crit_edge ], [ 0, %if.end16.out_crit_edge ], [ %rc.0.ph, %out.sink.split ]
  tail call void @mutex_unlock(ptr noundef nonnull @jfs_log_mutex) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %35 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp28 = icmp sgt i32 %35, 3
  br i1 %cmp28, label %do.end32, label %out.do.end37_crit_edge

out.do.end37_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end37

do.end32:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %rc.0) #11
  br label %do.end37

do.end37:                                         ; preds = %do.end32, %out.do.end37_crit_edge
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lmLogShutdown(ptr noundef %log) local_unnamed_addr #0 align 64 {
entry:
  %lrd = alloca %struct.lrd, align 4
  %bpsuper = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %lrd) #8
  %0 = getelementptr inbounds i8, ptr %lrd, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bpsuper) #8
  %2 = ptrtoint ptr %bpsuper to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bpsuper, align 4, !annotation !304
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %3 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp sgt i32 %3, 3
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %log) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void @jfs_flush_journal(ptr noundef %log, i32 noundef 2)
  %4 = ptrtoint ptr %lrd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %lrd, align 4
  %backchain = getelementptr inbounds %struct.lrd, ptr %lrd, i32 0, i32 1
  %5 = ptrtoint ptr %backchain to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %backchain, align 4
  %type = getelementptr inbounds %struct.lrd, ptr %lrd, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 64, ptr %type, align 4
  %length = getelementptr inbounds %struct.lrd, ptr %lrd, i32 0, i32 3
  %7 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %length, align 2
  %log4 = getelementptr inbounds %struct.lrd, ptr %lrd, i32 0, i32 5
  %8 = ptrtoint ptr %log4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %log4, align 4
  %call5 = call fastcc i32 @lmWriteRecord(ptr noundef %log, ptr noundef null, ptr noundef nonnull %lrd, ptr noundef null)
  %bp6 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 13
  %9 = ptrtoint ptr %bp6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bp6, align 8
  %l_ldata = getelementptr inbounds %struct.lbuf, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %l_ldata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %l_ldata, align 8
  %l_eor = getelementptr inbounds %struct.lbuf, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %l_eor to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %l_eor, align 4
  %conv = trunc i32 %14 to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %eor = getelementptr inbounds %struct.logpage, ptr %12, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %eor to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %eor, align 2
  %eor7 = getelementptr inbounds %struct.anon.88, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %eor7 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %15, ptr %eor7, align 2
  %18 = ptrtoint ptr %bp6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bp6, align 8
  tail call fastcc void @lbmWrite(ptr noundef %log, ptr noundef %19, i32 noundef 14, i32 noundef 0)
  %20 = ptrtoint ptr %bp6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bp6, align 8
  %call10 = tail call fastcc i32 @lbmIOWait(ptr noundef %21, i32 noundef 16)
  %22 = ptrtoint ptr %bp6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %bp6, align 8
  call fastcc void @lbmRead(ptr noundef %log, i32 noundef 1, ptr noundef nonnull %bpsuper)
  %23 = ptrtoint ptr %bpsuper to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bpsuper, align 4
  %l_ldata15 = getelementptr inbounds %struct.lbuf, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %l_ldata15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %l_ldata15, align 8
  %state = getelementptr inbounds %struct.logsuper, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16777216, ptr %state, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %call5)
  %end = getelementptr inbounds %struct.logsuper, ptr %26, i32 0, i32 8
  %29 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %end, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %30 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp.i = icmp sgt i32 %30, 3
  br i1 %cmp.i, label %do.end.i, label %do.end3.lbmDirectWrite.exit_crit_edge

do.end3.lbmDirectWrite.exit_crit_edge:            ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbmDirectWrite.exit

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %l_pn.i = getelementptr inbounds %struct.lbuf, ptr %24, i32 0, i32 4
  %31 = ptrtoint ptr %l_pn.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %l_pn.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef %24, i32 noundef 14, i32 noundef %32) #11
  br label %lbmDirectWrite.exit

lbmDirectWrite.exit:                              ; preds = %do.end.i, %do.end3.lbmDirectWrite.exit_crit_edge
  %l_flag.i = getelementptr inbounds %struct.lbuf, ptr %24, i32 0, i32 1
  %33 = ptrtoint ptr %l_flag.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 270, ptr %l_flag.i, align 4
  %base.i = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 4
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %base.i, align 8
  %l_pn3.i = getelementptr inbounds %struct.lbuf, ptr %24, i32 0, i32 4
  %36 = ptrtoint ptr %l_pn3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %l_pn3.i, align 8
  %l2bsize.i = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 6
  %38 = ptrtoint ptr %l2bsize.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %l2bsize.i, align 4
  %sub.i = sub i32 12, %39
  %shl.i = shl i32 %37, %sub.i
  %conv.i = sext i32 %shl.i to i64
  %add.i = add i64 %35, %conv.i
  %l_blkno.i = getelementptr inbounds %struct.lbuf, ptr %24, i32 0, i32 7
  %40 = ptrtoint ptr %l_blkno.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %add.i, ptr %l_blkno.i, align 8
  tail call fastcc void @lbmStartIO(ptr noundef %24) #8
  %call16 = tail call fastcc i32 @lbmIOWait(ptr noundef %24, i32 noundef 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %41 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp18 = icmp sgt i32 %41, 3
  br i1 %cmp18, label %out, label %lbmDirectWrite.exit.do.end3.i_crit_edge

lbmDirectWrite.exit.do.end3.i_crit_edge:          ; preds = %lbmDirectWrite.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

out:                                              ; preds = %lbmDirectWrite.exit
  %page = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 11
  %42 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %page, align 8
  %eor25 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 12
  %44 = ptrtoint ptr %eor25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %eor25, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %call5, i32 noundef %43, i32 noundef %45) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %.pr = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp.i63 = icmp sgt i32 %.pr, 3
  br i1 %cmp.i63, label %do.end.i65, label %out.do.end3.i_crit_edge

out.do.end3.i_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i65:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %call.i64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %log) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i65, %out.do.end3.i_crit_edge, %lbmDirectWrite.exit.do.end3.i_crit_edge
  %lbuf_free.i = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 8
  %46 = ptrtoint ptr %lbuf_free.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lbuf_free.i, align 4
  %tobool.not8.i = icmp eq ptr %47, null
  br i1 %tobool.not8.i, label %do.end3.i.lbmLogShutdown.exit_crit_edge, label %do.end3.i.while.body.i_crit_edge

do.end3.i.while.body.i_crit_edge:                 ; preds = %do.end3.i
  br label %while.body.i

do.end3.i.lbmLogShutdown.exit_crit_edge:          ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbmLogShutdown.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end3.i.while.body.i_crit_edge
  %lbuf.09.i = phi ptr [ %49, %while.body.i.while.body.i_crit_edge ], [ %47, %do.end3.i.while.body.i_crit_edge ]
  %l_freelist.i = getelementptr inbounds %struct.lbuf, ptr %lbuf.09.i, i32 0, i32 3
  %48 = ptrtoint ptr %l_freelist.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %l_freelist.i, align 4
  %l_page.i = getelementptr inbounds %struct.lbuf, ptr %lbuf.09.i, i32 0, i32 9
  %50 = ptrtoint ptr %l_page.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %l_page.i, align 4
  tail call void @__free_pages(ptr noundef %51, i32 noundef 0) #8
  tail call void @kfree(ptr noundef nonnull %lbuf.09.i) #8
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %while.body.i.lbmLogShutdown.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.lbmLogShutdown.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbmLogShutdown.exit

lbmLogShutdown.exit:                              ; preds = %while.body.i.lbmLogShutdown.exit_crit_edge, %do.end3.i.lbmLogShutdown.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool30.not = icmp eq i32 %call16, 0
  br i1 %tobool30.not, label %lbmLogShutdown.exit.if.end44_crit_edge, label %do.body32

lbmLogShutdown.exit.if.end44_crit_edge:           ; preds = %lbmLogShutdown.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

do.body32:                                        ; preds = %lbmLogShutdown.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %52 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp33 = icmp sgt i32 %52, 1
  br i1 %cmp33, label %do.end38, label %do.body32.if.end44_crit_edge

do.body32.if.end44_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

do.end38:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %call16) #11
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %do.body32.if.end44_crit_edge, %lbmLogShutdown.exit.if.end44_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bpsuper) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %lrd) #8
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jfs_flush_journal(ptr noundef %log, i32 noundef %wait) #0 align 64 {
entry:
  %__wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %log, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %0 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %do.end, label %do.body.do.end5_crit_edge

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull %log, i32 noundef %wait) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %gclock = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 23
  tail call void @_raw_spin_lock_irq(ptr noundef %gclock) #8
  %cqueue = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 19
  %1 = ptrtoint ptr %cqueue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %cqueue, align 4
  %cmp.i.not = icmp eq ptr %2, %cqueue
  br i1 %cmp.i.not, label %do.end5.if.end25_crit_edge, label %if.then8

do.end5.if.end25_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then8:                                         ; preds = %do.end5
  %prev = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 19, i32 1
  %3 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 -84
  %flag = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 7
  %5 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flag, align 4
  %7 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not = icmp eq i32 %7, 0
  %flush_tblk18 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 20
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then8
  %8 = ptrtoint ptr %flush_tblk18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %flush_tblk18, align 8
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %if.then13.if.end25_crit_edge, label %if.then15

if.then13.if.end25_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %flush_tblk18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %flush_tblk18, align 8
  br label %if.end25

if.else:                                          ; preds = %if.then8
  %11 = ptrtoint ptr %flush_tblk18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %flush_tblk18, align 8
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flag) #8
  %cflag = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 18
  %12 = ptrtoint ptr %cflag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cflag, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.then21, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then21:                                        ; preds = %if.else
  %or = or i32 %13, 1
  %14 = ptrtoint ptr %cflag to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %cflag, align 4
  %15 = ptrtoint ptr %cqueue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cqueue, align 8
  %pn.i = getelementptr i8, ptr %16, i32 16
  %17 = ptrtoint ptr %pn.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pn.i, align 4
  %cmp.not66.i = icmp eq ptr %16, %cqueue
  br i1 %cmp.not66.i, label %if.then21.for.end.i_crit_edge, label %if.then21.if.end.i_crit_edge

if.then21.if.end.i_crit_edge:                     ; preds = %if.then21
  br label %if.end.i

if.then21.for.end.i_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %if.end.i
  %pn8.i = getelementptr i8, ptr %25, i32 16
  %19 = ptrtoint ptr %pn8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pn8.i, align 4
  %cmp9.not.i = icmp eq i32 %20, %18
  br i1 %cmp9.not.i, label %for.body.i.if.end.i_crit_edge, label %for.body.i.for.end.loopexit.i_crit_edge

for.body.i.for.end.loopexit.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.loopexit.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %if.then21.if.end.i_crit_edge
  %.pn6878.i = phi ptr [ %25, %for.body.i.if.end.i_crit_edge ], [ %16, %if.then21.if.end.i_crit_edge ]
  %flag.i = getelementptr i8, ptr %.pn6878.i, i32 -82
  %21 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %flag.i, align 2
  %23 = or i16 %22, 4
  store i16 %23, ptr %flag.i, align 2
  %24 = ptrtoint ptr %.pn6878.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %.pn6878.i, align 4
  %cmp.not.i = icmp eq ptr %25, %cqueue
  br i1 %cmp.not.i, label %if.end.i.for.end.loopexit.i_crit_edge, label %for.body.i

if.end.i.for.end.loopexit.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.loopexit.i

for.end.loopexit.i:                               ; preds = %if.end.i.for.end.loopexit.i_crit_edge, %for.body.i.for.end.loopexit.i_crit_edge
  %tblk.069.le.i = getelementptr i8, ptr %.pn6878.i, i32 -84
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %if.then21.for.end.i_crit_edge
  %xtblk.0.lcssa.i = phi ptr [ null, %if.then21.for.end.i_crit_edge ], [ %tblk.069.le.i, %for.end.loopexit.i ]
  %bp16.i = getelementptr inbounds %struct.tblock, ptr %xtblk.0.lcssa.i, i32 0, i32 12
  %26 = ptrtoint ptr %bp16.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bp16.i, align 4
  %l_ldata.i = getelementptr inbounds %struct.lbuf, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %l_ldata.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %l_ldata.i, align 8
  %flag17.i = getelementptr inbounds %struct.tblock, ptr %xtblk.0.lcssa.i, i32 0, i32 1
  %30 = ptrtoint ptr %flag17.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flag17.i, align 2
  %32 = and i16 %31, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.not.i = icmp eq i16 %32, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then19.i

if.then19.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %and22.i = and i16 %31, -49
  %33 = or i16 %and22.i, 32
  %34 = ptrtoint ptr %flag17.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %flag17.i, align 2
  %l_eor.i = getelementptr inbounds %struct.lbuf, ptr %27, i32 0, i32 5
  br label %lmGCwrite.exit

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %eor31.i = getelementptr inbounds %struct.tblock, ptr %xtblk.0.lcssa.i, i32 0, i32 14
  br label %lmGCwrite.exit

lmGCwrite.exit:                                   ; preds = %if.else.i, %if.then19.i
  %eor31.sink.i = phi ptr [ %eor31.i, %if.else.i ], [ %l_eor.i, %if.then19.i ]
  %.sink.i = phi i32 [ 130, %if.else.i ], [ 134, %if.then19.i ]
  %lmStat.4.sink71.i = phi ptr [ @lmStat.4, %if.else.i ], [ @lmStat.3, %if.then19.i ]
  %35 = ptrtoint ptr %eor31.sink.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %eor31.sink.i, align 4
  %l_ceor32.i = getelementptr inbounds %struct.lbuf, ptr %27, i32 0, i32 6
  %37 = ptrtoint ptr %l_ceor32.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %l_ceor32.i, align 8
  %conv34.i = trunc i32 %36 to i16
  %38 = tail call i16 @llvm.bswap.i16(i16 %conv34.i) #8
  %eor36.i = getelementptr inbounds %struct.logpage, ptr %29, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %eor36.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %eor36.i, align 2
  %eor38.i = getelementptr inbounds %struct.anon.88, ptr %29, i32 0, i32 2
  %40 = ptrtoint ptr %eor38.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %38, ptr %eor38.i, align 2
  tail call fastcc void @lbmWrite(ptr noundef %log, ptr noundef %27, i32 noundef %.sink.i, i32 noundef 0) #8
  %41 = ptrtoint ptr %lmStat.4.sink71.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %lmStat.4.sink71.i, align 4
  %inc39.i = add i32 %42, 1
  store i32 %inc39.i, ptr %lmStat.4.sink71.i, align 4
  br label %if.end25

if.end25:                                         ; preds = %lmGCwrite.exit, %if.else.if.end25_crit_edge, %if.then15, %if.then13.if.end25_crit_edge, %do.end5.if.end25_crit_edge
  %target.0 = phi ptr [ null, %do.end5.if.end25_crit_edge ], [ %add.ptr, %if.then15 ], [ %add.ptr, %if.then13.if.end25_crit_edge ], [ %add.ptr, %if.else.if.end25_crit_edge ], [ %add.ptr, %lmGCwrite.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %wait)
  %cmp26 = icmp sgt i32 %wait, 1
  br i1 %cmp26, label %if.end25.if.then30_crit_edge, label %lor.lhs.false

if.end25.if.then30_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

lor.lhs.false:                                    ; preds = %if.end25
  %flag27 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 7
  %43 = ptrtoint ptr %flag27 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %flag27, align 4
  %45 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool29.not = icmp eq i32 %45, 0
  br i1 %tobool29.not, label %lor.lhs.false.if.end33_crit_edge, label %lor.lhs.false.if.then30_crit_edge

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %if.end25.if.then30_crit_edge
  %flag31 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flag31) #8
  %flush_tblk32 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 20
  %46 = ptrtoint ptr %flush_tblk32 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %flush_tblk32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %lor.lhs.false.if.end33_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool34.not = icmp eq i32 %wait, 0
  %tobool35.not = icmp eq ptr %target.0, null
  %or.cond = select i1 %tobool34.not, i1 true, i1 %tobool35.not
  br i1 %or.cond, label %if.end33.if.end116_crit_edge, label %land.lhs.true36

if.end33.if.end116_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

land.lhs.true36:                                  ; preds = %if.end33
  %flag37 = getelementptr inbounds %struct.tblock, ptr %target.0, i32 0, i32 1
  %47 = ptrtoint ptr %flag37 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %flag37, align 2
  %49 = and i16 %48, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool39.not = icmp eq i16 %49, 0
  br i1 %tobool39.not, label %if.then40, label %land.lhs.true36.if.end116_crit_edge

land.lhs.true36.if.end116_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then40:                                        ; preds = %land.lhs.true36
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait) #8
  %50 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 1
  %51 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 2
  %52 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3
  %53 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %__wait to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %__wait, align 4
  %55 = tail call i32 @llvm.read_register.i32(metadata !290) #8
  %and.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task, align 8
  %59 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %50, align 4
  %60 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @default_wake_function, ptr %51, align 4
  %61 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %52, align 4
  %62 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %53, align 4
  %gcwait = getelementptr inbounds %struct.tblock, ptr %target.0, i32 0, i32 15
  call void @add_wait_queue(ptr noundef %gcwait, ptr noundef nonnull %__wait) #8
  br label %__here

__here:                                           ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 212
  %65 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 ptrtoint (ptr blockaddress(@jfs_flush_journal, %__here) to i32), ptr %task_state_change, align 4
  %66 = load ptr, ptr %task, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 2, ptr %66, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !310
  call void @_raw_spin_unlock_irq(ptr noundef %gclock) #8
  call void @schedule() #8
  call void @_raw_spin_lock_irq(ptr noundef %gclock) #8
  call void @remove_wait_queue(ptr noundef %gcwait, ptr noundef nonnull %__wait) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait) #8
  br label %if.end116

if.end116:                                        ; preds = %__here, %land.lhs.true36.if.end116_crit_edge, %if.end33.if.end116_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %gclock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %wait)
  %cmp118 = icmp slt i32 %wait, 2
  br i1 %cmp118, label %if.end116.cleanup_crit_edge, label %if.end121

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end121:                                        ; preds = %if.end116
  %68 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn18.i = load ptr, ptr %log, align 4
  %cmp.not19.i = icmp eq ptr %.pn18.i, %log
  br i1 %cmp.not19.i, label %if.end121.write_special_inodes.exit_crit_edge, label %if.end121.for.body.i246_crit_edge

if.end121.for.body.i246_crit_edge:                ; preds = %if.end121
  br label %for.body.i246

if.end121.write_special_inodes.exit_crit_edge:    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_special_inodes.exit

for.body.i246:                                    ; preds = %for.body.i246.for.body.i246_crit_edge, %if.end121.for.body.i246_crit_edge
  %.pn20.i = phi ptr [ %.pn.i, %for.body.i246.for.body.i246_crit_edge ], [ %.pn18.i, %if.end121.for.body.i246_crit_edge ]
  %ipbmap.i = getelementptr i8, ptr %.pn20.i, i32 -20
  %69 = ptrtoint ptr %ipbmap.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ipbmap.i, align 4
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %70, i32 0, i32 9
  %71 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i_mapping.i, align 8
  %call.i = call i32 @filemap_fdatawrite(ptr noundef %72) #8, !callees !301
  %ipimap.i = getelementptr i8, ptr %.pn20.i, i32 -8
  %73 = ptrtoint ptr %ipimap.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ipimap.i, align 4
  %i_mapping2.i = getelementptr inbounds %struct.inode, ptr %74, i32 0, i32 9
  %75 = ptrtoint ptr %i_mapping2.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i_mapping2.i, align 8
  %call3.i = call i32 @filemap_fdatawrite(ptr noundef %76) #8, !callees !301
  %direct_inode.i = getelementptr i8, ptr %.pn20.i, i32 104
  %77 = ptrtoint ptr %direct_inode.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %direct_inode.i, align 4
  %i_mapping4.i = getelementptr inbounds %struct.inode, ptr %78, i32 0, i32 9
  %79 = ptrtoint ptr %i_mapping4.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %i_mapping4.i, align 8
  %call5.i = call i32 @filemap_fdatawrite(ptr noundef %80) #8, !callees !301
  %81 = ptrtoint ptr %.pn20.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pn.i = load ptr, ptr %.pn20.i, align 4
  %cmp.not.i245 = icmp eq ptr %.pn.i, %log
  br i1 %cmp.not.i245, label %for.body.i246.write_special_inodes.exit_crit_edge, label %for.body.i246.for.body.i246_crit_edge

for.body.i246.for.body.i246_crit_edge:            ; preds = %for.body.i246
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i246

for.body.i246.write_special_inodes.exit_crit_edge: ; preds = %for.body.i246
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_special_inodes.exit

write_special_inodes.exit:                        ; preds = %for.body.i246.write_special_inodes.exit_crit_edge, %if.end121.write_special_inodes.exit_crit_edge
  %82 = ptrtoint ptr %cqueue to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %cqueue, align 4
  %cmp.i248.not = icmp eq ptr %83, %cqueue
  br i1 %cmp.i248.not, label %lor.lhs.false125, label %write_special_inodes.exit.if.then128_crit_edge

write_special_inodes.exit.if.then128_crit_edge:   ; preds = %write_special_inodes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then128

lor.lhs.false125:                                 ; preds = %write_special_inodes.exit
  %synclist = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 29
  %84 = ptrtoint ptr %synclist to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %synclist, align 4
  %cmp.i250.not = icmp eq ptr %85, %synclist
  br i1 %cmp.i250.not, label %lor.lhs.false125.do.body141_crit_edge, label %lor.lhs.false125.if.then128_crit_edge

lor.lhs.false125.if.then128_crit_edge:            ; preds = %lor.lhs.false125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then128

lor.lhs.false125.do.body141_crit_edge:            ; preds = %lor.lhs.false125
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body141

if.then128:                                       ; preds = %lor.lhs.false125.if.then128_crit_edge, %write_special_inodes.exit.if.then128_crit_edge
  %synclist135 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 29
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %if.then128
  %i.0277 = phi i32 [ 0, %if.then128 ], [ %i.0277.be, %for.body.backedge ]
  call void @msleep(i32 noundef 250) #8
  %86 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pn18.i252 = load ptr, ptr %log, align 4
  %cmp.not19.i253 = icmp eq ptr %.pn18.i252, %log
  br i1 %cmp.not19.i253, label %for.body.write_special_inodes.exit268_crit_edge, label %for.body.for.body.i266_crit_edge

for.body.for.body.i266_crit_edge:                 ; preds = %for.body
  br label %for.body.i266

for.body.write_special_inodes.exit268_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_special_inodes.exit268

for.body.i266:                                    ; preds = %for.body.i266.for.body.i266_crit_edge, %for.body.for.body.i266_crit_edge
  %.pn20.i254 = phi ptr [ %.pn.i264, %for.body.i266.for.body.i266_crit_edge ], [ %.pn18.i252, %for.body.for.body.i266_crit_edge ]
  %ipbmap.i255 = getelementptr i8, ptr %.pn20.i254, i32 -20
  %87 = ptrtoint ptr %ipbmap.i255 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ipbmap.i255, align 4
  %i_mapping.i256 = getelementptr inbounds %struct.inode, ptr %88, i32 0, i32 9
  %89 = ptrtoint ptr %i_mapping.i256 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %i_mapping.i256, align 8
  %call.i257 = call i32 @filemap_fdatawrite(ptr noundef %90) #8, !callees !301
  %ipimap.i258 = getelementptr i8, ptr %.pn20.i254, i32 -8
  %91 = ptrtoint ptr %ipimap.i258 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ipimap.i258, align 4
  %i_mapping2.i259 = getelementptr inbounds %struct.inode, ptr %92, i32 0, i32 9
  %93 = ptrtoint ptr %i_mapping2.i259 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %i_mapping2.i259, align 8
  %call3.i260 = call i32 @filemap_fdatawrite(ptr noundef %94) #8, !callees !301
  %direct_inode.i261 = getelementptr i8, ptr %.pn20.i254, i32 104
  %95 = ptrtoint ptr %direct_inode.i261 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %direct_inode.i261, align 4
  %i_mapping4.i262 = getelementptr inbounds %struct.inode, ptr %96, i32 0, i32 9
  %97 = ptrtoint ptr %i_mapping4.i262 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %i_mapping4.i262, align 8
  %call5.i263 = call i32 @filemap_fdatawrite(ptr noundef %98) #8, !callees !301
  %99 = ptrtoint ptr %.pn20.i254 to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pn.i264 = load ptr, ptr %.pn20.i254, align 4
  %cmp.not.i265 = icmp eq ptr %.pn.i264, %log
  br i1 %cmp.not.i265, label %for.body.i266.write_special_inodes.exit268_crit_edge, label %for.body.i266.for.body.i266_crit_edge

for.body.i266.for.body.i266_crit_edge:            ; preds = %for.body.i266
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i266

for.body.i266.write_special_inodes.exit268_crit_edge: ; preds = %for.body.i266
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_special_inodes.exit268

write_special_inodes.exit268:                     ; preds = %for.body.i266.write_special_inodes.exit268_crit_edge, %for.body.write_special_inodes.exit268_crit_edge
  %100 = ptrtoint ptr %cqueue to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile ptr, ptr %cqueue, align 4
  %cmp.i269.not = icmp eq ptr %101, %cqueue
  br i1 %cmp.i269.not, label %land.lhs.true134, label %for.inc

land.lhs.true134:                                 ; preds = %write_special_inodes.exit268
  %102 = ptrtoint ptr %synclist135 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile ptr, ptr %synclist135, align 4
  %cmp.i271.not = icmp ne ptr %103, %synclist135
  %inc = add i32 %i.0277, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %inc)
  %cmp129 = icmp slt i32 %inc, 200
  %or.cond283 = select i1 %cmp.i271.not, i1 %cmp129, i1 false
  br i1 %or.cond283, label %land.lhs.true134.for.body.backedge_crit_edge, label %land.lhs.true134.do.body141_crit_edge

land.lhs.true134.do.body141_crit_edge:            ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body141

land.lhs.true134.for.body.backedge_crit_edge:     ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.backedge

for.inc:                                          ; preds = %write_special_inodes.exit268
  %inc.old = add i32 %i.0277, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %inc.old)
  %cmp129.old = icmp slt i32 %inc.old, 200
  br i1 %cmp129.old, label %for.inc.for.body.backedge_crit_edge, label %for.inc.do.body141_crit_edge

for.inc.do.body141_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body141

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %land.lhs.true134.for.body.backedge_crit_edge
  %i.0277.be = phi i32 [ %inc.old, %for.inc.for.body.backedge_crit_edge ], [ %inc, %land.lhs.true134.for.body.backedge_crit_edge ]
  br label %for.body

do.body141:                                       ; preds = %for.inc.do.body141_crit_edge, %land.lhs.true134.do.body141_crit_edge, %lor.lhs.false125.do.body141_crit_edge
  %104 = ptrtoint ptr %cqueue to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile ptr, ptr %cqueue, align 4
  %cmp.i273.not = icmp eq ptr %105, %cqueue
  br i1 %cmp.i273.not, label %do.end159, label %do.end148

do.end148:                                        ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  %call150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 1596, ptr noundef nonnull @.str.53) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_logmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1596, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

do.end159:                                        ; preds = %do.body141
  %synclist160 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 29
  %106 = ptrtoint ptr %synclist160 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile ptr, ptr %synclist160, align 4
  %cmp.i275.not = icmp eq ptr %107, %synclist160
  br i1 %cmp.i275.not, label %do.end159.if.end195_crit_edge, label %if.then163

do.end159.if.end195_crit_edge:                    ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end195

if.then163:                                       ; preds = %do.end159
  %call168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #11
  %108 = ptrtoint ptr %synclist160 to i32
  call void @__asan_load4_noabort(i32 %108)
  %.pn278 = load ptr, ptr %synclist160, align 4
  %cmp177.not280 = icmp eq ptr %.pn278, %synclist160
  br i1 %cmp177.not280, label %if.then163.if.end195_crit_edge, label %if.then163.for.body181_crit_edge

if.then163.for.body181_crit_edge:                 ; preds = %if.then163
  br label %for.body181

if.then163.if.end195_crit_edge:                   ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end195

for.body181:                                      ; preds = %for.inc188.for.body181_crit_edge, %if.then163.for.body181_crit_edge
  %.pn281 = phi ptr [ %.pn, %for.inc188.for.body181_crit_edge ], [ %.pn278, %if.then163.for.body181_crit_edge ]
  %lp.0282 = getelementptr i8, ptr %.pn281, i32 -12
  %109 = ptrtoint ptr %lp.0282 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %lp.0282, align 4
  %111 = and i16 %110, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool184.not = icmp eq i16 %111, 0
  br i1 %tobool184.not, label %if.else186, label %if.then185

if.then185:                                       ; preds = %for.body181
  call void @__sanitizer_cov_trace_pc() #10
  call void @print_hex_dump(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %lp.0282, i32 noundef 120, i1 noundef zeroext false) #8
  %page = getelementptr i8, ptr %.pn281, i32 80
  %112 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %page, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.59, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %113, i32 noundef 36, i1 noundef zeroext false) #8
  br label %for.inc188

if.else186:                                       ; preds = %for.body181
  call void @__sanitizer_cov_trace_pc() #10
  call void @print_hex_dump(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.60, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %lp.0282, i32 noundef 172, i1 noundef zeroext false) #8
  br label %for.inc188

for.inc188:                                       ; preds = %if.else186, %if.then185
  %114 = ptrtoint ptr %.pn281 to i32
  call void @__asan_load4_noabort(i32 %114)
  %.pn = load ptr, ptr %.pn281, align 4
  %cmp177.not = icmp eq ptr %.pn, %synclist160
  br i1 %cmp177.not, label %for.inc188.if.end195_crit_edge, label %for.inc188.for.body181_crit_edge

for.inc188.for.body181_crit_edge:                 ; preds = %for.inc188
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body181

for.inc188.if.end195_crit_edge:                   ; preds = %for.inc188
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end195

if.end195:                                        ; preds = %for.inc188.if.end195_crit_edge, %if.then163.if.end195_crit_edge, %do.end159.if.end195_crit_edge
  %flag196 = getelementptr inbounds %struct.jfs_log, ptr %log, i32 0, i32 7
  call void @_clear_bit(i32 noundef 4, ptr noundef %flag196) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end195, %if.end116.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jfsIOWait(ptr nocapture readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %do.cond69.do.body_crit_edge, %entry
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @log_redrive_lock) #8
  %0 = load ptr, ptr @log_redrive_list, align 4
  %tobool.not92 = icmp eq ptr %0, null
  br i1 %tobool.not92, label %do.body.while.end_crit_edge, label %do.body.while.body_crit_edge

do.body.while.body_crit_edge:                     ; preds = %do.body
  br label %while.body

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.body.while.body_crit_edge
  %1 = phi ptr [ %4, %while.body.while.body_crit_edge ], [ %0, %do.body.while.body_crit_edge ]
  %l_freelist = getelementptr inbounds %struct.lbuf, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %l_freelist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %l_freelist, align 4
  store ptr %3, ptr @log_redrive_list, align 4
  store ptr null, ptr %l_freelist, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @log_redrive_lock) #8
  tail call fastcc void @lbmStartIO(ptr noundef nonnull %1)
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @log_redrive_lock) #8
  %4 = load ptr, ptr @log_redrive_list, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.body.while.end_crit_edge
  %5 = tail call i32 @llvm.read_register.i32(metadata !290) #8
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %9 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %while.end.__here_crit_edge, label %freezing.exit, !prof !307

while.end.__here_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

freezing.exit:                                    ; preds = %while.end
  %call4.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %8) #8
  br i1 %call4.i, label %if.then, label %freezing.exit.__here_crit_edge

freezing.exit.__here_crit_edge:                   ; preds = %freezing.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

if.then:                                          ; preds = %freezing.exit
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @log_redrive_lock) #8
  %10 = tail call i32 @llvm.read_register.i32(metadata !290) #8
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i88 = and i32 %15, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i88)
  %tobool.not.i89 = icmp eq i32 %and.i88, 0
  br i1 %tobool.not.i89, label %if.then.i, label %if.then.if.end.i90_crit_edge

if.then.if.end.i90_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i90

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_check_no_locks_held() #8
  br label %if.end.i90

if.end.i90:                                       ; preds = %if.then.i, %if.then.if.end.i90_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.149, i32 noundef 57) #8
  %16 = tail call i32 @llvm.read_register.i32(metadata !290) #8
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %20 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i.i, label %if.end.i90.do.cond69_crit_edge, label %freezing.exit.i.i, !prof !307

if.end.i90.do.cond69_crit_edge:                   ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond69

freezing.exit.i.i:                                ; preds = %if.end.i90
  %call4.i.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %19) #8
  br i1 %call4.i.i.i, label %if.end.i.i, label %freezing.exit.i.i.do.cond69_crit_edge, !prof !312

freezing.exit.i.i.do.cond69_crit_edge:            ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond69

if.end.i.i:                                       ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #8
  br label %do.cond69

__here:                                           ; preds = %freezing.exit.__here_crit_edge, %while.end.__here_crit_edge
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 212
  %23 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 ptrtoint (ptr blockaddress(@jfsIOWait, %__here) to i32), ptr %task_state_change, align 4
  %24 = load ptr, ptr %task, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 1, ptr %24, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !313
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @log_redrive_lock) #8
  tail call void @schedule() #8
  br label %do.cond69

do.cond69:                                        ; preds = %__here, %if.end.i.i, %freezing.exit.i.i.do.cond69_crit_edge, %if.end.i90.do.cond69_crit_edge
  %call70 = tail call zeroext i1 @kthread_should_stop() #8
  br i1 %call70, label %do.body74, label %do.cond69.do.body_crit_edge

do.cond69.do.body_crit_edge:                      ; preds = %do.cond69
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body74:                                        ; preds = %do.cond69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %26 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp = icmp sgt i32 %26, 3
  br i1 %cmp, label %do.end78, label %do.body74.do.end83_crit_edge

do.body74.do.end83_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end83

do.end78:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #10
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #11
  br label %do.end83

do.end83:                                         ; preds = %do.end78, %do.body74.do.end83_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lbmStartIO(ptr noundef %bp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bp, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %2 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp sgt i32 %2, 3
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call.i = tail call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #8
  %l_blkno = getelementptr inbounds %struct.lbuf, ptr %bp, i32 0, i32 7
  %3 = ptrtoint ptr %l_blkno to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %l_blkno, align 8
  %l2bsize = getelementptr inbounds %struct.jfs_log, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %l2bsize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %l2bsize, align 4
  %sub = add i32 %6, -9
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 %4, %sh_prom
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %shl, ptr %bi_iter, align 8
  %bdev = getelementptr inbounds %struct.jfs_log, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bdev, align 8
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %11, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %13, %9
  br i1 %cmp.not.i, label %do.end3.bio_set_dev.exit_crit_edge, label %if.then.i

do.end3.bio_set_dev.exit_crit_edge:               ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i8.i = and i16 %11, -2177
  %14 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %do.end3.bio_set_dev.exit_crit_edge
  %15 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %9, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i) #8
  %l_page = getelementptr inbounds %struct.lbuf, ptr %bp, i32 0, i32 9
  %16 = ptrtoint ptr %l_page to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %l_page, align 4
  %l_offset = getelementptr inbounds %struct.lbuf, ptr %bp, i32 0, i32 10
  %18 = ptrtoint ptr %l_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %l_offset, align 8
  %call5 = tail call i32 @bio_add_page(ptr noundef %call.i, ptr noundef %17, i32 noundef 4096, i32 noundef %19) #8
  %bi_size = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %21)
  %cmp8.not = icmp eq i32 %21, 4096
  br i1 %cmp8.not, label %do.end19, label %do.body11, !prof !307

do.body11:                                        ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_logmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2133, 0\0A.popsection", ""() #8, !srcloc !314
  unreachable

do.end19:                                         ; preds = %bio_set_dev.exit
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 10
  %22 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @lbmIODone, ptr %bi_end_io, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 11
  %23 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %bp, ptr %bi_private, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2049, ptr %bi_opf, align 8
  %no_integrity = getelementptr inbounds %struct.jfs_log, ptr %1, i32 0, i32 34
  %25 = ptrtoint ptr %no_integrity to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %no_integrity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool20.not = icmp eq i32 %26, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %bi_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %bi_size, align 8
  tail call void @lbmIODone(ptr noundef %call.i)
  br label %if.end24

if.else:                                          ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @submit_bio(ptr noundef %call.i) #8
  %28 = load i32, ptr @lmStat.2, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr @lmStat.2, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lmLogFormat(ptr noundef %log, i64 noundef %logAddress, i32 noundef %logSize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %0 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i64 noundef %logAddress, i32 noundef %logSize) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %1 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %log, align 8
  %call5 = tail call fastcc ptr @lbmAllocate(ptr noundef %log, i32 noundef 1)
  %l2nbperpage = getelementptr i8, ptr %2, i32 14
  %3 = ptrtoint ptr %l2nbperpage to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %l2nbperpage, align 2
  %conv95 = zext i16 %4 to i32
  %shr = ashr i32 %logSize, %conv95
  %l_ldata = getelementptr inbounds %struct.lbuf, ptr %call5, i32 0, i32 8
  %5 = ptrtoint ptr %l_ldata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %l_ldata, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 558065031, ptr %6, align 4
  %version = getelementptr inbounds %struct.logsuper, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16777216, ptr %version, align 4
  %state = getelementptr inbounds %struct.logsuper, ptr %6, i32 0, i32 7
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16777216, ptr %state, align 4
  %mntflag = getelementptr i8, ptr %2, i32 -24
  %10 = ptrtoint ptr %mntflag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mntflag, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %flag = getelementptr inbounds %struct.logsuper, ptr %6, i32 0, i32 6
  %13 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %flag, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %size = getelementptr inbounds %struct.logsuper, ptr %6, i32 0, i32 3
  %15 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %size, align 4
  %bsize = getelementptr i8, ptr %2, i32 8
  %16 = ptrtoint ptr %bsize to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bsize, align 4
  %conv6 = sext i16 %17 to i32
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv6)
  %bsize7 = getelementptr inbounds %struct.logsuper, ptr %6, i32 0, i32 4
  %19 = ptrtoint ptr %bsize7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %bsize7, align 4
  %l2bsize = getelementptr i8, ptr %2, i32 10
  %20 = ptrtoint ptr %l2bsize to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %l2bsize, align 2
  %conv8 = sext i16 %21 to i32
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv8)
  %l2bsize9 = getelementptr inbounds %struct.logsuper, ptr %6, i32 0, i32 5
  %23 = ptrtoint ptr %l2bsize9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %l2bsize9, align 4
  %end = getelementptr inbounds %struct.logsuper, ptr %6, i32 0, i32 8
  %24 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 740294656, ptr %end, align 4
  %l_flag = getelementptr inbounds %struct.lbuf, ptr %call5, i32 0, i32 1
  %25 = ptrtoint ptr %l_flag to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 266, ptr %l_flag, align 4
  %nbperpage = getelementptr i8, ptr %2, i32 12
  %26 = ptrtoint ptr %nbperpage to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %nbperpage, align 4
  %conv10 = sext i16 %27 to i64
  %add = add i64 %conv10, %logAddress
  %l_blkno = getelementptr inbounds %struct.lbuf, ptr %call5, i32 0, i32 7
  %28 = ptrtoint ptr %l_blkno to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %add, ptr %l_blkno, align 8
  tail call fastcc void @lbmStartIO(ptr noundef %call5)
  %call11 = tail call fastcc i32 @lbmIOWait(ptr noundef %call5, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end13, label %do.end3.exit_crit_edge

do.end3.exit_crit_edge:                           ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end13:                                         ; preds = %do.end3
  %29 = ptrtoint ptr %l_ldata to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %l_ldata, align 8
  %sub = add i32 %shr, -3
  %31 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %t = getelementptr inbounds %struct.logpage, ptr %30, i32 0, i32 2
  %32 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %t, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %30, align 4
  %eor = getelementptr inbounds %struct.logpage, ptr %30, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %eor to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 11264, ptr %eor, align 2
  %eor18 = getelementptr inbounds %struct.anon.88, ptr %30, i32 0, i32 2
  %35 = ptrtoint ptr %eor18 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 11264, ptr %eor18, align 2
  %data = getelementptr inbounds %struct.logpage, ptr %30, i32 0, i32 1
  %36 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %data, align 4
  %backchain = getelementptr inbounds %struct.logpage, ptr %30, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %backchain to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %backchain, align 4
  %type = getelementptr inbounds %struct.logpage, ptr %30, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 64, ptr %type, align 4
  %length = getelementptr inbounds %struct.lrd, ptr %data, i32 0, i32 3
  %39 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %length, align 2
  %log19 = getelementptr inbounds %struct.logpage, ptr %30, i32 0, i32 1, i32 4
  %40 = ptrtoint ptr %log19 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %log19, align 4
  %41 = ptrtoint ptr %nbperpage to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %nbperpage, align 4
  %conv21 = sext i16 %42 to i64
  %43 = ptrtoint ptr %l_blkno to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %l_blkno, align 8
  %add23 = add i64 %44, %conv21
  store i64 %add23, ptr %l_blkno, align 8
  %45 = ptrtoint ptr %l_flag to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 266, ptr %l_flag, align 4
  tail call fastcc void @lbmStartIO(ptr noundef %call5)
  %call25 = tail call fastcc i32 @lbmIOWait(ptr noundef %call5, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.cond.preheader, label %if.end13.exit_crit_edge

if.end13.exit_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

for.cond.preheader:                               ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp3096 = icmp sgt i32 %sub, 0
  br i1 %cmp3096, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.exit_crit_edge

for.cond.preheader.exit_crit_edge:                ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %lspn.097, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.cond.exit_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.exit_crit_edge:                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %lspn.097 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %46 = tail call i32 @llvm.bswap.i32(i32 %lspn.097)
  %47 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %t, align 4
  %48 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %46, ptr %30, align 4
  %49 = ptrtoint ptr %eor to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 2048, ptr %eor, align 2
  %50 = ptrtoint ptr %eor18 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 2048, ptr %eor18, align 2
  %51 = ptrtoint ptr %nbperpage to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %nbperpage, align 4
  %conv41 = sext i16 %52 to i64
  %53 = ptrtoint ptr %l_blkno to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %l_blkno, align 8
  %add43 = add i64 %54, %conv41
  store i64 %add43, ptr %l_blkno, align 8
  %55 = ptrtoint ptr %l_flag to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 266, ptr %l_flag, align 4
  tail call fastcc void @lbmStartIO(ptr noundef %call5)
  %call45 = tail call fastcc i32 @lbmIOWait(ptr noundef %call5, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %for.cond, label %for.body.exit_crit_edge

for.body.exit_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

exit:                                             ; preds = %for.body.exit_crit_edge, %for.cond.exit_crit_edge, %for.cond.preheader.exit_crit_edge, %if.end13.exit_crit_edge, %do.end3.exit_crit_edge
  %rc.0 = phi i32 [ %call11, %do.end3.exit_crit_edge ], [ %call25, %if.end13.exit_crit_edge ], [ 0, %for.cond.preheader.exit_crit_edge ], [ %call45, %for.body.exit_crit_edge ], [ 0, %for.cond.exit_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @jfsLCacheLock) #8
  %l_wqnext.i.i = getelementptr inbounds %struct.lbuf, ptr %call5, i32 0, i32 2
  %56 = ptrtoint ptr %l_wqnext.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %l_wqnext.i.i, align 8
  %cmp.i.i = icmp eq ptr %57, null
  br i1 %cmp.i.i, label %lbmFree.exit, label %do.end.i.i

do.end.i.i:                                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 1930, ptr noundef nonnull @.str.117) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_logmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1930, 0\0A.popsection", ""() #8, !srcloc !305
  unreachable

lbmFree.exit:                                     ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call5, align 8
  %lbuf_free.i.i = getelementptr inbounds %struct.jfs_log, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %lbuf_free.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %lbuf_free.i.i, align 4
  %l_freelist.i.i = getelementptr inbounds %struct.lbuf, ptr %call5, i32 0, i32 3
  %62 = ptrtoint ptr %l_freelist.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %l_freelist.i.i, align 4
  store ptr %call5, ptr %lbuf_free.i.i, align 4
  %free_wait.i.i = getelementptr inbounds %struct.jfs_log, ptr %59, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %free_wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @jfsLCacheLock, i32 noundef %call2.i) #8
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jfs_lmstats_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @lmStat.0, align 4
  %1 = load i32, ptr @lmStat.2, align 4
  %2 = load i32, ptr @lmStat.1, align 4
  %3 = load i32, ptr @lmStat.3, align 4
  %4 = load i32, ptr @lmStat.4, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.73, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lbmIODone(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %2 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp sgt i32 %2, 3
  br i1 %cmp, label %do.end, label %entry.do.body5_crit_edge

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %l_flag = getelementptr inbounds %struct.lbuf, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %l_flag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %l_flag, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %1, i32 noundef %4) #11
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @jfsLCacheLock) #8
  %l_flag14 = getelementptr inbounds %struct.lbuf, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %l_flag14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %l_flag14, align 4
  %or = or i32 %6, 32
  store i32 %or, ptr %l_flag14, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %7 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %do.body5.if.end30_crit_edge, label %if.then15

do.body5.if.end30_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then15:                                        ; preds = %do.body5
  %or17 = or i32 %6, 96
  %9 = ptrtoint ptr %l_flag14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or17, ptr %l_flag14, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %10 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp19 = icmp sgt i32 %10, 0
  br i1 %cmp19, label %do.end24, label %if.then15.if.end30_crit_edge

if.then15.if.end30_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

do.end24:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123) #11
  br label %if.end30

if.end30:                                         ; preds = %do.end24, %if.then15.if.end30_crit_edge, %do.body5.if.end30_crit_edge
  tail call void @bio_put(ptr noundef %bio) #8
  %11 = ptrtoint ptr %l_flag14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %l_flag14, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.end36, label %if.then33

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %and35 = and i32 %12, -2
  %13 = ptrtoint ptr %l_flag14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and35, ptr %l_flag14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @jfsLCacheLock, i32 noundef %call9) #8
  %l_ioevent = getelementptr inbounds %struct.lbuf, ptr %1, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %l_ioevent, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  %and38 = and i32 %12, -3
  %14 = ptrtoint ptr %l_flag14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and38, ptr %l_flag14, align 4
  %15 = load i32, ptr @lmStat.1, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr @lmStat.1, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %l_pn = getelementptr inbounds %struct.lbuf, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %l_pn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %l_pn, align 8
  %shl = shl i32 %19, 12
  %l_ceor = getelementptr inbounds %struct.lbuf, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %l_ceor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %l_ceor, align 8
  %add = add i32 %shl, %21
  %clsn = getelementptr inbounds %struct.jfs_log, ptr %17, i32 0, i32 26
  %22 = ptrtoint ptr %clsn to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %clsn, align 8
  %23 = load i32, ptr %l_flag14, align 4
  %and40 = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end44, label %if.then42

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %l_ioevent43 = getelementptr inbounds %struct.lbuf, ptr %1, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %l_ioevent43, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @jfsLCacheLock, i32 noundef %call9) #8
  br label %cleanup

if.end44:                                         ; preds = %if.end36
  %wqueue = getelementptr inbounds %struct.jfs_log, ptr %17, i32 0, i32 31
  %24 = ptrtoint ptr %wqueue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wqueue, align 8
  %cmp45 = icmp eq ptr %1, %25
  %and49 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %cmp45, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.end44
  br i1 %tobool50.not, label %if.then47.if.end67_crit_edge, label %if.then51

if.then47.if.end67_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then51:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %wqueue to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %wqueue, align 8
  %l_wqnext = getelementptr inbounds %struct.lbuf, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %l_wqnext to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %l_wqnext, align 8
  br label %if.end67

if.else:                                          ; preds = %if.end44
  br i1 %tobool50.not, label %if.else.if.end67_crit_edge, label %if.then57

if.else.if.end67_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then57:                                        ; preds = %if.else
  %l_wqnext58 = getelementptr inbounds %struct.lbuf, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %l_wqnext58 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %l_wqnext58, align 8
  %l_wqnext59 = getelementptr inbounds %struct.lbuf, ptr %25, i32 0, i32 2
  %30 = ptrtoint ptr %l_wqnext59 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %l_wqnext59, align 8
  store ptr null, ptr %l_wqnext58, align 8
  %l_flag61 = getelementptr inbounds %struct.lbuf, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %l_flag61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %l_flag61, align 4
  %and62 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.then57.if.end67_crit_edge, label %if.then64

if.then57.if.end67_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then64:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @log_redrive_lock) #8
  %33 = load ptr, ptr @log_redrive_list, align 4
  %l_freelist.i = getelementptr inbounds %struct.lbuf, ptr %29, i32 0, i32 3
  %34 = ptrtoint ptr %l_freelist.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %l_freelist.i, align 4
  store ptr %29, ptr @log_redrive_list, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @log_redrive_lock, i32 noundef %call2.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsIOthread to i32))
  %35 = load ptr, ptr @jfsIOthread, align 4
  %call5.i = tail call i32 @wake_up_process(ptr noundef %35) #8
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.then57.if.end67_crit_edge, %if.else.if.end67_crit_edge, %if.then51, %if.then47.if.end67_crit_edge
  %36 = ptrtoint ptr %l_flag14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %l_flag14, align 4
  %and69 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.else73, label %if.then71

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @jfsLCacheLock, i32 noundef %call9) #8
  %l_ioevent72 = getelementptr inbounds %struct.lbuf, ptr %1, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %l_ioevent72, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

if.else73:                                        ; preds = %if.end67
  %and75 = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body79, label %if.then77

if.then77:                                        ; preds = %if.else73
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @jfsLCacheLock, i32 noundef %call9) #8
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %gclock.i = getelementptr inbounds %struct.jfs_log, ptr %39, i32 0, i32 23
  %call2.i159 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gclock.i) #8
  %cqueue.i = getelementptr inbounds %struct.jfs_log, ptr %39, i32 0, i32 19
  %40 = ptrtoint ptr %cqueue.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cqueue.i, align 8
  %cmp13.not.i168 = icmp eq ptr %41, %cqueue.i
  br i1 %cmp13.not.i168, label %if.then77.for.end.i_crit_edge, label %for.body.i.lr.ph

if.then77.for.end.i_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.lr.ph:                                 ; preds = %if.then77
  %flush_tblk.i = getelementptr inbounds %struct.jfs_log, ptr %39, i32 0, i32 20
  %flag31.i = getelementptr inbounds %struct.jfs_log, ptr %39, i32 0, i32 7
  %gcrtc.i = getelementptr inbounds %struct.jfs_log, ptr %39, i32 0, i32 21
  %l_wqnext.i.i = getelementptr inbounds %struct.lbuf, ptr %1, i32 0, i32 2
  %l_freelist.i.i = getelementptr inbounds %struct.lbuf, ptr %1, i32 0, i32 3
  %l_ldata.i = getelementptr inbounds %struct.lbuf, ptr %1, i32 0, i32 8
  %l_eor.i = getelementptr inbounds %struct.lbuf, ptr %1, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.lr.ph
  %.pn.in.i169 = phi ptr [ %41, %for.body.i.lr.ph ], [ %.pn.i173, %for.inc.i.for.body.i_crit_edge ]
  %tblk.0.i171 = getelementptr i8, ptr %.pn.in.i169, i32 -84
  %42 = ptrtoint ptr %.pn.in.i169 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn.i173 = load ptr, ptr %.pn.in.i169, align 4
  %flag.i = getelementptr i8, ptr %.pn.in.i169, i32 -82
  %43 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %flag.i, align 2
  %45 = and i16 %44, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool.not.i = icmp eq i16 %45, 0
  br i1 %tobool.not.i, label %for.body.i.for.end.i_crit_edge, label %if.end.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  %46 = ptrtoint ptr %l_flag14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %l_flag14, align 4
  %and16.i = and i32 %47, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end.i.if.end22.i_crit_edge, label %if.then18.i

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i16 %44, 128
  %48 = ptrtoint ptr %flag.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %or.i, ptr %flag.i, align 2
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then18.i, %if.end.i.if.end22.i_crit_edge
  %call.i.i164 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i169) #8
  br i1 %call.i.i164, label %if.end.i.i, label %if.end22.i.list_del.exit_crit_edge

if.end22.i.list_del.exit_crit_edge:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i169, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i, align 4
  %51 = ptrtoint ptr %.pn.in.i169 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %.pn.in.i169, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end22.i.list_del.exit_crit_edge
  %55 = ptrtoint ptr %.pn.in.i169 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i169, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i169, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %57 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %flag.i, align 2
  %59 = and i16 %58, -2
  store i16 %59, ptr %flag.i, align 2
  %60 = ptrtoint ptr %flush_tblk.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %flush_tblk.i, align 8
  %cmp28.i = icmp eq ptr %tblk.0.i171, %61
  br i1 %cmp28.i, label %if.then30.i, label %list_del.exit.do.body34.i_crit_edge

list_del.exit.do.body34.i_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34.i

if.then30.i:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flag31.i) #8
  %62 = ptrtoint ptr %flush_tblk.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %flush_tblk.i, align 8
  br label %do.body34.i

do.body34.i:                                      ; preds = %if.then30.i, %list_del.exit.do.body34.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %63 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %cmp35.i = icmp sgt i32 %63, 3
  br i1 %cmp35.i, label %do.end40.i, label %do.body34.i.do.end47.i_crit_edge

do.body34.i.do.end47.i_crit_edge:                 ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47.i

do.end40.i:                                       ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %flag.i, align 2
  %conv43.i = zext i16 %65 to i32
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %tblk.0.i171, i32 noundef %conv43.i) #11
  br label %do.end47.i

do.end47.i:                                       ; preds = %do.end40.i, %do.body34.i.do.end47.i_crit_edge
  %66 = ptrtoint ptr %tblk.0.i171 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %tblk.0.i171, align 4
  %68 = and i16 %67, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool50.not.i = icmp eq i16 %68, 0
  br i1 %tobool50.not.i, label %if.then51.i, label %if.else.i

if.then51.i:                                      ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @txLazyUnlock(ptr noundef %tblk.0.i171) #8
  br label %if.end62.i

if.else.i:                                        ; preds = %do.end47.i
  %69 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %flag.i, align 2
  %71 = or i16 %70, 8
  store i16 %71, ptr %flag.i, align 2
  %72 = and i16 %70, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool59.not.i = icmp eq i16 %72, 0
  br i1 %tobool59.not.i, label %if.else.i.if.end61.i_crit_edge, label %if.then60.i

if.else.i.if.end61.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.i

if.then60.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %gcrtc.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %gcrtc.i, align 4
  %dec.i = add i32 %74, -1
  store i32 %dec.i, ptr %gcrtc.i, align 4
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then60.i, %if.else.i.if.end61.i_crit_edge
  %gcwait.i = getelementptr i8, ptr %.pn.in.i169, i32 24
  tail call void @__wake_up(ptr noundef %gcwait.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.end61.i, %if.then51.i
  %75 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %flag.i, align 2
  %conv64.i = zext i16 %76 to i32
  %and65.i = and i32 %conv64.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %if.else68.i, label %if.then67.i

if.then67.i:                                      ; preds = %if.end62.i
  %call2.i163 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @jfsLCacheLock) #8
  %77 = ptrtoint ptr %l_wqnext.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %l_wqnext.i.i, align 8
  %cmp.i.i = icmp eq ptr %78, null
  br i1 %cmp.i.i, label %lbmFree.exit, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 1930, ptr noundef nonnull @.str.117) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_logmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1930, 0\0A.popsection", ""() #8, !srcloc !305
  unreachable

lbmFree.exit:                                     ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 8
  %lbuf_free.i.i = getelementptr inbounds %struct.jfs_log, ptr %80, i32 0, i32 8
  %81 = ptrtoint ptr %lbuf_free.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lbuf_free.i.i, align 4
  %83 = ptrtoint ptr %l_freelist.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %l_freelist.i.i, align 4
  store ptr %1, ptr %lbuf_free.i.i, align 4
  %free_wait.i.i = getelementptr inbounds %struct.jfs_log, ptr %80, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %free_wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @jfsLCacheLock, i32 noundef %call2.i163) #8
  br label %for.inc.i

if.else68.i:                                      ; preds = %if.end62.i
  %and71.i = and i32 %conv64.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %tobool72.not.i = icmp eq i32 %and71.i, 0
  br i1 %tobool72.not.i, label %if.else68.i.for.inc.i_crit_edge, label %if.then73.i

if.else68.i.for.inc.i_crit_edge:                  ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then73.i:                                      ; preds = %if.else68.i
  %84 = ptrtoint ptr %l_ldata.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %l_ldata.i, align 8
  %86 = ptrtoint ptr %l_eor.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %l_eor.i, align 4
  %88 = ptrtoint ptr %l_ceor to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %l_ceor, align 8
  %conv75.i = trunc i32 %87 to i16
  %89 = tail call i16 @llvm.bswap.i16(i16 %conv75.i) #8
  %eor.i = getelementptr inbounds %struct.logpage, ptr %85, i32 0, i32 2, i32 2
  %90 = ptrtoint ptr %eor.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %eor.i, align 2
  %eor76.i = getelementptr inbounds %struct.anon.88, ptr %85, i32 0, i32 2
  %91 = ptrtoint ptr %eor76.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %89, ptr %eor76.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %92 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %92)
  %cmp78.i = icmp sgt i32 %92, 3
  br i1 %cmp78.i, label %do.end83.i, label %if.then73.i.do.end88.i_crit_edge

if.then73.i.do.end88.i_crit_edge:                 ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end88.i

do.end83.i:                                       ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #10
  %call85.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134) #11
  br label %do.end88.i

do.end88.i:                                       ; preds = %do.end83.i, %if.then73.i.do.end88.i_crit_edge
  tail call fastcc void @lbmWrite(ptr noundef %39, ptr noundef %1, i32 noundef 22, i32 noundef 1) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end88.i, %if.else68.i.for.inc.i_crit_edge, %lbmFree.exit
  %cmp13.not.i = icmp eq ptr %.pn.i173, %cqueue.i
  br i1 %cmp13.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.then77.for.end.i_crit_edge
  %.pn.in.i.lcssa = phi ptr [ %cqueue.i, %if.then77.for.end.i_crit_edge ], [ %.pn.in.i169, %for.body.i.for.end.i_crit_edge ], [ %cqueue.i, %for.inc.i.for.end.i_crit_edge ]
  %93 = ptrtoint ptr %cqueue.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile ptr, ptr %cqueue.i, align 4
  %cmp.i162.not = icmp eq ptr %94, %cqueue.i
  br i1 %cmp.i162.not, label %for.end.i.if.else112.i_crit_edge, label %land.lhs.true.i

for.end.i.if.else112.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else112.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %gcrtc99.i = getelementptr inbounds %struct.jfs_log, ptr %39, i32 0, i32 21
  %95 = ptrtoint ptr %gcrtc99.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %gcrtc99.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp100.i = icmp sgt i32 %96, 0
  br i1 %cmp100.i, label %land.lhs.true.i.if.end.i178.preheader_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.if.end.i178.preheader_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i178.preheader

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %bp102.i = getelementptr i8, ptr %.pn.in.i.lcssa, i32 12
  %97 = ptrtoint ptr %bp102.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bp102.i, align 4
  %l_wqnext.i = getelementptr inbounds %struct.lbuf, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %l_wqnext.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %l_wqnext.i, align 8
  %cmp103.not.i = icmp eq ptr %100, null
  br i1 %cmp103.not.i, label %lor.lhs.false105.i, label %lor.lhs.false.i.if.end.i178.preheader_crit_edge

lor.lhs.false.i.if.end.i178.preheader_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i178.preheader

lor.lhs.false105.i:                               ; preds = %lor.lhs.false.i
  %flag106.i = getelementptr inbounds %struct.jfs_log, ptr %39, i32 0, i32 7
  %101 = ptrtoint ptr %flag106.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %flag106.i, align 4
  %103 = and i32 %102, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool108.not.i = icmp eq i32 %103, 0
  br i1 %tobool108.not.i, label %lor.lhs.false109.i, label %lor.lhs.false105.i.if.end.i178.preheader_crit_edge

lor.lhs.false105.i.if.end.i178.preheader_crit_edge: ; preds = %lor.lhs.false105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i178.preheader

lor.lhs.false109.i:                               ; preds = %lor.lhs.false105.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfs_tlocks_low to i32))
  %104 = load i32, ptr @jfs_tlocks_low, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool110.not.i = icmp eq i32 %104, 0
  br i1 %tobool110.not.i, label %lor.lhs.false109.i.if.else112.i_crit_edge, label %lor.lhs.false109.i.if.end.i178.preheader_crit_edge

lor.lhs.false109.i.if.end.i178.preheader_crit_edge: ; preds = %lor.lhs.false109.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i178.preheader

lor.lhs.false109.i.if.else112.i_crit_edge:        ; preds = %lor.lhs.false109.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else112.i

if.end.i178.preheader:                            ; preds = %lor.lhs.false109.i.if.end.i178.preheader_crit_edge, %lor.lhs.false105.i.if.end.i178.preheader_crit_edge, %lor.lhs.false.i.if.end.i178.preheader_crit_edge, %land.lhs.true.i.if.end.i178.preheader_crit_edge
  %pn.i = getelementptr i8, ptr %94, i32 16
  %105 = ptrtoint ptr %pn.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pn.i, align 4
  br label %if.end.i178

for.body.i176:                                    ; preds = %if.end.i178
  %pn8.i = getelementptr i8, ptr %113, i32 16
  %107 = ptrtoint ptr %pn8.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %pn8.i, align 4
  %cmp9.not.i = icmp eq i32 %108, %106
  br i1 %cmp9.not.i, label %for.body.i176.if.end.i178_crit_edge, label %for.body.i176.for.end.i181_crit_edge

for.body.i176.for.end.i181_crit_edge:             ; preds = %for.body.i176
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i181

for.body.i176.if.end.i178_crit_edge:              ; preds = %for.body.i176
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i178

if.end.i178:                                      ; preds = %for.body.i176.if.end.i178_crit_edge, %if.end.i178.preheader
  %.pn68.i186 = phi ptr [ %113, %for.body.i176.if.end.i178_crit_edge ], [ %94, %if.end.i178.preheader ]
  %flag.i177 = getelementptr i8, ptr %.pn68.i186, i32 -82
  %109 = ptrtoint ptr %flag.i177 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %flag.i177, align 2
  %111 = or i16 %110, 4
  store i16 %111, ptr %flag.i177, align 2
  %112 = ptrtoint ptr %.pn68.i186 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %.pn68.i186, align 4
  %cmp.not.i = icmp eq ptr %113, %cqueue.i
  br i1 %cmp.not.i, label %if.end.i178.for.end.i181_crit_edge, label %for.body.i176

if.end.i178.for.end.i181_crit_edge:               ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i181

for.end.i181:                                     ; preds = %if.end.i178.for.end.i181_crit_edge, %for.body.i176.for.end.i181_crit_edge
  %bp16.i = getelementptr i8, ptr %.pn68.i186, i32 12
  %114 = ptrtoint ptr %bp16.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bp16.i, align 4
  %l_ldata.i179 = getelementptr inbounds %struct.lbuf, ptr %115, i32 0, i32 8
  %116 = ptrtoint ptr %l_ldata.i179 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %l_ldata.i179, align 8
  %118 = and i16 %110, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %tobool.not.i180 = icmp eq i16 %118, 0
  br i1 %tobool.not.i180, label %if.else.i183, label %if.then19.i

if.then19.i:                                      ; preds = %for.end.i181
  call void @__sanitizer_cov_trace_pc() #10
  %flag.i177.le = getelementptr i8, ptr %.pn68.i186, i32 -82
  %and22.i = and i16 %111, -49
  %119 = or i16 %and22.i, 32
  %120 = ptrtoint ptr %flag.i177.le to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %119, ptr %flag.i177.le, align 2
  %l_eor.i182 = getelementptr inbounds %struct.lbuf, ptr %115, i32 0, i32 5
  br label %lmGCwrite.exit

if.else.i183:                                     ; preds = %for.end.i181
  call void @__sanitizer_cov_trace_pc() #10
  %eor31.i = getelementptr i8, ptr %.pn68.i186, i32 20
  br label %lmGCwrite.exit

lmGCwrite.exit:                                   ; preds = %if.else.i183, %if.then19.i
  %eor31.sink.i = phi ptr [ %eor31.i, %if.else.i183 ], [ %l_eor.i182, %if.then19.i ]
  %.sink.i = phi i32 [ 130, %if.else.i183 ], [ 134, %if.then19.i ]
  %lmStat.4.sink71.i = phi ptr [ @lmStat.4, %if.else.i183 ], [ @lmStat.3, %if.then19.i ]
  %121 = ptrtoint ptr %eor31.sink.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %eor31.sink.i, align 4
  %l_ceor32.i = getelementptr inbounds %struct.lbuf, ptr %115, i32 0, i32 6
  %123 = ptrtoint ptr %l_ceor32.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %l_ceor32.i, align 8
  %conv34.i = trunc i32 %122 to i16
  %124 = tail call i16 @llvm.bswap.i16(i16 %conv34.i) #8
  %eor36.i = getelementptr inbounds %struct.logpage, ptr %117, i32 0, i32 2, i32 2
  %125 = ptrtoint ptr %eor36.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %eor36.i, align 2
  %eor38.i = getelementptr inbounds %struct.anon.88, ptr %117, i32 0, i32 2
  %126 = ptrtoint ptr %eor38.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %124, ptr %eor38.i, align 2
  tail call fastcc void @lbmWrite(ptr noundef %39, ptr noundef %115, i32 noundef %.sink.i, i32 noundef 1) #8
  %127 = ptrtoint ptr %lmStat.4.sink71.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %lmStat.4.sink71.i, align 4
  %inc39.i = add i32 %128, 1
  store i32 %inc39.i, ptr %lmStat.4.sink71.i, align 4
  br label %lmPostGC.exit

if.else112.i:                                     ; preds = %lor.lhs.false109.i.if.else112.i_crit_edge, %for.end.i.if.else112.i_crit_edge
  %cflag.i = getelementptr inbounds %struct.jfs_log, ptr %39, i32 0, i32 18
  %129 = ptrtoint ptr %cflag.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %cflag.i, align 4
  %and113.i = and i32 %130, -2
  store i32 %and113.i, ptr %cflag.i, align 4
  br label %lmPostGC.exit

lmPostGC.exit:                                    ; preds = %if.else112.i, %lmGCwrite.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gclock.i, i32 noundef %call2.i159) #8
  br label %cleanup

do.body79:                                        ; preds = %if.else73
  %and81 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.end86, label %do.body98

do.end86:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 2313, ptr noundef nonnull @.str.127) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_logmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2313, 0\0A.popsection", ""() #8, !srcloc !315
  unreachable

do.body98:                                        ; preds = %do.body79
  %and100 = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %do.end105, label %do.end116

do.end105:                                        ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #10
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 2314, ptr noundef nonnull @.str.130) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_logmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2314, 0\0A.popsection", ""() #8, !srcloc !316
  unreachable

do.end116:                                        ; preds = %do.body98
  %l_wqnext.i160 = getelementptr inbounds %struct.lbuf, ptr %1, i32 0, i32 2
  %131 = ptrtoint ptr %l_wqnext.i160 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %l_wqnext.i160, align 8
  %cmp.i = icmp eq ptr %132, null
  br i1 %cmp.i, label %lbmfree.exit, label %do.end.i

do.end.i:                                         ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 1930, ptr noundef nonnull @.str.117) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jfs/jfs_logmgr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1930, 0\0A.popsection", ""() #8, !srcloc !305
  unreachable

lbmfree.exit:                                     ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #10
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %1, align 8
  %lbuf_free.i = getelementptr inbounds %struct.jfs_log, ptr %134, i32 0, i32 8
  %135 = ptrtoint ptr %lbuf_free.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %lbuf_free.i, align 4
  %l_freelist.i161 = getelementptr inbounds %struct.lbuf, ptr %1, i32 0, i32 3
  %137 = ptrtoint ptr %l_freelist.i161 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %136, ptr %l_freelist.i161, align 4
  store ptr %1, ptr %lbuf_free.i, align 4
  %free_wait.i = getelementptr inbounds %struct.jfs_log, ptr %134, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %free_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @jfsLCacheLock, i32 noundef %call9) #8
  br label %cleanup

cleanup:                                          ; preds = %lbmfree.exit, %lmPostGC.exit, %if.then71, %if.then42, %if.then33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @txLazyUnlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 158)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 158)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !16, !17, !18, !19, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !101, !103, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !134, !136, !138, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !174, !176, !177, !178, !179, !181, !182, !184, !185, !187, !189, !190, !191, !192, !194, !195, !196, !198, !199, !200, !201, !203, !204, !206, !207, !209, !211, !213, !214, !215, !216, !218, !219, !221, !222, !224, !225, !226, !227, !229, !230, !231, !232, !234, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !254, !256, !257, !258, !260, !261, !262, !263, !265, !266, !267, !268, !270, !271, !272, !273, !275, !276, !278, !279, !280, !282, !283, !285, !286, !287, !288}
!llvm.named.register.sp = !{!290}
!llvm.module.flags = !{!291, !292, !293, !294, !295, !296, !297, !298}
!llvm.ident = !{!299}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jfs/jfs_logmgr.c", i32 233, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @lmLog._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @lmLog._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/jfs/jfs_logmgr.c", i32 680, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @lmGroupCommit._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @lmGroupCommit._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../fs/jfs/jfs_logmgr.c", i32 721, i32 2}
!13 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/jfs/jfs_logmgr.c", i32 1083, i32 5}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @lmLogOpen._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @lmLogOpen._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @lmLogOpen.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../fs/jfs/jfs_logmgr.c", i32 1103, i32 2}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/jfs/jfs_logmgr.c", i32 1158, i32 2}
!24 = !{ptr @lmLogOpen._entry.9, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @lmLogOpen._entry_ptr.11, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/jfs/jfs_logmgr.c", i32 1258, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @lmLogInit._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @lmLogInit._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @lmLogInit.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../fs/jfs/jfs_logmgr.c", i32 1261, i32 2}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @lmLogInit.__key.15, !35, !"__key", i1 false, i1 false}
!35 = !{!"../fs/jfs/jfs_logmgr.c", i32 1264, i32 2}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @lmLogInit.__key.17, !38, !"__key", i1 false, i1 false}
!38 = !{!"../fs/jfs/jfs_logmgr.c", i32 1266, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/jfs/jfs_logmgr.c", i32 1304, i32 4}
!42 = !{ptr @lmLogInit._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @lmLogInit._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/jfs/jfs_logmgr.c", i32 1311, i32 4}
!46 = !{ptr @lmLogInit._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @lmLogInit._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/jfs/jfs_logmgr.c", i32 1322, i32 4}
!50 = !{ptr @lmLogInit._entry.25, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @lmLogInit._entry_ptr.27, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/jfs/jfs_logmgr.c", i32 1326, i32 5}
!54 = !{ptr @lmLogInit._entry.28, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @lmLogInit._entry_ptr.30, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/jfs/jfs_logmgr.c", i32 1332, i32 4}
!58 = !{ptr @lmLogInit._entry.31, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @lmLogInit._entry_ptr.33, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/jfs/jfs_logmgr.c", i32 1348, i32 3}
!62 = !{ptr @lmLogInit._entry.34, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @lmLogInit._entry_ptr.36, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/jfs/jfs_logmgr.c", i32 1402, i32 2}
!66 = !{ptr @lmLogInit._entry.37, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @lmLogInit._entry_ptr.39, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/jfs/jfs_logmgr.c", i32 1426, i32 2}
!70 = !{ptr @lmLogInit._entry.40, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @lmLogInit._entry_ptr.42, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.43, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/jfs/jfs_logmgr.c", i32 1450, i32 2}
!74 = !{ptr @.str.44, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @lmLogClose._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @lmLogClose._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/jfs/jfs_logmgr.c", i32 1502, i32 2}
!79 = !{ptr @lmLogClose._entry.45, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @lmLogClose._entry_ptr.47, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/jfs/jfs_logmgr.c", i32 1526, i32 2}
!83 = !{ptr @.str.49, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @jfs_flush_journal._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @jfs_flush_journal._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../fs/jfs/jfs_logmgr.c", i32 1570, i32 3}
!88 = !{ptr @.str.51, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/jfs/jfs_logmgr.c", i32 1596, i32 2}
!90 = !{ptr @jfs_flush_journal._entry.50, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @jfs_flush_journal._entry_ptr.52, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.53, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.55, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/jfs/jfs_logmgr.c", i32 1602, i32 3}
!95 = !{ptr @jfs_flush_journal._entry.54, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @jfs_flush_journal._entry_ptr.56, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.57, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/jfs/jfs_logmgr.c", i32 1606, i32 20}
!99 = !{ptr @.str.58, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/jfs/jfs_logmgr.c", i32 1606, i32 30}
!101 = !{ptr @.str.59, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/jfs/jfs_logmgr.c", i32 1609, i32 30}
!103 = !{ptr @.str.60, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/jfs/jfs_logmgr.c", i32 1614, i32 30}
!105 = !{ptr @.str.61, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/jfs/jfs_logmgr.c", i32 1649, i32 2}
!107 = !{ptr @.str.62, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @lmLogShutdown._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @lmLogShutdown._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.64, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/jfs/jfs_logmgr.c", i32 1685, i32 2}
!112 = !{ptr @lmLogShutdown._entry.63, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @lmLogShutdown._entry_ptr.65, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.67, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/jfs/jfs_logmgr.c", i32 1695, i32 3}
!116 = !{ptr @lmLogShutdown._entry.66, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @lmLogShutdown._entry_ptr.68, !115, !"_entry_ptr", i1 false, i1 false}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../fs/jfs/jfs_logmgr.c", i32 2339, i32 4}
!120 = !{ptr @.str.69, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/jfs/jfs_logmgr.c", i32 2345, i32 2}
!122 = !{ptr @.str.70, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @jfsIOWait._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @jfsIOWait._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.71, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/jfs/jfs_logmgr.c", i32 2376, i32 2}
!127 = !{ptr @.str.72, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @lmLogFormat._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @lmLogFormat._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.73, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/jfs/jfs_logmgr.c", i32 2487, i32 10}
!132 = !{ptr @log_redrive_list, !133, !"log_redrive_list", i1 false, i1 false}
!133 = !{!"../fs/jfs/jfs_logmgr.c", i32 73, i32 21}
!134 = distinct !{null, !135, !"lmStat", i1 false, i1 false}
!135 = !{!"../fs/jfs/jfs_logmgr.c", i32 198, i32 3}
!136 = !{ptr @.str.74, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/jfs/jfs_logmgr.c", i32 400, i32 3}
!138 = !{ptr @.str.75, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @lmWriteRecord._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @lmWriteRecord._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @lmWriteRecord._entry.76, !142, !"_entry", i1 false, i1 false}
!142 = !{!"../fs/jfs/jfs_logmgr.c", i32 406, i32 2}
!143 = !{ptr @lmWriteRecord._entry_ptr.77, !142, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.78, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.80, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/jfs/jfs_logmgr.c", i32 459, i32 3}
!147 = !{ptr @lmWriteRecord._entry.79, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @lmWriteRecord._entry_ptr.81, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.83, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/jfs/jfs_logmgr.c", i32 501, i32 4}
!151 = !{ptr @lmWriteRecord._entry.82, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @lmWriteRecord._entry_ptr.84, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.86, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/jfs/jfs_logmgr.c", i32 528, i32 3}
!155 = !{ptr @lmWriteRecord._entry.85, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @lmWriteRecord._entry_ptr.87, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.88, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/jfs/jfs_logmgr.c", i32 993, i32 3}
!159 = !{ptr @.str.89, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @lmLogSync._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @lmLogSync._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.91, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/jfs/jfs_logmgr.c", i32 1027, i32 3}
!164 = !{ptr @lmLogSync._entry.90, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @lmLogSync._entry_ptr.92, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.93, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/jfs/jfs_logmgr.c", i32 158, i32 8}
!168 = !{ptr @.str.94, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @jfs_log_mutex, !167, !"jfs_log_mutex", i1 false, i1 false}
!170 = !{ptr @jfs_external_logs, !171, !"jfs_external_logs", i1 false, i1 false}
!171 = !{!"../fs/jfs/jfs_logmgr.c", i32 156, i32 8}
!172 = !{ptr @open_inline_log.__key, !173, !"__key", i1 false, i1 false}
!173 = !{!"../fs/jfs/jfs_logmgr.c", i32 1170, i32 2}
!174 = !{ptr @.str.95, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/jfs/jfs_logmgr.c", i32 1178, i32 2}
!176 = !{ptr @open_inline_log._entry, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @open_inline_log._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.96, !175, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @open_inline_log._entry.97, !180, !"_entry", i1 false, i1 false}
!180 = !{!"../fs/jfs/jfs_logmgr.c", i32 1185, i32 3}
!181 = !{ptr @open_inline_log._entry_ptr.98, !180, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @open_dummy_log.__key, !183, !"__key", i1 false, i1 false}
!183 = !{!"../fs/jfs/jfs_logmgr.c", i32 1207, i32 3}
!184 = !{ptr @.str.99, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @dummy_log, !186, !"dummy_log", i1 false, i1 false}
!186 = !{!"../fs/jfs/jfs_logmgr.c", i32 157, i32 24}
!187 = !{ptr @.str.100, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/jfs/jfs_logmgr.c", i32 1739, i32 4}
!189 = !{ptr @.str.101, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @lmLogFileSystem._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @lmLogFileSystem._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.103, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../fs/jfs/jfs_logmgr.c", i32 1751, i32 4}
!194 = !{ptr @lmLogFileSystem._entry.102, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @lmLogFileSystem._entry_ptr.104, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.105, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../fs/jfs/jfs_logmgr.c", i32 1800, i32 2}
!198 = !{ptr @.str.106, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @lbmLogInit._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @lbmLogInit._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @lbmLogInit.__key, !202, !"__key", i1 false, i1 false}
!202 = !{!"../fs/jfs/jfs_logmgr.c", i32 1817, i32 2}
!203 = !{ptr @.str.107, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @lbmLogInit.__key.108, !205, !"__key", i1 false, i1 false}
!205 = !{!"../fs/jfs/jfs_logmgr.c", i32 1842, i32 4}
!206 = !{ptr @.str.109, !205, !"<string literal>", i1 false, i1 false}
!207 = distinct !{null, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!209 = distinct !{null, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!211 = !{ptr @.str.112, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/jfs/jfs_logmgr.c", i32 1867, i32 2}
!213 = !{ptr @.str.113, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @lbmLogShutdown._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @lbmLogShutdown._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = distinct !{null, !217, !"__already_done", i1 false, i1 false}
!217 = !{!"../fs/jfs/jfs_logmgr.c", i32 1893, i32 2}
!218 = distinct !{null, !217, !"__already_done", i1 false, i1 false}
!219 = !{ptr @.str.115, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/jfs/jfs_logmgr.c", i32 108, i32 8}
!221 = !{ptr @jfsLCacheLock, !220, !"jfsLCacheLock", i1 false, i1 false}
!222 = !{ptr @.str.116, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../fs/jfs/jfs_logmgr.c", i32 1930, i32 2}
!224 = !{ptr @lbmfree._entry, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @lbmfree._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.117, !223, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.118, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/jfs/jfs_logmgr.c", i32 1979, i32 2}
!229 = !{ptr @.str.119, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @lbmRead._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @lbmRead._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.120, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../fs/jfs/jfs_logmgr.c", i32 2190, i32 2}
!234 = !{ptr @.str.121, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @lbmIODone._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @lbmIODone._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.123, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/jfs/jfs_logmgr.c", i32 2199, i32 3}
!239 = !{ptr @lbmIODone._entry.122, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @lbmIODone._entry_ptr.124, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @lbmIODone._entry.125, !242, !"_entry", i1 false, i1 false}
!242 = !{!"../fs/jfs/jfs_logmgr.c", i32 2313, i32 3}
!243 = !{ptr @lbmIODone._entry_ptr.126, !242, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.127, !242, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @lbmIODone._entry.128, !246, !"_entry", i1 false, i1 false}
!246 = !{!"../fs/jfs/jfs_logmgr.c", i32 2314, i32 3}
!247 = !{ptr @lbmIODone._entry_ptr.129, !246, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.130, !246, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.131, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../fs/jfs/jfs_logmgr.c", i32 846, i32 3}
!251 = !{ptr @.str.132, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @lmPostGC._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @lmPostGC._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.134, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../fs/jfs/jfs_logmgr.c", i32 877, i32 4}
!256 = !{ptr @lmPostGC._entry.133, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @lmPostGC._entry_ptr.135, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.136, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../fs/jfs/jfs_logmgr.c", i32 2029, i32 2}
!260 = !{ptr @.str.137, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @lbmWrite._entry, !259, !"_entry", i1 false, i1 false}
!262 = !{ptr @lbmWrite._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.138, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../fs/jfs/jfs_logmgr.c", i32 2093, i32 2}
!265 = !{ptr @.str.139, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @lbmDirectWrite._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @lbmDirectWrite._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.140, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../fs/jfs/jfs_logmgr.c", i32 2158, i32 2}
!270 = !{ptr @.str.141, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @lbmIOWait._entry, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @lbmIOWait._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!273 = distinct !{null, !274, !"__already_done", i1 false, i1 false}
!274 = !{!"../fs/jfs/jfs_logmgr.c", i32 2162, i32 2}
!275 = distinct !{null, !274, !"__already_done", i1 false, i1 false}
!276 = !{ptr @.str.144, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../fs/jfs/jfs_logmgr.c", i32 2171, i32 2}
!278 = !{ptr @lbmIOWait._entry.143, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @lbmIOWait._entry_ptr.145, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.146, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../fs/jfs/jfs_logmgr.c", i32 74, i32 8}
!282 = !{ptr @log_redrive_lock, !281, !"log_redrive_lock", i1 false, i1 false}
!283 = !{ptr @.str.147, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../fs/jfs/jfs_logmgr.c", i32 2126, i32 2}
!285 = !{ptr @.str.148, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @lbmStartIO._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @lbmStartIO._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.149, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!290 = !{!"sp"}
!291 = !{i32 1, !"wchar_size", i32 2}
!292 = !{i32 1, !"min_enum_size", i32 4}
!293 = !{i32 8, !"branch-target-enforcement", i32 0}
!294 = !{i32 8, !"sign-return-address", i32 0}
!295 = !{i32 8, !"sign-return-address-all", i32 0}
!296 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!297 = !{i32 7, !"uwtable", i32 1}
!298 = !{i32 7, !"frame-pointer", i32 2}
!299 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!300 = !{i64 2154691178, i64 2154691662, i64 2154691215, i64 2154691271, i64 2154691305, i64 2154691329, i64 2154691370, i64 2154691391, i64 2154691419, i64 2154691453}
!301 = !{ptr @filemap_fdatawrite, ptr @filemap_flush}
!302 = !{i64 2154710648}
!303 = !{i64 2154747764, i64 2154748249, i64 2154747801, i64 2154747857, i64 2154747891, i64 2154747915, i64 2154747956, i64 2154747977, i64 2154748005, i64 2154748039}
!304 = !{!"auto-init"}
!305 = !{i64 2154821195, i64 2154821680, i64 2154821232, i64 2154821288, i64 2154821322, i64 2154821346, i64 2154821387, i64 2154821408, i64 2154821436, i64 2154821470}
!306 = !{i64 2154814295}
!307 = !{!"branch_weights", i32 2000, i32 1}
!308 = !{i64 2154825219, i64 2154825704, i64 2154825256, i64 2154825312, i64 2154825346, i64 2154825370, i64 2154825411, i64 2154825432, i64 2154825460, i64 2154825494}
!309 = !{i64 2154843593}
!310 = !{i64 2154786312}
!311 = !{i64 2154788377, i64 2154788862, i64 2154788414, i64 2154788470, i64 2154788504, i64 2154788528, i64 2154788569, i64 2154788590, i64 2154788618, i64 2154788652}
!312 = !{!"branch_weights", i32 1, i32 2000}
!313 = !{i64 2154865472}
!314 = !{i64 2154833837, i64 2154834322, i64 2154833874, i64 2154833930, i64 2154833964, i64 2154833988, i64 2154834029, i64 2154834050, i64 2154834078, i64 2154834112}
!315 = !{i64 2154856178, i64 2154856663, i64 2154856215, i64 2154856271, i64 2154856305, i64 2154856329, i64 2154856370, i64 2154856391, i64 2154856419, i64 2154856453}
!316 = !{i64 2154859372, i64 2154859857, i64 2154859409, i64 2154859465, i64 2154859499, i64 2154859523, i64 2154859564, i64 2154859585, i64 2154859613, i64 2154859647}
