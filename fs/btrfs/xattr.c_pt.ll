; ModuleID = '/llk/IR_all_yes/fs/btrfs/xattr.c_pt.bc'
source_filename = "../fs/btrfs/xattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.btrfs_dir_item = type <{ %struct.btrfs_disk_key, i64, i16, i16, i8 }>
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_root = type { %struct.rb_node, ptr, ptr, ptr, ptr, i32, %struct.btrfs_root_item, %struct.btrfs_key, ptr, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, [2 x %struct.wait_queue_head], [2 x %struct.list_head], %struct.atomic_t, [2 x %struct.atomic_t], %struct.atomic_t, i32, i32, i32, i32, i64, i32, i64, %struct.btrfs_key, %struct.btrfs_key, %struct.list_head, %struct.list_head, [2 x %struct.spinlock], [2 x %struct.list_head], %struct.spinlock, %struct.rb_root, %struct.xarray, i32, %struct.spinlock, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.list_head, i32, i32, %struct.btrfs_drew_lock, %struct.atomic_t, %struct.spinlock, i64, i64, %struct.wait_queue_head, %struct.atomic_t, %struct.btrfs_qgroup_swapped_blocks, %struct.extent_io_tree, i64, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
%struct.btrfs_timespec = type <{ i64, i32 }>
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.rb_root = type { ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.83, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.btrfs_free_cluster = type { %struct.spinlock, %struct.spinlock, %struct.rb_root, i64, i64, i8, ptr, %struct.list_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.btrfs_discard_ctl = type { ptr, %struct.delayed_work, %struct.spinlock, ptr, [3 x %struct.list_head], i64, i64, %struct.atomic_t, %struct.atomic64_t, i64, i64, i32, i32, i64, i64, %struct.atomic64_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.83 = type { i64 }
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, ptr, %struct.address_space, %struct.list_head, %union.anon.80, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.78 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.79 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.80 = type { ptr }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.65, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.39 }
%struct.llist_node = type { ptr }
%union.anon.39 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.41 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.65 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.75, %struct.list_head, %struct.list_head, %union.anon.76 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.75 = type { %struct.list_head }
%union.anon.76 = type { %struct.hlist_node }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
%struct.xattr = type { ptr, ptr, i32 }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"trans\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/xattr.c\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"inode_is_locked(inode)\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"di\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"security.\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"strncmp(name, XATTR_SECURITY_PREFIX, XATTR_SECURITY_PREFIX_LEN) == 0\00", [59 x i8] zeroinitializer }, align 32
@btrfs_security_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.4, i32 0, ptr null, ptr @btrfs_xattr_handler_get, ptr @btrfs_xattr_handler_set }, [40 x i8] zeroinitializer }, align 32
@posix_acl_access_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@posix_acl_default_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@btrfs_trusted_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.10, i32 0, ptr null, ptr @btrfs_xattr_handler_get, ptr @btrfs_xattr_handler_set }, [40 x i8] zeroinitializer }, align 32
@btrfs_user_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.11, i32 0, ptr null, ptr @btrfs_xattr_handler_get, ptr @btrfs_xattr_handler_set }, [40 x i8] zeroinitializer }, align 32
@btrfs_btrfs_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.12, i32 0, ptr null, ptr @btrfs_xattr_handler_get, ptr @btrfs_xattr_handler_set_prop }, [40 x i8] zeroinitializer }, align 32
@btrfs_xattr_handlers = dso_local global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @btrfs_security_xattr_handler, ptr @posix_acl_access_xattr_handler, ptr @posix_acl_default_xattr_handler, ptr @btrfs_trusted_xattr_handler, ptr @btrfs_user_xattr_handler, ptr @btrfs_btrfs_xattr_handler, ptr null], [36 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/btrfs/locking.h\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"trusted.\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"user.\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"btrfs.\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967221, i64 4294967279]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 89, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 119, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 150, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 253, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [29 x i8] c"btrfs_security_xattr_handler\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 427, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant [28 x i8] c"btrfs_trusted_xattr_handler\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 433, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant [25 x i8] c"btrfs_user_xattr_handler\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 439, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [26 x i8] c"btrfs_btrfs_xattr_handler\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 445, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"btrfs_xattr_handlers\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 451, i32 29 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 3491, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [22 x i8] c"../fs/btrfs/locking.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 101, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 434, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 440, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [20 x i8] c"../fs/btrfs/xattr.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 446, i32 12 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @btrfs_security_xattr_handler, ptr @btrfs_trusted_xattr_handler, ptr @btrfs_user_xattr_handler, ptr @btrfs_btrfs_xattr_handler, ptr @btrfs_xattr_handlers, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_security_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_trusted_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_user_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_btrfs_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_xattr_handlers to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_getxattr(ptr nocapture noundef readonly %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -864
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %call2 = tail call ptr @btrfs_alloc_path() #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %location.i = getelementptr i8, ptr %inode, i32 -860
  %2 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not.i = icmp eq i64 %3, 0
  br i1 %tobool.not.i, label %if.end.if.then.i_crit_edge, label %lor.lhs.false.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %type.i = getelementptr i8, ptr %inode, i32 -852
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %5)
  %cmp.i = icmp eq i8 %5, -124
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %i_ino.i = getelementptr i8, ptr %inode, i32 40
  %6 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %7 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %3, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %call5 = tail call i32 @strlen(ptr noundef %name) #13
  %conv = trunc i32 %call5 to i16
  %call6 = tail call ptr @btrfs_lookup_xattr(ptr noundef null, ptr noundef %1, ptr noundef nonnull %call2, i64 noundef %ino.0.i, ptr noundef %name, i16 noundef zeroext %conv, i32 noundef 0) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %btrfs_ino.exit.out_crit_edge, label %if.else

btrfs_ino.exit.out_crit_edge:                     ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.else:                                          ; preds = %btrfs_ino.exit
  %cmp.i56 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i56, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %call6 to i32
  br label %out

if.end13:                                         ; preds = %if.else
  %9 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool14.not = icmp eq i32 %size, 0
  %call.i = tail call zeroext i16 @btrfs_get_16(ptr noundef %10, ptr noundef nonnull %call6, i32 noundef 25) #10
  %conv17 = zext i16 %call.i to i32
  br i1 %tobool14.not, label %if.end13.out_crit_edge, label %if.end18

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_cmp4(i32 %conv17, i32 %size)
  %cmp = icmp ugt i32 %conv17, %size
  br i1 %cmp, label %if.end18.out_crit_edge, label %if.end23

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr %struct.btrfs_dir_item, ptr %call6, i32 1
  %call.i58 = tail call zeroext i16 @btrfs_get_16(ptr noundef %10, ptr noundef nonnull %call6, i32 noundef 27) #10
  %conv25 = zext i16 %call.i58 to i32
  %add.ptr26 = getelementptr i8, ptr %add.ptr, i32 %conv25
  %11 = ptrtoint ptr %add.ptr26 to i32
  %call.i59 = tail call zeroext i16 @btrfs_get_16(ptr noundef %10, ptr noundef nonnull %call6, i32 noundef 25) #10
  %conv28 = zext i16 %call.i59 to i32
  tail call void @read_extent_buffer(ptr noundef %10, ptr noundef %buffer, i32 noundef %11, i32 noundef %conv28) #10
  %call.i60 = tail call zeroext i16 @btrfs_get_16(ptr noundef %10, ptr noundef nonnull %call6, i32 noundef 25) #10
  %conv30 = zext i16 %call.i60 to i32
  br label %out

out:                                              ; preds = %if.end23, %if.end18.out_crit_edge, %if.end13.out_crit_edge, %if.then10, %btrfs_ino.exit.out_crit_edge
  %ret.0 = phi i32 [ %8, %if.then10 ], [ %conv30, %if.end23 ], [ -61, %btrfs_ino.exit.out_crit_edge ], [ -34, %if.end18.out_crit_edge ], [ %conv17, %if.end13.out_crit_edge ]
  tail call void @btrfs_free_path(ptr noundef nonnull %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_path() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_lookup_xattr(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_setxattr(ptr noundef %trans, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -864
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %fs_info2 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info2, align 8
  %call3 = tail call i32 @strlen(ptr noundef %name) #13
  %tobool.not = icmp eq ptr %trans, null
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !44

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 89) #14
  unreachable

cond.end:                                         ; preds = %entry
  %add = add i32 %call3, %size
  %nodesize.i.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 166
  %4 = ptrtoint ptr %nodesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nodesize.i.i.i, align 8
  %sub.i = add i32 %5, -156
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i)
  %cmp = icmp ugt i32 %add, %sub.i
  br i1 %cmp, label %cond.end.cleanup169_crit_edge, label %if.end

cond.end.cleanup169_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

if.end:                                           ; preds = %cond.end
  %call8 = tail call ptr @btrfs_alloc_path() #10
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end.cleanup169_crit_edge, label %if.end11

if.end.cleanup169_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

if.end11:                                         ; preds = %if.end
  %skip_release_on_error = getelementptr inbounds %struct.btrfs_path, ptr %call8, i32 0, i32 5
  %6 = ptrtoint ptr %skip_release_on_error to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %skip_release_on_error, align 2
  %bf.set = or i8 %bf.load, 4
  store i8 %bf.set, ptr %skip_release_on_error, align 2
  %tobool12.not = icmp eq ptr %value, null
  br i1 %tobool12.not, label %if.then13, label %if.end30

if.then13:                                        ; preds = %if.end11
  %location.i = getelementptr i8, ptr %inode, i32 -860
  %7 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not.i = icmp eq i64 %8, 0
  br i1 %tobool.not.i, label %if.then13.if.then.i_crit_edge, label %lor.lhs.false.i

if.then13.if.then.i_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then13
  %type.i = getelementptr i8, ptr %inode, i32 -852
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %10)
  %cmp.i = icmp eq i8 %10, -124
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then13.if.then.i_crit_edge
  %i_ino.i = getelementptr i8, ptr %inode, i32 40
  %11 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %12 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %8, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %conv = trunc i32 %call3 to i16
  %call16 = tail call ptr @btrfs_lookup_xattr(ptr noundef nonnull %trans, ptr noundef %1, ptr noundef nonnull %call8, i64 noundef %ino.0.i, ptr noundef %name, i16 noundef zeroext %conv, i32 noundef -1) #10
  %tobool17.not = icmp eq ptr %call16, null
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp ne i32 %and, 0
  %13 = and i1 %tobool18.not, %tobool17.not
  br i1 %13, label %btrfs_ino.exit.out.thread_crit_edge, label %if.else

btrfs_ino.exit.out.thread_crit_edge:              ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.else:                                          ; preds = %btrfs_ino.exit
  %cmp.i276 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i276, label %if.then21, label %if.else23

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %call16 to i32
  br label %out

if.else23:                                        ; preds = %if.else
  br i1 %tobool17.not, label %if.else23.out.thread321_crit_edge, label %if.then25

if.else23.out.thread321_crit_edge:                ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread321

if.then25:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #12
  %call26 = tail call i32 @btrfs_delete_one_dir_name(ptr noundef nonnull %trans, ptr noundef %1, ptr noundef nonnull %call8, ptr noundef nonnull %call16) #10
  br label %out

if.end30:                                         ; preds = %if.end11
  %and31 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end60_crit_edge, label %if.then33

if.end30.if.end60_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then33:                                        ; preds = %if.end30
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i, i32 noundef 4) #10
  %15 = ptrtoint ptr %i_rwsem.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %i_rwsem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i.not = icmp eq i32 %16, 0
  br i1 %cmp.i.i.not, label %cond.false43, label %cond.end44, !prof !44

cond.false43:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.2, i32 noundef 119) #14
  unreachable

cond.end44:                                       ; preds = %if.then33
  %location.i278 = getelementptr i8, ptr %inode, i32 -860
  %17 = ptrtoint ptr %location.i278 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %location.i278, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool.not.i279 = icmp eq i64 %18, 0
  br i1 %tobool.not.i279, label %cond.end44.if.then.i285_crit_edge, label %lor.lhs.false.i282

cond.end44.if.then.i285_crit_edge:                ; preds = %cond.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i285

lor.lhs.false.i282:                               ; preds = %cond.end44
  %type.i280 = getelementptr i8, ptr %inode, i32 -852
  %19 = ptrtoint ptr %type.i280 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %type.i280, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %20)
  %cmp.i281 = icmp eq i8 %20, -124
  br i1 %cmp.i281, label %lor.lhs.false.i282.if.then.i285_crit_edge, label %lor.lhs.false.i282.btrfs_ino.exit287_crit_edge

lor.lhs.false.i282.btrfs_ino.exit287_crit_edge:   ; preds = %lor.lhs.false.i282
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_ino.exit287

lor.lhs.false.i282.if.then.i285_crit_edge:        ; preds = %lor.lhs.false.i282
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i285

if.then.i285:                                     ; preds = %lor.lhs.false.i282.if.then.i285_crit_edge, %cond.end44.if.then.i285_crit_edge
  %i_ino.i283 = getelementptr i8, ptr %inode, i32 40
  %21 = ptrtoint ptr %i_ino.i283 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_ino.i283, align 8
  %conv3.i284 = zext i32 %22 to i64
  br label %btrfs_ino.exit287

btrfs_ino.exit287:                                ; preds = %if.then.i285, %lor.lhs.false.i282.btrfs_ino.exit287_crit_edge
  %ino.0.i286 = phi i64 [ %conv3.i284, %if.then.i285 ], [ %18, %lor.lhs.false.i282.btrfs_ino.exit287_crit_edge ]
  %conv47 = trunc i32 %call3 to i16
  %call48 = tail call ptr @btrfs_lookup_xattr(ptr noundef null, ptr noundef %1, ptr noundef nonnull %call8, i64 noundef %ino.0.i286, ptr noundef %name, i16 noundef zeroext %conv47, i32 noundef 0) #10
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %btrfs_ino.exit287.out.thread_crit_edge, label %if.else51

btrfs_ino.exit287.out.thread_crit_edge:           ; preds = %btrfs_ino.exit287
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.else51:                                        ; preds = %btrfs_ino.exit287
  %cmp.i288.not = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  %23 = ptrtoint ptr %call48 to i32
  br i1 %cmp.i288.not, label %if.else51.out.thread_crit_edge, label %if.end59

if.else51.out.thread_crit_edge:                   ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end59:                                         ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @btrfs_release_path(ptr noundef nonnull %call8) #10
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end30.if.end60_crit_edge
  %location.i290 = getelementptr i8, ptr %inode, i32 -860
  %24 = ptrtoint ptr %location.i290 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %location.i290, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool.not.i291 = icmp eq i64 %25, 0
  br i1 %tobool.not.i291, label %if.end60.if.then.i297_crit_edge, label %lor.lhs.false.i294

if.end60.if.then.i297_crit_edge:                  ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i297

lor.lhs.false.i294:                               ; preds = %if.end60
  %type.i292 = getelementptr i8, ptr %inode, i32 -852
  %26 = ptrtoint ptr %type.i292 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %type.i292, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %27)
  %cmp.i293 = icmp eq i8 %27, -124
  br i1 %cmp.i293, label %lor.lhs.false.i294.if.then.i297_crit_edge, label %lor.lhs.false.i294.btrfs_ino.exit299_crit_edge

lor.lhs.false.i294.btrfs_ino.exit299_crit_edge:   ; preds = %lor.lhs.false.i294
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_ino.exit299

lor.lhs.false.i294.if.then.i297_crit_edge:        ; preds = %lor.lhs.false.i294
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i297

if.then.i297:                                     ; preds = %lor.lhs.false.i294.if.then.i297_crit_edge, %if.end60.if.then.i297_crit_edge
  %i_ino.i295 = getelementptr i8, ptr %inode, i32 40
  %28 = ptrtoint ptr %i_ino.i295 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_ino.i295, align 8
  %conv3.i296 = zext i32 %29 to i64
  br label %btrfs_ino.exit299

btrfs_ino.exit299:                                ; preds = %if.then.i297, %lor.lhs.false.i294.btrfs_ino.exit299_crit_edge
  %ino.0.i298 = phi i64 [ %conv3.i296, %if.then.i297 ], [ %25, %lor.lhs.false.i294.btrfs_ino.exit299_crit_edge ]
  %conv63 = trunc i32 %call3 to i16
  %conv64 = trunc i32 %size to i16
  %call65 = tail call i32 @btrfs_insert_xattr_item(ptr noundef nonnull %trans, ptr noundef %1, ptr noundef nonnull %call8, i64 noundef %ino.0.i298, ptr noundef %name, i16 noundef zeroext %conv63, ptr noundef nonnull %value, i16 noundef zeroext %conv64) #10
  %30 = zext i32 %call65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call65, label %btrfs_ino.exit299.out.thread_crit_edge [
    i32 -75, label %if.then68
    i32 -17, label %if.then79
    i32 0, label %btrfs_ino.exit299.if.end96_crit_edge
  ]

btrfs_ino.exit299.if.end96_crit_edge:             ; preds = %btrfs_ino.exit299
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

btrfs_ino.exit299.out.thread_crit_edge:           ; preds = %btrfs_ino.exit299
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.then68:                                        ; preds = %btrfs_ino.exit299
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %31 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i300 = icmp eq i32 %31, 0
  br i1 %tobool.not.i300, label %if.then68.btrfs_assert_tree_write_locked.exit_crit_edge, label %land.rhs.i

if.then68.btrfs_assert_tree_write_locked.exit_crit_edge: ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_assert_tree_write_locked.exit

land.rhs.i:                                       ; preds = %if.then68
  %32 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call8, align 4
  %dep_map.i = getelementptr inbounds %struct.extent_buffer, ptr %33, i32 0, i32 11, i32 6
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %do.end.i, label %land.rhs.i.btrfs_assert_tree_write_locked.exit_crit_edge, !prof !44

land.rhs.i.btrfs_assert_tree_write_locked.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_assert_tree_write_locked.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 101, i32 noundef 9, ptr noundef null) #10
  br label %btrfs_assert_tree_write_locked.exit

btrfs_assert_tree_write_locked.exit:              ; preds = %do.end.i, %land.rhs.i.btrfs_assert_tree_write_locked.exit_crit_edge, %if.then68.btrfs_assert_tree_write_locked.exit_crit_edge
  %call69 = tail call ptr @btrfs_match_dir_item_name(ptr noundef %3, ptr noundef nonnull %call8, ptr noundef %name, i32 noundef %call3) #10
  %tobool70.not = icmp eq ptr %call69, null
  %34 = and i1 %tobool32.not, %tobool70.not
  br i1 %34, label %btrfs_assert_tree_write_locked.exit.out.thread_crit_edge, label %btrfs_assert_tree_write_locked.exit.if.end96_crit_edge

btrfs_assert_tree_write_locked.exit.if.end96_crit_edge: ; preds = %btrfs_assert_tree_write_locked.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

btrfs_assert_tree_write_locked.exit.out.thread_crit_edge: ; preds = %btrfs_assert_tree_write_locked.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.then79:                                        ; preds = %btrfs_ino.exit299
  %call80 = tail call ptr @btrfs_match_dir_item_name(ptr noundef %3, ptr noundef nonnull %call8, ptr noundef %name, i32 noundef %call3) #10
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %cond.false89, label %if.then79.if.end96_crit_edge, !prof !44

if.then79.if.end96_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

cond.false89:                                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 150) #14
  unreachable

if.end96:                                         ; preds = %if.then79.if.end96_crit_edge, %btrfs_assert_tree_write_locked.exit.if.end96_crit_edge, %btrfs_ino.exit299.if.end96_crit_edge
  %di.1 = phi ptr [ %call69, %btrfs_assert_tree_write_locked.exit.if.end96_crit_edge ], [ %call80, %if.then79.if.end96_crit_edge ], [ null, %btrfs_ino.exit299.if.end96_crit_edge ]
  %tobool97.not = icmp eq ptr %di.1, null
  %and99 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  %or.cond273 = or i1 %tobool100.not, %tobool97.not
  %tobool100.not.not = xor i1 %tobool100.not, true
  %brmerge274 = or i1 %tobool97.not, %tobool100.not.not
  %.mux = select i1 %or.cond273, i32 0, i32 -17
  br i1 %brmerge274, label %if.end96.out_crit_edge, label %if.then104

if.end96.out_crit_edge:                           ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then104:                                       ; preds = %if.end96
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call8, i32 0, i32 1
  %35 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %slots, align 4
  %37 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call8, align 4
  %call.i301 = tail call zeroext i16 @btrfs_get_16(ptr noundef %38, ptr noundef nonnull %di.1, i32 noundef 25) #10
  %mul.i.i.i = mul i32 %36, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %39 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = tail call i32 @btrfs_get_32(ptr noundef %38, ptr noundef %39, i32 noundef 21) #10
  %add110 = add i32 %call3, 30
  %add111 = add i32 %add110, %size
  %conv112 = zext i16 %call.i301 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv112, i32 %size)
  %cmp113 = icmp ult i32 %conv112, %size
  br i1 %cmp113, label %if.then115, label %if.end122.thread

if.then115:                                       ; preds = %if.then104
  %call116 = tail call i32 @btrfs_leaf_free_space(ptr noundef %38) #10
  %sub = sub i32 %size, %conv112
  call void @__sanitizer_cov_trace_cmp4(i32 %call116, i32 %sub)
  %cmp118 = icmp ult i32 %call116, %sub
  br i1 %cmp118, label %if.then115.out.thread_crit_edge, label %if.end122

if.then115.out.thread_crit_edge:                  ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end122:                                        ; preds = %if.then115
  %add125 = add i32 %add110, %conv112
  call void @__sanitizer_cov_trace_cmp4(i32 %add125, i32 %call.i.i)
  %cmp126 = icmp eq i32 %add125, %call.i.i
  br i1 %cmp126, label %if.then132, label %if.end122.if.else142_crit_edge

if.end122.if.else142_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else142

if.end122.thread:                                 ; preds = %if.then104
  %add125316 = add i32 %add110, %conv112
  call void @__sanitizer_cov_trace_cmp4(i32 %add125316, i32 %call.i.i)
  %cmp126317 = icmp eq i32 %add125316, %call.i.i
  br i1 %cmp126317, label %if.else135, label %if.end122.thread.if.else142_crit_edge

if.end122.thread.if.else142_crit_edge:            ; preds = %if.end122.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else142

if.then132:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @btrfs_extend_item(ptr noundef nonnull %call8, i32 noundef %sub) #10
  br label %if.end147

if.else135:                                       ; preds = %if.end122.thread
  call void @__sanitizer_cov_trace_cmp4(i32 %conv112, i32 %size)
  %cmp137 = icmp ugt i32 %conv112, %size
  br i1 %cmp137, label %if.then139, label %if.else135.if.end147_crit_edge

if.else135.if.end147_crit_edge:                   ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147

if.then139:                                       ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @btrfs_truncate_item(ptr noundef nonnull %call8, i32 noundef %add111, i32 noundef 1) #10
  br label %if.end147

if.else142:                                       ; preds = %if.end122.thread.if.else142_crit_edge, %if.end122.if.else142_crit_edge
  %call143 = tail call i32 @btrfs_delete_one_dir_name(ptr noundef nonnull %trans, ptr noundef %1, ptr noundef nonnull %call8, ptr noundef nonnull %di.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end146, label %if.else142.out.thread_crit_edge

if.else142.out.thread_crit_edge:                  ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end146:                                        ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @btrfs_extend_item(ptr noundef nonnull %call8, i32 noundef %add111) #10
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %if.then139, %if.else135.if.end147_crit_edge, %if.then132
  %call.i.i304 = tail call i32 @btrfs_get_32(ptr noundef %38, ptr noundef %39, i32 noundef 17) #10
  %add149 = add i32 %call.i.i304, 101
  %40 = inttoptr i32 %add149 to ptr
  %call.i.i307 = tail call i32 @btrfs_get_32(ptr noundef %38, ptr noundef %39, i32 noundef 21) #10
  %sub151 = sub i32 %call.i.i307, %add111
  %add.ptr = getelementptr i8, ptr %40, i32 %sub151
  tail call void @btrfs_set_16(ptr noundef %38, ptr noundef %add.ptr, i32 noundef 25, i16 noundef zeroext %conv64) #10
  %add.ptr153 = getelementptr %struct.btrfs_dir_item, ptr %add.ptr, i32 1
  %41 = ptrtoint ptr %add.ptr153 to i32
  %add154 = add i32 %call3, %41
  tail call void @write_extent_buffer(ptr noundef %38, ptr noundef nonnull %value, i32 noundef %add154, i32 noundef %size) #10
  tail call void @btrfs_mark_buffer_dirty(ptr noundef %38) #10
  br label %out.thread321

out.thread:                                       ; preds = %if.else142.out.thread_crit_edge, %if.then115.out.thread_crit_edge, %btrfs_assert_tree_write_locked.exit.out.thread_crit_edge, %btrfs_ino.exit299.out.thread_crit_edge, %if.else51.out.thread_crit_edge, %btrfs_ino.exit287.out.thread_crit_edge, %btrfs_ino.exit.out.thread_crit_edge
  %ret.4.ph = phi i32 [ %call143, %if.else142.out.thread_crit_edge ], [ -28, %if.then115.out.thread_crit_edge ], [ %call65, %btrfs_ino.exit299.out.thread_crit_edge ], [ -28, %btrfs_assert_tree_write_locked.exit.out.thread_crit_edge ], [ -61, %btrfs_ino.exit.out.thread_crit_edge ], [ -61, %btrfs_ino.exit287.out.thread_crit_edge ], [ %23, %if.else51.out.thread_crit_edge ]
  tail call void @btrfs_free_path(ptr noundef nonnull %call8) #10
  br label %cleanup169

out.thread321:                                    ; preds = %if.end147, %if.else23.out.thread321_crit_edge
  tail call void @btrfs_free_path(ptr noundef nonnull %call8) #10
  br label %if.then164

out:                                              ; preds = %if.end96.out_crit_edge, %if.then25, %if.then21
  %ret.4 = phi i32 [ %14, %if.then21 ], [ %call26, %if.then25 ], [ %.mux, %if.end96.out_crit_edge ]
  tail call void @btrfs_free_path(ptr noundef nonnull %call8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4)
  %tobool163.not = icmp eq i32 %ret.4, 0
  br i1 %tobool163.not, label %out.if.then164_crit_edge, label %out.cleanup169_crit_edge

out.cleanup169_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

out.if.then164_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then164

if.then164:                                       ; preds = %out.if.then164_crit_edge, %out.thread321
  %runtime_flags = getelementptr i8, ptr %inode, i32 -356
  tail call void @_set_bit(i32 noundef 5, ptr noundef %runtime_flags) #10
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %runtime_flags) #10
  br label %cleanup169

cleanup169:                                       ; preds = %if.then164, %out.cleanup169_crit_edge, %out.thread, %if.end.cleanup169_crit_edge, %cond.end.cleanup169_crit_edge
  %retval.0 = phi i32 [ -28, %cond.end.cleanup169_crit_edge ], [ -12, %if.end.cleanup169_crit_edge ], [ 0, %if.then164 ], [ %ret.4, %out.cleanup169_crit_edge ], [ %ret.4.ph, %out.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #4 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %expr, ptr noundef nonnull @.str.1, i32 noundef %line) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #10, !srcloc !45
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_delete_one_dir_name(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_release_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_insert_xattr_item(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_match_dir_item_name(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_leaf_free_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_extend_item(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_truncate_item(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_setxattr_trans(ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -864
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !34) #10
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 146
  %6 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %journal_info, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = tail call ptr @btrfs_start_transaction(ptr noundef %1, i32 noundef 2) #10
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.else:                                          ; preds = %entry
  %call7 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(10) @.str.4, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.else.if.end14_crit_edge, label %cond.false, !prof !46

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

cond.false:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.5, i32 noundef 254) #14
  unreachable

if.end14:                                         ; preds = %if.else.if.end14_crit_edge, %if.then.if.end14_crit_edge
  %trans.0 = phi ptr [ %call3, %if.then.if.end14_crit_edge ], [ %7, %if.else.if.end14_crit_edge ]
  %call15 = tail call i32 @btrfs_setxattr(ptr noundef %trans.0, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end18:                                         ; preds = %if.end14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !47
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 38
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #10
  %call.i.i1.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #10
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end18
  %cur.0.i.i = phi i64 [ %call.i.i1.i.i, %if.end18 ], [ %call.i.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %9 = add i64 %cur.0.i.i, 2
  %add.i.i = and i64 %9, -2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #10
  %call.i.i.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %add.i.i) #10
  %cmp.i.i = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i, label %inode_inc_iversion.exit, label %for.cond.i.i.for.cond.i.i_crit_edge, !prof !46

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

inode_inc_iversion.exit:                          ; preds = %for.cond.i.i
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #10
  %10 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  %call20 = call i32 @btrfs_update_inode(ptr noundef %trans.0, ptr noundef %1, ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %inode_inc_iversion.exit.out_crit_edge, label %do.body29, !prof !46

inode_inc_iversion.exit.out_crit_edge:            ; preds = %inode_inc_iversion.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body29:                                        ; preds = %inode_inc_iversion.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 265, 0\0A.popsection", ""() #10, !srcloc !48
  unreachable

out:                                              ; preds = %inode_inc_iversion.exit.out_crit_edge, %if.end14.out_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end14.out_crit_edge ], [ 0, %inode_inc_iversion.exit.out_crit_edge ]
  br i1 %cmp, label %if.then37, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then37:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = call i32 @btrfs_end_transaction(ptr noundef %trans.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %out.cleanup_crit_edge, %if.then5
  %retval.0 = phi i32 [ %8, %if.then5 ], [ %ret.0, %if.then37 ], [ %ret.0, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_start_transaction(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_update_inode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_end_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_listxattr(ptr nocapture noundef readonly %dentry, ptr noundef %buffer, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #10
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -864
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %location.i = getelementptr i8, ptr %3, i32 -860
  %6 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not.i = icmp eq i64 %7, 0
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %type.i = getelementptr i8, ptr %3, i32 -852
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %9)
  %cmp.i = icmp eq i8 %9, -124
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %i_ino.i = getelementptr i8, ptr %3, i32 40
  %10 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %11 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %7, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %12 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %ino.0.i, ptr %key, align 8
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 24, ptr %0, align 8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 0, ptr %1, align 1
  %call5 = tail call ptr @btrfs_alloc_path() #10
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %btrfs_ino.exit.cleanup85_crit_edge, label %if.end

btrfs_ino.exit.cleanup85_crit_edge:               ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup85

if.end:                                           ; preds = %btrfs_ino.exit
  %reada = getelementptr inbounds %struct.btrfs_path, ptr %call5, i32 0, i32 3
  %15 = ptrtoint ptr %reada to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %reada, align 4
  %call6 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %5, ptr noundef nonnull %key, ptr noundef nonnull %call5, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end.err_crit_edge, label %while.cond.preheader

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

while.cond.preheader:                             ; preds = %if.end
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call5, i32 0, i32 1
  %16 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool52.not = icmp eq i32 %size, 0
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %next_item, %while.cond.preheader
  %buffer.addr.0.ph = phi ptr [ %buffer.addr.4, %next_item ], [ %buffer, %while.cond.preheader ]
  %total_size.0.ph = phi i32 [ %total_size.2, %next_item ], [ 0, %while.cond.preheader ]
  %size_left.0.ph = phi i32 [ %size_left.4, %next_item ], [ %size, %while.cond.preheader ]
  br label %while.cond

while.cond:                                       ; preds = %if.else.while.cond_crit_edge, %while.cond.outer
  %17 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call5, align 4
  %19 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %slots, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %18, i32 0, i32 12
  %21 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %22) #10
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %18, align 8
  %conv.i = trunc i64 %24 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i132 = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i132, i32 0, i32 7
  %25 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %nritems.i, align 1
  %27 = call i32 @llvm.bswap.i32(i32 %26) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %27)
  %cmp11.not = icmp ult i32 %20, %27
  br i1 %cmp11.not, label %if.end20, label %if.then12

if.then12:                                        ; preds = %while.cond
  %call.i133 = call i32 @btrfs_next_old_leaf(ptr noundef %5, ptr noundef nonnull %call5, i64 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %cmp14 = icmp slt i32 %call.i133, 0
  br i1 %cmp14, label %if.then12.err_crit_edge, label %if.else

if.then12.err_crit_edge:                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.else:                                          ; preds = %if.then12
  %cmp16.not = icmp eq i32 %call.i133, 0
  br i1 %cmp16.not, label %if.else.while.cond_crit_edge, label %if.else.err_crit_edge

if.else.err_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.else.while.cond_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.end20:                                         ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #10
  %mul.i.i.i.i = mul i32 %20, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %28 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %18, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #10
  %29 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %16, align 8
  %31 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %disk_key.i, align 8
  %33 = call i64 @llvm.bswap.i64(i64 %32) #10
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #10
  %34 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %key, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %35)
  %cmp23.not = icmp ne i64 %33, %35
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %30)
  %cmp27 = icmp ugt i8 %30, 24
  %or.cond159 = select i1 %cmp23.not, i1 true, i1 %cmp27
  br i1 %or.cond159, label %if.end20.err_crit_edge, label %if.end30

if.end20.err_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end30:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %30)
  %cmp33.not = icmp eq i8 %30, 24
  br i1 %cmp33.not, label %if.end36, label %if.end30.next_item_crit_edge

if.end30.next_item_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_item

if.end36:                                         ; preds = %if.end30
  %36 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %18, ptr noundef %36, i32 noundef 17) #10
  %call.i.i136 = call i32 @btrfs_get_32(ptr noundef %18, ptr noundef %36, i32 noundef 21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i136)
  %cmp40164.not = icmp eq i32 %call.i.i136, 0
  br i1 %cmp40164.not, label %if.end36.next_item_crit_edge, label %while.body42.preheader

if.end36.next_item_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_item

while.body42.preheader:                           ; preds = %if.end36
  %add = add i32 %call.i.i, 101
  %37 = inttoptr i32 %add to ptr
  br label %while.body42

while.body42:                                     ; preds = %cleanup.while.body42_crit_edge, %while.body42.preheader
  %cur.0169 = phi i32 [ %add69, %cleanup.while.body42_crit_edge ], [ 0, %while.body42.preheader ]
  %di.0168 = phi ptr [ %add.ptr70, %cleanup.while.body42_crit_edge ], [ %37, %while.body42.preheader ]
  %size_left.1167 = phi i32 [ %size_left.2, %cleanup.while.body42_crit_edge ], [ %size_left.0.ph, %while.body42.preheader ]
  %total_size.1166 = phi i32 [ %add51, %cleanup.while.body42_crit_edge ], [ %total_size.0.ph, %while.body42.preheader ]
  %buffer.addr.1165 = phi ptr [ %buffer.addr.2, %cleanup.while.body42_crit_edge ], [ %buffer.addr.0.ph, %while.body42.preheader ]
  %call.i137 = call zeroext i16 @btrfs_get_16(ptr noundef %18, ptr noundef %di.0168, i32 noundef 27) #10
  %call.i138 = call zeroext i16 @btrfs_get_16(ptr noundef %18, ptr noundef %di.0168, i32 noundef 25) #10
  %conv45 = zext i16 %call.i137 to i32
  %add46 = add nuw nsw i32 %conv45, 30
  %conv47 = zext i16 %call.i138 to i32
  %add48 = add nuw nsw i32 %add46, %conv47
  %add.ptr = getelementptr %struct.btrfs_dir_item, ptr %di.0168, i32 1
  %38 = ptrtoint ptr %add.ptr to i32
  %add50 = add nuw nsw i32 %conv45, 1
  %add51 = add i32 %add50, %total_size.1166
  br i1 %tobool52.not, label %while.body42.cleanup_crit_edge, label %if.end54

while.body42.cleanup_crit_edge:                   ; preds = %while.body42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end54:                                         ; preds = %while.body42
  %tobool55.not = icmp ne ptr %buffer.addr.1165, null
  call void @__sanitizer_cov_trace_cmp4(i32 %size_left.1167, i32 %conv45)
  %cmp58.not = icmp ugt i32 %size_left.1167, %conv45
  %or.cond = select i1 %tobool55.not, i1 %cmp58.not, i1 false
  br i1 %or.cond, label %if.end61, label %if.end54.err_crit_edge

if.end54.err_crit_edge:                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end61:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  call void @read_extent_buffer(ptr noundef %18, ptr noundef nonnull %buffer.addr.1165, i32 noundef %38, i32 noundef %conv45) #10
  %arrayidx63 = getelementptr i8, ptr %buffer.addr.1165, i32 %conv45
  %39 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx63, align 1
  %sub = sub i32 %size_left.1167, %add50
  %add.ptr68 = getelementptr i8, ptr %buffer.addr.1165, i32 %add50
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %while.body42.cleanup_crit_edge
  %buffer.addr.2 = phi ptr [ %add.ptr68, %if.end61 ], [ %buffer.addr.1165, %while.body42.cleanup_crit_edge ]
  %size_left.2 = phi i32 [ %sub, %if.end61 ], [ %size_left.1167, %while.body42.cleanup_crit_edge ]
  %add69 = add i32 %add48, %cur.0169
  %add.ptr70 = getelementptr i8, ptr %di.0168, i32 %add48
  %cmp40 = icmp ult i32 %add69, %call.i.i136
  br i1 %cmp40, label %cleanup.while.body42_crit_edge, label %cleanup.next_item_crit_edge

cleanup.next_item_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_item

cleanup.while.body42_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body42

next_item:                                        ; preds = %cleanup.next_item_crit_edge, %if.end36.next_item_crit_edge, %if.end30.next_item_crit_edge
  %buffer.addr.4 = phi ptr [ %buffer.addr.0.ph, %if.end30.next_item_crit_edge ], [ %buffer.addr.0.ph, %if.end36.next_item_crit_edge ], [ %buffer.addr.2, %cleanup.next_item_crit_edge ]
  %total_size.2 = phi i32 [ %total_size.0.ph, %if.end30.next_item_crit_edge ], [ %total_size.0.ph, %if.end36.next_item_crit_edge ], [ %add51, %cleanup.next_item_crit_edge ]
  %size_left.4 = phi i32 [ %size_left.0.ph, %if.end30.next_item_crit_edge ], [ %size_left.0.ph, %if.end36.next_item_crit_edge ], [ %size_left.2, %cleanup.next_item_crit_edge ]
  %40 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %slots, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr %slots, align 4
  br label %while.cond.outer

err:                                              ; preds = %if.end54.err_crit_edge, %if.end20.err_crit_edge, %if.else.err_crit_edge, %if.then12.err_crit_edge, %if.end.err_crit_edge
  %ret.5 = phi i32 [ %call6, %if.end.err_crit_edge ], [ -34, %if.end54.err_crit_edge ], [ %total_size.0.ph, %if.else.err_crit_edge ], [ %call.i133, %if.then12.err_crit_edge ], [ %total_size.0.ph, %if.end20.err_crit_edge ]
  call void @btrfs_free_path(ptr noundef nonnull %call5) #10
  br label %cleanup85

cleanup85:                                        ; preds = %err, %btrfs_ino.exit.cleanup85_crit_edge
  %retval.0 = phi i32 [ %ret.5, %err ], [ -12, %btrfs_ino.exit.cleanup85_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_xattr_security_init(ptr noundef %trans, ptr noundef %inode, ptr noundef %dir, ptr noundef %qstr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @security_inode_init_security(ptr noundef %inode, ptr noundef %dir, ptr noundef %qstr, ptr noundef nonnull @btrfs_initxattrs, ptr noundef %trans) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_init_security(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_initxattrs(ptr noundef %inode, ptr nocapture noundef readonly %xattr_array, ptr noundef %fs_private) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !34) #10
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
  %or.i = or i32 %5, 262144
  store i32 %or.i, ptr %flags1.i, align 4
  %6 = ptrtoint ptr %xattr_array to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xattr_array, align 4
  %cmp.not31 = icmp eq ptr %7, null
  br i1 %cmp.not31, label %entry.for.end_crit_edge, label %entry.if.end8.i_crit_edge

entry.if.end8.i_crit_edge:                        ; preds = %entry
  br label %if.end8.i

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond:                                         ; preds = %if.end
  %incdec.ptr = getelementptr %struct.xattr, ptr %xattr.032, i32 1
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %incdec.ptr, align 4
  %cmp.not = icmp eq ptr %9, null
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.if.end8.i_crit_edge

for.cond.if.end8.i_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end8.i:                                        ; preds = %for.cond.if.end8.i_crit_edge, %entry.if.end8.i_crit_edge
  %10 = phi ptr [ %9, %for.cond.if.end8.i_crit_edge ], [ %7, %entry.if.end8.i_crit_edge ]
  %xattr.032 = phi ptr [ %incdec.ptr, %for.cond.if.end8.i_crit_edge ], [ %xattr_array, %entry.if.end8.i_crit_edge ]
  %call3 = tail call i32 @strlen(ptr noundef nonnull %10) #13
  %add4 = add i32 %call3, 10
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add4, i32 noundef 3264) #16
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.for.end_crit_edge, label %if.end

if.end8.i.for.end_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %if.end8.i
  %11 = call ptr @memcpy(ptr %call9.i, ptr @.str.4, i32 10)
  %add.ptr = getelementptr i8, ptr %call9.i, i32 9
  %12 = ptrtoint ptr %xattr.032 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xattr.032, align 4
  %call8 = tail call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %13) #13
  %value = getelementptr inbounds %struct.xattr, ptr %xattr.032, i32 0, i32 1
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %value, align 4
  %value_len = getelementptr inbounds %struct.xattr, ptr %xattr.032, i32 0, i32 2
  %16 = ptrtoint ptr %value_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value_len, align 4
  %call9 = tail call i32 @btrfs_setxattr(ptr noundef %fs_private, ptr noundef %inode, ptr noundef nonnull %call9.i, ptr noundef %15, i32 noundef %17, i32 noundef 0)
  tail call void @kfree(ptr noundef nonnull %call9.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end.for.end_crit_edge, label %for.cond

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %if.end8.i.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %err.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ -12, %if.end8.i.for.end_crit_edge ], [ %call9, %if.end.for.end_crit_edge ], [ %call9, %for.cond.for.end_crit_edge ]
  %and.i = and i32 %5, 262144
  %18 = tail call i32 @llvm.read_register.i32(metadata !34) #10
  %and.i.i23 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i23 to ptr
  %task.i24 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i24, align 8
  %flags1.i25 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %flags1.i25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags1.i25, align 4
  %and.i26 = and i32 %23, -262145
  %or.i27 = or i32 %and.i26, %and.i
  store i32 %or.i27, ptr %flags1.i25, align 4
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @btrfs_get_16(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_16(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_next_old_leaf(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_xattr_handler_get(ptr noundef %handler, ptr nocapture noundef readnone %unused, ptr nocapture noundef readonly %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xattr_full_name(ptr noundef %handler, ptr noundef %name) #10
  %call1 = tail call i32 @btrfs_getxattr(ptr noundef %inode, ptr noundef %call, ptr noundef %buffer, i32 noundef %size)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_xattr_handler_set(ptr noundef %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xattr_full_name(ptr noundef %handler, ptr noundef %name) #10
  %call1 = tail call i32 @btrfs_setxattr_trans(ptr noundef %inode, ptr noundef %call, ptr noundef %buffer, i32 noundef %size, i32 noundef %flags)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xattr_full_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btrfs_xattr_handler_set_prop(ptr noundef %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -864
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %call2 = tail call ptr @xattr_full_name(ptr noundef %handler, ptr noundef %name) #10
  %call3 = tail call i32 @btrfs_validate_prop(ptr noundef %call2, ptr noundef %value, i32 noundef %size) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @btrfs_start_transaction(ptr noundef %1, i32 noundef 2) #10
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @btrfs_set_prop(ptr noundef %call4, ptr noundef %inode, ptr noundef %call2, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end8.if.end25_crit_edge

if.end8.if.end25_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then11:                                        ; preds = %if.end8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !47
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 38
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #10
  %call.i.i1.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #10
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.then11
  %cur.0.i.i = phi i64 [ %call.i.i1.i.i, %if.then11 ], [ %call.i.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %3 = add i64 %cur.0.i.i, 2
  %add.i.i = and i64 %3, -2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #10
  %call.i.i.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %add.i.i) #10
  %cmp.i.i = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i, label %inode_inc_iversion.exit, label %for.cond.i.i.for.cond.i.i_crit_edge, !prof !46

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

inode_inc_iversion.exit:                          ; preds = %for.cond.i.i
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #10
  %4 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  %call13 = call i32 @btrfs_update_inode(ptr noundef %call4, ptr noundef %1, ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %inode_inc_iversion.exit.if.end25_crit_edge, label %do.body18, !prof !46

inode_inc_iversion.exit.if.end25_crit_edge:       ; preds = %inode_inc_iversion.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.body18:                                        ; preds = %inode_inc_iversion.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 419, 0\0A.popsection", ""() #10, !srcloc !49
  unreachable

if.end25:                                         ; preds = %inode_inc_iversion.exit.if.end25_crit_edge, %if.end8.if.end25_crit_edge
  %ret.0 = phi i32 [ %call9, %if.end8.if.end25_crit_edge ], [ 0, %inode_inc_iversion.exit.if.end25_crit_edge ]
  %call26 = call i32 @btrfs_end_transaction(ptr noundef %call4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %ret.0, %if.end25 ], [ %call3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_validate_prop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_set_prop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { cold noreturn }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.named.register.sp = !{!34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/xattr.c", i32 89, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/btrfs/xattr.c", i32 119, i32 3}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/btrfs/xattr.c", i32 150, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/btrfs/xattr.c", i32 253, i32 3}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @btrfs_xattr_handlers, !11, !"btrfs_xattr_handlers", i1 false, i1 false}
!11 = !{!"../fs/btrfs/xattr.c", i32 451, i32 29}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @assertfail._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @assertfail._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/btrfs/locking.h", i32 101, i32 2}
!20 = !{ptr @btrfs_security_xattr_handler, !21, !"btrfs_security_xattr_handler", i1 false, i1 false}
!21 = !{!"../fs/btrfs/xattr.c", i32 427, i32 35}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/btrfs/xattr.c", i32 434, i32 12}
!24 = !{ptr @btrfs_trusted_xattr_handler, !25, !"btrfs_trusted_xattr_handler", i1 false, i1 false}
!25 = !{!"../fs/btrfs/xattr.c", i32 433, i32 35}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/btrfs/xattr.c", i32 440, i32 12}
!28 = !{ptr @btrfs_user_xattr_handler, !29, !"btrfs_user_xattr_handler", i1 false, i1 false}
!29 = !{!"../fs/btrfs/xattr.c", i32 439, i32 35}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/btrfs/xattr.c", i32 446, i32 12}
!32 = !{ptr @btrfs_btrfs_xattr_handler, !33, !"btrfs_btrfs_xattr_handler", i1 false, i1 false}
!33 = !{!"../fs/btrfs/xattr.c", i32 445, i32 35}
!34 = !{!"sp"}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"branch_weights", i32 1, i32 2000}
!45 = !{i64 2158361947, i64 2158362429, i64 2158361984, i64 2158362040, i64 2158362074, i64 2158362098, i64 2158362139, i64 2158362160, i64 2158362188, i64 2158362222}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 2153428586}
!48 = !{i64 2158460402, i64 2158460883, i64 2158460439, i64 2158460495, i64 2158460529, i64 2158460553, i64 2158460594, i64 2158460615, i64 2158460643, i64 2158460677}
!49 = !{i64 2158466287, i64 2158466768, i64 2158466324, i64 2158466380, i64 2158466414, i64 2158466438, i64 2158466479, i64 2158466500, i64 2158466528, i64 2158466562}
