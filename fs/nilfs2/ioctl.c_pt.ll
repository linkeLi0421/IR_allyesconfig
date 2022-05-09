; ModuleID = '/llk/IR_all_yes/fs/nilfs2/ioctl.c_pt.bc'
source_filename = "../fs/nilfs2/ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.80, %struct.list_head, %struct.list_head, %union.anon.81 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.78 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.80 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.81 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nilfs_transaction_info = type { i32, ptr, i16, i16 }
%struct.timespec64 = type { i64, i32 }
%struct.fileattr = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.75 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.77 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nilfs_argv = type { i64, i32, i16, i16, i64 }
%struct.the_nilfs = type { i32, i32, ptr, ptr, %struct.rw_semaphore, %struct.mutex, [2 x ptr], [2 x ptr], i64, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, %struct.atomic_t, %struct.spinlock, i64, i64, i64, i64, i64, ptr, %struct.rw_semaphore, ptr, ptr, ptr, %struct.rb_root, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nilfs_period = type { i64, i64 }
%struct.nilfs_bdesc = type { i64, i64, i64, i64, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.fstrim_range = type { i64, i64, i64 }
%struct.nilfs_sustat = type { i64, i64, i64, i64, i64, i64 }
%struct.nilfs_cpstat = type { i64, i64, i64 }
%struct.nilfs_cpmode = type { i64, i32, i32 }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.nilfs_vdesc = type { i64, i64, i64, %struct.nilfs_period, i64, i64, i32, i32 }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot delete checkpoints\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cannot delete virtual blocks from DAT file\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot mark copying blocks dirty\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013error %d preparing GC: %s\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/nilfs2/ioctl.c\00", [46 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@nilfs_ioctl_clean_segments.argsz = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 64, i32 16, i32 8, i32 40, i32 8], [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013error %d preparing GC: cannot read source blocks\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\012%s: invalid virtual block address (%s): ino=%llu, cno=%llu, offset=%llu, blocknr=%llu, vblocknr=%llu\00", [57 x i8] zeroinitializer }, align 32
@__func__.nilfs_ioctl_move_inode_block = private unnamed_addr constant [29 x i8] c"nilfs_ioctl_move_inode_block\00", align 1
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"node\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\012%s: conflicting %s buffer: ino=%llu, cno=%llu, offset=%llu, blocknr=%llu, vblocknr=%llu\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.14 = internal global [17 x i64] [i64 15, i64 32, i64 1074294401, i64 1074294411, i64 1074818688, i64 1074818700, i64 1075342989, i64 1081634440, i64 2147776001, i64 2148036234, i64 2149084802, i64 2149084803, i64 2149084804, i64 2150657669, i64 3222820985, i64 3222826630, i64 3222826631]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 802, i32 9 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 811, i32 9 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 819, i32 9 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 825, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 772, i32 5 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 230, i32 6 }
@___asan_gen_.34 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 214, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 156, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"argsz\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 847, i32 22 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 934, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 557, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [21 x i8] c"../fs/nilfs2/ioctl.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 568, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @nilfs_ioctl_clean_segments.argsz, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_ioctl_clean_segments.argsz to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_fileattr_get(ptr nocapture noundef readonly %dentry, ptr noundef %fa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -592
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 8
  %and = and i32 %3, 253951
  tail call void @fileattr_fill_flags(ptr noundef %fa, i32 noundef %and) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fileattr_fill_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_fileattr_set(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %dentry, ptr nocapture noundef readonly %fa) local_unnamed_addr #0 align 64 {
entry:
  %ti = alloca %struct.nilfs_transaction_info, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ti) #7
  %fsx_valid.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 6
  %2 = call ptr @memset(ptr %ti, i32 255, i32 12)
  %3 = ptrtoint ptr %fsx_valid.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %fsx_valid.i, align 4
  %4 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %bf.cast.not.i = icmp eq i8 %4, 0
  br i1 %bf.cast.not.i, label %entry.if.end_crit_edge, label %land.rhs.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs.i:                                       ; preds = %entry
  %fsx_xflags.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 1
  %5 = ptrtoint ptr %fsx_xflags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fsx_xflags.i, align 4
  %and.i = and i32 %6, -33529
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.rhs.i.cleanup_crit_edge

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %fsx_extsize.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 2
  %7 = ptrtoint ptr %fsx_extsize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fsx_extsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %lor.lhs.false1.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %fsx_projid.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 4
  %9 = ptrtoint ptr %fsx_projid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fsx_projid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2.not.i = icmp eq i32 %10, 0
  br i1 %cmp2.not.i, label %fileattr_has_fsx.exit, label %lor.lhs.false1.i.cleanup_crit_edge

lor.lhs.false1.i.cleanup_crit_edge:               ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fileattr_has_fsx.exit:                            ; preds = %lor.lhs.false1.i
  %fsx_cowextsize.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 5
  %11 = ptrtoint ptr %fsx_cowextsize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fsx_cowextsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3.i.not = icmp eq i32 %12, 0
  br i1 %cmp3.i.not, label %fileattr_has_fsx.exit.if.end_crit_edge, label %fileattr_has_fsx.exit.cleanup_crit_edge

fileattr_has_fsx.exit.cleanup_crit_edge:          ; preds = %fileattr_has_fsx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fileattr_has_fsx.exit.if.end_crit_edge:           ; preds = %fileattr_has_fsx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %fileattr_has_fsx.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 8
  %15 = ptrtoint ptr %fa to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fa, align 4
  %17 = and i16 %14, -4096
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i16 %17, label %if.else8.i [
    i16 16384, label %if.end.nilfs_mask_flags.exit_crit_edge
    i16 -32768, label %if.then6.i
  ]

if.end.nilfs_mask_flags.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_mask_flags.exit

if.then6.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and7.i = and i32 %16, -196609
  br label %nilfs_mask_flags.exit

if.else8.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and9.i = and i32 %16, 192
  br label %nilfs_mask_flags.exit

nilfs_mask_flags.exit:                            ; preds = %if.else8.i, %if.then6.i, %if.end.nilfs_mask_flags.exit_crit_edge
  %retval.0.i = phi i32 [ %and7.i, %if.then6.i ], [ %and9.i, %if.else8.i ], [ %16, %if.end.nilfs_mask_flags.exit_crit_edge ]
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  %call4 = call i32 @nilfs_transaction_begin(ptr noundef %20, ptr noundef nonnull %ti, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %nilfs_mask_flags.exit.cleanup_crit_edge

nilfs_mask_flags.exit.cleanup_crit_edge:          ; preds = %nilfs_mask_flags.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %nilfs_mask_flags.exit
  %add.ptr.i = getelementptr i8, ptr %1, i32 -592
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 8
  %and = and i32 %22, -229632
  %and8 = and i32 %retval.0.i, 229631
  %or = or i32 %and, %and8
  store i32 %or, ptr %add.ptr.i, align 8
  call void @nilfs_set_inode_flags(ptr noundef %1) #7
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #7
  %23 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  %24 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_flags, align 4
  %and12 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %if.end6.if.then17_crit_edge

if.end6.if.then17_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end6
  %i_flags14 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %i_flags14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_flags14, align 4
  %and15 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %lor.lhs.false.if.end18_crit_edge, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end6.if.then17_crit_edge
  %30 = call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 146
  %34 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %journal_info.i, align 4
  %ti_flags.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %ti_flags.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ti_flags.i, align 4
  %38 = or i16 %37, 2
  store i16 %38, ptr %ti_flags.i, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %lor.lhs.false.if.end18_crit_edge
  %call.i = call i32 @__nilfs_mark_inode_dirty(ptr noundef %1, i32 noundef 7) #7
  %39 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb, align 4
  %call21 = call i32 @nilfs_transaction_commit(ptr noundef %40) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %nilfs_mask_flags.exit.cleanup_crit_edge, %fileattr_has_fsx.exit.cleanup_crit_edge, %lor.lhs.false1.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end18 ], [ -95, %fileattr_has_fsx.exit.cleanup_crit_edge ], [ %call4, %nilfs_mask_flags.exit.cleanup_crit_edge ], [ -95, %lor.lhs.false1.i.cleanup_crit_edge ], [ -95, %lor.lhs.false.i.cleanup_crit_edge ], [ -95, %land.rhs.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ti) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_transaction_begin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_set_inode_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_transaction_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_ioctl_prepare_clean_segments(ptr nocapture noundef readonly %nilfs, ptr nocapture noundef readonly %argv, ptr nocapture noundef readonly %kbufs) local_unnamed_addr #0 align 64 {
entry:
  %bh.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx1 = getelementptr ptr, ptr %kbufs, i32 1
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx1, align 4
  %v_nmembs.i = getelementptr %struct.nilfs_argv, ptr %argv, i32 1, i32 1
  %2 = ptrtoint ptr %v_nmembs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v_nmembs.i, align 8
  %ns_cpfile.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 30
  %4 = ptrtoint ptr %ns_cpfile.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns_cpfile.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not.i = icmp eq i32 %3, 0
  br i1 %cmp13.not.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %nilfs_ioctl_delete_checkpoints.exit, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nilfs_period, ptr %1, i32 %i.014.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.i, align 8
  %p_end.i = getelementptr %struct.nilfs_period, ptr %1, i32 %i.014.i, i32 1
  %8 = ptrtoint ptr %p_end.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %p_end.i, align 8
  %call.i = tail call i32 @nilfs_cpfile_delete_checkpoints(ptr noundef %5, i64 noundef %7, i64 noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %for.body.i.failed_crit_edge, label %for.cond.i

for.body.i.failed_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

nilfs_ioctl_delete_checkpoints.exit:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %nilfs_ioctl_delete_checkpoints.exit.failed_crit_edge, label %nilfs_ioctl_delete_checkpoints.exit.if.end_crit_edge

nilfs_ioctl_delete_checkpoints.exit.if.end_crit_edge: ; preds = %nilfs_ioctl_delete_checkpoints.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

nilfs_ioctl_delete_checkpoints.exit.failed_crit_edge: ; preds = %nilfs_ioctl_delete_checkpoints.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end:                                           ; preds = %nilfs_ioctl_delete_checkpoints.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx3 = getelementptr ptr, ptr %kbufs, i32 2
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 4
  %v_nmembs.i26 = getelementptr %struct.nilfs_argv, ptr %argv, i32 2, i32 1
  %12 = ptrtoint ptr %v_nmembs.i26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %v_nmembs.i26, align 8
  %ns_dat.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 29
  %14 = ptrtoint ptr %ns_dat.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ns_dat.i, align 4
  %call.i27 = tail call i32 @nilfs_dat_freev(ptr noundef %15, ptr noundef %11, i32 noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %cmp.i = icmp slt i32 %call.i27, 0
  %call..i = select i1 %cmp.i, i32 %call.i27, i32 %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call..i)
  %cmp5 = icmp slt i32 %call..i, 0
  br i1 %cmp5, label %if.end.failed_crit_edge, label %if.end7

if.end.failed_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end7:                                          ; preds = %if.end
  %arrayidx9 = getelementptr ptr, ptr %kbufs, i32 3
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx9, align 4
  %v_nmembs.i28 = getelementptr %struct.nilfs_argv, ptr %argv, i32 3, i32 1
  %18 = ptrtoint ptr %v_nmembs.i28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %v_nmembs.i28, align 8
  %20 = ptrtoint ptr %ns_dat.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ns_dat.i, align 4
  %i_bmap.i = getelementptr i8, ptr %21, i32 -584
  %22 = ptrtoint ptr %i_bmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_bmap.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #7
  %24 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp138.not.i = icmp eq i32 %19, 0
  br i1 %cmp138.not.i, label %nilfs_ioctl_mark_blocks_dirty.exit.thread42, label %if.end7.for.body.i30_crit_edge

if.end7.for.body.i30_crit_edge:                   ; preds = %if.end7
  br label %for.body.i30

nilfs_ioctl_mark_blocks_dirty.exit.thread42:      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #7
  br label %cleanup

for.body.i30:                                     ; preds = %for.inc.i.for.body.i30_crit_edge, %if.end7.for.body.i30_crit_edge
  %i.0139.i = phi i32 [ %inc.i32, %for.inc.i.for.body.i30_crit_edge ], [ 0, %if.end7.for.body.i30_crit_edge ]
  %bd_offset.i = getelementptr %struct.nilfs_bdesc, ptr %17, i32 %i.0139.i, i32 3
  %25 = ptrtoint ptr %bd_offset.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %bd_offset.i, align 8
  %bd_level.i = getelementptr %struct.nilfs_bdesc, ptr %17, i32 %i.0139.i, i32 4
  %27 = ptrtoint ptr %bd_level.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bd_level.i, align 8
  %add.i = add i32 %28, 1
  %bd_blocknr.i = getelementptr %struct.nilfs_bdesc, ptr %17, i32 %i.0139.i, i32 2
  %call3.i = call i32 @nilfs_bmap_lookup_at_level(ptr noundef %23, i64 noundef %26, i32 noundef %add.i, ptr noundef %bd_blocknr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then.i, label %for.body.i30.if.end9.i_crit_edge

for.body.i30.if.end9.i_crit_edge:                 ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then.i:                                        ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call3.i)
  %cmp5.not.i = icmp eq i32 %call3.i, -2
  br i1 %cmp5.not.i, label %if.end.i, label %if.then.i.nilfs_ioctl_mark_blocks_dirty.exit.thread_crit_edge

if.then.i.nilfs_ioctl_mark_blocks_dirty.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_mark_blocks_dirty.exit.thread

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %bd_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %bd_blocknr.i, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i, %for.body.i30.if.end9.i_crit_edge
  %30 = ptrtoint ptr %bd_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %bd_blocknr.i, align 8
  %bd_oblocknr.i = getelementptr %struct.nilfs_bdesc, ptr %17, i32 %i.0139.i, i32 1
  %32 = ptrtoint ptr %bd_oblocknr.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %bd_oblocknr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %33)
  %cmp13.not.i31 = icmp eq i64 %31, %33
  br i1 %cmp13.not.i31, label %if.end15.i, label %if.end9.i.for.inc.i_crit_edge

if.end9.i.for.inc.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end15.i:                                       ; preds = %if.end9.i
  %34 = ptrtoint ptr %bd_level.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bd_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp18.i = icmp eq i32 %35, 0
  br i1 %cmp18.i, label %if.then19.i, label %if.else.i

if.then19.i:                                      ; preds = %if.end15.i
  %36 = ptrtoint ptr %ns_dat.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ns_dat.i, align 4
  %38 = ptrtoint ptr %bd_offset.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %bd_offset.i, align 8
  %conv.i = trunc i64 %39 to i32
  %call23.i = call i32 @nilfs_mdt_get_block(ptr noundef %37, i32 noundef %conv.i, i32 noundef 0, ptr noundef null, ptr noundef nonnull %bh.i) #7
  %40 = zext i32 %call23.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %call23.i, label %if.then19.i.nilfs_ioctl_mark_blocks_dirty.exit_crit_edge [
    i32 0, label %if.end54.i
    i32 -2, label %if.then19.i.cleanup.sink.split.i_crit_edge
  ], !prof !39

if.then19.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.then19.i.nilfs_ioctl_mark_blocks_dirty.exit_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_mark_blocks_dirty.exit

if.end54.i:                                       ; preds = %if.then19.i
  %41 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bh.i, align 4
  call void @mark_buffer_dirty(ptr noundef %42) #7
  %43 = ptrtoint ptr %ns_dat.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ns_dat.i, align 4
  %i_state.i.i = getelementptr i8, ptr %44, i32 -588
  %45 = ptrtoint ptr %i_state.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %i_state.i.i, align 4
  %47 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end54.i.nilfs_mdt_mark_dirty.exit.i_crit_edge

if.end54.i.nilfs_mdt_mark_dirty.exit.i_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_mdt_mark_dirty.exit.i

if.then.i.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i.i) #7
  br label %nilfs_mdt_mark_dirty.exit.i

nilfs_mdt_mark_dirty.exit.i:                      ; preds = %if.then.i.i, %if.end54.i.nilfs_mdt_mark_dirty.exit.i_crit_edge
  %48 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bh.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !40
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %49, i32 0, i32 11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #7
  %50 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #7, !srcloc !41
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end15.i
  %51 = ptrtoint ptr %bd_offset.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %bd_offset.i, align 8
  %call60.i = call i32 @nilfs_bmap_mark(ptr noundef %23, i64 noundef %52, i32 noundef %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %cmp61.i = icmp slt i32 %call60.i, 0
  br i1 %cmp61.i, label %if.then63.i, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then63.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call60.i)
  %cmp65.i = icmp eq i32 %call60.i, -2
  br i1 %cmp65.i, label %if.then63.i.cleanup.sink.split.i_crit_edge, label %if.then63.i.nilfs_ioctl_mark_blocks_dirty.exit.thread_crit_edge, !prof !42

if.then63.i.nilfs_ioctl_mark_blocks_dirty.exit.thread_crit_edge: ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_mark_blocks_dirty.exit.thread

if.then63.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %nilfs_mdt_mark_dirty.exit.i, %if.end9.i.for.inc.i_crit_edge
  %inc.i32 = add nuw i32 %i.0139.i, 1
  %exitcond.not.i33 = icmp eq i32 %inc.i32, %19
  br i1 %exitcond.not.i33, label %for.inc.i.nilfs_ioctl_mark_blocks_dirty.exit_crit_edge, label %for.inc.i.for.body.i30_crit_edge

for.inc.i.for.body.i30_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i30

for.inc.i.nilfs_ioctl_mark_blocks_dirty.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_mark_blocks_dirty.exit

cleanup.sink.split.i:                             ; preds = %if.then63.i.cleanup.sink.split.i_crit_edge, %if.then19.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 782, %if.then63.i.cleanup.sink.split.i_crit_edge ], [ 772, %if.then19.i.cleanup.sink.split.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #7
  br label %nilfs_ioctl_mark_blocks_dirty.exit.thread

nilfs_ioctl_mark_blocks_dirty.exit.thread:        ; preds = %cleanup.sink.split.i, %if.then63.i.nilfs_ioctl_mark_blocks_dirty.exit.thread_crit_edge, %if.then.i.nilfs_ioctl_mark_blocks_dirty.exit.thread_crit_edge
  %retval.0.i34.ph = phi i32 [ -2, %cleanup.sink.split.i ], [ %call60.i, %if.then63.i.nilfs_ioctl_mark_blocks_dirty.exit.thread_crit_edge ], [ %call3.i, %if.then.i.nilfs_ioctl_mark_blocks_dirty.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #7
  br label %failed

nilfs_ioctl_mark_blocks_dirty.exit:               ; preds = %for.inc.i.nilfs_ioctl_mark_blocks_dirty.exit_crit_edge, %if.then19.i.nilfs_ioctl_mark_blocks_dirty.exit_crit_edge
  %retval.0.i34 = phi i32 [ %call23.i, %if.then19.i.nilfs_ioctl_mark_blocks_dirty.exit_crit_edge ], [ %19, %for.inc.i.nilfs_ioctl_mark_blocks_dirty.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i34)
  %cmp11 = icmp slt i32 %retval.0.i34, 0
  br i1 %cmp11, label %nilfs_ioctl_mark_blocks_dirty.exit.failed_crit_edge, label %nilfs_ioctl_mark_blocks_dirty.exit.cleanup_crit_edge

nilfs_ioctl_mark_blocks_dirty.exit.cleanup_crit_edge: ; preds = %nilfs_ioctl_mark_blocks_dirty.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

nilfs_ioctl_mark_blocks_dirty.exit.failed_crit_edge: ; preds = %nilfs_ioctl_mark_blocks_dirty.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

failed:                                           ; preds = %nilfs_ioctl_mark_blocks_dirty.exit.failed_crit_edge, %nilfs_ioctl_mark_blocks_dirty.exit.thread, %if.end.failed_crit_edge, %nilfs_ioctl_delete_checkpoints.exit.failed_crit_edge, %for.body.i.failed_crit_edge
  %msg.0 = phi ptr [ @.str, %nilfs_ioctl_delete_checkpoints.exit.failed_crit_edge ], [ @.str.1, %if.end.failed_crit_edge ], [ @.str.2, %nilfs_ioctl_mark_blocks_dirty.exit.failed_crit_edge ], [ @.str.2, %nilfs_ioctl_mark_blocks_dirty.exit.thread ], [ @.str, %for.body.i.failed_crit_edge ]
  %ret.0 = phi i32 [ %3, %nilfs_ioctl_delete_checkpoints.exit.failed_crit_edge ], [ %call..i, %if.end.failed_crit_edge ], [ %retval.0.i34, %nilfs_ioctl_mark_blocks_dirty.exit.failed_crit_edge ], [ %retval.0.i34.ph, %nilfs_ioctl_mark_blocks_dirty.exit.thread ], [ %call.i, %for.body.i.failed_crit_edge ]
  %ns_sb = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 2
  %53 = ptrtoint ptr %ns_sb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ns_sb, align 8
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %54, ptr noundef nonnull @.str.3, i32 noundef %ret.0, ptr noundef nonnull %msg.0) #7
  br label %cleanup

cleanup:                                          ; preds = %failed, %nilfs_ioctl_mark_blocks_dirty.exit.cleanup_crit_edge, %nilfs_ioctl_mark_blocks_dirty.exit.thread42
  %retval.0 = phi i32 [ %ret.0, %failed ], [ 0, %nilfs_ioctl_mark_blocks_dirty.exit.cleanup_crit_edge ], [ 0, %nilfs_ioctl_mark_blocks_dirty.exit.thread42 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nilfs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_ioctl(ptr noundef %filp, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %range.i340 = alloca %struct.fstrim_range, align 8
  %range.i = alloca [2 x i64], align 8
  %newsize.i = alloca i64, align 8
  %cno.i264 = alloca i64, align 8
  %argv.i202 = alloca [5 x %struct.nilfs_argv], align 8
  %kbufs.i = alloca [5 x ptr], align 4
  %argv.i176 = alloca %struct.nilfs_argv, align 8
  %sustat.i = alloca %struct.nilfs_sustat, align 8
  %ti.i130 = alloca %struct.nilfs_transaction_info, align 4
  %argv.i = alloca %struct.nilfs_argv, align 8
  %cpstat.i = alloca %struct.nilfs_cpstat, align 8
  %ti.i82 = alloca %struct.nilfs_transaction_info, align 4
  %cno.i = alloca i64, align 8
  %ti.i = alloca %struct.nilfs_transaction_info, align 4
  %cpmode.i = alloca %struct.nilfs_cpmode, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = inttoptr i32 %arg to ptr
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -2147191295, label %sw.bb
    i32 1074818688, label %sw.bb2
    i32 1074294401, label %sw.bb4
    i32 -2145882494, label %sw.bb6
    i32 -2145882493, label %sw.bb8
    i32 -2145882492, label %sw.bb10
    i32 1075342989, label %sw.bb12
    i32 -2144309627, label %sw.bb14
    i32 -1072140666, label %sw.bb16
    i32 -1072140665, label %sw.bb18
    i32 1081634440, label %sw.bb20
    i32 -2146931062, label %sw.bb22
    i32 1074294411, label %sw.bb24
    i32 1074818700, label %sw.bb26
    i32 -1072146311, label %sw.bb28
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 49
  %4 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_generation.i, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 165) #7
  %6 = tail call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #3, !srcloc !43
  %and.i.i = and i32 %8, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %9 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %5, i32 -1226833921) #7, !srcloc !46
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ti.i) #7
  %14 = call ptr @memset(ptr %ti.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cpmode.i) #7
  %15 = getelementptr inbounds %struct.nilfs_cpmode, ptr %cpmode.i, i32 0, i32 1
  %16 = call ptr @memset(ptr %cpmode.i, i32 255, i32 16)
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %call.i, label %if.end.i, label %sw.bb2.nilfs_ioctl_change_cpmode.exit_crit_edge

sw.bb2.nilfs_ioctl_change_cpmode.exit_crit_edge:  ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_change_cpmode.exit

if.end.i:                                         ; preds = %sw.bb2
  %call1.i = tail call i32 @mnt_want_write_file(ptr noundef %filp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end8.i.i.i, label %if.end.i.nilfs_ioctl_change_cpmode.exit_crit_edge

if.end.i.nilfs_ioctl_change_cpmode.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_change_cpmode.exit

if.end8.i.i.i:                                    ; preds = %if.end.i
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #7
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i, label %if.end8.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end8.i.i.i.if.then11.i.i.i_crit_edge:          ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end8.i.i.i
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 16, i32 -1226833920) #10, !srcloc !47
  %asmresult.i.i.i = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !48

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cpmode.i, i32 noundef 16) #7
  %18 = call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #3, !srcloc !43
  %and.i.i.i.i.i = and i32 %20, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cpmode.i, ptr noundef %2, i32 noundef 16) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end7.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !48

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end8.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i3.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 16, %if.end8.i.i.i.if.then11.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 16, %res.0.i.i3.i
  %add.ptr.i.i.i = getelementptr i8, ptr %cpmode.i, i32 %sub.i.i.i
  %21 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i3.i)
  br label %out.i

if.end7.i:                                        ; preds = %if.end.i.i.i
  %ns_snapshot_mount_mutex.i = getelementptr inbounds %struct.the_nilfs, ptr %13, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %ns_snapshot_mount_mutex.i, i32 noundef 0) #7
  %22 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb.i, align 4
  %call9.i = call i32 @nilfs_transaction_begin(ptr noundef %23, ptr noundef nonnull %ti.i, i32 noundef 0) #7
  %ns_cpfile.i = getelementptr inbounds %struct.the_nilfs, ptr %13, i32 0, i32 30
  %24 = ptrtoint ptr %ns_cpfile.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ns_cpfile.i, align 8
  %26 = ptrtoint ptr %cpmode.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %cpmode.i, align 8
  %28 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %15, align 8
  %call10.i = call i32 @nilfs_cpfile_change_cpmode(ptr noundef %25, i64 noundef %27, i32 noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i = icmp slt i32 %call10.i, 0
  %30 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb.i, align 4
  br i1 %cmp.i, label %if.then13.i, label %if.else.i, !prof !42

if.then13.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @nilfs_transaction_abort(ptr noundef %31) #7
  br label %if.end17.i

if.else.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %call16.i = call i32 @nilfs_transaction_commit(ptr noundef %31) #7
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i, %if.then13.i
  call void @mutex_unlock(ptr noundef %ns_snapshot_mount_mutex.i) #7
  br label %out.i

out.i:                                            ; preds = %if.end17.i, %if.then11.i.i.i
  %ret.0.i = phi i32 [ %call10.i, %if.end17.i ], [ -14, %if.then11.i.i.i ]
  call void @mnt_drop_write_file(ptr noundef %filp) #7
  br label %nilfs_ioctl_change_cpmode.exit

nilfs_ioctl_change_cpmode.exit:                   ; preds = %out.i, %if.end.i.nilfs_ioctl_change_cpmode.exit_crit_edge, %sw.bb2.nilfs_ioctl_change_cpmode.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %out.i ], [ -1, %sw.bb2.nilfs_ioctl_change_cpmode.exit_crit_edge ], [ %call1.i, %if.end.i.nilfs_ioctl_change_cpmode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cpmode.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ti.i) #7
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %i_sb.i83 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %32 = ptrtoint ptr %i_sb.i83 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb.i83, align 4
  %s_fs_info.i84 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 33
  %34 = ptrtoint ptr %s_fs_info.i84 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i84, align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ti.i82) #7
  %36 = call ptr @memset(ptr %ti.i82, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cno.i) #7
  %37 = ptrtoint ptr %cno.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 -1, ptr %cno.i, align 8, !annotation !38
  %call.i85 = tail call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %call.i85, label %if.end.i88, label %sw.bb4.nilfs_ioctl_delete_checkpoint.exit_crit_edge

sw.bb4.nilfs_ioctl_delete_checkpoint.exit_crit_edge: ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_delete_checkpoint.exit

if.end.i88:                                       ; preds = %sw.bb4
  %call1.i86 = tail call i32 @mnt_want_write_file(ptr noundef %filp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i86)
  %tobool.not.i87 = icmp eq i32 %call1.i86, 0
  br i1 %tobool.not.i87, label %if.end8.i.i.i90, label %if.end.i88.nilfs_ioctl_delete_checkpoint.exit_crit_edge

if.end.i88.nilfs_ioctl_delete_checkpoint.exit_crit_edge: ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_delete_checkpoint.exit

if.end8.i.i.i90:                                  ; preds = %if.end.i88
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #7
  %call.i.i.i89 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i89, label %if.end8.i.i.i90.if.then11.i.i.i105_crit_edge, label %land.lhs.true.i.i.i93

if.end8.i.i.i90.if.then11.i.i.i105_crit_edge:     ; preds = %if.end8.i.i.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i105

land.lhs.true.i.i.i93:                            ; preds = %if.end8.i.i.i90
  %38 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #10, !srcloc !47
  %asmresult.i.i.i91 = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i91)
  %cmp.i6.i.i92 = icmp eq i32 %asmresult.i.i.i91, 0
  br i1 %cmp.i6.i.i92, label %if.end.i.i.i101, label %land.lhs.true.i.i.i93.if.then11.i.i.i105_crit_edge, !prof !48

land.lhs.true.i.i.i93.if.then11.i.i.i105_crit_edge: ; preds = %land.lhs.true.i.i.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i105

if.end.i.i.i101:                                  ; preds = %land.lhs.true.i.i.i93
  %call.i.i.i.i94 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cno.i, i32 noundef 8) #7
  %39 = call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i.i.i.i.i.i95 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i.i.i95 to ptr
  %cpu_domain.i.i.i.i.i.i96 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 4
  %41 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i96) #3, !srcloc !43
  %and.i.i.i.i.i97 = and i32 %41, -13
  %or.i.i.i.i.i98 = or i32 %and.i.i.i.i.i97, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i98) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %call1.i.i.i.i99 = call i32 @arm_copy_from_user(ptr noundef nonnull %cno.i, ptr noundef %2, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i99)
  %tobool4.not.i.i.i100 = icmp eq i32 %call1.i.i.i.i99, 0
  br i1 %tobool4.not.i.i.i100, label %if.end7.i110, label %if.end.i.i.i101.if.then11.i.i.i105_crit_edge, !prof !48

if.end.i.i.i101.if.then11.i.i.i105_crit_edge:     ; preds = %if.end.i.i.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i105

if.then11.i.i.i105:                               ; preds = %if.end.i.i.i101.if.then11.i.i.i105_crit_edge, %land.lhs.true.i.i.i93.if.then11.i.i.i105_crit_edge, %if.end8.i.i.i90.if.then11.i.i.i105_crit_edge
  %res.0.i.i3.i102 = phi i32 [ %call1.i.i.i.i99, %if.end.i.i.i101.if.then11.i.i.i105_crit_edge ], [ 8, %if.end8.i.i.i90.if.then11.i.i.i105_crit_edge ], [ 8, %land.lhs.true.i.i.i93.if.then11.i.i.i105_crit_edge ]
  %sub.i.i.i103 = sub i32 8, %res.0.i.i3.i102
  %add.ptr.i.i.i104 = getelementptr i8, ptr %cno.i, i32 %sub.i.i.i103
  %42 = call ptr @memset(ptr %add.ptr.i.i.i104, i32 0, i32 %res.0.i.i3.i102)
  br label %out.i115

if.end7.i110:                                     ; preds = %if.end.i.i.i101
  %43 = ptrtoint ptr %i_sb.i83 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb.i83, align 4
  %call9.i106 = call i32 @nilfs_transaction_begin(ptr noundef %44, ptr noundef nonnull %ti.i82, i32 noundef 0) #7
  %ns_cpfile.i107 = getelementptr inbounds %struct.the_nilfs, ptr %35, i32 0, i32 30
  %45 = ptrtoint ptr %ns_cpfile.i107 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ns_cpfile.i107, align 8
  %47 = ptrtoint ptr %cno.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %cno.i, align 8
  %call10.i108 = call i32 @nilfs_cpfile_delete_checkpoint(ptr noundef %46, i64 noundef %48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i108)
  %cmp.i109 = icmp slt i32 %call10.i108, 0
  %49 = ptrtoint ptr %i_sb.i83 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb.i83, align 4
  br i1 %cmp.i109, label %if.then13.i111, label %if.else.i113, !prof !42

if.then13.i111:                                   ; preds = %if.end7.i110
  call void @__sanitizer_cov_trace_pc() #9
  call void @nilfs_transaction_abort(ptr noundef %50) #7
  br label %out.i115

if.else.i113:                                     ; preds = %if.end7.i110
  call void @__sanitizer_cov_trace_pc() #9
  %call16.i112 = call i32 @nilfs_transaction_commit(ptr noundef %50) #7
  br label %out.i115

out.i115:                                         ; preds = %if.else.i113, %if.then13.i111, %if.then11.i.i.i105
  %ret.0.i114 = phi i32 [ %call10.i108, %if.then13.i111 ], [ %call10.i108, %if.else.i113 ], [ -14, %if.then11.i.i.i105 ]
  call void @mnt_drop_write_file(ptr noundef %filp) #7
  br label %nilfs_ioctl_delete_checkpoint.exit

nilfs_ioctl_delete_checkpoint.exit:               ; preds = %out.i115, %if.end.i88.nilfs_ioctl_delete_checkpoint.exit_crit_edge, %sw.bb4.nilfs_ioctl_delete_checkpoint.exit_crit_edge
  %retval.0.i116 = phi i32 [ %ret.0.i114, %out.i115 ], [ -1, %sw.bb4.nilfs_ioctl_delete_checkpoint.exit_crit_edge ], [ %call1.i86, %if.end.i88.nilfs_ioctl_delete_checkpoint.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cno.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ti.i82) #7
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call fastcc i32 @nilfs_ioctl_get_info(ptr noundef %1, i32 noundef -2145882494, ptr noundef %2, i32 noundef 56, ptr noundef nonnull @nilfs_ioctl_do_get_cpinfo)
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %i_sb.i117 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %51 = ptrtoint ptr %i_sb.i117 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_sb.i117, align 4
  %s_fs_info.i118 = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 33
  %53 = ptrtoint ptr %s_fs_info.i118 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_fs_info.i118, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cpstat.i) #7
  %ns_segctor_sem.i = getelementptr inbounds %struct.the_nilfs, ptr %54, i32 0, i32 28
  %55 = call ptr @memset(ptr %cpstat.i, i32 255, i32 24)
  tail call void @down_read(ptr noundef %ns_segctor_sem.i) #7
  %ns_cpfile.i119 = getelementptr inbounds %struct.the_nilfs, ptr %54, i32 0, i32 30
  %56 = ptrtoint ptr %ns_cpfile.i119 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ns_cpfile.i119, align 8
  %call.i120 = call i32 @nilfs_cpfile_get_stat(ptr noundef %57, ptr noundef nonnull %cpstat.i) #7
  call void @up_read(ptr noundef %ns_segctor_sem.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp.i121 = icmp slt i32 %call.i120, 0
  br i1 %cmp.i121, label %sw.bb8.nilfs_ioctl_get_cpstat.exit_crit_edge, label %if.end8.i.i.i123

sw.bb8.nilfs_ioctl_get_cpstat.exit_crit_edge:     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_get_cpstat.exit

if.end8.i.i.i123:                                 ; preds = %sw.bb8
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #7
  %call.i.i.i122 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i122, label %if.end8.i.i.i123.nilfs_ioctl_get_cpstat.exit_crit_edge, label %if.end.i.i.i126

if.end8.i.i.i123.nilfs_ioctl_get_cpstat.exit_crit_edge: ; preds = %if.end8.i.i.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_get_cpstat.exit

if.end.i.i.i126:                                  ; preds = %if.end8.i.i.i123
  %58 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 24, i32 -1226833920) #10, !srcloc !49
  %asmresult.i.i.i124 = extractvalue { i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i124)
  %cmp.i6.i.i125 = icmp eq i32 %asmresult.i.i.i124, 0
  br i1 %cmp.i6.i.i125, label %copy_to_user.exit.i, label %if.end.i.i.i126.nilfs_ioctl_get_cpstat.exit_crit_edge

if.end.i.i.i126.nilfs_ioctl_get_cpstat.exit_crit_edge: ; preds = %if.end.i.i.i126
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_get_cpstat.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i126
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i127 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cpstat.i, i32 noundef 24) #7
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %cpstat.i, i32 noundef 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i128 = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool.not.i128, i32 %call.i120, i32 -14
  br label %nilfs_ioctl_get_cpstat.exit

nilfs_ioctl_get_cpstat.exit:                      ; preds = %copy_to_user.exit.i, %if.end.i.i.i126.nilfs_ioctl_get_cpstat.exit_crit_edge, %if.end8.i.i.i123.nilfs_ioctl_get_cpstat.exit_crit_edge, %sw.bb8.nilfs_ioctl_get_cpstat.exit_crit_edge
  %retval.0.i129 = phi i32 [ %call.i120, %sw.bb8.nilfs_ioctl_get_cpstat.exit_crit_edge ], [ -14, %if.end8.i.i.i123.nilfs_ioctl_get_cpstat.exit_crit_edge ], [ -14, %if.end.i.i.i126.nilfs_ioctl_get_cpstat.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cpstat.i) #7
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call fastcc i32 @nilfs_ioctl_get_info(ptr noundef %1, i32 noundef -2145882492, ptr noundef %2, i32 noundef 16, ptr noundef nonnull @nilfs_ioctl_do_get_suinfo)
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %i_sb.i131 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %59 = ptrtoint ptr %i_sb.i131 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb.i131, align 4
  %s_fs_info.i132 = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 33
  %61 = ptrtoint ptr %s_fs_info.i132 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info.i132, align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ti.i130) #7
  %63 = call ptr @memset(ptr %ti.i130, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %argv.i) #7
  %64 = getelementptr inbounds %struct.nilfs_argv, ptr %argv.i, i32 0, i32 1
  %65 = getelementptr inbounds %struct.nilfs_argv, ptr %argv.i, i32 0, i32 2
  %66 = call ptr @memset(ptr %argv.i, i32 255, i32 24)
  %call.i133 = tail call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %call.i133, label %if.end.i136, label %sw.bb12.nilfs_ioctl_set_suinfo.exit_crit_edge

sw.bb12.nilfs_ioctl_set_suinfo.exit_crit_edge:    ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_set_suinfo.exit

if.end.i136:                                      ; preds = %sw.bb12
  %call1.i134 = tail call i32 @mnt_want_write_file(ptr noundef %filp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i134)
  %tobool.not.i135 = icmp eq i32 %call1.i134, 0
  br i1 %tobool.not.i135, label %if.end8.i.i.i138, label %if.end.i136.nilfs_ioctl_set_suinfo.exit_crit_edge

if.end.i136.nilfs_ioctl_set_suinfo.exit_crit_edge: ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_set_suinfo.exit

if.end8.i.i.i138:                                 ; preds = %if.end.i136
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #7
  %call.i.i.i137 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i137, label %if.end8.i.i.i138.if.then11.i.i.i152_crit_edge, label %land.lhs.true.i.i.i141

if.end8.i.i.i138.if.then11.i.i.i152_crit_edge:    ; preds = %if.end8.i.i.i138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i152

land.lhs.true.i.i.i141:                           ; preds = %if.end8.i.i.i138
  %67 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 24, i32 -1226833920) #10, !srcloc !47
  %asmresult.i.i.i139 = extractvalue { i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i139)
  %cmp.i6.i.i140 = icmp eq i32 %asmresult.i.i.i139, 0
  br i1 %cmp.i6.i.i140, label %if.end.i.i.i149, label %land.lhs.true.i.i.i141.if.then11.i.i.i152_crit_edge, !prof !48

land.lhs.true.i.i.i141.if.then11.i.i.i152_crit_edge: ; preds = %land.lhs.true.i.i.i141
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i152

if.end.i.i.i149:                                  ; preds = %land.lhs.true.i.i.i141
  %call.i.i.i.i142 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %argv.i, i32 noundef 24) #7
  %68 = call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i.i.i.i.i.i143 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i.i.i143 to ptr
  %cpu_domain.i.i.i.i.i.i144 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 4
  %70 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i144) #3, !srcloc !43
  %and.i.i.i.i.i145 = and i32 %70, -13
  %or.i.i.i.i.i146 = or i32 %and.i.i.i.i.i145, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i146) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %call1.i.i.i.i147 = call i32 @arm_copy_from_user(ptr noundef nonnull %argv.i, ptr noundef %2, i32 noundef 24) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i147)
  %tobool4.not.i.i.i148 = icmp eq i32 %call1.i.i.i.i147, 0
  br i1 %tobool4.not.i.i.i148, label %if.end7.i154, label %if.end.i.i.i149.if.then11.i.i.i152_crit_edge, !prof !48

if.end.i.i.i149.if.then11.i.i.i152_crit_edge:     ; preds = %if.end.i.i.i149
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i152

if.then11.i.i.i152:                               ; preds = %if.end.i.i.i149.if.then11.i.i.i152_crit_edge, %land.lhs.true.i.i.i141.if.then11.i.i.i152_crit_edge, %if.end8.i.i.i138.if.then11.i.i.i152_crit_edge
  %res.0.i.i26.i = phi i32 [ %call1.i.i.i.i147, %if.end.i.i.i149.if.then11.i.i.i152_crit_edge ], [ 24, %if.end8.i.i.i138.if.then11.i.i.i152_crit_edge ], [ 24, %land.lhs.true.i.i.i141.if.then11.i.i.i152_crit_edge ]
  %sub.i.i.i150 = sub i32 24, %res.0.i.i26.i
  %add.ptr.i.i.i151 = getelementptr i8, ptr %argv.i, i32 %sub.i.i.i150
  %71 = call ptr @memset(ptr %add.ptr.i.i.i151, i32 0, i32 %res.0.i.i26.i)
  br label %out.i157

if.end7.i154:                                     ; preds = %if.end.i.i.i149
  %72 = ptrtoint ptr %65 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %65, align 4
  %conv.i = zext i16 %73 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %73)
  %cmp.i153 = icmp ult i16 %73, 32
  br i1 %cmp.i153, label %if.end7.i154.out.i157_crit_edge, label %if.end10.i

if.end7.i154.out.i157_crit_edge:                  ; preds = %if.end7.i154
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i157

if.end10.i:                                       ; preds = %if.end7.i154
  %74 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %64, align 8
  %ns_nsegments.i = getelementptr inbounds %struct.the_nilfs, ptr %62, i32 0, i32 46
  %76 = ptrtoint ptr %ns_nsegments.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ns_nsegments.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp11.i = icmp ugt i32 %75, %77
  br i1 %cmp11.i, label %if.end10.i.out.i157_crit_edge, label %if.end14.i

if.end10.i.out.i157_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i157

if.end14.i:                                       ; preds = %if.end10.i
  %div.i = udiv i32 -1, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %div.i)
  %cmp18.not.i = icmp ult i32 %75, %div.i
  br i1 %cmp18.not.i, label %if.end21.i, label %if.end14.i.out.i157_crit_edge

if.end14.i.out.i157_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i157

if.end21.i:                                       ; preds = %if.end14.i
  %mul.i = mul i32 %75, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool25.not.i = icmp eq i32 %mul.i, 0
  br i1 %tobool25.not.i, label %if.end21.i.out.i157_crit_edge, label %if.end27.i

if.end21.i.out.i157_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i157

if.end27.i:                                       ; preds = %if.end21.i
  %78 = ptrtoint ptr %argv.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %argv.i, align 8
  %call29.i = call noalias ptr @vmalloc(i32 noundef %mul.i) #11
  %tobool30.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool30.not.i, label %if.end27.i.out.i157_crit_edge, label %if.end32.i

if.end27.i.out.i157_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i157

if.end32.i:                                       ; preds = %if.end27.i
  %conv28.i = trunc i64 %79 to i32
  %80 = inttoptr i32 %conv28.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp9.i.i.i = icmp slt i32 %mul.i, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end32.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.out_free.i_crit_edge, label %if.then27.i.i.i, !prof !48

land.rhs16.i.i.i.out_free.i_crit_edge:            ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %out_free.i

if.then.i.i.i.i:                                  ; preds = %if.end32.i
  call void @__check_object_size(ptr noundef nonnull %call29.i, i32 noundef %mul.i, i1 noundef zeroext false) #7
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #7
  %call.i.i5.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i5.i, label %if.then.i.i.i.i.if.then11.i.i21.i_crit_edge, label %land.lhs.true.i.i8.i

if.then.i.i.i.i.if.then11.i.i21.i_crit_edge:      ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i21.i

land.lhs.true.i.i8.i:                             ; preds = %if.then.i.i.i.i
  %81 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %80, i32 %mul.i, i32 -1226833920) #10, !srcloc !47
  %asmresult.i.i6.i = extractvalue { i32, i32 } %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i6.i)
  %cmp.i6.i7.i = icmp eq i32 %asmresult.i.i6.i, 0
  br i1 %cmp.i6.i7.i, label %if.end.i.i18.i, label %land.lhs.true.i.i8.i.if.then11.i.i21.i_crit_edge, !prof !48

land.lhs.true.i.i8.i.if.then11.i.i21.i_crit_edge: ; preds = %land.lhs.true.i.i8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i21.i

if.end.i.i18.i:                                   ; preds = %land.lhs.true.i.i8.i
  %call.i.i.i9.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call29.i, i32 noundef %mul.i) #7
  %82 = call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i.i.i.i.i10.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i.i10.i to ptr
  %cpu_domain.i.i.i.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 4
  %84 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i11.i) #3, !srcloc !43
  %and.i.i.i.i12.i = and i32 %84, -13
  %or.i.i.i.i13.i = or i32 %and.i.i.i.i12.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i13.i) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %call1.i.i.i14.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call29.i, ptr noundef %80, i32 noundef %mul.i) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %84) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i14.i)
  %tobool4.not.i.i17.i = icmp eq i32 %call1.i.i.i14.i, 0
  br i1 %tobool4.not.i.i17.i, label %if.end36.i, label %if.end.i.i18.i.if.then11.i.i21.i_crit_edge, !prof !48

if.end.i.i18.i.if.then11.i.i21.i_crit_edge:       ; preds = %if.end.i.i18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i21.i

if.then11.i.i21.i:                                ; preds = %if.end.i.i18.i.if.then11.i.i21.i_crit_edge, %land.lhs.true.i.i8.i.if.then11.i.i21.i_crit_edge, %if.then.i.i.i.i.if.then11.i.i21.i_crit_edge
  %res.0.i.i1631.i = phi i32 [ %call1.i.i.i14.i, %if.end.i.i18.i.if.then11.i.i21.i_crit_edge ], [ %mul.i, %if.then.i.i.i.i.if.then11.i.i21.i_crit_edge ], [ %mul.i, %land.lhs.true.i.i8.i.if.then11.i.i21.i_crit_edge ]
  %sub.i.i19.i = sub i32 %mul.i, %res.0.i.i1631.i
  %add.ptr.i.i20.i = getelementptr i8, ptr %call29.i, i32 %sub.i.i19.i
  %85 = call ptr @memset(ptr %add.ptr.i.i20.i, i32 0, i32 %res.0.i.i1631.i)
  br label %out_free.i

if.end36.i:                                       ; preds = %if.end.i.i18.i
  %86 = ptrtoint ptr %i_sb.i131 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %i_sb.i131, align 4
  %call38.i = call i32 @nilfs_transaction_begin(ptr noundef %87, ptr noundef nonnull %ti.i130, i32 noundef 0) #7
  %ns_sufile.i = getelementptr inbounds %struct.the_nilfs, ptr %62, i32 0, i32 31
  %88 = ptrtoint ptr %ns_sufile.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ns_sufile.i, align 4
  %90 = ptrtoint ptr %65 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %65, align 4
  %conv40.i = zext i16 %91 to i32
  %92 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %64, align 8
  %call42.i = call i32 @nilfs_sufile_set_suinfo(ptr noundef %89, ptr noundef nonnull %call29.i, i32 noundef %conv40.i, i32 noundef %93) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %cmp43.i = icmp slt i32 %call42.i, 0
  %94 = ptrtoint ptr %i_sb.i131 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %i_sb.i131, align 4
  br i1 %cmp43.i, label %if.then47.i, label %if.else.i155, !prof !42

if.then47.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @nilfs_transaction_abort(ptr noundef %95) #7
  br label %out_free.i

if.else.i155:                                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  %call50.i = call i32 @nilfs_transaction_commit(ptr noundef %95) #7
  br label %out_free.i

out_free.i:                                       ; preds = %if.else.i155, %if.then47.i, %if.then11.i.i21.i, %if.then27.i.i.i, %land.rhs16.i.i.i.out_free.i_crit_edge
  %ret.0.i156 = phi i32 [ %call42.i, %if.then47.i ], [ %call42.i, %if.else.i155 ], [ -14, %if.then11.i.i21.i ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.out_free.i_crit_edge ]
  call void @vfree(ptr noundef nonnull %call29.i) #7
  br label %out.i157

out.i157:                                         ; preds = %out_free.i, %if.end27.i.out.i157_crit_edge, %if.end21.i.out.i157_crit_edge, %if.end14.i.out.i157_crit_edge, %if.end10.i.out.i157_crit_edge, %if.end7.i154.out.i157_crit_edge, %if.then11.i.i.i152
  %ret.1.i = phi i32 [ -22, %if.end7.i154.out.i157_crit_edge ], [ -22, %if.end10.i.out.i157_crit_edge ], [ -22, %if.end14.i.out.i157_crit_edge ], [ %ret.0.i156, %out_free.i ], [ 0, %if.end21.i.out.i157_crit_edge ], [ -12, %if.end27.i.out.i157_crit_edge ], [ -14, %if.then11.i.i.i152 ]
  call void @mnt_drop_write_file(ptr noundef %filp) #7
  br label %nilfs_ioctl_set_suinfo.exit

nilfs_ioctl_set_suinfo.exit:                      ; preds = %out.i157, %if.end.i136.nilfs_ioctl_set_suinfo.exit_crit_edge, %sw.bb12.nilfs_ioctl_set_suinfo.exit_crit_edge
  %retval.0.i158 = phi i32 [ %ret.1.i, %out.i157 ], [ -1, %sw.bb12.nilfs_ioctl_set_suinfo.exit_crit_edge ], [ %call1.i134, %if.end.i136.nilfs_ioctl_set_suinfo.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %argv.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ti.i130) #7
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %i_sb.i159 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %96 = ptrtoint ptr %i_sb.i159 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %i_sb.i159, align 4
  %s_fs_info.i160 = getelementptr inbounds %struct.super_block, ptr %97, i32 0, i32 33
  %98 = ptrtoint ptr %s_fs_info.i160 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %s_fs_info.i160, align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %sustat.i) #7
  %ns_segctor_sem.i161 = getelementptr inbounds %struct.the_nilfs, ptr %99, i32 0, i32 28
  %100 = call ptr @memset(ptr %sustat.i, i32 255, i32 48)
  tail call void @down_read(ptr noundef %ns_segctor_sem.i161) #7
  %ns_sufile.i162 = getelementptr inbounds %struct.the_nilfs, ptr %99, i32 0, i32 31
  %101 = ptrtoint ptr %ns_sufile.i162 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ns_sufile.i162, align 4
  %call.i163 = call i32 @nilfs_sufile_get_stat(ptr noundef %102, ptr noundef nonnull %sustat.i) #7
  call void @up_read(ptr noundef %ns_segctor_sem.i161) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %cmp.i164 = icmp slt i32 %call.i163, 0
  br i1 %cmp.i164, label %sw.bb14.nilfs_ioctl_get_sustat.exit_crit_edge, label %if.end8.i.i.i166

sw.bb14.nilfs_ioctl_get_sustat.exit_crit_edge:    ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_get_sustat.exit

if.end8.i.i.i166:                                 ; preds = %sw.bb14
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #7
  %call.i.i.i165 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i165, label %if.end8.i.i.i166.nilfs_ioctl_get_sustat.exit_crit_edge, label %if.end.i.i.i169

if.end8.i.i.i166.nilfs_ioctl_get_sustat.exit_crit_edge: ; preds = %if.end8.i.i.i166
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_get_sustat.exit

if.end.i.i.i169:                                  ; preds = %if.end8.i.i.i166
  %103 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 48, i32 -1226833920) #10, !srcloc !49
  %asmresult.i.i.i167 = extractvalue { i32, i32 } %103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i167)
  %cmp.i6.i.i168 = icmp eq i32 %asmresult.i.i.i167, 0
  br i1 %cmp.i6.i.i168, label %copy_to_user.exit.i174, label %if.end.i.i.i169.nilfs_ioctl_get_sustat.exit_crit_edge

if.end.i.i.i169.nilfs_ioctl_get_sustat.exit_crit_edge: ; preds = %if.end.i.i.i169
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_get_sustat.exit

copy_to_user.exit.i174:                           ; preds = %if.end.i.i.i169
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i170 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sustat.i, i32 noundef 48) #7
  %call.i12.i.i.i171 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %sustat.i, i32 noundef 48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i171)
  %tobool.not.i172 = icmp eq i32 %call.i12.i.i.i171, 0
  %spec.select.i173 = select i1 %tobool.not.i172, i32 %call.i163, i32 -14
  br label %nilfs_ioctl_get_sustat.exit

nilfs_ioctl_get_sustat.exit:                      ; preds = %copy_to_user.exit.i174, %if.end.i.i.i169.nilfs_ioctl_get_sustat.exit_crit_edge, %if.end8.i.i.i166.nilfs_ioctl_get_sustat.exit_crit_edge, %sw.bb14.nilfs_ioctl_get_sustat.exit_crit_edge
  %retval.0.i175 = phi i32 [ %call.i163, %sw.bb14.nilfs_ioctl_get_sustat.exit_crit_edge ], [ -14, %if.end8.i.i.i166.nilfs_ioctl_get_sustat.exit_crit_edge ], [ -14, %if.end.i.i.i169.nilfs_ioctl_get_sustat.exit_crit_edge ], [ %spec.select.i173, %copy_to_user.exit.i174 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sustat.i) #7
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call fastcc i32 @nilfs_ioctl_get_info(ptr noundef %1, i32 noundef -1072140666, ptr noundef %2, i32 noundef 32, ptr noundef nonnull @nilfs_ioctl_do_get_vinfo)
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  %i_sb.i177 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %104 = ptrtoint ptr %i_sb.i177 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %i_sb.i177, align 4
  %s_fs_info.i178 = getelementptr inbounds %struct.super_block, ptr %105, i32 0, i32 33
  %106 = ptrtoint ptr %s_fs_info.i178 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %s_fs_info.i178, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %argv.i176) #7
  %108 = getelementptr inbounds %struct.nilfs_argv, ptr %argv.i176, i32 0, i32 2
  %109 = call ptr @memset(ptr %argv.i176, i32 255, i32 24)
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #7
  %call.i.i.i179 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i179, label %sw.bb18.if.then11.i.i.i193_crit_edge, label %land.lhs.true.i.i.i182

sw.bb18.if.then11.i.i.i193_crit_edge:             ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i193

land.lhs.true.i.i.i182:                           ; preds = %sw.bb18
  %110 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 24, i32 -1226833920) #10
  %asmresult.i.i.i180 = extractvalue { i32, i32 } %110, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i180)
  %cmp.i6.i.i181 = icmp eq i32 %asmresult.i.i.i180, 0
  br i1 %cmp.i6.i.i181, label %if.end.i.i.i190, label %land.lhs.true.i.i.i182.if.then11.i.i.i193_crit_edge, !prof !48

land.lhs.true.i.i.i182.if.then11.i.i.i193_crit_edge: ; preds = %land.lhs.true.i.i.i182
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i193

if.end.i.i.i190:                                  ; preds = %land.lhs.true.i.i.i182
  %call.i.i.i.i183 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %argv.i176, i32 noundef 24) #7
  %111 = call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i.i.i.i.i.i184 = and i32 %111, -16384
  %112 = inttoptr i32 %and.i.i.i.i.i.i.i184 to ptr
  %cpu_domain.i.i.i.i.i.i185 = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 4
  %113 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i185) #3, !srcloc !43
  %and.i.i.i.i.i186 = and i32 %113, -13
  %or.i.i.i.i.i187 = or i32 %and.i.i.i.i.i186, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i187) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %call1.i.i.i.i188 = call i32 @arm_copy_from_user(ptr noundef nonnull %argv.i176, ptr noundef %2, i32 noundef 24) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %113) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i188)
  %tobool4.not.i.i.i189 = icmp eq i32 %call1.i.i.i.i188, 0
  br i1 %tobool4.not.i.i.i189, label %if.end.i194, label %if.end.i.i.i190.if.then11.i.i.i193_crit_edge, !prof !48

if.end.i.i.i190.if.then11.i.i.i193_crit_edge:     ; preds = %if.end.i.i.i190
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i193

if.then11.i.i.i193:                               ; preds = %if.end.i.i.i190.if.then11.i.i.i193_crit_edge, %land.lhs.true.i.i.i182.if.then11.i.i.i193_crit_edge, %sw.bb18.if.then11.i.i.i193_crit_edge
  %res.0.i.i13.i = phi i32 [ %call1.i.i.i.i188, %if.end.i.i.i190.if.then11.i.i.i193_crit_edge ], [ 24, %sw.bb18.if.then11.i.i.i193_crit_edge ], [ 24, %land.lhs.true.i.i.i182.if.then11.i.i.i193_crit_edge ]
  %sub.i.i.i191 = sub i32 24, %res.0.i.i13.i
  %add.ptr.i.i.i192 = getelementptr i8, ptr %argv.i176, i32 %sub.i.i.i191
  %114 = call ptr @memset(ptr %add.ptr.i.i.i192, i32 0, i32 %res.0.i.i13.i)
  br label %nilfs_ioctl_get_bdescs.exit

if.end.i194:                                      ; preds = %if.end.i.i.i190
  %115 = ptrtoint ptr %108 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %108, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %116)
  %cmp.not.i = icmp eq i16 %116, 40
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i194.nilfs_ioctl_get_bdescs.exit_crit_edge

if.end.i194.nilfs_ioctl_get_bdescs.exit_crit_edge: ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_get_bdescs.exit

if.end3.i:                                        ; preds = %if.end.i194
  %call4.i = call fastcc i32 @nilfs_ioctl_wrap_copy(ptr noundef %107, ptr noundef nonnull %argv.i176, i32 noundef 3, ptr noundef nonnull @nilfs_ioctl_do_get_bdescs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end3.i.nilfs_ioctl_get_bdescs.exit_crit_edge, label %if.end8.i.i4.i196

if.end3.i.nilfs_ioctl_get_bdescs.exit_crit_edge:  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_get_bdescs.exit

if.end8.i.i4.i196:                                ; preds = %if.end3.i
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #7
  %call.i.i5.i195 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i5.i195, label %if.end8.i.i4.i196.nilfs_ioctl_get_bdescs.exit_crit_edge, label %copy_to_user.exit.i200

if.end8.i.i4.i196.nilfs_ioctl_get_bdescs.exit_crit_edge: ; preds = %if.end8.i.i4.i196
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_get_bdescs.exit

copy_to_user.exit.i200:                           ; preds = %if.end8.i.i4.i196
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i9.i197 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %argv.i176, i32 noundef 24) #7
  %call.i12.i.i.i198 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %argv.i176, i32 noundef 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i198)
  %tobool10.not.i = icmp eq i32 %call.i12.i.i.i198, 0
  %spec.select.i199 = select i1 %tobool10.not.i, i32 %call4.i, i32 -14
  br label %nilfs_ioctl_get_bdescs.exit

nilfs_ioctl_get_bdescs.exit:                      ; preds = %copy_to_user.exit.i200, %if.end8.i.i4.i196.nilfs_ioctl_get_bdescs.exit_crit_edge, %if.end3.i.nilfs_ioctl_get_bdescs.exit_crit_edge, %if.end.i194.nilfs_ioctl_get_bdescs.exit_crit_edge, %if.then11.i.i.i193
  %retval.0.i201 = phi i32 [ -22, %if.end.i194.nilfs_ioctl_get_bdescs.exit_crit_edge ], [ %call4.i, %if.end3.i.nilfs_ioctl_get_bdescs.exit_crit_edge ], [ -14, %if.then11.i.i.i193 ], [ -14, %if.end8.i.i4.i196.nilfs_ioctl_get_bdescs.exit_crit_edge ], [ %spec.select.i199, %copy_to_user.exit.i200 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %argv.i176) #7
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %argv.i202) #7
  %117 = call ptr @memset(ptr %argv.i202, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %kbufs.i) #7
  %118 = getelementptr inbounds [5 x ptr], ptr %kbufs.i, i32 0, i32 4
  %119 = call ptr @memset(ptr %kbufs.i, i32 255, i32 20)
  %call.i203 = tail call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %call.i203, label %if.end.i206, label %sw.bb20.nilfs_ioctl_clean_segments.exit_crit_edge

sw.bb20.nilfs_ioctl_clean_segments.exit_crit_edge: ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_clean_segments.exit

if.end.i206:                                      ; preds = %sw.bb20
  %call1.i204 = tail call i32 @mnt_want_write_file(ptr noundef %filp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i204)
  %tobool.not.i205 = icmp eq i32 %call1.i204, 0
  br i1 %tobool.not.i205, label %if.end8.i.i.i208, label %if.end.i206.nilfs_ioctl_clean_segments.exit_crit_edge

if.end.i206.nilfs_ioctl_clean_segments.exit_crit_edge: ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_clean_segments.exit

if.end8.i.i.i208:                                 ; preds = %if.end.i206
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #7
  %call.i.i.i207 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i207, label %if.end8.i.i.i208.if.then11.i.i.i222_crit_edge, label %land.lhs.true.i.i.i211

if.end8.i.i.i208.if.then11.i.i.i222_crit_edge:    ; preds = %if.end8.i.i.i208
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i222

land.lhs.true.i.i.i211:                           ; preds = %if.end8.i.i.i208
  %120 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 120, i32 -1226833920) #10, !srcloc !47
  %asmresult.i.i.i209 = extractvalue { i32, i32 } %120, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i209)
  %cmp.i6.i.i210 = icmp eq i32 %asmresult.i.i.i209, 0
  br i1 %cmp.i6.i.i210, label %if.end.i.i.i219, label %land.lhs.true.i.i.i211.if.then11.i.i.i222_crit_edge, !prof !48

land.lhs.true.i.i.i211.if.then11.i.i.i222_crit_edge: ; preds = %land.lhs.true.i.i.i211
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i222

if.end.i.i.i219:                                  ; preds = %land.lhs.true.i.i.i211
  %call.i.i.i.i212 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %argv.i202, i32 noundef 120) #7
  %121 = call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i.i.i.i.i.i213 = and i32 %121, -16384
  %122 = inttoptr i32 %and.i.i.i.i.i.i.i213 to ptr
  %cpu_domain.i.i.i.i.i.i214 = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 4
  %123 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i214) #3, !srcloc !43
  %and.i.i.i.i.i215 = and i32 %123, -13
  %or.i.i.i.i.i216 = or i32 %and.i.i.i.i.i215, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i216) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %call1.i.i.i.i217 = call i32 @arm_copy_from_user(ptr noundef nonnull %argv.i202, ptr noundef %2, i32 noundef 120) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %123) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i217)
  %tobool4.not.i.i.i218 = icmp eq i32 %call1.i.i.i.i217, 0
  br i1 %tobool4.not.i.i.i218, label %if.end7.i224, label %if.end.i.i.i219.if.then11.i.i.i222_crit_edge, !prof !48

if.end.i.i.i219.if.then11.i.i.i222_crit_edge:     ; preds = %if.end.i.i.i219
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i222

if.then11.i.i.i222:                               ; preds = %if.end.i.i.i219.if.then11.i.i.i222_crit_edge, %land.lhs.true.i.i.i211.if.then11.i.i.i222_crit_edge, %if.end8.i.i.i208.if.then11.i.i.i222_crit_edge
  %res.0.i.i27.i = phi i32 [ %call1.i.i.i.i217, %if.end.i.i.i219.if.then11.i.i.i222_crit_edge ], [ 120, %if.end8.i.i.i208.if.then11.i.i.i222_crit_edge ], [ 120, %land.lhs.true.i.i.i211.if.then11.i.i.i222_crit_edge ]
  %sub.i.i.i220 = sub i32 120, %res.0.i.i27.i
  %add.ptr.i.i.i221 = getelementptr i8, ptr %argv.i202, i32 %sub.i.i.i220
  %124 = call ptr @memset(ptr %add.ptr.i.i.i221, i32 0, i32 %res.0.i.i27.i)
  br label %out.i262

if.end7.i224:                                     ; preds = %if.end.i.i.i219
  %v_nmembs.i = getelementptr inbounds [5 x %struct.nilfs_argv], ptr %argv.i202, i32 0, i32 4, i32 1
  %125 = ptrtoint ptr %v_nmembs.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %v_nmembs.i, align 8
  %v_size.i = getelementptr inbounds [5 x %struct.nilfs_argv], ptr %argv.i202, i32 0, i32 4, i32 2
  %127 = ptrtoint ptr %v_size.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %v_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %128)
  %cmp.not.i223 = icmp ne i16 %128, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870911, i32 %126)
  %cmp12.i = icmp ugt i32 %126, 536870911
  %or.cond.i = select i1 %cmp.not.i223, i1 true, i1 %cmp12.i
  br i1 %or.cond.i, label %if.end7.i224.out.i262_crit_edge, label %if.end15.i

if.end7.i224.out.i262_crit_edge:                  ; preds = %if.end7.i224
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i262

if.end15.i:                                       ; preds = %if.end7.i224
  %arrayidx.i = getelementptr inbounds [5 x %struct.nilfs_argv], ptr %argv.i202, i32 0, i32 4
  %129 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %arrayidx.i, align 8
  %conv17.i = trunc i64 %130 to i32
  %131 = inttoptr i32 %conv17.i to ptr
  %mul.i225 = shl nuw i32 %126, 3
  %call18.i = call ptr @memdup_user(ptr noundef %131, i32 noundef %mul.i225) #7
  %132 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call18.i, ptr %118, align 4
  %cmp.i.i = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then22.i, label %if.end25.i

if.then22.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %133 = ptrtoint ptr %call18.i to i32
  br label %out.i262

if.end25.i:                                       ; preds = %if.end15.i
  %i_sb.i226 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %134 = ptrtoint ptr %i_sb.i226 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %i_sb.i226, align 4
  %s_fs_info.i227 = getelementptr inbounds %struct.super_block, ptr %135, i32 0, i32 33
  %136 = ptrtoint ptr %s_fs_info.i227 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %s_fs_info.i227, align 16
  %ns_blocks_per_segment.i = getelementptr inbounds %struct.the_nilfs, ptr %137, i32 0, i32 47
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end25.i
  %n.056.i = phi i32 [ 0, %if.end25.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx28.i = getelementptr [5 x %struct.nilfs_argv], ptr %argv.i202, i32 0, i32 %n.056.i
  %v_size29.i = getelementptr [5 x %struct.nilfs_argv], ptr %argv.i202, i32 0, i32 %n.056.i, i32 2
  %138 = ptrtoint ptr %v_size29.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %v_size29.i, align 4
  %conv30.i = zext i16 %139 to i32
  %arrayidx31.i = getelementptr [5 x i32], ptr @nilfs_ioctl_clean_segments.argsz, i32 0, i32 %n.056.i
  %140 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx31.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %conv30.i)
  %cmp32.not.i = icmp eq i32 %141, %conv30.i
  br i1 %cmp32.not.i, label %if.end35.i, label %for.body.i.out_free.i261_crit_edge

for.body.i.out_free.i261_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free.i261

if.end35.i:                                       ; preds = %for.body.i
  %v_nmembs37.i = getelementptr [5 x %struct.nilfs_argv], ptr %argv.i202, i32 0, i32 %n.056.i, i32 1
  %142 = ptrtoint ptr %v_nmembs37.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %v_nmembs37.i, align 8
  %144 = ptrtoint ptr %ns_blocks_per_segment.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %ns_blocks_per_segment.i, align 4
  %mul38.i = mul i32 %145, %126
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %mul38.i)
  %cmp39.i = icmp ugt i32 %143, %mul38.i
  br i1 %cmp39.i, label %if.end35.i.out_free.i261_crit_edge, label %if.end42.i

if.end35.i.out_free.i261_crit_edge:               ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free.i261

if.end42.i:                                       ; preds = %if.end35.i
  %div.i228 = udiv i32 -1, %conv30.i
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %div.i228)
  %cmp48.not.i = icmp ult i32 %143, %div.i228
  br i1 %cmp48.not.i, label %if.end51.i, label %if.end42.i.out_free.i261_crit_edge

if.end42.i.out_free.i261_crit_edge:               ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free.i261

if.end51.i:                                       ; preds = %if.end42.i
  %mul57.i = mul i32 %143, %conv30.i
  %146 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %arrayidx28.i, align 8
  %conv60.i = trunc i64 %147 to i32
  %148 = inttoptr i32 %conv60.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul57.i)
  %cmp61.i = icmp eq i32 %mul57.i, 0
  br i1 %cmp61.i, label %if.then63.i, label %if.end65.i

if.then63.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx64.i = getelementptr [5 x ptr], ptr %kbufs.i, i32 0, i32 %n.056.i
  %149 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %arrayidx64.i, align 4
  br label %for.inc.i

if.end65.i:                                       ; preds = %if.end51.i
  %call66.i = call noalias ptr @vmalloc(i32 noundef %mul57.i) #11
  %arrayidx67.i = getelementptr [5 x ptr], ptr %kbufs.i, i32 0, i32 %n.056.i
  %150 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %call66.i, ptr %arrayidx67.i, align 4
  %tobool69.not.i = icmp eq ptr %call66.i, null
  br i1 %tobool69.not.i, label %if.end65.i.out_free.i261_crit_edge, label %if.end8.i.i4.i236

if.end65.i.out_free.i261_crit_edge:               ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free.i261

if.end8.i.i4.i236:                                ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul57.i)
  %cmp9.i.i.i235 = icmp slt i32 %mul57.i, 0
  br i1 %cmp9.i.i.i235, label %land.rhs16.i.i.i238, label %if.then.i.i.i.i241

land.rhs16.i.i.i238:                              ; preds = %if.end8.i.i4.i236
  %.b71.i.i.i237 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i237, label %land.rhs16.i.i.i238.if.then75.i_crit_edge, label %if.then27.i.i.i239, !prof !48

land.rhs16.i.i.i238.if.then75.i_crit_edge:        ; preds = %land.rhs16.i.i.i238
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then75.i

if.then27.i.i.i239:                               ; preds = %land.rhs16.i.i.i238
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %if.then75.i

if.then.i.i.i.i241:                               ; preds = %if.end8.i.i4.i236
  call void @__check_object_size(ptr noundef nonnull %call66.i, i32 noundef %mul57.i, i1 noundef zeroext false) #7
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #7
  %call.i.i5.i242 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i5.i242, label %if.then.i.i.i.i241.if.then11.i.i21.i257_crit_edge, label %land.lhs.true.i.i8.i246

if.then.i.i.i.i241.if.then11.i.i21.i257_crit_edge: ; preds = %if.then.i.i.i.i241
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i21.i257

land.lhs.true.i.i8.i246:                          ; preds = %if.then.i.i.i.i241
  %151 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %148, i32 %mul57.i, i32 -1226833920) #10, !srcloc !47
  %asmresult.i.i6.i244 = extractvalue { i32, i32 } %151, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i6.i244)
  %cmp.i6.i7.i245 = icmp eq i32 %asmresult.i.i6.i244, 0
  br i1 %cmp.i6.i7.i245, label %if.end.i.i18.i254, label %land.lhs.true.i.i8.i246.if.then11.i.i21.i257_crit_edge, !prof !48

land.lhs.true.i.i8.i246.if.then11.i.i21.i257_crit_edge: ; preds = %land.lhs.true.i.i8.i246
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i21.i257

if.end.i.i18.i254:                                ; preds = %land.lhs.true.i.i8.i246
  %call.i.i.i9.i247 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call66.i, i32 noundef %mul57.i) #7
  %152 = call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i.i.i.i.i10.i248 = and i32 %152, -16384
  %153 = inttoptr i32 %and.i.i.i.i.i.i10.i248 to ptr
  %cpu_domain.i.i.i.i.i11.i249 = getelementptr inbounds %struct.thread_info, ptr %153, i32 0, i32 4
  %154 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i11.i249) #3, !srcloc !43
  %and.i.i.i.i12.i250 = and i32 %154, -13
  %or.i.i.i.i13.i251 = or i32 %and.i.i.i.i12.i250, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i13.i251) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %call1.i.i.i14.i252 = call i32 @arm_copy_from_user(ptr noundef nonnull %call66.i, ptr noundef %148, i32 noundef %mul57.i) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %154) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i14.i252)
  %tobool4.not.i.i17.i253 = icmp eq i32 %call1.i.i.i14.i252, 0
  br i1 %tobool4.not.i.i17.i253, label %if.end.i.i18.i254.for.inc.i_crit_edge, label %if.end.i.i18.i254.if.then11.i.i21.i257_crit_edge, !prof !48

if.end.i.i18.i254.if.then11.i.i21.i257_crit_edge: ; preds = %if.end.i.i18.i254
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i21.i257

if.end.i.i18.i254.for.inc.i_crit_edge:            ; preds = %if.end.i.i18.i254
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then11.i.i21.i257:                             ; preds = %if.end.i.i18.i254.if.then11.i.i21.i257_crit_edge, %land.lhs.true.i.i8.i246.if.then11.i.i21.i257_crit_edge, %if.then.i.i.i.i241.if.then11.i.i21.i257_crit_edge
  %res.0.i.i1632.i = phi i32 [ %call1.i.i.i14.i252, %if.end.i.i18.i254.if.then11.i.i21.i257_crit_edge ], [ %mul57.i, %if.then.i.i.i.i241.if.then11.i.i21.i257_crit_edge ], [ %mul57.i, %land.lhs.true.i.i8.i246.if.then11.i.i21.i257_crit_edge ]
  %sub.i.i19.i255 = sub i32 %mul57.i, %res.0.i.i1632.i
  %add.ptr.i.i20.i256 = getelementptr i8, ptr %call66.i, i32 %sub.i.i19.i255
  %155 = call ptr @memset(ptr %add.ptr.i.i20.i256, i32 0, i32 %res.0.i.i1632.i)
  br label %if.then75.i

if.then75.i:                                      ; preds = %if.then11.i.i21.i257, %if.then27.i.i.i239, %land.rhs16.i.i.i238.if.then75.i_crit_edge
  %arrayidx67.i403 = getelementptr [5 x ptr], ptr %kbufs.i, i32 0, i32 %n.056.i
  %156 = ptrtoint ptr %arrayidx67.i403 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx67.i403, align 4
  call void @vfree(ptr noundef %157) #7
  br label %out_free.i261

for.inc.i:                                        ; preds = %if.end.i.i18.i254.for.inc.i_crit_edge, %if.then63.i
  %inc.i = add nuw nsw i32 %n.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %call78.i = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %137) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.not.i, label %if.end81.i, label %for.end.i.while.body.i_crit_edge

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end81.i:                                       ; preds = %for.end.i
  %158 = ptrtoint ptr %i_sb.i226 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %i_sb.i226, align 4
  %160 = ptrtoint ptr %kbufs.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %kbufs.i, align 4
  %call85.i = call fastcc i32 @nilfs_ioctl_move_blocks(ptr noundef %159, ptr noundef nonnull %argv.i202, ptr noundef %161) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %cmp86.i = icmp slt i32 %call85.i, 0
  br i1 %cmp86.i, label %if.then88.i, label %if.else.i258

if.then88.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #9
  %162 = ptrtoint ptr %i_sb.i226 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %i_sb.i226, align 4
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %163, ptr noundef nonnull @.str.8, i32 noundef %call85.i) #7
  br label %if.end98.i

if.else.i258:                                     ; preds = %if.end81.i
  %call.i.i = call i64 @ktime_get_real_seconds() #7
  %ns_sbwtime.i.i = getelementptr inbounds %struct.the_nilfs, ptr %137, i32 0, i32 8
  %164 = ptrtoint ptr %ns_sbwtime.i.i to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %ns_sbwtime.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %165)
  %cmp.i24.i = icmp ult i64 %call.i.i, %165
  br i1 %cmp.i24.i, label %if.else.i258.if.then92.i_crit_edge, label %nilfs_sb_need_update.exit.i

if.else.i258.if.then92.i_crit_edge:               ; preds = %if.else.i258
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then92.i

nilfs_sb_need_update.exit.i:                      ; preds = %if.else.i258
  %ns_sb_update_freq.i.i = getelementptr inbounds %struct.the_nilfs, ptr %137, i32 0, i32 12
  %166 = ptrtoint ptr %ns_sb_update_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %ns_sb_update_freq.i.i, align 4
  %conv.i.i = zext i32 %167 to i64
  %add.i.i = add i64 %165, %conv.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %add.i.i)
  %cmp2.i.not.i = icmp ugt i64 %call.i.i, %add.i.i
  br i1 %cmp2.i.not.i, label %nilfs_sb_need_update.exit.i.if.then92.i_crit_edge, label %nilfs_sb_need_update.exit.i.if.end93.i_crit_edge

nilfs_sb_need_update.exit.i.if.end93.i_crit_edge: ; preds = %nilfs_sb_need_update.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93.i

nilfs_sb_need_update.exit.i.if.then92.i_crit_edge: ; preds = %nilfs_sb_need_update.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then92.i

if.then92.i:                                      ; preds = %nilfs_sb_need_update.exit.i.if.then92.i_crit_edge, %if.else.i258.if.then92.i_crit_edge
  call void @_set_bit(i32 noundef 1, ptr noundef %137) #7
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then92.i, %nilfs_sb_need_update.exit.i.if.end93.i_crit_edge
  %168 = ptrtoint ptr %i_sb.i226 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %i_sb.i226, align 4
  %call97.i = call i32 @nilfs_clean_segments(ptr noundef %169, ptr noundef nonnull %argv.i202, ptr noundef nonnull %kbufs.i) #7
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.end93.i, %if.then88.i
  %ret.0.i259 = phi i32 [ %call85.i, %if.then88.i ], [ %call97.i, %if.end93.i ]
  call void @nilfs_remove_all_gcinodes(ptr noundef %137) #7
  call void @_clear_bit(i32 noundef 2, ptr noundef %137) #7
  br label %while.body.i

out_free.i261:                                    ; preds = %if.then75.i, %if.end65.i.out_free.i261_crit_edge, %if.end42.i.out_free.i261_crit_edge, %if.end35.i.out_free.i261_crit_edge, %for.body.i.out_free.i261_crit_edge
  %ret.1.i260 = phi i32 [ -14, %if.then75.i ], [ -22, %for.body.i.out_free.i261_crit_edge ], [ -22, %if.end35.i.out_free.i261_crit_edge ], [ -22, %if.end42.i.out_free.i261_crit_edge ], [ -12, %if.end65.i.out_free.i261_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.056.i)
  %cmp9959.not.i = icmp eq i32 %n.056.i, 0
  br i1 %cmp9959.not.i, label %out_free.i261.while.end.i_crit_edge, label %out_free.i261.while.body.i_crit_edge

out_free.i261.while.body.i_crit_edge:             ; preds = %out_free.i261
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

out_free.i261.while.end.i_crit_edge:              ; preds = %out_free.i261
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i:                                     ; preds = %out_free.i261.while.body.i_crit_edge, %if.end98.i, %for.end.i.while.body.i_crit_edge
  %ret.175.i = phi i32 [ %ret.1.i260, %out_free.i261.while.body.i_crit_edge ], [ -16, %for.end.i.while.body.i_crit_edge ], [ %ret.0.i259, %if.end98.i ]
  %n.04074.i = phi i32 [ %n.056.i, %out_free.i261.while.body.i_crit_edge ], [ 4, %for.end.i.while.body.i_crit_edge ], [ 4, %if.end98.i ]
  %dec60.i = add nsw i32 %n.04074.i, -1
  %arrayidx101.i = getelementptr [5 x ptr], ptr %kbufs.i, i32 0, i32 %dec60.i
  %170 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx101.i, align 4
  call void @vfree(ptr noundef %171) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n.04074.i)
  %cmp99.i = icmp ugt i32 %n.04074.i, 1
  br i1 %cmp99.i, label %while.body.i.1, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i.1:                                   ; preds = %while.body.i
  %dec60.i.1 = add nsw i32 %n.04074.i, -2
  %arrayidx101.i.1 = getelementptr [5 x ptr], ptr %kbufs.i, i32 0, i32 %dec60.i.1
  %172 = ptrtoint ptr %arrayidx101.i.1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx101.i.1, align 4
  call void @vfree(ptr noundef %173) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %n.04074.i)
  %cmp99.i.1.not = icmp eq i32 %n.04074.i, 2
  br i1 %cmp99.i.1.not, label %while.body.i.1.while.end.i_crit_edge, label %while.body.i.2

while.body.i.1.while.end.i_crit_edge:             ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i.2:                                   ; preds = %while.body.i.1
  %dec60.i.2 = add nsw i32 %n.04074.i, -3
  %arrayidx101.i.2 = getelementptr [5 x ptr], ptr %kbufs.i, i32 0, i32 %dec60.i.2
  %174 = ptrtoint ptr %arrayidx101.i.2 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx101.i.2, align 4
  call void @vfree(ptr noundef %175) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %n.04074.i)
  %cmp99.i.2 = icmp ugt i32 %n.04074.i, 3
  br i1 %cmp99.i.2, label %while.body.i.3, label %while.body.i.2.while.end.i_crit_edge

while.body.i.2.while.end.i_crit_edge:             ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i.3:                                   ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %dec60.i.3 = add nsw i32 %n.04074.i, -4
  %arrayidx101.i.3 = getelementptr [5 x ptr], ptr %kbufs.i, i32 0, i32 %dec60.i.3
  %176 = ptrtoint ptr %arrayidx101.i.3 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arrayidx101.i.3, align 4
  call void @vfree(ptr noundef %177) #7
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.3, %while.body.i.2.while.end.i_crit_edge, %while.body.i.1.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %out_free.i261.while.end.i_crit_edge
  %ret.176.i = phi i32 [ %ret.1.i260, %out_free.i261.while.end.i_crit_edge ], [ %ret.175.i, %while.body.i.3 ], [ %ret.175.i, %while.body.i.2.while.end.i_crit_edge ], [ %ret.175.i, %while.body.i.1.while.end.i_crit_edge ], [ %ret.175.i, %while.body.i.while.end.i_crit_edge ]
  %178 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %118, align 4
  call void @kfree(ptr noundef %179) #7
  br label %out.i262

out.i262:                                         ; preds = %while.end.i, %if.then22.i, %if.end7.i224.out.i262_crit_edge, %if.then11.i.i.i222
  %ret.2.i = phi i32 [ -22, %if.end7.i224.out.i262_crit_edge ], [ %133, %if.then22.i ], [ %ret.176.i, %while.end.i ], [ -14, %if.then11.i.i.i222 ]
  call void @mnt_drop_write_file(ptr noundef %filp) #7
  br label %nilfs_ioctl_clean_segments.exit

nilfs_ioctl_clean_segments.exit:                  ; preds = %out.i262, %if.end.i206.nilfs_ioctl_clean_segments.exit_crit_edge, %sw.bb20.nilfs_ioctl_clean_segments.exit_crit_edge
  %retval.0.i263 = phi i32 [ %ret.2.i, %out.i262 ], [ -1, %sw.bb20.nilfs_ioctl_clean_segments.exit_crit_edge ], [ %call1.i204, %if.end.i206.nilfs_ioctl_clean_segments.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %kbufs.i) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %argv.i202) #7
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cno.i264) #7
  %i_sb.i265 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %180 = ptrtoint ptr %i_sb.i265 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %i_sb.i265, align 4
  %call.i266 = tail call i32 @nilfs_construct_segment(ptr noundef %181) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i266)
  %cmp.i267 = icmp slt i32 %call.i266, 0
  br i1 %cmp.i267, label %sw.bb22.nilfs_ioctl_sync.exit_crit_edge, label %if.end.i270

sw.bb22.nilfs_ioctl_sync.exit_crit_edge:          ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_sync.exit

if.end.i270:                                      ; preds = %sw.bb22
  %182 = ptrtoint ptr %i_sb.i265 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %i_sb.i265, align 4
  %s_fs_info.i268 = getelementptr inbounds %struct.super_block, ptr %183, i32 0, i32 33
  %184 = ptrtoint ptr %s_fs_info.i268 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %s_fs_info.i268, align 16
  %ns_mount_opt.i.i = getelementptr inbounds %struct.the_nilfs, ptr %185, i32 0, i32 39
  %186 = ptrtoint ptr %ns_mount_opt.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %ns_mount_opt.i.i, align 4
  %and.i.i269 = and i32 %187, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i269)
  %tobool.not.i.i = icmp eq i32 %and.i.i269, 0
  br i1 %tobool.not.i.i, label %if.end.i270.if.end5.i_crit_edge, label %lor.lhs.false.i.i

if.end.i270.if.end5.i_crit_edge:                  ; preds = %if.end.i270
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

lor.lhs.false.i.i:                                ; preds = %if.end.i270
  %ns_flushed_device.i.i = getelementptr inbounds %struct.the_nilfs, ptr %185, i32 0, i32 1
  %188 = ptrtoint ptr %ns_flushed_device.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %ns_flushed_device.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool1.not.i.i = icmp eq i32 %189, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.if.end5.i_crit_edge

lor.lhs.false.i.i.if.end5.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %190 = ptrtoint ptr %ns_flushed_device.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 1, ptr %ns_flushed_device.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  %ns_bdev.i.i = getelementptr inbounds %struct.the_nilfs, ptr %185, i32 0, i32 3
  %191 = ptrtoint ptr %ns_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %ns_bdev.i.i, align 4
  %call.i.i271 = tail call i32 @blkdev_issue_flush(ptr noundef %192) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call.i.i271)
  %cmp.not.i.i = icmp eq i32 %call.i.i271, -5
  br i1 %cmp.not.i.i, label %if.end.i.i.nilfs_ioctl_sync.exit_crit_edge, label %if.end.i.i.if.end5.i_crit_edge

if.end.i.i.if.end5.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.end.i.i.nilfs_ioctl_sync.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_sync.exit

if.end5.i:                                        ; preds = %if.end.i.i.if.end5.i_crit_edge, %lor.lhs.false.i.i.if.end5.i_crit_edge, %if.end.i270.if.end5.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %cmp6.not.i = icmp eq i32 %arg, 0
  br i1 %cmp6.not.i, label %if.end5.i.if.end12.i_crit_edge, label %if.then7.i

if.end5.i.if.end12.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then7.i:                                       ; preds = %if.end5.i
  %ns_segctor_sem.i272 = getelementptr inbounds %struct.the_nilfs, ptr %185, i32 0, i32 28
  tail call void @down_read(ptr noundef %ns_segctor_sem.i272) #7
  %ns_cno.i = getelementptr inbounds %struct.the_nilfs, ptr %185, i32 0, i32 17
  %193 = ptrtoint ptr %ns_cno.i to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %ns_cno.i, align 8
  %sub.i = add i64 %194, -1
  %195 = ptrtoint ptr %cno.i264 to i32
  call void @__asan_store8_noabort(i32 %195)
  store i64 %sub.i, ptr %cno.i264, align 8
  tail call void @up_read(ptr noundef %ns_segctor_sem.i272) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #7
  %call.i.i.i273 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i273, label %if.then7.i.nilfs_ioctl_sync.exit_crit_edge, label %if.end.i.i.i276

if.then7.i.nilfs_ioctl_sync.exit_crit_edge:       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_sync.exit

if.end.i.i.i276:                                  ; preds = %if.then7.i
  %196 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %2, i32 8, i32 -1226833920) #10, !srcloc !49
  %asmresult.i.i.i274 = extractvalue { i32, i32 } %196, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i274)
  %cmp.i6.i.i275 = icmp eq i32 %asmresult.i.i.i274, 0
  br i1 %cmp.i6.i.i275, label %copy_to_user.exit.i280, label %if.end.i.i.i276.nilfs_ioctl_sync.exit_crit_edge

if.end.i.i.i276.nilfs_ioctl_sync.exit_crit_edge:  ; preds = %if.end.i.i.i276
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_sync.exit

copy_to_user.exit.i280:                           ; preds = %if.end.i.i.i276
  %call.i.i.i.i277 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cno.i264, i32 noundef 8) #7
  %call.i12.i.i.i278 = call i32 @arm_copy_to_user(ptr noundef nonnull %2, ptr noundef nonnull %cno.i264, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i278)
  %tobool.not.i279 = icmp eq i32 %call.i12.i.i.i278, 0
  br i1 %tobool.not.i279, label %copy_to_user.exit.i280.if.end12.i_crit_edge, label %copy_to_user.exit.i280.nilfs_ioctl_sync.exit_crit_edge

copy_to_user.exit.i280.nilfs_ioctl_sync.exit_crit_edge: ; preds = %copy_to_user.exit.i280
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_sync.exit

copy_to_user.exit.i280.if.end12.i_crit_edge:      ; preds = %copy_to_user.exit.i280
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.end12.i:                                       ; preds = %copy_to_user.exit.i280.if.end12.i_crit_edge, %if.end5.i.if.end12.i_crit_edge
  br label %nilfs_ioctl_sync.exit

nilfs_ioctl_sync.exit:                            ; preds = %if.end12.i, %copy_to_user.exit.i280.nilfs_ioctl_sync.exit_crit_edge, %if.end.i.i.i276.nilfs_ioctl_sync.exit_crit_edge, %if.then7.i.nilfs_ioctl_sync.exit_crit_edge, %if.end.i.i.nilfs_ioctl_sync.exit_crit_edge, %sw.bb22.nilfs_ioctl_sync.exit_crit_edge
  %retval.0.i281 = phi i32 [ 0, %if.end12.i ], [ %call.i266, %sw.bb22.nilfs_ioctl_sync.exit_crit_edge ], [ -14, %copy_to_user.exit.i280.nilfs_ioctl_sync.exit_crit_edge ], [ -5, %if.end.i.i.nilfs_ioctl_sync.exit_crit_edge ], [ -14, %if.then7.i.nilfs_ioctl_sync.exit_crit_edge ], [ -14, %if.end.i.i.i276.nilfs_ioctl_sync.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cno.i264) #7
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %newsize.i) #7
  %197 = ptrtoint ptr %newsize.i to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 -1, ptr %newsize.i, align 8, !annotation !38
  %call.i282 = tail call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %call.i282, label %if.end.i285, label %sw.bb24.nilfs_ioctl_resize.exit_crit_edge

sw.bb24.nilfs_ioctl_resize.exit_crit_edge:        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_resize.exit

if.end.i285:                                      ; preds = %sw.bb24
  %call1.i283 = tail call i32 @mnt_want_write_file(ptr noundef %filp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i283)
  %tobool.not.i284 = icmp eq i32 %call1.i283, 0
  br i1 %tobool.not.i284, label %if.end8.i.i.i287, label %if.end.i285.nilfs_ioctl_resize.exit_crit_edge

if.end.i285.nilfs_ioctl_resize.exit_crit_edge:    ; preds = %if.end.i285
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_resize.exit

if.end8.i.i.i287:                                 ; preds = %if.end.i285
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #7
  %call.i.i.i286 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i286, label %if.end8.i.i.i287.if.then11.i.i.i302_crit_edge, label %land.lhs.true.i.i.i290

if.end8.i.i.i287.if.then11.i.i.i302_crit_edge:    ; preds = %if.end8.i.i.i287
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i302

land.lhs.true.i.i.i290:                           ; preds = %if.end8.i.i.i287
  %198 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #10, !srcloc !47
  %asmresult.i.i.i288 = extractvalue { i32, i32 } %198, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i288)
  %cmp.i6.i.i289 = icmp eq i32 %asmresult.i.i.i288, 0
  br i1 %cmp.i6.i.i289, label %if.end.i.i.i298, label %land.lhs.true.i.i.i290.if.then11.i.i.i302_crit_edge, !prof !48

land.lhs.true.i.i.i290.if.then11.i.i.i302_crit_edge: ; preds = %land.lhs.true.i.i.i290
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i302

if.end.i.i.i298:                                  ; preds = %land.lhs.true.i.i.i290
  %call.i.i.i.i291 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %newsize.i, i32 noundef 8) #7
  %199 = call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i.i.i.i.i.i292 = and i32 %199, -16384
  %200 = inttoptr i32 %and.i.i.i.i.i.i.i292 to ptr
  %cpu_domain.i.i.i.i.i.i293 = getelementptr inbounds %struct.thread_info, ptr %200, i32 0, i32 4
  %201 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i293) #3, !srcloc !43
  %and.i.i.i.i.i294 = and i32 %201, -13
  %or.i.i.i.i.i295 = or i32 %and.i.i.i.i.i294, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i295) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %call1.i.i.i.i296 = call i32 @arm_copy_from_user(ptr noundef nonnull %newsize.i, ptr noundef %2, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %201) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i296)
  %tobool4.not.i.i.i297 = icmp eq i32 %call1.i.i.i.i296, 0
  br i1 %tobool4.not.i.i.i297, label %if.end7.i304, label %if.end.i.i.i298.if.then11.i.i.i302_crit_edge, !prof !48

if.end.i.i.i298.if.then11.i.i.i302_crit_edge:     ; preds = %if.end.i.i.i298
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i302

if.then11.i.i.i302:                               ; preds = %if.end.i.i.i298.if.then11.i.i.i302_crit_edge, %land.lhs.true.i.i.i290.if.then11.i.i.i302_crit_edge, %if.end8.i.i.i287.if.then11.i.i.i302_crit_edge
  %res.0.i.i13.i299 = phi i32 [ %call1.i.i.i.i296, %if.end.i.i.i298.if.then11.i.i.i302_crit_edge ], [ 8, %if.end8.i.i.i287.if.then11.i.i.i302_crit_edge ], [ 8, %land.lhs.true.i.i.i290.if.then11.i.i.i302_crit_edge ]
  %sub.i.i.i300 = sub i32 8, %res.0.i.i13.i299
  %add.ptr.i.i.i301 = getelementptr i8, ptr %newsize.i, i32 %sub.i.i.i300
  %202 = call ptr @memset(ptr %add.ptr.i.i.i301, i32 0, i32 %res.0.i.i13.i299)
  br label %out_drop_write.i

if.end7.i304:                                     ; preds = %if.end.i.i.i298
  call void @__sanitizer_cov_trace_pc() #9
  %i_sb.i303 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %203 = ptrtoint ptr %i_sb.i303 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %i_sb.i303, align 4
  %205 = ptrtoint ptr %newsize.i to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %newsize.i, align 8
  %call8.i = call i32 @nilfs_resize_fs(ptr noundef %204, i64 noundef %206) #7
  br label %out_drop_write.i

out_drop_write.i:                                 ; preds = %if.end7.i304, %if.then11.i.i.i302
  %ret.0.i305 = phi i32 [ %call8.i, %if.end7.i304 ], [ -14, %if.then11.i.i.i302 ]
  call void @mnt_drop_write_file(ptr noundef %filp) #7
  br label %nilfs_ioctl_resize.exit

nilfs_ioctl_resize.exit:                          ; preds = %out_drop_write.i, %if.end.i285.nilfs_ioctl_resize.exit_crit_edge, %sw.bb24.nilfs_ioctl_resize.exit_crit_edge
  %ret.1.i306 = phi i32 [ %call1.i283, %if.end.i285.nilfs_ioctl_resize.exit_crit_edge ], [ %ret.0.i305, %out_drop_write.i ], [ -1, %sw.bb24.nilfs_ioctl_resize.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %newsize.i) #7
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  %i_sb.i308 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %207 = ptrtoint ptr %i_sb.i308 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %i_sb.i308, align 4
  %s_fs_info.i309 = getelementptr inbounds %struct.super_block, ptr %208, i32 0, i32 33
  %209 = ptrtoint ptr %s_fs_info.i309 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %s_fs_info.i309, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %range.i) #7
  %211 = getelementptr inbounds [2 x i64], ptr %range.i, i32 0, i32 1
  %212 = call ptr @memset(ptr %range.i, i32 255, i32 16)
  %call.i310 = tail call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %call.i310, label %if.end8.i.i.i312, label %sw.bb26.nilfs_ioctl_set_alloc_range.exit_crit_edge

sw.bb26.nilfs_ioctl_set_alloc_range.exit_crit_edge: ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_set_alloc_range.exit

if.end8.i.i.i312:                                 ; preds = %sw.bb26
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #7
  %call.i.i.i311 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i311, label %if.end8.i.i.i312.if.then11.i.i.i326_crit_edge, label %land.lhs.true.i.i.i315

if.end8.i.i.i312.if.then11.i.i.i326_crit_edge:    ; preds = %if.end8.i.i.i312
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i326

land.lhs.true.i.i.i315:                           ; preds = %if.end8.i.i.i312
  %213 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 16, i32 -1226833920) #10, !srcloc !47
  %asmresult.i.i.i313 = extractvalue { i32, i32 } %213, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i313)
  %cmp.i6.i.i314 = icmp eq i32 %asmresult.i.i.i313, 0
  br i1 %cmp.i6.i.i314, label %if.end.i.i.i323, label %land.lhs.true.i.i.i315.if.then11.i.i.i326_crit_edge, !prof !48

land.lhs.true.i.i.i315.if.then11.i.i.i326_crit_edge: ; preds = %land.lhs.true.i.i.i315
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i326

if.end.i.i.i323:                                  ; preds = %land.lhs.true.i.i.i315
  %call.i.i.i.i316 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %range.i, i32 noundef 16) #7
  %214 = call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i.i.i.i.i.i317 = and i32 %214, -16384
  %215 = inttoptr i32 %and.i.i.i.i.i.i.i317 to ptr
  %cpu_domain.i.i.i.i.i.i318 = getelementptr inbounds %struct.thread_info, ptr %215, i32 0, i32 4
  %216 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i318) #3, !srcloc !43
  %and.i.i.i.i.i319 = and i32 %216, -13
  %or.i.i.i.i.i320 = or i32 %and.i.i.i.i.i319, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i320) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %call1.i.i.i.i321 = call i32 @arm_copy_from_user(ptr noundef nonnull %range.i, ptr noundef %2, i32 noundef 16) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %216) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i321)
  %tobool4.not.i.i.i322 = icmp eq i32 %call1.i.i.i.i321, 0
  br i1 %tobool4.not.i.i.i322, label %if.end3.i328, label %if.end.i.i.i323.if.then11.i.i.i326_crit_edge, !prof !48

if.end.i.i.i323.if.then11.i.i.i326_crit_edge:     ; preds = %if.end.i.i.i323
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i326

if.then11.i.i.i326:                               ; preds = %if.end.i.i.i323.if.then11.i.i.i326_crit_edge, %land.lhs.true.i.i.i315.if.then11.i.i.i326_crit_edge, %if.end8.i.i.i312.if.then11.i.i.i326_crit_edge
  %res.0.i.i607.i = phi i32 [ %call1.i.i.i.i321, %if.end.i.i.i323.if.then11.i.i.i326_crit_edge ], [ 16, %if.end8.i.i.i312.if.then11.i.i.i326_crit_edge ], [ 16, %land.lhs.true.i.i.i315.if.then11.i.i.i326_crit_edge ]
  %sub.i.i.i324 = sub i32 16, %res.0.i.i607.i
  %add.ptr.i.i.i325 = getelementptr i8, ptr %range.i, i32 %sub.i.i.i324
  %217 = call ptr @memset(ptr %add.ptr.i.i.i325, i32 0, i32 %res.0.i.i607.i)
  br label %nilfs_ioctl_set_alloc_range.exit

if.end3.i328:                                     ; preds = %if.end.i.i.i323
  %218 = ptrtoint ptr %211 to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %211, align 8
  %220 = ptrtoint ptr %i_sb.i308 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %i_sb.i308, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %221, i32 0, i32 26
  %222 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %s_bdev.i, align 4
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  %shl.i.i = shl i64 %225, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %219, i64 %shl.i.i)
  %cmp.i327 = icmp ugt i64 %219, %shl.i.i
  br i1 %cmp.i327, label %if.end3.i328.nilfs_ioctl_set_alloc_range.exit_crit_edge, label %if.end7.i335

if.end3.i328.nilfs_ioctl_set_alloc_range.exit_crit_edge: ; preds = %if.end3.i328
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_set_alloc_range.exit

if.end7.i335:                                     ; preds = %if.end3.i328
  %ns_blocks_per_segment.i329 = getelementptr inbounds %struct.the_nilfs, ptr %210, i32 0, i32 47
  %226 = ptrtoint ptr %ns_blocks_per_segment.i329 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %ns_blocks_per_segment.i329, align 4
  %ns_blocksize.i = getelementptr inbounds %struct.the_nilfs, ptr %210, i32 0, i32 45
  %228 = ptrtoint ptr %ns_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %ns_blocksize.i, align 4
  %mul.i330 = mul i32 %229, %227
  %230 = ptrtoint ptr %range.i to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %range.i, align 8
  %conv.i331 = zext i32 %mul.i330 to i64
  %add.i = add nsw i64 %conv.i331, -1
  %sub.i332 = add i64 %add.i, %231
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i332)
  %cmp182.i = icmp ult i64 %sub.i332, 4294967296
  br i1 %cmp182.i, label %if.then186.i, label %if.else192.i, !prof !48

if.then186.i:                                     ; preds = %if.end7.i335
  call void @__sanitizer_cov_trace_pc() #9
  %conv187.i = trunc i64 %sub.i332 to i32
  %div190.i = udiv i32 %conv187.i, %mul.i330
  %conv191.i = zext i32 %div190.i to i64
  br label %if.else401.i

if.else192.i:                                     ; preds = %if.end7.i335
  call void @__sanitizer_cov_trace_pc() #9
  %232 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i330, i64 %sub.i332) #10, !srcloc !51
  %asmresult1.i.i = extractvalue { i64, i64 } %232, 1
  br label %if.else401.i

if.else401.i:                                     ; preds = %if.else192.i, %if.then186.i
  %minseg.0.i = phi i64 [ %conv191.i, %if.then186.i ], [ %asmresult1.i.i, %if.else192.i ]
  %233 = add i64 %219, -4096
  %shl201.i = and i64 %233, -4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl201.i)
  %cmp403.i = icmp ult i64 %shl201.i, 4294967296
  br i1 %cmp403.i, label %if.then411.i, label %if.else417.i, !prof !48

if.then411.i:                                     ; preds = %if.else401.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv412.i = trunc i64 %shl201.i to i32
  %div415.i = udiv i32 %conv412.i, %mul.i330
  %conv416.i = zext i32 %div415.i to i64
  br label %if.end421.i

if.else417.i:                                     ; preds = %if.else401.i
  call void @__sanitizer_cov_trace_pc() #9
  %234 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i330, i64 %shl201.i) #10, !srcloc !51
  %asmresult1.i596.i = extractvalue { i64, i64 } %234, 1
  br label %if.end421.i

if.end421.i:                                      ; preds = %if.else417.i, %if.then411.i
  %maxseg.0.i = phi i64 [ %conv416.i, %if.then411.i ], [ %asmresult1.i596.i, %if.else417.i ]
  %dec.i = add i64 %maxseg.0.i, -1
  %ns_sufile.i337 = getelementptr inbounds %struct.the_nilfs, ptr %210, i32 0, i32 31
  %235 = ptrtoint ptr %ns_sufile.i337 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %ns_sufile.i337, align 4
  %call423.i = call i32 @nilfs_sufile_set_alloc_range(ptr noundef %236, i64 noundef %minseg.0.i, i64 noundef %dec.i) #7
  br label %nilfs_ioctl_set_alloc_range.exit

nilfs_ioctl_set_alloc_range.exit:                 ; preds = %if.end421.i, %if.end3.i328.nilfs_ioctl_set_alloc_range.exit_crit_edge, %if.then11.i.i.i326, %sw.bb26.nilfs_ioctl_set_alloc_range.exit_crit_edge
  %ret.0.i338 = phi i32 [ -34, %if.end3.i328.nilfs_ioctl_set_alloc_range.exit_crit_edge ], [ %call423.i, %if.end421.i ], [ -1, %sw.bb26.nilfs_ioctl_set_alloc_range.exit_crit_edge ], [ -14, %if.then11.i.i.i326 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %range.i) #7
  br label %cleanup

sw.bb28:                                          ; preds = %entry
  %i_sb.i341 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %237 = ptrtoint ptr %i_sb.i341 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %i_sb.i341, align 4
  %s_fs_info.i342 = getelementptr inbounds %struct.super_block, ptr %238, i32 0, i32 33
  %239 = ptrtoint ptr %s_fs_info.i342 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %s_fs_info.i342, align 16
  %ns_bdev.i = getelementptr inbounds %struct.the_nilfs, ptr %240, i32 0, i32 3
  %241 = ptrtoint ptr %ns_bdev.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %ns_bdev.i, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %242, i32 0, i32 18
  %243 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %bd_queue.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %range.i340) #7
  %245 = getelementptr inbounds %struct.fstrim_range, ptr %range.i340, i32 0, i32 2
  %246 = call ptr @memset(ptr %range.i340, i32 255, i32 24)
  %call1.i343 = tail call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %call1.i343, label %if.end.i345, label %sw.bb28.nilfs_ioctl_trim_fs.exit_crit_edge

sw.bb28.nilfs_ioctl_trim_fs.exit_crit_edge:       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_trim_fs.exit

if.end.i345:                                      ; preds = %sw.bb28
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %244, i32 0, i32 11
  %247 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load volatile i32, ptr %queue_flags.i, align 4
  %249 = and i32 %248, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool.not.i344 = icmp eq i32 %249, 0
  br i1 %tobool.not.i344, label %if.end.i345.nilfs_ioctl_trim_fs.exit_crit_edge, label %if.end8.i.i.i347

if.end.i345.nilfs_ioctl_trim_fs.exit_crit_edge:   ; preds = %if.end.i345
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_trim_fs.exit

if.end8.i.i.i347:                                 ; preds = %if.end.i345
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #7
  %call.i.i.i346 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i346, label %if.end8.i.i.i347.if.then11.i.i.i361_crit_edge, label %land.lhs.true.i.i.i350

if.end8.i.i.i347.if.then11.i.i.i361_crit_edge:    ; preds = %if.end8.i.i.i347
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i361

land.lhs.true.i.i.i350:                           ; preds = %if.end8.i.i.i347
  %250 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 24, i32 -1226833920) #10
  %asmresult.i.i.i348 = extractvalue { i32, i32 } %250, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i348)
  %cmp.i6.i.i349 = icmp eq i32 %asmresult.i.i.i348, 0
  br i1 %cmp.i6.i.i349, label %if.end.i.i.i358, label %land.lhs.true.i.i.i350.if.then11.i.i.i361_crit_edge, !prof !48

land.lhs.true.i.i.i350.if.then11.i.i.i361_crit_edge: ; preds = %land.lhs.true.i.i.i350
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i361

if.end.i.i.i358:                                  ; preds = %land.lhs.true.i.i.i350
  %call.i.i.i.i351 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %range.i340, i32 noundef 24) #7
  %251 = call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i.i.i.i.i.i352 = and i32 %251, -16384
  %252 = inttoptr i32 %and.i.i.i.i.i.i.i352 to ptr
  %cpu_domain.i.i.i.i.i.i353 = getelementptr inbounds %struct.thread_info, ptr %252, i32 0, i32 4
  %253 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i353) #3, !srcloc !43
  %and.i.i.i.i.i354 = and i32 %253, -13
  %or.i.i.i.i.i355 = or i32 %and.i.i.i.i.i354, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i355) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %call1.i.i.i.i356 = call i32 @arm_copy_from_user(ptr noundef nonnull %range.i340, ptr noundef %2, i32 noundef 24) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %253) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i356)
  %tobool4.not.i.i.i357 = icmp eq i32 %call1.i.i.i.i356, 0
  br i1 %tobool4.not.i.i.i357, label %if.end8.i, label %if.end.i.i.i358.if.then11.i.i.i361_crit_edge, !prof !48

if.end.i.i.i358.if.then11.i.i.i361_crit_edge:     ; preds = %if.end.i.i.i358
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i361

if.then11.i.i.i361:                               ; preds = %if.end.i.i.i358.if.then11.i.i.i361_crit_edge, %land.lhs.true.i.i.i350.if.then11.i.i.i361_crit_edge, %if.end8.i.i.i347.if.then11.i.i.i361_crit_edge
  %res.0.i.i44.i = phi i32 [ %call1.i.i.i.i356, %if.end.i.i.i358.if.then11.i.i.i361_crit_edge ], [ 24, %if.end8.i.i.i347.if.then11.i.i.i361_crit_edge ], [ 24, %land.lhs.true.i.i.i350.if.then11.i.i.i361_crit_edge ]
  %sub.i.i.i359 = sub i32 24, %res.0.i.i44.i
  %add.ptr.i.i.i360 = getelementptr i8, ptr %range.i340, i32 %sub.i.i.i359
  %254 = call ptr @memset(ptr %add.ptr.i.i.i360, i32 0, i32 %res.0.i.i44.i)
  br label %nilfs_ioctl_trim_fs.exit

if.end8.i:                                        ; preds = %if.end.i.i.i358
  %255 = ptrtoint ptr %245 to i32
  call void @__asan_load8_noabort(i32 %255)
  %256 = load i64, ptr %245, align 8
  %discard_granularity.i = getelementptr inbounds %struct.request_queue, ptr %244, i32 0, i32 37, i32 18
  %257 = ptrtoint ptr %discard_granularity.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %discard_granularity.i, align 4
  %conv.i362 = zext i32 %258 to i64
  %259 = call i64 @llvm.umax.i64(i64 %256, i64 %conv.i362) #7
  %260 = ptrtoint ptr %245 to i32
  call void @__asan_store8_noabort(i32 %260)
  store i64 %259, ptr %245, align 8
  %ns_segctor_sem.i363 = getelementptr inbounds %struct.the_nilfs, ptr %240, i32 0, i32 28
  call void @down_read(ptr noundef %ns_segctor_sem.i363) #7
  %ns_sufile.i364 = getelementptr inbounds %struct.the_nilfs, ptr %240, i32 0, i32 31
  %261 = ptrtoint ptr %ns_sufile.i364 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %ns_sufile.i364, align 4
  %call11.i = call i32 @nilfs_sufile_trim_fs(ptr noundef %262, ptr noundef nonnull %range.i340) #7
  call void @up_read(ptr noundef %ns_segctor_sem.i363) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp13.i = icmp slt i32 %call11.i, 0
  br i1 %cmp13.i, label %if.end8.i.nilfs_ioctl_trim_fs.exit_crit_edge, label %if.end8.i.i35.i

if.end8.i.nilfs_ioctl_trim_fs.exit_crit_edge:     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_trim_fs.exit

if.end8.i.i35.i:                                  ; preds = %if.end8.i
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #7
  %call.i.i36.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i36.i, label %if.end8.i.i35.i.nilfs_ioctl_trim_fs.exit_crit_edge, label %copy_to_user.exit.i367

if.end8.i.i35.i.nilfs_ioctl_trim_fs.exit_crit_edge: ; preds = %if.end8.i.i35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nilfs_ioctl_trim_fs.exit

copy_to_user.exit.i367:                           ; preds = %if.end8.i.i35.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i40.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %range.i340, i32 noundef 24) #7
  %call.i12.i.i.i365 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %range.i340, i32 noundef 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i365)
  %tobool18.not.i = icmp eq i32 %call.i12.i.i.i365, 0
  %spec.select.i366 = select i1 %tobool18.not.i, i32 0, i32 -14
  br label %nilfs_ioctl_trim_fs.exit

nilfs_ioctl_trim_fs.exit:                         ; preds = %copy_to_user.exit.i367, %if.end8.i.i35.i.nilfs_ioctl_trim_fs.exit_crit_edge, %if.end8.i.nilfs_ioctl_trim_fs.exit_crit_edge, %if.then11.i.i.i361, %if.end.i345.nilfs_ioctl_trim_fs.exit_crit_edge, %sw.bb28.nilfs_ioctl_trim_fs.exit_crit_edge
  %retval.0.i368 = phi i32 [ -1, %sw.bb28.nilfs_ioctl_trim_fs.exit_crit_edge ], [ -95, %if.end.i345.nilfs_ioctl_trim_fs.exit_crit_edge ], [ %call11.i, %if.end8.i.nilfs_ioctl_trim_fs.exit_crit_edge ], [ -14, %if.then11.i.i.i361 ], [ -14, %if.end8.i.i35.i.nilfs_ioctl_trim_fs.exit_crit_edge ], [ %spec.select.i366, %copy_to_user.exit.i367 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %range.i340) #7
  br label %cleanup

cleanup:                                          ; preds = %nilfs_ioctl_trim_fs.exit, %nilfs_ioctl_set_alloc_range.exit, %nilfs_ioctl_resize.exit, %nilfs_ioctl_sync.exit, %nilfs_ioctl_clean_segments.exit, %nilfs_ioctl_get_bdescs.exit, %sw.bb16, %nilfs_ioctl_get_sustat.exit, %nilfs_ioctl_set_suinfo.exit, %sw.bb10, %nilfs_ioctl_get_cpstat.exit, %sw.bb6, %nilfs_ioctl_delete_checkpoint.exit, %nilfs_ioctl_change_cpmode.exit, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i368, %nilfs_ioctl_trim_fs.exit ], [ %ret.0.i338, %nilfs_ioctl_set_alloc_range.exit ], [ %ret.1.i306, %nilfs_ioctl_resize.exit ], [ %retval.0.i281, %nilfs_ioctl_sync.exit ], [ %retval.0.i263, %nilfs_ioctl_clean_segments.exit ], [ %retval.0.i201, %nilfs_ioctl_get_bdescs.exit ], [ %call17, %sw.bb16 ], [ %retval.0.i175, %nilfs_ioctl_get_sustat.exit ], [ %retval.0.i158, %nilfs_ioctl_set_suinfo.exit ], [ %call11, %sw.bb10 ], [ %retval.0.i129, %nilfs_ioctl_get_cpstat.exit ], [ %call7, %sw.bb6 ], [ %retval.0.i116, %nilfs_ioctl_delete_checkpoint.exit ], [ %retval.0.i, %nilfs_ioctl_change_cpmode.exit ], [ %9, %sw.bb ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_ioctl_get_info(ptr nocapture noundef readonly %inode, i32 noundef %cmd, ptr noundef %argp, i32 noundef %membsz, ptr nocapture noundef readonly %dofunc) unnamed_addr #0 align 64 {
entry:
  %argv = alloca %struct.nilfs_argv, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %argv) #7
  %4 = getelementptr inbounds %struct.nilfs_argv, ptr %argv, i32 0, i32 2
  %5 = call ptr @memset(ptr %argv, i32 255, i32 24)
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %argp, i32 24, i32 -1226833920) #10
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !48

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %argv, i32 noundef 24) #7
  %7 = call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !43
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %argv, ptr noundef %argp, i32 noundef 24) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !48

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i13 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 24, %entry.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.0.i.i13
  %add.ptr.i.i = getelementptr i8, ptr %argv, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i13)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %4, align 4
  %conv = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %membsz)
  %cmp = icmp ult i32 %conv, %membsz
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %shr = lshr i32 %cmd, 30
  %call4 = call fastcc i32 @nilfs_ioctl_wrap_copy(ptr noundef %3, ptr noundef nonnull %argv, i32 noundef %shr, ptr noundef %dofunc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end8.i.i4

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i.i4:                                     ; preds = %if.end3
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #7
  %call.i.i5 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i5, label %if.end8.i.i4.cleanup_crit_edge, label %copy_to_user.exit

if.end8.i.i4.cleanup_crit_edge:                   ; preds = %if.end8.i.i4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end8.i.i4
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i9 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %argv, i32 noundef 24) #7
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %argp, ptr noundef nonnull %argv, i32 noundef 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool10.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool10.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end8.i.i4.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end8.i.i4.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %argv) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_ioctl_do_get_cpinfo(ptr noundef %nilfs, ptr noundef %posp, i32 noundef %flags, ptr noundef %buf, i32 noundef %size, i32 noundef %nmembs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 28
  tail call void @down_read(ptr noundef %ns_segctor_sem) #7
  %ns_cpfile = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 30
  %0 = ptrtoint ptr %ns_cpfile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns_cpfile, align 8
  %call = tail call i32 @nilfs_cpfile_get_cpinfo(ptr noundef %1, ptr noundef %posp, i32 noundef %flags, ptr noundef %buf, i32 noundef %size, i32 noundef %nmembs) #7
  tail call void @up_read(ptr noundef %ns_segctor_sem) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_ioctl_do_get_suinfo(ptr noundef %nilfs, ptr nocapture noundef readonly %posp, i32 noundef %flags, ptr noundef %buf, i32 noundef %size, i32 noundef %nmembs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 28
  tail call void @down_read(ptr noundef %ns_segctor_sem) #7
  %ns_sufile = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 31
  %0 = ptrtoint ptr %ns_sufile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns_sufile, align 4
  %2 = ptrtoint ptr %posp to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %posp, align 8
  %call = tail call i32 @nilfs_sufile_get_suinfo(ptr noundef %1, i64 noundef %3, ptr noundef %buf, i32 noundef %size, i32 noundef %nmembs) #7
  tail call void @up_read(ptr noundef %ns_segctor_sem) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_ioctl_do_get_vinfo(ptr noundef %nilfs, ptr nocapture noundef readnone %posp, i32 noundef %flags, ptr noundef %buf, i32 noundef %size, i32 noundef %nmembs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 28
  tail call void @down_read(ptr noundef %ns_segctor_sem) #7
  %ns_dat = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 29
  %0 = ptrtoint ptr %ns_dat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns_dat, align 4
  %call = tail call i32 @nilfs_dat_get_vinfo(ptr noundef %1, ptr noundef %buf, i32 noundef %size, i32 noundef %nmembs) #7
  tail call void @up_read(ptr noundef %ns_segctor_sem) #7
  ret i32 %call
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nilfs_mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_cpfile_delete_checkpoints(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_dat_freev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_bmap_lookup_at_level(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_mdt_get_block(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_bmap_mark(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_cpfile_change_cpmode(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_transaction_abort(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_cpfile_delete_checkpoint(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_ioctl_wrap_copy(ptr noundef %nilfs, ptr nocapture noundef %argv, i32 noundef %dir, ptr nocapture noundef readonly %dofunc) unnamed_addr #0 align 64 {
entry:
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %argv to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %argv, align 8
  %conv = trunc i64 %1 to i32
  %2 = inttoptr i32 %conv to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #7
  %v_nmembs = getelementptr inbounds %struct.nilfs_argv, ptr %argv, i32 0, i32 1
  %3 = ptrtoint ptr %v_nmembs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %v_nmembs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %v_size = getelementptr inbounds %struct.nilfs_argv, ptr %argv, i32 0, i32 2
  %5 = ptrtoint ptr %v_size to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %v_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %6)
  %cmp3 = icmp ugt i16 %6, 4096
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %v_index = getelementptr inbounds %struct.nilfs_argv, ptr %argv, i32 0, i32 4
  %7 = ptrtoint ptr %v_index to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %v_index, align 8
  %conv8 = zext i32 %4 to i64
  %sub = xor i64 %conv8, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %sub)
  %cmp9 = icmp ugt i64 %8, %sub
  br i1 %cmp9, label %if.end6.cleanup_crit_edge, label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %call = tail call i32 @__get_free_pages(i32 noundef 3136, i32 noundef 0) #7
  %9 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end12.cleanup_crit_edge, label %if.end17, !prof !42

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %10 = ptrtoint ptr %v_size to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %v_size, align 4
  %12 = udiv i16 4096, %11
  %div = zext i16 %12 to i32
  %13 = ptrtoint ptr %v_index to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %v_index, align 8
  %15 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %pos, align 8
  %16 = ptrtoint ptr %v_nmembs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %v_nmembs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp22150.not = icmp eq i32 %17, 0
  br i1 %cmp22150.not, label %if.end17.for.end_crit_edge, label %for.body.lr.ph

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end17
  %and = and i32 %dir, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  %v_flags = getelementptr inbounds %struct.nilfs_argv, ptr %argv, i32 0, i32 3
  %and48 = and i32 %dir, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %18 = phi i32 [ %17, %for.body.lr.ph ], [ %40, %for.inc.for.body_crit_edge ]
  %i.0153 = phi i32 [ 0, %for.body.lr.ph ], [ %add72, %for.inc.for.body_crit_edge ]
  %total.0151 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %sub25 = sub i32 %18, %i.0153
  %19 = call i32 @llvm.umin.i32(i32 %sub25, i32 %div)
  br i1 %tobool30.not, label %for.body.if.end39_crit_edge, label %land.lhs.true

for.body.if.end39_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

land.lhs.true:                                    ; preds = %for.body
  %20 = ptrtoint ptr %v_size to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %v_size, align 4
  %conv32 = zext i16 %21 to i32
  %mul = mul i32 %i.0153, %conv32
  %add.ptr = getelementptr i8, ptr %2, i32 %mul
  %mul35 = mul nuw nsw i32 %19, %conv32
  call void @__check_object_size(ptr noundef nonnull %9, i32 noundef %mul35, i1 noundef zeroext false) #7
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #7
  %call.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %land.lhs.true.if.end.i.i_crit_edge, label %land.lhs.true.i.i

land.lhs.true.if.end.i.i_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true
  %22 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %mul35, i32 -1226833920) #10, !srcloc !47
  %asmresult.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !48

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %9, i32 noundef %mul35) #7
  %23 = call i32 @llvm.read_register.i32(metadata !28) #7
  %and.i.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !43
  %and.i.i.i.i = and i32 %25, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %9, ptr noundef %add.ptr, i32 noundef %mul35) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #7, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %land.lhs.true.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %mul35, %land.lhs.true.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul35, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end39_crit_edge, label %if.then11.i.i, !prof !48

if.end.i.i.if.end39_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %mul35, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %sub.i.i
  %26 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %for.end

if.end39:                                         ; preds = %if.end.i.i.if.end39_crit_edge, %for.body.if.end39_crit_edge
  %27 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %pos, align 8
  %29 = ptrtoint ptr %v_flags to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %v_flags, align 2
  %conv40 = zext i16 %30 to i32
  %31 = ptrtoint ptr %v_size to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %v_size, align 4
  %conv42 = zext i16 %32 to i32
  %call43 = call i32 %dofunc(ptr noundef %nilfs, ptr noundef nonnull %pos, i32 noundef %conv40, ptr noundef nonnull %9, i32 noundef %conv42, i32 noundef %19) #7, !callees !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end39.for.end_crit_edge, label %if.end47

if.end39.for.end_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end47:                                         ; preds = %if.end39
  br i1 %tobool49.not, label %if.end47.if.end61_crit_edge, label %land.lhs.true50

if.end47.if.end61_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

land.lhs.true50:                                  ; preds = %if.end47
  %33 = ptrtoint ptr %v_size to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %v_size, align 4
  %conv52 = zext i16 %34 to i32
  %mul53 = mul i32 %i.0153, %conv52
  %add.ptr54 = getelementptr i8, ptr %2, i32 %mul53
  %mul57 = mul i32 %call43, %conv52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul57)
  %cmp9.i.i = icmp slt i32 %mul57, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i129

land.rhs16.i.i:                                   ; preds = %land.lhs.true50
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.for.end_crit_edge, label %if.then27.i.i, !prof !48

land.rhs16.i.i.for.end_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %for.end

if.then.i.i.i129:                                 ; preds = %land.lhs.true50
  call void @__check_object_size(ptr noundef nonnull %9, i32 noundef %mul57, i1 noundef zeroext true) #7
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #7
  %call.i.i130 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i130, label %if.then.i.i.i129.copy_to_user.exit_crit_edge, label %if.end.i.i134

if.then.i.i.i129.copy_to_user.exit_crit_edge:     ; preds = %if.then.i.i.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.end.i.i134:                                    ; preds = %if.then.i.i.i129
  %35 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr54, i32 %mul57, i32 -1226833920) #10, !srcloc !49
  %asmresult.i.i132 = extractvalue { i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i132)
  %cmp.i6.i133 = icmp eq i32 %asmresult.i.i132, 0
  br i1 %cmp.i6.i133, label %if.then2.i.i, label %if.end.i.i134.copy_to_user.exit_crit_edge

if.end.i.i134.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i134
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i134
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i135 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %9, i32 noundef %mul57) #7
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr54, ptr noundef nonnull %9, i32 noundef %mul57) #7
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i134.copy_to_user.exit_crit_edge, %if.then.i.i.i129.copy_to_user.exit_crit_edge
  %n.addr.0.i136 = phi i32 [ %mul57, %if.then.i.i.i129.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul57, %if.end.i.i134.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i136)
  %tobool59.not = icmp eq i32 %n.addr.0.i136, 0
  br i1 %tobool59.not, label %copy_to_user.exit.if.end61_crit_edge, label %copy_to_user.exit.for.end_crit_edge

copy_to_user.exit.for.end_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

copy_to_user.exit.if.end61_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.end61:                                         ; preds = %copy_to_user.exit.if.end61_crit_edge, %if.end47.if.end61_crit_edge
  %add = add i32 %call43, %total.0151
  call void @__sanitizer_cov_trace_cmp4(i32 %call43, i32 %19)
  %cmp62 = icmp ult i32 %call43, %19
  br i1 %cmp62, label %if.end61.for.end_crit_edge, label %if.end65

if.end61.for.end_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end65:                                         ; preds = %if.end61
  %36 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %28)
  %cmp66 = icmp eq i64 %37, %28
  br i1 %cmp66, label %if.then68, label %if.end65.for.inc_crit_edge

if.end65.for.inc_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %conv69 = zext i32 %19 to i64
  %add70 = add i64 %28, %conv69
  %38 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %add70, ptr %pos, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then68, %if.end65.for.inc_crit_edge
  %add72 = add i32 %19, %i.0153
  %39 = ptrtoint ptr %v_nmembs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %v_nmembs, align 8
  %cmp22 = icmp ugt i32 %40, %add72
  br i1 %cmp22, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end61.for.end_crit_edge, %copy_to_user.exit.for.end_crit_edge, %if.then27.i.i, %land.rhs16.i.i.for.end_crit_edge, %if.end39.for.end_crit_edge, %if.then11.i.i, %if.end17.for.end_crit_edge
  %total.1 = phi i32 [ %total.0151, %if.then11.i.i ], [ %total.0151, %if.then27.i.i ], [ %total.0151, %land.rhs16.i.i.for.end_crit_edge ], [ 0, %if.end17.for.end_crit_edge ], [ %add, %for.inc.for.end_crit_edge ], [ %add, %if.end61.for.end_crit_edge ], [ %total.0151, %if.end39.for.end_crit_edge ], [ %total.0151, %copy_to_user.exit.for.end_crit_edge ]
  %ret.0 = phi i32 [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.for.end_crit_edge ], [ 0, %if.end17.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ], [ 0, %if.end61.for.end_crit_edge ], [ %call43, %if.end39.for.end_crit_edge ], [ -14, %copy_to_user.exit.for.end_crit_edge ]
  %41 = ptrtoint ptr %v_nmembs to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %total.1, ptr %v_nmembs, align 8
  call void @free_pages(i32 noundef %call, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_cpfile_get_cpinfo(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_cpfile_get_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_sufile_get_suinfo(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_sufile_set_suinfo(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_sufile_get_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_dat_get_vinfo(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_ioctl_do_get_bdescs(ptr noundef %nilfs, ptr nocapture noundef readnone %posp, i32 noundef %flags, ptr noundef %buf, i32 noundef %size, i32 noundef %nmembs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_dat = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 29
  %0 = ptrtoint ptr %ns_dat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns_dat, align 4
  %i_bmap = getelementptr i8, ptr %1, i32 -584
  %2 = ptrtoint ptr %i_bmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_bmap, align 8
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 28
  tail call void @down_read(ptr noundef %ns_segctor_sem) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nmembs)
  %cmp29.not = icmp eq i32 %nmembs, 0
  br i1 %cmp29.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.030 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %bd_offset = getelementptr %struct.nilfs_bdesc, ptr %buf, i32 %i.030, i32 3
  %4 = ptrtoint ptr %bd_offset to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bd_offset, align 8
  %bd_level = getelementptr %struct.nilfs_bdesc, ptr %buf, i32 %i.030, i32 4
  %6 = ptrtoint ptr %bd_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bd_level, align 8
  %add = add i32 %7, 1
  %bd_blocknr = getelementptr %struct.nilfs_bdesc, ptr %buf, i32 %i.030, i32 2
  %call3 = tail call i32 @nilfs_bmap_lookup_at_level(ptr noundef %3, i64 noundef %5, i32 noundef %add, ptr noundef %bd_blocknr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call3)
  %cmp5.not = icmp eq i32 %call3, -2
  br i1 %cmp5.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %bd_blocknr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %bd_blocknr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, %nmembs
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %nmembs, %entry.cleanup_crit_edge ], [ %call3, %if.then.cleanup_crit_edge ], [ %nmembs, %for.inc.cleanup_crit_edge ]
  tail call void @up_read(ptr noundef %ns_segctor_sem) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_ioctl_move_blocks(ptr noundef %sb, ptr nocapture noundef readonly %argv, ptr nocapture noundef readonly %buf) unnamed_addr #0 align 64 {
entry:
  %bh.i = alloca ptr, align 4
  %buffers = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %v_nmembs = getelementptr inbounds %struct.nilfs_argv, ptr %argv, i32 0, i32 1
  %0 = ptrtoint ptr %v_nmembs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v_nmembs, align 8
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buffers) #7
  %4 = getelementptr inbounds %struct.list_head, ptr %buffers, i32 0, i32 1
  %5 = ptrtoint ptr %buffers to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buffers, ptr %buffers, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buffers, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp192.not = icmp eq i32 %1, 0
  br i1 %cmp192.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ns_gc_inodes = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %for.body.lr.ph
  %vdesc.0194 = phi ptr [ %buf, %for.body.lr.ph ], [ %incdec.ptr, %do.end.for.body_crit_edge ]
  %i.0193 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end.for.body_crit_edge ]
  %7 = ptrtoint ptr %vdesc.0194 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %vdesc.0194, align 8
  %conv = trunc i64 %8 to i32
  %vd_cno = getelementptr inbounds %struct.nilfs_vdesc, ptr %vdesc.0194, i32 0, i32 1
  %9 = ptrtoint ptr %vd_cno to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %vd_cno, align 8
  %call = call ptr @nilfs_iget_for_gc(ptr noundef %sb, i32 noundef %conv, i64 noundef %10) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call to i32
  br label %failed

if.end:                                           ; preds = %for.body
  %i_dirty = getelementptr i8, ptr %call, i32 -20
  %12 = ptrtoint ptr %i_dirty to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %i_dirty, align 4
  %cmp.i158.not = icmp eq ptr %13, %i_dirty
  br i1 %cmp.i158.not, label %if.then5, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then5:                                         ; preds = %if.end
  %call6 = call ptr @igrab(ptr noundef %call) #7
  %14 = ptrtoint ptr %ns_gc_inodes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ns_gc_inodes, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %i_dirty, ptr noundef %ns_gc_inodes, ptr noundef %15) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then5.if.end9_crit_edge

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end.i.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %i_dirty, ptr %prev1.i.i, align 4
  %17 = ptrtoint ptr %i_dirty to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %i_dirty, align 4
  %prev3.i.i = getelementptr i8, ptr %call, i32 -16
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %ns_gc_inodes, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %ns_gc_inodes to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %i_dirty, ptr %ns_gc_inodes, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end.i.i, %if.then5.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %conv20 = and i64 %8, 4294967295
  %20 = add nuw i32 %i.0193, 1
  %umax = call i32 @llvm.umax.i32(i32 %1, i32 %20)
  %21 = add i32 %umax, -1
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.end9
  %i.1 = phi i32 [ %i.0193, %if.end9 ], [ %inc, %land.rhs.do.body_crit_edge ]
  %vdesc.1 = phi ptr [ %vdesc.0194, %if.end9 ], [ %incdec.ptr, %land.rhs.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #7
  %22 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !38
  %vd_flags.i = getelementptr inbounds %struct.nilfs_vdesc, ptr %vdesc.1, i32 0, i32 6
  %23 = ptrtoint ptr %vd_flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vd_flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i160 = icmp eq i32 %24, 0
  br i1 %cmp.i160, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %vd_offset.i = getelementptr inbounds %struct.nilfs_vdesc, ptr %vdesc.1, i32 0, i32 5
  %25 = ptrtoint ptr %vd_offset.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %vd_offset.i, align 8
  %vd_blocknr.i = getelementptr inbounds %struct.nilfs_vdesc, ptr %vdesc.1, i32 0, i32 4
  %27 = ptrtoint ptr %vd_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %vd_blocknr.i, align 8
  %vd_vblocknr.i = getelementptr inbounds %struct.nilfs_vdesc, ptr %vdesc.1, i32 0, i32 2
  %29 = ptrtoint ptr %vd_vblocknr.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %vd_vblocknr.i, align 8
  %call.i = call i32 @nilfs_gccache_submit_read_data(ptr noundef %call, i64 noundef %26, i64 noundef %28, i64 noundef %30, ptr noundef nonnull %bh.i) #7
  br label %if.end.i

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %vd_blocknr1.i = getelementptr inbounds %struct.nilfs_vdesc, ptr %vdesc.1, i32 0, i32 4
  %31 = ptrtoint ptr %vd_blocknr1.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %vd_blocknr1.i, align 8
  %vd_vblocknr2.i = getelementptr inbounds %struct.nilfs_vdesc, ptr %vdesc.1, i32 0, i32 2
  %33 = ptrtoint ptr %vd_vblocknr2.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %vd_vblocknr2.i, align 8
  %call3.i = call i32 @nilfs_gccache_submit_read_node(ptr noundef %call, i64 noundef %32, i64 noundef %34, ptr noundef nonnull %bh.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ %call3.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp4.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp4.i, label %if.then6.i, label %if.end15.i, !prof !42

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %ret.0.i)
  %cmp7.i = icmp eq i32 %ret.0.i, -2
  br i1 %cmp7.i, label %if.then8.i, label %if.then6.i.if.then15_crit_edge

if.then6.i.if.then15_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

if.then8.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %vd_flags.i.le236 = getelementptr inbounds %struct.nilfs_vdesc, ptr %vdesc.1, i32 0, i32 6
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 8
  %35 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb.i, align 4
  %37 = ptrtoint ptr %vd_flags.i.le236 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vd_flags.i.le236, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool10.not.i = icmp eq i32 %38, 0
  %cond.i = select i1 %tobool10.not.i, ptr @.str.11, ptr @.str.10
  %39 = ptrtoint ptr %vdesc.1 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %vdesc.1, align 8
  %vd_cno.i = getelementptr inbounds %struct.nilfs_vdesc, ptr %vdesc.1, i32 0, i32 1
  %41 = ptrtoint ptr %vd_cno.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %vd_cno.i, align 8
  %vd_offset11.i = getelementptr inbounds %struct.nilfs_vdesc, ptr %vdesc.1, i32 0, i32 5
  %43 = ptrtoint ptr %vd_offset11.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %vd_offset11.i, align 8
  %vd_blocknr12.i = getelementptr inbounds %struct.nilfs_vdesc, ptr %vdesc.1, i32 0, i32 4
  %45 = ptrtoint ptr %vd_blocknr12.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %vd_blocknr12.i, align 8
  %vd_vblocknr13.i = getelementptr inbounds %struct.nilfs_vdesc, ptr %vdesc.1, i32 0, i32 2
  %47 = ptrtoint ptr %vd_vblocknr13.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %vd_vblocknr13.i, align 8
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %36, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.nilfs_ioctl_move_inode_block, ptr noundef nonnull %cond.i, i64 noundef %40, i64 noundef %42, i64 noundef %44, i64 noundef %46, i64 noundef %48) #7
  br label %if.then15

if.end15.i:                                       ; preds = %if.end.i
  %49 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bh.i, align 4
  %b_assoc_buffers.i = getelementptr inbounds %struct.buffer_head, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %b_assoc_buffers.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %b_assoc_buffers.i, align 4
  %cmp.i.not.i = icmp eq ptr %52, %b_assoc_buffers.i
  br i1 %cmp.i.not.i, label %if.end36.i, label %if.then26.i, !prof !48

if.then26.i:                                      ; preds = %if.end15.i
  %vd_flags.i.le = getelementptr inbounds %struct.nilfs_vdesc, ptr %vdesc.1, i32 0, i32 6
  %i_sb27.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 8
  %53 = ptrtoint ptr %i_sb27.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_sb27.i, align 4
  %55 = ptrtoint ptr %vd_flags.i.le to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %vd_flags.i.le, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool29.not.i = icmp eq i32 %56, 0
  %cond30.i = select i1 %tobool29.not.i, ptr @.str.11, ptr @.str.10
  %57 = ptrtoint ptr %vdesc.1 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %vdesc.1, align 8
  %vd_cno32.i = getelementptr inbounds %struct.nilfs_vdesc, ptr %vdesc.1, i32 0, i32 1
  %59 = ptrtoint ptr %vd_cno32.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %vd_cno32.i, align 8
  %vd_offset33.i = getelementptr inbounds %struct.nilfs_vdesc, ptr %vdesc.1, i32 0, i32 5
  %61 = ptrtoint ptr %vd_offset33.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %vd_offset33.i, align 8
  %vd_blocknr34.i = getelementptr inbounds %struct.nilfs_vdesc, ptr %vdesc.1, i32 0, i32 4
  %63 = ptrtoint ptr %vd_blocknr34.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %vd_blocknr34.i, align 8
  %vd_vblocknr35.i = getelementptr inbounds %struct.nilfs_vdesc, ptr %vdesc.1, i32 0, i32 2
  %65 = ptrtoint ptr %vd_vblocknr35.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %vd_vblocknr35.i, align 8
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %54, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.nilfs_ioctl_move_inode_block, ptr noundef nonnull %cond30.i, i64 noundef %58, i64 noundef %60, i64 noundef %62, i64 noundef %64, i64 noundef %66) #7
  %67 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bh.i, align 4
  %tobool.not.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i, label %if.then26.i.if.then15_crit_edge, label %if.then.i.i

if.then26.i.if.then15_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

if.then.i.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %68) #7
  br label %if.then15

if.end36.i:                                       ; preds = %if.end15.i
  %69 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %4, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %b_assoc_buffers.i, ptr noundef %70, ptr noundef nonnull %buffers) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end36.i.if.end16_crit_edge

if.end36.i.if.end16_crit_edge:                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end.i.i.i:                                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %b_assoc_buffers.i, ptr %4, align 4
  %72 = ptrtoint ptr %b_assoc_buffers.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %buffers, ptr %b_assoc_buffers.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %50, i32 0, i32 9, i32 1
  %73 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev3.i.i.i, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %b_assoc_buffers.i, ptr %70, align 4
  br label %if.end16

if.then15:                                        ; preds = %if.then.i.i, %if.then26.i.if.then15_crit_edge, %if.then8.i, %if.then6.i.if.then15_crit_edge
  %retval.0.i.ph = phi i32 [ -17, %if.then.i.i ], [ -17, %if.then26.i.if.then15_crit_edge ], [ %ret.0.i, %if.then6.i.if.then15_crit_edge ], [ -2, %if.then8.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #7
  call void @iput(ptr noundef %call) #7
  br label %failed

if.end16:                                         ; preds = %if.end.i.i.i, %if.end36.i.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #7
  %incdec.ptr = getelementptr %struct.nilfs_vdesc, ptr %vdesc.1, i32 1
  %inc = add i32 %i.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %21)
  %exitcond.not = icmp eq i32 %i.1, %21
  br i1 %exitcond.not, label %do.end.thread, label %land.lhs.true

do.end.thread:                                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  call void @iput(ptr noundef %call) #7
  br label %for.end

land.lhs.true:                                    ; preds = %if.end16
  %75 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %incdec.ptr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %76, i64 %conv20)
  %cmp21 = icmp eq i64 %76, %conv20
  br i1 %cmp21, label %land.rhs, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.rhs:                                         ; preds = %land.lhs.true
  %vd_cno23 = getelementptr %struct.nilfs_vdesc, ptr %vdesc.1, i32 1, i32 1
  %77 = ptrtoint ptr %vd_cno23 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %vd_cno23, align 8
  %cmp24 = icmp eq i64 %78, %10
  br i1 %cmp24, label %land.rhs.do.body_crit_edge, label %land.rhs.do.end_crit_edge

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  call void @iput(ptr noundef %call) #7
  %cmp = icmp ult i32 %inc, %1
  br i1 %cmp, label %do.end.for.body_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %do.end.for.end_crit_edge, %do.end.thread, %entry.for.end_crit_edge
  %79 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %buffers, align 4
  %cmp33.not197 = icmp eq ptr %80, %buffers
  br i1 %cmp33.not197, label %for.end.cleanup_crit_edge, label %for.end.for.body37_crit_edge

for.end.for.body37_crit_edge:                     ; preds = %for.end
  br label %for.body37

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body37:                                       ; preds = %brelse.exit.for.body37_crit_edge, %for.end.for.body37_crit_edge
  %.pn.in198 = phi ptr [ %.pn201, %brelse.exit.for.body37_crit_edge ], [ %80, %for.end.for.body37_crit_edge ]
  %bh.0200 = getelementptr i8, ptr %.pn.in198, i32 -44
  %81 = ptrtoint ptr %.pn.in198 to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pn201 = load ptr, ptr %.pn.in198, align 4
  %call38 = call i32 @nilfs_gccache_wait_and_mark_dirty(ptr noundef %bh.0200) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then47, label %if.end79, !prof !42

if.then47:                                        ; preds = %for.body37
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call38)
  %cmp48 = icmp eq i32 %call38, -17
  br i1 %cmp48, label %do.end65, label %if.then47.failed_crit_edge, !prof !42

if.then47.failed_crit_edge:                       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

do.end65:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 645, i32 noundef 9, ptr noundef null) #7
  br label %failed

if.end79:                                         ; preds = %for.body37
  %call.i.i161 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in198) #7
  br i1 %call.i.i161, label %if.end.i.i163, label %if.end79.list_del_init.exit_crit_edge

if.end79.list_del_init.exit_crit_edge:            ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i163:                                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i162 = getelementptr inbounds %struct.list_head, ptr %.pn.in198, i32 0, i32 1
  %82 = ptrtoint ptr %prev.i.i162 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev.i.i162, align 4
  %84 = ptrtoint ptr %.pn.in198 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %.pn.in198, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %83, ptr %prev1.i.i.i, align 4
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %85, ptr %83, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i163, %if.end79.list_del_init.exit_crit_edge
  %88 = ptrtoint ptr %.pn.in198 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %.pn.in198, ptr %.pn.in198, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in198, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %.pn.in198, ptr %prev.i3.i, align 4
  %tobool.not.i = icmp eq ptr %bh.0200, null
  br i1 %tobool.not.i, label %list_del_init.exit.brelse.exit_crit_edge, label %if.then.i164

list_del_init.exit.brelse.exit_crit_edge:         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

if.then.i164:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %bh.0200) #7
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i164, %list_del_init.exit.brelse.exit_crit_edge
  %cmp33.not = icmp eq ptr %.pn201, %buffers
  br i1 %cmp33.not, label %brelse.exit.cleanup_crit_edge, label %brelse.exit.for.body37_crit_edge

brelse.exit.for.body37_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body37

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

failed:                                           ; preds = %do.end65, %if.then47.failed_crit_edge, %if.then15, %if.then
  %ret.0 = phi i32 [ %11, %if.then ], [ %retval.0.i.ph, %if.then15 ], [ -17, %do.end65 ], [ %call38, %if.then47.failed_crit_edge ]
  %90 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %buffers, align 4
  %cmp98.not202 = icmp eq ptr %91, %buffers
  br i1 %cmp98.not202, label %failed.cleanup_crit_edge, label %failed.for.body102_crit_edge

failed.for.body102_crit_edge:                     ; preds = %failed
  br label %for.body102

failed.cleanup_crit_edge:                         ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body102:                                      ; preds = %brelse.exit175.for.body102_crit_edge, %failed.for.body102_crit_edge
  %.pn155.in203 = phi ptr [ %.pn155, %brelse.exit175.for.body102_crit_edge ], [ %91, %failed.for.body102_crit_edge ]
  %bh.1 = getelementptr i8, ptr %.pn155.in203, i32 -44
  %92 = ptrtoint ptr %.pn155.in203 to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pn155 = load ptr, ptr %.pn155.in203, align 4
  %call.i.i166 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn155.in203) #7
  br i1 %call.i.i166, label %if.end.i.i169, label %for.body102.list_del_init.exit171_crit_edge

for.body102.list_del_init.exit171_crit_edge:      ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit171

if.end.i.i169:                                    ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i167 = getelementptr inbounds %struct.list_head, ptr %.pn155.in203, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i.i167 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i.i167, align 4
  %95 = ptrtoint ptr %.pn155.in203 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %.pn155.in203, align 4
  %prev1.i.i.i168 = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %prev1.i.i.i168 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev1.i.i.i168, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %96, ptr %94, align 4
  br label %list_del_init.exit171

list_del_init.exit171:                            ; preds = %if.end.i.i169, %for.body102.list_del_init.exit171_crit_edge
  %99 = ptrtoint ptr %.pn155.in203 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %.pn155.in203, ptr %.pn155.in203, align 4
  %prev.i3.i170 = getelementptr inbounds %struct.list_head, ptr %.pn155.in203, i32 0, i32 1
  %100 = ptrtoint ptr %prev.i3.i170 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %.pn155.in203, ptr %prev.i3.i170, align 4
  %tobool.not.i172 = icmp eq ptr %bh.1, null
  br i1 %tobool.not.i172, label %list_del_init.exit171.brelse.exit175_crit_edge, label %if.then.i173

list_del_init.exit171.brelse.exit175_crit_edge:   ; preds = %list_del_init.exit171
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit175

if.then.i173:                                     ; preds = %list_del_init.exit171
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %bh.1) #7
  br label %brelse.exit175

brelse.exit175:                                   ; preds = %if.then.i173, %list_del_init.exit171.brelse.exit175_crit_edge
  %cmp98.not = icmp eq ptr %.pn155, %buffers
  br i1 %cmp98.not, label %brelse.exit175.cleanup_crit_edge, label %brelse.exit175.for.body102_crit_edge

brelse.exit175.for.body102_crit_edge:             ; preds = %brelse.exit175
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body102

brelse.exit175.cleanup_crit_edge:                 ; preds = %brelse.exit175
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit175.cleanup_crit_edge, %failed.cleanup_crit_edge, %brelse.exit.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %failed.cleanup_crit_edge ], [ %1, %for.end.cleanup_crit_edge ], [ %ret.0, %brelse.exit175.cleanup_crit_edge ], [ %1, %brelse.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buffers) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_clean_segments(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_remove_all_gcinodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_iget_for_gc(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_gccache_wait_and_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_gccache_submit_read_data(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_gccache_submit_read_node(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_construct_segment(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_resize_fs(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_sufile_set_alloc_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_sufile_trim_fs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nilfs2/ioctl.c", i32 802, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/nilfs2/ioctl.c", i32 811, i32 9}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/nilfs2/ioctl.c", i32 819, i32 9}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nilfs2/ioctl.c", i32 825, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nilfs2/ioctl.c", i32 772, i32 5}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!17 = !{ptr @nilfs_ioctl_clean_segments.argsz, !18, !"argsz", i1 false, i1 false}
!18 = !{!"../fs/nilfs2/ioctl.c", i32 847, i32 22}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/nilfs2/ioctl.c", i32 934, i32 3}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/nilfs2/ioctl.c", i32 557, i32 4}
!23 = !{ptr @__func__.nilfs_ioctl_move_inode_block, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/nilfs2/ioctl.c", i32 568, i32 3}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
!39 = !{!"branch_weights", i32 2000, i32 4002000, i32 1}
!40 = !{i64 2153935405}
!41 = !{i64 2148688765, i64 2148688791, i64 2148688820, i64 2148688854, i64 2148688885, i64 2148688908}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{i64 4694334}
!44 = !{i64 4694531}
!45 = !{i64 2152179764}
!46 = !{i64 2155069672, i64 2155069952, i64 2155070286, i64 2155070620}
!47 = !{i64 2152198779, i64 2152198804}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2152199460, i64 2152199485}
!50 = !{i64 2155008995}
!51 = !{i64 2148536085, i64 2148536365, i64 2148536699, i64 2148537033}
!52 = !{ptr @nilfs_ioctl_do_get_bdescs, ptr @nilfs_ioctl_do_get_cpinfo, ptr @nilfs_ioctl_do_get_suinfo, ptr @nilfs_ioctl_do_get_vinfo}
